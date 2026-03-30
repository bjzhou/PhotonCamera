.class final Lnmr;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# instance fields
.field final synthetic a:Lnxc;

.field final synthetic b:Lobe;


# direct methods
.method public constructor <init>(Lnxc;Lobe;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lnmr;->b:Lobe;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lnmr;->a:Lnxc;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 2

    goto/32 :goto_a

    nop

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

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_1
    const v1, 0x4

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1}, Lobe;->c(F)V

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return p0

    nop

    nop

    :goto_9
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_b
    iget-object p0, p0, Lnmr;->b:Lobe;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_c
    invoke-interface {v0, v1}, Lnxc;->B(F)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lnmr;->a:Lnxc;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

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

    :goto_f
    const/4 p0, 0x1

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

    :goto_10
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lnmr;->b:Lobe;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    invoke-interface {p1}, Lnxc;->C()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lobe;->d()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return p0

    nop

    nop

    :goto_4
    iget-object p1, p0, Lnmr;->a:Lnxc;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 p0, 0x1

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
.end method

.method public final onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Lobe;->e(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    goto/32 :goto_5

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 p1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lnmr;->b:Lobe;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p1, p0, Lnmr;->a:Lnxc;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {p1}, Lnxc;->D()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop
.end method
