.class public final synthetic Lgha;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lgha;->a:Ljava/lang/Object;

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

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    :goto_3
    iput p2, p0, Lgha;->b:I

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 1

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lgha;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sget-object p1, Lmkd;->q:Lmkd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_3
    if-ne p1, p2, :cond_0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    :goto_4
    check-cast p0, Lmxe;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lgha;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Lmxe;->c()V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_7
    const/4 p2, 0x3

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Lghe;->x:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

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

    :goto_9
    iget-object p0, p0, Lgha;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 p2, 0x1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-nez p1, :cond_1

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

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_f
    check-cast p0, Lnir;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_12
    check-cast p0, Lghe;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_13
    iget-object p0, p0, Lgha;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    return-void

    nop

    nop

    :goto_16
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object p0, p0, Lgha;->a:Ljava/lang/Object;

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

    :goto_18
    invoke-virtual {p0}, Lnir;->a()V

    goto/32 :goto_1c

    nop

    nop

    :goto_19
    invoke-virtual {v0, p1, p2}, Lmkp;->i(Ljava/lang/Enum;Lmko;)V

    goto/32 :goto_22

    nop

    nop

    :goto_1a
    iget p1, p0, Lgha;->b:I

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1b
    const/4 p2, 0x2

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1c
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    check-cast p0, Lmxe;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_1f
    if-ne p1, p2, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_20
    if-ne p1, p2, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_5

    nop

    nop

    :goto_21
    sget-object p2, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->a:Lmko;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_22
    sget-object p1, Lgit;->e:Lgit;

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

    :goto_23
    iget-object p0, p0, Lghe;->y:Ljava/util/function/Consumer;

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

    :goto_24
    invoke-virtual {p0}, Lmxe;->b()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop
.end method
