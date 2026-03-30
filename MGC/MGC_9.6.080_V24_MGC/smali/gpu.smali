.class public Lgpu;
.super Lpuq;
.source "PG"


# static fields
.field private static final i:Lsdb;


# instance fields
.field public final a:Lj$/util/concurrent/ConcurrentLinkedQueue;

.field public final b:Lfwj;

.field public final c:Z

.field public final d:Lhsc;

.field public final e:Landroid/os/Handler;

.field public f:Lfup;

.field public final g:Lknb;

.field public final h:Lhoh;

.field private final k:Lgqc;

.field private final l:Lfvp;

.field private final m:Lrss;

.field private final n:Lmcc;

.field private final o:Lhbs;

.field private final p:Lhql;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    const-string v0, "gpu"

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    sput-object v0, Lgpu;->i:Lsdb;

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

    nop

    :goto_3
    return-void

    nop

    nop
.end method

.method public constructor <init>(Lgqf;Lfvp;Lknb;Lfyu;Lfwj;ZLhql;Lhoh;Lhsc;Lmcc;Lhbs;)V
    .locals 1

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p11, p0, Lgpu;->o:Lhbs;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_1
    sget-object p1, Lhmq;->a:Ljava/lang/Float;

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

    :goto_2
    invoke-virtual {p1}, Lgqf;->a()Lgqc;

    move-result-object p1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Lgpu;->e:Landroid/os/Handler;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p9, p0, Lgpu;->d:Lhsc;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_5
    goto/16 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p8, p0, Lgpu;->h:Lhoh;

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

    nop

    :goto_8
    invoke-interface {p1}, Lfxw;->c()Z

    move-result p1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_9
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_a
    iput-object p1, p0, Lgpu;->m:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_b
    iput-boolean p6, p0, Lgpu;->c:Z

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

    :goto_c
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {p4}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_e
    iget-object p1, p4, Lfyu;->b:Lfyv;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_f
    iput-object p1, p0, Lgpu;->k:Lgqc;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_10
    iput-object p2, p0, Lgpu;->l:Lfvp;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_11
    if-nez p1, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    new-instance v0, Lj$/util/concurrent/ConcurrentLinkedQueue;

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

    :goto_14
    sget-object p1, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    new-instance p2, Landroid/os/Handler;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iput-object p10, p0, Lgpu;->n:Lmcc;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-direct {p0, v0, v0, v0}, Lpuq;-><init>([B[C[B)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_19
    return-void

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    goto/32 :goto_1f

    nop

    nop

    :goto_1b
    iput-object p5, p0, Lgpu;->b:Lfwj;

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

    :goto_1c
    iget-object p1, p9, Lhsc;->c:Lpuq;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1d
    iput-object p3, p0, Lgpu;->g:Lknb;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1e
    iput-object p7, p0, Lgpu;->p:Lhql;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1f
    iput-object v0, p0, Lgpu;->a:Lj$/util/concurrent/ConcurrentLinkedQueue;

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
.end method

.method private final d116db4599d9ddc8c35e61366a4f4967m()Z
    .locals 1

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1
    sget-object v0, Lgqa;->c:Lgqa;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_2
    goto :goto_5

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_a

    nop

    nop

    :goto_6
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_7
    iget-object p0, p0, Lgpu;->k:Lgqc;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_8
    if-ne p0, v0, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_9
    check-cast p0, Loxv;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_a
    const/4 p0, 0x1

    nop

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

    :goto_b
    if-eq p0, v0, :cond_1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_c
    sget-object v0, Lgqa;->e:Lgqa;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_d
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_e
    check-cast p0, Lgqa;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_f
    iget-object p0, p0, Lgqc;->g:Loyn;

    nop

    goto/32 :goto_9

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lpro;)V
    .locals 5

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureResult$Key;

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

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_2
    goto/16 :goto_11

    nop

    nop

    :goto_3
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lgpu;->f:Lfup;

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0}, Lgpu;->d116db4599d9ddc8c35e61366a4f4967m()Z

    move-result v0

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Lgpu;->m:Lrss;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_9
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_a
    iget-object v1, p0, Lgpu;->k:Lgqc;

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_b
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SENSOR_FRAME_DURATION:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_c
    check-cast v0, Lpuq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_e
    check-cast v1, Ljava/lang/Long;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_f
    if-nez v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :cond_2
    goto/32 :goto_32

    nop

    nop

    :goto_10
    goto/16 :goto_2c

    nop

    :goto_11
    goto/32 :goto_33

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v2, v3, v4, v0, v1}, Lhql;->b(JJ)V

    :goto_13
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-interface {p1, v0}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_15
    invoke-interface {p1, v0}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v0, p0, Lgpu;->o:Lhbs;

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
    invoke-virtual {v0, p1}, Lpuq;->a(Lpro;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_18
    check-cast v0, Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_19
    const v1, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_1a
    invoke-interface {v1, v0}, Loyn;->a(Ljava/lang/Object;)V

    :goto_1b
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v0, p1}, Lmcc;->g(Lpro;)V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-nez v0, :cond_3

    nop

    nop

    goto/32 :goto_11

    nop

    :cond_3
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_1f
    iget-object p0, p0, Lgpu;->a:Lj$/util/concurrent/ConcurrentLinkedQueue;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_20
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_21
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_22
    const v0, 0x8

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-nez v1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_4
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_24
    if-nez v0, :cond_5

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_25
    check-cast v0, Ljava/lang/Long;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v0, p1}, Lpuq;->a(Lpro;)V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_27
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_28
    check-cast v0, Lfyu;

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    if-eqz v0, :cond_6

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

    :cond_6
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object v2, p0, Lgpu;->p:Lhql;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_2b
    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    :goto_2c
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v0, p0, Lgpu;->n:Lmcc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_2e
    iget-object v0, p0, Lgpu;->l:Lfvp;

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_2f
    invoke-virtual {v0, p1}, Lfyu;->a(Lpro;)V

    :goto_30
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_31
    if-nez v1, :cond_7

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_33
    return-void

    nop

    nop

    :goto_34
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iget-object v1, v1, Lgqc;->c:Loyn;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_36
    invoke-virtual {v0, p1}, Lpuq;->a(Lpro;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_37
    invoke-interface {p1, v1}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v0, p1}, Lpuq;->a(Lpro;)V

    :goto_3b
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3c
    if-nez v0, :cond_8

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_3d
    rem-int v0, v0, v1

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

    :goto_3e
    if-lez v0, :cond_9

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_38

    nop

    :goto_3f
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v1

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_40
    invoke-interface {p1, v0}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

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

    nop

    :goto_41
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop
.end method

