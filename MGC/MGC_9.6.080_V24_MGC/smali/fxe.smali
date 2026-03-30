.class public final Lfxe;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lghk;


# instance fields
.field public final a:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

.field private final b:Lfxc;


# direct methods
.method public constructor <init>(Lfxc;Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lfxe;->b:Lfxc;

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

    :goto_1
    return-void

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Lfxe;->a:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

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
.end method


# virtual methods
.method public final synthetic a()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop
.end method

.method public final b()Lsui;
    .locals 3

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v1, Lmkd;->c:Lmkd;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Lfxc;->b()V

    :goto_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v1, v0, Lfxc;->g:Lsuu;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

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
    goto/32 :goto_5

    nop

    :goto_5
    goto/32 :goto_b

    nop

    :goto_6
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v1, v0, Lfxc;->g:Lsuu;

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

    :goto_9
    invoke-static {v0, v1, p0}, Lsso;->i(Lsui;Lrsk;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object p0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    return-object p0

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v1}, Lfxa;->b()Z

    move-result v1

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

    :goto_d
    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_1
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_e
    if-eqz v1, :cond_2

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

    :cond_2
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {v1, p0, v2}, Lfxd;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Lfxe;->a:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_11
    sget-object p0, Lstd;->a:Lstd;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v1, v2}, Lsuu;->e(Ljava/lang/Object;)Z

    :goto_14
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0, v1, v2}, Lmkp;->i(Ljava/lang/Enum;Lmko;)V

    goto/32 :goto_16

    nop

    nop

    :goto_16
    iget-object v0, p0, Lfxe;->b:Lfxc;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_17
    if-nez v1, :cond_3

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v1}, Lsuu;->isDone()Z

    move-result v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v0}, Lfxc;->d()Z

    move-result v1

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

    :goto_1a
    iget-object v1, v0, Lfxc;->g:Lsuu;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_1b
    new-instance v1, Lfxd;

    nop

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

    :goto_1c
    iget-object v0, v0, Lfxc;->g:Lsuu;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1d
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    sget-object v2, Lgit;->g:Lgit;

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

    :goto_1f
    iget-object v1, v0, Lfxc;->c:Lfxa;

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

    :goto_20
    sget-object v2, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->b:Lmko;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_21
    const v1, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_22
    const v0, 0x16

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v1}, Lsuu;->isDone()Z

    goto/32 :goto_1c

    nop

    nop

    :goto_24
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

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

    nop

    nop

    :goto_0
    invoke-static {p0}, Lhhg;->L(Lghk;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop
.end method
