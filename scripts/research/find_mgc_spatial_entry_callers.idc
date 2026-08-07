#include <idc.idc>

static dump_refs(target)
{
    auto ref;
    msg("\n===== xrefs to %x =====\n", target);
    ref = get_first_cref_to(target);
    while (ref != BADADDR)
    {
        msg("%08x  %s %s\n", ref, print_insn_mnem(ref), print_operand(ref, 0));
        ref = get_next_cref_to(target, ref);
    }
}

static main()
{
    dump_refs(0x35A4B00);
    dump_refs(0x35A8E84);
    dump_refs(0x3631290);
    dump_refs(0x3629BAC);
    qexit(0);
}
