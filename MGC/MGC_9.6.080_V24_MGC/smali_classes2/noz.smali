.class public final Lnoz;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:F


# direct methods
.method public constructor <init>(F)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto :goto_7

    nop

    :goto_4
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_5
    iput p1, p0, Lnoz;->a:F

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_a

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-gtz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_a
    invoke-static {v0}, La;->au(Z)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    cmpl-float v0, p1, v0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop
.end method

.method public constructor <init>(F[B)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Lnoz;->a:F

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop
.end method

.method public constructor <init>(Landroid/view/Window;)V
    .locals 1

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput p1, p0, Lnoz;->a:F

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

    :goto_2
    iget p1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_5
    new-instance v0, Landroid/util/DisplayMetrics;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    goto/32 :goto_2

    nop

    nop

    :goto_8
    const-string v0, "window"

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_b

    nop

    nop

    :goto_b
    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object p1

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

    nop

    :goto_c
    mul-float/2addr p1, v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_d
    check-cast p1, Landroid/view/WindowManager;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lmbl;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iget p1, p1, Lmbl;->c:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    iput p1, p0, Lnoz;->a:F

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(F)F
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget p0, p0, Lnoz;->a:F

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    return p1

    nop

    :goto_2
    mul-float/2addr p1, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final b([Llsf;Landroid/graphics/Rect;)Z
    .locals 10

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_1
    invoke-interface {p1, v1}, Lj$/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    int-to-float v8, v8

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_4
    mul-float/2addr v6, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-gtz v5, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    :cond_0
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_7
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_9
    if-lt v3, v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :cond_1
    goto/32 :goto_2c

    nop

    nop

    :goto_a
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v7

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_b
    div-float/2addr v6, v7

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_c
    return v0

    nop

    :goto_d
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_e
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-gtz v4, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :cond_2
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_10
    array-length v1, p1

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v8

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_12
    if-eqz p2, :cond_3

    nop

    goto/32 :goto_1e

    nop

    nop

    :cond_3
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {v1, v0}, Lhiu;-><init>(I)V

    goto/32 :goto_1

    nop

    nop

    :goto_14
    new-instance v1, Lhiu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_15
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_17
    int-to-float v7, v7

    nop

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

    :goto_18
    invoke-interface {p1, v1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget v9, p0, Lnoz;->a:F

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1a
    const/4 v2, 0x1

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    return v2

    nop

    nop

    :goto_1c
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    return v0

    nop

    :goto_1e
    goto/32 :goto_21

    nop

    nop

    :goto_1f
    int-to-float v6, v6

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const v1, 0xf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_21
    invoke-static {p1}, Lj$/util/DesugarArrays;->stream([Ljava/lang/Object;)Lj$/util/stream/Stream;

    move-result-object p1

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_22
    invoke-direct {v1, v2}, Lhpi;-><init>(I)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_24
    move v3, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_25
    div-float/2addr v5, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_26
    if-lez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_29

    nop

    :goto_27
    cmpl-float v5, v6, v9

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

    :goto_28
    const v0, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_29
    goto/32 :goto_d

    nop

    :goto_2a
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    new-instance v1, Lhpi;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_2c
    aget-object v5, p1, v3

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    move v4, v3

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2f
    goto :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_31
    int-to-float v5, v5

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_32
    check-cast p1, [Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop
.end method
