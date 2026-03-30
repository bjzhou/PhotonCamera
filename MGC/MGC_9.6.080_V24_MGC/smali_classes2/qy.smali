.class public final Lqy;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "PG"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/concurrent/CountDownLatch;

.field public final c:Lulh;

.field private final d:I

.field private final e:J

.field private final f:I

.field private final g:Ljava/lang/Object;

.field private h:Z

.field private i:Lqx;

.field private final j:J

.field private k:Luh;

.field private final l:Lrp;

.field private final m:Lejk;

.field private final n:Lrkg;

.field private final o:Leur;

.field private final p:Lezz;


# direct methods
.method private final 33f5b80483094659737b73d90f80a8a4m(Lqx;)Lsf;
    .locals 21

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_3c

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_3
    iget-wide v4, v4, Luh;->a:J

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v4, :cond_0

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_5
    sub-long/2addr v8, v6

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

    :goto_6
    iget-wide v8, v4, Luh;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_7
    sub-long/2addr v8, v6

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_8
    sub-long v4, v6, v4

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
    goto/32 :goto_18

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

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_b
    iget-object v12, v0, Lqy;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {v10, v8, v9}, Lub;-><init>(J)V

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_d
    iget-wide v8, v4, Luh;->a:J

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v4, v1, Lqx;->b:Lou;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_f
    move-object/from16 v17, v5

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v4, v0, Lqy;->k:Luh;

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-wide v6, v0, Lqy;->j:J

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_13
    move-object/from16 v18, v5

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    move-object v15, v10

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_15
    invoke-direct {v8, v4, v5}, Lub;-><init>(J)V

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_16
    invoke-direct {v10, v8, v9}, Lub;-><init>(J)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_24

    nop

    nop

    :goto_18
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_19
    move-object/from16 v17, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_1a
    new-instance v5, Lsf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    move-object/from16 v18, v8

    nop

    nop

    :goto_1c
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    move-object/from16 v0, p0

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

    :goto_1e
    move-object/from16 v1, p1

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_1f
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_17

    nop

    :goto_20
    iget-wide v6, v1, Lqx;->a:J

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_21
    iget-object v1, v1, Lqx;->c:Ljava/lang/Throwable;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_22
    new-instance v0, Lub;

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_23
    return-object v5

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_25
    new-instance v8, Lub;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_26
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_27
    if-nez v4, :cond_2

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/16 :goto_1c

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_3

    nop

    nop

    :goto_2a
    move-object/from16 v19, v0

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    move-object/from16 v20, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_2c
    new-instance v10, Lub;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2d
    const v0, 0x1b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_2e
    sub-long/2addr v2, v6

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_2f
    if-eqz v4, :cond_3

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_30
    invoke-direct/range {v11 .. v20}, Lsf;-><init>(Ljava/lang/String;ILjava/lang/Integer;Lub;Ljava/lang/Throwable;Lub;Lub;Lub;Lou;)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_31
    move-object/from16 v16, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_32
    const/4 v5, 0x0

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_33
    goto/16 :goto_10

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_35
    iget-wide v6, v0, Lqy;->e:J

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_36
    const v1, 0x16

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_37
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_38
    move-object v11, v5

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_39
    iget v13, v1, Lqx;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_3a
    invoke-direct {v0, v2, v3}, Lub;-><init>(J)V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_3b
    move-object v15, v5

    nop

    :goto_3c
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    iget v0, v0, Lqy;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_3e
    add-int/lit8 v0, v0, -0x1

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

    :goto_3f
    new-instance v10, Lub;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/lang/String;Lrp;IJLezz;Leur;Lejk;Lrkg;)V
    .locals 0

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_10

    nop

    nop

    :goto_1
    iput-object p2, p0, Lqy;->l:Lrp;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_7

    nop

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

    nop

    :goto_4
    new-instance p2, Ljava/util/concurrent/CountDownLatch;

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

    nop

    :goto_5
    iput-wide p4, p0, Lqy;->e:J

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {p2}, Luli;->a(Ljava/lang/Object;)Lulh;

    move-result-object p2

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-eq p3, p6, :cond_0

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

    :cond_0
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p1, p0, Lqy;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_9
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_a
    iput-object p8, p0, Lqy;->m:Lejk;

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_b
    invoke-static {p1}, Loz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_c
    iput-object p2, p0, Lqy;->c:Lulh;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_d
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput p2, p0, Lqy;->f:I

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_f
    sget-object p2, Lti;->b:Lueo;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_10
    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    goto/32 :goto_8

    nop

    nop

    :goto_11
    const/4 p6, 0x1

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide p4

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1d

    nop

    nop

    :goto_14
    goto :goto_13

    nop

    nop

    :goto_15
    goto/32 :goto_12

    nop

    nop

    :goto_16
    iput-object p2, p0, Lqy;->b:Ljava/util/concurrent/CountDownLatch;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p2}, Lueo;->b()I

    move-result p2

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

    :goto_18
    iput-object p7, p0, Lqy;->o:Leur;

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

    :goto_19
    sget-object p2, Lsk;->a:Lsk;

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

    :goto_1a
    invoke-direct {p2, p6}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1b
    iput p3, p0, Lqy;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1c
    new-instance p2, Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1d
    iput-wide p4, p0, Lqy;->j:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1e
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_0

    nop

    nop

    :goto_1f
    iput-object p6, p0, Lqy;->p:Lezz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_20
    iput-object p2, p0, Lqy;->g:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_21
    iput-object p9, p0, Lqy;->n:Lrkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 5

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

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

    :cond_0
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v1, v3, v2, v2, v4}, Lqx;-><init>(ILou;Ljava/lang/Throwable;I)V

    goto/32 :goto_7

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Lulh;->b()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {v0, v1}, Lsd;->c(Ludp;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    new-instance v1, Lqx;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_5
    goto/16 :goto_19

    nop

    nop

    :goto_6
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    check-cast v0, Landroid/hardware/camera2/CameraDevice;

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

    :goto_8
    move-object v0, v2

    nop

    :goto_9
    goto/32 :goto_0

    nop

    nop

    :goto_a
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_23

    nop

    :cond_1
    goto/32 :goto_22

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_c
    iget-object v0, p0, Lqy;->c:Lulh;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/16 v4, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto :goto_9

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_8

    nop

    nop

    :goto_11
    const v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_21

    nop

    nop

    :goto_14
    const/4 v3, 0x1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_15
    check-cast v0, Lsh;

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_16
    sget v1, Luct;->a:I

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p0, v0, v1}, Lqy;->b(Landroid/hardware/camera2/CameraDevice;Lqx;)V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_18
    move-object v0, v2

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1a
    check-cast v0, Le;

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

    :goto_1b
    new-instance v1, Lucb;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1c
    instance-of v1, v0, Lsh;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-direct {v1, v3}, Lucb;-><init>(Ljava/lang/Class;)V

    goto/32 :goto_3

    nop

    nop

    :goto_1e
    if-nez v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_2
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v0, v0, Lsh;->a:Lsd;

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

    :goto_20
    const-class v3, Landroid/hardware/camera2/CameraDevice;

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

    :goto_21
    goto/32 :goto_23

    nop

    :goto_22
    goto/32 :goto_13

    nop

    nop

    :goto_23
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_24
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_25
    const v1, 0x5

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop
.end method

