.class public Lcom/google/android/apps/camera/stats/ViewfinderJankSession;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcom/google/android/apps/camera/stats/timing/TimingSession;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/util/List;

.field public final c:Ljava/util/List;

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field private h:Lsml;

.field private i:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    goto/32 :goto_13

    nop

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
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput v0, p0, Lcom/google/android/apps/camera/stats/ViewfinderJankSession;->d:I

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput v0, p0, Lcom/google/android/apps/camera/stats/ViewfinderJankSession;->f:I

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x1

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

    nop

    :goto_a
    const/16 v1, 0x1e

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput-object v0, p0, Lcom/google/android/apps/camera/stats/ViewfinderJankSession;->c:Ljava/util/List;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_c
    const/4 v0, 0x0

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

    :goto_d
    iput v0, p0, Lcom/google/android/apps/camera/stats/ViewfinderJankSession;->g:I

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_e
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_f
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_11
    iput v0, p0, Lcom/google/android/apps/camera/stats/ViewfinderJankSession;->e:I

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iput-object v0, p0, Lcom/google/android/apps/camera/stats/ViewfinderJankSession;->b:Ljava/util/List;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v0, 0x9

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_14
    new-instance v0, Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    new-instance v0, Ljava/util/ArrayList;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_16
    iput-object v0, p0, Lcom/google/android/apps/camera/stats/ViewfinderJankSession;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_17
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_18
    new-instance v0, Ljava/util/ArrayList;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method public static final c(Lpro;DD)Lsml;
    .locals 6

    goto/32 :goto_9

    nop

    nop

    :goto_0
    iget p2, p1, Lsml;->b:I

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    check-cast p0, Ljava/lang/Long;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_3
    goto/32 :goto_2d

    nop

    nop

    :goto_4
    or-int/lit8 v3, v3, 0x8

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_40

    nop

    :goto_6
    iput p2, p1, Lsml;->b:I

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    or-int/lit8 p2, p2, 0x20

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_8
    check-cast v3, Lsml;

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

    nop

    :goto_9
    const v0, 0x1c

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_a
    or-int/lit8 p2, p2, 0x40

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_b
    iget v2, v1, Lsml;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v3}, Ltkg;->C()Z

    move-result v3

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_e
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object p1, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget p2, p1, Lsml;->b:I

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_12
    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_13
    const-wide/16 v1, 0x0

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

    :goto_14
    check-cast v2, Ljava/lang/Long;

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_16
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {p3, p4}, Lnzk;->E(D)I

    move-result p0

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object p1, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_19
    check-cast v2, Lsml;

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    check-cast p1, Lsml;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1b
    if-eqz v3, :cond_1

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5d

    nop

    nop

    :goto_1c
    iget-object v1, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_1d
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_1e
    goto/32 :goto_42

    nop

    nop

    :goto_1f
    iget-object v1, v0, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v2, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_21
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_FRAME_DURATION:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_23
    goto/32 :goto_20

    nop

    nop

    :goto_24
    if-nez p0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_25
    if-nez v1, :cond_3

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_26
    check-cast v3, Lsml;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_27
    invoke-virtual {v0}, Ltkb;->i()Ltkg;

    move-result-object p0

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    or-int/lit8 v4, v4, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_29
    or-int/lit8 v2, v2, 0x10

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

    :goto_2a
    iget-object v3, v0, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2b
    iput p0, p1, Lsml;->i:I

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_51

    nop

    nop

    nop

    :goto_2d
    iget-object p1, v0, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    or-int/lit8 v5, v5, 0x2

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_41

    nop

    :goto_30
    invoke-interface {p0, v2}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    nop

    nop

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

    :goto_32
    iget-object p1, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    :goto_33
    iput v2, v1, Lsml;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    :goto_34
    invoke-static {v1, v2}, Lnzk;->F(J)I

    move-result p0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_35
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v1}, Ltkg;->C()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_37
    iput-wide v3, v1, Lsml;->d:J

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-interface {p0, v1}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    iput-wide v1, v3, Lsml;->c:J

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

    nop

    :goto_3c
    iget v4, v3, Lsml;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_3d
    iput v3, v2, Lsml;->b:I

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_3e
    return-object p0

    nop

    :goto_3f
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_42
    iget-object v1, v0, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_43
    check-cast v1, Lsml;

    nop

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

    nop

    :goto_44
    sget-object v0, Lsml;->a:Lsml;

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_45
    iget-object v1, v0, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    const v1, 0x17

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_47
    iput p0, p1, Lsml;->h:I

    nop

    nop

    nop

    nop

    nop

    :goto_48
    goto/32 :goto_27

    nop

    nop

    :goto_49
    invoke-virtual {p1}, Ltkg;->C()Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_4a
    iput v4, v3, Lsml;->b:I

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

    nop

    :goto_4b
    invoke-virtual {p1}, Ltkg;->C()Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    iget v5, v1, Lsml;->b:I

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    if-eqz v2, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    :cond_4
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    iput-wide v1, v3, Lsml;->e:J

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_4f
    cmpl-double p0, p1, v1

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_50
    if-eqz p1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    :cond_5
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_51
    cmpl-double p0, p3, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_52
    invoke-virtual {v2}, Ltkg;->C()Z

    move-result v2

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_53
    iput v4, v3, Lsml;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_54
    invoke-virtual {v0}, Ltkg;->m()Ltkb;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_55
    sget-object v3, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    iput p2, p1, Lsml;->b:I

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_57
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    :goto_58
    invoke-virtual {v3}, Ltkg;->C()Z

    move-result v3

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_59
    iget v4, v3, Lsml;->b:I

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_5a
    iput v1, v2, Lsml;->f:I

    nop

    nop

    nop

    nop

    :goto_5b
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    check-cast p0, Lsml;

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_5e
    goto/32 :goto_63

    nop

    nop

    nop

    :goto_5f
    check-cast v1, Ljava/lang/Long;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_60
    if-eqz v1, :cond_6

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_6
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    if-gtz p0, :cond_7

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_69

    nop

    nop

    :goto_62
    or-int/lit8 v4, v4, 0x1

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_63
    iget-object v3, v0, Ltkb;->b:Ltkg;

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

    nop

    :goto_64
    invoke-interface {p0}, Lpro;->e()J

    move-result-wide v1

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_65
    if-gtz p0, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_17

    nop

    nop

    :goto_66
    invoke-virtual {v1}, Ltkg;->C()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    iput v5, v1, Lsml;->b:I

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_69
    invoke-static {p1, p2}, Lnzk;->E(D)I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_6a
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_6b
    if-eqz v1, :cond_9

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    check-cast v1, Lsml;

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_6d
    iget-object v3, v0, Ltkb;->b:Ltkg;

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

    nop

    :goto_6e
    iget-object v3, v0, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    invoke-static {v1, v2}, Lnzk;->F(J)I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    if-eqz v3, :cond_a

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_71
    iget-object v2, v0, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_72
    check-cast p1, Lsml;

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

    :goto_73
    if-eqz p1, :cond_b

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_2

    nop

    nop

    :goto_74
    invoke-interface {p0, v3}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_75
    iput p0, v1, Lsml;->g:I

    nop

    :goto_76
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_77
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

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

    :goto_78
    if-nez v2, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    :cond_c
    goto/32 :goto_57

    nop

    nop

    nop

    :goto_79
    iget v3, v2, Lsml;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lsml;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lcom/google/android/apps/camera/stats/ViewfinderJankSession;->h:Lsml;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    iput-object p1, p0, Lcom/google/android/apps/camera/stats/ViewfinderJankSession;->h:Lsml;

    nop

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b(Ljava/lang/Runnable;)V
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

    :goto_1
    iput-object p1, p0, Lcom/google/android/apps/camera/stats/ViewfinderJankSession;->i:Ljava/lang/Runnable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final close()V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

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
    iget-object p0, p0, Lcom/google/android/apps/camera/stats/ViewfinderJankSession;->i:Ljava/lang/Runnable;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    return-void

    nop
.end method

.method public getDelay150PctCount()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget p0, p0, Lcom/google/android/apps/camera/stats/ViewfinderJankSession;->f:I

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop
.end method

.method public getDelay500PctCount()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget p0, p0, Lcom/google/android/apps/camera/stats/ViewfinderJankSession;->g:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public getDelay50PctCount()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget p0, p0, Lcom/google/android/apps/camera/stats/ViewfinderJankSession;->e:I

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    nop
.end method
