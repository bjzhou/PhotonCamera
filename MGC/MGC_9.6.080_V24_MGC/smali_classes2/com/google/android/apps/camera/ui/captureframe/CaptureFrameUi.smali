.class public Lcom/google/android/apps/camera/ui/captureframe/CaptureFrameUi;
.super Landroid/view/View;
.source "PG"


# instance fields
.field public final a:Landroid/graphics/RectF;

.field public final b:Landroid/graphics/Paint;

.field private final c:Ljava/util/List;

.field private final d:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    goto/32 :goto_8

    nop

    nop

    :goto_0
    iput-object p2, p0, Lcom/google/android/apps/camera/ui/captureframe/CaptureFrameUi;->b:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/captureframe/CaptureFrameUi;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v2, 0x2

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    :try_start_0
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    nop

    nop

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v1, Landroid/graphics/BlendMode;->DST_ATOP:Landroid/graphics/BlendMode;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_7
    const p2, 0x7f0701e2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_8
    const v0, 0x15

    nop

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

    nop

    :goto_9
    new-instance v0, Lmsp;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput-object p1, p0, Lcom/google/android/apps/camera/ui/captureframe/CaptureFrameUi;->c:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/captureframe/CaptureFrameUi;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v3, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_e
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_10
    new-instance v1, Lmsp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_11
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iput-object p1, p0, Lcom/google/android/apps/camera/ui/captureframe/CaptureFrameUi;->a:Landroid/graphics/RectF;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {v1, p0, p2, v0, p1}, Lmsp;-><init>(Lcom/google/android/apps/camera/ui/captureframe/CaptureFrameUi;Landroid/graphics/Paint;IF)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    new-instance v3, Lmsp;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const v0, 0x7f0700da

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_19
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-direct {v0, p0, p2, v2, p1}, Lmsp;-><init>(Lcom/google/android/apps/camera/ui/captureframe/CaptureFrameUi;Landroid/graphics/Paint;IF)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    new-instance p1, Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {v1, v0, v2, v3}, Lryb;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lryb;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1e
    rem-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    new-instance v2, Lmsp;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_22
    iput p2, p0, Lcom/google/android/apps/camera/ui/captureframe/CaptureFrameUi;->d:F

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_23
    const v1, 0x7f0701e3

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const/4 v0, 0x1

    nop

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

    :goto_25
    invoke-direct {v3, p0, p2, v4, p1}, Lmsp;-><init>(Lcom/google/android/apps/camera/ui/captureframe/CaptureFrameUi;Landroid/graphics/Paint;IF)V

    goto/32 :goto_1d

    nop

    nop

    :goto_26
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/captureframe/CaptureFrameUi;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_27
    new-instance p2, Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_28
    invoke-direct {v2, p0, p2, v3, p1}, Lmsp;-><init>(Lcom/google/android/apps/camera/ui/captureframe/CaptureFrameUi;Landroid/graphics/Paint;IF)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const/4 v4, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    int-to-float v0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_0
    const v1, 0xd

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_2
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_4
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    goto/32 :goto_d

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_6
    invoke-direct {v1, p0, p1, v2, v3}, Lkzq;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v2, 0x5

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_a
    new-instance v1, Lkzq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_b
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/captureframe/CaptureFrameUi;->c:Ljava/util/List;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0x11

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method protected final onLayout(ZIIII)V
    .locals 0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    int-to-float p3, p3

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

    :goto_2
    add-float/2addr p2, p5

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    add-float/2addr p3, p5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, p2, p3, p4, p1}, Landroid/graphics/RectF;->set(FFFF)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    int-to-float p2, p2

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_6
    int-to-float p4, p4

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    sub-float/2addr p4, p5

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget p5, p0, Lcom/google/android/apps/camera/ui/captureframe/CaptureFrameUi;->d:F

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_9
    sub-float/2addr p1, p5

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/captureframe/CaptureFrameUi;->a:Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_b
    int-to-float p1, p5

    nop

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
.end method
