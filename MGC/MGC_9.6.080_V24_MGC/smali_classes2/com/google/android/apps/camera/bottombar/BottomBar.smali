.class public Lcom/google/android/apps/camera/bottombar/BottomBar;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "PG"

# interfaces
.implements Lnbg;
.implements Ljpv;
.implements Ljpu;


# static fields
.field public static final i:Lryy;

.field public static final j:Lryy;


# instance fields
.field private final A:Ljava/util/EnumMap;

.field private B:Lcom/google/android/apps/camera/bottombar/PauseResumeButton;

.field private C:Lcom/google/android/apps/camera/bottombar/SnapshotButton;

.field private D:Landroid/widget/ImageButton;

.field private E:Landroid/widget/ImageButton;

.field private F:Landroid/widget/ImageButton;

.field private final G:Landroid/view/ViewStub;

.field private final H:Landroid/view/ViewStub;

.field private final I:Landroid/view/ViewStub;

.field private final J:Landroid/view/ViewStub;

.field private final K:Landroid/view/ViewStub;

.field private final L:I

.field private M:Lnbe;

.field private N:Z

.field private O:Z

.field private P:Z

.field public gestureDetector:Landroid/view/GestureDetector;

.field public isDoubleClick:Z

.field public final k:Ljava/util/EnumMap;

.field public final l:Ljava/util/EnumMap;

.field public lastTouchUpTime:J

.field public final m:Ljava/util/Set;

.field public final n:Ljava/util/EnumMap;

.field public final o:Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;

.field public final p:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

.field public final q:Lcom/google/android/apps/camera/bottombar/CameraSwitchButton;

.field public r:Landroid/widget/ImageButton;

.field public final s:Landroid/view/ViewStub;

.field public t:Lnbh;

.field public u:Z

.field public v:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

.field private final w:Ljava/util/EnumMap;

.field private final x:Ljava/util/EnumMap;

.field private final y:Landroid/widget/FrameLayout;

.field private final z:Ljava/util/EnumMap;


