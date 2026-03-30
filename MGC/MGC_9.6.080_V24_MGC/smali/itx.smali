.class public final Litx;
.super Landroid/opengl/GLSurfaceView;
.source "PG"


# instance fields
.field public a:Livi;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Litx;->a:Livi;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 p1, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    goto/32 :goto_2

    nop

    nop

    nop
.end method


# virtual methods
.method protected final onMeasure(II)V
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Litx;->getWidth()I

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x5

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

    :goto_3
    add-int v0, v0, v1

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

    nop

    :goto_4
    iget-object p0, p0, Litx;->a:Livi;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    :goto_6
    const v0, 0x1b

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

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_8
    invoke-super {p0, p1, p2}, Landroid/opengl/GLSurfaceView;->onMeasure(II)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    :goto_a
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0, p1, v1, p2, v0}, Litx;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v1, 0x3

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_d
    if-nez p0, :cond_1

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

    :cond_1
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0}, Livi;->b()V

    :goto_f
    goto/32 :goto_9

    nop

    nop

    :goto_10
    invoke-virtual {p0}, Litx;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Litx;->getHeight()I

    move-result v0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_a

    nop

    :goto_13
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop
.end method
