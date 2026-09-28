"""Inspect an ORT-format model using ONNX Runtime's generated FlatBuffer schema."""

from __future__ import annotations

import argparse
import hashlib
import json
import struct
from collections import Counter
from pathlib import Path
from typing import Any

import onnxruntime as ort
from onnxruntime.tools import ort_format_model  # noqa: F401 -- adds the bundled schema directory to sys.path
from ort_flatbuffers_py.fbs import InferenceSession as FbSession
from ort_flatbuffers_py.fbs import TensorTypeAndShape as FbTensorTypeAndShape


DTYPES = {
    0: "UNDEFINED",
    1: "FLOAT",
    2: "UINT8",
    3: "INT8",
    4: "UINT16",
    5: "INT16",
    6: "INT32",
    7: "INT64",
    8: "STRING",
    9: "BOOL",
    10: "FLOAT16",
    11: "DOUBLE",
    12: "UINT32",
    13: "UINT64",
    14: "COMPLEX64",
    15: "COMPLEX128",
    16: "BFLOAT16",
    17: "FLOAT8E4M3FN",
    18: "FLOAT8E4M3FNUZ",
    19: "FLOAT8E5M2",
    20: "FLOAT8E5M2FNUZ",
    21: "UINT4",
    22: "INT4",
}
ATTR_TYPES = {
    0: "UNDEFINED",
    1: "FLOAT",
    2: "INT",
    3: "STRING",
    4: "TENSOR",
    5: "GRAPH",
    6: "FLOATS",
    7: "INTS",
    8: "STRINGS",
    9: "TENSORS",
    10: "GRAPHS",
    11: "SPARSE_TENSOR",
    12: "SPARSE_TENSORS",
    13: "TYPE_PROTO",
    14: "TYPE_PROTOS",
}
FLOAT_DTYPES = {1, 10, 11, 14, 15, 16, 17, 18, 19, 20}


def _text(value: bytes | None) -> str:
    return value.decode("utf-8", "replace") if value else ""


def _vector_string(vector: Any) -> str:
    return _text(vector) if vector is not None else ""


def _tensor(tensor: Any) -> dict[str, Any]:
    dtype = int(tensor.DataType())
    dims = [int(tensor.Dims(i)) for i in range(tensor.DimsLength())]
    return {
        "name": _vector_string(tensor.Name()),
        "dtype": DTYPES.get(dtype, f"UNKNOWN_{dtype}"),
        "dtype_id": dtype,
        "shape": dims,
    }


def _value_info(value: Any) -> dict[str, Any]:
    result: dict[str, Any] = {"name": _vector_string(value.Name())}
    typ = value.Type()
    if typ is None:
        return result
    value_type = typ.Value()
    if value_type is None:
        return result
    if int(typ.ValueType()) != 1:
        result["type"] = "non-tensor"
        return result
    tensor_type = FbTensorTypeAndShape.TensorTypeAndShape()
    tensor_type.Init(value_type.Bytes, value_type.Pos)
    dtype = int(tensor_type.ElemType())
    shape_obj = tensor_type.Shape()
    shape = []
    if shape_obj:
        for i in range(shape_obj.DimLength()):
            dim = shape_obj.Dim(i).Value()
            shape.append(int(dim.DimValue()) if int(dim.DimType()) == 1 else None)
    result.update(
        dtype=DTYPES.get(dtype, f"UNKNOWN_{dtype}"), dtype_id=dtype, shape=shape
    )
    return result


def _small_tensor_values(tensor: Any, limit: int = 16) -> list[Any] | None:
    count = 1
    for i in range(tensor.DimsLength()):
        count *= int(tensor.Dims(i))
    if count > limit or count == 0:
        return None
    dtype = int(tensor.DataType())
    raw = tensor.RawDataAsNumpy()
    if raw is None:
        return None
    raw = bytes(raw)
    formats = {
        1: "f",
        2: "B",
        3: "b",
        4: "H",
        5: "h",
        6: "i",
        7: "q",
        9: "?",
        10: "e",
        11: "d",
        12: "I",
        13: "Q",
    }
    fmt = formats.get(dtype)
    if not fmt:
        return None
    size = struct.calcsize("<" + fmt)
    if len(raw) < count * size:
        return None
    return list(struct.unpack("<" + fmt * count, raw[: count * size]))


def _attribute(attr: Any) -> dict[str, Any]:
    kind = int(attr.Type())
    result: dict[str, Any] = {
        "name": _vector_string(attr.Name()),
        "type": ATTR_TYPES.get(kind, f"UNKNOWN_{kind}"),
    }
    if kind == 1:
        result["value"] = float(attr.F())
    elif kind == 2:
        result["value"] = int(attr.I())
    elif kind == 3:
        result["value"] = _text(attr.S())
    elif kind == 4:
        t = attr.T()
        if t:
            result["tensor"] = _tensor(t)
            values = _small_tensor_values(t)
            if values is not None:
                result["value"] = values
    elif kind in (6, 7, 8):
        length_method = {
            6: attr.FloatsLength,
            7: attr.IntsLength,
            8: attr.StringsLength,
        }[kind]
        getter = {6: attr.Floats, 7: attr.Ints, 8: attr.Strings}[kind]
        length = int(length_method())
        if length <= 16:
            result["value"] = [
                (_text(getter(i)) if kind == 8 else getter(i)) for i in range(length)
            ]
        else:
            result["count"] = length
    return result