# direct methods
.method private final 6a76c551e4658c5f4308c862164e4dd9m()V
    .locals 13

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_19

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_2
    sub-int/2addr v2, v5

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

    :goto_3
    sget-object v4, Lcom/google/android/apps/camera/bottombar/BottomBar;->j:Lryy;

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    :goto_4
    iput v9, v4, Ldsk;->X:I

    nop

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    :goto_5
    if-eq v5, v12, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    move-object v3, v0

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v3, p0}, Ldso;->c(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    goto/32 :goto_84

    nop

    nop

    :goto_8
    iget-object v10, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->M:Lnbe;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    :goto_9
    sget-object v10, Lcom/google/android/apps/camera/bottombar/BottomBar;->i:Lryy;

    nop

    goto/32 :goto_92

    nop

    nop

    :goto_a
    if-ne v10, v7, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_b
    iget-object v5, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->y:Landroid/widget/FrameLayout;

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-gt v5, v8, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    :cond_2
    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_e
    if-nez v10, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_f
    new-instance v3, Ldso;

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    :cond_4
    goto/32 :goto_32

    nop

    :goto_11
    sub-int/2addr v2, v4

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_12
    if-lt v2, v3, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_79

    nop

    nop

    nop

    :goto_13
    goto/16 :goto_6a

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    new-instance v0, Lrxw;

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    :goto_16
    move v3, v1

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    :goto_17
    add-int/2addr v2, v3

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_ab

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_1b
    add-int/2addr v5, v8

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1c
    div-int/2addr v2, v9

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    :goto_1d
    goto :goto_19

    nop

    :goto_1e
    goto/32 :goto_3a

    nop

    nop

    :goto_1f
    div-float v2, v3, v2

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_f

    nop

    nop

    :goto_21
    iget-object v4, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->y:Landroid/widget/FrameLayout;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_22
    const v11, 0x7f0700bb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_23
    div-int/2addr v4, v9

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    :goto_24
    const/4 v8, 0x1

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    if-nez v5, :cond_6

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    :cond_6
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-nez v10, :cond_7

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

    :cond_7
    goto/32 :goto_a

    nop

    nop

    :goto_27
    invoke-virtual {v2, v10, v8, v11, v9}, Ldso;->i(IIII)V

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_28
    new-instance v2, Ldso;

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v5, p0}, Ldso;->g(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-direct {v5}, Ldso;-><init>()V

    goto/32 :goto_29

    nop

    nop

    :goto_2b
    invoke-virtual {v6}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    nop

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

    nop

    :goto_2d
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    nop

    goto/32 :goto_a1

    nop

    nop

    :goto_2f
    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_30
    invoke-direct {p0, v3}, Lcom/google/android/apps/camera/bottombar/BottomBar;->e94656b6137dd01f26085f984afe853em(Lryy;)I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_33

    nop

    nop

    :goto_32
    goto/32 :goto_85

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_15

    nop

    nop

    :goto_34
    invoke-virtual {v5, v8, v10}, Ldso;->l(II)V

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_35
    check-cast v10, Landroid/widget/Space;

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/BottomBar;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v2, v10, v9, v11, v8}, Ldso;->i(IIII)V

    :goto_39
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/BottomBar;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_3b
    iget-object v4, v4, Ldsj;->d:Ldsk;

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

    :goto_3c
    invoke-virtual {v10}, Lnbh;->d()Z

    move-result v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_3d
    div-int/2addr v3, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_3e
    sub-int/2addr v3, v5

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

    :goto_3f
    new-instance v5, Ldso;

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual {v10}, Landroid/widget/Space;->getVisibility()I

    move-result v10

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    :goto_41
    const/4 v9, 0x2

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_42
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_43
    invoke-static {v0, v11}, Lcom/google/android/apps/camera/bottombar/BottomBar;->y(Lryb;I)I

    move-result v11

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    :goto_44
    sub-int/2addr v4, v3

    nop

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

    :goto_45
    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

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

    :goto_46
    sget-object v5, Lcom/google/android/apps/camera/bottombar/BottomBar;->j:Lryy;

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {v3, p0}, Ldso;->g(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    goto/32 :goto_9b

    nop

    nop

    :goto_48
    invoke-static {v0, v11}, Lcom/google/android/apps/camera/bottombar/BottomBar;->y(Lryb;I)I

    move-result v11

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {v8}, Landroid/widget/Space;->getId()I

    move-result v8

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_4a
    const/high16 v2, 0x3f000000    # 0.5f

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-direct {v2}, Ldso;-><init>()V

    goto/32 :goto_ba

    nop

    nop

    nop

    :goto_4c
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    iget-object v3, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->y:Landroid/widget/FrameLayout;

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

    :goto_4e
    invoke-virtual {v3, v4}, Ldso;->b(I)Ldsj;

    move-result-object v4

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    div-int/lit8 v10, v3, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    add-int/lit8 v11, v5, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    :goto_51
    invoke-virtual {v2, v3, v6, v1, v6}, Ldso;->i(IIII)V

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    if-nez v2, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    :cond_8
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_53
    const v1, 0xd

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    :goto_54
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    invoke-virtual {v2, v10, v6, v1, v6}, Ldso;->i(IIII)V

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    add-int/lit8 v11, v5, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    :goto_57
    const-string v6, "bottomBarContent"

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_58
    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_59
    goto/16 :goto_19

    nop

    nop

    nop

    nop

    :goto_5a
    goto/32 :goto_a4

    nop

    nop

    nop

    :goto_5b
    div-int/lit8 v10, v2, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    :goto_5c
    const v11, 0x7f0700bd

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_5d
    invoke-direct {p0, v3}, Lcom/google/android/apps/camera/bottombar/BottomBar;->e94656b6137dd01f26085f984afe853em(Lryy;)I

    move-result v3

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    :goto_5e
    sget-object v3, Lcom/google/android/apps/camera/bottombar/BottomBar;->i:Lryy;

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_5f
    check-cast v8, Landroid/widget/Space;

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    const/4 v6, 0x4

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    if-nez v5, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_62
    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    goto/16 :goto_c8

    nop

    nop

    nop

    nop

    nop

    :goto_64
    goto/32 :goto_a9

    nop

    nop

    :goto_65
    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/BottomBar;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    :goto_66
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_67
    invoke-virtual {v2, v3, v7, v1, v7}, Ldso;->i(IIII)V

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    :goto_69
    move v5, v1

    nop

    nop

    nop

    :goto_6a
    goto/32 :goto_76

    nop

    nop

    nop

    :goto_6b
    invoke-virtual {v2, v3, v9, v1, v9}, Ldso;->i(IIII)V

    :goto_6c
    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    invoke-static {v0, v1}, Lcom/google/android/apps/camera/bottombar/BottomBar;->y(Lryb;I)I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6f
    invoke-direct {p0, v5}, Lcom/google/android/apps/camera/bottombar/BottomBar;->e94656b6137dd01f26085f984afe853em(Lryy;)I

    move-result v5

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    invoke-virtual {v2, v10, v7, v1, v7}, Ldso;->i(IIII)V

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_71
    invoke-static {v0, v8}, Lcom/google/android/apps/camera/bottombar/BottomBar;->y(Lryb;I)I

    move-result v5

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_72
    move v2, v1

    nop

    nop

    nop

    nop

    :goto_73
    goto/32 :goto_9c

    nop

    nop

    :goto_74
    invoke-virtual {v10}, Lnbe;->ordinal()I

    move-result v10

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_75
    invoke-virtual {v2, v10, v9, v5, v8}, Ldso;->i(IIII)V

    goto/32 :goto_af

    nop

    nop

    nop

    :goto_76
    iget v10, v3, Lsbh;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    :goto_77
    invoke-direct {p0, v4}, Lcom/google/android/apps/camera/bottombar/BottomBar;->e94656b6137dd01f26085f984afe853em(Lryy;)I

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :goto_78
    check-cast v3, Lsbh;

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    :goto_79
    invoke-virtual {p0, v2}, Lcom/google/android/apps/camera/bottombar/BottomBar;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_7a
    goto/16 :goto_19

    nop

    nop

    nop

    nop

    :goto_7b
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    invoke-virtual {v2, v10, v9, v1, v9}, Ldso;->i(IIII)V

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    invoke-direct {p0, v4}, Lcom/google/android/apps/camera/bottombar/BottomBar;->c43d12f4f4da28dd6c943a4effe477b7m(Lryy;)I

    move-result v4

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_7f
    goto/16 :goto_39

    nop

    nop

    nop

    nop

    :goto_80
    goto/32 :goto_56

    nop

    nop

    :goto_81
    if-nez v8, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_b4

    nop

    nop

    :goto_82
    invoke-virtual {v0}, Lrxw;->g()Lryb;

    move-result-object v0

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

    :goto_83
    sub-int/2addr v2, v5

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_84
    return-void

    nop

    nop

    nop

    :goto_85
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_86
    const v0, 0xf

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

    nop

    :goto_87
    if-lt v5, v10, :cond_b

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    :goto_88
    sub-int/2addr v4, v3

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_89
    goto/16 :goto_73

    nop

    :goto_8a
    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    :goto_8c
    sub-int v3, v2, v3

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_8d
    invoke-static {v0, v5}, Lcom/google/android/apps/camera/bottombar/BottomBar;->y(Lryb;I)I

    move-result v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    :goto_8e
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    invoke-direct {v0}, Lrxw;-><init>()V

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_90
    invoke-direct {v3}, Ldso;-><init>()V

    goto/32 :goto_47

    nop

    nop

    :goto_91
    check-cast v8, Ljava/util/Map$Entry;

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_92
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    nop

    :goto_93
    invoke-virtual {p0, v2}, Lcom/google/android/apps/camera/bottombar/BottomBar;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    nop

    :goto_94
    invoke-virtual {v3, v0, v2}, Ldso;->t(IF)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_95
    const/16 v4, 0x8

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_96
    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/BottomBar;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_97
    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/BottomBar;->getMeasuredWidth()I

    move-result v2

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

    :goto_98
    sub-int/2addr v2, v4

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

    nop

    nop

    :goto_99
    invoke-virtual {v2, p0}, Ldso;->c(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    int-to-float v3, v3

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    invoke-static {v0, v1}, Lcom/google/android/apps/camera/bottombar/BottomBar;->y(Lryb;I)I

    move-result v4

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_9c
    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/BottomBar;->getChildCount()I

    move-result v3

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    :goto_9d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    invoke-virtual {v12, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_9f
    invoke-static {v0, v11}, Lcom/google/android/apps/camera/bottombar/BottomBar;->y(Lryb;I)I

    move-result v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_a0
    sub-int v4, v2, v4

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    :goto_a1
    if-ne v3, v4, :cond_c

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_93

    nop

    nop

    nop

    :goto_a2
    goto/16 :goto_39

    nop

    nop

    nop

    nop

    :goto_a3
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    iget-object v10, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->t:Lnbh;

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/BottomBar;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    nop

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/BottomBar;->getMeasuredWidth()I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    :goto_a7
    sub-int/2addr v2, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    :goto_a8
    if-eqz v5, :cond_d

    nop

    goto/32 :goto_80

    nop

    nop

    :cond_d
    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    invoke-virtual {v5, p0}, Ldso;->c(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    iget v5, v3, Lsbh;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_ab
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_ac
    div-int/2addr v2, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ad
    div-int/2addr v5, v9

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

    :goto_ae
    invoke-virtual {v12, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_af
    move v5, v1

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_b0
    const v11, 0x7f0700bc

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_b1
    invoke-virtual {v0, v3}, Lrxw;->h(Ljava/lang/Object;)V

    :goto_b2
    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    if-nez v10, :cond_e

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    nop

    goto/32 :goto_91

    nop

    nop

    :goto_b5
    iget-object v6, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->z:Ljava/util/EnumMap;

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b6
    iget-object v5, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->y:Landroid/widget/FrameLayout;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    add-int/lit8 v12, v12, -0x1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_b8
    const/4 v7, 0x3

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_b9
    invoke-virtual {v2, v10, v8, v11, v9}, Ldso;->i(IIII)V

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    :goto_ba
    invoke-virtual {v2, p0}, Ldso;->g(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_bb
    const v11, 0x7f0700ba

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    :goto_bc
    invoke-static {v0, v1}, Lcom/google/android/apps/camera/bottombar/BottomBar;->y(Lryb;I)I

    move-result v0

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    :goto_bd
    div-int/2addr v5, v9

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_be
    if-ne v10, v4, :cond_f

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_bf
    iget v12, v3, Lsbh;->c:I

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    :goto_c0
    invoke-virtual {v2, v3, v8, v1, v8}, Ldso;->i(IIII)V

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_c1
    invoke-virtual {v2, v10, v8, v1, v8}, Ldso;->i(IIII)V

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c2
    int-to-float v2, v2

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_c3
    if-eqz v3, :cond_10

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_52

    nop

    nop

    nop

    :goto_c4
    goto :goto_cb

    nop

    nop

    :goto_c5
    goto/32 :goto_4a

    nop

    nop

    :goto_c6
    sget-object v3, Lcom/google/android/apps/camera/bottombar/BottomBar;->i:Lryy;

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_c7
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    nop

    nop

    nop

    :goto_c8
    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c9
    invoke-direct {p0, v3}, Lcom/google/android/apps/camera/bottombar/BottomBar;->c43d12f4f4da28dd6c943a4effe477b7m(Lryy;)I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    :goto_ca
    goto/16 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_cb
    goto/32 :goto_17

    nop

    nop

    :goto_cc
    invoke-virtual {v10, v11}, Lryy;->contains(Ljava/lang/Object;)Z

    move-result v10

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    :goto_cd
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop
.end method

.method private final 86d5c0c77e4f72baec1b0d5a6810921fm(Ljava/util/Collection;)V
    .locals 4

    goto/32 :goto_a

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    const/high16 v3, 0x40000000    # 2.0f

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    instance-of v1, v0, Lcom/google/android/apps/camera/bottombar/SideButtonContainer;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v2, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->M:Lnbe;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_4
    iget-boolean v2, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->P:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v1, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->t:Lnbh;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_8
    invoke-static {v2}, Lnzk;->aQ(Lnbe;)Z

    move-result v2

    nop

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

    :goto_9
    int-to-float v2, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_a
    const v0, 0x10

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    :goto_f
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_11
    invoke-static {v0}, Lnzk;->W(Landroid/view/ViewGroup;)Ljava/util/Collection;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_12
    goto :goto_f

    nop

    :goto_13
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_d

    nop

    nop

    :goto_15
    check-cast v0, Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    div-float/2addr v1, v3

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_17
    if-nez v0, :cond_1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

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

    :goto_19
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_c

    nop

    :goto_1a
    div-float/2addr v2, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_1b
    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/bottombar/BottomBar;->86d5c0c77e4f72baec1b0d5a6810921fm(Ljava/util/Collection;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1c
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

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

    :goto_1e
    goto/16 :goto_f

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_20
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_23
    return-void

    nop

    :goto_24
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-static {v0, v1, v3}, Lnzk;->ah(Landroid/view/View;Lnbh;Z)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-nez v1, :cond_3

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_27
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotX(F)V

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_29
    if-eqz v2, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :cond_4
    goto/32 :goto_3

    nop

    nop

    :goto_2a
    check-cast v0, Landroid/view/ViewGroup;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_2b
    goto :goto_21

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    if-nez v2, :cond_5

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

    :cond_5
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

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

    nop

    :goto_2f
    int-to-float v1, v1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v1, Lglk;->d:Lglk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-static {v0, v1}, Lryy;->G(Ljava/lang/Object;Ljava/lang/Object;)Lryy;

    move-result-object v0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x12

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    sput-object v0, Lcom/google/android/apps/camera/bottombar/BottomBar;->i:Lryy;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

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
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

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
    sput-object v0, Lcom/google/android/apps/camera/bottombar/BottomBar;->j:Lryy;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

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

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_b
    sget-object v1, Lglk;->a:Lglk;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_c
    invoke-static {v0, v1}, Lryy;->G(Ljava/lang/Object;Ljava/lang/Object;)Lryy;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_7

    nop

    :goto_e
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_f
    sget-object v0, Lglk;->c:Lglk;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_10
    sget-object v0, Lglk;->b:Lglk;

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

    :goto_11
    const v0, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    const v3, 0x7f0b03c3

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const p2, 0x7f0b04a2

    nop

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->z:Ljava/util/EnumMap;

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const-string p2, "layout_inflater"

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_4
    check-cast v3, Landroid/widget/Space;

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v5, 0x7f0b00f0

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x8

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    sget-object v2, Lglk;->b:Lglk;

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0xd

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_a
    check-cast v1, Lcom/google/android/apps/camera/bottombar/SideButtonContainer;

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

    :goto_b
    iput-boolean p2, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->isDoubleClick:Z

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_c
    iput-object p2, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->k:Ljava/util/EnumMap;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_d
    sget-object v2, Lglk;->d:Lglk;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_e
    new-instance p2, Ljava/util/EnumMap;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {p2, v0}, Ljava/util/EnumMap;-><init>(Ljava/util/Map;)V

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput-object v0, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->gestureDetector:Landroid/view/GestureDetector;

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const-class v0, Lglk;

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_12
    sget-object p2, Lnbe;->b:Lnbe;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_13
    sget-object v0, Lglk;->a:Lglk;

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_14
    new-instance p2, Ljava/util/EnumMap;

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    :goto_15
    iput-object p2, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->q:Lcom/google/android/apps/camera/bottombar/CameraSwitchButton;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_16
    move-object/from16 v8, p1

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

    :goto_17
    invoke-virtual {p1, p2}, Lpic;->D(I)Ljava/lang/Object;

    move-result-object p2

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p1, p2}, Lpic;->D(I)Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_19
    const p2, 0x7f0b00ef

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-direct {v0, v8, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    check-cast p2, Landroid/view/ViewStub;

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    sget-object v2, Lglk;->d:Lglk;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    check-cast p1, Landroid/view/LayoutInflater;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-direct {p2, v0}, Ljava/util/EnumMap;-><init>(Ljava/util/Map;)V

    goto/32 :goto_2

    nop

    nop

    :goto_1f
    new-instance p2, Ljava/util/EnumMap;

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_20
    invoke-virtual {p1, p2}, Lpic;->D(I)Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iput-object p2, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->l:Ljava/util/EnumMap;

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

    nop

    :goto_22
    iput-object p2, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->p:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p1, p2}, Lpic;->D(I)Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_98

    nop

    :goto_25
    const p2, 0x7f0e0038

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const v1, 0x7f0b0263

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    :goto_28
    sget-object v0, Lglk;->a:Lglk;

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    :goto_29
    const v7, 0x7f0b03c0

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_2a
    check-cast v7, Landroid/widget/FrameLayout;

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {p1, v3}, Lpic;->D(I)Ljava/lang/Object;

    move-result-object v3

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

    :goto_2c
    goto/32 :goto_99

    nop

    nop

    nop

    :goto_2d
    const v3, 0x7f0b03c1

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    :goto_2e
    const-class v0, Lglk;

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

    :goto_2f
    iput-object p2, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->m:Ljava/util/Set;

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iput-object p2, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->x:Ljava/util/EnumMap;

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    :goto_31
    iput-boolean p2, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->u:Z

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_32
    const/4 p2, 0x0

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_33
    new-instance p2, Ljava/util/HashSet;

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    const p2, 0x7f0b0411

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    const p2, 0x7f0b03b8

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-static {v0, v1, v2, p1}, Lryh;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lryh;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_38
    new-instance v0, Landroid/view/GestureDetector;

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    const/4 p2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_3a
    iput-object p2, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->G:Landroid/view/ViewStub;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    sget-object v0, Lglk;->a:Lglk;

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    sget-object v4, Lglk;->c:Lglk;

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-direct {p2, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    goto/32 :goto_c

    nop

    nop

    :goto_3e
    iput-boolean p2, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->P:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    check-cast p2, Landroid/view/ViewStub;

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_40
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_41
    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_42
    invoke-virtual {p1, v7}, Lpic;->D(I)Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_43
    new-instance p2, Ljava/util/EnumMap;

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_44
    invoke-direct {v1, p0}, L_014;-><init>(Lcom/google/android/apps/camera/bottombar/BottomBar;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_45
    sget-object p2, Lnbh;->a:Lnbh;

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_46
    check-cast p2, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    check-cast p2, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_48
    iput-object p2, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->J:Landroid/view/ViewStub;

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

    :goto_49
    invoke-virtual {p1, p2}, Lpic;->D(I)Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-direct {p2, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    sget-object v2, Lglk;->b:Lglk;

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

    :goto_4c
    move-object v5, v7

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_4d
    iput-object p2, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->y:Landroid/widget/FrameLayout;

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_4e
    new-instance p2, Ljava/util/EnumMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_4f
    invoke-direct {p2, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_50
    check-cast p2, Landroid/view/ViewStub;

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    :goto_51
    const p2, 0x7f0b040f

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

    :goto_52
    invoke-static/range {v0 .. v7}, Lryh;->q(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lryh;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    iput-object p2, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->n:Ljava/util/EnumMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_54
    invoke-virtual {p1, v1}, Lpic;->D(I)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_55
    invoke-virtual {p1, p2}, Lpic;->D(I)Ljava/lang/Object;

    move-result-object p2

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_56
    const p2, 0x7f0b05a0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    :goto_57
    iput p2, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->L:I

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_58
    check-cast p2, Lcom/google/android/apps/camera/bottombar/CameraSwitchButton;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_59
    const v3, 0x7f0b00ee

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-virtual {p1, p2}, Lpic;->D(I)Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    :goto_5b
    check-cast v5, Landroid/widget/FrameLayout;

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_5c
    sget-object v0, Lglk;->a:Lglk;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_5d
    check-cast p2, Landroid/view/ViewStub;

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_5e
    iput-object p2, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->t:Lnbh;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    iput-object p2, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->H:Landroid/view/ViewStub;

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_60
    check-cast v1, Landroid/widget/FrameLayout;

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_61
    iput-object p2, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->M:Lnbe;

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_62
    check-cast p2, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    iput-boolean p2, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->O:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_64
    invoke-direct {p2, p1}, Ljava/util/EnumMap;-><init>(Ljava/util/Map;)V

    goto/32 :goto_83

    nop

    nop

    :goto_65
    invoke-virtual {p1, v1}, Lpic;->D(I)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :goto_66
    invoke-static {v0, v1, v2, v3}, Lryh;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lryh;

    move-result-object v0

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_67
    const p2, 0x7f0b0265

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_68
    invoke-direct {p2, v0}, Ljava/util/EnumMap;-><init>(Ljava/util/Map;)V

    goto/32 :goto_21

    nop

    nop

    :goto_69
    const p2, 0x7f060033

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_6a
    invoke-virtual {p1, p2}, Lpic;->D(I)Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_6b
    invoke-virtual {p1, p2}, Lpic;->D(I)Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    :goto_6c
    check-cast p2, Landroid/widget/FrameLayout;

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_6d
    sget-object v6, Lglk;->d:Lglk;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    check-cast p2, Landroid/view/ViewStub;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    invoke-virtual {p1, p2}, Lpic;->D(I)Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_70
    const p2, 0x7f0b00d7

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_71
    check-cast p2, Landroid/view/ViewStub;

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_72
    invoke-virtual {p1, v1}, Lpic;->D(I)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_73
    const p2, 0x7f0b0431

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_74
    check-cast p2, Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    :goto_75
    move-object v1, v7

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    :goto_76
    const v1, 0x7f0b0266

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_77
    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    :goto_78
    invoke-static/range {v0 .. v7}, Lryh;->q(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lryh;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_79
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_7a
    iput-object p2, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->K:Landroid/view/ViewStub;

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_7b
    new-instance v1, L_014;

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_7c
    sget-object v6, Lglk;->d:Lglk;

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    sget-object v7, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    iput-boolean p2, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->N:Z

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

    nop

    :goto_7f
    move-object v3, v7

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_80
    iput-object p2, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->I:Landroid/view/ViewStub;

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_81
    invoke-virtual {p1, v5}, Lpic;->D(I)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_82
    iput-object p2, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->w:Ljava/util/EnumMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_83
    iput-object p2, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->A:Ljava/util/EnumMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_84
    sget-object v4, Lglk;->c:Lglk;

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_85
    return-void

    nop

    nop

    nop

    nop

    :goto_86
    goto/32 :goto_2c

    nop

    nop

    :goto_87
    check-cast v1, Landroid/widget/Space;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_88
    invoke-virtual {p1, p2}, Lpic;->D(I)Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_89
    new-instance p2, Ljava/util/EnumMap;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_8a
    iput-object p2, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->s:Landroid/view/ViewStub;

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    new-instance p2, Ljava/util/EnumMap;

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_8c
    check-cast p1, Lcom/google/android/apps/camera/bottombar/SideButtonContainer;

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_8d
    check-cast v3, Landroid/widget/FrameLayout;

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    :goto_8e
    const p2, 0x7f0b00d4

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    invoke-virtual {p1, v3}, Lpic;->D(I)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    :goto_90
    invoke-virtual {p1, v3}, Lpic;->D(I)Ljava/lang/Object;

    move-result-object v3

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    :goto_91
    const v1, 0x7f0b0262

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_92
    iput-object p2, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->o:Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_93
    invoke-static {p1}, Lpic;->R(Landroid/view/View;)Lpic;

    move-result-object p1

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_94
    const p2, 0x7f0b0358

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_95
    const-class v0, Lglk;

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

    :goto_96
    invoke-virtual {p1, p2}, Lpic;->D(I)Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_97
    const p2, 0x7f0b039e

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_98
    goto/32 :goto_86

    nop

    :goto_99
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private final a2d5024664df85075db576b91d9663e9m()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const-string v0, "bottomBar:applyOrientation"

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/bottombar/BottomBar;->86d5c0c77e4f72baec1b0d5a6810921fm(Ljava/util/Collection;)V

    goto/32 :goto_5

    nop

    nop

    :goto_2
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p0}, Lnzk;->W(Landroid/view/ViewGroup;)Ljava/util/Collection;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    :goto_5
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private final c43d12f4f4da28dd6c943a4effe477b7m(Lryy;)I
    .locals 4

    goto/32 :goto_19

    nop

    nop

    :goto_0
    const/16 v3, 0x8

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v1}, Landroid/widget/Space;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

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

    :goto_2
    rem-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1f

    nop

    :goto_6
    iget-object v2, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->z:Ljava/util/EnumMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_7
    add-int/2addr v0, v1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :cond_1
    goto/32 :goto_1e

    nop

    :goto_9
    return v0

    nop

    nop

    :goto_a
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v2, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_d
    iget v1, v2, Ldse;->width:I

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

    :goto_e
    if-nez v1, :cond_2

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

    :cond_2
    goto/32 :goto_12

    nop

    nop

    :goto_f
    invoke-virtual {v1}, Landroid/widget/Space;->getVisibility()I

    move-result v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_10
    invoke-virtual {v2, v1}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

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

    :goto_11
    check-cast v1, Landroid/widget/Space;

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
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_13
    iget-object v2, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->z:Ljava/util/EnumMap;

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1

    nop

    nop

    :goto_15
    const/4 v0, 0x0

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-ne v1, v3, :cond_3

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const v1, 0x14

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

    nop

    :goto_19
    const v0, 0xc

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

    :goto_1a
    if-nez v2, :cond_4

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    check-cast v1, Lglk;

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_1c
    goto :goto_16

    nop

    nop

    :goto_1d
    goto/32 :goto_9

    nop

    nop

    :goto_1e
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_20
    check-cast v2, Ldse;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p1}, Lryy;->em()Lscp;

    move-result-object p1

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
.end method

.method private final e94656b6137dd01f26085f984afe853em(Lryy;)I
    .locals 4

    goto/32 :goto_16

    nop

    nop

    :goto_0
    invoke-virtual {v2, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_2
    rem-int v0, v0, v1

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
    const/16 v3, 0x8

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

    :goto_4
    iget-object v2, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->n:Ljava/util/EnumMap;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_7

    nop

    nop

    :goto_7
    invoke-virtual {p1}, Lryy;->em()Lscp;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_b
    check-cast v1, Landroid/widget/FrameLayout;

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

    :goto_c
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x10

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_e
    goto :goto_13

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

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

    :goto_11
    if-ne v2, v3, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_1
    goto/32 :goto_10

    nop

    nop

    :goto_12
    const/4 v0, 0x0

    nop

    nop

    :goto_13
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_14
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v0, 0x1f

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_17
    add-int/2addr v0, v1

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

    :goto_18
    if-nez v1, :cond_2

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

    :cond_2
    goto/32 :goto_8

    nop

    nop

    :goto_19
    check-cast v1, Lglk;

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1a
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method public static s(Landroid/view/View;Z)V
    .locals 1

    goto/32 :goto_9

    nop

    nop

    :goto_0
    const/4 p1, 0x0

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    const/16 p1, 0x8

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :goto_4
    if-ne v0, p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {p1, p0}, Lnpy;->a(ILandroid/view/View;)V

    goto/32 :goto_3

    nop

    nop

    :goto_6
    goto :goto_1

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_0

    nop

    nop

    :goto_8
    const/4 v0, 0x1

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

    :goto_9
    invoke-static {}, Lowu;->a()V

    goto/32 :goto_8

    nop

    nop

    nop
.end method

.method private static final y(Lryb;I)I
    .locals 1

    goto/32 :goto_8

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2
    if-ge p1, v0, :cond_0

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

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    move-object v0, p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    check-cast v0, Lsbh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_5
    check-cast p0, Landroid/view/View;

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

    :goto_6
    goto :goto_b

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_8
    if-gez p1, :cond_1

    nop

    nop

    goto/32 :goto_b

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

    nop

    :goto_9
    iget v0, v0, Lsbh;->c:I

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return p0

    nop

    nop

    :goto_b
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_c
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0, p1}, Lryb;->get(I)Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final synthetic dI(Lnbh;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop
.end method

.method public final dP(Lnbe;Lnbh;)V
    .locals 1

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p1, 0x0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Lcom/google/android/apps/camera/bottombar/BottomBar;->6a76c551e4658c5f4308c862164e4dd9m()V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->t:Lnbh;

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

    :goto_3
    iput-boolean v0, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->u:Z

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-eq v0, p2, :cond_0

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0}, Lcom/google/android/apps/camera/bottombar/BottomBar;->a2d5024664df85075db576b91d9663e9m()V

    :goto_7
    goto/32 :goto_0

    nop

    nop

    :goto_8
    if-ne v0, p1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_1
    :goto_9
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->M:Lnbe;

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
    return-void

    nop

    nop

    :goto_c
    iput-boolean p1, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->P:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_d
    iput-boolean v0, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->O:Z

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput-object p1, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->M:Lnbe;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_f
    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->t:Lnbh;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method public final dv()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x1

    nop

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

    :goto_2
    iput-boolean v0, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->P:Z

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final g()Landroid/widget/ImageButton;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->H:Landroid/view/ViewStub;

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

    :goto_1
    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->D:Landroid/widget/ImageButton;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-object p0

    nop

    nop

    nop

    :goto_5
    check-cast v0, Landroid/widget/ImageButton;

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

    :goto_6
    iget-object p0, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->D:Landroid/widget/ImageButton;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_7
    iput-object v0, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->D:Landroid/widget/ImageButton;

    nop

    nop

    :goto_8
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_9
    invoke-static {}, Lowu;->a()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final h()Landroid/widget/ImageButton;
    .locals 1

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->J:Landroid/view/ViewStub;

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

    :goto_1
    iget-object p0, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->E:Landroid/widget/ImageButton;

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
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object v0, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->E:Landroid/widget/ImageButton;

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    check-cast v0, Landroid/widget/ImageButton;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    invoke-static {}, Lowu;->a()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->E:Landroid/widget/ImageButton;

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

    :goto_8
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop
.end method

.method public final i()Landroid/widget/ImageButton;
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->K:Landroid/view/ViewStub;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-object p0

    nop

    :goto_2
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->F:Landroid/widget/ImageButton;

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
    iput-object v0, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->F:Landroid/widget/ImageButton;

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    :goto_6
    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->F:Landroid/widget/ImageButton;

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_7
    invoke-static {}, Lowu;->a()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    :goto_9
    check-cast v0, Landroid/widget/ImageButton;

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method public final j()Lcom/google/android/apps/camera/bottombar/PauseResumeButton;
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    iput-object v0, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->B:Lcom/google/android/apps/camera/bottombar/PauseResumeButton;

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    check-cast v0, Lcom/google/android/apps/camera/bottombar/PauseResumeButton;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->B:Lcom/google/android/apps/camera/bottombar/PauseResumeButton;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->B:Lcom/google/android/apps/camera/bottombar/PauseResumeButton;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {}, Lowu;->a()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_8
    return-object p0

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->I:Landroid/view/ViewStub;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop
.end method

.method public final k()Lcom/google/android/apps/camera/bottombar/SnapshotButton;
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {}, Lowu;->a()V

    goto/32 :goto_3

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    :goto_2
    iget-object p0, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->C:Lcom/google/android/apps/camera/bottombar/SnapshotButton;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->G:Landroid/view/ViewStub;

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

    :goto_4
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_5
    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->C:Lcom/google/android/apps/camera/bottombar/SnapshotButton;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_6
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_7
    check-cast v0, Lcom/google/android/apps/camera/bottombar/SnapshotButton;

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

    :goto_8
    iput-object v0, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->C:Lcom/google/android/apps/camera/bottombar/SnapshotButton;

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public final l(Lglk;Lglr;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p2}, Lglr;->a()V

    goto/32 :goto_5

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

    goto/32 :goto_6

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

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {p2}, Lglr;->b()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->m:Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

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
.end method

.method public final m(Lglk;Lrss;)V
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Lryd;->e()Lryh;

    move-result-object p1

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

    :goto_1
    iget-object p2, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->x:Ljava/util/EnumMap;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_3
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_6
    check-cast v0, Landroid/view/View;

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_7
    invoke-virtual {v0, p1, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    check-cast v0, Ljava/util/Map$Entry;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_a
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x1b

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {p1}, Lryd;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object p2, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->w:Ljava/util/EnumMap;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_11
    new-instance p1, Lryd;

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

    :goto_12
    goto/32 :goto_4

    nop

    :goto_13
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {v0}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v0

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

    :goto_16
    check-cast v1, Lglk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_17
    invoke-virtual {p1, v1, v0}, Lryd;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/bottombar/BottomBar;->o(Lryh;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p2}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;

    move-result-object p2

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

    :goto_1a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1b
    if-nez v0, :cond_1

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
    goto/32 :goto_1d

    nop

    nop

    :goto_1c
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->w:Ljava/util/EnumMap;

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

    :goto_1e
    goto/16 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p2, p1}, Ljava/util/EnumMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_21
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-static {}, Lowu;->a()V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p2}, Lrss;->h()Z

    move-result v0

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_24
    const v1, 0x17

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_25
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p2}, Lrss;->c()Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_27
    goto :goto_21

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_10

    nop

    nop

    nop
.end method

.method public final n(Z)V
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    const v1, 0x7

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_11

    nop

    :goto_3
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    check-cast v0, Landroid/view/View;

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

    :goto_5
    iget-object p0, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->l:Ljava/util/EnumMap;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/16 :goto_18

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_d

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_c
    invoke-virtual {p0}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;

    move-result-object p0

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

    :goto_d
    return-void

    nop

    :goto_e
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

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

    :goto_10
    goto/32 :goto_e

    nop

    :goto_11
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_12
    check-cast v0, Lrss;

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

    :goto_13
    if-nez v1, :cond_1

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
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_15
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_1

    nop

    nop

    :goto_19
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    check-cast v0, Ljava/util/Map$Entry;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final o(Lryh;)V
    .locals 9

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_0
    if-nez v7, :cond_0

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_1
    if-nez v7, :cond_1

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
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sget-object v1, Lcom/google/android/apps/camera/bottombar/BottomBar;->j:Lryy;

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_3
    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->x:Ljava/util/EnumMap;

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

    nop

    :goto_4
    iget-object v8, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->w:Ljava/util/EnumMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_5
    invoke-direct {p1, p0, v2}, Lglj;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p1, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->m:Ljava/util/Set;

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
    invoke-virtual {v6}, Lrss;->c()Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_9
    new-instance v0, Ljava/util/EnumMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v6}, Lrss;->h()Z

    move-result v7

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_b
    iget-object p1, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->m:Ljava/util/Set;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_c
    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    aget-object v5, v1, v4

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_e
    new-instance p1, Lgbt;

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_f
    invoke-virtual {v7, v5, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_10
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_11
    goto/16 :goto_4b

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1e

    nop

    nop

    :goto_13
    iget-object v7, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->w:Ljava/util/EnumMap;

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

    :goto_14
    if-nez v7, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v7, v5}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-nez v7, :cond_3

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

    :cond_3
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v6}, Lrss;->h()Z

    move-result v7

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

    :goto_18
    invoke-interface {p1}, Ljava/util/Set;->clear()V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_19
    const/4 v4, 0x3

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const v0, 0xb

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_1b
    invoke-static {v1, p1}, Lj$/util/Collection$-EL;->forEach(Ljava/util/Collection;Ljava/util/function/Consumer;)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1c
    iget-object v7, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->x:Ljava/util/EnumMap;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1d
    invoke-direct {v1, p0, v3}, Lglj;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object p1, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->m:Ljava/util/Set;

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

    :goto_1f
    goto/32 :goto_42

    nop

    nop

    :goto_20
    invoke-virtual {v8, v5}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_21
    invoke-static {v1, p1}, Lj$/util/Collection$-EL;->forEach(Ljava/util/Collection;Ljava/util/function/Consumer;)V

    goto/32 :goto_32

    nop

    nop

    :goto_22
    check-cast v7, Landroid/view/View;

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

    :goto_23
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_17

    nop

    nop

    :goto_24
    const-class v1, Lglk;

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_25
    const/4 v3, 0x0

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_26
    sget-object v6, Lrsa;->a:Lrsa;

    nop

    :goto_27
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    new-instance v1, Lglj;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    new-instance p1, Lgbt;

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

    :goto_2b
    sget-object v1, Lcom/google/android/apps/camera/bottombar/BottomBar;->i:Lryy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_2c
    invoke-direct {p1, p0, v0, v2}, Lgbt;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_1b

    nop

    nop

    :goto_2d
    invoke-virtual {p1, v5}, Lryh;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    sget-object v6, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_2f
    array-length v2, v1

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_30
    if-lt v4, v2, :cond_4

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_31
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iget-object p1, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->A:Ljava/util/EnumMap;

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

    :goto_33
    invoke-static {}, Lowu;->a()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    check-cast v6, Lrss;

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

    :goto_35
    invoke-static {}, Lglk;->values()[Lglk;

    move-result-object v1

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_36
    invoke-interface {p1, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-interface {p1, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_39
    invoke-direct {p1, p0, v0, v4}, Lgbt;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    const v1, 0x18

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3b
    if-lez v0, :cond_5

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

    :cond_5
    goto/32 :goto_41

    nop

    :goto_3c
    check-cast v8, Landroid/view/View;

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

    :goto_3d
    new-instance p1, Lglj;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {v6}, Lrss;->c()Ljava/lang/Object;

    move-result-object v7

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_3f
    if-nez v7, :cond_6

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    :cond_6
    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_40
    invoke-virtual {p1, v5}, Lryh;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_45

    nop

    :goto_42
    goto/32 :goto_33

    nop

    nop

    :goto_43
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_44
    return-void

    nop

    nop

    nop

    :goto_45
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_46
    invoke-static {p1, v1}, Lj$/util/Map$-EL;->forEach(Ljava/util/Map;Ljava/util/function/BiConsumer;)V

    goto/32 :goto_3d

    nop

    nop

    :goto_47
    const/4 v2, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_48
    invoke-virtual {v0}, Ljava/util/EnumMap;->clear()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_49
    invoke-static {v0, p1}, Lj$/util/Map$-EL;->forEach(Ljava/util/Map;Ljava/util/function/BiConsumer;)V

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    move v4, v3

    nop

    nop

    nop

    :goto_4b
    goto/32 :goto_30

    nop

    nop

    nop
.end method

.method protected final onFinishInflate()V
    .locals 4

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x1

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    sget-object v3, Lglk;->c:Lglk;

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

    :goto_3
    return-void

    nop

    nop

    :goto_4
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-boolean v0, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->N:Z

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v1, v3, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-nez v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->onFinishInflate()V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

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

    :goto_b
    sget-object v3, Lglk;->b:Lglk;

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

    :goto_c
    invoke-virtual {v1, v3, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :cond_1
    goto/32 :goto_1a

    nop

    :goto_e
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/bottombar/BottomBar;->setBackgroundColor(I)V

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_f
    invoke-static {v2}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v2

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

    nop

    :goto_10
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v1

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

    :goto_11
    const v0, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_12
    iget-object v1, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->l:Ljava/util/EnumMap;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_13
    iget-object v1, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->l:Ljava/util/EnumMap;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_1b

    nop

    :goto_15
    iget v1, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->L:I

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {v2}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0, v1}, Lcom/google/android/apps/camera/bottombar/BottomBar;->setBackgroundColor(I)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/BottomBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1a
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v2, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->p:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1d
    iget-object v2, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->q:Lcom/google/android/apps/camera/bottombar/CameraSwitchButton;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1e
    const v1, 0x1b

    nop

    goto/32 :goto_7

    nop

    nop
.end method

.method protected final onLayout(ZIIII)V
    .locals 1

    goto/32 :goto_2f

    nop

    nop

    :goto_0
    invoke-interface {p4}, Lrtm;->a()Ljava/lang/Object;

    move-result-object p4

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

    :goto_1
    invoke-direct {p0}, Lcom/google/android/apps/camera/bottombar/BottomBar;->6a76c551e4658c5f4308c862164e4dd9m()V

    goto/32 :goto_31

    nop

    nop

    :goto_2
    iget p4, p3, Lmhb;->A:I

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3
    invoke-virtual {p4, p5}, Landroidx/constraintlayout/widget/ConstraintLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-boolean p1, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->u:Z

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_5
    const/4 p5, 0x2

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

    :goto_6
    new-instance p4, Lmgx;

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

    :goto_7
    iget-object p4, p4, Lnbr;->i:Lnbe;

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_8
    if-nez p2, :cond_0

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    nop

    :goto_9
    invoke-super/range {p0 .. p5}, Landroidx/constraintlayout/widget/ConstraintLayout;->onLayout(ZIIII)V

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_b
    iget-object p3, p3, Lmhb;->l:Landroidx/constraintlayout/widget/ConstraintLayout;

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

    nop

    :goto_c
    invoke-direct {p4, p2, p1}, Lmgx;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {p5, p2, p1}, Lmgx;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_e
    iget-object p4, p3, Lmhb;->v:Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_f
    if-nez p4, :cond_1

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_21

    nop

    nop

    :goto_10
    new-instance p5, Lmgx;

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

    :goto_11
    iget-object p2, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->v:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_12
    if-eq p4, p5, :cond_2

    nop

    goto/32 :goto_2a

    nop

    :cond_2
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object p4, p3, Lmhb;->h:Lrtm;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_14
    if-nez p2, :cond_3

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

    :cond_3
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object p4, p3, Lmhb;->l:Landroidx/constraintlayout/widget/ConstraintLayout;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object p2, p2, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_1a

    nop

    nop

    :goto_18
    if-nez p1, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :cond_4
    :goto_19
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1a
    return-void

    nop

    :goto_1b
    iget-boolean p1, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->u:Z

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

    nop

    :goto_1c
    invoke-virtual {p3}, Lmhb;->a()Landroid/graphics/Point;

    move-result-object p3

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_1d
    iget-boolean p2, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->O:Z

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1e
    check-cast p4, Lnbs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_1f
    move-object p3, p2

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

    :goto_20
    check-cast p3, Lmhb;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_21
    iget-object p4, p3, Lmhb;->l:Landroidx/constraintlayout/widget/ConstraintLayout;

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

    :goto_22
    iput-boolean p1, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->O:Z

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-static {p2, p4, p3}, Lmhb;->h(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View;Landroid/graphics/Point;)V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p3, p4}, Landroidx/constraintlayout/widget/ConstraintLayout;->post(Ljava/lang/Runnable;)Z

    :goto_26
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-object p4, p4, Lnbs;->a:Lnbr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_28
    if-eq p4, p5, :cond_5

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_2b
    const/4 p5, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p4, p5}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-static {p4}, Lnzk;->aQ(Lnbe;)Z

    move-result p4

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2e
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const-string v0, "bottomBar:onLayout"

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_30
    const/16 p5, 0x8

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

    nop

    nop

    :goto_31
    invoke-direct {p0}, Lcom/google/android/apps/camera/bottombar/BottomBar;->a2d5024664df85075db576b91d9663e9m()V

    goto/32 :goto_a

    nop

    nop

    :goto_32
    if-eqz p1, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget-object p2, p3, Lmhb;->m:Landroidx/constraintlayout/widget/ConstraintLayout;

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
.end method

.method protected final onSizeChanged(IIII)V
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p2}, Ldso;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/widget/ConstraintLayout;->onSizeChanged(IIII)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_3
    const v0, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p2, p0}, Ldso;->g(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    goto/32 :goto_14

    nop

    nop

    :goto_5
    const/4 v1, 0x1

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

    :goto_6
    invoke-direct {v0, p3, p2, p1, v1}, Ljos;-><init>(ILjava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_11

    nop

    nop

    :goto_7
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

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

    :goto_8
    new-instance p2, Ldso;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/BottomBar;->getMeasuredWidth()I

    move-result p3

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_c
    const p3, 0x7f0700b1

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_d
    new-instance v0, Ljos;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_e
    invoke-direct {p0}, Lcom/google/android/apps/camera/bottombar/BottomBar;->a2d5024664df85075db576b91d9663e9m()V

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p2, p0}, Ldso;->c(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :goto_10
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {p4, v0}, Lj$/util/Collection$-EL;->forEach(Ljava/util/Collection;Ljava/util/function/Consumer;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1

    nop

    nop

    :goto_14
    invoke-static {p0}, Lnzk;->W(Landroid/view/ViewGroup;)Ljava/util/Collection;

    move-result-object p4

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_15
    return-void

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/BottomBar;->getResources()Landroid/content/res/Resources;

    move-result-object p1

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

    :goto_19
    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/BottomBar;->getMeasuredHeight()I

    move-result p2

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1a
    if-gt p3, p2, :cond_1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    :goto_1b
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    nop

    goto/32 :goto_c

    nop

    nop

    nop
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->gestureDetector:Landroid/view/GestureDetector;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    return v0

    nop

    nop

    nop
.end method

.method public final p()V
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

    nop

    nop

    nop

    :goto_1
    invoke-static {}, Lowu;->a()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    sget-object v0, Lsbm;->a:Lryh;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/bottombar/BottomBar;->o(Lryh;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final q(Z)V
    .locals 3

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/BottomBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/16 v2, 0xff

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0xb

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/BottomBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x7f0c0013

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_8
    iget-boolean v0, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->N:Z

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    :goto_a
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {}, Lowu;->a()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/BottomBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_11
    filled-new-array {v1, v2}, [I

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_12
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_15
    int-to-long v0, p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_16
    if-nez p1, :cond_0

    nop

    goto/32 :goto_24

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/BottomBar;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_18
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_d

    nop

    nop

    :goto_1a
    const-string v0, "alpha"

    nop

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

    :goto_1b
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_1
    goto/32 :goto_18

    nop

    :goto_1c
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iput-boolean p1, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->N:Z

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

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

    :goto_21
    const v0, 0x7f0c0012

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const v1, 0x17

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_23
    goto/16 :goto_6

    nop

    :goto_24
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    filled-new-array {v2, v1}, [I

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_26
    int-to-long v0, v0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-eq v0, p1, :cond_2

    nop

    goto/32 :goto_a

    nop

    :cond_2
    goto/32 :goto_9

    nop

    nop

    nop
.end method

.method public final r(Lglk;Lrss;)V
    .locals 4

    goto/32 :goto_19

    nop

    nop

    :goto_0
    check-cast v2, Landroid/view/View;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1
    new-instance v0, Lryd;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/bottombar/BottomBar;->o(Lryh;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    check-cast v2, Ljava/util/Map$Entry;

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

    :goto_4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_5
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    :goto_6
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0}, Lryd;->e()Lryh;

    move-result-object p1

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

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1d

    nop

    :goto_a
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_b
    goto :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_18

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
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {v2}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_10
    invoke-static {}, Lowu;->a()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_11
    check-cast v3, Lglk;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_12
    if-nez v2, :cond_1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

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

    :goto_14
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {v0}, Lryd;-><init>()V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0, v3, v2}, Lryd;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const v1, 0x20

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v0, p1, p2}, Lryd;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_19
    const v0, 0x18

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_1b
    invoke-virtual {v1}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;

    move-result-object v1

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

    :goto_1c
    iget-object v1, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->x:Ljava/util/EnumMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_e

    nop

    nop

    :goto_1e
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop
.end method

.method public final setClickable(Z)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/bottombar/BottomBar;->n(Z)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop
.end method
