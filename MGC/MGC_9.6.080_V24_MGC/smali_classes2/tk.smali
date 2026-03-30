.class public final Ltk;
.super Luci;
.source "PG"

# interfaces
.implements Luaz;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Ljava/lang/Object;

.field private final synthetic c:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Ltk;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    const/4 p1, 0x0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Ltk;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    iput p3, p0, Ltk;->c:I

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
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_4

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

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Ltk;->a:Ljava/lang/Object;

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
    const/4 p1, 0x0

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
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_4

    nop

    nop

    :goto_3
    iput-object p2, p0, Ltk;->b:Ljava/lang/Object;

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

    :goto_4
    return-void

    nop

    nop

    nop

    :goto_5
    iput p3, p0, Ltk;->c:I

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


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 6

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v2, v4}, Left;->o(Ljava/lang/Runnable;)V

    goto/32 :goto_78

    nop

    nop

    :goto_1
    invoke-static {v0, p0}, Landroidx/wear/ambient/AmbientMode$AmbientCallback;->d(Ljava/lang/reflect/Method;Ljava/lang/Class;)Z

    move-result p0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_2
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Ltk;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    :goto_6
    const/4 v1, 0x0

    nop

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

    nop

    :goto_7
    iget-object p0, p0, Lhkm;->t:Lbob;

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Ltk;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_9
    iget-object v1, p0, Lese;->c:Landroidx/work/impl/WorkDatabase;

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Leur;->a()Ljava/lang/Class;

    move-result-object p0

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

    :goto_b
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_d
    invoke-static {v0, p0}, Landroidx/wear/ambient/AmbientMode$AmbientCallback;->d(Ljava/lang/reflect/Method;Ljava/lang/Class;)Z

    move-result p0

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_e
    check-cast p0, Leur;

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

    :goto_f
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_10
    goto/32 :goto_3

    nop

    :goto_11
    const/4 v3, 0x0

    nop

    packed-switch v0, :pswitch_data_0

    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_12
    check-cast p0, Lese;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_13
    const-string v4, "getWindowAreaComponent"

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object p0, p0, Letm;->a:Landroid/net/ConnectivityManager;

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_15
    check-cast p0, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    :goto_16
    return-object p0

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch

    :goto_17
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_18
    if-nez p0, :cond_1

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_19
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_1a
    move-object v2, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    :goto_1c
    check-cast p0, Ljava/lang/reflect/Method;

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    check-cast v0, [Ljava/lang/Class;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v0, p0, Lese;->h:Lqpe;

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

    nop

    nop

    :goto_1f
    invoke-interface {p0, v1}, Lujg;->j(Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_20
    check-cast p0, Letm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_21
    if-nez p0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    :cond_2
    goto/32 :goto_43

    nop

    nop

    nop

    :goto_22
    iget-object v3, p0, Ltk;->a:Ljava/lang/Object;

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

    :goto_23
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object p0, p0, Lets;->a:Leui;

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_26
    check-cast p0, Lhkm;

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_27
    iget-object v0, p0, Ltk;->b:Ljava/lang/Object;

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

    :goto_28
    monitor-enter v1

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v2, p0, Leui;->c:Ljava/util/LinkedHashSet;

    nop

    nop

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    if-eqz v0, :cond_3

    nop

    nop

    iget-object v0, p0, Leui;->c:Ljava/util/LinkedHashSet;

    nop

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_3

    nop

    nop

    nop

    invoke-virtual {p0}, Leui;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_29
    check-cast p0, Leox;

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-interface {v0, v1}, Lbob;->h(Ljava/lang/Object;)V

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_2b
    throw p0

    nop

    nop

    :pswitch_0
    goto/32 :goto_3a

    nop

    nop

    :goto_2c
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object p0, p0, Ltk;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object p0, p0, Ltk;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object p0, p0, Ltk;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_56

    nop

    nop

    :goto_31
    return-object p0

    nop

    nop

    :pswitch_2
    goto/32 :goto_79

    nop

    nop

    nop

    :goto_32
    const/4 v2, 0x1

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

    :goto_33
    move v2, v3

    nop

    :goto_34
    goto/32 :goto_82

    nop

    nop

    nop

    :goto_35
    invoke-interface {p0, v0}, Lepd;->b(Ldux;)V

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_36
    if-nez v1, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :cond_4
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iget-object p0, p0, Ltk;->b:Ljava/lang/Object;

    nop

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

    :goto_38
    monitor-exit v1

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iget-object p0, p0, Ltk;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-static {}, Leqh;->b()V

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-direct {v4, v0, v3, v5, v1}, Less;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[C)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {v0, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_3e
    iget-object v0, p0, Ltk;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    goto/16 :goto_53

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_52

    nop

    nop

    :goto_41
    new-instance v4, Less;

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_42
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_43
    goto/16 :goto_34

    nop

    nop

    :goto_44
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_45
    const/4 v5, 0x4

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_46
    return-object p0

    nop

    nop

    :pswitch_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_47
    iget-object v0, p0, Ltk;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    iget-object p0, p0, Lese;->d:Ljava/util/List;

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_49
    check-cast v0, Lhkm;

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_4a
    iget-object v0, v0, Lhkm;->R:Luaz;

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraManager;->unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_4c
    check-cast p0, Lets;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_4f
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_50
    invoke-interface {v0}, Luaz;->a()Ljava/lang/Object;

    goto/32 :goto_76

    nop

    nop

    :goto_51
    if-nez v1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    :cond_5
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_52
    move v2, v3

    nop

    nop

    nop

    :goto_53
    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_54
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_55
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_56
    invoke-static {v0}, Landroidx/wear/ambient/AmbientMode$AmbientCallback;->e(Ljava/lang/reflect/Method;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_58
    check-cast v4, Ljava/lang/Class;

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    :goto_59
    iget v0, p0, Ltk;->c:I

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_5a
    iget-object p0, p0, Ltk;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_5b
    check-cast v0, Ljava/lang/reflect/Method;

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    iget-object v4, p0, Ltk;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-interface {p0, v0}, Lbob;->h(Ljava/lang/Object;)V

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_5f
    const v1, 0x6

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    :goto_60
    iget-object p0, p0, Ltk;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_61
    array-length v4, v0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_62
    iget-object v2, v2, Lese;->c:Landroidx/work/impl/WorkDatabase;

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_63
    invoke-static {v0}, Landroidx/wear/ambient/AmbientMode$AmbientCallback;->e(Ljava/lang/reflect/Method;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    return-object p0

    nop

    :pswitch_4
    goto/32 :goto_71

    nop

    nop

    :goto_65
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_66
    const v0, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_67
    invoke-direct {v1, v0}, Lta;-><init>(Landroidx/wear/ambient/AmbientDelegate;)V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_68
    iget-object v1, p0, Leui;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_69
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_6a
    check-cast v0, Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    iget-object p0, p0, Ltk;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p0

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    return-object p0

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_6f
    monitor-exit v1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    return-object p0

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_71
    iget-object v0, p0, Ltk;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_72
    iget-object v0, p0, Ltk;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_73
    invoke-virtual {v4, v1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_74
    check-cast v0, Landroid/net/ConnectivityManager$NetworkCallback;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_75
    sget-wide v0, Letr;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_76
    iget-object v0, p0, Ltk;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_77
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_78
    iget-object p0, p0, Ltk;->b:Ljava/lang/Object;

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

    :goto_79
    iget-object v0, p0, Ltk;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7a
    iget-object v0, p0, Ltk;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    check-cast v0, Landroid/hardware/camera2/CameraManager;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_7c
    iget-object p0, p0, Leox;->a:Lepd;

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_6
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_7e
    return-object p0

    nop

    :pswitch_7
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    invoke-static {v0, v1, p0}, Leri;->a(Lqpe;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_80
    new-instance v1, Lta;

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_81
    check-cast v2, Lese;

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_82
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_83
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop
.end method
