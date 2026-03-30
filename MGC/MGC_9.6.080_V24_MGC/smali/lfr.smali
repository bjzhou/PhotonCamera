.class public final Llfr;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lpcu;

.field public b:I

.field public c:Ljava/util/concurrent/CountDownLatch;

.field public final d:Loxv;

.field public final e:Loxv;

.field private f:Z

.field private g:F

.field private h:F

.field private final i:Lsuk;

.field private j:Lsui;

.field private k:Ljava/lang/Float;

.field private l:Ljava/lang/Float;

.field private m:Ljava/lang/Float;

.field private n:Ljava/lang/Float;

.field private o:Ljava/lang/Float;

.field private p:Ljava/lang/Float;

.field private q:Ljava/lang/Float;

.field private r:Lpnu;

.field private s:Loyd;

.field private t:Z

.field private final u:Lhoh;

.field private final v:Lhwy;


# direct methods
.method private final declared-synchronized 1a36313b7ed15ba14e0acb4da569b8b7m(F)F
    .locals 4

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    monitor-enter p0

    nop

    nop

    nop

    :try_start_0
    invoke-direct {p0}, Llfr;->ccb4c19b7dbd16be9d2a43125797659dm()F

    move-result v0

    nop

    nop

    const/high16 v1, 0x3f800000    # 1.0f

    nop

    nop

    invoke-static {p1, v1, v0}, Lrrf;->V(FFF)F

    move-result p1

    nop

    nop

    nop

    const/high16 v1, -0x40800000    # -1.0f

    nop

    nop

    nop

    add-float/2addr p1, v1

    nop

    nop

    nop

    nop

    add-float/2addr v0, v1

    nop

    div-float/2addr p1, v0

    nop

    nop

    nop

    nop

    nop

    float-to-double v0, p1

    nop

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    nop

    nop

    nop

    nop

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

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

    nop

    :goto_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    :goto_4
    return p1

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_8

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_7
    double-to-float p1, v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_8
    throw p1

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_a
    const v0, 0x1e

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop
.end method

.method public constructor <init>(Lhoh;Lhwy;Lsuk;Lpct;)V
    .locals 9

    goto/32 :goto_2

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

    goto/32 :goto_15

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    :goto_1
    const v1, 0x2

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    const v0, 0x4

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    iput v2, p0, Llfr;->h:F

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v4, 0x0

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

    :goto_5
    new-instance v1, Loxv;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_6
    move-object v2, v8

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct/range {v2 .. v7}, Llfq;-><init>(FFFIF)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const-string p1, "DualEvCtrl"

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

    :goto_a
    add-int v0, v0, v1

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

    :goto_b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_c
    iput v0, p0, Llfr;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_d
    iput p1, p0, Llfr;->g:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_e
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_f
    const/4 v0, 0x0

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_11
    iput-object p3, p0, Llfr;->i:Lsuk;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iput-object p1, p0, Llfr;->a:Lpcu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-interface {p4, p1}, Lpct;->a(Ljava/lang/String;)Lpcu;

    move-result-object p1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_16

    nop

    nop

    :goto_16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iput-object v1, p0, Llfr;->e:Loxv;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iput-object v1, p0, Llfr;->d:Loxv;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_19
    invoke-direct {v1, v8}, Loxv;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v7, 0x0

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1c
    sget-object p1, Lhmm;->a:Lhmn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_1d
    new-instance v1, Loxv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const/high16 p1, 0x3f000000    # 0.5f

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1f
    invoke-direct {v1, v3}, Loxv;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_20
    new-instance v8, Llfq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_21
    iput-object p1, p0, Llfr;->u:Lhoh;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_22
    const/4 v3, 0x0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_23
    iput-object p2, p0, Llfr;->v:Lhwy;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    return-void

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_27
    iput-boolean v0, p0, Llfr;->f:Z

    nop

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
.end method

.method private final declared-synchronized a74c8a79bf0ef0e20983317119c87838m(F)F
    .locals 4

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-enter p0

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

    :goto_1
    mul-float/2addr p1, v0

    nop

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

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-float/2addr p1, v0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_5
    add-float/2addr p1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    const v0, 0xa

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_7
    double-to-float v0, v0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_8
    float-to-double v0, p1

    nop

    nop

    nop

    :try_start_0
    invoke-direct {p0}, Llfr;->ccb4c19b7dbd16be9d2a43125797659dm()F

    move-result p1

    nop

    const-wide v2, 0x3ff5555560000000L    # 1.3333333730697632

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_9
    return p1

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_a

    nop

    nop

    :goto_a
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

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

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_e
    const/high16 v1, -0x40800000    # -1.0f

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_f
    const/high16 v0, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_10
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_13
    monitor-exit p0

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
.end method

