.class public Lljr;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpci;


# static fields
.field private static final a:Lsdb;

.field private static final b:J

.field private static final c:J


# instance fields
.field private final d:J

.field private final e:J

.field private f:J

.field private final g:Ljfm;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    aput-object v0, v3, v5

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_5
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_6
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_7
    sput-wide v0, Lljr;->c:J

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_8
    sput-wide v0, Lljr;->b:J

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_9
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_17

    nop

    nop

    :goto_b
    goto/32 :goto_10

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_d
    check-cast v0, Lsdb;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v5, 0x0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

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

    :goto_10
    const-string v0, "ljr"

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

    :goto_11
    const-wide/16 v1, 0x5

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const-wide/16 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v0, 0x5

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_15
    const v1, 0x1f

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_16
    return-void

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    sput-object v0, Lljr;->a:Lsdb;

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

    nop

    :goto_19
    invoke-static {v5, v6, v3}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1a
    new-array v3, v3, [Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const/16 v5, 0x206

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(JFFLjfm;)V
    .locals 7

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_0
    float-to-long p3, p3

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-gtz p3, :cond_0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_2
    cmpl-float p4, p3, p4

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_3
    iput-wide v1, p0, Lljr;->e:J

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_4
    iput-object p5, p0, Lljr;->g:Ljfm;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_5
    iput-wide p3, p0, Lljr;->d:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_20

    nop

    :goto_7
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    mul-float/2addr p3, v0

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_a
    add-long/2addr p3, v5

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_c
    float-to-long v1, p4

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_d
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    :goto_e
    const/high16 p4, -0x40800000    # -1.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_f
    long-to-float v0, v0

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_7

    nop

    nop

    :goto_11
    add-long/2addr p3, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto :goto_1d

    nop

    nop

    :goto_14
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_15
    sget-wide v0, Lljr;->b:J

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const-wide/16 v3, -0x1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    add-long v3, p1, v1

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const-wide/16 v5, 0x2

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_1a
    iput-wide v3, p0, Lljr;->f:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1b
    const v1, 0x1c

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

    nop

    :goto_1c
    move-wide p3, v3

    nop

    :goto_1d
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1e
    if-gtz p4, :cond_2

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    :cond_2
    goto/32 :goto_9

    nop

    nop

    :goto_1f
    return-void

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_10

    nop

    nop

    :goto_21
    const v0, 0x2

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_22
    cmp-long p3, p1, v3

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_23
    div-long v5, v1, v5

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    div-float p4, v0, p4

    nop

    nop

    goto/32 :goto_c

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized a(Lpge;)V
    .locals 8

    goto/32 :goto_d

    nop

    nop

    :goto_0
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/16 :goto_10

    nop

    nop

    nop

    nop

    :goto_3
    :try_start_0
    invoke-interface {p1}, Lpge;->b()Lpgi;

    move-result-object v0

    nop

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v0, v0, Lpgi;->b:J

    nop

    nop

    nop

    nop

    iget-wide v2, p0, Lljr;->d:J

    nop

    const-wide/16 v4, -0x1

    nop

    nop

    nop

    cmp-long v6, v2, v4

    nop

    nop

    if-lez v6, :cond_1

    nop

    nop

    nop

    nop

    nop

    cmp-long v2, v0, v2

    nop

    nop

    nop

    nop

    nop

    if-lez v2, :cond_1

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lljr;->g:Ljfm;

    nop

    nop

    nop

    nop

    nop

    iget-object v1, v0, Ljfm;->a:Lsuu;

    nop

    nop

    const/4 v2, 0x1

    nop

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Lsuu;->e(Ljava/lang/Object;)Z

    iget-object v1, v0, Ljfm;->c:Ljfn;

    nop

    nop

    nop

    nop

    nop

    monitor-enter v1

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v2, v0, Ljfm;->c:Ljfn;

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    iput-boolean v3, v2, Ljfn;->c:Z

    nop

    iget-object v2, v0, Ljfm;->b:Ljfx;

    nop

    nop

    if-eqz v2, :cond_0

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2, v3}, Ljfx;->e(Z)V

    const/4 v2, 0x0

    nop

    iput-object v2, v0, Ljfm;->b:Ljfx;

    nop

    nop

    nop

    nop

    nop

    :cond_0
    monitor-exit v1

    nop

    nop

    nop

    goto/16 :goto_14

    nop

    :catchall_0
    move-exception v0

    nop

    monitor-exit v1

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    nop

    nop

    nop

    nop

    nop

    :cond_1
    iget-wide v2, p0, Lljr;->f:J

    nop

    nop

    sget-wide v6, Lljr;->c:J

    nop

    sub-long/2addr v2, v6

    nop

    cmp-long v0, v0, v2

    nop

    nop

    nop

    nop

    nop

    if-lez v0, :cond_7

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p1}, Lpge;->a()Lpge;

    move-result-object v0

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_7

    nop

    nop

    nop

    nop

    invoke-interface {p1}, Lpge;->b()Lpgi;

    iget-object v1, p0, Lljr;->g:Ljfm;

    nop

    nop

    nop

    nop

    iget-object v2, v1, Ljfm;->c:Ljfn;

    nop

    nop

    monitor-enter v2

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object v3, v1, Ljfm;->c:Ljfn;

    nop

    nop

    nop

    nop

    iget-boolean v6, v3, Ljfn;->c:Z

    nop

    if-eqz v6, :cond_5

    nop

    nop

    nop

    iget-object v3, v3, Ljfn;->d:Lhwy;

    nop

    invoke-virtual {v3, v0}, Lhwy;->t(Lpge;)Ltcv;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    if-eqz v3, :cond_3

    nop

    iget-object v4, v1, Ljfm;->b:Ljfx;

    nop

    nop

    nop

    if-eqz v4, :cond_2

    nop

    nop

    const-string v4, "Reporting selected frame %s."

    nop

    nop

    iget-object v5, v3, Ltcv;->b:Lcom/google/googlex/gcam/FrameMetadata;

    nop

    nop

    nop

    invoke-virtual {v5}, Lcom/google/googlex/gcam/FrameMetadata;->d()J

    move-result-wide v5

    nop

    nop

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    nop

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    iget-object v1, v1, Ljfm;->b:Ljfx;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1, v3}, Ljfx;->b(Ltcv;)V

    goto :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_2
    const-string v4, "Caching filtered frame %s"

    nop

    iget-object v5, v3, Ltcv;->b:Lcom/google/googlex/gcam/FrameMetadata;

    nop

    nop

    nop

    invoke-virtual {v5}, Lcom/google/googlex/gcam/FrameMetadata;->d()J

    move-result-wide v5

    nop

    nop

    nop

    nop

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    nop

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    iget-object v1, v1, Ljfm;->c:Ljfn;

    nop

    nop

    nop

    iget-object v1, v1, Ljfn;->b:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_3
    invoke-interface {v0}, Lpge;->b()Lpgi;

    move-result-object v1

    nop

    nop

    sget-object v3, Ljfn;->a:Lsdb;

    nop

    invoke-virtual {v3}, Lscs;->c()Lsdo;

    move-result-object v3

    nop

    nop

    const/16 v6, 0x8f5

    nop

    invoke-interface {v3, v6}, Lscz;->M(I)Lsdo;

    move-result-object v3

    nop

    nop

    check-cast v3, Lscz;

    nop

    nop

    nop

    const-string v6, "No valid RAW image found, ignoring frame %s."

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_4

    nop

    nop

    nop

    nop

    nop

    iget-wide v4, v1, Lpgi;->c:J

    nop

    :cond_4
    invoke-interface {v3, v6, v4, v5}, Lscz;->u(Ljava/lang/String;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_5
    :goto_4
    :try_start_4
    invoke-interface {v0}, Lpge;->close()V

    monitor-exit v2

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :try_start_5
    invoke-interface {p1}, Lpge;->b()Lpgi;

    move-result-object v0

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v0, v0, Lpgi;->b:J

    nop

    iget-wide v2, p0, Lljr;->e:J

    nop

    nop

    add-long/2addr v0, v2

    nop

    nop

    iput-wide v0, p0, Lljr;->f:J

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto/32 :goto_13

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

    goto/32 :goto_16

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p1

    nop

    nop

    nop

    :try_start_6
    monitor-exit p0

    nop

    nop

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_7
    if-nez p1, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_6
    :try_start_7
    invoke-interface {p1}, Lpge;->b()Lpgi;

    move-result-object v0

    nop

    nop

    nop

    nop
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_9
    monitor-exit p0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_a
    const v1, 0x13

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

    :goto_b
    throw p1

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x1c

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_e
    monitor-enter p0

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    nop

    nop

    :catchall_2
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :try_start_8
    invoke-interface {p1}, Lpge;->close()V

    throw v0

    nop

    nop

    :goto_10
    sget-object p1, Lljr;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Lscs;->c()Lsdo;

    move-result-object p1

    nop

    nop

    nop

    nop

    const/16 v0, 0xedd

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p1, v0}, Lscz;->M(I)Lsdo;

    move-result-object p1

    nop

    nop

    nop

    check-cast p1, Lscz;

    nop

    nop

    nop

    nop

    nop

    const-string v0, "BufferFilter: Received invalid frame."

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p1, v0}, Lscz;->s(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_12
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

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

    :catchall_3
    move-exception v1

    nop

    nop

    nop

    nop

    nop

    :try_start_9
    invoke-interface {v0}, Lpge;->close()V

    throw v1

    nop

    nop

    :catchall_4
    move-exception v0

    nop

    nop

    nop

    monitor-exit v2

    nop

    nop
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :try_start_a
    throw v0

    nop

    nop

    nop

    nop
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :cond_7
    :goto_14
    :try_start_b
    invoke-interface {p1}, Lpge;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/32 :goto_9

    nop

    nop

    :goto_15
    if-eqz v0, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_8
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_16
    if-lez v0, :cond_9

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

    :cond_9
    goto/32 :goto_0

    nop
.end method

.method public final declared-synchronized close()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    monitor-exit p0

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

    nop

    :goto_2
    return-void

    nop

    nop
.end method
