.class public final Leso;
.super Luci;
.source "PG"

# interfaces
.implements Lubk;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Ljava/lang/Object;

.field private final synthetic c:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_5

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p1, 0x1

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

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Leso;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p2, p0, Leso;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput p3, p0, Leso;->c:I

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V
    .locals 0

    goto/32 :goto_5

    nop

    nop

    :goto_0
    const/4 p1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Leso;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    iput-object p2, p0, Leso;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    iput p3, p0, Leso;->c:I

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_0
    instance-of v0, p1, Lesg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_1
    check-cast p1, Ljava/lang/Throwable;

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_3
    check-cast p1, Ljava/lang/Throwable;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {p0, p1}, Lsui;->cancel(Z)Z

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/16 v0, 0x20

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

    :goto_6
    invoke-interface {p0}, Lbrd;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_33

    nop

    nop

    :goto_8
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    and-long/2addr p0, v0

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_b
    shl-long/2addr p0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0, p1}, Leqg;->e(I)V

    :goto_d
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {p0}, Luda;->q(F)I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_10
    if-ne v0, v1, :cond_0

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v0, p0, Leso;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_12
    check-cast p1, Ldpb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    :goto_14
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_15
    if-nez v0, :cond_2

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_16
    check-cast p0, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-eqz p1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :cond_3
    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget v0, p0, Leso;->c:I

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    check-cast p0, Lbgp;

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraManager;->unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    goto/32 :goto_34

    nop

    nop

    :goto_1c
    invoke-interface {p0}, Lbrd;->a()Ljava/lang/Object;

    move-result-object p0

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

    :goto_1d
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_1e
    check-cast p1, Ljava/lang/Throwable;

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    int-to-long p0, p0

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

    :goto_20
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_21
    new-instance v0, Ldpk;

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_22
    iget-object p1, p0, Leso;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_23
    invoke-static {p0}, Luda;->q(F)I

    move-result p0

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

    nop

    nop

    :goto_24
    iget-object p0, p0, Leso;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_25
    iget p1, p1, Lesg;->a:I

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_26
    const/4 v1, 0x2

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

    :goto_27
    const/4 p1, 0x0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget-object p0, p0, Leso;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_29
    check-cast p1, Landroid/hardware/camera2/CameraManager;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_2a
    check-cast v0, Leqg;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2b
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

    :goto_2c
    invoke-direct {v0, p0, p1}, Ldpk;-><init>(J)V

    goto/32 :goto_3b

    nop

    nop

    :goto_2d
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_2e
    check-cast p0, Ljava/lang/Number;

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

    :goto_2f
    const v0, 0x10

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_31
    if-ne v0, v1, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_32
    return-object p0

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_35
    int-to-long p0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_36
    iget-object p0, p0, Lbgp;->c:Lbnx;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_37
    iget-object p1, p0, Leso;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_38
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_39
    check-cast p0, Ljava/lang/Number;

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

    nop

    :goto_3a
    const-wide v0, 0xffffffffL

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3b
    return-object v0

    nop

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    iget-object p0, p0, Leso;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    iget-object p0, p0, Luie;->a:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_3f
    const v1, 0x18

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_40
    if-nez v0, :cond_5

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

    :cond_5
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    return-object p0

    nop

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_43
    check-cast p1, Lesg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_44
    iget-object p0, p0, Leso;->b:Ljava/lang/Object;

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

    :goto_45
    iget-object p1, p0, Leso;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_46
    iget-object p0, p0, Leso;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_47
    iget-object p0, p0, Lbgp;->c:Lbnx;

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

    :goto_48
    check-cast p0, Luie;

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    check-cast p0, Lbgp;

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_4a
    goto/16 :goto_a

    nop

    nop

    :goto_4b
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_4c
    return-object p0

    nop

    :goto_4d
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop
.end method