.method private final ccb4c19b7dbd16be9d2a43125797659dm()F
    .locals 3

    goto/32 :goto_1

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

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    const v0, 0x3

    nop

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

    :goto_2
    div-float/2addr v1, v2

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
    goto/16 :goto_11

    nop

    :goto_4
    goto/32 :goto_10

    nop

    nop

    :goto_5
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-eqz v1, :cond_0

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

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

    :goto_a
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto :goto_4

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-nez v1, :cond_1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_1
    goto/32 :goto_16

    nop

    nop

    :goto_e
    mul-float/2addr v1, p0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0, v2}, Lhoh;->p(Lhmn;)Z

    move-result p0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_10
    move v1, v0

    nop

    nop

    :goto_11
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v2, p0, Llfr;->n:Ljava/lang/Float;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object p0, p0, Llfr;->u:Lhoh;

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-nez p0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_20

    nop

    nop

    :goto_15
    const v1, 0x7

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v1, p0, Llfr;->o:Ljava/lang/Float;

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

    :goto_17
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v1, p0, Llfr;->n:Ljava/lang/Float;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1a
    if-ne v0, v1, :cond_3

    nop

    nop

    goto/32 :goto_1c

    nop

    :cond_3
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1b
    goto :goto_26

    nop

    :goto_1c
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_1f
    const v0, 0x4174cccd    # 15.3f

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const/high16 p0, 0x40800000    # 4.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_22
    if-lez v0, :cond_4

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_17

    nop

    :goto_23
    return p0

    nop

    nop

    :goto_24
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_25
    const v0, 0x413e6666    # 11.9f

    nop

    :goto_26
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-boolean v1, p0, Llfr;->f:Z

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_28
    sget-object v2, Lhmf;->c:Lhmn;

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
.end method

.method private final declared-synchronized d116db4599d9ddc8c35e61366a4f4967m(FFF)V
    .locals 2

    goto/32 :goto_1

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x17

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

    nop

    :goto_2
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_2

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    monitor-enter p0

    nop

    nop

    :try_start_1
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    nop

    nop

    iput-object v0, p0, Llfr;->n:Ljava/lang/Float;

    nop

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    iput-object v0, p0, Llfr;->o:Ljava/lang/Float;

    nop

    nop

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    nop

    nop

    nop

    iput-object p3, p0, Llfr;->p:Ljava/lang/Float;

    nop

    nop

    div-float/2addr p2, p1

    nop

    invoke-direct {p0, p2}, Llfr;->1a36313b7ed15ba14e0acb4da569b8b7m(F)F

    move-result p1

    nop

    nop

    nop

    invoke-static {p1}, Llfr;->m(F)F

    move-result p1

    nop

    nop

    nop

    float-to-double p1, p1

    nop

    invoke-static {p1, p2}, Ljava/lang/Math;->log(D)D

    move-result-wide p1

    nop

    nop

    iget p3, p0, Llfr;->h:F

    nop

    nop

    nop

    invoke-static {p3}, Llfr;->m(F)F

    move-result p3

    nop

    nop

    nop

    nop

    nop

    float-to-double v0, p3

    nop

    nop

    nop

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    nop

    nop

    div-double/2addr p1, v0

    nop

    nop

    double-to-float p1, p1

    nop

    nop

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    nop

    nop

    nop

    nop

    iput-object p1, p0, Llfr;->q:Ljava/lang/Float;

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
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

    :goto_9
    add-int v0, v0, v1

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

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_b
    throw p1

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private static m(F)F
    .locals 2

    goto/32 :goto_9

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

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_1
    add-int v0, v0, v1

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

    :goto_2
    const v1, 0x3f7851ec    # 0.97f

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

    :goto_3
    goto/32 :goto_b

    nop

    nop

    :goto_4
    invoke-static {p0, v0, v1}, Lrrf;->V(FFF)F

    move-result p0

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
    const v0, 0x3cf5c28f    # 0.03f

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    return p0

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
    const v1, 0xe

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_9
    const v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    :goto_b
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_c
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

    nop
.end method

