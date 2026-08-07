#include <idc.idc>

static dump_function_containing(ea)
{
    auto start, end, result;
    start = get_func_attr(ea, FUNCATTR_START);
    end = get_func_attr(ea, FUNCATTR_END);
    msg("\n===== callsite %x function %x..%x =====\n", ea, start, end);
    if (start == BADADDR)
        return;
    result = decompile(start);
    if (result != 0)
        msg("%s\n", result.text);
    else
        msg("Decompile failed\n");
}

static force_and_dump(start, end)
{
    auto result;
    del_func(start);
    if (!add_func(start, end))
    {
        msg("Unable to create function %x..%x\n", start, end);
        return;
    }
    msg("\n===== forced function %x..%x =====\n", start, end);
    result = decompile(start);
    if (result != 0)
        msg("%s\n", result.text);
    else
        msg("Decompile failed\n");
}

static dump_callers(target)
{
    auto ref;
    ref = get_first_cref_to(target);
    while (ref != BADADDR)
    {
        dump_function_containing(ref);
        ref = get_next_cref_to(target, ref);
    }
}

static main()
{
    load_and_run_plugin("hexarm64", 0);
    force_and_dump(0x35A8E84, 0x35AC470);
    force_and_dump(0x35B027C, 0x35B325C);
    qexit(0);
}