.method public final b(Landroid/hardware/camera2/CameraDevice;Lqx;)V
    .locals 5

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    instance-of v1, v0, Lsh;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1
    iget-object v2, p2, Lqx;->b:Lou;

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

    :goto_2
    const/4 v3, 0x6

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_5
    check-cast v0, Lsh;

    nop

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

    nop

    :goto_6
    invoke-virtual {v0}, Lulh;->b()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_7
    iget-object v3, p0, Lqy;->a:Ljava/lang/String;

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

    :goto_8
    check-cast v0, Le;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_9
    iget v1, v1, Lou;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p1, p0, Lqy;->c:Lulh;

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

    :goto_b
    new-instance v3, Lsg;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_c
    move-object v0, v2

    nop

    nop

    :goto_d
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_e
    if-nez v3, :cond_0

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    :goto_11
    iget-object v2, p0, Lqy;->n:Lrkg;

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_12
    iget-object v1, p0, Lqy;->c:Lulh;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_13
    invoke-virtual {v1, v3}, Lulh;->d(Ljava/lang/Object;)V

    goto/32 :goto_2c

    nop

    nop

    :goto_14
    iget-object v1, p2, Lqx;->b:Lou;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_15
    iget-object v2, p0, Lqy;->p:Lezz;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_17
    monitor-exit v1

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

    :goto_18
    invoke-direct {v3, v2}, Lsg;-><init>(Lou;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_19
    if-nez p2, :cond_2

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v2, v3, v1, v4}, Lezz;->d(Ljava/lang/String;IZ)V

    :goto_1b
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-direct {p0, p2}, Lqy;->33f5b80483094659737b73d90f80a8a4m(Lqx;)Lsf;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p1, p0}, Lulh;->d(Ljava/lang/Object;)V

    :goto_1e
    goto/32 :goto_20

    nop

    nop

    :goto_1f
    const/4 v2, 0x0

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_20
    return-void

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    move-object p2, v2

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-object v0, v0, Lsh;->a:Lsd;

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_24
    iget v2, p2, Lqx;->d:I

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_25
    throw p0

    nop

    :goto_26
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_27
    monitor-enter v1

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v3, p0, Lqy;->i:Lqx;

    nop

    nop

    if-nez v3, :cond_0

    nop

    nop

    iput-object p2, p0, Lqy;->i:Lqx;

    nop

    nop

    nop

    iget-boolean v3, p0, Lqy;->h:Z

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_28
    goto/16 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v1, v0, p1, p0, v2}, Leur;->g(Lsd;Landroid/hardware/camera2/CameraDevice;Lqy;Lrkg;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v0, p0, Lqy;->c:Lulh;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2c
    iget-object v1, p0, Lqy;->o:Leur;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2d
    if-nez v1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2e
    const/4 v4, 0x0

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_2f
    const v0, 0x5

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_30
    if-nez v1, :cond_4

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

    :cond_4
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_32
    iget-object v1, p0, Lqy;->g:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_33
    const v1, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_34
    monitor-exit v1

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_35
    if-ne v2, v3, :cond_5

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

    :cond_5
    goto/32 :goto_15

    nop

    nop

    nop

    nop
.end method

.method public final onClosed(Landroid/hardware/camera2/CameraDevice;)V
    .locals 4

    goto/32 :goto_c

    nop

    nop

    :goto_0
    iget-object v1, p0, Lqy;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_23

    nop

    nop

    :goto_2
    const-string p1, "Check failed."

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v0, v1}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

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

    :goto_4
    return-void

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_b

    nop

    nop

    :goto_6
    invoke-static {v0}, Loz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_7
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

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

    nop

    nop

    :goto_9
    iget-object v0, p0, Lqy;->a:Ljava/lang/String;

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

    :goto_a
    invoke-direct {v0, v1, v3, v3, v2}, Lqx;-><init>(ILou;Ljava/lang/Throwable;I)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_b
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_d
    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_24

    nop

    nop

    :goto_f
    goto/32 :goto_1b

    nop

    nop

    :goto_10
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v0, p0, Lqy;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_12
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_13
    const/16 v2, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v0, p0, Lqy;->b:Ljava/util/concurrent/CountDownLatch;

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_15
    const-string v1, "#onClosed"

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_16
    new-instance v0, Lqx;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {v0}, Loz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_18
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto/32 :goto_16

    nop

    nop

    :goto_19
    if-lez v0, :cond_0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_1a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_25

    nop

    nop

    :goto_1c
    const/4 v1, 0x3

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1e
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1f
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const v1, 0x7

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p0, p1, v0}, Lqy;->b(Landroid/hardware/camera2/CameraDevice;Lqx;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    throw p0

    nop

    :goto_24
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 5

    goto/32 :goto_28

    nop

    nop

    :goto_0
    const-string p1, "Check failed."

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

    :goto_1
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    :goto_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    throw p0

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lqy;->b:Ljava/util/concurrent/CountDownLatch;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_6
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_7
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1e

    nop

    :goto_9
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_a
    new-instance v0, Lqx;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_b
    invoke-virtual {p0, p1, v0}, Lqy;->b(Landroid/hardware/camera2/CameraDevice;Lqx;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_1a

    nop

    nop

    :goto_d
    const/4 v4, 0x4

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

    nop

    :goto_e
    iget-object v0, p0, Lqy;->a:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_f
    iget-object v0, p0, Lqy;->a:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v2, 0x6

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_13
    goto/32 :goto_1f

    nop

    nop

    :goto_14
    invoke-static {v0}, Loz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {v0}, Loz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_16
    const v1, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_17
    invoke-direct {v1, v2}, Lou;-><init>(I)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const/16 v3, 0xa

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

    nop

    :goto_1a
    const-string v1, "#onDisconnected"

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1b
    return-void

    nop

    :goto_1c
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1d
    new-instance v1, Lou;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_20
    invoke-direct {v0, v4, v1, v2, v3}, Lqx;-><init>(ILou;Ljava/lang/Throwable;I)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_21
    const/4 v2, 0x0

    nop

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

    :goto_22
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_23
    invoke-static {v0, v1}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_24
    iget-object v1, p0, Lqy;->a:Ljava/lang/String;

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

    :goto_25
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_26
    rem-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_27
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const v0, 0x11

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 4

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_0
    invoke-static {v1}, Loz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance p0, Ljava/lang/IllegalStateException;

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

    :goto_3
    invoke-virtual {p0, p1, v0}, Lqy;->b(Landroid/hardware/camera2/CameraDevice;Lqx;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_c

    nop

    :goto_5
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v1, 0x3

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v1, 0x0

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_8
    if-ne p2, v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    :cond_0
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_a
    const-string p1, "Check failed."

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_b
    throw p0

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/16 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_1

    nop

    nop

    :goto_11
    invoke-static {p2, p1}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {v0}, Loz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

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

    :goto_13
    if-eq p2, v2, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_36

    nop

    nop

    :goto_15
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_17
    const v1, 0x7

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_19
    if-ne p2, v1, :cond_3

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-direct {p2, v1}, Lou;-><init>(I)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1c
    throw p0

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_1f
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const v0, 0x1b

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_21
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_22
    iget-object v0, p0, Lqy;->a:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_23
    rem-int v0, v0, v1

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const-string v1, "#onError-"

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_25
    new-instance v0, Lqx;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    new-instance p2, Lou;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_28
    invoke-static {v0, v1}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_2a
    const/4 v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_2b
    if-ne p2, v1, :cond_4

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

    :cond_4
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object v0, p0, Lqy;->b:Ljava/util/concurrent/CountDownLatch;

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const/4 v1, 0x4

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-direct {v0, v2, p2, v1, v3}, Lqx;-><init>(ILou;Ljava/lang/Throwable;I)V

    goto/32 :goto_3

    nop

    nop

    :goto_30
    const/16 v3, 0xa

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const/4 v2, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_32
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_3d

    nop

    nop

    :goto_33
    if-lez v0, :cond_5

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

    :cond_5
    goto/32 :goto_4

    nop

    :goto_34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iget-object v1, p0, Lqy;->a:Ljava/lang/String;

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_36
    return-void

    nop

    :goto_37
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_39
    if-ne p2, v1, :cond_6

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    :cond_6
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_3a
    move v1, v2

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    const-string p1, "Unexpected StateCallback error code: "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_3c
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_3d
    iget-object v1, p0, Lqy;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 10

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0, p1, p0, v1}, Le;->n(Leur;Landroid/hardware/camera2/CameraDevice;Lqy;Lrkg;)V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, v1}, Lqy;->33f5b80483094659737b73d90f80a8a4m(Lqx;)Lsf;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v7, p0, Lqy;->m:Lejk;

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v2, v1, Lrkg;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_4
    const-string p1, "Check failed."

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {v0, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

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

    :goto_6
    div-double/2addr v0, v6

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v0, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_a
    monitor-enter v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_b
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_c
    new-instance v3, Lsg;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    :cond_0
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

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

    :goto_f
    sub-long v2, v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_10
    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const-string v5, "%.3f ms"

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_71

    nop

    nop

    :goto_13
    invoke-direct {v2, v0, v1}, Luh;-><init>(J)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_14
    long-to-double v2, v2

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

    :goto_15
    iget-object v2, v1, Lqx;->b:Lou;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_16
    iput-object v2, p0, Lqy;->k:Luh;

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v1, p0, Lqy;->n:Lrkg;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p1, p0}, Lulh;->d(Ljava/lang/Object;)V

    :goto_1a
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_1b
    iget-object v4, p0, Lqy;->a:Ljava/lang/String;

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

    nop

    :goto_1c
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_1d
    invoke-static {v8, v5, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v3, p0, Lqy;->l:Lrp;

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-direct {v3, v2}, Lsg;-><init>(Lou;)V

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-static {v0}, Loz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_21
    throw p0

    nop

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const/4 v9, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_23
    invoke-static {v4}, Loz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_24
    invoke-static {v8, v5, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_25
    invoke-static {v0, v1}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    throw p0

    nop

    nop

    :goto_27
    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-direct {v2, v0}, Lsh;-><init>(Lsd;)V

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_4a

    nop

    nop

    :goto_2a
    new-instance v2, Lsh;

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_2b
    iget-object v0, p0, Lqy;->a:Ljava/lang/String;

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_2c
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_2d
    monitor-exit v2

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    monitor-exit v0

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    return-void

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iget-object v0, p0, Lqy;->g:Ljava/lang/Object;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_32
    monitor-exit v2

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_33
    const-string v3, "#onOpened"

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_35
    iget-object v0, p0, Lqy;->g:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_36
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-static {v2, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    const v1, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_3a
    iget-wide v4, p0, Lqy;->e:J

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-static {v2}, Loz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_3c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_3d
    iget-object v2, p0, Lqy;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_3e
    if-eq v4, v9, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :cond_1
    goto/32 :goto_2b

    nop

    nop

    :goto_3f
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_40
    monitor-exit v0

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    filled-new-array {v0}, [Ljava/lang/Object;

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

    nop

    :goto_42
    iget-object p1, p0, Lqy;->c:Lulh;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    sub-long/2addr v0, v4

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_44
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_45
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-static {v8, v5, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_55

    nop

    nop

    :goto_48
    monitor-enter v0

    nop

    :try_start_0
    iget-object v1, p0, Lqy;->i:Lqx;

    nop

    if-nez v1, :cond_2

    nop

    nop

    nop

    iput-boolean v9, p0, Lqy;->h:Z

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_2
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_49
    iget-object v5, p0, Lqy;->a:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_4a
    goto/16 :goto_65

    nop

    :goto_4b
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_4c
    move-object v2, v0

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_4f
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_50
    invoke-static {v4}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_51
    div-double/2addr v2, v6

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_52
    move-object v4, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_53
    iget-object v1, p0, Lqy;->n:Lrkg;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_54
    iget-object v1, p0, Lqy;->c:Lulh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_55
    long-to-double v0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_56
    iget-object v6, p0, Lqy;->p:Lezz;

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

    :goto_57
    div-double/2addr v2, v6

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_58
    iget-object v0, p0, Lqy;->o:Leur;

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_59
    const-wide v6, 0x412e848000000000L    # 1000000.0

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_5a
    new-instance v2, Luh;

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

    :goto_5b
    iget-object v2, p0, Lqy;->n:Lrkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    throw p0

    nop

    nop

    :catchall_2
    move-exception p0

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    new-instance v0, Lqu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_5e
    invoke-virtual {v0, v3}, Lulh;->d(Ljava/lang/Object;)V

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    :cond_3
    goto/32 :goto_4d

    nop

    :goto_60
    iget v4, p0, Lqy;->d:I

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    invoke-virtual {v1, v2}, Lulh;->d(Ljava/lang/Object;)V

    goto/32 :goto_31

    nop

    nop

    :goto_62
    const/4 v8, 0x0

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_63
    iget-object v0, p0, Lqy;->o:Leur;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_64
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_65
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_66
    invoke-direct/range {v2 .. v7}, Lqu;-><init>(Lrp;Landroid/hardware/camera2/CameraDevice;Ljava/lang/String;Lezz;Lejk;)V

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_67
    monitor-enter v2

    nop

    nop

    nop

    :try_start_1
    iget-object v3, v1, Lrkg;->b:Ljava/lang/Object;

    nop

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lrkg;->f()I

    move-result v1

    nop

    invoke-interface {v0, v1}, Lrj;->b(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    const v0, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_6a
    const/4 v1, 0x0

    nop

    nop

    :try_start_2
    iput-boolean v1, p0, Lqy;->h:Z

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lqy;->i:Lqx;

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_75

    nop

    nop

    :goto_6b
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    if-nez v1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_6e

    nop

    nop

    :goto_6d
    iget-wide v2, p0, Lqy;->j:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_6e
    iget-object v0, p0, Lqy;->c:Lulh;

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

    :goto_6f
    invoke-static {v0, p1, p0, v2}, Le;->n(Leur;Landroid/hardware/camera2/CameraDevice;Lqy;Lrkg;)V

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    monitor-exit v0

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_71
    iget-object v1, p0, Lqy;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_72
    if-nez v1, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_63

    nop

    nop

    nop

    :goto_73
    throw p0

    nop

    :goto_74
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    monitor-exit v0

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const v0, 0xf

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

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

    :goto_3
    goto/32 :goto_7

    nop

    nop

    :goto_4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_5
    const-string v1, "CameraState-"

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

    :goto_6
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_9
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

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

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_c
    return-object p0

    nop

    :goto_d
    goto/32 :goto_3

    nop

    nop

    :goto_e
    new-instance v0, Ljava/lang/StringBuilder;

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

    :goto_f
    iget p0, p0, Lqy;->f:I

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop
.end method
