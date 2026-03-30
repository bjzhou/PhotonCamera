.class public final Llfp;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:Lsdb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

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
    const-string v0, "lfp"

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    sput-object v0, Llfp;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public static a(Lpnu;)Lryb;
    .locals 2

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v1, p0, v0}, Lpha;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v1, Lpha;

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

    :goto_3
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_1

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1e

    nop

    :goto_5
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v0

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

    :goto_8
    invoke-interface {p0}, Lpnu;->B()Ljava/util/Set;

    move-result-object p0

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

    :goto_9
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_2
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_a
    sget p0, Lryb;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_c
    invoke-static {v1}, Lryb;->l(Ljava/lang/Object;)Lryb;

    move-result-object p0

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_e
    sget-object p0, Lkoh;->a:Landroid/hardware/camera2/CaptureRequest$Key;

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

    nop

    :goto_f
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_13
    const v1, 0xf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_15
    sget-object p0, Lsbh;->a:Lryb;

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_16
    sget-object v1, Lkoh;->a:Landroid/hardware/camera2/CaptureRequest$Key;

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

    nop

    :goto_17
    check-cast v0, Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const v0, 0x12

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1a
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1c
    return-object p0

    nop

    nop

    :goto_1d
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_6

    nop

    :goto_1f
    goto/32 :goto_8

    nop

    nop

    nop
.end method

