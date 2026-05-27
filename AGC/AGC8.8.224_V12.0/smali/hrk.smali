.class public final Lhrk;
.super Ljava/lang/Object;

# interfaces
.implements Lkad;


# instance fields
.field public final a:Ldxl;

.field private final b:Leah;

.field private final c:Ldxt;


# direct methods
.method public constructor <init>(Leah;Ldxt;Ldxl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhrk;->b:Leah;

    iput-object p2, p0, Lhrk;->c:Ldxt;

    iput-object p3, p0, Lhrk;->a:Ldxl;

    const-string p1, "tracking-meta"

    invoke-virtual {p2, p1}, Ldxt;->i(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lhrk;->b:Leah;

    invoke-virtual {v0}, Leah;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Lkaf;J)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Lkaf;

    iget v1, p1, Lkaf;->a:I

    iget p1, p1, Lkaf;->b:I

    invoke-direct {v0, v1, p1}, Lkaf;-><init>(II)V

    iget-object p1, p0, Lhrk;->b:Leah;

    invoke-virtual {p1}, Leah;->e()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lhrk;->b:Leah;

    const-string v1, "trk-gyro-session"

    invoke-virtual {p1, v0, v1}, Leah;->f(Lkaf;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lhrk;->b:Leah;

    invoke-virtual {p1}, Leah;->e()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :cond_1
    :try_start_1
    iget-object p1, p0, Lhrk;->a:Ldxl;

    invoke-virtual {p1, p2, p3}, Ldxl;->a(J)Lgrw;

    move-result-object p1

    iget-object v0, p0, Lhrk;->b:Leah;

    invoke-virtual {v0, p2, p3, p1}, Leah;->b(JLgrw;)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized c(J)[F
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lhrk;->b:Leah;

    invoke-virtual {v0}, Leah;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 p1, 0x9

    new-array p1, p1, [F

    fill-array-data p1, :array_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lhrk;->a:Ldxl;

    invoke-virtual {v0, p1, p2}, Ldxl;->a(J)Lgrw;

    move-result-object v0

    iget-object v1, p0, Lhrk;->b:Leah;

    invoke-virtual {v1, p1, p2, v0}, Leah;->b(JLgrw;)Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Llau;

    invoke-virtual {p1}, Llau;->d()[F

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final declared-synchronized close()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lhrk;->c:Ldxt;

    const-string v1, "tracking-meta"

    invoke-virtual {v0, v1}, Ldxt;->j(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
