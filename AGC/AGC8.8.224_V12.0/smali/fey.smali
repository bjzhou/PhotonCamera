.class public final Lfey;
.super Ljava/lang/Object;

# interfaces
.implements Lfez;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Ljava/util/List;

.field public final c:Ljava/util/List;

.field public final d:Ljava/lang/Object;

.field public volatile e:I

.field private final f:Ljwb;

.field private final g:Ldhi;

.field private final h:Lhmb;

.field private final i:Lebl;

.field private final j:Lgzm;

.field private volatile k:Lffs;

.field private final l:Lmrd;

.field private final m:Ljvq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/microvideo/MicrovideoAppController"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lfey;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Ljwb;Ljvq;Lhmb;Lmrd;Ldhi;Lebl;Lgzm;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p8, Ljava/util/ArrayList;

    invoke-direct {p8}, Ljava/util/ArrayList;-><init>()V

    iput-object p8, p0, Lfey;->b:Ljava/util/List;

    new-instance p8, Ljava/util/ArrayList;

    invoke-direct {p8}, Ljava/util/ArrayList;-><init>()V

    iput-object p8, p0, Lfey;->c:Ljava/util/List;

    new-instance p8, Ljava/lang/Object;

    invoke-direct {p8}, Ljava/lang/Object;-><init>()V

    iput-object p8, p0, Lfey;->d:Ljava/lang/Object;

    const/4 p8, 0x1

    iput p8, p0, Lfey;->e:I

    iput-object p1, p0, Lfey;->f:Ljwb;

    iput-object p2, p0, Lfey;->m:Ljvq;

    iput-object p3, p0, Lfey;->h:Lhmb;

    iput-object p4, p0, Lfey;->l:Lmrd;

    iput-object p5, p0, Lfey;->g:Ldhi;

    iput-object p6, p0, Lfey;->i:Lebl;

    iput-object p7, p0, Lfey;->j:Lgzm;

    return-void
.end method


# virtual methods
.method public final a()Lnjo;
    .locals 5

    invoke-virtual {p0}, Lfey;->k()Lgkr;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v1, Lnjo;->n:Lnjo;

    invoke-virtual {v1}, Lnws;->O()Lnwn;

    move-result-object v1

    iget-object v2, p0, Lfey;->j:Lgzm;

    sget-object v3, Lgzd;->ax:Lgzs;

    invoke-interface {v2, v3}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljfc;->j(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x3

    packed-switch v2, :pswitch_data_0

    const/4 v2, 0x4

    goto :goto_0

    :pswitch_0
    const/4 v2, 0x3

    goto :goto_0

    :pswitch_1
    const/4 v2, 0x2

    :goto_0
    iget-object v4, v1, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_1
    iget-object v4, v1, Lnwn;->b:Lnws;

    check-cast v4, Lnjo;

    add-int/lit8 v2, v2, -0x1

    iput v2, v4, Lnjo;->h:I

    iget v2, v4, Lnjo;->a:I

    or-int/lit8 v2, v2, 0x40

    iput v2, v4, Lnjo;->a:I

    iget-object v0, v0, Lgkr;->b:Ljava/lang/Object;

    check-cast v0, Lfkk;

    invoke-virtual {v0}, Lfkk;->c()Z

    move-result v0

    const/4 v2, 0x1

    if-eq v2, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x5

    :goto_1
    iget-object v0, v1, Lnwn;->b:Lnws;

    invoke-virtual {v0}, Lnws;->ac()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_3
    iget-object v0, v1, Lnwn;->b:Lnws;

    check-cast v0, Lnjo;

    add-int/lit8 v3, v3, -0x1

    iput v3, v0, Lnjo;->l:I

    iget v2, v0, Lnjo;->a:I

    or-int/lit16 v2, v2, 0x200

    iput v2, v0, Lnjo;->a:I

    invoke-virtual {v1}, Lnwn;->i()Lnws;

    move-result-object v0

    check-cast v0, Lnjo;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b()V
    .locals 3

    new-instance v0, Lfcz;

    const/16 v1, 0xc

    invoke-direct {v0, p0, v1}, Lfcz;-><init>(Lfey;I)V

    iget-object v1, p0, Lfey;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lfey;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lfey;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final d()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    iget-object v0, p0, Lfey;->g:Ldhi;

    sget-object v1, Ldhv;->a:Ldhk;

    invoke-interface {v0}, Ldhi;->e()V

    iget-object v0, p0, Lfey;->m:Ljvq;

    invoke-virtual {v0}, Ljvq;->e()V

    return-void
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Lfey;->g:Ldhi;

    sget-object v1, Ldhv;->a:Ldhk;

    invoke-interface {v0}, Ldhi;->e()V

    return-void
.end method

.method public final f(Z)V
    .locals 1

    invoke-virtual {p0}, Lfey;->k()Lgkr;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lgkr;->a:Ljava/lang/Object;

    check-cast v0, Lfhm;

    invoke-virtual {v0, p1}, Lfhm;->a(Z)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lfey;->m:Ljvq;

    invoke-virtual {p1}, Ljvq;->e()V

    :cond_1
    return-void
.end method

.method public final declared-synchronized g()Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lfey;->k:Lffs;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lfey;->k()Lgkr;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, v2, Lgkr;->d:Ljava/lang/Object;

    invoke-interface {v2}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfwl;

    sget-object v3, Lfwl;->b:Lfwl;

    invoke-virtual {v2, v3}, Lfwl;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lfwl;->d:Lfwl;

    invoke-virtual {v2, v3}, Lfwl;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lfwl;->c:Lfwl;

    invoke-virtual {v2, v3}, Lfwl;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    monitor-exit p0

    return v1

    :cond_2
    :goto_0
    :try_start_2
    iget-object v2, p0, Lfey;->f:Ljwb;

    invoke-interface {v2}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lfey;->h:Lhmb;

    invoke-virtual {v2}, Lhmb;->a()Ljvs;

    move-result-object v2

    invoke-interface {v2}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lfey;->l:Lmrd;

    invoke-virtual {v2}, Lmrd;->g()Ljvs;

    move-result-object v2

    invoke-interface {v2}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lfey;->i:Lebl;

    iget-object v2, v2, Lebl;->b:Ljvs;

    invoke-interface {v2}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lffs;->d()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final h(I)V
    .locals 0

    iput p1, p0, Lfey;->e:I

    return-void
.end method

.method public final declared-synchronized i(Lffs;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lfey;->k:Lffs;

    if-nez v0, :cond_0

    iput-object p1, p0, Lfey;->k:Lffs;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-object p1, Lfey;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    const-string v0, "Cannot attach UI controller when already attached!"

    const/16 v1, 0x875

    invoke-static {p1, v0, v1}, Ld;->g(Lnaz;Ljava/lang/String;C)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final declared-synchronized j(Lffs;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lfey;->k:Lffs;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lfey;->k:Lffs;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-object p1, Lfey;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    const-string v0, "Cannot detach UI controller. Values mismatch."

    const/16 v1, 0x877

    invoke-static {p1, v0, v1}, Ld;->g(Lnaz;Ljava/lang/String;C)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final k()Lgkr;
    .locals 2

    iget-object v0, p0, Lfey;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lfey;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v1, p0, Lfey;->b:Ljava/util/List;

    invoke-static {v1}, Llyh;->S(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgkr;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
