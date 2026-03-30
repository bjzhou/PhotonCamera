.class public final Lktc;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ltun;


# instance fields
.field private final synthetic a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iput p1, p0, Lktc;->a:I

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 5

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, v0}, Lgjc;->a(Lsui;Ljava/lang/String;)V

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

    :pswitch_0
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_3
    return-object v0

    nop

    nop

    :pswitch_1
    goto/32 :goto_20

    nop

    nop

    :goto_4
    return-object p0

    nop

    :pswitch_2
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_5
    new-array v0, v0, [Landroid/hardware/camera2/params/Face;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_35

    nop

    nop

    :goto_7
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_8
    new-instance p0, Loxv;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_9
    const-string v0, "OneCameraStarted"

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    new-instance p0, Lsuu;

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

    :goto_b
    const-wide/16 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_c
    invoke-direct {p0}, Lsuu;-><init>()V

    goto/32 :goto_9

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

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

    nop

    :goto_e
    new-instance p0, Loxv;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_f
    sget-object p0, Lils;->a:Lils;

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_10
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_11
    sget-object p0, Lils;->d:Lils;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_12
    invoke-direct {v1, v0, v2, v3, v4}, Lnib;-><init>([Landroid/hardware/camera2/params/Face;Landroid/graphics/Rect;J)V

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    new-instance p0, Loxv;

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_14
    invoke-static {}, La;->aR()Ljava/lang/Boolean;

    move-result-object p0

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_15
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_16
    return-object p0

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_3f

    nop

    nop

    :goto_17
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_6
    goto/32 :goto_45

    nop

    nop

    :goto_18
    const v1, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_19
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-direct {v1, v0, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_1b
    return-object p0

    nop

    nop

    :pswitch_7
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_1c
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_8
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1d
    invoke-direct {v0, p0}, Loyg;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1e
    new-instance v2, Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_1f
    add-int v0, v0, v1

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

    :goto_20
    new-instance p0, Lkvc;

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {}, La;->aQ()Ljava/lang/Boolean;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_22
    invoke-direct {p0, v0}, Lljz;-><init>(Landroid/hardware/camera2/CaptureResult$Key;)V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    new-instance p0, Loxv;

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_24
    invoke-direct {p0, v0}, Loxv;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_25
    invoke-direct {p0, v2}, Loxv;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_1c

    nop

    nop

    :goto_26
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    :cond_0
    goto/32 :goto_34

    nop

    :goto_27
    new-instance p0, Loxv;

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

    :goto_28
    sget-object v0, Liji;->c:Liji;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_29
    sget-object p0, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_2a
    invoke-direct {p0, v0}, Loxv;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    sget-object p0, Lrsa;->a:Lrsa;

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_2c
    sget-object p0, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_2d
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_9
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_2e
    return-object p0

    nop

    nop

    nop

    :pswitch_a
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_b
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_30
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_c
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_31
    return-object p0

    nop

    nop

    nop

    :pswitch_d
    goto/32 :goto_4b

    nop

    nop

    :goto_32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-direct {p0, v0}, Loxv;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_2f

    nop

    nop

    :goto_34
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_46

    nop

    nop

    nop

    :goto_36
    return-object p0

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_7
        :pswitch_5
        :pswitch_8
        :pswitch_13
        :pswitch_3
        :pswitch_b
        :pswitch_c
        :pswitch_11
        :pswitch_e
        :pswitch_6
        :pswitch_9
        :pswitch_12
        :pswitch_2
        :pswitch_d
        :pswitch_10
        :pswitch_1
        :pswitch_4
        :pswitch_f
        :pswitch_a
    .end packed-switch

    :goto_37
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_38
    return-object p0

    nop

    :pswitch_e
    goto/32 :goto_8

    nop

    nop

    :goto_39
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    packed-switch p0, :pswitch_data_0

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_3a
    sget-object p0, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-static {}, Lkav;->o()Lkqa;

    move-result-object v0

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_3d
    invoke-direct {v2, v0, v1}, Lkti;-><init>(Ljava/lang/Float;Landroid/util/Pair;)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-direct {p0, v0}, Loxv;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    new-instance p0, Loxv;

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_41
    invoke-direct {p0}, Lsuu;-><init>()V

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_42
    new-instance v2, Lkti;

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_f
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    const/16 v0, 0x5a

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_45
    new-instance p0, Lljz;

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_46
    iget p0, p0, Lktc;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_47
    return-object p0

    nop

    nop

    nop

    :pswitch_10
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_48
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->STATISTICS_LENS_SHADING_CORRECTION_MAP:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_11
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-static {}, Lkav;->o()Lkqa;

    move-result-object p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    return-object p0

    nop

    nop

    nop

    :pswitch_12
    goto/32 :goto_29

    nop

    nop

    :goto_4d
    const v0, 0x1

    nop

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

    :goto_4e
    invoke-direct {p0, v1}, Loxv;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-direct {p0, v0}, Lkvc;-><init>(I)V

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_13
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_51
    new-instance v1, Landroid/util/Pair;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_52
    sget-object v0, Ltbm;->a:Ltbm;

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    sget-object p0, Lils;->c:Lils;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_54
    new-instance v1, Lnib;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_55
    sget-object p0, Lkpx;->e:Lkpx;

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_56
    new-instance v0, Loyg;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_57
    new-instance p0, Lsuu;

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
.end method
