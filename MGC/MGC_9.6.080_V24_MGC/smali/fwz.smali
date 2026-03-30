.class public final Lfwz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lghk;


# instance fields
.field public final a:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

.field public final b:Lhtr;

.field public final c:Ljava/util/concurrent/Executor;

.field public final d:Lgvg;

.field public final e:Lrbh;

.field private final f:Lhsh;


# direct methods
.method public constructor <init>(Lhsh;Lrbh;Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;Lgvg;Lhtr;Ljava/util/concurrent/Executor;)V
    .locals 0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p6, p0, Lfwz;->c:Ljava/util/concurrent/Executor;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Lfwz;->e:Lrbh;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p3, p0, Lfwz;->a:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p5, p0, Lfwz;->b:Lhtr;

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

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_6

    nop

    nop

    :goto_6
    iput-object p1, p0, Lfwz;->f:Lhsh;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p4, p0, Lfwz;->d:Lgvg;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method public static d(Lhsm;)Lpdr;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_3

    nop

    nop

    :goto_1
    iget-object p0, p0, Lhsm;->b:Lpdr;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    if-eqz p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    sget-object p0, Lpdr;->m:Lpdr;

    nop

    nop

    :goto_5
    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final synthetic a()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return p0

    nop

    nop
.end method

.method public final b()Lsui;
    .locals 3

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_0
    new-instance v1, Lfxd;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0, v2}, Ljjo;-><init>(I)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_19

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_4
    const v1, 0x8

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

    :goto_5
    sget-object v2, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->b:Lmko;

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
    new-instance v0, Ljjo;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    invoke-interface {v1, v2}, Lpdf;->a(Ljava/lang/String;)Lpdh;

    move-result-object v1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_8
    sget-object v1, Lmkd;->e:Lmkd;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_9
    sget-object v1, Lstd;->a:Lstd;

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

    :goto_a
    sget-object p0, Lstd;->a:Lstd;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    :goto_c
    invoke-virtual {v0, v1, v2}, Lmkp;->i(Ljava/lang/Enum;Lmko;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_d
    const-string v2, "waitForCameraDevice"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_e
    iget-object v1, v0, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->d:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0}, Lhsh;->a()Lsui;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_10
    const-class v2, Ljava/lang/Throwable;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0x7

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

    nop

    :goto_12
    iget-object v0, p0, Lfwz;->f:Lhsh;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_13
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_14
    iget-object v0, p0, Lfwz;->a:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_15
    return-object p0

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_17
    add-int v0, v0, v1

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

    :goto_18
    goto/32 :goto_16

    nop

    :goto_19
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1a
    invoke-direct {v1, p0, v2}, Lfxd;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {v0, v1, p0}, Lsso;->i(Lsui;Lrsk;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object p0

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

    :goto_1c
    invoke-static {p0, v2, v0, v1}, Lsrv;->j(Lsui;Ljava/lang/Class;Lssx;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object p0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1d
    iput-object v1, v0, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->h:Lpdh;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop
.end method

.method public final synthetic c()Ljava/lang/String;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Lhhg;->L(Lghk;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop
.end method
