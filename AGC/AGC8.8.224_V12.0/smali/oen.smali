.class public final Loen;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/util/ArrayList;

.field public static final b:Ljava/util/List;

.field private static final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 23

    const-class v0, Loen;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Loen;->c:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Loen;->a:Ljava/util/ArrayList;

    const/16 v0, 0x1f

    new-array v0, v0, [Loem;

    const-string v4, "4560MMX"

    new-instance v8, Loem;

    const-string v2, "Micromax"

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/high16 v7, 0x43590000    # 217.0f

    move-object v1, v8

    move v6, v7

    invoke-direct/range {v1 .. v7}, Loem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FF)V

    const/4 v1, 0x0

    aput-object v8, v0, v1

    new-instance v1, Loem;

    const-string v10, "HTC"

    const-string v11, "endeavoru"

    const-string v12, "HTC One X"

    const/4 v13, 0x0

    const/high16 v15, 0x439c0000    # 312.0f

    move-object v9, v1

    move v14, v15

    invoke-direct/range {v9 .. v15}, Loem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FF)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v6, "SM-G920P"

    new-instance v1, Loem;

    const-string v4, "samsung"

    const/4 v7, 0x0

    const v9, 0x440fc000    # 575.0f

    move-object v3, v1

    move v8, v9

    invoke-direct/range {v3 .. v9}, Loem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FF)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v6, "SM-G930"

    new-instance v1, Loem;

    const-string v4, "samsung"

    const v8, 0x44114000    # 581.0f

    const/high16 v9, 0x44110000    # 580.0f

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Loem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FF)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v6, "SM-G9300"

    new-instance v1, Loem;

    const-string v4, "samsung"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Loem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FF)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v6, "SM-G930A"

    new-instance v1, Loem;

    const-string v4, "samsung"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Loem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FF)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v6, "SM-G930F"

    new-instance v1, Loem;

    const-string v4, "samsung"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Loem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FF)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v6, "SM-G930P"

    new-instance v1, Loem;

    const-string v4, "samsung"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Loem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FF)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v6, "SM-G930R4"

    new-instance v1, Loem;

    const-string v4, "samsung"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Loem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FF)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-instance v1, Loem;

    const-string v6, "SM-G930T"

    const-string v4, "samsung"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Loem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FF)V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v6, "SM-G930V"

    new-instance v1, Loem;

    const-string v4, "samsung"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Loem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FF)V

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v6, "SM-G930W8"

    new-instance v1, Loem;

    const-string v4, "samsung"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Loem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FF)V

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v6, "SM-N915FY"

    new-instance v1, Loem;

    const-string v4, "samsung"

    const v9, 0x44074000    # 541.0f

    move-object v3, v1

    move v8, v9

    invoke-direct/range {v3 .. v9}, Loem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FF)V

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string v6, "SM-N915A"

    new-instance v1, Loem;

    const-string v4, "samsung"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Loem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FF)V

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string v6, "SM-N915T"

    new-instance v1, Loem;

    const-string v4, "samsung"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Loem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FF)V

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string v6, "SM-N915K"

    new-instance v1, Loem;

    const-string v4, "samsung"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Loem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FF)V

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string v6, "SM-N915T"

    new-instance v1, Loem;

    const-string v4, "samsung"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Loem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FF)V

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string v6, "SM-N915G"

    new-instance v1, Loem;

    const-string v4, "samsung"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Loem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FF)V

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string v6, "SM-N915D"

    new-instance v1, Loem;

    const-string v4, "samsung"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Loem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FF)V

    const/16 v2, 0x12

    aput-object v1, v0, v2

    new-instance v1, Loem;

    const-string v4, "BLU"

    const-string v5, "BLU"

    const-string v6, "Studio 5.0 HD LTE"

    const-string v7, "qcom"

    const/high16 v9, 0x43930000    # 294.0f

    move-object v3, v1

    move v8, v9

    invoke-direct/range {v3 .. v9}, Loem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FF)V

    const/16 v2, 0x13

    aput-object v1, v0, v2

    new-instance v1, Loem;

    const-string v4, "OnePlus"

    const-string v5, "A0001"

    const-string v6, "A0001"

    const-string v7, "bacon"

    const v9, 0x43c88000    # 401.0f

    move-object v3, v1

    move v8, v9

    invoke-direct/range {v3 .. v9}, Loem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FF)V

    const/16 v2, 0x14

    aput-object v1, v0, v2

    new-instance v1, Loem;

    const-string v4, "THL"

    const-string v5, "THL"

    const-string v6, "thl 5000"

    const-string v7, "mt6592"

    const v9, 0x43dc8000    # 441.0f

    move-object v3, v1

    move v8, v9

    invoke-direct/range {v3 .. v9}, Loem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FF)V

    const/16 v2, 0x15

    aput-object v1, v0, v2

    new-instance v1, Loem;

    const-string v4, "Google"

    const-string v5, "sailfish"

    const-string v6, "Pixel"

    const-string v7, "sailfish"

    const v2, 0x43dcdeb8    # 441.74f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    const v2, 0x3b83126f    # 0.004f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    move-object v3, v1

    move-object v8, v14

    move-object v9, v14

    move-object v10, v2

    invoke-direct/range {v3 .. v10}, Loem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)V

    const/16 v3, 0x16

    aput-object v1, v0, v3

    new-instance v1, Loem;

    const-string v16, "Google"

    const-string v17, "marlin"

    const-string v18, "Pixel XL"

    const-string v19, "marlin"

    const v3, 0x4406647b    # 537.57f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    move-object v15, v1

    move-object/from16 v20, v21

    move-object/from16 v22, v2

    invoke-direct/range {v15 .. v22}, Loem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)V

    const/16 v3, 0x17

    aput-object v1, v0, v3

    new-instance v1, Loem;

    const-string v12, "walleye"

    const-string v9, "Google"

    const-string v10, "walleye"

    const/4 v11, 0x0

    move-object v8, v1

    move-object v13, v14

    move-object v15, v2

    invoke-direct/range {v8 .. v15}, Loem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)V

    const/16 v2, 0x18

    aput-object v1, v0, v2

    new-instance v1, Loem;

    const-string v4, "Google"

    const-string v7, "taimen"

    const-string v5, "taimen"

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const v2, 0x3b96bb99    # 0.0046f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Loem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)V

    const/16 v2, 0x19

    aput-object v1, v0, v2

    new-instance v1, Loem;

    const v2, 0x4402a852    # 522.63f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    const-string v4, "Google"

    const-string v5, "21c8b5470a64adbb25bc84316cbc449361d86839"

    const v2, 0x3b79096c    # 0.0038f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v7, 0x0

    move-object v3, v1

    move-object v8, v9

    move-object v10, v2

    invoke-direct/range {v3 .. v10}, Loem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)V

    const/16 v3, 0x1a

    aput-object v1, v0, v3

    new-instance v1, Loem;

    const-string v11, "Google"

    const-string v12, "6e2c7e24b7c7eae9fc94882c9f31befa00594872"

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v10, v1

    move-object/from16 v17, v2

    invoke-direct/range {v10 .. v17}, Loem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)V

    const/16 v3, 0x1b

    aput-object v1, v0, v3

    new-instance v1, Loem;

    const-string v14, "joan"

    const-string v11, "LGE"

    const-string v12, "joan"

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Loem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)V

    const/16 v3, 0x1c

    aput-object v1, v0, v3

    new-instance v1, Loem;

    const-string v11, "LGE"

    const-string v12, "e44046539bb5b584279553ca6eacca937c8e16cf"

    const/4 v14, 0x0

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Loem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)V

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const-string v7, "vega"

    new-instance v1, Loem;

    const-string v4, "Lenovo"

    const-string v5, "vega"

    const v8, 0x440658d5    # 537.388f

    const v9, 0x44067873

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Loem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FF)V

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Loen;->b:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, v0

    add-int v3, v2, v2

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-byte v5, v0, v4

    const-string v6, "%02x"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v7, v3

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    sget-object v0, Loen;->c:Ljava/lang/String;

    const-string v1, "SHA-256 is missing"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method
