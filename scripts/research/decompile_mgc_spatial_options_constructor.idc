#include <idc.idc>

static main()
{
    auto result;
    load_and_run_plugin("hexarm64", 0);
    del_items(0x22C5BBC, DELIT_EXPAND, 0x22C60EC - 0x22C5BBC);
    create_insn(0x22C5BBC);
    add_func(0x22C5BBC, 0x22C60EC);
    plan_and_wait(0x22C5BBC, 0x22C60EC);
    result = decompile(0x22C5BBC);
    if (result != 0)
        msg("%s\n", result.text);
    else
        msg("Decompile failed for Spatial options constructor\n");
    qexit(0);
}
