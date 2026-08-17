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
    auto i;
    auto target;
    Wait();
    load_and_run_plugin("hexarm64", 0);
    msg("\n===== sqrt functor vtables =====\n");
    for (i = 0; i < 8; i = i + 1) {
        target = Qword(0x605F370 + i * 8);
        msg("off_605F370[%d] = %x\n", i, target);
        if (target != 0)
            dump_function(target, "off_605F370 entry");
    }
    for (i = 0; i < 8; i = i + 1) {
        target = Qword(0x605F3F0 + i * 8);
        msg("off_605F3F0[%d] = %x\n", i, target);
        if (target != 0)
            dump_function(target, "off_605F3F0 entry");
    }
    dump_function(0x5E4939C, "TransformNoiseModel");
    dump_function(0x3881C64, "CreateSabreNoiseEstimatesLut");
    dump_function(0x349286C, "CreateSabreNoiseEstimatesLutCaller");
    dump_function(0x3489240, "CreateBayerAndRgbSabreProgramOptions");
    dump_function(0x3496DE4, "SabreProgramOptionsConstructor");
    qexit(0);
}
