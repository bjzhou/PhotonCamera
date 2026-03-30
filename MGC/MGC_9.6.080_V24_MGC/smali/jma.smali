.class public final Ljma;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:[F

.field public static final b:[F

.field public static final c:[F

.field public static final d:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :array_0
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3f35c28f    # 0.71f
        0x3f65e354    # 0.898f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3e4ccccd    # 0.2f
    .end array-data

    :goto_1
    goto/32 :goto_d

    nop

    nop

    :goto_2
    sput-object v1, Ljma;->b:[F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_11

    nop

    nop

    :goto_5
    const v0, 0x1f

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_6
    sput-object v0, Ljma;->d:[F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    new-array v1, v0, [F

    nop

    nop

    nop

    fill-array-data v1, :array_1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_9
    sput-object v1, Ljma;->a:[F

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_a
    new-array v1, v0, [F

    nop

    nop

    nop

    nop

    fill-array-data v1, :array_2

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_b
    sput-object v1, Ljma;->c:[F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_c
    new-array v0, v0, [F

    nop

    nop

    nop

    nop

    fill-array-data v0, :array_3

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_e
    new-array v1, v0, [F

    nop

    nop

    nop

    nop

    fill-array-data v1, :array_0

    goto/32 :goto_9

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v0, 0x4

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v1, 0x1a

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop
.end method
