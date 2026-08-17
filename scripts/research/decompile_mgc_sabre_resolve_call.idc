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
    dump_function(0x348A0BC, "SabreProcessorResolveCaller");
    dump_function(0x34966E0, "ResolveSabreWrapper");
    dump_function(0x3496448, "SabreDehomogenize");
    dump_function(0x348C900, "SabreResolveAsyncBody");
    dump_function(0x3883958, "BuildSabreFinalGains");
    dump_function(0x3492544, "SabreBayerPattern");
    dump_function(0x33FB500, "SabreProcessorRunCaller");
    dump_function(0x34A55D4, "ResolveSabreHalideAotEntry");
    dump_function(0x349B1B8, "ResolveSabreHalideKernel");
    qexit(0);
}