.method public static b(Lkdr;Landroid/location/Location;)Lryb;
    .locals 7

    goto/32 :goto_2f

    nop

    nop

    :goto_0
    const/16 v2, 0xe23

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_1
    sget-object p0, Llfp;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_2
    new-instance v0, Lrxw;

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

    nop

    :goto_3
    invoke-virtual {v1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_4
    invoke-virtual {p1}, Landroid/location/Location;->getMslAltitudeMeters()D

    move-result-wide v1

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_60

    nop

    :goto_6
    invoke-virtual {v1}, Lscs;->b()Lsdo;

    move-result-object v1

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

    :goto_7
    const/16 v2, 0xe21

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {v1, v2}, Lscz;->M(I)Lsdo;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {v1, v2}, Lscz;->s(Ljava/lang/String;)V

    :goto_a
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    aput-wide v3, v5, v1

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    :goto_c
    sget-object v1, Llfp;->a:Lsdb;

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_61

    nop

    nop

    :goto_e
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const-string v2, "Camera framework flag for latitude and longitude was not found."

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_11
    invoke-virtual {v1}, Lj$/util/Optional;->isPresent()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :cond_1
    goto/32 :goto_34

    nop

    nop

    :goto_13
    sget-object v1, Llfp;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0, v3}, Lrxw;->h(Ljava/lang/Object;)V

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_15
    if-nez v1, :cond_2

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-nez v1, :cond_3

    nop

    goto/32 :goto_38

    nop

    :cond_3
    :try_start_0
    invoke-virtual {p1}, Landroid/location/Location;->hasMslAltitudeAccuracy()Z

    move-result v1

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_17
    aput-wide v1, v5, v6

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_18
    check-cast v1, Lscz;

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_19
    check-cast p0, Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1a
    iget-object v1, p0, Lkdr;->c:Lj$/util/Optional;

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

    nop

    :goto_1b
    invoke-interface {p0, p1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_1c
    invoke-direct {v1, p0, p1}, Lpha;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p0}, Lscs;->b()Lsdo;

    move-result-object p0

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v0, v3}, Lrxw;->h(Ljava/lang/Object;)V

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto :goto_2d

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_24
    new-array v5, v5, [D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_25
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v1}, Lj$/util/Optional;->isPresent()Z

    move-result v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_27
    new-instance v3, Lpha;

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_28
    sget-object v1, Llfp;->a:Lsdb;

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

    :goto_29
    goto/16 :goto_a

    nop

    :goto_2a
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_2b
    check-cast p0, Lscz;

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-interface {p0, p1}, Lscz;->s(Ljava/lang/String;)V

    :catchall_0
    :goto_2d
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v0, v2}, Lrxw;->h(Ljava/lang/Object;)V

    goto/32 :goto_3a

    nop

    nop

    :goto_2f
    const v0, 0x1d

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_30
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_31
    iget-object v1, p0, Lkdr;->a:Lj$/util/Optional;

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v1}, Lj$/util/Optional;->isPresent()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    if-nez v1, :cond_4

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v1

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const/4 v5, 0x2

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    const/16 p1, 0xe24

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_37
    goto :goto_3f

    nop

    nop

    :goto_38
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iget-object v1, p0, Lkdr;->c:Lj$/util/Optional;

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_3a
    goto/16 :goto_5b

    nop

    :goto_3b
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {v1}, Lscs;->b()Lsdo;

    move-result-object v1

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

    :goto_3d
    iget-object v1, p0, Lkdr;->d:Lj$/util/Optional;

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-interface {v1, v2}, Lscz;->s(Ljava/lang/String;)V

    :catchall_1
    :goto_3f
    goto/32 :goto_3d

    nop

    nop

    :goto_40
    if-nez v1, :cond_5

    nop

    goto/32 :goto_22

    nop

    :cond_5
    :try_start_1
    invoke-virtual {p1}, Landroid/location/Location;->hasMslAltitude()Z

    move-result v1

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_41
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_42
    check-cast v1, Lscz;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_43
    invoke-virtual {v1}, Lscs;->b()Lsdo;

    move-result-object v1

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual {v1}, Lj$/util/Optional;->isPresent()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_45
    invoke-virtual {v0}, Lrxw;->g()Lryb;

    move-result-object p0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_46
    if-nez v1, :cond_6

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_6
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_48
    const/4 v6, 0x0

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_49
    iget-object p0, p0, Lkdr;->d:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    :goto_4a
    const/16 v2, 0xe22

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_4b
    iget-object v1, p0, Lkdr;->a:Lj$/util/Optional;

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-direct {v3, v1, v2}, Lpha;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    new-instance v1, Lpha;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    const-string v2, "Camera framework flag for horizontal accuracy radius was not found."

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_50
    const v1, 0x1a

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

    :goto_51
    check-cast v1, Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    check-cast v1, Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_53
    invoke-interface {v1, v2}, Lscz;->M(I)Lsdo;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_55
    iget-object v1, p0, Lkdr;->b:Lj$/util/Optional;

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

    :goto_56
    new-instance v2, Lpha;

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_57
    new-instance v3, Lpha;

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_58
    invoke-virtual {v0, v1}, Lrxw;->h(Ljava/lang/Object;)V

    goto/32 :goto_21

    nop

    nop

    :goto_59
    check-cast v1, Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-interface {v1, v2}, Lscz;->s(Ljava/lang/String;)V

    :goto_5b
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-direct {v0}, Lrxw;-><init>()V

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_5d
    const-string v2, "Camera framework flag for mean sea level altitude accuracy was not found."

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-virtual {p1}, Landroid/location/Location;->getMslAltitudeAccuracyMeters()F

    move-result v2

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_5f
    invoke-interface {v1, v2}, Lscz;->M(I)Lsdo;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_60
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_61
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    invoke-virtual {v1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_64
    invoke-direct {v2, v1, v5}, Lpha;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_65
    invoke-virtual {p0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_66
    invoke-direct {v3, v1, v2}, Lpha;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    const-string p1, "Camera framework flag for mean sea level altitude was not found."

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_68
    if-nez v1, :cond_7

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_69
    iget-object v1, p0, Lkdr;->b:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_6a
    check-cast v1, Lscz;

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop
.end method

.method public static c(Lkqa;)Lryy;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lkqa;->a:Ljava/util/Set;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0}, Lryy;->E(Ljava/util/Collection;)Lryy;

    move-result-object p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static d(Lnne;Lpnu;Lkdv;)Lryy;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1, v0, p2}, Llfp;->l(Lnne;Lpnu;ZLkdv;)Lryy;

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

    :goto_1
    return-object p0

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static e(Ljava/util/Set;Lpgm;Lpnu;)V
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p2}, Lpuq;->by(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p2

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1
    check-cast v0, Lpha;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_2
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    :goto_3
    const v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {p2}, Lpnu;->B()Ljava/util/Set;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1}, Lpgm;->b()Lryw;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_9
    invoke-virtual {v1, v0}, Lryw;->h(Ljava/lang/Object;)V

    goto/32 :goto_14

    nop

    nop

    :goto_a
    const v1, 0x19

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

    :goto_b
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v1, v0, Lpha;->a:Landroid/hardware/camera2/CaptureRequest$Key;

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

    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v1

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

    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_16
    if-nez v1, :cond_2

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_12

    nop

    :goto_18
    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_19
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_13

    nop

    nop

    nop

    nop
