.class public Lgrh;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lgrl;


# static fields
.field public static final a:Lsdb;


# instance fields
.field public final b:Llxg;

.field public c:Ljava/io/FileOutputStream;

.field public final d:Lsuu;

.field private final e:Llxc;

.field private final f:Ljava/util/concurrent/Executor;

.field private final g:Lpdf;

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    sput-object v0, Lgrh;->a:Lsdb;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    const-string v0, "grh"

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

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
.end method

.method public constructor <init>(Llxg;Llxc;Ljava/util/concurrent/Executor;Lpdf;)V
    .locals 1

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Lgrh;->h:I

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1
    new-instance v0, Lsuu;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p4, p0, Lgrh;->g:Lpdf;

    nop

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

    :goto_4
    const/4 p1, 0x1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_6
    invoke-direct {v0}, Lsuu;-><init>()V

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_7
    iput-object p2, p0, Lgrh;->e:Llxc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_9
    iput-object p3, p0, Lgrh;->f:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_a
    new-instance p1, Lgow;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_b
    iput-object p1, p0, Lgrh;->b:Llxg;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {p4, p2, p1}, Lpdf;->c(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const-string p2, "MFOV#Init"

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_e
    invoke-interface {p3, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_4

    nop

    nop

    :goto_f
    iput-object v0, p0, Lgrh;->d:Lsuu;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {p1, p0, p2, v0}, Lgow;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_d

    nop

    nop

    nop
.end method


# virtual methods
.method public final synthetic a()Llxp;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-static {p0}, Lhhg;->D(Lgrl;)Llxp;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop
.end method

.method public final b()Lrss;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    :goto_2
    iget-object p0, p0, Lgrh;->e:Llxc;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c()Lrss;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lgrh;->b:Llxg;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p0}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized close()V
    .locals 3

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-ne v0, v1, :cond_1

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x2

    nop

    nop

    nop

    nop

    :try_start_0
    iput v0, p0, Lgrh;->h:I

    nop

    nop

    nop

    iget-object v0, p0, Lgrh;->f:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    new-instance v1, Lgpt;

    nop

    nop

    const/16 v2, 0x9

    nop

    invoke-direct {v1, p0, v2}, Lgpt;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    :goto_6
    goto/32 :goto_a

    nop

    :goto_7
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v0, 0x0

    nop

    :try_start_1
    throw v0

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

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
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_c
    const v0, 0x6

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_d
    monitor-exit p0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_10
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_2
    iget v0, p0, Lgrh;->h:I

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_6

    nop

    :goto_13
    return-void

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_5

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop
.end method

.method public final d()Lsui;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object p0, p0, Lgrh;->d:Lsuu;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop
.end method

.method public final e()Ljava/io/FileDescriptor;
    .locals 3

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_3
    return-object v0

    nop

    :catchall_0
    move-exception v0

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

    :goto_4
    iget-object p0, p0, Lgrh;->g:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

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

    :goto_6
    goto :goto_7

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    sget-object v1, Lgrh;->a:Lsdb;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lscs;->b()Lsdo;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, v0}, Lscz;->i(Ljava/lang/Throwable;)Lsdo;

    move-result-object v1

    nop

    nop

    check-cast v1, Lscz;

    nop

    nop

    nop

    nop

    nop

    const/16 v2, 0x2a3

    nop

    nop

    invoke-interface {v1, v2}, Lscz;->M(I)Lsdo;

    move-result-object v1

    nop

    nop

    check-cast v1, Lscz;

    nop

    nop

    const-string v2, "Can\'t get file descriptor."

    nop

    nop

    nop

    invoke-interface {v1, v2}, Lscz;->s(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/RuntimeException;

    nop

    nop

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_7
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0xc

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

    :goto_a
    if-lez v0, :cond_0

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_b
    const v1, 0xe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p0, p0, Lgrh;->g:Lpdf;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_f

    nop

    nop

    :goto_e
    goto/32 :goto_2

    nop

    :goto_f
    :try_start_1
    iget-object v0, p0, Lgrh;->g:Lpdf;

    nop

    nop

    nop

    nop

    const-string v1, "MFOV#getFileDescriptor"

    nop

    invoke-interface {v0, v1}, Lpdf;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lgrh;->d:Lsuu;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lsuu;->get()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Ljava/io/FileDescriptor;

    nop

    nop
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

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
.end method

.method public final declared-synchronized f()V
    .locals 3

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x1c

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_2
    throw v0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-eq v0, v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_5
    if-nez v0, :cond_2

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    :goto_7
    goto/32 :goto_f

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    :goto_9
    :try_start_0
    iput v1, p0, Lgrh;->h:I

    nop

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lgrh;->f:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    new-instance v1, Lgpt;

    nop

    nop

    nop

    nop

    const/16 v2, 0xa

    nop

    nop

    invoke-direct {v1, p0, v2}, Lgpt;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_b
    monitor-exit p0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_12

    nop

    nop

    :goto_f
    const/4 v0, 0x0

    nop

    nop

    nop

    :try_start_1
    throw v0

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_11
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_12
    monitor-enter p0

    nop

    :try_start_2
    iget v0, p0, Lgrh;->h:I

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v0, 0x2

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method
