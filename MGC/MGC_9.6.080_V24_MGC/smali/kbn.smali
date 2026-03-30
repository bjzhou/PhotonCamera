.class public final Lkbn;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Landroid/view/accessibility/AccessibilityManager;

.field public final b:Lhvp;

.field public final c:Lcom/google/android/apps/camera/ui/hotshot/HotshotController;

.field public final d:Lkbb;

.field public final e:Lrss;

.field public final f:Z

.field public final g:Z

.field public final h:Lkog;

.field public final i:Llad;


# direct methods
.method public constructor <init>(Landroid/view/accessibility/AccessibilityManager;Lhvp;Lkog;Llad;Lkbb;Lhst;Lhoh;Lcom/google/android/apps/camera/ui/hotshot/HotshotController;Lrss;)V
    .locals 0

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lhxc;->c:Liof;

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lhxh;->i:Lpdl;

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lrss;->h()Z

    move-result p2

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p3, p0}, Lpoh;->m(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p9}, Lrss;->h()Z

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p1, p1, Lcom/google/android/apps/camera/faceindicator/FaceIndicatorView;->d:Landroid/graphics/Rect;

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

    :goto_7
    sget-object p2, Lhmp;->f:Lhmn;

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

    :goto_8
    const-string p5, "Wrong max faces %d"

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_a
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_b
    iput-boolean p2, p0, Lkbn;->g:Z

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p1}, Lscs;->c()Lsdo;

    move-result-object p1

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1b

    nop

    nop

    :goto_e
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_25

    nop

    nop

    :goto_f
    iput-object p9, p0, Lkbn;->e:Lrss;

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_10
    check-cast p0, Landroid/graphics/Rect;

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

    :goto_11
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_f

    nop

    nop

    :goto_12
    check-cast p1, Lhxc;

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_13
    check-cast p0, Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iput p0, p8, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->y:I

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 p4, 0x0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p7, p2}, Lhoh;->p(Lhmn;)Z

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_18
    check-cast p0, Lhxc;

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

    :goto_19
    invoke-virtual {p7, p1}, Lhoh;->p(Lhmn;)Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_1a
    if-nez p2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iput-object p4, p0, Lkbn;->i:Llad;

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_1c
    return-void

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p9}, Lrss;->c()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1e
    if-eqz p0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-direct {p0, p4, p4, p4, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_20
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iput-object p2, p0, Lkbn;->b:Lhvp;

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p3, p0}, Lpoh;->m(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-object p1, p1, Lhxc;->c:Liof;

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iput-object p1, p0, Lkbn;->a:Landroid/view/accessibility/AccessibilityManager;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_26
    if-nez p2, :cond_2

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_27
    iput-object p3, p0, Lkbn;->h:Lkog;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_28
    if-nez p1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_29
    move p0, p4

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-interface {p1, p5}, Lscz;->M(I)Lsdo;

    move-result-object p1

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    new-instance p0, Landroid/graphics/Rect;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_2c
    sget-object p1, Lhmv;->a:Lhmn;

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

    :goto_2d
    goto/16 :goto_46

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {p0, p1}, Lpdl;->d(I)V

    :goto_30
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    check-cast p1, Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_32
    invoke-virtual {p0}, Lrss;->c()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_33
    iget-object p1, p1, Liof;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_34
    iput-object p0, p8, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->F:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_56

    nop

    nop

    nop

    :goto_36
    check-cast p0, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_37
    iput-boolean p1, p0, Lkbn;->f:Z

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

    :goto_38
    goto/16 :goto_15

    nop

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_3a
    invoke-interface {p1, p5, p0}, Lscz;->t(Ljava/lang/String;I)V

    goto/32 :goto_38

    nop

    nop

    :goto_3b
    invoke-virtual {p9}, Lrss;->c()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_3c
    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    new-instance p0, Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_3e
    goto/16 :goto_50

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_40
    if-eqz p0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :cond_4
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_41
    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_MAX_FACE_COUNT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_42
    iput-object p5, p0, Lkbn;->d:Lkbb;

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_43
    check-cast p1, Lcom/google/android/apps/camera/faceindicator/FaceIndicatorView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_44
    const/4 p2, 0x1

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_45
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    nop

    nop

    :goto_46
    goto/32 :goto_57

    nop

    nop

    :goto_47
    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_48
    check-cast p1, Lscz;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {p3}, Lpoh;->g()I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {p1}, Lrss;->c()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {p3, p0}, Lpoh;->m(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    iget-object p0, p0, Liof;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    if-nez p2, :cond_5

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    move p2, p4

    nop

    nop

    nop

    nop

    :goto_50
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_51
    check-cast p0, Lhxh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_52
    sget-object p1, Lhmq;->a:Ljava/lang/Float;

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_53
    invoke-direct {p0, p4, p4, p4, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_54
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_55
    const/16 p5, 0x12c3

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_56
    if-nez p2, :cond_6

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_6
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    if-lez p0, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_5a

    nop

    nop

    :goto_58
    check-cast p0, Lrss;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_59
    if-eqz p0, :cond_8

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    :cond_8
    goto/32 :goto_29

    nop

    nop

    :goto_5a
    sget-object p1, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_5b
    iput-object p8, p0, Lkbn;->c:Lcom/google/android/apps/camera/ui/hotshot/HotshotController;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Loyd;Lowu;)Lpci;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p1, v0, p2}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    new-instance v0, Lkbm;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    :goto_3
    invoke-direct {v0, p0}, Lkbm;-><init>(Lkbn;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b(Z)V
    .locals 5

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v3, p0, v1}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    new-array v1, v1, [Ljava/lang/Object;

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

    :goto_5
    const/4 v4, 0x0

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

    :goto_6
    return-void

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_8
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_9
    aput-object v2, v1, v4

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

    :goto_a
    iget-boolean v0, p0, Lkbn;->g:Z

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

    :goto_b
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_c
    const/16 v3, 0x372

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_d
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x8

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

    :goto_f
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v0, 0xb

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_13
    iget-object p0, p0, Lkbn;->e:Lrss;

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

    :goto_14
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    :goto_15
    invoke-virtual {p0}, Lrss;->c()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    check-cast p0, Lhxc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop
.end method

.method public final c(Lpck;)V
    .locals 1

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lkbn;->e:Lrss;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lhvp;->s:Lpck;

    nop

    :goto_2
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_3
    if-nez v0, :cond_0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    :goto_4
    iget-object v0, p0, Lkbn;->c:Lcom/google/android/apps/camera/ui/hotshot/HotshotController;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    :goto_7
    iget-object p0, p0, Lkbn;->b:Lhvp;

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

    :goto_8
    check-cast v0, Lhxc;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_9
    iget-boolean v0, p0, Lkbn;->g:Z

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0, p1}, Lhxc;->b(Lpck;)V

    :goto_b
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->k(Lpck;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-boolean v0, p0, Lkbn;->f:Z

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop
.end method
