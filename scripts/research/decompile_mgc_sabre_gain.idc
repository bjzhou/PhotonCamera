#include <idc.idc>

static main()
{
    auto result;
    Wait();
    load_and_run_plugin("hexarm64", 0);
    MakeFunction(0x5E3F74C, BADADDR);
    result = decompile(0x5E3F74C);
    if (result != 0)
        msg("%s\n", result.text);
    else
        msg("Decompile failed\n");
    qexit(0);
}
