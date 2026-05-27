.class public final enum Landroid/support/v8/renderscript/Element$DataType;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Landroid/support/v8/renderscript/Element$DataType;

.field public static final enum BOOLEAN:Landroid/support/v8/renderscript/Element$DataType;

.field public static final enum FLOAT_32:Landroid/support/v8/renderscript/Element$DataType;

.field public static final enum FLOAT_64:Landroid/support/v8/renderscript/Element$DataType;

.field public static final enum MATRIX_2X2:Landroid/support/v8/renderscript/Element$DataType;

.field public static final enum MATRIX_3X3:Landroid/support/v8/renderscript/Element$DataType;

.field public static final enum MATRIX_4X4:Landroid/support/v8/renderscript/Element$DataType;

.field public static final enum NONE:Landroid/support/v8/renderscript/Element$DataType;

.field public static final enum RS_ALLOCATION:Landroid/support/v8/renderscript/Element$DataType;

.field public static final enum RS_ELEMENT:Landroid/support/v8/renderscript/Element$DataType;

.field public static final enum RS_SAMPLER:Landroid/support/v8/renderscript/Element$DataType;

.field public static final enum RS_SCRIPT:Landroid/support/v8/renderscript/Element$DataType;

.field public static final enum RS_TYPE:Landroid/support/v8/renderscript/Element$DataType;

.field public static final enum SIGNED_16:Landroid/support/v8/renderscript/Element$DataType;

.field public static final enum SIGNED_32:Landroid/support/v8/renderscript/Element$DataType;

.field public static final enum SIGNED_64:Landroid/support/v8/renderscript/Element$DataType;

.field public static final enum SIGNED_8:Landroid/support/v8/renderscript/Element$DataType;

.field public static final enum UNSIGNED_16:Landroid/support/v8/renderscript/Element$DataType;

.field public static final enum UNSIGNED_32:Landroid/support/v8/renderscript/Element$DataType;

.field public static final enum UNSIGNED_4_4_4_4:Landroid/support/v8/renderscript/Element$DataType;

.field public static final enum UNSIGNED_5_5_5_1:Landroid/support/v8/renderscript/Element$DataType;

.field public static final enum UNSIGNED_5_6_5:Landroid/support/v8/renderscript/Element$DataType;

.field public static final enum UNSIGNED_64:Landroid/support/v8/renderscript/Element$DataType;

.field public static final enum UNSIGNED_8:Landroid/support/v8/renderscript/Element$DataType;


# instance fields
.field mID:I