def _ort_io(path: Path) -> dict[str, Any]:
    session = ort.InferenceSession(str(path), providers=["CPUExecutionProvider"])

    def desc(arg: Any) -> dict[str, Any]:
        return {"name": arg.name, "shape": arg.shape, "type": arg.type}

    return {
        "inputs": [desc(x) for x in session.get_inputs()],
        "outputs": [desc(x) for x in session.get_outputs()],
    }


def inspect_reference(path: str | Path, output: str | Path) -> dict[str, Any]:
    """Write a concise, complete structural inventory of an ORT model as JSON."""
    model_path, output_path = Path(path), Path(output)
    blob = model_path.read_bytes()
    session = FbSession.InferenceSession.GetRootAsInferenceSession(bytearray(blob), 0)
    model, graph = session.Model(), session.Model().Graph()

    arg_infos = [_value_info(graph.NodeArgs(i)) for i in range(graph.NodeArgsLength())]
    arg_by_name = {item["name"]: item for item in arg_infos}
    initializers = []
    dtype_counts: Counter[str] = Counter()
    dtype_elements: Counter[str] = Counter()
    dtype_bytes: Counter[str] = Counter()
    for i in range(graph.InitializersLength()):
        ten = graph.Initializers(i)
        item = _tensor(ten)
        count = 1
        for d in item["shape"]:
            count *= d
        raw_len = int(ten.RawDataLength())
        item["elements"] = count
        item["raw_bytes"] = raw_len
        small_values = _small_tensor_values(ten)
        if small_values is not None:
            item["values"] = small_values
        initializers.append(item)
        dtype_counts[item["dtype"]] += 1
        dtype_elements[item["dtype"]] += count
        dtype_bytes[item["dtype"]] += raw_len

    nodes, ops = [], Counter()
    for i in range(graph.NodesLength()):
        node = graph.Nodes(i)
        inputs = [_text(node.Inputs(j)) for j in range(node.InputsLength())]
        outputs = [_text(node.Outputs(j)) for j in range(node.OutputsLength())]
        op = _vector_string(node.OpType())
        ops[op] += 1
        nodes.append(
            {
                "name": _vector_string(node.Name()),
                "op": op,
                "inputs": inputs,
                "outputs": outputs,
                "attrs": [
                    _attribute(node.Attributes(j))
                    for j in range(node.AttributesLength())
                ],
            }
        )

    floating_counts = {
        dtype: {
            "initializers": dtype_counts[dtype],
            "elements": dtype_elements[dtype],
            "raw_bytes": dtype_bytes[dtype],
        }
        for dtype in sorted(
            dtype_counts, key=lambda x: (x not in {DTYPES[k] for k in FLOAT_DTYPES}, x)
        )
    }
    report = {
        "file": {"sha256": hashlib.sha256(blob).hexdigest(), "bytes": len(blob)},
        "ort_runtime_version": ort.__version__,
        "ort_session_io": _ort_io(model_path),
        "flatbuffer": {
            "ort_version": int(session.OrtVersion()),
            "ir_version": int(model.IrVersion()),
            "node_args": arg_infos,
            "graph_inputs": [
                arg_by_name.get(
                    _text(graph.Inputs(i)), {"name": _text(graph.Inputs(i))}
                )
                for i in range(graph.InputsLength())
            ],
            "graph_outputs": [
                arg_by_name.get(
                    _text(graph.Outputs(i)), {"name": _text(graph.Outputs(i))}
                )
                for i in range(graph.OutputsLength())
            ],
        },
        "operator_counts": dict(sorted(ops.items())),
        "initializer_summary_by_dtype": floating_counts,
        "floating_initializer_totals": {
            "initializers": sum(
                dtype_counts[d]
                for d in dtype_counts
                if dtype_counts[d] and d in {DTYPES[k] for k in FLOAT_DTYPES}
            ),
            "elements": sum(
                dtype_elements[d]
                for d in dtype_elements
                if d in {DTYPES[k] for k in FLOAT_DTYPES}
            ),
            "raw_bytes": sum(
                dtype_bytes[d]
                for d in dtype_bytes
                if d in {DTYPES[k] for k in FLOAT_DTYPES}
            ),
            "warning": "Initializer counts include frozen constants and buffers; they are not trainable-parameter counts.",
        },
        "initializers": initializers,
        "nodes": nodes,
    }
    output_path.parent.mkdir(parents=True, exist_ok=True)
    output_path.write_text(
        json.dumps(report, indent=2, ensure_ascii=False) + "\n", encoding="utf-8"
    )
    print(
        f"ORT {ort.__version__}; {len(blob):,} bytes; {len(initializers)} initializers; {sum(ops.values())} nodes; {len(ops)} op types"
    )
    print(
        "float initializers (not trainable params):",
        json.dumps(report["floating_initializer_totals"], ensure_ascii=False),
    )
    print("operators:", json.dumps(dict(sorted(ops.items())), ensure_ascii=False))
    print(f"wrote {output_path}")
    return {
        "output": str(output_path),
        "sha256": report["file"]["sha256"],
        "bytes": len(blob),
        "ort_runtime_version": ort.__version__,
        "flatbuffer_ort_version": int(session.OrtVersion()),
        "io": report["ort_session_io"],
        "nodes": len(nodes),
        "initializers": len(initializers),
        "operator_counts": dict(sorted(ops.items())),
        "floating_initializer_totals": report["floating_initializer_totals"],
    }


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("model", type=Path)
    parser.add_argument("output", type=Path)
    args = parser.parse_args()
    inspect_reference(args.model, args.output)


if __name__ == "__main__":
    main()
