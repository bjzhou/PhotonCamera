.class public final Lmrt;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Landroid/view/animation/Interpolator;

.field public static final b:Landroid/view/animation/Interpolator;

.field public static final c:Landroid/view/animation/Interpolator;

.field public static final d:Landroid/view/animation/Interpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    goto/32 :goto_1b

    nop

    nop

    :goto_0
    sput-object v0, Lmrt;->d:Landroid/view/animation/Interpolator;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1
    const v1, 0x3e99999a    # 0.3f

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_3
    invoke-direct {v0, v1, v2, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v0, Landroid/view/animation/PathInterpolator;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

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

    :goto_6
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_8
    sput-object v0, Lmrt;->a:Landroid/view/animation/Interpolator;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_9
    new-instance v0, Landroid/view/animation/PathInterpolator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {v0, v1, v2, v3, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/high16 v3, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_c
    new-instance v0, Landroid/view/animation/PathInterpolator;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_d
    const v5, 0x3dcccccd    # 0.1f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {v0, v6, v4, v5, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {v0, v4}, Landroid/view/animation/PathInterpolator;-><init>(Landroid/graphics/Path;)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_10
    const v6, 0x3d4ccccd    # 0.05f

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v4, 0x3f333333    # 0.7f

    nop

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

    :goto_12
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_13
    return-void

    nop

    nop

    :goto_14
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {v4}, Ldsw;->C(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v4

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

    :goto_16
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_17
    new-instance v0, Landroid/view/animation/PathInterpolator;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_18
    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    goto/32 :goto_8

    nop

    nop

    :goto_19
    new-instance v0, Landroid/view/animation/PathInterpolator;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_1a
    const v1, 0x3e4ccccd    # 0.2f

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_1b
    const v0, 0xf

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1c
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    new-instance v0, Landroid/view/animation/PathInterpolator;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const v1, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1f
    const v4, 0x3e19999a    # 0.15f

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_20
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_21
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_22
    const-string v4, "M 0,0 C 0.05, 0, 0.133333, 0.06, 0.166666, 0.4 C 0.208333, 0.82, 0.25, 1, 1, 1"

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_23
    const v3, 0x3f4ccccd    # 0.8f

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_24
    sput-object v0, Lmrt;->c:Landroid/view/animation/Interpolator;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_25
    invoke-direct {v0, v2, v2, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_26
    sput-object v0, Lmrt;->b:Landroid/view/animation/Interpolator;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method
