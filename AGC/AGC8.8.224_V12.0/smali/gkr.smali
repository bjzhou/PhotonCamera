.class public final Lgkr;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/UriMatcher;Ldyr;Ldyr;Ldyr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgkr;->b:Ljava/lang/Object;

    iput-object p2, p0, Lgkr;->c:Ljava/lang/Object;

    iput-object p3, p0, Lgkr;->d:Ljava/lang/Object;

    iput-object p4, p0, Lgkr;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lbkc;Lfbk;Ljava/util/concurrent/Executor;Ldhi;[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgkr;->a:Ljava/lang/Object;

    iput-object p2, p0, Lgkr;->c:Ljava/lang/Object;

    iput-object p3, p0, Lgkr;->d:Ljava/lang/Object;

    iput-object p4, p0, Lgkr;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lbkc;Ljvs;[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p3, p0, Lgkr;->a:Ljava/lang/Object;

    new-instance p3, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object p4, Lika;->b:Lika;

    invoke-direct {p3, p4}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p3, p0, Lgkr;->b:Ljava/lang/Object;

    iput-object p1, p0, Lgkr;->c:Ljava/lang/Object;

    iput-object p2, p0, Lgkr;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;Ldwa;Ldwc;Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgkr;->b:Ljava/lang/Object;

    iput-object p2, p0, Lgkr;->d:Ljava/lang/Object;

    iput-object p3, p0, Lgkr;->a:Ljava/lang/Object;

    iput-object p4, p0, Lgkr;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ldhi;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lgkr;->d:Ljava/lang/Object;

    sget-object p2, Ldhx;->j:Ldhj;

    invoke-interface {p1, p2}, Ldhi;->j(Ldhj;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lgkr;->b:Ljava/lang/Object;

    sget-object p2, Ldhx;->k:Ldhj;

    invoke-interface {p1, p2}, Ldhi;->j(Ldhj;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lgkr;->a:Ljava/lang/Object;

    sget-object p2, Ldhx;->l:Ldhj;

    invoke-interface {p1, p2}, Ldhi;->j(Ldhj;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lgkr;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lfhm;Lfkk;Ljvs;Lfuz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgkr;->a:Ljava/lang/Object;

    iput-object p2, p0, Lgkr;->b:Ljava/lang/Object;

    iput-object p3, p0, Lgkr;->d:Ljava/lang/Object;

    iput-object p4, p0, Lgkr;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lfte;Lgxl;Lfzz;Lgaa;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgkr;->d:Ljava/lang/Object;

    iput-object p2, p0, Lgkr;->c:Ljava/lang/Object;

    iput-object p3, p0, Lgkr;->b:Ljava/lang/Object;

    iput-object p4, p0, Lgkr;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lftg;Lflg;Lfuz;Ljuh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgkr;->b:Ljava/lang/Object;

    iput-object p2, p0, Lgkr;->a:Ljava/lang/Object;

    iput-object p3, p0, Lgkr;->c:Ljava/lang/Object;

    iput-object p4, p0, Lgkr;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lfuj;Levo;Lkbc;Lfme;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgkr;->a:Ljava/lang/Object;

    iput-object p2, p0, Lgkr;->d:Ljava/lang/Object;

    iput-object p3, p0, Lgkr;->c:Ljava/lang/Object;

    iput-object p4, p0, Lgkr;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lhip;Lgxb;Lgkr;Lnou;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgkr;->b:Ljava/lang/Object;

    iput-object p2, p0, Lgkr;->d:Ljava/lang/Object;

    iput-object p3, p0, Lgkr;->a:Ljava/lang/Object;

    iput-object p4, p0, Lgkr;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkap;Ljava/util/Set;Ljuh;Ldin;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ImageSaverValidator"

    invoke-interface {p1, v0}, Lkap;->a(Ljava/lang/String;)Lkaq;

    move-result-object p1

    iput-object p1, p0, Lgkr;->b:Ljava/lang/Object;

    iput-object p2, p0, Lgkr;->c:Ljava/lang/Object;

    iput-object p3, p0, Lgkr;->a:Ljava/lang/Object;

    iput-object p4, p0, Lgkr;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lken;Lkfj;Lkgq;Lfyz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgkr;->b:Ljava/lang/Object;

    iput-object p2, p0, Lgkr;->a:Ljava/lang/Object;

    iput-object p3, p0, Lgkr;->c:Ljava/lang/Object;

    iput-object p4, p0, Lgkr;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lklx;Landroid/content/Intent;Ldna;Ldhi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgkr;->c:Ljava/lang/Object;

    iput-object p2, p0, Lgkr;->a:Ljava/lang/Object;

    iput-object p3, p0, Lgkr;->d:Ljava/lang/Object;

    iput-object p4, p0, Lgkr;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lklx;Lhal;Ligz;Lkbc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgkr;->c:Ljava/lang/Object;

    iput-object p2, p0, Lgkr;->a:Ljava/lang/Object;

    iput-object p3, p0, Lgkr;->b:Ljava/lang/Object;

    iput-object p4, p0, Lgkr;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;Loiw;Lika;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgkr;->b:Ljava/lang/Object;

    iput-object p2, p0, Lgkr;->a:Ljava/lang/Object;

    iput-object p3, p0, Lgkr;->c:Ljava/lang/Object;

    iput-object p4, p0, Lgkr;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lgkr;->a:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lgkr;->b:Ljava/lang/Object;

    iput-object p3, p0, Lgkr;->c:Ljava/lang/Object;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p4, p0, Lgkr;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lgkr;->a:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lgkr;->c:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p0, Lgkr;->d:Ljava/lang/Object;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p4, p0, Lgkr;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lgkr;->b:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lgkr;->a:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p0, Lgkr;->d:Ljava/lang/Object;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p4, p0, Lgkr;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lfux;)V
    .locals 6

    iget-object v0, p0, Lgkr;->b:Ljava/lang/Object;

    invoke-interface {v0}, Lhip;->run()V

    iget-object v0, p0, Lgkr;->d:Ljava/lang/Object;

    iget-object v1, p0, Lgkr;->a:Ljava/lang/Object;

    check-cast v1, Lgkr;

    iget-object v2, v1, Lgkr;->a:Ljava/lang/Object;

    check-cast v2, Landroid/content/Intent;

    invoke-static {v2}, Lcdg;->j(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lklv;->a:Lklv;

    goto :goto_0

    :cond_0
    sget-object v2, Lklv;->b:Lklv;

    :goto_0
    iget-object v3, v1, Lgkr;->d:Ljava/lang/Object;

    iget-object v4, v1, Lgkr;->c:Ljava/lang/Object;

    iget-object v5, v1, Lgkr;->b:Ljava/lang/Object;

    check-cast v3, Ldna;

    invoke-virtual {v3, v4, v5, v2}, Ldna;->b(Lklj;Ldhi;Lklv;)Lkll;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v1, v1, Lgkr;->c:Ljava/lang/Object;

    check-cast v1, Lklx;

    invoke-virtual {v1}, Lklx;->b()Lkll;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    iget-object v1, p1, Lfux;->l:Lika;

    check-cast v0, Lgxb;

    invoke-virtual {v0, v2, v1}, Lgxb;->h(Lkll;Lika;)Lflg;

    move-result-object v0

    iget-object v1, p0, Lgkr;->c:Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lfux;->b(Lflg;Lnou;)Lnou;

    return-void
.end method

.method public final b(Lfmd;)V
    .locals 10

    iget-object v0, p0, Lgkr;->d:Ljava/lang/Object;

    new-instance v9, Levy;

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v8}, Levy;-><init>(Lgkr;Lfmd;I[B[B[B[B)V

    check-cast v0, Ljuh;

    invoke-virtual {v0, v9}, Ljuh;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c()Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 8

    new-instance v7, Lafx;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lafx;-><init>(Lgkr;I[B[B[B[B)V

    return-object v7
.end method

.method public final d()Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 8

    new-instance v7, Lafx;

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lafx;-><init>(Lgkr;I[B[B[B[B)V

    return-object v7
.end method

.method public final e()Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 8

    new-instance v7, Lafx;

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lafx;-><init>(Lgkr;I[B[B[B[B)V

    return-object v7
.end method

.method public final f()Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 8

    new-instance v7, Lafx;

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lafx;-><init>(Lgkr;I[B[B[B[B)V

    return-object v7
.end method

.method public final g()F
    .locals 1

    iget-object v0, p0, Lgkr;->d:Ljava/lang/Object;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method
