#include <idc.idc>

static main()
{
    auto ea, end, mnem, op0, op1, op2;
    ea = 0;
    end = 0x4000000;
    while (ea != BADADDR && ea < end)
    {
        mnem = print_insn_mnem(ea);
        if (mnem == "LDR" || mnem == "STR" ||
            mnem == "LDUR" || mnem == "STUR" ||
            mnem == "LDP" || mnem == "STP")
        {
            op0 = print_operand(ea, 0);
            op1 = print_operand(ea, 1);
            op2 = print_operand(ea, 2);
            if (strstr(op1, "#0x2B4") != -1 ||
                strstr(op2, "#0x2B4") != -1 ||
                strstr(op1, "#0x298") != -1 ||
                strstr(op2, "#0x298") != -1 ||
                strstr(op1, "#0x2A8") != -1 ||
                strstr(op2, "#0x2A8") != -1 ||
                strstr(op1, "#0x5B8") != -1 ||
                strstr(op2, "#0x5B8") != -1 ||
                strstr(op1, "#0x2B8") != -1 ||
                strstr(op2, "#0x2B8") != -1 ||
                strstr(op1, "#0x2BC") != -1 ||
                strstr(op2, "#0x2BC") != -1 ||
                strstr(op1, "#0x2C0") != -1 ||
                strstr(op2, "#0x2C0") != -1 ||
                strstr(op1, "#0xFB0") != -1 ||
                strstr(op2, "#0xFB0") != -1)
            {
                msg("%08x  %s %s, %s, %s\n", ea, mnem, op0, op1, op2);
            }
        }
        ea = next_head(ea, end);
    }
    qexit(0);
}
