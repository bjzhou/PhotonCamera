.class public final Lmbn;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lmbq;


# static fields
.field public static final a:Lj$/time/Duration;


# instance fields
.field private final b:Loyd;

.field private final c:Loyd;

.field private final d:Loyd;

.field private final e:Lkcq;

.field private final f:Loyd;

.field private final g:Llaj;

.field private final h:Lhon;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
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

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v0, v1}, Lj$/time/Duration;->ofSeconds(J)Lj$/time/Duration;

    move-result-object v0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    const-wide/16 v0, 0x4

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    sput-object v0, Lmbn;->a:Lj$/time/Duration;

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

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_9

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop
.end method

.method public constructor <init>(Loyd;Loyd;Loyd;Lkcq;Lhon;Loyd;Llaj;)V
    .locals 0

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    iput-object p3, p0, Lmbn;->d:Loyd;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p4, p0, Lmbn;->e:Lkcq;

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

    :goto_2
    iput-object p2, p0, Lmbn;->c:Loyd;

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

    nop

    nop

    :goto_3
    iput-object p5, p0, Lmbn;->h:Lhon;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

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
    iput-object p6, p0, Lmbn;->f:Loyd;

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

    nop

    :goto_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p1, p0, Lmbn;->b:Loyd;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p7, p0, Lmbn;->g:Llaj;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()F
    .locals 0

    goto/32 :goto_3

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    check-cast p0, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lmbn;->c:Loyd;

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

    :goto_4
    return p0

    nop
.end method

.method public final b()F
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lmbn;->d:Loyd;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    check-cast p0, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return p0

    nop
.end method

