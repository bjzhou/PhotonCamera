.class public final Lgci;
.super Ljava/lang/Object;

# interfaces
.implements Ljvi;
.implements Lkad;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Lecd;

.field public final c:Lmrl;

.field public final d:Ljava/lang/Object;

.field public e:Lkll;

.field public f:Lkma;

.field public g:Lkou;

.field public h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/one/smartmetering/LazySmartMeteringProcessor"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lgci;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Lecd;Lmrl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgci;->b:Lecd;

    iput-object p2, p0, Lgci;->c:Lmrl;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgci;->d:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lgci;->e:Lkll;

    iput-object p1, p0, Lgci;->f:Lkma;

    iput-object p1, p0, Lgci;->g:Lkou;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lgci;->h:Z

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Lmqp;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgci;->d:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lgci;->f:Lkma;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lkma;->k()Lkpb;

    move-result-object v2

    invoke-static {v2}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

    move-result-object v2

    invoke-virtual {v1}, Lkma;->l()V

    invoke-virtual {v2}, Lmqp;->g()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lgci;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->c()Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const/16 v3, 0x9ec

    invoke-interface {v1, v3}, Lnah;->G(I)Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const-string v3, "Couldn\'t fork latest viewfinder image, already closed!"

    invoke-interface {v1, v3}, Lnah;->o(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    goto :goto_0

    :cond_1
    sget-object v1, Lgci;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->c()Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const/16 v2, 0x9eb

    invoke-interface {v1, v2}, Lnah;->G(I)Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const-string v2, "Latest viewfinder image not present!"

    invoke-interface {v1, v2}, Lnah;->o(Ljava/lang/String;)V

    sget-object v2, Lmpx;->a:Lmpx;

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    const-string v0, "LazySmartMeteringProcessor"

    return-object v0
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lgci;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lgci;->f:Lkma;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lkma;->l()V

    const/4 v1, 0x0

    iput-object v1, p0, Lgci;->f:Lkma;

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

.method public final close()V
    .locals 3

    iget-object v0, p0, Lgci;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lgci;->h:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lgci;->h:Z

    iget-object v1, p0, Lgci;->g:Lkou;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lgci;->e:Lkll;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lgci;->b:Lecd;

    invoke-interface {v2, v1}, Lecd;->a(Lkll;)I

    move-result v1

    iget-object v2, p0, Lgci;->b:Lecd;

    invoke-interface {v2, v1}, Lecd;->v(I)V

    :cond_1
    invoke-virtual {p0}, Lgci;->c()V

    const/4 v1, 0x0

    iput-object v1, p0, Lgci;->g:Lkou;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
