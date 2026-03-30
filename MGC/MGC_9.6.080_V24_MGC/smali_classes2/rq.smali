.class public final Lrq;
.super Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
.source "PG"


# instance fields
.field final synthetic a:Lujd;


# direct methods
.method public constructor <init>(Lujd;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    iput-object p1, p0, Lrq;->a:Lujd;

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

    :goto_2
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method public final onCameraAccessPrioritiesChanged()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    const-string p0, "CXCP"

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lrq;->a:Lujd;

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

    :goto_2
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    invoke-static {p0}, Luiw;->c(Ljava/lang/Object;)V

    goto/32 :goto_0

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    :goto_6
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_7
    sget-object v0, Lkotlinx/coroutines/android/cMC/QBzQbzDQvUUZ;->Wyqbfhxdq:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    instance-of v0, p0, Luiv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_9
    sget-object v0, Lpg;->a:Lpg;

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

    :goto_a
    invoke-static {p0, v0}, Lufv;->n(Lujg;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v0, 0x0

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
.end method

.method public final onCameraAvailable(Ljava/lang/String;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_c

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p0}, Luiw;->c(Ljava/lang/Object;)V

    goto/32 :goto_13

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
    const-string p1, "CXCP"

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {p0, v0}, Lufv;->n(Lujg;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

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

    nop

    :goto_9
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p0, p0, Lrq;->a:Lujd;

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
    const/16 p1, 0x29

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    new-instance v0, Lpf;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_12

    nop

    nop

    :goto_e
    const-string v0, "Failed to emit CameraAvailable("

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_f
    invoke-static {p1}, Loz;->b(Ljava/lang/String;)V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_10
    invoke-direct {v0, p1}, Lpf;-><init>(Ljava/lang/String;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_11
    instance-of v0, p0, Luiv;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_12
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_13
    new-instance p0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop
.end method
