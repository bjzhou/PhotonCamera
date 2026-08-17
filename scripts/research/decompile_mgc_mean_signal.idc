#include <idc.idc>

static dump_function(ea, label)
{
    auto result;
    MakeFunction(ea, BADADDR);
    result = decompile(ea);
    msg("\n===== %s 0x%X =====\n", label, ea);
    if (result != 0)
        msg("%s\n", result.text);
    else
        msg("Decompile failed\n");
}

static main()
{
    Wait();
    load_and_run_plugin("hexarm64", 0);
    dump_function(0x32CEA5C, "base frame preparation");
    dump_function(0x5B047E8, "MeasureMeanSignalLevelNormalized");
    qexit(0);
}
