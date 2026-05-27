.class public final Lfoc;
.super Lchk;


# static fields
.field private static final p:Lnak;


# instance fields
.field public final b:Ljava/lang/Object;

.field public final c:Loiw;

.field public final d:Loiw;

.field public final e:Loiw;

.field public final f:Ljuh;

.field public final g:Lhtz;

.field public final h:Lczq;

.field public final i:Loiw;

.field public final j:Lcsa;

.field public final k:Litm;

.field public final l:Lmrl;

.field public m:Z

.field public n:Ljava/lang/Runnable;

.field public o:Lika;

.field private final q:Ljuf;

.field private r:Lchk;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/modules/video/OneVideoModule"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lfoc;->p:Lnak;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;Loiw;Lhtz;Ljuh;Lczq;Loiw;Lcxb;Lcsa;Ljwb;Litm;Lmrl;)V
    .locals 1

    invoke-direct {p0}, Lchk;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lfoc;->b:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lfoc;->m:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lfoc;->n:Ljava/lang/Runnable;

    iput-object p1, p0, Lfoc;->c:Loiw;

    iput-object p2, p0, Lfoc;->d:Loiw;

    iput-object p3, p0, Lfoc;->e:Loiw;

    iput-object p5, p0, Lfoc;->f:Ljuh;

    iput-object p4, p0, Lfoc;->g:Lhtz;

    iput-object p6, p0, Lfoc;->h:Lczq;

    iput-object p7, p0, Lfoc;->i:Loiw;

    iput-object p9, p0, Lfoc;->j:Lcsa;

    iput-object p11, p0, Lfoc;->k:Litm;

    iput-object p12, p0, Lfoc;->l:Lmrl;

    new-instance p4, Ljuf;

    invoke-direct {p4}, Ljuf;-><init>()V

    iput-object p4, p0, Lfoc;->q:Ljuf;

    invoke-interface {p10}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lika;

    iput-object p5, p0, Lfoc;->o:Lika;

    sget-object p5, Lika;->a:Lika;

    iget-object p5, p0, Lfoc;->o:Lika;

    invoke-virtual {p5}, Lika;->ordinal()I

    move-result p5

    sparse-switch p5, :sswitch_data_0

    sget-object p2, Lfoc;->p:Lnak;

    invoke-virtual {p2}, Lnaf;->c()Lnaz;

    move-result-object p2

    invoke-interface {p10}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object p3

    const-string p5, "Fall back to default mode since the initial mode is unsupported: %s"

    const/16 p7, 0x973

    invoke-static {p2, p5, p3, p7}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    invoke-interface {p1}, Loiw;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lchk;

    iput-object p1, p0, Lfoc;->r:Lchk;

    sget-object p1, Lika;->c:Lika;

    iput-object p1, p0, Lfoc;->o:Lika;

    goto :goto_0

    :sswitch_0
    invoke-interface {p3}, Loiw;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lchk;

    iput-object p1, p0, Lfoc;->r:Lchk;

    goto :goto_0

    :sswitch_1
    invoke-interface {p2}, Loiw;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lchk;

    iput-object p1, p0, Lfoc;->r:Lchk;

    goto :goto_0

    :sswitch_2
    invoke-interface {p1}, Loiw;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lchk;

    iput-object p1, p0, Lfoc;->r:Lchk;

    :goto_0
    new-instance p1, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    invoke-direct {p1, p0}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;-><init>(Lfoc;)V

    invoke-interface {p6, p1}, Lczq;->m(Landroidx/wear/ambient/AmbientModeSupport$AmbientController;)Lkad;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljuf;->d(Lkad;)V

    new-instance p1, Lcwy;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, Lcwy;-><init>(Lfoc;I)V

    invoke-virtual {p8, p1}, Lcxb;->b(Lcxa;)Lkad;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljuf;->d(Lkad;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x5 -> :sswitch_1
        0xd -> :sswitch_0
    .end sparse-switch
.end method

.method private final x()Z
    .locals 4

    iget-object v0, p0, Lfoc;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lfoc;->o:Lika;

    sget-object v2, Lika;->c:Lika;

    invoke-virtual {v1, v2}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lfoc;->r:Lchk;

    instance-of v1, v1, Lfoj;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    goto :goto_2

    :cond_1
    :goto_1
    iget-object v1, p0, Lfoc;->o:Lika;

    sget-object v3, Lika;->n:Lika;

    invoke-virtual {v1, v3}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lfoc;->r:Lchk;

    instance-of v1, v1, Lhoc;

    if-nez v1, :cond_0

    :cond_2
    iget-object v1, p0, Lfoc;->o:Lika;

    sget-object v3, Lika;->f:Lika;

    invoke-virtual {v1, v3}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lfoc;->r:Lchk;

    instance-of v1, v1, Lfoa;

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_2
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lfoc;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lfoc;->r:Lchk;

    invoke-virtual {v1}, Lchk;->c()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final ca(I)V
    .locals 2

    iget-object v0, p0, Lfoc;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lfoc;->r:Lchk;

    invoke-virtual {v1, p1}, Lchk;->ca(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final cb(Z)V
    .locals 2

    iget-object v0, p0, Lfoc;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lfoc;->r:Lchk;

    invoke-virtual {v1, p1}, Lchk;->cb(Z)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final cc()V
    .locals 2

    iget-object v0, p0, Lfoc;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lfoc;->x()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lfoc;->r:Lchk;

    invoke-virtual {v1}, Lchk;->cc()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final cd()V
    .locals 2

    iget-object v0, p0, Lfoc;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lfoc;->r:Lchk;

    invoke-virtual {v1}, Lchk;->j()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final close()V
    .locals 2

    iget-object v0, p0, Lfoc;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lfoc;->r:Lchk;

    invoke-virtual {v1}, Lchk;->close()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lfoc;->q:Ljuf;

    invoke-virtual {v0}, Ljuf;->close()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final d(Lbne;)V
    .locals 2

    iget-object v0, p0, Lfoc;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lfoc;->r:Lchk;

    invoke-virtual {v1, p1}, Lchk;->d(Lbne;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final e(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object v0, p0, Lfoc;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lfoc;->r:Lchk;

    invoke-virtual {v1, p1}, Lchk;->e(Landroid/content/res/Configuration;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final l()V
    .locals 2

    iget-object v0, p0, Lfoc;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lfoc;->x()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lfoc;->r:Lchk;

    invoke-virtual {v1}, Lchk;->m()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final n()V
    .locals 2

    iget-object v0, p0, Lfoc;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lfoc;->x()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lfoc;->r:Lchk;

    invoke-virtual {v1}, Lchk;->ce()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final p()V
    .locals 2

    iget-object v0, p0, Lfoc;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lfoc;->r:Lchk;

    invoke-virtual {v1}, Lchk;->q()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final s(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lfoc;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lfoc;->m:Z

    if-eqz v1, :cond_0

    iput-object p1, p0, Lfoc;->n:Ljava/lang/Runnable;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lfoc;->r:Lchk;

    invoke-virtual {v1, p1}, Lchk;->s(Ljava/lang/Runnable;)V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final t()Z
    .locals 2

    iget-object v0, p0, Lfoc;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lfoc;->r:Lchk;

    invoke-virtual {v1}, Lchk;->t()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final w(Lchk;Lika;)V
    .locals 1

    iget-object v0, p0, Lfoc;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lfoc;->cd()V

    invoke-virtual {p0}, Lfoc;->p()V

    iput-object p1, p0, Lfoc;->r:Lchk;

    iput-object p2, p0, Lfoc;->o:Lika;

    invoke-virtual {p0}, Lchk;->cc()V

    invoke-virtual {p0}, Lfoc;->n()V

    invoke-virtual {p0}, Lfoc;->l()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lfoc;->m:Z

    iget-object p1, p0, Lfoc;->n:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    iput-object p1, p0, Lfoc;->n:Ljava/lang/Runnable;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