.field mSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 26

    new-instance v0, Landroid/support/v8/renderscript/Element$DataType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Landroid/support/v8/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/support/v8/renderscript/Element$DataType;->NONE:Landroid/support/v8/renderscript/Element$DataType;

    new-instance v1, Landroid/support/v8/renderscript/Element$DataType;

    const-string v3, "FLOAT_32"

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x4

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/support/v8/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v1, Landroid/support/v8/renderscript/Element$DataType;->FLOAT_32:Landroid/support/v8/renderscript/Element$DataType;

    new-instance v3, Landroid/support/v8/renderscript/Element$DataType;

    const-string v7, "FLOAT_64"

    const/4 v8, 0x3

    const/16 v9, 0x8

    invoke-direct {v3, v7, v5, v8, v9}, Landroid/support/v8/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v3, Landroid/support/v8/renderscript/Element$DataType;->FLOAT_64:Landroid/support/v8/renderscript/Element$DataType;

    new-instance v7, Landroid/support/v8/renderscript/Element$DataType;

    const-string v10, "SIGNED_8"

    invoke-direct {v7, v10, v8, v6, v4}, Landroid/support/v8/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v7, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_8:Landroid/support/v8/renderscript/Element$DataType;

    new-instance v10, Landroid/support/v8/renderscript/Element$DataType;

    const-string v11, "SIGNED_16"

    const/4 v12, 0x5

    invoke-direct {v10, v11, v6, v12, v5}, Landroid/support/v8/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v10, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_16:Landroid/support/v8/renderscript/Element$DataType;

    new-instance v11, Landroid/support/v8/renderscript/Element$DataType;

    const-string v13, "SIGNED_32"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v12, v14, v6}, Landroid/support/v8/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v11, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_32:Landroid/support/v8/renderscript/Element$DataType;

    new-instance v13, Landroid/support/v8/renderscript/Element$DataType;

    const-string v15, "SIGNED_64"

    const/4 v12, 0x7

    invoke-direct {v13, v15, v14, v12, v9}, Landroid/support/v8/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v13, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_64:Landroid/support/v8/renderscript/Element$DataType;

    new-instance v15, Landroid/support/v8/renderscript/Element$DataType;

    const-string v14, "UNSIGNED_8"

    invoke-direct {v15, v14, v12, v9, v4}, Landroid/support/v8/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v15, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_8:Landroid/support/v8/renderscript/Element$DataType;

    new-instance v14, Landroid/support/v8/renderscript/Element$DataType;

    const-string v12, "UNSIGNED_16"

    const/16 v8, 0x9

    invoke-direct {v14, v12, v9, v8, v5}, Landroid/support/v8/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v14, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_16:Landroid/support/v8/renderscript/Element$DataType;

    new-instance v12, Landroid/support/v8/renderscript/Element$DataType;

    const-string v2, "UNSIGNED_32"

    const/16 v5, 0xa

    invoke-direct {v12, v2, v8, v5, v6}, Landroid/support/v8/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v12, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_32:Landroid/support/v8/renderscript/Element$DataType;

    new-instance v2, Landroid/support/v8/renderscript/Element$DataType;

    const-string v8, "UNSIGNED_64"

    const/16 v6, 0xb

    invoke-direct {v2, v8, v5, v6, v9}, Landroid/support/v8/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v2, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_64:Landroid/support/v8/renderscript/Element$DataType;

    new-instance v8, Landroid/support/v8/renderscript/Element$DataType;

    const-string v5, "BOOLEAN"

    const/16 v9, 0xc

    invoke-direct {v8, v5, v6, v9, v4}, Landroid/support/v8/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v8, Landroid/support/v8/renderscript/Element$DataType;->BOOLEAN:Landroid/support/v8/renderscript/Element$DataType;

    new-instance v5, Landroid/support/v8/renderscript/Element$DataType;

    const-string v6, "UNSIGNED_5_6_5"

    const/16 v4, 0xd

    move-object/from16 v16, v8

    const/4 v8, 0x2

    invoke-direct {v5, v6, v9, v4, v8}, Landroid/support/v8/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v5, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_5_6_5:Landroid/support/v8/renderscript/Element$DataType;

    new-instance v6, Landroid/support/v8/renderscript/Element$DataType;

    const-string v9, "UNSIGNED_5_5_5_1"

    move-object/from16 v17, v5

    const/16 v5, 0xe

    invoke-direct {v6, v9, v4, v5, v8}, Landroid/support/v8/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v6, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_5_5_5_1:Landroid/support/v8/renderscript/Element$DataType;

    new-instance v9, Landroid/support/v8/renderscript/Element$DataType;

    const-string v4, "UNSIGNED_4_4_4_4"

    move-object/from16 v18, v6

    const/16 v6, 0xf

    invoke-direct {v9, v4, v5, v6, v8}, Landroid/support/v8/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v9, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_4_4_4_4:Landroid/support/v8/renderscript/Element$DataType;

    new-instance v4, Landroid/support/v8/renderscript/Element$DataType;

    const-string v8, "MATRIX_4X4"

    const/16 v5, 0x10

    move-object/from16 v19, v9

    const/16 v9, 0x40

    invoke-direct {v4, v8, v6, v5, v9}, Landroid/support/v8/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v4, Landroid/support/v8/renderscript/Element$DataType;->MATRIX_4X4:Landroid/support/v8/renderscript/Element$DataType;

    new-instance v8, Landroid/support/v8/renderscript/Element$DataType;

    const-string v9, "MATRIX_3X3"

    const/16 v6, 0x11

    move-object/from16 v20, v4

    const/16 v4, 0x24

    invoke-direct {v8, v9, v5, v6, v4}, Landroid/support/v8/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v8, Landroid/support/v8/renderscript/Element$DataType;->MATRIX_3X3:Landroid/support/v8/renderscript/Element$DataType;

    new-instance v4, Landroid/support/v8/renderscript/Element$DataType;

    const-string v9, "MATRIX_2X2"

    move-object/from16 v21, v8

    const/16 v8, 0x12

    invoke-direct {v4, v9, v6, v8, v5}, Landroid/support/v8/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v4, Landroid/support/v8/renderscript/Element$DataType;->MATRIX_2X2:Landroid/support/v8/renderscript/Element$DataType;

    new-instance v9, Landroid/support/v8/renderscript/Element$DataType;

    const-string v6, "RS_ELEMENT"

    const/16 v5, 0x3e8

    invoke-direct {v9, v6, v8, v5}, Landroid/support/v8/renderscript/Element$DataType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Landroid/support/v8/renderscript/Element$DataType;->RS_ELEMENT:Landroid/support/v8/renderscript/Element$DataType;

    new-instance v5, Landroid/support/v8/renderscript/Element$DataType;

    const-string v6, "RS_TYPE"

    const/16 v8, 0x13

    move-object/from16 v22, v9

    const/16 v9, 0x3e9

    invoke-direct {v5, v6, v8, v9}, Landroid/support/v8/renderscript/Element$DataType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Landroid/support/v8/renderscript/Element$DataType;->RS_TYPE:Landroid/support/v8/renderscript/Element$DataType;

    new-instance v6, Landroid/support/v8/renderscript/Element$DataType;

    const-string v9, "RS_ALLOCATION"

    const/16 v8, 0x14

    move-object/from16 v23, v5

    const/16 v5, 0x3ea

    invoke-direct {v6, v9, v8, v5}, Landroid/support/v8/renderscript/Element$DataType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Landroid/support/v8/renderscript/Element$DataType;->RS_ALLOCATION:Landroid/support/v8/renderscript/Element$DataType;

    new-instance v5, Landroid/support/v8/renderscript/Element$DataType;

    const-string v9, "RS_SAMPLER"

    const/16 v8, 0x15

    move-object/from16 v24, v6

    const/16 v6, 0x3eb

    invoke-direct {v5, v9, v8, v6}, Landroid/support/v8/renderscript/Element$DataType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Landroid/support/v8/renderscript/Element$DataType;->RS_SAMPLER:Landroid/support/v8/renderscript/Element$DataType;

    new-instance v6, Landroid/support/v8/renderscript/Element$DataType;

    const-string v9, "RS_SCRIPT"

    const/16 v8, 0x16

    move-object/from16 v25, v5

    const/16 v5, 0x3ec

    invoke-direct {v6, v9, v8, v5}, Landroid/support/v8/renderscript/Element$DataType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Landroid/support/v8/renderscript/Element$DataType;->RS_SCRIPT:Landroid/support/v8/renderscript/Element$DataType;

    const/16 v5, 0x17

    new-array v5, v5, [Landroid/support/v8/renderscript/Element$DataType;

    const/4 v8, 0x0

    aput-object v0, v5, v8

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v3, v5, v0

    const/4 v0, 0x3

    aput-object v7, v5, v0

    const/4 v0, 0x4

    aput-object v10, v5, v0

    const/4 v0, 0x5

    aput-object v11, v5, v0

    const/4 v0, 0x6

    aput-object v13, v5, v0

    const/4 v0, 0x7

    aput-object v15, v5, v0

    const/16 v0, 0x8

    aput-object v14, v5, v0

    const/16 v0, 0x9

    aput-object v12, v5, v0

    const/16 v0, 0xa

    aput-object v2, v5, v0

    const/16 v0, 0xb

    aput-object v16, v5, v0

    const/16 v0, 0xc

    aput-object v17, v5, v0

    const/16 v0, 0xd

    aput-object v18, v5, v0

    const/16 v0, 0xe

    aput-object v19, v5, v0

    const/16 v0, 0xf

    aput-object v20, v5, v0

    const/16 v0, 0x10

    aput-object v21, v5, v0

    const/16 v0, 0x11

    aput-object v4, v5, v0

    const/16 v0, 0x12

    aput-object v22, v5, v0

    const/16 v0, 0x13

    aput-object v23, v5, v0

    const/16 v0, 0x14

    aput-object v24, v5, v0

    const/16 v0, 0x15

    aput-object v25, v5, v0

    const/16 v0, 0x16

    aput-object v6, v5, v0

    sput-object v5, Landroid/support/v8/renderscript/Element$DataType;->$VALUES:[Landroid/support/v8/renderscript/Element$DataType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Landroid/support/v8/renderscript/Element$DataType;->mID:I

    const/4 p1, 0x4

    iput p1, p0, Landroid/support/v8/renderscript/Element$DataType;->mSize:I

    sget p1, Landroid/support/v8/renderscript/RenderScript;->sPointerSize:I

    const/16 p2, 0x8

    if-ne p1, p2, :cond_0

    const/16 p1, 0x20

    iput p1, p0, Landroid/support/v8/renderscript/Element$DataType;->mSize:I

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Landroid/support/v8/renderscript/Element$DataType;->mID:I

    iput p4, p0, Landroid/support/v8/renderscript/Element$DataType;->mSize:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/support/v8/renderscript/Element$DataType;
    .locals 1

    const-class v0, Landroid/support/v8/renderscript/Element$DataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/support/v8/renderscript/Element$DataType;

    return-object p0
.end method

.method public static values()[Landroid/support/v8/renderscript/Element$DataType;
    .locals 1

    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->$VALUES:[Landroid/support/v8/renderscript/Element$DataType;

    invoke-virtual {v0}, [Landroid/support/v8/renderscript/Element$DataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/v8/renderscript/Element$DataType;

    return-object v0
.end method