.end method

.method public static f(Landroid/hardware/camera2/CaptureRequest$Key;Lpnu;)Z
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

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

    :goto_4
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    nop

    :goto_5
    goto/32 :goto_c

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x16

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    :goto_9
    const v0, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-nez v0, :cond_1

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

    :cond_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_d
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

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

    :goto_f
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-interface {p1}, Lpnu;->A()Ljava/util/Set;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_12
    goto/32 :goto_1

    nop

    :goto_13
    goto/32 :goto_11

    nop

    nop

    :goto_14
    check-cast v0, Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_15
    invoke-virtual {p0}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    return p0

    nop

    nop

    :goto_18
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static g(Lphh;)Z
    .locals 4

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-wide/16 v2, 0x1003

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_1
    invoke-interface {p0}, Lphh;->a()I

    move-result p0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2
    cmp-long p0, v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_3
    return p0

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_4

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    if-nez p0, :cond_0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_9
    int-to-long v0, p0

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_a
    const v1, 0x7

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_b
    const-wide/16 v2, 0x1002

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_c
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_d
    const v0, 0x9

    nop

    nop

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

    :goto_e
    if-nez p0, :cond_1

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
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return p0

    nop

    :goto_10
    goto/32 :goto_c

    nop

    nop

    :goto_11
    const-wide/16 v2, 0x101

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_12
    cmp-long p0, v0, v2

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/4 p0, 0x0

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

    :goto_15
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_16
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_2
    goto/32 :goto_5

    nop

    :goto_17
    cmp-long p0, v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_18
    goto :goto_10

    nop

    :goto_19
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-eqz p0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_18

    nop

    nop

    nop

    nop
.end method

.method public static h(Lphh;)Z
    .locals 4

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x1

    nop

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

    :goto_1
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_2
    if-eqz p0, :cond_0

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

    :cond_0
    goto/32 :goto_3

    nop

    nop

    :goto_3
    goto/16 :goto_f

    nop

    nop

    :goto_4
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_6
    if-nez p0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_8
    int-to-long v0, p0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_2

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_13

    nop

    :goto_a
    cmp-long p0, v0, v2

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    cmp-long p0, v0, v2

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_c
    if-nez p0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1b

    nop

    nop

    :goto_d
    const-wide/16 v2, 0x24

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_e
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_11
    const v1, 0x1f

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_12
    const-wide/16 v2, 0x25

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_13
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    cmp-long p0, v0, v2

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

    :goto_16
    cmp-long p0, v0, v2

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_17
    if-nez p0, :cond_4

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_4
    goto/32 :goto_d

    nop

    nop

    :goto_18
    const-wide/16 v2, 0x20

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_19
    return p0

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const-wide/16 v2, 0x26

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-interface {p0}, Lphh;->a()I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1d
    const v0, 0x2

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
.end method

