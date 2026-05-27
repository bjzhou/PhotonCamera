.class public final Libq;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public a:Lika;

.field public b:J

.field public final synthetic c:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

.field public d:I

.field private e:Lait;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;)V
    .locals 2

    iput-object p1, p0, Libq;->c:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    sget-object p1, Lika;->a:Lika;

    iput-object p1, p0, Libq;->a:Lika;

    const/4 p1, 0x1

    iput p1, p0, Libq;->d:I

    new-instance p1, Lait;

    new-instance v0, Lgtb;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgtb;-><init>(F)V

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lait;-><init>(Lgtb;[B)V

    iput-object p1, p0, Libq;->e:Lait;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 3

    sget-object v0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->a:Lnak;

    iget-object v0, p0, Libq;->c:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    iget-object v0, v0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->b:Libr;

    if-eqz v0, :cond_1

    check-cast v0, Libv;

    iget-object v1, v0, Libv;->d:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    iget-object v1, v1, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->k:Lika;

    sget-object v2, Lika;->p:Lika;

    if-ne v1, v2, :cond_0

    iget-object v0, v0, Libv;->e:Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;->d(Z)V

    return-void

    :cond_0
    iget-object v0, v0, Libv;->f:Liff;

    xor-int/lit8 p1, p1, 0x1

    invoke-interface {v0, p1}, Liff;->G(Z)V

    :cond_1
    return-void
.end method

.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Libq;->c:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    iget-object v0, v0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->k:Lika;

    iput-object v0, p0, Libq;->a:Lika;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Libq;->b:J

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Libq;->a(Z)V

    const/4 p1, 0x0

    return p1
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5

    sget-object p1, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->a:Lnak;

    iget-object p1, p0, Libq;->c:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    iget-object p1, p1, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->l:Lika;

    sget-object p2, Lika;->a:Lika;

    invoke-virtual {p1, p2}, Lika;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Libq;->c:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    iget-object p2, p1, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->l:Lika;

    iput-object p2, p1, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->k:Lika;

    sget-object p2, Lika;->a:Lika;

    iput-object p2, p1, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->l:Lika;

    :cond_0
    iget-object p1, p0, Libq;->e:Lait;

    invoke-static {}, Laif;->a()Laif;

    move-result-object p2

    invoke-virtual {p2}, Laif;->b()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-boolean p2, p1, Lais;->m:Z

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lais;->j()V

    :cond_1
    iget-object p1, p0, Libq;->c:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->getScrollX()I

    move-result p1

    int-to-float p1, p1

    neg-float p2, p3

    iget-object p3, p0, Libq;->c:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    iget-object p3, p3, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->j:Libw;

    invoke-interface {p3}, Libw;->c()V

    iget-object p3, p0, Libq;->c:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    iget-object p3, p3, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->j:Libw;

    invoke-interface {p3}, Libw;->b()V

    iget-object p3, p0, Libq;->c:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    iget-object p3, p3, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->j:Libw;

    invoke-interface {p3}, Libw;->a()V

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p3

    const p4, 0x466a6000    # 15000.0f

    const/4 v0, 0x1

    cmpl-float p3, p3, p4

    if-lez p3, :cond_2

    const p3, 0x3dcccccd    # 0.1f

    goto :goto_0

    :cond_2
    const p3, 0x44a28000    # 1300.0f

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p4

    const-string v1, "absMaxVelocity %s must be non-negative"

    invoke-static {v0, v1, p4}, Lmoz;->j(ZLjava/lang/String;Ljava/lang/Object;)V

    const p4, -0x3b5d8000    # -1300.0f

    invoke-static {p2, p4, p3}, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->a(FFF)F

    move-result p2

    const/high16 p3, 0x41700000    # 15.0f

    :goto_0
    iget-object p4, p0, Libq;->c:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    iget-object p4, p4, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->c:Libo;

    invoke-virtual {p4}, Libo;->getWidth()I

    move-result p4

    int-to-float p4, p4

    iget-object v1, p0, Libq;->c:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float v2, p4, v1

    const/4 v3, 0x0

    cmpg-float v4, v2, v3

    if-gez v4, :cond_3

    sget-object v2, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->a:Lnak;

    invoke-virtual {v2}, Lnaf;->c()Lnaz;

    move-result-object v2

    check-cast v2, Lnah;

    const/16 v4, 0x101c

    invoke-interface {v2, v4}, Lnah;->G(I)Lnaz;

    move-result-object v2

    check-cast v2, Lnah;

    invoke-interface {v2, p4, v1}, Lnah;->I(FF)V

    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    :goto_1
    new-instance p4, Lait;

    new-instance v1, Lgtb;

    invoke-static {p1, v3, v2}, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->a(FFF)F

    move-result p1

    invoke-direct {v1, p1}, Lgtb;-><init>(F)V

    const/4 p1, 0x0

    invoke-direct {p4, v1, p1}, Lait;-><init>(Lgtb;[B)V

    invoke-virtual {p4}, Lait;->k()V

    iput v2, p4, Lais;->n:F

    iget-object p1, p4, Lait;->q:Lfow;

    const v1, -0x3f79999a    # -4.2f

    mul-float p3, p3, v1

    iput p3, p1, Lfow;->a:F

    iput p2, p4, Lais;->h:F

    new-instance p1, Lavj;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, Lavj;-><init>(Libq;I)V

    invoke-virtual {p4, p1}, Lais;->g(Laiq;)V

    new-instance p1, Libp;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Libp;-><init>(Libq;I)V

    invoke-virtual {p4, p1}, Lais;->f(Laip;)V

    iput-object p4, p0, Libq;->e:Lait;

    invoke-virtual {p4}, Lais;->d()V

    return v0

    :cond_4
    new-instance p1, Landroid/util/AndroidRuntimeException;

    const-string p2, "Animations may only be canceled from the same thread as the animation handler"

    invoke-direct {p1, p2}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    sget-object p1, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->a:Lnak;

    iget-object p1, p0, Libq;->c:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->b()Lika;

    move-result-object p1

    iget-object p3, p0, Libq;->c:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    iget-object p4, p3, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->l:Lika;

    sget-object v0, Lika;->a:Lika;

    invoke-virtual {p4, v0}, Lika;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_2

    iget-object p4, p3, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->l:Lika;

    invoke-virtual {p4, p1}, Lika;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    goto :goto_1

    :cond_0
    iput-object p1, p3, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->l:Lika;

    invoke-static {p3}, Lnom;->h(Landroid/view/View;)V

    iget-object p3, p3, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->c:Libo;

    invoke-virtual {p3, p1}, Libo;->d(Lika;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide p1

    iget-wide p3, p0, Libq;->b:J

    sub-long/2addr p1, p3

    const-wide/16 p3, 0x1f4

    cmp-long v0, p1, p3

    if-ltz v0, :cond_1

    const/4 p1, 0x6

    goto :goto_0

    :cond_1
    const/4 p1, 0x5

    :goto_0
    iput p1, p0, Libq;->d:I

    goto :goto_2

    :cond_2
    :goto_1
    iput-object p1, p3, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->l:Lika;

    :goto_2
    const/4 p1, 0x0

    return p1
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    sget-object p1, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->a:Lnak;

    iget-object p1, p0, Libq;->c:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    iget-boolean v0, p1, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->f:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object p1, p1, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->l:Lika;

    sget-object p2, Lika;->a:Lika;

    invoke-virtual {p1, p2}, Lika;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Libq;->c:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    iget-object p2, p1, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->c:Libo;

    iget-object p1, p1, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->k:Lika;

    invoke-virtual {p2, p1, v1}, Libo;->b(Lika;Z)V

    iget-object p1, p0, Libq;->c:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    sget-object p2, Lika;->a:Lika;

    iput-object p2, p1, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->l:Lika;

    :cond_0
    return v2

    :cond_1
    iget-object p1, p1, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->d:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eq p1, v2, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_3

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_0
    iget-object p1, p0, Libq;->c:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->b()Lika;

    move-result-object p1

    iget-object p2, p0, Libq;->c:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    invoke-virtual {p2}, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->getScrollX()I

    iget-object p2, p0, Libq;->c:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    invoke-virtual {p2}, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->getScrollY()I

    iget-object p2, p0, Libq;->c:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    iget-object p2, p2, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->h:Lfbz;

    if-eqz p2, :cond_5

    iget-object p2, p0, Libq;->a:Lika;

    sget-object v0, Lika;->a:Lika;

    if-eq p2, v0, :cond_5

    iget-object p2, p0, Libq;->c:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    iget-object p2, p2, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->h:Lfbz;

    iget-object v0, p0, Libq;->a:Lika;

    invoke-virtual {v0}, Lika;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lika;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    invoke-interface {p2, v4, v0, v3}, Lfbz;->ac(ILjava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object p2, p0, Libq;->c:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    invoke-virtual {p2, p1}, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->h(Lika;)V

    sget-object p1, Lika;->a:Lika;

    iput-object p1, p0, Libq;->a:Lika;

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Libq;->b:J

    iget-object p1, p0, Libq;->c:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    sget-object p2, Lika;->a:Lika;

    iput-object p2, p1, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->l:Lika;

    invoke-virtual {p0, v1}, Libq;->a(Z)V

    return v2
.end method
