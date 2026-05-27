.class public final Lcvd;
.super Ljava/lang/Object;

# interfaces
.implements Ljzd;


# instance fields
.field private final a:Ljzd;

.field private final b:Lhkn;


# direct methods
.method public constructor <init>(Ljzd;Lhkn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcvd;->a:Ljzd;

    iput-object p2, p0, Lcvd;->b:Lhkn;

    return-void
.end method


# virtual methods
.method public final declared-synchronized A(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcvd;->a:Ljzd;

    invoke-interface {v0, p1}, Ljzd;->A(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized B(II)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcvd;->a:Ljzd;

    invoke-interface {v0, p1, p2}, Ljzd;->B(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized C()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcvd;->a:Ljzd;

    invoke-interface {v0}, Ljzd;->C()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized D()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcvd;->a:Ljzd;

    invoke-interface {v0}, Ljzd;->D()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized E()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcvd;->a:Ljzd;

    invoke-interface {v0}, Ljzd;->E()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a()Landroid/media/MediaRecorder;
    .locals 1

    iget-object v0, p0, Lcvd;->a:Ljzd;

    check-cast v0, Ljza;

    iget-object v0, v0, Ljza;->a:Landroid/media/MediaRecorder;

    return-object v0
.end method

.method public final declared-synchronized b()Landroid/view/Surface;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcvd;->a:Ljzd;

    invoke-interface {v0}, Ljzd;->b()Landroid/view/Surface;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcvd;->a:Ljzd;

    invoke-interface {v0}, Ljzd;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcvd;->b:Lhkn;

    sget-object v1, Lhkm;->a:Lhkm;

    invoke-virtual {v0, v1}, Lhkh;->h(Ljava/lang/Enum;)V

    iget-object v0, p0, Lcvd;->a:Ljzd;

    invoke-interface {v0}, Ljzd;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcvd;->b:Lhkn;

    invoke-virtual {v0}, Lhkn;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lcvd;->b:Lhkn;

    invoke-virtual {v1}, Lhkn;->c()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcvd;->a:Ljzd;

    invoke-interface {v0}, Ljzd;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcvd;->a:Ljzd;

    invoke-interface {v0}, Ljzd;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized g()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcvd;->a:Ljzd;

    invoke-interface {v0}, Ljzd;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized h(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcvd;->a:Ljzd;

    invoke-interface {v0, p1}, Ljzd;->h(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized i(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcvd;->a:Ljzd;

    invoke-interface {v0, p1}, Ljzd;->i(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized j(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcvd;->a:Ljzd;

    invoke-interface {v0, p1}, Ljzd;->j(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized k(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcvd;->a:Ljzd;

    invoke-interface {v0, p1}, Ljzd;->k(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized l(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcvd;->a:Ljzd;

    invoke-interface {v0, p1}, Ljzd;->l(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized m(D)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcvd;->a:Ljzd;

    invoke-interface {v0, p1, p2}, Ljzd;->m(D)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized n(Landroid/view/Surface;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcvd;->a:Ljzd;

    invoke-interface {v0, p1}, Ljzd;->n(Landroid/view/Surface;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized o(FF)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcvd;->a:Ljzd;

    invoke-interface {v0, p1, p2}, Ljzd;->o(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized p(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcvd;->a:Ljzd;

    invoke-interface {v0, p1}, Ljzd;->p(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized q(J)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcvd;->a:Ljzd;

    invoke-interface {v0, p1, p2}, Ljzd;->q(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final r(Ljava/io/FileDescriptor;)V
    .locals 1

    iget-object v0, p0, Lcvd;->a:Ljzd;

    invoke-interface {v0, p1}, Ljzd;->r(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public final declared-synchronized s(Landroid/media/MediaRecorder$OnErrorListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcvd;->a:Ljzd;

    invoke-interface {v0, p1}, Ljzd;->s(Landroid/media/MediaRecorder$OnErrorListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized t(Landroid/media/MediaRecorder$OnInfoListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcvd;->a:Ljzd;

    invoke-interface {v0, p1}, Ljzd;->t(Landroid/media/MediaRecorder$OnInfoListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized u(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcvd;->a:Ljzd;

    invoke-interface {v0, p1}, Ljzd;->u(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized v(Ljava/io/FileDescriptor;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcvd;->a:Ljzd;

    invoke-interface {v0, p1}, Ljzd;->v(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized w(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcvd;->a:Ljzd;

    invoke-interface {v0, p1}, Ljzd;->w(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized x(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcvd;->a:Ljzd;

    invoke-interface {v0, p1}, Ljzd;->x(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized y(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcvd;->a:Ljzd;

    invoke-interface {v0, p1}, Ljzd;->y(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized z(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcvd;->a:Ljzd;

    invoke-interface {v0, p1}, Ljzd;->z(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
