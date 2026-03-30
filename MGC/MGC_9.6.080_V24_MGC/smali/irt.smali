.class public final synthetic Lirt;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Ljava/lang/Object;

.field private final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ZI)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lirt;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    iput-boolean p2, p0, Lirt;->a:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    iput p3, p0, Lirt;->c:I

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
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_70

    nop

    nop

    nop

    :goto_1
    check-cast v0, Ljrw;

    nop

    nop

    nop

    goto/32 :goto_5a

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

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-boolean p0, p0, Lirt;->a:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_4
    check-cast p1, Lcom/google/android/apps/camera/uiutils/ViewSmoothRotationUtil$Rotatee;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Lrss;->c()Ljava/lang/Object;

    move-result-object p0

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

    nop

    :goto_6
    check-cast p1, Ljse;

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_7
    goto/16 :goto_28

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_27

    nop

    nop

    :goto_9
    iget-object v0, p0, Lirt;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_a
    if-ne v0, v2, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_b
    check-cast v0, Lioq;

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

    :goto_c
    sget-object v3, Lrsa;->a:Lrsa;

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_d
    if-ne v0, v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    :cond_2
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_e
    if-ne v0, v1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_f
    check-cast p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v2, v0, Ljrw;->e:Loyd;

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object p0, p0, Lirt;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-eqz v2, :cond_4

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_14
    xor-int/2addr v0, v1

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

    :goto_15
    check-cast p0, Liru;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const-string v6, "reference_luma_image"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    :goto_17
    iget-object v5, p1, Liow;->d:Lcom/google/googlex/gcam/ShotMetadata;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-interface {p0, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/32 :goto_5f

    nop

    nop

    :goto_19
    iget-boolean p0, p0, Lirt;->a:Z

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_1a
    const v0, 0x3

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_1b
    check-cast p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_1c
    check-cast p0, Landroid/animation/ValueAnimator;

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_1d
    const/4 v2, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_1e
    if-lez v0, :cond_5

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_6f

    nop

    :goto_1f
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-nez v2, :cond_6

    nop

    nop

    goto/32 :goto_30

    nop

    :cond_6
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_21
    iget-object p1, p0, Liru;->f:Liow;

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_22
    sget-object v0, Lgbi;->a:Lsdb;

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_23
    instance-of v0, p1, Lcom/google/android/apps/camera/uiutils/ViewSmoothRotationUtil$Rotatee;

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p0}, Lrss;->h()Z

    move-result p1

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

    :goto_25
    move-object v0, p0

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

    :goto_26
    invoke-interface {v2}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_27
    move v1, v4

    nop

    nop

    :goto_28
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    if-nez p1, :cond_7

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2a
    return-void

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v0, p1, v1}, Ljrw;->v(Ljse;Z)V

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_2d
    check-cast p1, Landroid/view/View;

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

    :goto_2e
    check-cast p1, Lgcb;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_2f
    invoke-virtual {v0, p0}, Ljrw;->w(Z)V

    :goto_30
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_31
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    return-void

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_35
    iget-object v0, p0, Lirt;->b:Ljava/lang/Object;

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

    :goto_36
    move v2, v1

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :goto_38
    goto/32 :goto_31

    nop

    nop

    :goto_39
    iget v0, p0, Lirt;->c:I

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_3a
    const/4 v1, 0x1

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

    :goto_3b
    return-void

    nop

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    iget-object v0, p0, Lirt;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    iget-boolean v0, p0, Lirt;->a:Z

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

    :goto_3f
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_41
    iget-boolean p0, p0, Lirt;->a:Z

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_42
    check-cast p1, Landroid/view/View;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_43
    invoke-static {p1, p0, v1}, Lnzk;->ae(Lcom/google/android/apps/camera/uiutils/ViewSmoothRotationUtil$Rotatee;Lnbh;Z)Lrss;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-interface {v2}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-static {p1, v0, p0}, Lnzk;->ah(Landroid/view/View;Lnbh;Z)V

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_46
    sget-object v3, Llpe;->a:Llpe;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    iget-boolean v1, p0, Lirt;->a:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_48
    iget-object v0, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->e:Lnbh;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_49
    if-ne v0, v2, :cond_8

    nop

    nop

    goto/32 :goto_3c

    nop

    :cond_8
    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    iget-object p0, p0, Lirt;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-static {p1}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v4

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

    nop

    :goto_4c
    iget-object p0, p0, Liru;->a:Lcom/google/android/apps/camera/hdrplus/fusion/api/FusionProgressCallback;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {p1}, Lcom/google/googlex/gcam/GrayImageS16;->b()V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_4e
    if-nez v0, :cond_9

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    :cond_9
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_4f
    check-cast p1, Ljse;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_50
    iget-object p0, p0, Lirt;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_51
    if-ne v2, v3, :cond_a

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_52
    return-void

    nop

    nop

    nop

    :goto_53
    goto/32 :goto_42

    nop

    nop

    nop

    :goto_54
    sget-object v3, Llpe;->a:Llpe;

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_55
    goto/16 :goto_68

    nop

    nop

    :goto_56
    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_57
    iget-object p0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->e:Lnbh;

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_58
    invoke-static {p1, p0, v1}, Lnzk;->ah(Landroid/view/View;Lnbh;Z)V

    goto/32 :goto_52

    nop

    nop

    :goto_59
    check-cast v0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_5a
    iget-object v2, v0, Ljrw;->e:Loyd;

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    const/4 v1, 0x4

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

    :goto_5c
    if-nez v0, :cond_b

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_50

    nop

    nop

    :goto_5d
    const v1, 0x17

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

    :goto_5e
    iget-boolean v0, p0, Lirt;->a:Z

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_5f
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_60
    goto/32 :goto_61

    nop

    nop

    :goto_61
    check-cast p1, Lcom/google/googlex/gcam/GrayImageS16;

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_62
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_63
    iget-object p0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->e:Lnbh;

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    invoke-virtual {v0, p1, p0}, Ljrw;->v(Ljse;Z)V

    :goto_65
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    iget-wide v1, p0, Liru;->b:J

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    move v2, v4

    nop

    :goto_68
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_69
    check-cast v0, Ljrw;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_6a
    const/4 v2, 0x3

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

    :goto_6b
    xor-int/2addr p0, v1

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_6c
    if-nez v0, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6d
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    goto/32 :goto_34

    nop

    nop

    nop

    :goto_70
    goto/32 :goto_39

    nop

    nop

    nop

    :goto_71
    invoke-virtual/range {v0 .. v6}, Lioq;->c(JLrss;Lrss;Lcom/google/googlex/gcam/ShotMetadata;Ljava/lang/String;)V

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_72
    if-eq v2, v3, :cond_d

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

    :cond_d
    goto/32 :goto_36

    nop

    nop
.end method

.method public final synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 2

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-ne v0, v1, :cond_0

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_17

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

    :goto_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

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

    :goto_5
    return-object p0

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_1
    goto/32 :goto_9

    nop

    :goto_8
    const/4 v1, 0x3

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

    nop

    :goto_9
    goto/32 :goto_c

    nop

    :goto_a
    goto/32 :goto_1d

    nop

    nop

    :goto_b
    return-object p0

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_a

    nop

    :goto_e
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return-object p0

    nop

    nop

    :goto_10
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_11
    return-object p0

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_15
    if-ne v0, v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

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

    :goto_16
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_17
    const/4 v1, 0x4

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-nez v0, :cond_3

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1a

    nop

    nop

    :goto_1a
    const/4 v1, 0x1

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

    :goto_1b
    const/4 v1, 0x2

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-ne v0, v1, :cond_4

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_4
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget v0, p0, Lirt;->c:I

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const v1, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const v0, 0x17

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_20
    if-ne v0, v1, :cond_5

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_21
    add-int v0, v0, v1

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

    :goto_22
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop
.end method
