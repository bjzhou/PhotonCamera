.class public final Lggf;
.super Lgli;
.source "PG"


# instance fields
.field private final a:Ltxm;

.field private final b:Lpdf;

.field private final c:Ljph;

.field private final d:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

.field private e:Z


# direct methods
.method public constructor <init>(Ltxm;Lowu;Ljph;Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;Lpdf;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p5, p0, Lggf;->b:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    const/4 p1, 0x0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p4, p0, Lggf;->d:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    invoke-direct {p0, p2}, Lgli;-><init>(Ljava/util/concurrent/Executor;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p3, p0, Lggf;->c:Ljph;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    :goto_6
    iput-boolean p1, p0, Lggf;->e:Z

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p1, p0, Lggf;->a:Ltxm;

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
.end method


# virtual methods
.method public final d()Z
    .locals 3

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lggf;->b:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_1
    const-string v2, "CameraActivityController#initialize"

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-boolean v0, p0, Lggf;->e:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_3
    const-string v1, "CameraActivityControllerInitializer#initialize"

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    check-cast v0, Ljhy;

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

    :goto_5
    invoke-virtual {v0}, Ljhy;->w()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0, v1, v2}, Lmkp;->i(Ljava/lang/Enum;Lmko;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {v0, v1}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_8
    if-nez v0, :cond_0

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
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Lggf;->a:Ltxm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_a
    return p0

    nop

    nop

    :goto_b
    goto/32 :goto_e

    nop

    nop

    :goto_c
    iput-boolean v0, p0, Lggf;->e:Z

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_d
    invoke-interface {v0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Lggf;->b:Lpdf;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_f
    sget-object v2, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->a:Lmko;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v1, p0, Lggf;->b:Lpdf;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_11
    const v0, 0x8

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_12
    sget-object v1, Lmkd;->l:Lmkd;

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

    nop

    :goto_13
    const-string v1, "CameraActivityController#get"

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_14
    invoke-interface {v0}, Lpdf;->g()V

    goto/32 :goto_22

    nop

    nop

    :goto_15
    iget-object v0, p0, Lggf;->b:Lpdf;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-interface {v0}, Lpdf;->g()V

    goto/32 :goto_15

    nop

    nop

    :goto_17
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_1b

    nop

    :goto_19
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1a
    return p0

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_19

    nop

    nop

    :goto_1d
    iget-object v0, p0, Lggf;->b:Lpdf;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_1e
    const v1, 0x9

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_1f
    if-lez v0, :cond_1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_18

    nop

    :goto_20
    invoke-interface {v0, v1}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_21
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-boolean p0, p0, Lggf;->e:Z

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    add-int v0, v0, v1

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

    :goto_24
    invoke-interface {v1, v2}, Lpdf;->h(Ljava/lang/String;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v0, p0, Lggf;->d:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final f()V
    .locals 2

    goto/32 :goto_c

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1
    new-instance v1, Lgge;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2
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

    :goto_3
    goto/32 :goto_10

    nop

    :goto_4
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    :goto_5
    const v1, 0x11

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Lggf;->c:Ljph;

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

    :goto_7
    invoke-virtual {v0, v1}, Ljph;->e(Ljpv;)V

    :goto_8
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {v1, p0}, Lgge;-><init>(Lggf;)V

    goto/32 :goto_7

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    :goto_b
    goto/32 :goto_3

    nop

    nop

    :goto_c
    const v0, 0x12

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

    :goto_d
    invoke-virtual {p0}, Lggf;->d()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_e
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_f

    nop

    :goto_f
    goto/32 :goto_b

    nop

    :goto_10
    goto/32 :goto_d

    nop

    nop

    nop

    nop
.end method
