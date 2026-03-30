.class public final Lrrg;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:I

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Landroidx/wear/ambient/AmbientModeSupport$AmbientController;Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    goto/32 :goto_b

    nop

    nop

    :goto_0
    iput p1, p0, Lrrg;->b:I

    nop

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

    :goto_1
    iput-object v0, p0, Lrrg;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    iput-object p1, p0, Lrrg;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4
    iput-object p3, p0, Lrrg;->e:Ljava/lang/Object;

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

    nop

    :goto_5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    const/4 p1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_7
    iput-object v0, p0, Lrrg;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_8
    const-string v0, "SPEECH_ENHANCER_RAW_AUDIO_STREAM_PARSER"

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_9
    new-instance v0, Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput-object p2, p0, Lrrg;->f:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lrts;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2
    iput-object v0, p0, Lrrg;->a:Ljava/lang/Object;

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

    :goto_3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_4
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Lrrg;->d:Ljava/lang/Object;

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

    :goto_6
    iput v0, p0, Lrrg;->b:I

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {v0, p1}, Lrtk;-><init>(Lrts;)V

    goto/32 :goto_d

    nop

    nop

    :goto_8
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-object v0, p0, Lrrg;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput-object v0, p0, Lrrg;->e:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    :goto_d
    iput-object v0, p0, Lrrg;->f:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_e
    new-instance v0, Lrtk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_f
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/io/IOException;)V
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    :try_start_0
    monitor-exit v0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_3
    monitor-enter v0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4
    const/16 v1, 0x156e

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_5
    check-cast p1, Lscz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_6
    const v0, 0x3

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_7
    iget-object v0, p0, Lrrg;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {p1, p0}, Lscz;->i(Ljava/lang/Throwable;)Lsdo;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_9
    new-instance p0, Lrrh;

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
    const/4 v1, 0x5

    nop

    nop

    :try_start_1
    iput v1, p0, Lrrg;->b:I

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {p0, p1}, Lrrh;-><init>(Ljava/lang/Throwable;)V

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_c
    throw p0

    nop

    :goto_d
    goto/32 :goto_1c

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_f
    invoke-interface {p1, v0, v1, p0}, Lscz;->E(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_10
    check-cast p1, Lscz;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p1}, Lscs;->b()Lsdo;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {v0, v1, p1, p0}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const-string v0, "Got an exception when trying to close the piped output stream."

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_14
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_16
    const-string v1, "SPEECH_ENHANCER_RAW_AUDIO_STREAM_PARSER"

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_17
    const v1, 0x12

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_18
    invoke-virtual {p1}, Lscs;->b()Lsdo;

    move-result-object p1

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

    :goto_19
    return-void

    nop

    nop

    :catch_0
    move-exception p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_1a
    invoke-interface {p1, v0}, Lscz;->M(I)Lsdo;

    move-result-object p1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const-string v0, "Got an error from audio stream parser \'%s\'. Error: %s"

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_15

    nop

    nop

    :goto_1d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    sget-object p1, Lrrb;->a:Lsdb;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const/16 v0, 0x156f

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_20
    iget-object p0, p0, Lrrg;->f:Ljava/lang/Object;

    nop

    :try_start_2
    check-cast p0, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    nop

    iget-object p0, p0, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->a:Ljava/lang/Object;

    nop

    nop

    move-object p1, p0

    nop

    nop

    nop

    nop

    check-cast p1, Lrrb;

    nop

    iget-object p1, p1, Lrrb;->c:Ljava/io/PipedOutputStream;

    nop

    nop

    nop

    nop

    if-eqz p1, :cond_0

    nop

    nop

    nop

    invoke-virtual {p1}, Ljava/io/PipedOutputStream;->close()V

    return-void

    nop

    nop

    nop

    nop

    nop

    :cond_0
    check-cast p0, Lrrb;

    nop

    iget-object p0, p0, Lrrb;->g:Lrrd;

    nop

    nop

    nop

    nop

    nop

    iget-object p0, p0, Lrrd;->d:Lj$/util/Optional;

    nop

    new-instance p1, Lkzc;

    nop

    nop

    const/16 v0, 0x14

    nop

    nop

    invoke-direct {p1, v0}, Lkzc;-><init>(I)V

    invoke-virtual {p0, p1}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_21
    sget-object p1, Lrrb;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_22
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_1
    goto/32 :goto_14

    nop

    :goto_23
    if-eqz p1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_20

    nop

    nop
.end method

.method public final b()V
    .locals 6

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v1, p0, v2}, Lqxb;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v1, Lqxb;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_4
    throw p0

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Lrrg;->e:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    const/16 v2, 0xe

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_9
    const v0, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Lrrg;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x3

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_c
    monitor-enter v0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget v1, p0, Lrrg;->b:I

    nop

    nop

    nop

    const/4 v2, 0x1

    nop

    nop

    if-ne v1, v2, :cond_1

    nop

    goto :goto_d

    nop

    nop

    :cond_1
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    :goto_d
    const-string v3, "Can\'t run: state of audio stream parser \'%s\' is \'%s\'."

    nop

    nop

    iget-object v4, p0, Lrrg;->c:Ljava/lang/Object;

    nop

    nop

    invoke-static {v1}, Lrrf;->b(I)Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_2

    nop

    nop

    nop

    invoke-static {v2, v3, v4, v5}, Lrrf;->B(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x2

    nop

    nop

    nop

    nop

    iput v1, p0, Lrrg;->b:I

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_5

    nop

    nop

    :goto_f
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    throw p0

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

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
.end method

.method public final c()Z
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    :goto_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lrrg;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_7
    const v0, 0x12

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_4

    nop

    :goto_9
    monitor-enter v0

    nop

    nop

    :try_start_0
    iget p0, p0, Lrrg;->b:I

    nop

    nop

    const/4 v1, 0x2

    nop

    nop

    nop

    nop

    if-ne p0, v1, :cond_1

    nop

    nop

    nop

    nop

    const/4 p0, 0x1

    nop

    nop

    goto :goto_a

    nop

    nop

    :cond_1
    const/4 p0, 0x0

    nop

    :goto_a
    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    return p0

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    monitor-exit v0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_c
    const v1, 0x14

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop
.end method
