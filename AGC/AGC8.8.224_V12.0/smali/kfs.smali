.class public final Lkfs;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lkgh;

.field public final b:Lkaq;

.field public c:Lkea;

.field public d:Z

.field public e:Z

.field public f:Z

.field private final g:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lkgh;Ljava/util/concurrent/Executor;Lkaq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkfs;->a:Lkgh;

    iput-object p2, p0, Lkfs;->g:Ljava/util/concurrent/Executor;

    const-string p1, "FS3aUpdater"

    invoke-interface {p3, p1}, Lkaq;->a(Ljava/lang/String;)Lkaq;

    move-result-object p1

    iput-object p1, p0, Lkfs;->b:Lkaq;

    invoke-static {}, Lkfr;->b()Lkfr;

    move-result-object p1

    invoke-virtual {p1}, Lkfr;->a()Lkea;

    move-result-object p1

    iput-object p1, p0, Lkfs;->c:Lkea;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lkfs;->e:Z

    return-void
.end method


# virtual methods
.method public final a(Lkea;Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lkfs;->c:Lkea;

    invoke-static {v0}, Lkhs;->b(Lkea;)Lkhs;

    move-result-object v0

    invoke-interface {p1}, Lkea;->d()Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lkfr;->a:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1}, Lkea;->d()Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lkhs;->a:Ljava/lang/Integer;

    :cond_0
    invoke-interface {p1}, Lkea;->b()Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lkfr;->a:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1}, Lkea;->b()Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lkhs;->b:Ljava/lang/Integer;

    :cond_1
    invoke-interface {p1}, Lkea;->a()Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lkfr;->a:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {p1}, Lkea;->a()Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lkhs;->c:Ljava/lang/Integer;

    :cond_2
    invoke-interface {p1}, Lkea;->c()Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lkfr;->a:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {p1}, Lkea;->c()Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lkhs;->d:Ljava/lang/Integer;

    :cond_3
    invoke-interface {p1}, Lkea;->e()Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lkfr;->a:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {p1}, Lkea;->e()Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lkhs;->e:Ljava/lang/Integer;

    :cond_4
    invoke-interface {p1}, Lkea;->g()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v1

    sget-object v2, Lkfr;->b:[Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-interface {p1}, Lkea;->g()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v1

    iput-object v1, v0, Lkhs;->i:[Landroid/hardware/camera2/params/MeteringRectangle;

    :cond_5
    invoke-interface {p1}, Lkea;->f()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v1

    sget-object v2, Lkfr;->b:[Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-interface {p1}, Lkea;->f()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v1

    iput-object v1, v0, Lkhs;->j:[Landroid/hardware/camera2/params/MeteringRectangle;

    :cond_6
    invoke-interface {p1}, Lkea;->h()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v1

    sget-object v2, Lkfr;->b:[Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-interface {p1}, Lkea;->h()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p1

    iput-object p1, v0, Lkhs;->k:[Landroid/hardware/camera2/params/MeteringRectangle;

    :cond_7
    invoke-virtual {v0}, Lkhs;->d()Lkht;

    move-result-object p1

    iput-object p1, p0, Lkfs;->c:Lkea;

    iget-boolean p1, p0, Lkfs;->e:Z

    or-int/2addr p1, p2

    iput-boolean p1, p0, Lkfs;->e:Z

    iget-boolean p1, p0, Lkfs;->f:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_8

    iput-boolean p2, p0, Lkfs;->d:Z

    monitor-exit p0

    return-void

    :cond_8
    iput-boolean p2, p0, Lkfs;->f:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p1, p0, Lkfs;->g:Ljava/util/concurrent/Executor;

    new-instance p2, Lkcu;

    const/4 v0, 0x4

    invoke-direct {p2, p0, v0}, Lkcu;-><init>(Lkfs;I)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p1, p0, Lkfs;->b:Lkaq;

    const-string p2, "Task to update 3A rejected by the executor."

    invoke-interface {p1, p2}, Lkaq;->b(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