.method public static i(Landroid/hardware/camera2/CaptureRequest$Key;Lpnu;)Z
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    :goto_3
    const v0, 0xf

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_5
    const/4 p0, 0x0

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

    :goto_6
    return p0

    nop

    :goto_7
    goto/32 :goto_12

    nop

    nop

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_9
    const v1, 0x6

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_a
    check-cast v0, Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_b
    goto/32 :goto_7

    nop

    :goto_c
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_e
    invoke-interface {p1}, Lpnu;->B()Ljava/util/Set;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_f
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_10
    const/4 p0, 0x1

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

    :goto_11
    if-nez v0, :cond_2

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
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_14
    invoke-virtual {p0}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_16
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    :goto_17
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_18
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop
.end method

.method public static j(Lpnu;Lpnv;)Lkog;
    .locals 4

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_16

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-object p1

    nop

    nop

    :goto_5
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_6
    invoke-interface {p0}, Lpnu;->i()Landroid/graphics/Rect;

    move-result-object v3

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

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

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

    nop

    :goto_8
    goto :goto_10

    nop

    nop

    :goto_9
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_c
    move-object p0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_e
    if-gt v2, v3, :cond_1

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

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

    :goto_12
    invoke-interface {p0}, Lpnu;->C()Ljava/util/Set;

    move-result-object v0

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
    new-instance p1, Lkog;

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

    :goto_14
    invoke-interface {v1}, Lpnu;->i()Landroid/graphics/Rect;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-interface {p1, v1}, Lpnv;->a(Lpnx;)Lpnu;

    move-result-object v1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-nez v1, :cond_2

    nop

    goto/32 :goto_9

    nop

    :cond_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_19
    check-cast v1, Lpnx;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1a
    invoke-direct {p1, p0}, Lkog;-><init>(Lpnu;)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1b
    const v0, 0x6

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop
.end method

.method public static k(Lpik;Lpgh;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1
    invoke-interface {p1}, Lpgh;->i()Lpgo;

    move-result-object p1

    nop

    nop

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

    :goto_2
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, v0}, Lpik;->h(Lphh;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    :goto_6
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto :goto_6

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    check-cast v0, Lphh;

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

    :goto_a
    invoke-interface {p1}, Lpgo;->d()Ljava/util/Set;

    move-result-object p1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public static l(Lnne;Lpnu;ZLkdv;)Lryy;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, p1}, Lryw;->j(Ljava/lang/Iterable;)V

    goto/32 :goto_3

    nop

    nop

    :goto_1
    invoke-direct {v0}, Lryw;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v0, Lryw;

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
    const/4 p1, 0x0

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

    :goto_4
    invoke-virtual {v0}, Lryw;->g()Lryy;

    move-result-object p0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    invoke-static {p0, p1, p1, p2, p3}, Llfp;->q(Lnne;ZZZLkdv;)Lryy;

    move-result-object p0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    return-object p0

    nop

    :goto_7
    invoke-virtual {v0, p0}, Lryw;->j(Ljava/lang/Iterable;)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8
    invoke-static {p1}, Llfp;->a(Lpnu;)Lryb;

    move-result-object p1

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static m(Lhoh;Lnne;Z)Z
    .locals 1

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Llfp;->n(Lhoh;Lnne;)Z

    move-result p0

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, v0}, Lhoh;->p(Lhmn;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return p0

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1, p0}, Lnne;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_5
    return p0

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    :goto_7
    if-nez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_8
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-nez p2, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_2
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_a
    sget-object v0, Lhmq;->bN:Lhmn;

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

    nop

    :goto_b
    sget-object p0, Lnne;->b:Lnne;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_c
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_d
    goto :goto_6

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_f
    sget-object p0, Lhnv;->a:Lhmn;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_10
    if-eqz p0, :cond_3

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_3
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static n(Lhoh;Lnne;)Z
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sget-object v0, Lnne;->b:Lnne;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-virtual {p1, v0}, Lnne;->equals(Ljava/lang/Object;)Z

    move-result p1

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

    :goto_3
    const/4 p0, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, p1}, Lhoh;->p(Lhmn;)Z

    move-result p0

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_5
    return p0

    nop

    :goto_6
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_8
    if-nez p1, :cond_0

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
    goto/32 :goto_9

    nop

    nop

    :goto_9
    sget-object p1, Lhne;->y:Lhmn;

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

    :goto_a
    if-nez p0, :cond_1

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

    :cond_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static o(Lpnx;Lpnv;Lknu;Lhoh;)Lkog;
    .locals 6

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    move-object v2, p2

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    move-object v1, p1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    sget-object v4, Lnne;->a:Lnne;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_6
    move-object v3, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_7
    goto/32 :goto_a

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-object p0

    nop

    :goto_a
    goto/32 :goto_f

    nop

    nop

    :goto_b
    invoke-static/range {v0 .. v5}, Llfp;->p(Lpnx;Lpnv;Lknu;Lhoh;Lnne;Z)Lkog;

    move-result-object p0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_c
    move-object v0, p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_f
    goto/32 :goto_8

    nop

    :goto_10
    rem-int v0, v0, v1

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
.end method

