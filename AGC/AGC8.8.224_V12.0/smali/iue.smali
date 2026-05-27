.class final Liue;
.super Ljava/lang/Object;

# interfaces
.implements Lnww;


# static fields
.field static final a:Lnww;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Liue;

    invoke-direct {v0}, Liue;-><init>()V

    sput-object v0, Liue;->a:Lnww;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 0

    sparse-switch p1, :sswitch_data_0

    const/4 p1, 0x0

    return p1

    :sswitch_0
    const/4 p1, 0x1

    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0xa -> :sswitch_0
        0xc -> :sswitch_0
        0x11 -> :sswitch_0
        0x12 -> :sswitch_0
        0x17 -> :sswitch_0
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_0
        0x22 -> :sswitch_0
        0x23 -> :sswitch_0
        0x24 -> :sswitch_0
        0x25 -> :sswitch_0
        0x26 -> :sswitch_0
        0x27 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2a -> :sswitch_0
        0x2c -> :sswitch_0
        0x2e -> :sswitch_0
        0x34 -> :sswitch_0
        0x35 -> :sswitch_0
        0x36 -> :sswitch_0
        0x3a -> :sswitch_0
        0x3b -> :sswitch_0
        0x3c -> :sswitch_0
        0x3d -> :sswitch_0
        0x3f -> :sswitch_0
        0x41 -> :sswitch_0
        0x42 -> :sswitch_0
        0x45 -> :sswitch_0
        0x46 -> :sswitch_0
        0x47 -> :sswitch_0
        0x48 -> :sswitch_0
        0x49 -> :sswitch_0
        0x4a -> :sswitch_0
        0x4d -> :sswitch_0
        0x4e -> :sswitch_0
        0x4f -> :sswitch_0
        0x50 -> :sswitch_0
        0x51 -> :sswitch_0
        0x53 -> :sswitch_0
        0x54 -> :sswitch_0
        0x55 -> :sswitch_0
        0x5c -> :sswitch_0
        0x5d -> :sswitch_0
        0x5e -> :sswitch_0
        0x5f -> :sswitch_0
        0x60 -> :sswitch_0
        0x62 -> :sswitch_0
        0x63 -> :sswitch_0
        0x64 -> :sswitch_0
        0x6a -> :sswitch_0
        0x6c -> :sswitch_0
        0x72 -> :sswitch_0
        0x75 -> :sswitch_0
        0x79 -> :sswitch_0
        0x7a -> :sswitch_0
        0x7e -> :sswitch_0
        0x81 -> :sswitch_0
        0x82 -> :sswitch_0
        0x83 -> :sswitch_0
        0x89 -> :sswitch_0
        0x8b -> :sswitch_0
        0x94 -> :sswitch_0
        0x96 -> :sswitch_0
        0x97 -> :sswitch_0
        0x98 -> :sswitch_0
        0x99 -> :sswitch_0
        0x9b -> :sswitch_0
        0x9c -> :sswitch_0
        0x9d -> :sswitch_0
        0xa0 -> :sswitch_0
        0xa8 -> :sswitch_0
        0xa9 -> :sswitch_0
        0xad -> :sswitch_0
        0xae -> :sswitch_0
        0xbd -> :sswitch_0
        0xbe -> :sswitch_0
        0xc2 -> :sswitch_0
        0xc4 -> :sswitch_0
        0xc7 -> :sswitch_0
        0xfb -> :sswitch_0
        0xff -> :sswitch_0
        0x101 -> :sswitch_0
        0x102 -> :sswitch_0
        0x103 -> :sswitch_0
        0x104 -> :sswitch_0
        0x105 -> :sswitch_0
        0x106 -> :sswitch_0
        0x10b -> :sswitch_0
        0x10d -> :sswitch_0
        0x10e -> :sswitch_0
        0x110 -> :sswitch_0
        0x112 -> :sswitch_0
        0x115 -> :sswitch_0
        0x119 -> :sswitch_0
        0x11b -> :sswitch_0
        0x11c -> :sswitch_0
        0x11e -> :sswitch_0
        0x129 -> :sswitch_0
        0x12a -> :sswitch_0
        0x12b -> :sswitch_0
        0x12c -> :sswitch_0
        0x12d -> :sswitch_0
        0x132 -> :sswitch_0
        0x133 -> :sswitch_0
        0x134 -> :sswitch_0
        0x137 -> :sswitch_0
        0x13a -> :sswitch_0
        0x13b -> :sswitch_0
        0x13d -> :sswitch_0
        0x13e -> :sswitch_0
        0x140 -> :sswitch_0
        0x141 -> :sswitch_0
        0x142 -> :sswitch_0
        0x143 -> :sswitch_0
        0x144 -> :sswitch_0
        0x145 -> :sswitch_0
        0x146 -> :sswitch_0
        0x147 -> :sswitch_0
        0x148 -> :sswitch_0
        0x149 -> :sswitch_0
        0x14b -> :sswitch_0
        0x14d -> :sswitch_0
        0x14e -> :sswitch_0
        0x14f -> :sswitch_0
        0x150 -> :sswitch_0
        0x151 -> :sswitch_0
        0x152 -> :sswitch_0
        0x153 -> :sswitch_0
        0x155 -> :sswitch_0
        0x159 -> :sswitch_0
        0x15c -> :sswitch_0
        0x15d -> :sswitch_0
        0x160 -> :sswitch_0
        0x162 -> :sswitch_0
        0x163 -> :sswitch_0
        0x166 -> :sswitch_0
        0x167 -> :sswitch_0
        0x168 -> :sswitch_0
        0x169 -> :sswitch_0
        0x16b -> :sswitch_0
        0x16c -> :sswitch_0
        0x16d -> :sswitch_0
        0x16e -> :sswitch_0
        0x16f -> :sswitch_0
        0x170 -> :sswitch_0
        0x172 -> :sswitch_0
        0x174 -> :sswitch_0
        0x177 -> :sswitch_0
        0x178 -> :sswitch_0
        0x17b -> :sswitch_0
        0x17e -> :sswitch_0
        0x180 -> :sswitch_0
        0x181 -> :sswitch_0
        0x182 -> :sswitch_0
        0x183 -> :sswitch_0
        0x184 -> :sswitch_0
        0x185 -> :sswitch_0
        0x187 -> :sswitch_0
        0x188 -> :sswitch_0
        0x18a -> :sswitch_0
        0x18d -> :sswitch_0
        0x190 -> :sswitch_0
        0x191 -> :sswitch_0
        0x192 -> :sswitch_0
        0x193 -> :sswitch_0
        0x194 -> :sswitch_0
        0x196 -> :sswitch_0
        0x19a -> :sswitch_0
        0x19c -> :sswitch_0
        0x19d -> :sswitch_0
        0x19e -> :sswitch_0
        0x1a0 -> :sswitch_0
        0x1a4 -> :sswitch_0
        0x1a5 -> :sswitch_0
        0x1a7 -> :sswitch_0
        0x1a8 -> :sswitch_0
        0x1a9 -> :sswitch_0
        0x1ab -> :sswitch_0
        0x1ac -> :sswitch_0
        0x1ae -> :sswitch_0
        0x1af -> :sswitch_0
        0x1b2 -> :sswitch_0
        0x1b5 -> :sswitch_0
        0x1b6 -> :sswitch_0
        0x1b7 -> :sswitch_0
        0x1b8 -> :sswitch_0
        0x1bb -> :sswitch_0
        0x1bc -> :sswitch_0
        0x1bd -> :sswitch_0
        0x1be -> :sswitch_0
        0x1bf -> :sswitch_0
        0x1c0 -> :sswitch_0
        0x1c2 -> :sswitch_0
        0x1c6 -> :sswitch_0
        0x1c7 -> :sswitch_0
        0x1c8 -> :sswitch_0
        0x1c9 -> :sswitch_0
        0x1ce -> :sswitch_0
        0x1d2 -> :sswitch_0
        0x1d5 -> :sswitch_0
        0x1d6 -> :sswitch_0
        0x1d8 -> :sswitch_0
        0x1d9 -> :sswitch_0
        0x1da -> :sswitch_0
        0x1db -> :sswitch_0
        0x1dd -> :sswitch_0
        0x1de -> :sswitch_0
        0x1e0 -> :sswitch_0
        0x1e1 -> :sswitch_0
        0x1e3 -> :sswitch_0
    .end sparse-switch
.end method
