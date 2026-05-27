.class public final Lhfr;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;


# instance fields
.field private final a:Lhfs;

.field private final b:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;


# direct methods
.method public constructor <init>(Lhfs;Landroidx/wear/ambient/AmbientModeSupport$AmbientController;[B[B[B[B)V
    .locals 0

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    iput-object p1, p0, Lhfr;->a:Lhfs;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lhfr;->b:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    return-void
.end method


# virtual methods
.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5

    iget-object v0, p0, Lhfr;->a:Lhfs;

    iget-object v0, v0, Lhfs;->h:Liko;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, -0x3d600000    # -80.0f

    const/4 v3, 0x1

    const/high16 v4, 0x43480000    # 200.0f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_1

    cmpl-float v2, v1, v4

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lhfr;->b:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    invoke-virtual {p1}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->i()V

    return v3

    :cond_1
    :goto_0
    const/high16 v2, 0x42a00000    # 80.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    cmpl-float v0, v1, v4

    if-lez v0, :cond_2

    iget-object p1, p0, Lhfr;->b:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    invoke-virtual {p1}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->h()V

    return v3

    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1
.end method
