.class public final Lhmy;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/PowerManager$OnThermalStatusChangedListener;
.implements Lhnb;
.implements Lfaz;
.implements Lfad;
.implements Lfac;
.implements Lfaa;
.implements Lfab;


# static fields
.field private static final c:Lnak;


# instance fields
.field public final a:Ljava/util/List;

.field private final d:Lfbz;

.field private final e:Lhmx;

.field private f:Z

.field private g:Lhna;

.field private h:Lhna;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/temperature/SelfUpdatingTemperatureBroadcaster"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lhmy;->c:Lnak;

    return-void
.end method

.method public constructor <init>(Lfbz;Lhmx;Lezy;Ljuh;Ldhi;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lhmy;->a:Ljava/util/List;

    sget-object v0, Lhna;->i:Lhna;

    iput-object v0, p0, Lhmy;->g:Lhna;

    sget-object v0, Lhna;->i:Lhna;

    iput-object v0, p0, Lhmy;->h:Lhna;

    iput-object p1, p0, Lhmy;->d:Lfbz;

    iput-object p2, p0, Lhmy;->e:Lhmx;

    sget-object p1, Ldho;->a:Ldhk;

    invoke-interface {p5}, Ldhi;->g()V

    monitor-enter p0

    :try_start_0
    iget-boolean p1, p0, Lhmy;->f:Z

    if-nez p1, :cond_0

    invoke-virtual {p2, p0}, Lhmx;->b(Landroid/os/PowerManager$OnThermalStatusChangedListener;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lhmy;->f:Z

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p4, p3, p0}, Lfcr;->d(Ljuh;Lezy;Lfaz;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lhmy;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lhmy;->e:Lhmx;

    invoke-virtual {v0, p0}, Lhmx;->b(Landroid/os/PowerManager$OnThermalStatusChangedListener;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lhmy;->c:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "Was already registered as ThermalStatusListener on AppStart"

    const/16 v2, 0xea8

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhmy;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()V
    .locals 2

    sget-object v0, Lhmy;->b:Ljava/util/Map;

    iget-object v1, p0, Lhmy;->e:Lhmx;

    invoke-virtual {v1}, Lhmx;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhna;

    iput-object v0, p0, Lhmy;->h:Lhna;

    return-void
.end method

.method public final c()V
    .locals 8

    sget-object v0, Lhmy;->b:Ljava/util/Map;

    iget-object v1, p0, Lhmy;->e:Lhmx;

    invoke-virtual {v1}, Lhmx;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhna;

    iget-object v1, p0, Lhmy;->h:Lhna;

    if-eqz v0, :cond_6

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lhmy;->d:Lfbz;

    sget-object v3, Lnlb;->e:Lnlb;

    invoke-virtual {v3}, Lnws;->O()Lnwn;

    move-result-object v3

    iget-object v4, v3, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_1
    iget-object v4, v3, Lnwn;->b:Lnws;

    move-object v5, v4

    check-cast v5, Lnlb;

    const/4 v6, 0x2

    iput v6, v5, Lnlb;->d:I

    iget v6, v5, Lnlb;->a:I

    or-int/lit8 v6, v6, 0x10

    iput v6, v5, Lnlb;->a:I

    iget v1, v1, Lhna;->j:I

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_2
    iget-object v4, v3, Lnwn;->b:Lnws;

    move-object v5, v4

    check-cast v5, Lnlb;

    add-int/lit8 v6, v1, -0x1

    const/4 v7, 0x0

    if-eqz v1, :cond_5

    iput v6, v5, Lnlb;->c:I

    iget v1, v5, Lnlb;->a:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v5, Lnlb;->a:I

    iget v0, v0, Lhna;->j:I

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_3
    iget-object v1, v3, Lnwn;->b:Lnws;

    check-cast v1, Lnlb;

    add-int/lit8 v4, v0, -0x1

    if-eqz v0, :cond_4

    iput v4, v1, Lnlb;->b:I

    iget v0, v1, Lnlb;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, v1, Lnlb;->a:I

    invoke-virtual {v3}, Lnwn;->i()Lnws;

    move-result-object v0

    check-cast v0, Lnlb;

    invoke-interface {v2, v0}, Lfbz;->C(Lnlb;)V

    return-void

    :cond_4
    throw v7

    :cond_5
    throw v7

    :cond_6
    :goto_0
    sget-object v0, Lhmy;->c:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "Skip logging due to unknown thermal status"

    const/16 v2, 0xea6

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return-void
.end method

.method public final declared-synchronized d()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lhmy;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhmy;->e:Lhmx;

    iget-object v1, v0, Lhmx;->e:Ljava/util/concurrent/Executor;

    new-instance v2, Lhdg;

    const/16 v3, 0x12

    invoke-direct {v2, v0, p0, v3}, Lhdg;-><init>(Lhmx;Landroid/os/PowerManager$OnThermalStatusChangedListener;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lhmy;->c:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "Was not registered as ThermalStatusListener on AppStop"

    const/16 v2, 0xeaa

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhmy;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()Lhna;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lhmy;->g:Lhna;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final f(Lhmz;)Lkad;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lhmy;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lhmy;->g:Lhna;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v1, Lhna;->i:Lhna;

    if-eq v0, v1, :cond_0

    invoke-interface {p1, v0}, Lhmz;->bG(Lhna;)V

    :cond_0
    new-instance v0, Lgss;

    const/16 v1, 0xd

    invoke-direct {v0, p0, p1, v1}, Lgss;-><init>(Lhmy;Lhmz;I)V

    return-object v0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final onThermalStatusChanged(I)V
    .locals 6

    sget-object v0, Lhmy;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lhmy;->b:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhna;

    if-nez v0, :cond_0

    sget-object v0, Lhmy;->c:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v1, 0xeae

    invoke-interface {v0, v1}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v1, "Ignoring call to onThermalStatusChanged with unknown status value: %d"

    invoke-interface {v0, v1, p1}, Lnah;->p(Ljava/lang/String;I)V

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lhmy;->g:Lhna;

    if-eq v0, p1, :cond_7

    sget-object p1, Lnlb;->e:Lnlb;

    invoke-virtual {p1}, Lnws;->O()Lnwn;

    move-result-object p1

    iget-object v1, p1, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lnwn;->p()V

    :cond_1
    iget-object v1, p1, Lnwn;->b:Lnws;

    move-object v2, v1

    check-cast v2, Lnlb;

    const/4 v3, 0x1

    iput v3, v2, Lnlb;->d:I

    iget v3, v2, Lnlb;->a:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v2, Lnlb;->a:I

    iget-object v2, p0, Lhmy;->g:Lhna;

    iget v2, v2, Lhna;->j:I

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lnwn;->p()V

    :cond_2
    iget-object v1, p1, Lnwn;->b:Lnws;

    move-object v3, v1

    check-cast v3, Lnlb;

    add-int/lit8 v4, v2, -0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_6

    iput v4, v3, Lnlb;->c:I

    iget v2, v3, Lnlb;->a:I

    or-int/lit8 v2, v2, 0x8

    iput v2, v3, Lnlb;->a:I

    iget v2, v0, Lhna;->j:I

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lnwn;->p()V

    :cond_3
    iget-object v1, p1, Lnwn;->b:Lnws;

    check-cast v1, Lnlb;

    add-int/lit8 v3, v2, -0x1

    if-eqz v2, :cond_5

    iput v3, v1, Lnlb;->b:I

    iget v2, v1, Lnlb;->a:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v1, Lnlb;->a:I

    iput-object v0, p0, Lhmy;->g:Lhna;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lhmy;->d:Lfbz;

    invoke-virtual {p1}, Lnwn;->i()Lnws;

    move-result-object p1

    check-cast p1, Lnlb;

    invoke-interface {v0, p1}, Lfbz;->C(Lnlb;)V

    monitor-enter p0

    :try_start_1
    iget-object p1, p0, Lhmy;->a:Ljava/util/List;

    invoke-static {p1}, Lmvv;->j(Ljava/util/Collection;)Lmvv;

    move-result-object p1

    iget-object v0, p0, Lhmy;->g:Lhna;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhmz;

    invoke-interface {v3, v0}, Lhmz;->bG(Lhna;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_5
    :try_start_3
    throw v5

    :cond_6
    throw v5

    :cond_7
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