.method public static p(Lpnx;Lpnv;Lknu;Lhoh;Lnne;Z)Lkog;
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p1, p0}, Lkog;-><init>(Lpnu;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p1, p0}, Lpnv;->a(Lpnx;)Lpnu;

    move-result-object p0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p0, p1}, Llfp;->j(Lpnu;Lpnv;)Lkog;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    sget-object v0, Lhmq;->ag:Lhmn;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_4
    goto :goto_a

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x8

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_7
    check-cast p0, Lpnt;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_8
    invoke-interface {p0}, Lpnu;->l()Lpog;

    move-result-object v0

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

    :goto_9
    invoke-direct {p0, p1}, Lkog;-><init>(Lpnu;)V

    :goto_a
    goto/32 :goto_b

    nop

    nop

    :goto_b
    new-instance p1, Lkog;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_c
    if-eqz p2, :cond_0

    nop

    goto/32 :goto_16

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    sget-object v1, Lpog;->a:Lpog;

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

    :goto_e
    invoke-virtual {p2}, Lknu;->a()Lpnx;

    move-result-object p2

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_10
    invoke-static {p3, p4, p5}, Llfp;->m(Lhoh;Lnne;Z)Z

    move-result p3

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_11
    return-object p1

    nop

    nop

    :goto_12
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_12

    nop

    :goto_14
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object p2, p0, Lpnt;->a:Lpnx;

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_17
    if-eq v0, v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_18
    new-instance p0, Lkog;

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

    nop

    :goto_19
    invoke-virtual {p3, v0}, Lhoh;->p(Lhmn;)Z

    move-result v0

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

    :goto_1a
    add-int v0, v0, v1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const v1, 0x7

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

    :goto_1c
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_13

    nop

    :goto_1d
    invoke-interface {p1, p2}, Lpnv;->a(Lpnx;)Lpnu;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1e
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1f
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_3
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-nez p3, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_e

    nop

    nop
.end method

