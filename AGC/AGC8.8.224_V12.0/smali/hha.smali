.class public final Lhha;
.super Ljava/lang/Object;

# interfaces
.implements Lhgy;


# instance fields
.field public final a:Lhhc;

.field public final b:Lhhc;

.field public c:Z

.field private final d:Lkbc;

.field private final e:Lgzn;

.field private final f:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lhhc;Lhhc;Lkbc;Ljuh;Lezx;Lgzn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhha;->a:Lhhc;

    iput-object p2, p0, Lhha;->b:Lhhc;

    iput-object p3, p0, Lhha;->d:Lkbc;

    iput-object p6, p0, Lhha;->e:Lgzn;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {p1}, Ljvd;->o(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lhha;->f:Landroid/os/Handler;

    new-instance p1, Lhgz;

    invoke-direct {p1, p0}, Lhgz;-><init>(Lhha;)V

    invoke-static {p4, p5, p1}, Lfcr;->e(Ljuh;Lfak;Lfaz;)V

    return-void
.end method

.method private final i(IFI)V
    .locals 2

    iget-boolean v0, p0, Lhha;->c:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    iget-object p3, p0, Lhha;->b:Lhhc;

    invoke-interface {p3, p1, p2}, Lhhc;->f(IF)V

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lhha;->a:Lhhc;

    invoke-interface {p3, p1, p2}, Lhhc;->f(IF)V

    :cond_1
    :goto_0
    const p2, 0x7f130008

    if-eq p1, p2, :cond_3

    const p2, 0x7f130030

    if-eq p1, p2, :cond_3

    const p2, 0x7f130025

    if-ne p1, p2, :cond_2

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    :goto_1
    iget-object p1, p0, Lhha;->f:Landroid/os/Handler;

    new-instance p2, Lhfi;

    const/4 p3, 0x7

    invoke-direct {p2, p0, p3}, Lhfi;-><init>(Lhha;I)V

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lhha;->a:Lhhc;

    invoke-interface {v0}, Lhhc;->b()V

    iget-object v0, p0, Lhha;->b:Lhhc;

    invoke-interface {v0}, Lhhc;->b()V

    return-void
.end method

.method public final b(I)V
    .locals 2

    const v0, 0x3f19999a    # 0.6f

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lhha;->i(IFI)V

    return-void
.end method

.method public final c(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lhha;->f(II)V

    return-void
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lhha;->d:Lkbc;

    const-string v1, "Sounds#shutter"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lhha;->a:Lhhc;

    const v1, 0x7f130008

    invoke-interface {v0, v1}, Lhhc;->a(I)Lnou;

    iget-object v0, p0, Lhha;->d:Lkbc;

    const-string v1, "Sounds#video_start"

    invoke-interface {v0, v1}, Lkbc;->g(Ljava/lang/String;)V

    iget-object v0, p0, Lhha;->a:Lhhc;

    const v1, 0x7f13002f

    invoke-interface {v0, v1}, Lhhc;->a(I)Lnou;

    iget-object v0, p0, Lhha;->d:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    return-void
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lhha;->a:Lhhc;

    invoke-interface {v0}, Lhhc;->c()V

    iget-object v0, p0, Lhha;->b:Lhhc;

    invoke-interface {v0}, Lhhc;->c()V

    return-void
.end method

.method public final f(II)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v0, p2}, Lhha;->i(IFI)V

    return-void
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Lhha;->a:Lhhc;

    invoke-interface {v0}, Lhhc;->e()V

    iget-object v0, p0, Lhha;->b:Lhhc;

    invoke-interface {v0}, Lhhc;->e()V

    return-void
.end method

.method public final h()V
    .locals 3

    iget-object v0, p0, Lhha;->e:Lgzn;

    sget-object v1, Lgzd;->p:Lgzr;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lgzn;->e(Lgzb;Ljava/lang/Object;)V

    return-void
.end method
