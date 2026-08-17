#include <idc.idc>

static dump_function(address, name)
{
    auto result;
    auto start;
    MakeFunction(address, BADADDR);
    start = GetFunctionAttr(address, FUNCATTR_START);
    result = decompile(address);
    msg("\n===== %s @ %x (function start %x) =====\n", name, address, start);
    if (result != 0)
        msg("%s\n", result.text);
    else
        msg("Decompile failed\n");
}

static main()
{
    Wait();
    load_and_run_plugin("hexarm64", 0);
    dump_function(0x3489440, "SabreProcessorRunAlignment");
    dump_function(0x35A09AC, "ConvertAlignmentWrapper");
    dump_function(0x35A16F0, "SpatialAlignmentOrchestration");
    dump_function(0x35B64B4, "WaitForSingleFrameAlign");
    dump_function(0x3883E98, "BuildAlignPyramidForBurst");
    dump_function(0x38848A0, "AlignPyramidPrepareBase");
    dump_function(0x38868EC, "AlignPyramidGeometry");
    dump_function(0x3886774, "AlignPyramidAddLevel");
    dump_function(0x3888614, "AlignPyramidSetRawMetadata");
    dump_function(0x38887EC, "AlignPyramidPrepareClampedBase");
    dump_function(0x3888368, "GrayPyramidDownsampleDispatch");
    dump_function(0x3888BF4, "AlignPyramidLevelAlignAlt");
    dump_function(0x35CF3EC, "ConvertAlignmentHalide");
    dump_function(0x3BBAF98, "Raw16ToGrayHalide");
    dump_function(0x3BB7D18, "Raw16ToGrayHalideWorker");
    dump_function(0x3BA9244, "GradientAndGradientProductsHalide");
    dump_function(0x3BA06A0, "GradientAndGradientProductsHalideWorker");
    dump_function(0x3B9BE68, "BlockLucasKanadeHalide");
    dump_function(0x3B9CB5C, "BlockLucasKanadeHalideWorkerNormalized");
    dump_function(0x3B9E72C, "BlockLucasKanadeHalideWorkerUnnormalized");
    dump_function(0x3BE8DA0, "UpsampleAlignmentI16Halide");
    dump_function(0x3BE8048, "UpsampleAlignmentI16HalideWorker3Candidate");
    dump_function(0x3BD35D8, "GrayPyramidDownsample4xWorker");
    dump_function(0x3BCF91C, "GrayPyramidDownsample2xWorker");
    qexit(0);
}