.method public static q(Lnne;ZZZLkdv;)Lryy;
    .locals 6

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v2}, Lj$/util/Optional;->isPresent()Z

    move-result p0

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_3
    check-cast p0, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    const v1, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v1, p4, Lkdv;->a:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_7
    if-nez v2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_8
    const/16 v5, 0xb

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

    :goto_9
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_a
    if-nez p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v2}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Lnne;->ordinal()I

    move-result p0

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v2}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

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

    nop

    :goto_e
    if-nez p1, :cond_2

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :cond_2
    :goto_f
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-nez p1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_11
    if-ne p0, v5, :cond_4

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

    :cond_4
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_12
    if-ne p0, v5, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :cond_5
    packed-switch p0, :pswitch_data_0

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_13
    goto/16 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_14
    :pswitch_0
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    return-object p0

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :goto_16
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_18
    invoke-virtual {p0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_19
    const/16 v5, 0xa

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v4, 0x3

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_1d
    check-cast p0, Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p0}, Lj$/util/Optional;->isPresent()Z

    move-result p1

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_20
    const/4 v4, 0x5

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

    nop

    nop

    :goto_21
    new-instance p2, Lpha;

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_22
    iget-object p0, p4, Lkdv;->c:Lj$/util/Optional;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_23
    if-nez p0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    :cond_6
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p0}, Lj$/util/Optional;->isPresent()Z

    move-result p1

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_25
    if-nez p1, :cond_7

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_48

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    check-cast p0, Ljava/lang/Integer;

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_2b
    goto :goto_28

    nop

    nop

    :goto_2c
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_2e
    iget-object p0, p4, Lkdv;->d:Lj$/util/Optional;

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_2f
    new-instance p2, Lpha;

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_30
    invoke-virtual {p0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    check-cast p0, Ljava/lang/Integer;

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

    :goto_32
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_33
    if-nez p1, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    :cond_8
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_34
    if-nez p1, :cond_9

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_35
    sget-object p0, Lsbn;->a:Lsbn;

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

    :goto_36
    check-cast p0, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {p0}, Lj$/util/Optional;->isPresent()Z

    move-result p1

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    const v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_39
    iget-object p0, p4, Lkdv;->f:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/32 :goto_57

    nop

    nop

    :goto_3b
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    goto/16 :goto_28

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_3e
    if-nez p2, :cond_a

    nop

    goto/32 :goto_58

    nop

    :cond_a
    goto/32 :goto_39

    nop

    nop

    nop

    :goto_3f
    goto/16 :goto_58

    nop

    nop

    :pswitch_1
    goto/32 :goto_10

    nop

    nop

    :goto_40
    if-nez p0, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_41
    invoke-virtual {p0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_42
    const/4 v5, 0x6

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {v2}, Lj$/util/Optional;->isPresent()Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_44
    check-cast p0, Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_45
    goto/16 :goto_28

    nop

    nop

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_46
    invoke-static {v0}, Lryy;->E(Ljava/util/Collection;)Lryy;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_47
    check-cast p0, Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual {v1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_49
    if-nez p3, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_4a
    if-ne p0, v4, :cond_d

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_42

    nop

    nop

    nop

    :goto_4b
    if-ne p0, v3, :cond_e

    nop

    nop

    goto/32 :goto_2c

    nop

    :cond_e
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-direct {p2, p0, p1}, Lpha;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/32 :goto_3a

    nop

    nop

    :goto_4d
    invoke-virtual {p0}, Lj$/util/Optional;->isPresent()Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4e
    new-instance v0, Ljava/util/HashSet;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_4f
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_50
    iget-object p0, p4, Lkdv;->b:Lj$/util/Optional;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_51
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_52
    goto/16 :goto_28

    nop

    nop

    :goto_53
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_54
    if-lez v0, :cond_f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :cond_f
    goto/32 :goto_1a

    nop

    :goto_55
    if-ne p0, v5, :cond_10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_57
    goto/16 :goto_2

    nop

    nop

    nop

    nop

    :goto_58
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_59
    invoke-virtual {v1}, Lj$/util/Optional;->isPresent()Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_5a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_5b
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    nop

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

    :goto_5c
    invoke-direct {p2, p0, p1}, Lpha;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_5d
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    iget-object v2, p4, Lkdv;->e:Lj$/util/Optional;

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

    nop

    :goto_5f
    goto/16 :goto_28

    nop

    nop

    nop

    nop

    :goto_60
    goto/32 :goto_20

    nop

    nop

    nop

    nop
.end method
