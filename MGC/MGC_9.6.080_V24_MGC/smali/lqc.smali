.class public Llqc;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Llqf;


# static fields
.field public static final synthetic g:I

.field private static final h:Lsdb;

.field private static final i:Lj$/time/Duration;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/util/LinkedList;

.field public c:Z

.field public d:Z

.field public e:Lsuu;

.field public f:I

.field private final j:Ljava/lang/Runnable;

.field private final k:Lpdf;

.field private volatile l:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x7

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const-string v0, "lqc"

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const-wide/16 v0, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_7
    const v1, 0x19

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {v0, v1}, Lj$/time/Duration;->ofSeconds(J)Lj$/time/Duration;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_9
    sput-object v0, Llqc;->i:Lj$/time/Duration;

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_a
    sput-object v0, Llqc;->h:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_3

    nop

    nop

    :goto_e
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/lang/Runnable;Lpdf;)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-boolean v0, p0, Llqc;->d:Z

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_8

    nop

    nop

    :goto_2
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v0, Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object v0, p0, Llqc;->e:Lsuu;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_6
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_7
    iput v0, p0, Llqc;->f:I

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_8
    iput-object v0, p0, Llqc;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    :goto_a
    new-instance v0, Ljava/util/LinkedList;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_b
    new-instance v0, Lsuu;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_c
    const/4 v0, 0x3

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_d
    invoke-direct {v0}, Lsuu;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_e
    iput-object p1, p0, Llqc;->j:Ljava/lang/Runnable;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_f
    iput-object v0, p0, Llqc;->b:Ljava/util/LinkedList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput-object p2, p0, Llqc;->k:Lpdf;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Llqe;)V
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v1, p0, Llqc;->b:Ljava/util/LinkedList;

    nop

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    if-nez v1, :cond_1

    nop

    nop

    nop

    iget-object v1, p0, Llqc;->b:Ljava/util/LinkedList;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Llqc;->b:Ljava/util/LinkedList;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    iget-boolean p1, p0, Llqc;->d:Z

    nop

    nop

    nop

    nop

    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Llqc;->b()V

    :cond_0
    monitor-exit v0

    nop

    return-void

    nop

    nop

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    const-string p1, "Task already enqueued"

    nop

    nop

    nop

    nop

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    monitor-exit v0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    throw p0

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x1f

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_2
    goto/32 :goto_9

    nop

    :goto_8
    iget-object v0, p0, Llqc;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    :goto_b
    const v1, 0x13

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b()V
    .locals 5

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_0
    if-eq v1, v2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :cond_0
    :try_start_0
    new-instance v1, Lpde;

    nop

    nop

    nop

    nop

    iget-object v2, p0, Llqc;->k:Lpdf;

    nop

    nop

    const-string v4, "ProcessingServiceManager#startingService"

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1, v2, v4}, Lpde;-><init>(Lpdf;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/app/ForegroundServiceStartNotAllowedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v2, p0, Llqc;->j:Ljava/lang/Runnable;

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :try_start_2
    invoke-virtual {v1}, Lpde;->close()V
    :try_end_2
    .catch Landroid/app/ForegroundServiceStartNotAllowedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    nop

    nop

    iput-wide v1, p0, Llqc;->l:J

    nop

    nop

    iput v3, p0, Llqc;->f:I

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Llqc;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_2
    throw p0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_4
    goto/16 :goto_d

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    :try_start_4
    invoke-virtual {v1}, Lpde;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_5
    cmp-long v1, v1, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_6
    if-gtz v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_1
    :try_start_5
    new-instance v1, Lpde;

    nop

    nop

    nop

    nop

    nop

    iget-object v2, p0, Llqc;->k:Lpdf;

    nop

    const-string v3, "ProcessingServiceManager#re-startingService"

    nop

    nop

    nop

    nop

    invoke-direct {v1, v2, v3}, Lpde;-><init>(Lpdf;Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/app/ForegroundServiceStartNotAllowedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    iget-object v2, p0, Llqc;->j:Ljava/lang/Runnable;

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-virtual {v1}, Lpde;->close()V
    :try_end_7
    .catch Landroid/app/ForegroundServiceStartNotAllowedException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    nop

    nop

    nop

    iput-wide v1, p0, Llqc;->l:J

    nop
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_9
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_9
    iget v1, p0, Llqc;->f:I

    nop

    nop
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto :goto_b

    nop

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception v1

    nop

    nop

    :try_start_a
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_b
    throw p0

    nop

    nop

    nop
    :try_end_a
    .catch Landroid/app/ForegroundServiceStartNotAllowedException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :catch_0
    move-exception p0

    nop

    nop

    :try_start_b
    sget-object v1, Llqc;->h:Lsdb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lscs;->b()Lsdo;

    move-result-object v1

    nop

    nop

    nop

    invoke-interface {v1, p0}, Lscz;->i(Ljava/lang/Throwable;)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    check-cast p0, Lscz;

    nop

    const/16 v1, 0xf56

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p0, v1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    check-cast p0, Lscz;

    nop

    nop

    nop

    nop

    const-string v1, "Unable to re-start processing service!"

    nop

    nop

    nop

    invoke-interface {p0, v1}, Lscz;->s(Ljava/lang/String;)V

    monitor-exit v0

    nop

    return-void

    nop

    nop

    nop

    nop

    :goto_c
    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_2
    :goto_d
    monitor-exit v0

    nop

    nop

    return-void

    nop

    nop

    :catchall_2
    move-exception p0

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto/32 :goto_2

    nop

    nop

    :goto_e
    const v0, 0x10

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_f
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_7

    nop

    :goto_10
    const v1, 0x16

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_8

    nop

    :goto_14
    goto :goto_15

    nop

    nop

    nop

    :catchall_3
    move-exception v1

    nop

    nop

    nop

    nop

    nop

    :try_start_c
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_15
    throw p0

    nop

    nop

    nop
    :try_end_c
    .catch Landroid/app/ForegroundServiceStartNotAllowedException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :catch_1
    move-exception p0

    nop

    :try_start_d
    sget-object v1, Llqc;->h:Lsdb;

    nop

    invoke-virtual {v1}, Lscs;->b()Lsdo;

    move-result-object v1

    nop

    nop

    nop

    nop

    invoke-interface {v1, p0}, Lscz;->i(Ljava/lang/Throwable;)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    check-cast p0, Lscz;

    nop

    const/16 v1, 0xf59

    nop

    nop

    nop

    invoke-interface {p0, v1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    check-cast p0, Lscz;

    nop

    nop

    const-string v1, "Unable to start processing service!"

    nop

    invoke-interface {p0, v1}, Lscz;->s(Ljava/lang/String;)V

    monitor-exit v0

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v2, 0x2

    nop

    if-ne v1, v2, :cond_4

    nop

    nop

    nop

    nop

    iput-boolean v3, p0, Llqc;->c:Z

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_d

    nop

    nop

    nop

    nop

    :cond_4
    if-ne v1, v3, :cond_2

    nop

    nop

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    nop

    nop

    nop

    nop

    iget-wide v3, p0, Llqc;->l:J

    nop

    nop

    nop

    nop

    sub-long/2addr v1, v3

    nop

    nop

    sget-object v3, Llqc;->i:Lj$/time/Duration;

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Lj$/time/Duration;->toNanos()J

    move-result-wide v3

    nop
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v3, 0x1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const/4 v2, 0x3

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/16 :goto_d

    nop

    :catchall_4
    move-exception p0

    nop

    nop

    nop

    :try_start_e
    invoke-virtual {v1}, Lpde;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    goto/32 :goto_14

    nop

    nop

    nop
.end method

.method public final declared-synchronized c()V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x16

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Llqc;->a:Ljava/lang/Object;

    nop

    monitor-enter v0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Llqc;->b:Ljava/util/LinkedList;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    iget-boolean v1, p0, Llqc;->d:Z

    nop

    if-eqz v1, :cond_0

    nop

    nop

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    iput-boolean v1, p0, Llqc;->d:Z

    nop

    nop

    iget-object v1, p0, Llqc;->b:Ljava/util/LinkedList;

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    nop

    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Llqc;->b()V

    :cond_0
    monitor-exit v0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    monitor-exit p0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    throw v0

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_8

    nop

    nop

    :goto_7
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    :catchall_0
    move-exception v1

    nop

    :try_start_2
    monitor-exit v0

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    monitor-exit p0

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    :goto_c
    const v1, 0x14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method
