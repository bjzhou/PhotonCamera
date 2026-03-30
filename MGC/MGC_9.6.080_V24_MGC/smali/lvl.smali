.class public final Llvl;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ltun;


# instance fields
.field private final a:Ltxm;

.field private final b:Ltxm;

.field private final synthetic c:I


# direct methods
.method public constructor <init>(Ltxm;Ltxm;I)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Llvl;->b:Ltxm;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Llvl;->a:Ltxm;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput p3, p0, Llvl;->c:I

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public constructor <init>(Ltxm;Ltxm;I[B)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Llvl;->b:Ltxm;

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

    :goto_1
    iput p3, p0, Llvl;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    iput-object p2, p0, Llvl;->a:Ltxm;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 3

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p0, Liyc;

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

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

    :goto_2
    const-string v0, "Warning: Overriding the secure camera intent because the keyguard is not currently locked. The camera will open in normal mode."

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_3
    invoke-interface {v0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Llvl;->a:Ltxm;

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_5
    invoke-static {p0}, Llur;->a(Landroid/content/Intent;)Z

    move-result p0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {v0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v0

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

    :goto_7
    return-object v1

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_9
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    :cond_1
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Llvl;->b:Ltxm;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_b
    invoke-interface {p0, v0}, Lscz;->s(Ljava/lang/String;)V

    :goto_c
    goto/32 :goto_46

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isDeviceLocked()Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v2, 0x0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return-object v1

    nop

    :goto_10
    goto/32 :goto_44

    nop

    nop

    :goto_11
    const v0, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_12
    if-ne v0, v1, :cond_2

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object p0, p0, Llvl;->a:Ltxm;

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

    :goto_14
    if-nez p0, :cond_3

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_3
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result p0

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_16
    const/4 v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_17
    check-cast v0, Lixz;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

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

    :goto_19
    check-cast v0, Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0}, Liyc;->b()Landroid/hardware/SensorManager;

    move-result-object p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1b
    iget-object v0, p0, Llvl;->a:Ltxm;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    return-object v1

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-interface {p0, v0}, Lscz;->M(I)Lsdo;

    move-result-object p0

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

    nop

    :goto_1f
    sget-object p0, Llur;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_20
    if-eqz p0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :cond_4
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-object p0, p0, Llvl;->b:Ltxm;

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_24
    new-instance v1, Lhdu;

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_25
    iget-object p0, p0, Llvl;->a:Ltxm;

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

    :goto_26
    iget v0, p0, Llvl;->c:I

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

    :goto_27
    add-int v0, v0, v1

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

    :goto_28
    invoke-direct {v1, p0, v0}, Llvo;-><init>(Landroid/hardware/SensorManager;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_7

    nop

    nop

    :goto_29
    invoke-virtual {v0}, Lixz;->b()Landroid/app/KeyguardManager;

    move-result-object v0

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

    :goto_2a
    if-ne v0, v1, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_2b
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_2c
    if-lez v0, :cond_6

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_22

    nop

    :goto_2d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_2f
    invoke-direct {v1, p0, v0}, Lhdu;-><init>(Landroid/hardware/SensorManager;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_f

    nop

    nop

    :goto_30
    invoke-virtual {p0}, Liyc;->b()Landroid/hardware/SensorManager;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_31
    check-cast p0, Liyc;

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

    :goto_32
    check-cast p0, Lixi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_33
    invoke-virtual {p0}, Liyc;->b()Landroid/hardware/SensorManager;

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

    :goto_34
    invoke-virtual {p0}, Lixi;->b()Landroid/app/Activity;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_35
    check-cast p0, Liyc;

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

    :goto_36
    check-cast v0, Ljava/util/concurrent/Executor;

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-interface {v0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_38
    new-instance v1, Llvo;

    nop

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

    :goto_39
    const/16 v0, 0xfc0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_3a
    check-cast v0, Ljava/util/concurrent/Executor;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-direct {v1, p0, v0}, Llvk;-><init>(Landroid/hardware/SensorManager;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    if-eqz p0, :cond_7

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    :cond_7
    :goto_3d
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {p0}, Lscs;->c()Lsdo;

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

    :goto_3f
    const/4 v1, 0x1

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

    nop

    :goto_40
    goto/32 :goto_23

    nop

    :goto_41
    check-cast p0, Lscz;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_42
    new-instance v1, Llvk;

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    iget-object v0, p0, Llvl;->b:Ltxm;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_44
    iget-object v0, p0, Llvl;->b:Ltxm;

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

    :goto_45
    const v1, 0xe

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

    nop

    :goto_46
    move v1, v2

    nop

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    return-object p0

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_a

    nop

    nop

    nop

    nop
.end method