.method public final cH(Lphh;J)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    check-cast v0, Lpuq;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1
    invoke-direct {p0}, Lgpu;->d116db4599d9ddc8c35e61366a4f4967m()Z

    move-result v0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_7
    goto :goto_5

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p0, p0, Lgpu;->a:Lj$/util/concurrent/ConcurrentLinkedQueue;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_b
    invoke-virtual {v0, p1, p2, p3}, Lpuq;->cH(Lphh;J)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public final cI(Lpna;)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object p0, Lgpu;->i:Lsdb;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    if-nez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    check-cast p0, Lscz;

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
    invoke-virtual {p0}, Lscs;->b()Lsdo;

    move-result-object p0

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

    :goto_5
    invoke-direct {p0}, Lgpu;->d116db4599d9ddc8c35e61366a4f4967m()Z

    move-result p0

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

    :goto_6
    const-string v0, "onCaptureFailed %s"

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

    :goto_7
    invoke-interface {p0, v0, p1}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_9
    invoke-interface {p0, v0}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/16 v0, 0x27b

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop
.end method

.method public final d(Lpuq;)Lpci;
    .locals 2

    goto/32 :goto_8

    nop

    nop

    :goto_0
    iget-object v0, p0, Lgpu;->a:Lj$/util/concurrent/ConcurrentLinkedQueue;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1
    const/16 v1, 0xe

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_3
    invoke-direct {v0, p0, p1, v1}, Lfyz;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0xc

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_7
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_8
    const v0, 0x1f

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

    :goto_9
    add-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    new-instance v0, Lfyz;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_b
    return-object v0

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_7

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop
.end method
