.class public Ljez;
.super Llhz;
.source "PG"


# static fields
.field private static final u:Lsdb;


# instance fields
.field public a:Z

.field public final b:Linb;

.field public final c:Lpci;

.field public final d:Ljgc;

.field public final e:I

.field public final f:Ljava/util/UUID;

.field public final g:Ljava/util/concurrent/Phaser;

.field public final h:I

.field public i:Landroid/graphics/Bitmap;

.field public j:Ltcx;

.field private final v:Ljava/util/ArrayList;

.field private final w:Lhwy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v0, "jez"

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    sput-object v0, Ljez;->u:Lsdb;

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

    :goto_3
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lhwy;Llko;Lijd;Lcom/google/googlex/gcam/BurstSpec;Lpro;Linb;Lpci;Ljgc;I)V
    .locals 0

    goto/32 :goto_8

    nop

    nop

    :goto_0
    const/4 p2, 0x0

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

    :goto_1
    iput-object p2, p0, Ljez;->j:Ltcx;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2
    iput-boolean p2, p0, Ljez;->a:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3
    new-instance p2, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p6}, Linb;->a()I

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_5
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_9

    nop

    nop

    :goto_6
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p8, p0, Ljez;->d:Ljgc;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0, p2, p3, p4, p5}, Llhz;-><init>(Llko;Lijd;Lcom/google/googlex/gcam/BurstSpec;Lpro;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-object p2, p0, Ljez;->v:Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_a
    new-instance p2, Ljava/util/concurrent/Phaser;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_b
    iput-object p7, p0, Ljez;->c:Lpci;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_c
    iput-object p1, p0, Ljez;->w:Lhwy;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    :goto_e
    const/4 p2, 0x0

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_f
    invoke-direct {p2, p3}, Ljava/util/concurrent/Phaser;-><init>(I)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_10
    iput-object p6, p0, Ljez;->b:Linb;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_11
    iput p9, p0, Ljez;->e:I

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_12
    iput-object p2, p0, Ljez;->f:Ljava/util/UUID;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_13
    const/4 p3, 0x2

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

    nop

    :goto_14
    iput p2, p0, Ljez;->h:I

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

    :goto_15
    iput-object p2, p0, Ljez;->g:Ljava/util/concurrent/Phaser;

    nop

    goto/32 :goto_3

    nop

    nop
.end method


# virtual methods
.method public final a()Ljava/util/ArrayList;
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_9

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x11

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v1, p0, Ljez;->v:Ljava/util/ArrayList;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_7
    return-object v0

    nop

    nop

    :goto_8
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_8

    nop

    nop

    :goto_a
    goto/32 :goto_5

    nop

    nop

    :goto_b
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p0, p0, Ljez;->v:Ljava/util/ArrayList;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x9

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final b()V
    .locals 5

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0xb

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {v0}, Llxa;->j()Llxm;

    :goto_3
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v4}, Lcom/google/googlex/gcam/FrameMetadata;->d()J

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    if-eqz v1, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_6
    goto/16 :goto_19

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lt v2, v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_12

    nop

    nop

    :goto_9
    iget-object v3, v3, Ltcv;->d:Ljava/lang/Runnable;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_a
    add-int/lit8 v2, v2, 0x1

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

    :goto_b
    check-cast v3, Ltcv;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Ljez;->a()Ljava/util/ArrayList;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_d
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1f

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Ljez;->e()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_12
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_13
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_14
    invoke-interface {v0}, Lpci;->close()V

    goto/32 :goto_f

    nop

    nop

    :goto_15
    invoke-super {p0}, Llhz;->b()V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_16
    iget-object v0, p0, Llhz;->t:Llko;

    nop

    nop

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

    :goto_17
    iget-object v0, v0, Llko;->d:Ljava/lang/Object;

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

    :goto_18
    const/4 v2, 0x0

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v4, v3, Ltcv;->b:Lcom/google/googlex/gcam/FrameMetadata;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1b
    const v1, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    goto/32 :goto_a

    nop

    nop

    :goto_1e
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_11

    nop

    nop

    :goto_20
    goto/32 :goto_21

    nop

    nop

    :goto_21
    iget-object v0, p0, Ljez;->c:Lpci;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop
.end method

.method public final c(Lpge;)V
    .locals 4

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v1, Lcom/google/googlex/gcam/SpatialGainMap;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-string p1, "No valid RAW image found for frame %s, adding empty frame."

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_3
    iget-wide v1, p1, Lpgi;->c:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/16 v1, 0x88e

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_6
    iget-object p0, p0, Ljez;->v:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Ljez;->w:Lhwy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_8
    new-instance v2, Lgbg;

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {p1}, Lpge;->b()Lpgi;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_a
    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p0, p0, Ljez;->v:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_c
    if-nez v0, :cond_0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    :goto_d
    const v0, 0x3

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_e
    invoke-direct {v1}, Lcom/google/googlex/gcam/SpatialGainMap;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_10
    sget-object v0, Ljez;->u:Lsdb;

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

    nop

    :goto_11
    invoke-direct {p1}, Lcom/google/googlex/gcam/RawWriteView;-><init>()V

    goto/32 :goto_29

    nop

    nop

    :goto_12
    invoke-direct {v2, v3}, Lgbg;-><init>(I)V

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_13
    return-void

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :cond_1
    goto/32 :goto_2b

    nop

    :goto_18
    invoke-direct {v3, p1, v0, v1, v2}, Ltcv;-><init>(Lcom/google/googlex/gcam/RawWriteView;Lcom/google/googlex/gcam/FrameMetadata;Lcom/google/googlex/gcam/SpatialGainMap;Ljava/lang/Runnable;)V

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_19
    invoke-super {p0, p1}, Llhz;->c(Lpge;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_2c

    nop

    nop

    :goto_1b
    goto :goto_22

    nop

    :goto_1c
    goto/32 :goto_21

    nop

    nop

    :goto_1d
    if-nez p1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_3

    nop

    nop

    :goto_1e
    new-instance v3, Ltcv;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_1f
    invoke-interface {v0, p1, v1, v2}, Lscz;->u(Ljava/lang/String;J)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_26

    nop

    nop

    :goto_21
    const-wide/16 v1, -0x1

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const v1, 0x7

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_24
    new-instance p1, Lcom/google/googlex/gcam/RawWriteView;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const/16 v3, 0x14

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_26
    return-void

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v0, p1}, Lhwy;->t(Lpge;)Ltcv;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_29
    new-instance v0, Lcom/google/googlex/gcam/FrameMetadata;

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-direct {v0}, Lcom/google/googlex/gcam/FrameMetadata;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_27

    nop

    :goto_2c
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized d()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

    nop

    nop

    :goto_1
    monitor-enter p0

    nop

    :try_start_1
    iget-object v0, p0, Ljez;->j:Ltcx;

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ltcx;->b()V

    const/4 v0, 0x0

    nop

    iput-object v0, p0, Ljez;->j:Ltcx;

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_5

    nop

    nop

    :goto_2
    monitor-exit p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :cond_0
    :try_start_2
    iget-object v0, p0, Llhz;->t:Llko;

    nop

    nop

    nop

    iget-object v0, v0, Llko;->d:Ljava/lang/Object;

    nop

    invoke-interface {v0}, Llxa;->j()Llxm;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    throw v0

    nop

    nop

    nop

    nop

    :goto_5
    monitor-exit p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Ljez;->g:Ljava/util/concurrent/Phaser;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Ljava/util/concurrent/Phaser;->arrive()I

    goto/32 :goto_0

    nop

    nop

    nop
.end method
