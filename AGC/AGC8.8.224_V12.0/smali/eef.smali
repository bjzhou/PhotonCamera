.class public final Leef;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public a:Z

.field private final b:Lecy;

.field private final c:Z

.field private final d:Ljvs;

.field private final e:Ldhi;

.field private final f:Lebi;

.field private final g:Ljvs;


# direct methods
.method public constructor <init>(Lhnb;Lhna;Ljvs;Lecy;Ldhi;Lebi;Ljvs;Ljuf;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Leef;->a:Z

    iput-object p4, p0, Leef;->b:Lecy;

    iput-object p3, p0, Leef;->d:Ljvs;

    iput-object p5, p0, Leef;->e:Ldhi;

    iput-object p6, p0, Leef;->f:Lebi;

    iput-object p7, p0, Leef;->g:Ljvs;

    sget-object p3, Ldhq;->ac:Ldhj;

    invoke-interface {p5, p3}, Ldhi;->l(Ldhj;)Z

    move-result p3

    const/4 p6, 0x1

    if-eqz p3, :cond_1

    sget-object p3, Lecy;->a:Lecy;

    if-eq p4, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p3, Ldhq;->ad:Ldhj;

    invoke-interface {p5, p3}, Ldhi;->l(Ldhj;)Z

    move-result p3

    if-eqz p3, :cond_2

    sget-object p3, Lecy;->b:Lecy;

    if-ne p4, p3, :cond_2

    const/4 p3, 0x1

    goto :goto_1

    :cond_2
    const/4 p3, 0x0

    :goto_1
    iput-boolean p3, p0, Leef;->c:Z

    invoke-static {}, Lhne;->a()Lhnd;

    move-result-object p3

    sget-object p4, Lnnv;->a:Lnnv;

    invoke-virtual {p3, p4}, Lhnd;->c(Ljava/util/concurrent/Executor;)V

    const-string p4, "TemporalBinning"

    invoke-virtual {p3, p4}, Lhnd;->d(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Lhnd;->g(Lhna;)V

    new-instance p2, Leee;

    invoke-direct {p2, p0, v0}, Leee;-><init>(Leef;Z)V

    invoke-virtual {p3, p2}, Lhnd;->f(Ljava/lang/Runnable;)V

    new-instance p2, Leee;

    invoke-direct {p2, p0, p6}, Leee;-><init>(Leef;Z)V

    invoke-virtual {p3, p2}, Lhnd;->e(Ljava/lang/Runnable;)V

    invoke-virtual {p3}, Lhnd;->a()Lhne;

    move-result-object p2

    invoke-interface {p1, p2}, Lhnb;->f(Lhmz;)Lkad;

    move-result-object p1

    invoke-virtual {p8, p1}, Ljuf;->d(Lkad;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Leef;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    monitor-exit p0

    goto :goto_1

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Leef;->f:Lebi;

    iget-object v2, p0, Leef;->g:Ljvs;

    invoke-interface {v2}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcks;

    invoke-virtual {v0, v2}, Lebi;->e(Lcks;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Leef;->e:Ldhi;

    sget-object v3, Ldhq;->y:Ldhj;

    invoke-interface {v0, v3}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-boolean v3, p0, Leef;->c:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Leef;->d:Ljvs;

    invoke-interface {v3}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v3, p0, Leef;->b:Lecy;

    sget-object v4, Lecy;->a:Lecy;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Leef;->b:Lecy;

    sget-object v4, Lecy;->b:Lecy;

    if-eq v3, v4, :cond_3

    sget-object v4, Lecy;->c:Lecy;

    if-ne v3, v4, :cond_4

    if-eqz v0, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_1
    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
