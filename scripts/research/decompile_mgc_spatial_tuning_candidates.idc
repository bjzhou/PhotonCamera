#include <idc.idc>

static dump_containing(ea)
{
    auto start, end, result;
    start = get_func_attr(ea, FUNCATTR_START);
    end = get_func_attr(ea, FUNCATTR_END);
    msg("\n===== candidate %x function %x..%x =====\n", ea, start, end);
    if (start == BADADDR)
        return;
    result = decompile(start);
    if (result != 0)
        msg("%s\n", result.text);
    else
        msg("Decompile failed\n");
}

static main()
{
    load_and_run_plugin("hexarm64", 0);
    dump_containing(0x235C23C);
    dump_containing(0x24E2B88);
    dump_containing(0x35AA0B0);
    dump_containing(0x35ABE80);
    qexit(0);
}