.method private static r(F)Z
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    if-gez v0, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    :goto_1
    const/4 p0, 0x1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x0

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

    :goto_5
    if-lez p0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return p0

    nop

    nop

    nop

    :goto_7
    cmpg-float p0, p0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_8
    const/4 p0, 0x0

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

    :goto_9
    const/high16 v0, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    cmpl-float v0, p0, v0

    nop

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized a(FF)Llfq;
    .locals 8

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_6

    nop

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

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    monitor-exit p0

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

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_6
    monitor-enter p0

    nop

    :try_start_0
    iget-boolean v0, p0, Llfr;->t:Z

    nop

    if-nez v0, :cond_1

    nop

    nop

    goto/16 :goto_14

    nop

    nop

    nop

    nop

    :cond_1
    iget-object v0, p0, Llfr;->r:Lpnu;

    nop

    nop

    if-eqz v0, :cond_6

    nop

    nop

    invoke-static {p1}, Llfr;->r(F)Z

    move-result v1

    nop

    nop

    nop

    if-eqz v1, :cond_6

    nop

    nop

    nop

    invoke-static {p2}, Llfr;->r(F)Z

    move-result v1

    nop

    nop

    if-eqz v1, :cond_6

    nop

    nop

    invoke-interface {v0}, Lpnu;->a()F

    move-result v0

    nop

    iget-object v1, p0, Llfr;->r:Lpnu;

    nop

    nop

    invoke-interface {v1}, Lpnu;->f()I

    move-result v1

    nop

    nop

    nop

    nop

    iget-object v2, p0, Llfr;->r:Lpnu;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Lpnu;->e()I

    move-result v2

    nop

    int-to-float v1, v1

    nop

    nop

    mul-float/2addr v1, v0

    nop

    nop

    nop

    int-to-float v2, v2

    nop

    nop

    nop

    nop

    mul-float/2addr v2, v0

    nop

    nop

    nop

    nop

    iget-object v3, p0, Llfr;->n:Ljava/lang/Float;

    nop

    nop

    if-eqz v3, :cond_4

    nop

    nop

    nop

    nop

    nop

    iget-object v3, p0, Llfr;->o:Ljava/lang/Float;

    nop

    if-eqz v3, :cond_4

    nop

    iget-object v3, p0, Llfr;->p:Ljava/lang/Float;

    nop

    if-nez v3, :cond_2

    nop

    goto/16 :goto_10

    nop

    nop

    nop

    nop

    :cond_2
    sub-float/2addr v2, v1

    nop

    nop

    mul-float/2addr v2, p1

    nop

    nop

    add-float/2addr v1, v2

    nop

    nop

    nop

    nop

    iget-object p1, p0, Llfr;->q:Ljava/lang/Float;

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Llfr;->u:Lhoh;

    nop

    sget-object v2, Lhmf;->a:Lhmn;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1, v2}, Lhoh;->p(Lhmn;)Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    nop

    nop

    nop

    if-eqz p1, :cond_5

    nop

    nop

    nop

    float-to-double p1, v1

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    nop

    nop

    nop

    nop

    nop

    double-to-float p1, p1

    nop

    nop

    div-float/2addr v1, v0

    nop

    nop

    nop

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v6

    nop

    iget-object p2, p0, Llfr;->n:Ljava/lang/Float;

    nop

    nop

    nop

    nop

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    nop

    nop

    mul-float v3, p2, p1

    nop

    iget-object p2, p0, Llfr;->o:Ljava/lang/Float;

    nop

    nop

    nop

    nop

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    nop

    mul-float v4, p2, p1

    nop

    nop

    nop

    nop

    nop

    iget-object p2, p0, Llfr;->p:Ljava/lang/Float;

    nop

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    nop

    nop

    mul-float v5, p2, p1

    nop

    nop

    nop

    new-instance p1, Llfq;

    nop

    nop

    nop

    nop

    const/high16 v7, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    move-object v2, p1

    nop

    nop

    invoke-direct/range {v2 .. v7}, Llfq;-><init>(FFFIF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_12

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_8
    const v1, 0xe

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

    :goto_9
    float-to-double v4, v1

    nop

    nop

    nop

    nop

    :try_start_1
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    nop

    nop

    nop

    nop

    nop

    double-to-float p1, v2

    nop

    nop

    nop

    nop

    nop

    div-float/2addr v1, v0

    nop

    nop

    nop

    float-to-double v2, p2

    nop

    nop

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p2

    nop

    nop

    nop

    nop

    nop

    iget-object v0, p0, Llfr;->q:Ljava/lang/Float;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    nop

    nop

    nop

    float-to-double v0, v0

    nop

    nop

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    nop

    nop

    double-to-float v0, v0

    nop

    nop

    invoke-direct {p0, v0}, Llfr;->a74c8a79bf0ef0e20983317119c87838m(F)F

    move-result v0

    nop

    iget-object v1, p0, Llfr;->n:Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    nop

    mul-float v3, v1, p1

    nop

    nop

    nop

    nop

    nop

    mul-float v4, v3, v0

    nop

    nop

    nop

    nop

    iget-object p1, p0, Llfr;->l:Ljava/lang/Float;

    nop

    nop

    nop

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    nop

    div-float p1, v4, p1

    nop

    nop

    nop

    nop

    iget-object v1, p0, Llfr;->m:Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    nop

    nop

    nop

    mul-float v5, v1, p1

    nop

    nop

    if-nez p2, :cond_3

    nop

    nop

    nop

    const/4 p2, -0x1

    nop

    :cond_3
    move v6, p2

    nop

    nop

    iget-object p1, p0, Llfr;->o:Ljava/lang/Float;

    nop

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    nop

    nop

    iget-object p2, p0, Llfr;->n:Ljava/lang/Float;

    nop

    nop

    nop

    nop

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    nop

    nop

    nop

    nop

    nop

    div-float/2addr p1, p2

    nop

    nop

    nop

    nop

    div-float v7, v0, p1

    nop

    nop

    nop

    new-instance p1, Llfq;

    nop

    nop

    nop

    nop

    move-object v2, p1

    nop

    nop

    nop

    invoke-direct/range {v2 .. v7}, Llfq;-><init>(FFFIF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_b
    return-object p1

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    :try_start_2
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    throw p1

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_15

    nop

    nop

    :goto_e
    const v0, 0x11

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

    :goto_f
    return-object p1

    nop

    nop

    nop

    nop

    :cond_4
    :goto_10
    :try_start_3
    iget-object p1, p0, Llfr;->k:Ljava/lang/Float;

    nop

    nop

    nop

    nop

    if-eqz p1, :cond_6

    nop

    nop

    nop

    nop

    iget-object p2, p0, Llfr;->l:Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    if-eqz p2, :cond_6

    nop

    nop

    nop

    nop

    iget-object p2, p0, Llfr;->m:Ljava/lang/Float;

    nop

    nop

    if-eqz p2, :cond_6

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    nop

    iget-object p2, p0, Llfr;->l:Ljava/lang/Float;

    nop

    nop

    nop

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    nop

    nop

    nop

    iget-object v0, p0, Llfr;->m:Ljava/lang/Float;

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p0, p1, p2, v0}, Llfr;->d116db4599d9ddc8c35e61366a4f4967m(FFF)V

    new-instance p1, Llfq;

    nop

    nop

    nop

    nop

    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    nop

    const/4 v6, 0x0

    nop

    const/4 v2, 0x0

    nop

    const/4 v3, 0x0

    nop

    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    move-object v1, p1

    nop

    nop

    nop

    invoke-direct/range {v1 .. v6}, Llfq;-><init>(FFFIF)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_11
    return-object p1

    nop

    nop

    :cond_5
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_12
    monitor-exit p0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_13
    return-object p1

    nop

    nop

    nop

    nop

    :cond_6
    :goto_14
    :try_start_4
    new-instance p1, Llfq;

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    const/4 v5, 0x0

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    move-object v0, p1

    nop

    nop

    nop

    nop

    nop

    invoke-direct/range {v0 .. v5}, Llfq;-><init>(FFFIF)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/32 :goto_a

    nop

    nop

    :goto_15
    goto/32 :goto_2

    nop
.end method

.method public final declared-synchronized b()Llft;
    .locals 4

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    throw v0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x12

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

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_6
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Llfr;->k:Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    const/high16 v1, 0x3f000000    # 0.5f

    nop

    nop

    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    iget-object v2, p0, Llfr;->l:Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    if-nez v2, :cond_0

    nop

    nop

    goto :goto_9

    nop

    nop

    :cond_0
    iget-object v2, p0, Llfr;->m:Ljava/lang/Float;

    nop

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    nop

    iget-object v2, p0, Llfr;->l:Ljava/lang/Float;

    nop

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    nop

    nop

    nop

    nop

    nop

    iget-object v3, p0, Llfr;->m:Ljava/lang/Float;

    nop

    nop

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    div-float/2addr v2, v0

    nop

    nop

    nop

    iput v1, p0, Llfr;->g:F

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p0, v2}, Llfr;->1a36313b7ed15ba14e0acb4da569b8b7m(F)F

    move-result v0

    nop

    iput v0, p0, Llfr;->h:F

    nop

    nop

    nop

    nop

    iget v1, p0, Llfr;->b:I

    nop

    nop

    nop

    nop

    nop

    if-lez v1, :cond_1

    nop

    const v1, 0x3da3d70a    # 0.08f

    nop

    nop

    nop

    nop

    const v2, 0x3f6b851f    # 0.92f

    nop

    nop

    invoke-static {v0, v1, v2}, Lrrf;->V(FFF)F

    move-result v0

    nop

    nop

    nop

    nop

    nop

    iput v0, p0, Llfr;->h:F

    nop

    :cond_1
    iget v1, p0, Llfr;->g:F

    nop

    nop

    nop

    nop

    new-instance v2, Llft;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v2, v1, v0}, Llft;-><init>(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_8
    return-object v2

    nop

    nop

    nop

    :cond_2
    :goto_9
    :try_start_1
    new-instance v0, Llft;

    nop

    nop

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    invoke-direct {v0, v1, v2}, Llft;-><init>(FF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_d

    nop

    nop

    :goto_a
    goto/32 :goto_1

    nop

    :goto_b
    return-object v0

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

    :try_start_2
    monitor-exit p0

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x17

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_d
    monitor-exit p0

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

    :goto_e
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_0

    nop
.end method

.method public final declared-synchronized c()Loyd;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    throw v0

    nop

    nop

    :goto_2
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    iget-object v0, p0, Llfr;->d:Loxv;

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

    :goto_3
    monitor-exit p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized d()Lslq;
    .locals 8

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    :cond_0
    :goto_1
    :try_start_0
    invoke-virtual {v0}, Ltkb;->i()Ltkg;

    move-result-object v0

    nop

    check-cast v0, Lslq;

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    monitor-enter p0

    nop

    nop

    :try_start_1
    sget-object v0, Lslq;->a:Lslq;

    nop

    nop

    invoke-virtual {v0}, Ltkg;->m()Ltkb;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    iget-boolean v1, p0, Llfr;->t:Z

    nop

    nop

    nop

    if-eqz v1, :cond_0

    nop

    nop

    nop

    iget-object v1, p0, Llfr;->n:Ljava/lang/Float;

    nop

    if-eqz v1, :cond_0

    nop

    nop

    iget-object v2, p0, Llfr;->o:Ljava/lang/Float;

    nop

    nop

    nop

    if-nez v2, :cond_1

    nop

    goto/16 :goto_1

    nop

    nop

    :cond_1
    iget-object v2, p0, Llfr;->p:Ljava/lang/Float;

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    nop

    nop

    nop

    iget-object v2, p0, Llfr;->o:Ljava/lang/Float;

    nop

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    nop

    nop

    iget-object v3, p0, Llfr;->p:Ljava/lang/Float;

    nop

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    nop

    nop

    iget-object v4, p0, Llfr;->d:Loxv;

    nop

    nop

    nop

    nop

    nop

    iget-object v4, v4, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    check-cast v4, Llfq;

    nop

    iget-object v5, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Ltkg;->C()Z

    move-result v5

    nop

    nop

    nop

    nop

    if-nez v5, :cond_2

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ltkb;->o()V

    :cond_2
    iget-object v5, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    move-object v6, v5

    nop

    nop

    check-cast v6, Lslq;

    nop

    nop

    nop

    nop

    nop

    iget v7, v6, Lslq;->b:I

    nop

    nop

    nop

    or-int/lit8 v7, v7, 0x1

    nop

    nop

    nop

    nop

    iput v7, v6, Lslq;->b:I

    nop

    nop

    iput v1, v6, Lslq;->c:F

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Ltkg;->C()Z

    move-result v1

    nop

    nop

    nop

    nop

    if-nez v1, :cond_3

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ltkb;->o()V

    :cond_3
    iget-object v1, v0, Ltkb;->b:Ltkg;

    nop

    move-object v5, v1

    nop

    check-cast v5, Lslq;

    nop

    nop

    nop

    iget v6, v5, Lslq;->b:I

    nop

    nop

    nop

    or-int/lit8 v6, v6, 0x2

    nop

    nop

    nop

    iput v6, v5, Lslq;->b:I

    nop

    iput v2, v5, Lslq;->d:F

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ltkg;->C()Z

    move-result v1

    nop

    if-nez v1, :cond_4

    nop

    invoke-virtual {v0}, Ltkb;->o()V

    :cond_4
    iget-object v1, v0, Ltkb;->b:Ltkg;

    nop

    nop

    move-object v2, v1

    nop

    nop

    nop

    check-cast v2, Lslq;

    nop

    nop

    nop

    iget v5, v2, Lslq;->b:I

    nop

    or-int/lit8 v5, v5, 0x4

    nop

    nop

    nop

    iput v5, v2, Lslq;->b:I

    nop

    nop

    nop

    iput v3, v2, Lslq;->e:F

    nop

    nop

    nop

    nop

    iget v2, v4, Llfq;->a:F

    nop

    nop

    invoke-virtual {v1}, Ltkg;->C()Z

    move-result v1

    nop

    nop

    nop

    nop

    if-nez v1, :cond_5

    nop

    nop

    invoke-virtual {v0}, Ltkb;->o()V

    :cond_5
    iget-object v1, v0, Ltkb;->b:Ltkg;

    nop

    move-object v3, v1

    nop

    nop

    check-cast v3, Lslq;

    nop

    nop

    nop

    nop

    nop

    iget v5, v3, Lslq;->b:I

    nop

    or-int/lit8 v5, v5, 0x8

    nop

    iput v5, v3, Lslq;->b:I

    nop

    nop

    nop

    nop

    nop

    iput v2, v3, Lslq;->f:F

    nop

    nop

    iget v2, v4, Llfq;->b:F

    nop

    invoke-virtual {v1}, Ltkg;->C()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    if-nez v1, :cond_6

    nop

    nop

    invoke-virtual {v0}, Ltkb;->o()V

    :cond_6
    iget-object v1, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    move-object v3, v1

    nop

    nop

    nop

    nop

    nop

    check-cast v3, Lslq;

    nop

    iget v5, v3, Lslq;->b:I

    nop

    or-int/lit8 v5, v5, 0x10

    nop

    nop

    iput v5, v3, Lslq;->b:I

    nop

    nop

    nop

    nop

    nop

    iput v2, v3, Lslq;->g:F

    nop

    nop

    iget v2, v4, Llfq;->c:F

    nop

    invoke-virtual {v1}, Ltkg;->C()Z

    move-result v1

    nop

    nop

    nop

    nop

    if-nez v1, :cond_7

    nop

    invoke-virtual {v0}, Ltkb;->o()V

    :cond_7
    iget-object v1, v0, Ltkb;->b:Ltkg;

    nop

    check-cast v1, Lslq;

    nop

    nop

    nop

    nop

    nop

    iget v3, v1, Lslq;->b:I

    nop

    nop

    nop

    nop

    or-int/lit8 v3, v3, 0x20

    nop

    nop

    nop

    iput v3, v1, Lslq;->b:I

    nop

    nop

    nop

    nop

    nop

    iput v2, v1, Lslq;->h:F

    nop

    nop

    nop

    invoke-virtual {v0}, Ltkb;->i()Ltkg;

    move-result-object v0

    nop

    nop

    nop

    nop

    check-cast v0, Lslq;

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_b

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

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0xe

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_d

    nop

    nop

    :goto_6
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x19

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

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
    if-lez v0, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_8
    goto/32 :goto_5

    nop

    :goto_a
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_b
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_c
    throw v0

    nop

    :goto_d
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-object v0

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

    :try_start_2
    monitor-exit p0

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_c

    nop

    nop

    :goto_f
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e()Lsui;
    .locals 3

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    :goto_2
    iput-object v0, p0, Llfr;->j:Lsui;

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_c

    nop

    nop

    :goto_4
    goto/32 :goto_6

    nop

    nop

    :goto_5
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_9
    if-nez v0, :cond_1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

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
    const v1, 0x18

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

    :goto_c
    iget-object p0, p0, Llfr;->j:Lsui;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x15

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {v1, p0, v2}, Lesh;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {v0, v1}, Lsuk;->b(Ljava/util/concurrent/Callable;)Lsui;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_10
    iget-object v0, p0, Llfr;->i:Lsuk;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/16 v2, 0x13

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-interface {v0}, Lsui;->isDone()Z

    move-result v0

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

    :goto_13
    if-nez v0, :cond_2

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_2
    :goto_14
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_15
    new-instance v1, Lesh;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v0, p0, Llfr;->j:Lsui;

    nop

    nop

    goto/32 :goto_9

    nop

    nop
.end method

.method public final declared-synchronized f()V
    .locals 5

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_1

    nop

    :goto_3
    const-string v0, "Resetting dual ev (touchCounter : "

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_5
    const v1, 0xc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_6
    const v0, 0x11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_7
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_a
    :try_start_0
    iget-object v2, p0, Llfr;->a:Lpcu;

    nop

    nop

    nop

    nop

    nop

    iget v3, p0, Llfr;->b:I

    nop

    new-instance v4, Ljava/lang/StringBuilder;

    nop

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")."

    nop

    nop

    nop

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-interface {v2, v0}, Lpcu;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Llfr;->g()V

    iput-boolean v1, p0, Llfr;->t:Z

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_b
    if-eqz v2, :cond_1

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

    :cond_1
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    :catchall_0
    move-exception v0

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_10

    nop

    nop

    :goto_d
    monitor-enter p0

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

    :goto_e
    add-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    :try_start_2
    iput v1, p0, Llfr;->b:I

    nop

    nop

    nop

    invoke-virtual {p0}, Llfr;->j()Z

    move-result v2

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_10
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_12
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized g()V
    .locals 7

    goto/32 :goto_b

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_4
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    new-instance v6, Llfq;

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    nop

    const/4 v5, 0x0

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    move-object v0, v6

    nop

    nop

    invoke-direct/range {v0 .. v5}, Llfq;-><init>(FFFIF)V

    iget-object v0, p0, Llfr;->d:Loxv;

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v6}, Loxv;->a(Ljava/lang/Object;)V

    const/4 v0, 0x0

    nop

    nop

    nop

    iput-object v0, p0, Llfr;->k:Ljava/lang/Float;

    nop

    iput-object v0, p0, Llfr;->l:Ljava/lang/Float;

    nop

    iput-object v0, p0, Llfr;->m:Ljava/lang/Float;

    nop

    nop

    nop

    nop

    iput-object v0, p0, Llfr;->n:Ljava/lang/Float;

    nop

    nop

    nop

    iput-object v0, p0, Llfr;->o:Ljava/lang/Float;

    nop

    nop

    iput-object v0, p0, Llfr;->p:Ljava/lang/Float;

    nop

    nop

    nop

    iput-object v0, p0, Llfr;->q:Ljava/lang/Float;

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    throw v0

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    :goto_7
    return-void

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

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_5

    nop

    nop

    :goto_8
    goto/32 :goto_6

    nop

    :goto_9
    goto/32 :goto_4

    nop

    nop

    :goto_a
    monitor-exit p0

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

    :goto_b
    const v0, 0xa

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_c
    const v1, 0xe

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized h()V
    .locals 5

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    const-string v0, "Tapped to initiate dual ev (touchCounter : "

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x18

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2
    throw v0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_4
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_5
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x17

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    :goto_9
    :try_start_0
    iget v1, p0, Llfr;->b:I

    nop

    nop

    nop

    nop

    nop

    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    add-int/2addr v1, v2

    nop

    iput v1, p0, Llfr;->b:I

    nop

    iget-object v3, p0, Llfr;->a:Lpcu;

    nop

    nop

    nop

    nop

    new-instance v4, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")."

    nop

    nop

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-interface {v3, v0}, Lpcu;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Llfr;->g()V

    iput-boolean v2, p0, Llfr;->t:Z

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_b
    monitor-enter p0

    nop

    nop

    nop

    :try_start_1
    invoke-virtual {p0}, Llfr;->j()Z

    move-result v1

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_3

    nop

    :goto_d
    goto/32 :goto_0

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
    rem-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_10
    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    :try_start_2
    monitor-exit p0

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized i(Lpnu;FFF)V
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x12

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

    :goto_4
    throw p1

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    monitor-enter p0

    nop

    nop

    nop

    :try_start_0
    iput-object p1, p0, Llfr;->r:Lpnu;

    nop

    nop

    nop

    nop

    nop

    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    nop

    iput-boolean p1, p0, Llfr;->f:Z

    nop

    iget-object v0, p0, Llfr;->u:Lhoh;

    nop

    nop

    nop

    nop

    nop

    sget-object v1, Lhmf;->b:Lhmn;

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Lhoh;->p(Lhmn;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_0

    nop

    nop

    nop

    iget-object v0, p0, Llfr;->r:Lpnu;

    nop

    if-eqz v0, :cond_0

    nop

    invoke-interface {v0}, Lpnu;->l()Lpog;

    move-result-object v0

    nop

    sget-object v1, Lpog;->b:Lpog;

    nop

    nop

    nop

    if-ne v0, v1, :cond_0

    nop

    iget-object v0, p0, Llfr;->r:Lpnu;

    nop

    nop

    nop

    invoke-interface {v0}, Lpnu;->u()Ljava/util/List;

    move-result-object v0

    nop

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    nop

    nop

    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    if-ne v0, v1, :cond_0

    nop

    nop

    nop

    iget-object v0, p0, Llfr;->r:Lpnu;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Lpnu;->u()Ljava/util/List;

    move-result-object v0

    nop

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    nop

    check-cast p1, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    nop

    nop

    nop

    nop

    const/high16 v0, 0x40600000    # 3.5f

    nop

    cmpg-float p1, p1, v0

    nop

    nop

    nop

    nop

    if-gez p1, :cond_0

    nop

    nop

    nop

    iput-boolean v1, p0, Llfr;->f:Z

    nop

    nop

    nop

    nop

    nop

    :cond_0
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    nop

    nop

    iput-object p1, p0, Llfr;->k:Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    iput-object p1, p0, Llfr;->l:Ljava/lang/Float;

    nop

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    iput-object p1, p0, Llfr;->m:Ljava/lang/Float;

    nop

    nop

    iget-object p1, p0, Llfr;->c:Ljava/util/concurrent/CountDownLatch;

    nop

    nop

    nop

    nop

    if-eqz p1, :cond_1

    nop

    nop

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_1
    iget-object p1, p0, Llfr;->e:Loxv;

    nop

    div-float/2addr p3, p2

    nop

    nop

    nop

    nop

    invoke-direct {p0, p3}, Llfr;->1a36313b7ed15ba14e0acb4da569b8b7m(F)F

    move-result p2

    nop

    nop

    nop

    nop

    nop

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1, p2}, Loxv;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_4

    nop

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_a
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1

    nop

    :goto_b
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

    :goto_c
    const v0, 0x1b

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized j()Z
    .locals 1

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    const/4 p0, 0x0

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

    :goto_3
    const/4 p0, 0x1

    nop

    goto/32 :goto_5

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
    return p0

    nop

    nop

    :cond_1
    :goto_6
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_7
    monitor-enter p0

    nop

    :try_start_0
    iget-object v0, p0, Llfr;->s:Loyd;

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Llfu;

    nop

    nop

    nop

    nop

    nop

    iget-boolean v0, v0, Llfu;->a:Z

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_1

    nop

    nop

    nop

    iget-object v0, p0, Llfr;->s:Loyd;

    nop

    nop

    invoke-interface {v0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    check-cast v0, Llfu;

    nop

    nop

    nop

    nop

    nop

    iget-boolean v0, v0, Llfu;->b:Z

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    :goto_8
    monitor-exit p0

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

    :goto_9
    return p0

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized k(Lfwv;Loyd;)V
    .locals 3

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_2
    monitor-enter p0

    nop

    :try_start_0
    iput-object p2, p0, Llfr;->s:Loyd;

    nop

    nop

    nop

    invoke-virtual {p1}, Lfwv;->h()Lows;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    const/4 p2, 0x2

    nop

    nop

    nop

    new-array p2, p2, [Loyd;

    nop

    nop

    nop

    nop

    nop

    iget-object v0, p0, Llfr;->v:Lhwy;

    nop

    iget-object v1, v0, Lhwy;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    aput-object v1, p2, v2

    nop

    nop

    nop

    nop

    nop

    iget-object v0, v0, Lhwy;->a:Ljava/lang/Object;

    nop

    const/4 v1, 0x1

    nop

    nop

    nop

    aput-object v0, p2, v1

    nop

    nop

    nop

    invoke-static {p2}, Loyi;->a([Loyd;)Loyd;

    move-result-object p2

    nop

    nop

    new-instance v0, Lkzf;

    nop

    nop

    nop

    const/16 v1, 0x10

    nop

    nop

    invoke-direct {v0, p0, v1}, Lkzf;-><init>(Ljava/lang/Object;I)V

    sget-object v1, Lstd;->a:Lstd;

    nop

    nop

    nop

    nop

    invoke-interface {p2, v0, v1}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object p2

    nop

    invoke-virtual {p1, p2}, Lows;->d(Lpci;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_b

    nop

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

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    throw p1

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    const v0, 0x8

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    :goto_9
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_9

    nop

    :goto_b
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_c
    return-void

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

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

    nop

    nop
.end method

.method public final l()V
    .locals 0

    goto/32 :goto_0

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
.end method
