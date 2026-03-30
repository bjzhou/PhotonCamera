.class public final Liwg;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ljava/nio/FloatBuffer;

.field public static final b:Ljava/nio/FloatBuffer;


# instance fields
.field public c:Lcom/google/android/libraries/vision/opengl/Texture;

.field public final d:[F

.field public final e:[F

.field public f:Lrcx;

.field public g:Luoj;

.field public h:Luoj;

.field public i:Luoj;

.field public j:Luoj;

.field public k:Luoj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0}, Lrgw;->p([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/high16 v0, -0x40800000    # -1.0f

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

    :goto_2
    invoke-static {v0, v0}, Lqqm;->f(FF)[F

    move-result-object v0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    sput-object v0, Liwg;->a:Ljava/nio/FloatBuffer;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {v0, v0}, Lqqm;->f(FF)[F

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    :goto_6
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_7
    sput-object v0, Liwg;->b:Ljava/nio/FloatBuffer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_8
    invoke-static {v0}, Lrgw;->p([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 2

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    goto/32 :goto_c

    nop

    nop

    :goto_4
    new-array v1, v0, [F

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_5
    iput-object v0, p0, Liwg;->e:[F

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_6
    iput-object v0, p0, Liwg;->c:Lcom/google/android/libraries/vision/opengl/Texture;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

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

    :goto_8
    iput-object v1, p0, Liwg;->d:[F

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_9
    invoke-static {v1, p0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_a
    new-array v0, v0, [F

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {v0, p0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_d
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_10
    const v0, 0x15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_3

    nop

    nop

    :goto_12
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_13
    const/16 v0, 0x10

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop
.end method
