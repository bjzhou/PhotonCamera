.class public final Lnir;
.super Landroid/view/SurfaceView;
.source "PG"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 1

    goto/32 :goto_8

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lnir;->getVisibility()I

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lnir;->getHeight()I

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Lnir;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

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

    :goto_6
    invoke-virtual {p0}, Lnir;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

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

    :goto_7
    return-void

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Lnir;->getWidth()I

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final onAttachedToWindow()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lnir;->a()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    invoke-super {p0}, Landroid/view/SurfaceView;->onAttachedToWindow()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop
.end method

.method protected final onDetachedFromWindow()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lnir;->a()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method protected final onLayout(ZIIII)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance p2, Lgha;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-super/range {p0 .. p5}, Landroid/view/SurfaceView;->onLayout(ZIIII)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1, p2}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    invoke-direct {p2, p0, p3}, Lgha;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    const/4 p3, 0x4

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Lnir;->a()V

    goto/32 :goto_7

    nop

    nop

    :goto_7
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method protected final onWindowVisibilityChanged(I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lnir;->a()V

    goto/32 :goto_2

    nop

    nop

    :goto_1
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onWindowVisibilityChanged(I)V

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
.end method
