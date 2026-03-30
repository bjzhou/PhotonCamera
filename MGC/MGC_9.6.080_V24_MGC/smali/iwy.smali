.class public final Liwy;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:[F


# instance fields
.field public b:Ljava/nio/FloatBuffer;

.field public final c:[F

.field public final d:[F

.field public final e:[F

.field public f:Lrcx;

.field public g:Luoj;

.field public h:Luoj;

.field public i:Luoj;

.field public j:Luoj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const/16 v0, 0x30

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :goto_2
    new-array v0, v0, [F

    nop

    nop

    fill-array-data v0, :array_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sput-object v0, Liwy;->a:[F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 2

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_3
    iput-object v0, p0, Liwy;->d:[F

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object v0, p0, Liwy;->b:Ljava/nio/FloatBuffer;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_13

    nop

    nop

    :goto_6
    new-array v1, v0, [F

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-object v0, p0, Liwy;->e:[F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_a
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :goto_b
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0xe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v0, 0x4

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_f
    new-array v0, v0, [F

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput-object v1, p0, Liwy;->c:[F

    nop

    nop

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
    new-array v0, v0, [F

    nop

    nop

    fill-array-data v0, :array_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {v0}, Lrgw;->p([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_13
    sget-object v0, Liwy;->a:[F

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_14
    const/16 v0, 0x10

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {v1, p0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v0, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop
.end method
