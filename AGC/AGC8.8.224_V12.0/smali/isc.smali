.class public final Lisc;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;


# instance fields
.field final synthetic a:Lisi;


# direct methods
.method public constructor <init>(Lisi;)V
    .locals 0

    iput-object p1, p0, Lisc;->a:Lisi;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget-object p3, p0, Lisc;->a:Lisi;

    iget-object p3, p3, Lisi;->L:Landroid/widget/SeekBar;

    invoke-virtual {p3}, Landroid/widget/SeekBar;->getWidth()I

    move-result p3

    int-to-float p3, p3

    cmpl-float p1, p1, p3

    if-gtz p1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    const/4 p3, 0x0

    cmpg-float p1, p1, p3

    if-gez p1, :cond_1

    :cond_0
    iget-object p1, p0, Lisc;->a:Lisi;

    iget-boolean p3, p1, Lisi;->T:Z

    if-nez p3, :cond_1

    invoke-virtual {p1}, Lisi;->o()V

    iget-object p1, p0, Lisc;->a:Lisi;

    new-instance p3, Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    invoke-direct {p3, p4, p2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p3, p1, Lisi;->Q:Landroid/graphics/PointF;

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
