.class final Lhgv;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;


# instance fields
.field final synthetic a:Lhgw;


# direct methods
.method public constructor <init>(Lhgw;)V
    .locals 0

    iput-object p1, p0, Lhgv;->a:Lhgw;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    sget-object v1, Liko;->a:Liko;

    iget-object v1, p0, Lhgv;->a:Lhgw;

    iget-object v1, v1, Lhgw;->l:Liko;

    invoke-virtual {v1}, Liko;->ordinal()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float p1, p2, p1

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p2

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    sub-float/2addr p1, p2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p2

    goto :goto_0

    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    sub-float p1, p2, p1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p2

    :goto_0
    const/high16 p3, -0x3d600000    # -80.0f

    const/4 p4, 0x1

    const/high16 v1, 0x43480000    # 200.0f

    cmpg-float p3, p1, p3

    if-gez p3, :cond_2

    cmpl-float p3, p2, v1

    if-lez p3, :cond_2

    iget-object p1, p0, Lhgv;->a:Lhgw;

    iget-object p1, p1, Lhgw;->s:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->i()V

    :cond_1
    return p4

    :cond_2
    const/high16 p3, 0x42a00000    # 80.0f

    cmpl-float p1, p1, p3

    if-lez p1, :cond_4

    cmpl-float p1, p2, v1

    if-lez p1, :cond_4

    iget-object p1, p0, Lhgv;->a:Lhgw;

    iget-object p1, p1, Lhgw;->s:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->h()V

    :cond_3
    return p4

    :cond_4
    return v0

    :cond_5
    :goto_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
