.class public Liwk;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lsdb;


# instance fields
.field public final b:Liwh;

.field public final c:Liwl;

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

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v0, "iwk"

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sput-object v0, Liwk;->a:Lsdb;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Liwh;Liwl;)V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Liwk;->c:Liwl;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1
    iput v0, p0, Liwk;->l:I

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Liwk;->b:Liwh;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object v0, p0, Liwk;->n:Ljava/lang/Thread;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_4
    new-instance v0, Ljava/util/LinkedList;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v0, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    :goto_7
    iput-boolean v0, p0, Liwk;->h:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    :goto_9
    iput-object v0, p0, Liwk;->d:Ljava/util/Queue;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput v0, p0, Liwk;->f:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v0, Ljava/lang/Object;

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_c
    iput-boolean v0, p0, Liwk;->j:Z

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_d
    iput-boolean v0, p0, Liwk;->g:Z

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

    :goto_e
    iput-boolean v0, p0, Liwk;->i:Z

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_f
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_14

    nop

    nop

    :goto_10
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_11
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_12
    iput-object v0, p0, Liwk;->m:Ljava/lang/Thread;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_13
    iput v0, p0, Liwk;->k:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_14
    iput-object v0, p0, Liwk;->e:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_15
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 8

    goto/32 :goto_c

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :catchall_0
    move-exception v1

    nop

    :try_start_0
    monitor-exit v0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    throw v1

    nop

    nop

    nop

    nop

    :cond_0
    :goto_4
    sget-object v0, Liwk;->a:Lsdb;

    nop

    nop

    nop

    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    const/16 v1, 0x7b2

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    const-string v1, "stop called more than once!"

    nop

    nop

    nop

    invoke-interface {v0, v1}, Lscz;->s(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    monitor-enter p0

    nop

    nop

    nop

    :try_start_2
    iget-object v0, p0, Liwk;->n:Ljava/lang/Thread;

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    iget-object v0, p0, Liwk;->m:Ljava/lang/Thread;

    nop

    if-nez v0, :cond_1

    nop

    goto/16 :goto_4

    nop

    :cond_1
    iget-object v0, p0, Liwk;->b:Liwh;

    nop

    invoke-interface {v0}, Liwh;->b()V

    const/4 v0, 0x1

    nop

    iput-boolean v0, p0, Liwk;->g:Z

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_16

    nop

    nop

    :goto_6
    if-lez v0, :cond_2

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_d

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto :goto_9

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    :try_start_3
    sget-object v1, Liwk;->a:Lsdb;

    nop

    invoke-virtual {v1}, Lscs;->b()Lsdo;

    move-result-object v1

    nop

    nop

    nop

    const-string v2, "Failed to stop writer thread"

    nop

    nop

    nop

    const/16 v5, 0x7b8

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2, v5, v1, v0}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    :goto_9
    iput-boolean v3, p0, Liwk;->j:Z

    nop

    nop

    nop

    iget-object v0, p0, Liwk;->n:Ljava/lang/Thread;

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    nop

    if-eqz v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    sget-object v0, Liwk;->a:Lsdb;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    const/16 v1, 0x7b6

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    sget-object v1, Lcom/google/android/apps/camera/imax/cyclops/metadata/vUwG/ZKDLyMOUoobPIS;->KmcxoKS:Ljava/lang/String;

    nop

    nop

    invoke-interface {v0, v1}, Lscz;->s(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v0, p0, Liwk;->n:Ljava/lang/Thread;

    nop

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x20

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_b
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_c
    const v0, 0x1a

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_10

    nop

    :goto_e
    goto/32 :goto_5

    nop

    nop

    :goto_f
    throw v0

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto :goto_12

    nop

    :catch_1
    move-exception v3

    nop

    nop

    nop

    :try_start_5
    sget-object v4, Liwk;->a:Lsdb;

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Lscs;->b()Lsdo;

    move-result-object v4

    nop

    nop

    nop

    const-string v5, "Failed to stop drainer"

    nop

    nop

    nop

    const/16 v6, 0x7b5

    nop

    nop

    nop

    nop

    invoke-static {v5, v6, v4, v3}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    :goto_12
    const/4 v3, 0x0

    nop

    nop

    iput-boolean v3, p0, Liwk;->i:Z

    nop

    nop

    nop

    nop

    iget-object v4, p0, Liwk;->m:Ljava/lang/Thread;

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Ljava/lang/Thread;->isAlive()Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_4

    nop

    nop

    sget-object v4, Liwk;->a:Lsdb;

    nop

    nop

    nop

    invoke-virtual {v4}, Lscs;->b()Lsdo;

    move-result-object v4

    nop

    nop

    nop

    nop

    const/16 v5, 0x7b3

    nop

    invoke-interface {v4, v5}, Lscz;->M(I)Lsdo;

    move-result-object v4

    nop

    nop

    nop

    nop

    check-cast v4, Lscz;

    nop

    nop

    nop

    nop

    const-string v5, "Stopping drainer timed out, forcing stop"

    nop

    nop

    nop

    invoke-interface {v4, v5}, Lscz;->s(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    iget-object v4, p0, Liwk;->m:Ljava/lang/Thread;

    nop

    nop

    invoke-virtual {v4}, Ljava/lang/Thread;->join()V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto :goto_14

    nop

    nop

    nop

    nop

    :catch_2
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :try_start_7
    sget-object v1, Liwk;->a:Lsdb;

    nop

    nop

    invoke-virtual {v1}, Lscs;->b()Lsdo;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    const-string v2, "Failed to stop drainer"

    nop

    const/16 v3, 0x7b7

    nop

    nop

    invoke-static {v2, v3, v1, v0}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    :cond_3
    :goto_14
    iput-object v4, p0, Liwk;->n:Ljava/lang/Thread;

    nop

    nop

    iget-object v0, p0, Liwk;->c:Liwl;

    nop

    nop

    nop

    invoke-virtual {v0}, Liwl;->b()V

    iget-object v0, p0, Liwk;->b:Liwh;

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Liwh;->c()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/32 :goto_2

    nop

    nop

    :goto_15
    return-void

    nop

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    nop

    :try_start_8
    monitor-exit p0

    nop

    nop
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const-wide/16 v1, 0x3e8

    nop

    nop

    nop

    :try_start_9
    iget-object v3, p0, Liwk;->m:Ljava/lang/Thread;

    nop

    nop

    nop

    invoke-virtual {v3, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/32 :goto_11

    nop

    nop

    :goto_17
    goto :goto_18

    nop

    nop

    nop

    :catch_3
    move-exception v4

    nop

    nop

    nop

    nop

    nop

    :try_start_a
    sget-object v5, Liwk;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Lscs;->b()Lsdo;

    move-result-object v5

    nop

    nop

    nop

    nop

    const-string v6, "Failed to stop drainer"

    nop

    nop

    nop

    nop

    const/16 v7, 0x7b4

    nop

    nop

    nop

    invoke-static {v6, v7, v5, v4}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    :cond_4
    :goto_18
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    iput-object v4, p0, Liwk;->m:Ljava/lang/Thread;

    nop

    nop

    nop

    nop

    iput-boolean v0, p0, Liwk;->h:Z

    nop

    nop

    nop

    nop

    nop

    iget-object v0, p0, Liwk;->e:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    monitor-enter v0

    nop
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    iget-object v5, p0, Liwk;->e:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    nop

    nop
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    iget-object v0, p0, Liwk;->n:Ljava/lang/Thread;

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized b()Z
    .locals 3

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_1
    return v1

    nop

    nop

    nop

    nop

    :cond_1
    :goto_2
    :try_start_0
    sget-object v0, Liwk;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    const/16 v2, 0x7bb

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, v2}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    const-string v2, "start called more than once!"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, v2}, Lscz;->s(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    monitor-exit p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    monitor-exit p0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    return v1

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0xd

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_9
    throw v0

    nop

    nop

    :goto_a
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return v0

    nop

    nop

    :cond_2
    :try_start_2
    new-instance v0, Liwi;

    nop

    invoke-direct {v0, p0}, Liwi;-><init>(Liwk;)V

    iput-object v0, p0, Liwk;->n:Ljava/lang/Thread;

    nop

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Liwj;

    nop

    nop

    invoke-direct {v0, p0}, Liwj;-><init>(Liwk;)V

    iput-object v0, p0, Liwk;->m:Ljava/lang/Thread;

    nop

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_c
    monitor-enter p0

    nop

    nop

    :try_start_3
    iget-object v0, p0, Liwk;->n:Ljava/lang/Thread;

    nop

    nop

    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    if-nez v0, :cond_1

    nop

    nop

    iget-object v0, p0, Liwk;->m:Ljava/lang/Thread;

    nop

    nop

    if-eqz v0, :cond_3

    nop

    goto/16 :goto_2

    nop

    nop

    nop

    :cond_3
    const/4 v0, -0x1

    nop

    nop

    iput v0, p0, Liwk;->f:I

    nop

    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    iput-boolean v0, p0, Liwk;->g:Z

    nop

    nop

    iput-boolean v0, p0, Liwk;->h:Z

    nop

    nop

    iput-boolean v1, p0, Liwk;->i:Z

    nop

    iput-boolean v1, p0, Liwk;->j:Z

    nop

    nop

    iput v0, p0, Liwk;->k:I

    nop

    nop

    nop

    iput v0, p0, Liwk;->l:I

    nop

    nop

    iget-object v2, p0, Liwk;->b:Liwh;

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Liwh;->d()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    if-nez v2, :cond_2

    nop

    sget-object v1, Liwk;->a:Lsdb;

    nop

    nop

    invoke-virtual {v1}, Lscs;->b()Lsdo;

    move-result-object v1

    nop

    nop

    nop

    nop

    const/16 v2, 0x7bc

    nop

    invoke-interface {v1, v2}, Lscz;->M(I)Lsdo;

    move-result-object v1

    nop

    nop

    check-cast v1, Lscz;

    nop

    nop

    nop

    const-string v2, "Failed to start the encoder."

    nop

    nop

    invoke-interface {v1, v2}, Lscz;->s(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0xb

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_e
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop
.end method
