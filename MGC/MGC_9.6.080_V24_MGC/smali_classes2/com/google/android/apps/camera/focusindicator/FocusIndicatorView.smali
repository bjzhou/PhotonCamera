.class public Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "PG"

# interfaces
.implements Lnbg;


# static fields
.field public static indentation:I


# instance fields
.field final A:Lnob;

.field public B:Lnob;

.field public final C:Lnob;

.field public final D:Lnob;

.field final E:Lnob;

.field public final F:Lnob;

.field final G:Lnob;

.field final H:Lnob;

.field public final I:Lnob;

.field public final J:Lnob;

.field public final K:Lnob;

.field public final L:Lnob;

.field public M:Landroid/animation/Animator;

.field public N:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

.field private final O:Landroid/graphics/PointF;

.field private final P:[I

.field private volatile Q:Lnbh;

.field private final R:Landroid/animation/Animator$AnimatorListener;

.field private final S:Lhzw;

.field focus_data:Landroid/widget/TextView;

.field public i:Z

.field public final j:Loyn;

.field public final k:Loyn;

.field public final l:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final m:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;

.field public final n:Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;

.field public final o:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;

.field public final p:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;

.field public final q:Liac;

.field final r:Liae;

.field public final s:Lnob;

.field public final t:Lnob;

.field public final u:Lnob;

.field public final v:Lnob;

.field final w:Lnob;

.field final x:Lnob;

.field final y:Lnob;

.field final z:Lnob;


# direct methods
.method private final 7dd154808b1c676d3d63f3a63e9edabfm(Lnob;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-interface {p1, p0}, Lnob;->b(Landroid/animation/Animator$AnimatorListener;)V

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->R:Landroid/animation/Animator$AnimatorListener;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    return-void

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 19

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_0
    check-cast v10, Lnob;

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

    :goto_1
    iput-object v14, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->E:Lnob;

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v6, v2, Lhzw;->q:Ltur;

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0, v2}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->7dd154808b1c676d3d63f3a63e9edabfm(Lnob;)V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_9f

    nop

    nop

    nop

    :goto_5
    check-cast v4, Lnob;

    nop

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object v4, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->o:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object v8, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->K:Lnob;

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    :goto_8
    invoke-interface {v8}, Ltur;->a()Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    :goto_9
    invoke-direct {v0, v1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->7dd154808b1c676d3d63f3a63e9edabfm(Lnob;)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_a
    check-cast v12, Lnob;

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {v0, v6}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->7dd154808b1c676d3d63f3a63e9edabfm(Lnob;)V

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    nop

    :goto_c
    move-object/from16 v1, p1

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    :goto_d
    move-object/from16 v6, v16

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    :goto_e
    move-object/from16 v9, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    :goto_f
    new-instance v2, Liah;

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_10
    invoke-interface {v15}, Ltur;->a()Ljava/lang/Object;

    move-result-object v15

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

    :goto_11
    iput-object v10, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->z:Lnob;

    nop

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    check-cast v13, Lnob;

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_13
    invoke-static {v3}, Liak;->c(Lrbh;)Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_14
    check-cast v11, Lnob;

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {v0, v12}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->7dd154808b1c676d3d63f3a63e9edabfm(Lnob;)V

    goto/32 :goto_7c

    nop

    nop

    nop

    :goto_16
    iput-object v8, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->J:Lnob;

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_17
    new-instance v2, Loxv;

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

    nop

    :goto_18
    invoke-interface {v12}, Ltur;->a()Ljava/lang/Object;

    move-result-object v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {v3}, Liao;->c(Lrbh;)Liac;

    move-result-object v3

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_1a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    check-cast v3, Lnob;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_1c
    check-cast v3, Landroid/widget/TextView;

    nop

    goto/32 :goto_a7

    nop

    nop

    :goto_1d
    invoke-interface {v7}, Ltur;->a()Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    :goto_1e
    iput-object v2, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->Q:Lnbh;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_34

    nop

    nop

    :goto_20
    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_21
    check-cast v6, Lnob;

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-direct {v0, v9}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->7dd154808b1c676d3d63f3a63e9edabfm(Lnob;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_23
    invoke-interface {v1}, Lfwm;->b()Lhoh;

    goto/32 :goto_99

    nop

    nop

    nop

    :goto_24
    iget-object v4, v2, Lhzw;->b:Ltur;

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :goto_25
    iput-object v1, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->G:Lnob;

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_26
    iput-object v3, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->m:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_27
    iput-object v13, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->D:Lnob;

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    check-cast v8, Lnob;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_29
    iget-object v9, v2, Lhzw;->p:Ltur;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_2a
    iput-object v6, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->v:Lnob;

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    :goto_2b
    move-object/from16 v1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_2c
    iput-object v9, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->H:Lnob;

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    :goto_2d
    new-instance v2, Landroid/graphics/PointF;

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_2e
    iput-object v2, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->L:Lnob;

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iput-object v3, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->s:Lnob;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_30
    iput-object v3, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->q:Liac;

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_31
    invoke-direct {v0, v8}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->7dd154808b1c676d3d63f3a63e9edabfm(Lnob;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_32
    invoke-interface {v3}, Ltur;->a()Ljava/lang/Object;

    move-result-object v3

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

    nop

    :goto_33
    return-void

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iget-object v6, v2, Lhzw;->d:Ltur;

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_36
    move-object/from16 v17, v8

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    :goto_38
    check-cast v15, Lnob;

    nop

    goto/32 :goto_9b

    nop

    nop

    :goto_39
    invoke-direct {v0, v7}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->7dd154808b1c676d3d63f3a63e9edabfm(Lnob;)V

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iget-object v3, v2, Lhzw;->u:Lrbh;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    iput-object v5, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->u:Lnob;

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iput-object v2, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->R:Landroid/animation/Animator$AnimatorListener;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_3d
    iget-object v3, v2, Lhzw;->u:Lrbh;

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

    :goto_3e
    invoke-interface {v9}, Ltur;->a()Ljava/lang/Object;

    move-result-object v9

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_3f
    check-cast v6, Lnob;

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_40
    iput-object v8, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->x:Lnob;

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    :goto_41
    iput-object v6, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->I:Lnob;

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_42
    invoke-interface {v9}, Ltur;->a()Ljava/lang/Object;

    move-result-object v9

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_43
    iget-object v5, v2, Lhzw;->c:Ltur;

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

    :goto_44
    const v0, 0x17

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

    :goto_45
    iget-object v3, v3, Lrbh;->h:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-virtual {v2, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_47
    const v3, 0x7f0e0084

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_48
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    :goto_49
    const/4 v2, 0x2

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-direct {v2, v0}, Liah;-><init>(Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;)V

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_4b
    invoke-interface {v11}, Ltur;->a()Ljava/lang/Object;

    move-result-object v11

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

    :goto_4c
    iget-object v14, v2, Lhzw;->m:Ltur;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_4d
    iget-object v3, v2, Lhzw;->u:Lrbh;

    nop

    goto/32 :goto_8f

    nop

    nop

    :goto_4e
    invoke-interface {v6}, Ltur;->a()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_4f
    if-nez v2, :cond_0

    nop

    goto/32 :goto_5c

    nop

    nop

    :cond_0
    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_50
    iput-object v2, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->j:Loyn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_51
    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_52
    iput-object v9, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->y:Lnob;

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    :goto_53
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    invoke-interface {v1}, Ltur;->a()Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    invoke-interface {v13}, Ltur;->a()Ljava/lang/Object;

    move-result-object v13

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_56
    const v1, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_57
    iput-object v12, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->B:Lnob;

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_58
    instance-of v2, v1, Lfwm;

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

    :goto_59
    iget-object v12, v2, Lhzw;->k:Ltur;

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_5b
    iput-boolean v1, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->i:Z

    nop

    nop

    :goto_5c
    goto/32 :goto_33

    nop

    nop

    nop

    :goto_5d
    check-cast v14, Lnob;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_5e
    const/16 v3, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_5f
    const-string v2, "layout_inflater"

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    sget-object v2, Lnbh;->a:Lnbh;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_61
    invoke-direct {v0, v5}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->7dd154808b1c676d3d63f3a63e9edabfm(Lnob;)V

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_62
    invoke-interface {v5}, Ltur;->a()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    :goto_63
    new-array v2, v2, [I

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    :goto_64
    const/4 v3, 0x0

    nop

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

    :goto_65
    invoke-direct {v0, v14}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->7dd154808b1c676d3d63f3a63e9edabfm(Lnob;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_66
    iget-object v3, v2, Lhzw;->u:Lrbh;

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_67
    check-cast v1, Lnob;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_68
    iget-object v4, v3, Lrbh;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_69
    iget-object v12, v2, Lhzw;->j:Ltur;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    move-object/from16 p2, v9

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_6b
    move-object/from16 v18, v8

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    :goto_6c
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

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

    :goto_6d
    check-cast v1, Lfwm;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    iget-object v3, v2, Lhzw;->u:Lrbh;

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

    :goto_6f
    goto/32 :goto_20

    nop

    :goto_70
    check-cast v8, Lnob;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_71
    invoke-direct {v0, v9}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->7dd154808b1c676d3d63f3a63e9edabfm(Lnob;)V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_72
    check-cast v9, Lnob;

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

    :goto_73
    invoke-virtual {v1, v2}, Lhoh;->p(Lhmn;)Z

    move-result v1

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_74
    invoke-direct {v0, v10}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->7dd154808b1c676d3d63f3a63e9edabfm(Lnob;)V

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    invoke-interface {v14}, Ltur;->a()Ljava/lang/Object;

    move-result-object v14

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_76
    invoke-interface {v4}, Ltur;->a()Ljava/lang/Object;

    move-result-object v4

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

    :goto_77
    sget-object v2, Lhmp;->f:Lhmn;

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    :goto_78
    iput-object v2, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_79
    iget-object v7, v2, Lhzw;->e:Ltur;

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

    :goto_7a
    iget-object v4, v3, Lrbh;->g:Ljava/lang/Object;

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    nop

    goto/32 :goto_9e

    nop

    nop

    :goto_7c
    move-object/from16 v8, v17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :goto_7d
    sput v3, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->indentation:I

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    move-object/from16 v0, p0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_7f
    check-cast v9, Lnob;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_80
    invoke-direct {v2, v4}, Loxv;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_81
    invoke-static {v3}, Lial;->c(Lrbh;)Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    :goto_82
    iput-object v3, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->r:Liae;

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_83
    iput-object v11, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->A:Lnob;

    nop

    goto/32 :goto_69

    nop

    nop

    :goto_84
    invoke-direct {v0, v4}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->7dd154808b1c676d3d63f3a63e9edabfm(Lnob;)V

    goto/32 :goto_61

    nop

    nop

    :goto_85
    invoke-interface {v10}, Ltur;->a()Ljava/lang/Object;

    move-result-object v10

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_86
    check-cast v12, Lnob;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_87
    iput-object v2, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->O:Landroid/graphics/PointF;

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    :goto_88
    iget-object v8, v2, Lhzw;->r:Ltur;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_89
    check-cast v8, Lnob;

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_8a
    iget-object v1, v2, Lhzw;->o:Ltur;

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

    :goto_8b
    invoke-direct {v0, v11}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->7dd154808b1c676d3d63f3a63e9edabfm(Lnob;)V

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    :goto_8c
    iput-object v3, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->p:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_8d
    invoke-direct/range {p0 .. p1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->d543f409229584e2e064495967092514m(Landroid/content/Context;)Lhzw;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    invoke-interface {v2}, Ltur;->a()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    :goto_8f
    invoke-static {v3}, Liap;->c(Lrbh;)Liae;

    move-result-object v3

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    :goto_90
    invoke-direct {v0, v8}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->7dd154808b1c676d3d63f3a63e9edabfm(Lnob;)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_91
    invoke-interface {v12}, Ltur;->a()Ljava/lang/Object;

    move-result-object v12

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

    :goto_92
    iput-object v12, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->C:Lnob;

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    :goto_93
    check-cast v4, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    :goto_94
    check-cast v5, Lnob;

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_95
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_96
    iget-object v9, v2, Lhzw;->g:Ltur;

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_97
    move-object/from16 v8, v18

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

    :goto_98
    invoke-interface {v1}, Lfwm;->b()Lhoh;

    move-result-object v1

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_99
    sget-object v2, Lhmp;->a:Lhmo;

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    invoke-interface {v6}, Ltur;->a()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    iput-object v15, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->F:Lnob;

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    check-cast v2, Lnob;

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_9d
    invoke-interface {v8}, Ltur;->a()Ljava/lang/Object;

    move-result-object v8

    nop

    nop

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

    :goto_9e
    invoke-direct {v2, v4}, Loxv;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_9f
    check-cast v4, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_a0
    invoke-direct {v0, v15}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->7dd154808b1c676d3d63f3a63e9edabfm(Lnob;)V

    goto/32 :goto_9

    nop

    nop

    :goto_a1
    iget-object v15, v2, Lhzw;->n:Ltur;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_a2
    invoke-direct {v0, v6}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->7dd154808b1c676d3d63f3a63e9edabfm(Lnob;)V

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    check-cast v2, Landroid/view/LayoutInflater;

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    iput-object v2, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->P:[I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_a5
    iget-object v13, v2, Lhzw;->l:Ltur;

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    iget-object v8, v2, Lhzw;->s:Ltur;

    nop

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    :goto_a7
    iput-object v3, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->focus_data:Landroid/widget/TextView;

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_a8
    invoke-direct {v0, v13}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->7dd154808b1c676d3d63f3a63e9edabfm(Lnob;)V

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    :goto_a9
    iput-object v4, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->n:Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_aa
    iput-object v2, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->k:Loyn;

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_ab
    new-instance v2, Loxv;

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_ac
    check-cast v7, Lnob;

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

    :goto_ad
    iput-object v7, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->w:Lnob;

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    invoke-interface {v8}, Ltur;->a()Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_af
    invoke-direct {v0, v3}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->7dd154808b1c676d3d63f3a63e9edabfm(Lnob;)V

    goto/32 :goto_84

    nop

    nop

    :goto_b0
    iget-object v10, v2, Lhzw;->h:Ltur;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :goto_b1
    invoke-direct {v0, v8}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->7dd154808b1c676d3d63f3a63e9edabfm(Lnob;)V

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b2
    iget-object v2, v2, Lhzw;->t:Ltur;

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    :goto_b3
    iput-object v4, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->t:Lnob;

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    invoke-direct/range {p0 .. p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_2d

    nop

    nop

    :goto_b5
    move-object/from16 v16, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_b6
    iget-object v8, v2, Lhzw;->f:Ltur;

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    iget-object v11, v2, Lhzw;->i:Ltur;

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

    :goto_b8
    invoke-direct {v2, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b9
    iput-object v2, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->S:Lhzw;

    nop

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

    :goto_ba
    iget-object v3, v2, Lhzw;->a:Ltur;

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_bb
    if-lez v0, :cond_1

    nop

    goto/32 :goto_20

    nop

    :cond_1
    goto/32 :goto_1f

    nop
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;Liac;Liae;Lnob;Lnob;Lnob;Lnob;Lnob;Lnob;Lnob;Lnob;Lnob;Lnob;Lnob;Lnob;Lnob;Lnob;Lnob;Lnob;Lnob;Lnob;Lnob;)V
    .locals 16

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_0
    move-object/from16 v9, p4

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_1
    iput-object v1, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->H:Lnob;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_2
    const/4 v10, 0x0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0, v2}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->7dd154808b1c676d3d63f3a63e9edabfm(Lnob;)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0, v1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->7dd154808b1c676d3d63f3a63e9edabfm(Lnob;)V

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_5
    move-object/from16 v4, p10

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v10, Landroid/graphics/PointF;

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    move-object/from16 v9, p15

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

    :goto_8
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :goto_9
    iput-object v9, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->r:Liae;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_c
    iput-object v15, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->J:Lnob;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_d
    invoke-interface {v1}, Lfwm;->b()Lhoh;

    move-result-object v1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    sget-object v9, Lnbh;->a:Lnbh;

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {v0, v1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->7dd154808b1c676d3d63f3a63e9edabfm(Lnob;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_10
    new-instance v9, Liah;

    nop

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

    :goto_11
    goto/32 :goto_b

    nop

    :goto_12
    goto/32 :goto_79

    nop

    nop

    nop

    :goto_13
    iput-object v9, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->n:Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_14
    iput-object v4, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->u:Lnob;

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iput-object v1, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->K:Lnob;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_16
    sget-object v2, Lhmp;->f:Lhmn;

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iput-object v14, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->E:Lnob;

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_18
    move-object/from16 v9, p5

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

    :goto_19
    move-object/from16 v10, p16

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    new-instance v9, Loxv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1b
    move-object/from16 v1, p15

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-direct {v9, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_6d

    nop

    nop

    :goto_1d
    move-object/from16 v5, p11

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_1e
    move-object/from16 v12, p18

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

    :goto_1f
    invoke-direct {v0, v1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->7dd154808b1c676d3d63f3a63e9edabfm(Lnob;)V

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_20
    move-object/from16 v3, p9

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_21
    iput-object v2, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->s:Lnob;

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_22
    iput-object v9, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->p:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;

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

    :goto_23
    move-object/from16 v1, p18

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_24
    iput-object v9, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->P:[I

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_25
    iput-object v1, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->I:Lnob;

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

    :goto_26
    instance-of v2, v1, Lfwm;

    nop

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

    :goto_27
    invoke-direct {v0, v3}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->7dd154808b1c676d3d63f3a63e9edabfm(Lnob;)V

    goto/32 :goto_5a

    nop

    nop

    :goto_28
    invoke-direct/range {p0 .. p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_29
    invoke-direct {v0, v1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->7dd154808b1c676d3d63f3a63e9edabfm(Lnob;)V

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iput-boolean v1, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->i:Z

    nop

    :goto_2b
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2c
    move-object/from16 v1, p16

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iput-object v9, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->j:Loyn;

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

    :goto_2e
    move-object/from16 v1, p1

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
    move-object/from16 v9, p6

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_30
    iput-object v10, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->O:Landroid/graphics/PointF;

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

    :goto_31
    const v0, 0x11

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_32
    invoke-direct {v0, v1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->7dd154808b1c676d3d63f3a63e9edabfm(Lnob;)V

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iput-object v12, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->C:Lnob;

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_34
    move-object/from16 v1, p19

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

    :goto_35
    invoke-direct {v10, v9, v9}, Landroid/graphics/PointF;-><init>(FF)V

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    check-cast v1, Lfwm;

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-direct {v0, v8}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->7dd154808b1c676d3d63f3a63e9edabfm(Lnob;)V

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    if-nez v2, :cond_0

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_39
    move-object/from16 v7, p13

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    move-object/from16 v9, p7

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3b
    iput-object v1, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->L:Lnob;

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_3c
    invoke-direct {v0, v4}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->7dd154808b1c676d3d63f3a63e9edabfm(Lnob;)V

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_3d
    iput-object v9, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->m:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_3e
    invoke-direct {v0, v1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->7dd154808b1c676d3d63f3a63e9edabfm(Lnob;)V

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    move-object/from16 v13, p19

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_40
    iput-object v9, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->k:Loyn;

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_41
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_42
    iput-object v8, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->D:Lnob;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_43
    invoke-direct {v9, v0}, Liah;-><init>(Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;)V

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    move-object/from16 v6, p12

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_45
    invoke-direct {v9, v11}, Loxv;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_46
    iput-object v1, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->v:Lnob;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_47
    move-object/from16 v2, p8

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

    :goto_48
    rem-int v0, v0, v1

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_49
    iput-object v6, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->z:Lnob;

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    sget-object v2, Lhmp;->a:Lhmo;

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

    :goto_4b
    iput-object v9, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->Q:Lnbh;

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_4c
    iput-object v1, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->G:Lnob;

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

    :goto_4d
    move-object/from16 v15, p21

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

    :goto_4e
    move-object/from16 v1, p17

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    iput-object v1, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->x:Lnob;

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_50
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_1
    goto/32 :goto_11

    nop

    :goto_51
    const v1, 0x12

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_52
    iput-object v9, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->S:Lhzw;

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    :goto_53
    iput-object v5, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->w:Lnob;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_54
    iput-object v9, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->q:Liac;

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_55
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_56
    invoke-virtual {v1, v2}, Lhoh;->p(Lhmn;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    invoke-direct {v0, v5}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->7dd154808b1c676d3d63f3a63e9edabfm(Lnob;)V

    goto/32 :goto_53

    nop

    nop

    :goto_58
    move-object/from16 v13, p23

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    iput-object v13, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->y:Lnob;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    iput-object v3, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->t:Lnob;

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

    nop

    :goto_5b
    move-object/from16 v9, p3

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-direct {v0, v15}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->7dd154808b1c676d3d63f3a63e9edabfm(Lnob;)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_5d
    iput-object v7, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->A:Lnob;

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_5e
    invoke-direct {v0, v1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->7dd154808b1c676d3d63f3a63e9edabfm(Lnob;)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-direct {v0, v13}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->7dd154808b1c676d3d63f3a63e9edabfm(Lnob;)V

    goto/32 :goto_59

    nop

    nop

    :goto_60
    move-object/from16 v1, p1

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    invoke-direct {v0, v7}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->7dd154808b1c676d3d63f3a63e9edabfm(Lnob;)V

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_62
    new-instance v9, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_63
    const/4 v9, 0x2

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    :goto_64
    move-object/from16 v11, p17

    nop

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

    nop

    :goto_65
    invoke-direct/range {p0 .. p1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->d543f409229584e2e064495967092514m(Landroid/content/Context;)Lhzw;

    move-result-object v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_66
    move-object/from16 v1, p25

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

    :goto_67
    iput-object v9, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->R:Landroid/animation/Animator$AnimatorListener;

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    :goto_68
    new-instance v9, Loxv;

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

    :goto_69
    const/4 v9, 0x0

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

    :goto_6a
    iput-object v9, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->o:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_6b
    invoke-interface {v1}, Lfwm;->b()Lhoh;

    goto/32 :goto_4a

    nop

    nop

    :goto_6c
    invoke-direct {v0, v6}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->7dd154808b1c676d3d63f3a63e9edabfm(Lnob;)V

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_6d
    iput-object v9, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

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

    nop

    nop

    :goto_6e
    move-object/from16 v14, p20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_6f
    move-object/from16 v1, p26

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_70
    move-object/from16 v12, p24

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_71
    move-object/from16 v11, p25

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

    :goto_72
    move-object/from16 v1, p22

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

    nop

    :goto_73
    invoke-direct {v0, v14}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->7dd154808b1c676d3d63f3a63e9edabfm(Lnob;)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    new-array v9, v9, [I

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    move-object/from16 v8, p14

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_76
    invoke-direct {v9, v11}, Loxv;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_77
    invoke-direct {v0, v1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->7dd154808b1c676d3d63f3a63e9edabfm(Lnob;)V

    goto/32 :goto_1

    nop

    nop

    :goto_78
    iput-object v1, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->F:Lnob;

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_79
    move-object/from16 v0, p0

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_7a
    invoke-direct {v0, v12}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->7dd154808b1c676d3d63f3a63e9edabfm(Lnob;)V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_7b
    move-object/from16 v9, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop
.end method

.method private final d543f409229584e2e064495967092514m(Landroid/content/Context;)Lhzw;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, v0}, Lhzw;-><init>(Lrbh;)V

    goto/32 :goto_4

    nop

    nop

    :goto_1
    invoke-direct {v0, p1, p0}, Lrbh;-><init>(Landroid/content/Context;Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance p0, Lhzw;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v0, Lrbh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    return-object p0

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic bm(Ljava/lang/Object;)V
    .locals 10

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_0
    new-array v4, v4, [Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_1
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_3
    const-string v1, " EXPA: 1/"

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

    :goto_4
    new-instance v9, Ljava/lang/StringBuilder;

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

    :goto_5
    iget-object v3, v3, Lkmz;->a:Landroid/graphics/PointF;

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

    :goto_6
    const v3, 0x42c80000    # 100.0f

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_7
    mul-float/2addr v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v3}, Landroid/graphics/PointF;->toString()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_9
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

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

    :goto_c
    const-string v1, "\n ISO: "

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

    :goto_d
    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const-string v5, "%.2f"

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

    :goto_f
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_10
    goto/32 :goto_46

    nop

    nop

    nop

    :goto_11
    aput-object v6, v4, v5

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

    :goto_12
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

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

    :goto_13
    sget v2, Lcom/a;->sCorrectorAnalog_gain:F

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

    :goto_14
    float-to-int p1, v1

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

    :goto_15
    div-float/2addr v2, v3

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_16
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_47

    nop

    nop

    :goto_18
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_1a
    sget v2, Lcom/a;->sMax_All_gain:F

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_1b
    if-nez v3, :cond_0

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

    :cond_0
    goto/32 :goto_44

    nop

    nop

    :goto_1c
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_1d
    add-int/2addr v5, v7

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_1e
    iget-object v3, p1, Lkna;->d:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_1f
    sget p1, Lcom/a;->sCorrectorExposure_time_ms:F

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_20
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

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

    nop

    :goto_21
    const v1, 0x6

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const-string v1, "%"

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const v3, 0x0

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

    :goto_24
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_25
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->focus_data:Landroid/widget/TextView;

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

    :goto_26
    iput v2, v1, Ldse;->topMargin:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v1, p1, Lkna;->a:Llsd;

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_28
    check-cast v3, Lkmz;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_29
    const/4 v5, 0x0

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_2a
    invoke-virtual {v3}, Lrss;->c()Ljava/lang/Object;

    move-result-object v3

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_2b
    iget v6, p1, Lkna;->c:F

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object v2, p1, Lkna;->b:Llse;

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

    :goto_2d
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    sget v1, Lcom/a;->sCorrectorDigital_gain:F

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

    :goto_2f
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_31
    sget-object v1, Lcom/NoiseModels;->showNM:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_32
    move/from16 v1, v2

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_34
    cmpl-float v3, v2, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_35
    if-nez v0, :cond_1

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

    :cond_1
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_36
    div-float/2addr v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_37
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    const/4 v4, 0x1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_60

    nop

    nop

    :goto_3c
    add-int/2addr v5, v8

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_3d
    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_3e

    nop

    nop

    :goto_3e
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->focus_data:Landroid/widget/TextView;

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

    :goto_3f
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_41
    cmpg-float v3, v3, v2

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

    nop

    nop

    :goto_42
    const-string v3, "?"

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_44
    mul-float/2addr v1, v2

    nop

    :goto_45
    goto/32 :goto_1a

    nop

    nop

    :goto_46
    return-void

    nop

    :goto_47
    goto/32 :goto_52

    nop

    nop

    nop

    :goto_48
    if-ltz v3, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    :cond_3
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_49
    iget-object v3, p1, Lkna;->d:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_4b
    check-cast v1, Ldse;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_4c
    add-int/lit8 v5, v5, 0x24

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_4d
    sget v2, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->indentation:I

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

    :goto_4e
    check-cast p1, Lkna;

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

    :goto_4f
    add-int/2addr v5, v6

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_50
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

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

    :goto_51
    const-string v1, "AF mode lens: "

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

    :goto_52
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_53
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_54
    const v0, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_55
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

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

    :goto_56
    const-string v5, "AF mode: "

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_57
    float-to-int p1, p1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_58
    div-float p1, v1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_59
    goto/16 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    goto/32 :goto_42

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_5c
    const v1, 0x447a0000    # 1000.0f

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_5d
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    if-lez v0, :cond_4

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_17

    nop

    :goto_5f
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    const-string v1, "\n"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_61
    if-nez v3, :cond_5

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_62
    invoke-virtual {v3}, Lrss;->h()Z

    move-result v3

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

    nop

    :goto_63
    sget v2, Lcom/a;->sCorrectorPost_raw_digital_gain:F

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

    nop
.end method

.method public final dI(Lnbh;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final synthetic dP(Lnbe;Lnbh;)V
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

    nop
.end method

.method public final g(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 5

    goto/32 :goto_6

    nop

    nop

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

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_1
    new-instance v3, Landroid/graphics/Matrix;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_2
    iget-object p1, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->Q:Lnbh;

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

    nop

    :goto_3
    return-object p1

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    aget v2, v1, v2

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_6
    const v0, 0x1c

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget v0, p1, Landroid/graphics/PointF;->x:F

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

    :goto_8
    const v1, 0x1d

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_9
    int-to-float p1, p1

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

    :goto_a
    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_b
    aput p1, v1, v0

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_c
    invoke-virtual {v3, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    goto/32 :goto_22

    nop

    nop

    :goto_d
    const/high16 v4, 0x3f000000    # 0.5f

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

    :goto_e
    invoke-direct {p1, v2, v0}, Landroid/graphics/PointF;-><init>(FF)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_f
    int-to-float v3, v3

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->getHeight()I

    move-result p0

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_13
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v3, p1, v4, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_16
    mul-float/2addr v0, p0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_17
    add-int v0, v0, v1

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

    :goto_18
    new-array v1, v1, [F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_19
    aput v0, v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1a
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

    :goto_1b
    int-to-float p0, p0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_11

    nop

    :goto_1d
    const/4 v1, 0x2

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1e
    iget p1, p1, Lnbh;->e:I

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

    :goto_1f
    invoke-virtual {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->getWidth()I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_20
    mul-float/2addr v2, v3

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

    :goto_21
    iget p1, p1, Landroid/graphics/PointF;->y:F

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_22
    new-instance p1, Landroid/graphics/PointF;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_23
    aget v0, v1, v0

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
.end method

.method public final h()Lnoa;
    .locals 3

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1
    invoke-direct {v1, p0, v2}, Lfux;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_11

    nop

    nop

    :goto_2
    const v0, 0x1d

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_8

    nop

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
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->p:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_6
    const/16 v2, 0xd

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-object v0

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_b

    nop

    nop

    :goto_9
    new-instance v1, Lfux;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x1e

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_4

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->H:Lnob;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_e
    invoke-virtual {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->k()V

    goto/32 :goto_5

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

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_10
    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->c(Z)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_11
    invoke-interface {v0, v1}, Lnoa;->b(Lnnz;)V

    goto/32 :goto_7

    nop

    nop

    :goto_12
    invoke-interface {v0}, Lnob;->a()Lnoa;

    move-result-object v0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop
.end method

.method public final i()Lnoa;
    .locals 9

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v1, v1, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    :goto_2
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {v1}, Lnob;->a()Lnoa;

    move-result-object v1

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    sget-object p0, Lnob;->a:Lnoa;

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

    :goto_6
    goto :goto_2

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_8
    sget-object v7, Liab;->b:Liab;

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_9
    sget-object v1, Liab;->g:Liab;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_a
    sget-object v3, Liab;->f:Liab;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v2, Liag;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v1, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->q:Liac;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_e
    aput-object v8, v6, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_f
    invoke-interface {v1}, Lnob;->a()Lnoa;

    move-result-object v1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_11
    sget-object v2, Liab;->k:Liab;

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

    :goto_12
    sget-object v0, Liab;->j:Liab;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_13
    sget-object v5, Liab;->d:Liab;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/16 :goto_4

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-interface {v1, v0}, Liac;->c(Lryy;)V

    goto/32 :goto_1a

    nop

    nop

    :goto_17
    iget-object v1, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->x:Lnob;

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

    :goto_18
    if-nez v1, :cond_0

    nop

    nop

    goto/32 :goto_15

    nop

    :cond_0
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_19
    const/4 v6, 0x2

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v1, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->k:Loyn;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_1b
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->M:Landroid/animation/Animator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_1c
    new-array v6, v6, [Liab;

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_1d
    return-object v1

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_24

    nop

    nop

    :goto_1f
    invoke-direct {v2, p0, v0, v8}, Liag;-><init>(Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;Lryy;I)V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-static/range {v0 .. v6}, Lryy;->K(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lryy;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-nez v0, :cond_1

    nop

    goto/32 :goto_2

    nop

    :cond_1
    goto/32 :goto_2e

    nop

    nop

    :goto_24
    goto/32 :goto_22

    nop

    :goto_25
    check-cast v1, Loxv;

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

    :goto_26
    if-eqz v0, :cond_2

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const v1, 0x3

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_28
    if-lez v0, :cond_3

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_21

    nop

    :goto_29
    sget-object v4, Liab;->c:Liab;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_2b
    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_2c
    const v0, 0xc

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

    nop

    :goto_2d
    invoke-interface {v1, v2}, Lnoa;->b(Lnnz;)V

    goto/32 :goto_1d

    nop

    nop

    :goto_2e
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    check-cast v1, Ljava/lang/Boolean;

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_30
    sget-object v8, Liab;->e:Liab;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_31
    aput-object v7, v6, v8

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_32
    iget-object v1, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->y:Lnob;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    const/4 v8, 0x1

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final j()Lnoa;
    .locals 1

    goto/32 :goto_7

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    nop

    goto/32 :goto_0

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
    sget-object p0, Lnob;->a:Lnoa;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {p0}, Lnob;->a()Lnoa;

    move-result-object p0

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

    :goto_5
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->w:Lnob;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->M:Landroid/animation/Animator;

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

    :goto_8
    return-object p0

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop
.end method

.method public final k()V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    :goto_0
    iget-object v0, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->a:Landroid/animation/Animator;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->p:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x0

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

    :goto_5
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->M:Landroid/animation/Animator;

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

    :goto_6
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->a()V

    :goto_8
    goto/32 :goto_19

    nop

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

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_0

    nop

    nop

    :goto_b
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->o:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;

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

    :goto_c
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->o:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_d
    if-nez v0, :cond_3

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

    :cond_3
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v0, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->a:Landroid/animation/Animator;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iput-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->M:Landroid/animation/Animator;

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
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->p:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->a()V

    :goto_15
    goto/32 :goto_13

    nop

    nop

    :goto_16
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->M:Landroid/animation/Animator;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_17
    if-nez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_18
    if-nez v0, :cond_5

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

    :cond_5
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_19
    return-void

    nop
.end method

.method public final l()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->n()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->o()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->k()V

    goto/32 :goto_2

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->p()V

    goto/32 :goto_1

    nop

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
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->m()V

    goto/32 :goto_4

    nop

    nop

    :goto_8
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final m()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->setVisibility(I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    const/16 v0, 0x8

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
    iget-object p0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->n:Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public final n()V
    .locals 2

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->s(Z)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->c(Z)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    :goto_4
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->offon()V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v1, 0x0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x3

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

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->o:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x13

    nop

    goto/32 :goto_c

    nop

    nop
.end method

.method public final o()V
    .locals 2

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->r:Liae;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_2
    invoke-interface {v0, v1}, Liae;->d(F)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {v0, v1}, Liac;->m(F)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_9
    const/4 v1, 0x0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->m:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->invalidate()V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_e
    const v1, 0x6

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_f
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->q:Liac;

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

    :goto_10
    const v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop
.end method

.method public final offon()V
    .locals 3

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/16 v1, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_5

    nop

    :goto_4
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const-string v1, "ZGVidWdfbWFudWFsX2ZvY3VzX2tleQ"

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

    :goto_7
    const v0, 0xb

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

    :goto_8
    sget-object v2, Lnne;->g:Lnne;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-ne v1, v2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

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

    :goto_a
    const/16 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    sget-object v1, Lcom/a;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_e
    if-ne v1, v2, :cond_1

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

    :cond_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-nez v1, :cond_2

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

    :cond_2
    goto/32 :goto_c

    nop

    nop

    :goto_10
    invoke-static {v1}, Lcom/a;->ac_mb(Ljava/lang/Object;)I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_11
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

    :goto_12
    if-ne v1, v2, :cond_3

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_3
    :goto_13
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_14
    sget-object v2, Lnne;->b:Lnne;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->focus_data:Landroid/widget/TextView;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_17
    sget-object v2, Lnne;->k:Lnne;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_18
    if-lez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_4

    nop

    :goto_19
    const v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1a
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final onFinishInflate()V
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_3
    iput-object v1, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->b:Landroid/view/View;

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

    :goto_4
    iput-object v1, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->b:Landroid/view/View;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v1, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->m:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->p:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;

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

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0xa

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_e
    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->onFinishInflate()V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->o:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;

    nop

    goto/32 :goto_7

    nop

    nop
.end method

.method protected final onLayout(ZIIII)V
    .locals 3

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->e()V

    goto/32 :goto_71

    nop

    nop

    :goto_1
    const/4 p4, 0x1

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_2
    int-to-float p3, v1

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_3
    const/4 v1, 0x3

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_4
    if-ne p2, p5, :cond_0

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_36

    nop

    nop

    :goto_5
    int-to-float p2, v1

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-ne p2, p4, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    nop

    :goto_7
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_8
    const/16 p5, -0x10e

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_9
    iget-object p1, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->m:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput-boolean p4, p1, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->g:Z

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1, p5}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->b(Landroid/graphics/PointF;)V

    :goto_c
    goto/32 :goto_a

    nop

    nop

    :goto_d
    if-ne p2, v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v2, 0x2

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

    :goto_f
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_10
    check-cast p3, Landroid/view/View;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_11
    const/16 p5, -0x5a

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_12
    iget p3, v0, Landroid/graphics/PointF;->y:F

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->e()V

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_14
    sget-object p2, Lpcg;->b:Lpcg;

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_3

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_4a

    nop

    :goto_16
    int-to-float p2, p3

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_17
    sub-float/2addr p3, v1

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_18
    if-nez v0, :cond_4

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_4
    goto/32 :goto_19

    nop

    nop

    :goto_19
    new-instance p5, Landroid/graphics/PointF;

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

    :goto_1a
    goto/16 :goto_3d

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_34

    nop

    nop

    nop

    :goto_1c
    goto/16 :goto_3d

    nop

    nop

    :goto_1d
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget v1, v0, Landroid/graphics/PointF;->x:F

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object p5, p1, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->f:Lnbh;

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

    :goto_20
    invoke-static {p5}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->a(Lnbh;)I

    move-result p5

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_21
    throw p0

    nop

    nop

    :goto_22
    goto/32 :goto_55

    nop

    nop

    :goto_23
    iget-object p1, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->o:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;

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

    :goto_24
    invoke-static {p2, p3}, Lnnr;->i(Landroid/view/Display;Landroid/content/Context;)Lnbh;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    :goto_25
    const v0, 0x11

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_26
    goto :goto_29

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/16 :goto_5e

    nop

    :goto_29
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-direct {p5}, Landroid/graphics/PointF;-><init>()V

    goto/32 :goto_2b

    nop

    nop

    :goto_2b
    invoke-virtual {p2}, Lpcg;->ordinal()I

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2c
    const/4 p3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object p2, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->P:[I

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    aget p2, p2, p4

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_2f
    iput-object p2, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->Q:Lnbh;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_30
    invoke-virtual {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->getContext()Landroid/content/Context;

    move-result-object p3

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_31
    sget-object p2, Lpcg;->c:Lpcg;

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    if-ne p2, p1, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :cond_5
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_33
    iget-object p2, p1, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->f:Lnbh;

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    int-to-float p2, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_35
    iget-object p1, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->Q:Lnbh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_36
    if-nez p2, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :cond_6
    goto/32 :goto_5b

    nop

    nop

    :goto_37
    goto/16 :goto_68

    nop

    :goto_38
    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {p5, p2, p3}, Landroid/graphics/PointF;->set(FF)V

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_3a
    new-instance p0, Ljava/lang/IllegalArgumentException;

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

    :goto_3b
    if-ne p2, p5, :cond_7

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {p5, p2, p3}, Landroid/graphics/PointF;->set(FF)V

    :goto_3d
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3e
    iget-object p2, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->Q:Lnbh;

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    goto :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_5

    nop

    nop

    :goto_41
    if-eq p2, p5, :cond_8

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :cond_8
    goto/32 :goto_26

    nop

    nop

    :goto_42
    iget p2, v0, Landroid/graphics/PointF;->x:F

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_43
    goto/16 :goto_5e

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_45
    if-ne p2, p5, :cond_9

    nop

    goto/32 :goto_44

    nop

    :cond_9
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_46
    const/16 p5, 0xb4

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    sub-float/2addr p2, v0

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_48
    invoke-virtual {p0, p2}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->getLocationInWindow([I)V

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_49
    if-nez p2, :cond_a

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

    :cond_a
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_4b
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    iget v0, v0, Landroid/graphics/PointF;->y:F

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    iget p3, v0, Landroid/graphics/PointF;->x:F

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_4e
    iget p3, v0, Landroid/graphics/PointF;->y:F

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

    :goto_4f
    iget-object p1, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->n:Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_50
    sub-int/2addr p2, p5

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_51
    const/16 p5, -0xb4

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    :goto_52
    iget p3, v0, Landroid/graphics/PointF;->y:F

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_53
    sub-float/2addr p2, p3

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_54
    iget-object p5, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->O:Landroid/graphics/PointF;

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

    nop

    nop

    :goto_55
    sget-object p2, Lpcg;->a:Lpcg;

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_56
    return-void

    nop

    nop

    :goto_57
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_58
    iget-boolean p2, p1, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->g:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_59
    iput-object p2, p1, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->f:Lnbh;

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_5a
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_5b
    const/16 p5, 0x5a

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-virtual {p1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    sget-object p2, Lpcg;->d:Lpcg;

    nop

    nop

    :goto_5e
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_5f
    invoke-static {p2}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->a(Lnbh;)I

    move-result p2

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

    :goto_60
    iget-object p2, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->Q:Lnbh;

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_61
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_62
    invoke-virtual {p5, p3, p2}, Landroid/graphics/PointF;->set(FF)V

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    iget-object p2, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->P:[I

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

    :goto_64
    invoke-super/range {p0 .. p5}, Landroidx/constraintlayout/widget/ConstraintLayout;->onLayout(ZIIII)V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_65
    int-to-float p2, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_66
    sub-float/2addr p2, v0

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_67
    return-void

    nop

    nop

    nop

    nop

    :goto_68
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_69
    invoke-virtual {p5, p3, p2}, Landroid/graphics/PointF;->set(FF)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    invoke-virtual {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->getDisplay()Landroid/view/Display;

    move-result-object p2

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_6c
    add-int v0, v0, v1

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_6d
    aget p3, p2, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    :goto_6e
    if-ne p2, p5, :cond_b

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_46

    nop

    nop

    nop

    :goto_6f
    invoke-virtual {p5, p3, p2}, Landroid/graphics/PointF;->set(FF)V

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_70
    if-ne p2, v2, :cond_c

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

    :cond_c
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_71
    iget-object p0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->p:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_72
    goto/16 :goto_5e

    nop

    nop

    :goto_73
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_74
    const v1, 0x14

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    iput-object p2, p1, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->d:Lnbh;

    nop

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

    :goto_76
    if-eqz p1, :cond_d

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_77
    if-ne p2, p5, :cond_e

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_78
    iget-object v0, p1, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->e:Landroid/graphics/PointF;

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_79
    int-to-float p3, p3

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

    :goto_7a
    const/16 p5, 0x10e

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_7b
    iget v0, v0, Landroid/graphics/PointF;->x:F

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop
.end method

.method public final p()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->p:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->c(Z)V

    goto/32 :goto_1

    nop

    nop
.end method

.method public final q(Lrss;I)V
    .locals 2

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->getWidth()I

    move-result v0

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_1
    check-cast p1, Landroid/graphics/PointF;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->b(Landroid/graphics/PointF;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    :goto_5
    new-instance p2, Landroid/graphics/PointF;

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

    :goto_6
    int-to-float p0, p0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->x(F)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x1b

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_a
    div-float/2addr p0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_b
    invoke-virtual {p1, p2}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->b(Landroid/graphics/PointF;)V

    goto/32 :goto_15

    nop

    nop

    :goto_c
    div-float/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->g(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_e
    goto/32 :goto_19

    nop

    nop

    :goto_f
    invoke-virtual {p1}, Lrss;->h()Z

    move-result v0

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

    :goto_10
    invoke-direct {p2, v0, p0}, Landroid/graphics/PointF;-><init>(FF)V

    goto/32 :goto_b

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1f

    nop

    nop

    :goto_13
    if-nez v0, :cond_1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1c

    nop

    nop

    :goto_14
    const/high16 v1, 0x40000000    # 2.0f

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

    :goto_15
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->m:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;

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

    :goto_18
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const v0, 0x1d

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1b
    int-to-float v0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p1}, Lrss;->c()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1d
    int-to-float p1, p2

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->getHeight()I

    move-result p0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1f
    iget-object p1, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->m:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method

.method public final r()V
    .locals 4

    goto/32 :goto_c

    nop

    nop

    :goto_0
    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x1d

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    div-float/2addr v2, v3

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

    :goto_5
    add-int v0, v0, v1

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

    :goto_6
    iget-object p0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->m:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    :goto_8
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->b(Landroid/graphics/PointF;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_9
    int-to-float v1, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_a
    div-float/2addr v1, v3

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->getWidth()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_c
    const v0, 0x14

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

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

    :goto_e
    int-to-float v2, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->getHeight()I

    move-result v2

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/high16 v3, 0x40000000    # 2.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_14
    new-instance v0, Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop
.end method

.method public final s(Z)V
    .locals 2

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p0, Lfwe;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->N:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_2
    check-cast p0, Lfwe;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_3
    check-cast p1, Loxv;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p1, p1, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_5
    if-eqz p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_7
    check-cast p1, Lfwd;

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {p0, p1}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_9
    sget-object v0, Lfwd;->c:Lfwd;

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_a
    goto/16 :goto_28

    nop

    nop

    :goto_b
    goto/32 :goto_1a

    nop

    nop

    :goto_c
    invoke-interface {v0, v1}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x1b

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    sget-object p1, Lfwd;->f:Lfwd;

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_f
    iget-object p1, p1, Loxv;->d:Ljava/lang/Object;

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

    :goto_10
    iget-object p1, p0, Lfwe;->a:Loyn;

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

    :goto_11
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_12
    check-cast p1, Lfwd;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_13
    check-cast p1, Lfwd;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->j:Loyn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_15
    if-eq v0, p1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    sget-object v0, Lfwd;->f:Lfwd;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_17
    check-cast p1, Loxv;

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

    :goto_18
    if-nez p0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :cond_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object p1, p0, Lfwe;->a:Loyn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_1a
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->j:Loyn;

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

    :goto_1b
    invoke-virtual {p1, v0}, Lfwd;->equals(Ljava/lang/Object;)Z

    move-result p1

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

    :goto_1c
    check-cast p1, Lfwd;

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_1d
    return-void

    nop

    :goto_1e
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    add-int v0, v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_20
    iget-object p0, p0, Lfwe;->a:Loyn;

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

    :goto_21
    invoke-virtual {p1, v0}, Lfwd;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const v1, 0x16

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_23
    if-eqz p1, :cond_3

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

    :cond_3
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    check-cast v0, Ljava/lang/Boolean;

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_25
    check-cast v0, Loxv;

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

    :goto_26
    iget-object p1, p1, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_27
    invoke-interface {p0, p1}, Loyn;->a(Ljava/lang/Object;)V

    :goto_28
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

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

    :goto_2a
    sget-object p1, Lfwd;->c:Lfwd;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    check-cast p1, Loxv;

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

    :goto_2c
    if-lez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    :cond_4
    goto/32 :goto_3c

    nop

    :goto_2d
    sget-object v0, Lfwd;->d:Lfwd;

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

    :goto_2e
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object p1, p0, Lfwe;->a:Loyn;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iget-object p0, p0, Lfwe;->a:Loyn;

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_31
    sget-object v0, Lfwd;->g:Lfwd;

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_32
    if-eqz p1, :cond_5

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_33
    invoke-virtual {p1, v0}, Lfwd;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    check-cast p1, Loxv;

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {p1, v0}, Lfwd;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_38
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    if-eqz p1, :cond_6

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

    :cond_6
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iget-object v0, v0, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_3b
    if-nez p1, :cond_7

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_1e

    nop

    nop

    :goto_3d
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    iget-object p1, p1, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_3f
    iget-object p1, p0, Lfwe;->a:Loyn;

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop
.end method

.method public final t(F)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->q:Liac;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->m:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->p:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;

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

    :goto_3
    invoke-virtual {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->invalidate()V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->d(F)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {v0, p1}, Liac;->m(F)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final u()Z
    .locals 0

    goto/32 :goto_1

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
    iget-object p0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final v()V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    :goto_0
    invoke-interface {p0}, Lnob;->a()Lnoa;

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->G:Lnob;

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

    :goto_3
    invoke-virtual {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->k()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final w(Lrss;)Lnoa;
    .locals 1

    goto/32 :goto_5

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->o()V

    goto/32 :goto_9

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->v:Lnob;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_4
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

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

    :goto_5
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->M:Landroid/animation/Animator;

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
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_7
    sget-object p0, Lnob;->a:Lnoa;

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
    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->q(Lrss;I)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->m()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {p0}, Lnob;->a()Lnoa;

    move-result-object p0

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
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/16 v0, 0x168

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

    :goto_d
    return-object p0

    nop
.end method

.method public final x(F)V
    .locals 5

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_1
    iget-object v4, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->Q:Lnbh;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2
    int-to-float v2, v2

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

    :goto_3
    const v0, 0x12

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_4
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {p0, p1}, Liac;->k(F)V

    goto/32 :goto_1c

    nop

    nop

    :goto_6
    goto/16 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {v0, p1}, Liac;->l(F)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_a
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_b
    div-float/2addr p1, v1

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

    :goto_c
    iget v4, v4, Lnbh;->e:I

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-boolean v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->i:Z

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto :goto_7

    nop

    :goto_f
    goto/32 :goto_41

    nop

    nop

    nop

    :goto_10
    int-to-float v1, v1

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

    :goto_11
    goto/16 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_13
    cmpl-float v4, p1, v3

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_14
    const/high16 v1, 0x40000000    # 2.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->getContext()Landroid/content/Context;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_16
    move p1, v3

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_17
    mul-float/2addr p1, v3

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_18
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const v1, 0x40066666    # 2.1f

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_1a
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->q:Liac;

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_1b
    const v0, 0x7f070808

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_1c
    return-void

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1f
    div-float v2, v3, v1

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

    :goto_20
    cmpg-float v4, p1, v3

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_22
    const v3, 0x44a8c000    # 1350.0f

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_23
    invoke-interface {v0, p1}, Liac;->l(F)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_1d

    nop

    :goto_25
    goto/32 :goto_43

    nop

    nop

    :goto_26
    const v0, 0x7f07080d

    nop

    goto/32 :goto_39

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

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_28
    goto/16 :goto_12

    nop

    :goto_29
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_2a
    cmpl-float v1, v2, v1

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

    :goto_2b
    rem-int v0, v0, v1

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

    :goto_2c
    const/16 v1, 0xbb0

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_2d
    invoke-static {v2, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_25

    nop

    :goto_2f
    iget-object p0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->q:Liac;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_31
    mul-float/2addr p1, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_32
    return-void

    nop

    nop

    :goto_33
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-interface {p0, p1}, Liac;->k(F)V

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_35
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_24

    nop

    :goto_36
    const/high16 v1, 0x44a80000    # 1344.0f

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

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

    :goto_39
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_3a
    if-gtz v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    if-ltz v4, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    const/4 v2, 0x0

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

    :goto_3d
    invoke-virtual {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->getContext()Landroid/content/Context;

    move-result-object p1

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_3e
    const/16 v1, 0xad4

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_41
    const/high16 v3, 0x43b40000    # 360.0f

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

    :goto_42
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->q:Liac;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_43
    invoke-virtual {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_45
    goto :goto_3f

    nop

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_47
    if-eqz v4, :cond_4

    nop

    goto/32 :goto_29

    nop

    nop

    :cond_4
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_49
    if-gtz v4, :cond_5

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_5
    :goto_4a
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    iget-object p0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->q:Liac;

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

    :goto_4c
    int-to-float v1, v1

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_4d
    div-float/2addr p1, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4e
    div-float/2addr p1, v1

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

    nop

    :goto_4f
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop
.end method
