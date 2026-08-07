#include <idc.idc>

static dump_function(start, end)
{
    auto result;
    del_items(start, DELIT_EXPAND, end - start);
    create_insn(start);
    add_func(start, end);
    plan_and_wait(start, end);
    msg("\n===== function %x..%x =====\n", start, end);
    result = decompile(start);
    if (result != 0)
        msg("%s\n", result.text);
    else
        msg("Decompile failed\n");
}

static main()
{
    load_and_run_plugin("hexarm64", 0);
    dump_function(0x37AAB68, 0x37B9AF4);
    dump_function(0x37B9AF4, 0x37BECDC);
    qexit(0);
}
