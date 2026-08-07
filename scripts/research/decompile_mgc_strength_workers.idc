#include <idc.idc>

static dump_function(start, end, label)
{
    auto result;
    del_items(start, DELIT_EXPAND, end - start);
    create_insn(start);
    add_func(start, end);
    plan_and_wait(start, end);
    msg("\n===== %s %x..%x =====\n", label, start, end);
    result = decompile(start);
    if (result != 0)
        msg("%s\n", result.text);
    else
        msg("Decompile failed\n");
}

static main()
{
    load_and_run_plugin("hexarm64", 0);
    dump_function(0x37A99BC, 0x37AAB68, "Bayer strength task");
    dump_function(0x37B8948, 0x37B9AF4, "RGB strength task");
    qexit(0);
}
