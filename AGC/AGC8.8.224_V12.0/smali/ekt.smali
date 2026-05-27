.class public final Lekt;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Lekq;

.field public final c:Leku;

.field public final d:Ljava/util/Queue;

.field public final e:Ljava/lang/Object;

.field public f:I

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:I

.field public l:I

.field private m:Ljava/lang/Thread;

.field private n:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/imax/cyclops/video/EncoderDrainer"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lekt;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Lekq;Leku;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lekt;->d:Ljava/util/Queue;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lekt;->e:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lekt;->m:Ljava/lang/Thread;

    iput-object v0, p0, Lekt;->n:Ljava/lang/Thread;

    const/4 v0, -0x1

    iput v0, p0, Lekt;->f:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lekt;->g:Z

    iput-boolean v0, p0, Lekt;->h:Z

    iput-boolean v0, p0, Lekt;->i:Z

    iput-boolean v0, p0, Lekt;->j:Z

    iput v0, p0, Lekt;->k:I

    iput v0, p0, Lekt;->l:I

    iput-object p1, p0, Lekt;->b:Lekq;

    iput-object p2, p0, Lekt;->c:Leku;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lekt;->n:Ljava/lang/Thread;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lekt;->m:Ljava/lang/Thread;

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, Lekt;->b:Lekq;

    invoke-interface {v0}, Lekq;->b()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lekt;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-wide/16 v1, 0x3e8

    :try_start_1
    iget-object v3, p0, Lekt;->m:Ljava/lang/Thread;

    invoke-virtual {v3, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_2
    sget-object v4, Lekt;->a:Lnak;

    invoke-virtual {v4}, Lnaf;->b()Lnaz;

    move-result-object v4

    const-string v5, "Failed to stop drainer"

    const/16 v6, 0x61c

    invoke-static {v4, v5, v6, v3}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    :goto_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lekt;->i:Z

    iget-object v4, p0, Lekt;->m:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lekt;->a:Lnak;

    invoke-virtual {v4}, Lnaf;->b()Lnaz;

    move-result-object v4

    const-string v5, "Stopping drainer timed out, forcing stop"

    const/16 v6, 0x61a

    invoke-static {v4, v5, v6}, Ld;->g(Lnaz;Ljava/lang/String;C)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v4, p0, Lekt;->m:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->join()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catch_1
    move-exception v4

    :try_start_4
    sget-object v5, Lekt;->a:Lnak;

    invoke-virtual {v5}, Lnaf;->b()Lnaz;

    move-result-object v5

    const-string v6, "Failed to stop drainer"

    const/16 v7, 0x61b

    invoke-static {v5, v6, v7, v4}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    :cond_1
    :goto_1
    const/4 v4, 0x0

    iput-object v4, p0, Lekt;->m:Ljava/lang/Thread;

    iput-boolean v0, p0, Lekt;->h:Z

    iget-object v0, p0, Lekt;->e:Ljava/lang/Object;

    monitor-enter v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iget-object v5, p0, Lekt;->e:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    iget-object v0, p0, Lekt;->n:Ljava/lang/Thread;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    :catch_2
    move-exception v0

    :try_start_7
    sget-object v1, Lekt;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->b()Lnaz;

    move-result-object v1

    const-string v2, "Failed to stop writer thread"

    const/16 v5, 0x61f

    invoke-static {v1, v2, v5, v0}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    :goto_2
    iput-boolean v3, p0, Lekt;->j:Z

    iget-object v0, p0, Lekt;->n:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lekt;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v1, "Stopping writer timed out, forcing stop"

    const/16 v2, 0x61d

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    iget-object v0, p0, Lekt;->n:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_3

    :catch_3
    move-exception v0

    :try_start_9
    sget-object v1, Lekt;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->b()Lnaz;

    move-result-object v1

    const-string v2, "Failed to stop drainer"

    const/16 v3, 0x61e

    invoke-static {v1, v2, v3, v0}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    :cond_2
    :goto_3
    iput-object v4, p0, Lekt;->n:Ljava/lang/Thread;

    iget-object v0, p0, Lekt;->c:Leku;

    invoke-virtual {v0}, Leku;->b()V

    iget-object v0, p0, Lekt;->b:Lekq;

    invoke-interface {v0}, Lekq;->c()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    :try_start_a
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    throw v1

    :cond_3
    :goto_4
    sget-object v0, Lekt;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v1, "stop called more than once!"

    const/16 v2, 0x619

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lekt;->n:Ljava/lang/Thread;

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lekt;->m:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lekt;->f:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lekt;->g:Z

    iput-boolean v0, p0, Lekt;->h:Z

    iput-boolean v1, p0, Lekt;->i:Z

    iput-boolean v1, p0, Lekt;->j:Z

    iput v0, p0, Lekt;->k:I

    iput v0, p0, Lekt;->l:I

    iget-object v2, p0, Lekt;->b:Lekq;

    invoke-interface {v2}, Lekq;->d()Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v1, Lekt;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->b()Lnaz;

    move-result-object v1

    const-string v2, "Failed to start the encoder."

    const/16 v3, 0x623

    invoke-static {v1, v2, v3}, Ld;->g(Lnaz;Ljava/lang/String;C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    new-instance v0, Lekr;

    invoke-direct {v0, p0}, Lekr;-><init>(Lekt;)V

    iput-object v0, p0, Lekt;->n:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Leks;

    invoke-direct {v0, p0}, Leks;-><init>(Lekt;)V

    iput-object v0, p0, Lekt;->m:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v1

    :cond_2
    :goto_0
    :try_start_2
    sget-object v0, Lekt;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v2, "start called more than once!"

    const/16 v3, 0x622

    invoke-static {v0, v2, v3}, Ld;->g(Lnaz;Ljava/lang/String;C)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