.method public final c()Z
    .locals 1

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    check-cast p0, Ljgy;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object p0

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

    :goto_3
    if-eqz p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    sget-object v0, Ljgy;->a:Ljgy;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_6
    invoke-virtual {p0, v0}, Ljgy;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    return p0

    nop

    nop

    nop

    :goto_8
    return p0

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p0, p0, Lmbn;->b:Loyd;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public final d()Z
    .locals 18

    goto/32 :goto_1a

    nop

    nop

    :goto_0
    iget-object v2, v0, Lmbn;->f:Loyd;

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_1
    cmp-long v2, v4, v16

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_2
    sget-object v6, Lsed;->a:Lsdr;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v2, v0, Lmbn;->h:Lhon;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_4
    check-cast v12, Loyn;

    nop

    nop

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
    invoke-interface {v6}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_6
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_7
    check-cast v13, Lnoz;

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const-string v2, "Failed to wait for proposed value to arrive. "

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

    :goto_9
    throw v1

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_d
    new-instance v2, Lmbg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_e
    if-gez v2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct/range {v11 .. v17}, Lmbh;-><init>(Loyn;Lnoz;Llaj;Landroid/hardware/camera2/CaptureResult$Key;J)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_11
    iget-object v3, v2, Lhon;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_12
    check-cast v6, Linm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

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

    :goto_14
    invoke-virtual {v8}, Lj$/time/Duration;->toSeconds()J

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    :cond_1
    goto/32 :goto_18

    nop

    :goto_16
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_17
    check-cast v2, Linm;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const v0, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v0, v0, Lmbn;->g:Llaj;

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_1c
    if-nez v2, :cond_2

    nop

    goto/32 :goto_35

    nop

    nop

    :cond_2
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_1d
    new-instance v1, Lmbh;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_1e
    iget-boolean v2, v2, Linm;->a:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    add-int v0, v0, v1

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_20
    new-instance v1, Ljava/lang/InterruptedException;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_21
    move-object v15, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    check-cast v15, Landroid/hardware/camera2/CaptureResult$Key;

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

    :goto_23
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v3, v2, Lhon;->b:Ljava/lang/Object;

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

    :goto_25
    invoke-virtual {v1}, Lj$/util/Optional;->isEmpty()Z

    move-result v2

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_26
    goto/16 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-interface {v2}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_29
    return v0

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object v1, v1, Lkcq;->i:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v6, v0, Lmbn;->f:Loyd;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2c
    invoke-direct {v2, v1}, Lmbg;-><init>(Lmbh;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_2d
    return v3

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2f
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_30
    if-nez v2, :cond_3

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_31
    invoke-interface {v3}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_32
    invoke-interface {v2}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_33
    invoke-virtual {v8}, Lj$/time/Duration;->toNanos()J

    move-result-wide v9

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

    nop

    :goto_34
    return v3

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    check-cast v14, Llaj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_37
    move-object v12, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_38
    invoke-virtual {v0, v2}, Llaj;->o(Lpuq;)V

    :try_start_0
    iget-object v0, v1, Lmbh;->b:Lsuu;

    nop

    nop

    nop

    nop

    new-instance v3, Llwv;

    nop

    nop

    nop

    nop

    nop

    const/4 v4, 0x6

    nop

    nop

    nop

    nop

    nop

    const/4 v5, 0x0

    nop

    nop

    nop

    invoke-direct {v3, v1, v2, v4, v5}, Llwv;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    sget-object v2, Lstd;->a:Lstd;

    nop

    nop

    invoke-virtual {v0, v3, v2}, Lsuu;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    iget-object v0, v1, Lmbh;->b:Lsuu;

    nop

    nop

    invoke-interface {v0}, Lsui;->get()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    check-cast v0, Ljava/lang/Boolean;

    nop

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_29

    nop

    nop

    :goto_39
    add-long v16, v6, v9

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_3b
    iget-object v1, v0, Lmbn;->e:Lkcq;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_3c
    move-object v14, v2

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_3d
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_3e
    invoke-direct {v1, v0}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    sget-object v8, Lmbn;->a:Lj$/time/Duration;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_40
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_41
    invoke-interface {v3}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_42
    iget-wide v6, v6, Linm;->b:J

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_44
    const v1, 0x1d

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_45
    iget-object v2, v2, Lhon;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_47
    move-object v11, v1

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

    :goto_48
    move-object v13, v3

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method

.method public final e(Lpin;Lrss;Loeq;)V
    .locals 4

    goto/32 :goto_b

    nop

    nop

    :goto_0
    const v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lkcq;->k:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    nop

    goto/32 :goto_10

    nop

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

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_4
    check-cast v2, Ljava/lang/Float;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_5
    check-cast p0, Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_6
    iget-object v1, p0, Lmbn;->e:Lkcq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1}, Lpin;->k()Lqgk;

    move-result-object v0

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_a
    if-nez v0, :cond_1

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x1a

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {v3, v2}, Lryy;->G(Ljava/lang/Object;Ljava/lang/Object;)Lryy;

    move-result-object p0

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

    :goto_e
    goto/32 :goto_9

    nop

    nop

    :goto_f
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_10
    new-instance v2, Lpha;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_11
    iget-wide v1, p3, Loeq;->a:J

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-wide p0, p3, Loeq;->a:J

    nop

    :goto_13
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_14
    new-instance v3, Lpha;

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_15
    invoke-virtual {p2}, Lrss;->c()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_16
    iget-object v1, v1, Lkcq;->j:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_18
    sget-object p0, Lsed;->a:Lsdr;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v0}, Lqgk;->b()Lphz;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_f

    nop

    nop

    :goto_1b
    check-cast v1, Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p2}, Lrss;->c()Ljava/lang/Object;

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p1, p0}, Lpin;->f(Lphz;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v0, p0}, Lqgk;->f(Ljava/util/Set;)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-direct {v3, v1, v2}, Lpha;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_20
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_21
    iget-object p0, p0, Lmbn;->e:Lkcq;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_22
    invoke-virtual {p2}, Lrss;->h()Z

    move-result v0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_23
    invoke-direct {v2, p0, v1}, Lpha;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/32 :goto_d

    nop

    nop

    :goto_24
    invoke-virtual {v1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop
.end method
