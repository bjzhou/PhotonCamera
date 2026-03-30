.class final Lkwz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lkwv;


# instance fields
.field private final a:Lcom/google/android/apps/camera/stats/ViewfinderJankSession;

.field private b:D


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/stats/ViewfinderJankSession;)V
    .locals 2

    goto/32 :goto_1

    nop

    nop

    :goto_0
    const-wide v0, 0x4040800000000000L    # 33.0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_4
    iput-wide v0, p0, Lkwz;->b:D

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_8

    nop

    :goto_a
    iput-object p1, p0, Lkwz;->a:Lcom/google/android/apps/camera/stats/ViewfinderJankSession;

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

    :goto_b
    return-void

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0xb

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lpro;DD)V
    .locals 9

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_0
    if-gtz p5, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sub-double v4, p2, v0

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

    :goto_2
    iput p5, p4, Lcom/google/android/apps/camera/stats/ViewfinderJankSession;->d:I

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-wide v0, p0, Lkwz;->b:D

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

    :goto_5
    const-wide v2, 0x4040800000000000L    # 33.0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int/lit8 p5, p5, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_7
    goto/32 :goto_21

    nop

    nop

    :goto_8
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_20

    nop

    :goto_9
    if-gtz p5, :cond_2

    nop

    goto/32 :goto_28

    nop

    nop

    :cond_2
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_a
    cmpl-double p1, p2, p4

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_b
    iput-wide p2, p0, Lkwz;->b:D

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_25

    nop

    nop

    :goto_d
    const-wide/high16 p4, 0x4026000000000000L    # 11.0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_e
    cmpl-double p5, v4, v6

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_f
    div-double/2addr p2, p4

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

    :goto_10
    const v0, 0x12

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    :goto_12
    goto/32 :goto_b

    nop

    nop

    :goto_13
    iput-wide p2, p0, Lkwz;->b:D

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_14
    cmpl-double p5, v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    add-double/2addr p2, p4

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object p4, p0, Lkwz;->a:Lcom/google/android/apps/camera/stats/ViewfinderJankSession;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_17
    div-double/2addr v4, v0

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-gtz p1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_3
    goto/32 :goto_1a

    nop

    nop

    :goto_19
    iget-object v6, p4, Lcom/google/android/apps/camera/stats/ViewfinderJankSession;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_1a
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_1b
    const v1, 0x1a

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

    nop

    :goto_1c
    iget-wide p4, p0, Lkwz;->b:D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1d
    if-gez p5, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_19

    nop

    nop

    :goto_1e
    iget p5, p4, Lcom/google/android/apps/camera/stats/ViewfinderJankSession;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1f
    cmpl-double p1, p2, v2

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-gez p5, :cond_5

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :cond_5
    :try_start_0
    iget p5, p4, Lcom/google/android/apps/camera/stats/ViewfinderJankSession;->e:I

    nop

    nop

    add-int/lit8 p5, p5, 0x1

    nop

    nop

    nop

    nop

    iput p5, p4, Lcom/google/android/apps/camera/stats/ViewfinderJankSession;->e:I

    nop

    goto :goto_23

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    goto :goto_24

    nop

    nop

    nop

    nop

    :goto_23
    const-wide/high16 v7, 0x3ff8000000000000L    # 1.5

    nop

    nop

    nop

    nop

    cmpl-double p5, v4, v7

    nop

    nop

    nop

    if-ltz p5, :cond_6

    nop

    nop

    nop

    iget v7, p4, Lcom/google/android/apps/camera/stats/ViewfinderJankSession;->f:I

    nop

    nop

    nop

    nop

    add-int/lit8 v7, v7, 0x1

    nop

    nop

    nop

    nop

    nop

    iput v7, p4, Lcom/google/android/apps/camera/stats/ViewfinderJankSession;->f:I

    nop

    nop

    nop

    :cond_6
    const-wide/high16 v7, 0x4014000000000000L    # 5.0

    nop

    nop

    nop

    cmpl-double v4, v4, v7

    nop

    nop

    nop

    nop

    if-ltz v4, :cond_7

    nop

    nop

    nop

    iget v4, p4, Lcom/google/android/apps/camera/stats/ViewfinderJankSession;->g:I

    nop

    nop

    nop

    add-int/lit8 v4, v4, 0x1

    nop

    nop

    nop

    iput v4, p4, Lcom/google/android/apps/camera/stats/ViewfinderJankSession;->g:I

    nop

    nop

    nop

    nop

    nop

    :cond_7
    if-ltz p5, :cond_8

    nop

    invoke-static {p1, p2, p3, v0, v1}, Lcom/google/android/apps/camera/stats/ViewfinderJankSession;->c(Lpro;DD)Lsml;

    move-result-object p1

    nop

    iget-object p5, p4, Lcom/google/android/apps/camera/stats/ViewfinderJankSession;->c:Ljava/util/List;

    nop

    invoke-interface {p5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p4, p1}, Lcom/google/android/apps/camera/stats/ViewfinderJankSession;->a(Lsml;)V

    :cond_8
    monitor-exit v6

    nop

    nop

    goto :goto_28

    nop

    nop

    :goto_24
    monitor-exit v6

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    return-void

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_7

    nop

    nop

    :goto_27
    throw p0

    nop

    nop

    :goto_28
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_29
    mul-double/2addr p4, v0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_2a
    if-gtz p1, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_9
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_2b
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_2c
    cmpl-double p5, p2, v2

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_2e
    monitor-enter v6

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop
.end method
