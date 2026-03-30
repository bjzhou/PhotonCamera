.class public Lghe;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Ljog;


# static fields
.field public static final a:Lsdb;


# instance fields
.field public final A:Ljhy;

.field public final B:Lhst;

.field public final C:Liof;

.field private final D:Lmyc;

.field private final E:Lglm;

.field private final F:Ljdc;

.field private final G:Lcom/google/android/apps/camera/ui/views/CaptureAnimationOverlay;

.field private final H:Lhrb;

.field private final I:Lnfh;

.field private final J:Lnfh;

.field private final K:Lnfh;

.field private final L:Lmup;

.field private final M:Ltxm;

.field private final N:Lnpc;

.field private O:Lsuu;

.field private final P:Llus;

.field private final Q:Lkyf;

.field private final R:Lmji;

.field private final S:Lfwv;

.field private T:I

.field private final U:Lhoh;

.field public final b:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final c:Lndu;

.field public final d:Lcom/google/android/apps/camera/ui/views/ViewfinderCover;

.field public final e:Lcom/google/android/apps/camera/ui/layout/MainActivityLayout;

.field public final f:Landroid/widget/FrameLayout;

.field public final g:Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;

.field public final h:Lngo;

.field public final i:Lhsc;

.field public final j:Lnam;

.field public final k:Landroid/hardware/display/DisplayManager$DisplayListener;

.field public l:I

.field public final m:Lcom/google/android/apps/camera/ui/wirers/PreviewOverlay;

.field public n:Lnfk;

.field public final o:Landroid/view/View$OnLayoutChangeListener;

.field public final p:Lmsx;

.field public q:Lnfh;

.field public final r:Lnjb;

.field public s:Landroid/graphics/SurfaceTexture;

.field public t:I

.field public u:I

.field public final v:Landroid/hardware/display/DisplayManager;

.field public final w:Landroid/view/WindowManager;

.field public final x:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

.field public final y:Ljava/util/function/Consumer;

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sput-object v0, Lghe;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_4

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
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    sget-object v0, Lcom/google/android/libraries/mdi/download/workmanager/workers/UTR/fllg;->hgMiQKAqOTNAIUP:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method

.method public constructor <init>(Ljhy;Lcom/google/android/apps/camera/ui/layout/MainActivityLayout;Lpzi;Lnar;Lncc;Lnjb;Lfwv;Landroid/hardware/display/DisplayManager;Landroid/view/WindowManager;Lmsx;Lmup;Lhzm;Lglm;Lngo;Ljdc;Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;Ltxm;Lndu;Lmyc;Lkyf;Ljava/util/function/Consumer;Lhsc;Lhoh;Llus;Lnpc;Lhrb;Lmji;)V
    .locals 15

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_0
    check-cast v5, Landroid/view/ViewStub;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_1
    invoke-direct {v5, v7, v10}, Lnam;-><init>(Landroid/view/ViewStub;Lhoh;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_2
    move-object/from16 v13, p11

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_3
    iput-object v14, v0, Lghe;->P:Llus;

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    :goto_4
    move-object/from16 v14, p25

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v1, v3}, Lnfi;-><init>(Lnfh;)V

    goto/32 :goto_a1

    nop

    nop

    :goto_7
    invoke-direct {v3, p0, v11}, Lkeb;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-object v3, v0, Lghe;->K:Lnfh;

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    :goto_9
    new-instance v3, Lnfn;

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_a
    move-object/from16 v2, p3

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

    :goto_b
    iput-object v5, v0, Lghe;->f:Landroid/widget/FrameLayout;

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

    :goto_c
    iput-object v1, v0, Lghe;->e:Lcom/google/android/apps/camera/ui/layout/MainActivityLayout;

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

    nop

    nop

    :goto_d
    check-cast v3, Lpic;

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_e
    invoke-direct {v14, v8}, Lghc;-><init>(Lhzm;)V

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    check-cast v3, Lpic;

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_10
    iput-object v14, v0, Lghe;->H:Lhrb;

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iput-object v5, v0, Lghe;->j:Lnam;

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_12
    iput-object v5, v0, Lghe;->v:Landroid/hardware/display/DisplayManager;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_13
    iput-object v5, v0, Lghe;->m:Lcom/google/android/apps/camera/ui/wirers/PreviewOverlay;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_14
    move-object/from16 v10, p23

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

    :goto_15
    iput-object v9, v0, Lghe;->i:Lhsc;

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_16
    new-instance v14, Lghc;

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

    :goto_17
    invoke-virtual {v3, v5}, Lpic;->D(I)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_18
    invoke-virtual/range {p11 .. p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iput-object v3, v0, Lghe;->y:Ljava/util/function/Consumer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    move-object/from16 v5, p8

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_1c
    const v5, 0x7f0b0376

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iput v3, v0, Lghe;->l:I

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_1e
    move-object/from16 v3, p4

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_1f
    const v5, 0x7f0b00da

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_20
    new-instance v1, Lnfi;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_21
    iput-object v3, v0, Lghe;->g:Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iput-object v6, v0, Lghe;->w:Landroid/view/WindowManager;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v3, v5}, Lpic;->D(I)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v0, v11}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    goto/32 :goto_9f

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v5, v3, v7}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    :goto_26
    new-instance v5, Lhst;

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    :goto_27
    const v3, 0x7f0b0057

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_28
    iput-object v14, v0, Lghe;->c:Lndu;

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    :goto_29
    move-object/from16 v4, p6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_2a
    invoke-virtual {v3, v7}, Lows;->d(Lpci;)V

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    check-cast v5, Lcom/google/android/apps/camera/debugui/DebugCanvasView;

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_2c
    iput-object v13, v0, Lghe;->L:Lmup;

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    :goto_2d
    iput v11, v0, Lghe;->T:I

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const v7, 0x7f0b01b1

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_2f
    iput-object v5, v0, Lghe;->G:Lcom/google/android/apps/camera/ui/views/CaptureAnimationOverlay;

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

    nop

    :goto_30
    move-object/from16 v12, p17

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_31
    iput-object v14, v0, Lghe;->R:Lmji;

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iput-object v12, v0, Lghe;->M:Ltxm;

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_33
    iput-object v3, v0, Lghe;->k:Landroid/hardware/display/DisplayManager$DisplayListener;

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_34
    new-instance v5, Liof;

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_35
    const v7, 0x7f0b0221

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_36
    check-cast v0, Landroid/widget/FrameLayout;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v3, v7}, Lpic;->D(I)Ljava/lang/Object;

    move-result-object v3

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

    :goto_38
    iput-object v14, v0, Lghe;->E:Lglm;

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_39
    const/4 v11, 0x1

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    const/4 v7, 0x0

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_3b
    move-object/from16 v14, p20

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    :goto_3c
    move-object/from16 v7, p10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    :goto_3d
    check-cast v5, Lcom/google/android/apps/camera/ui/wirers/PreviewOverlay;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    check-cast v0, Landroid/widget/FrameLayout;

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {v3, v7}, Lpic;->D(I)Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_40
    new-instance v12, Lsuu;

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {v3, v7}, Lows;->d(Lpci;)V

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    :goto_42
    new-instance v3, Lkeb;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_43
    const v5, 0x7f0b040f

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

    :goto_44
    check-cast v3, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_45
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-virtual {v9, v5}, Lhsc;->a(Lcom/google/android/apps/camera/debugui/DebugCanvasView;)V

    goto/32 :goto_76

    nop

    nop

    :goto_47
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_48
    iput-object v5, v0, Lghe;->C:Liof;

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_49
    const v1, 0xc

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {v3, v5}, Lpic;->D(I)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    check-cast v13, Landroidx/constraintlayout/widget/ConstraintLayout;

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

    nop

    :goto_4c
    iput-object v12, v0, Lghe;->O:Lsuu;

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_4d
    iput-object v14, v0, Lghe;->F:Ljdc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_4e
    move-object/from16 v14, p24

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_4f
    iput-object v1, v0, Lghe;->J:Lnfh;

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    :goto_50
    iput-object v12, v0, Lghe;->A:Ljhy;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_51
    goto/32 :goto_86

    nop

    nop

    :goto_52
    move-object/from16 v14, p26

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_53
    new-instance v3, Lnfi;

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    :goto_54
    const v0, 0x9

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_55
    iput-object v3, v0, Lghe;->d:Lcom/google/android/apps/camera/ui/views/ViewfinderCover;

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

    :goto_56
    move-object/from16 v9, p22

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_57
    invoke-direct {v5, v3, v10}, Liof;-><init>(Landroid/view/ViewStub;Lhoh;)V

    goto/32 :goto_48

    nop

    nop

    :goto_58
    invoke-virtual {v3, v5}, Lpic;->D(I)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_59
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_85

    nop

    :goto_5a
    invoke-direct {v3, v4}, Lnfn;-><init>(Lnjb;)V

    goto/32 :goto_6

    nop

    nop

    :goto_5b
    iput-object v11, v0, Lghe;->o:Landroid/view/View$OnLayoutChangeListener;

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_5c
    iput-object v5, v0, Lghe;->B:Lhst;

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    move-object/from16 v3, p21

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_5e
    check-cast v3, Landroid/view/ViewStub;

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

    nop

    :goto_5f
    move-object/from16 v1, p2

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

    :goto_60
    move-object/from16 v14, p18

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_61
    const v5, 0x7f0b01b3

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_62
    move-object/from16 v14, p15

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_63
    new-instance v7, Ljhv;

    nop

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

    :goto_64
    move-object/from16 v14, p14

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    :goto_65
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_66
    invoke-virtual {v3, v5}, Lpic;->D(I)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_67
    check-cast v7, Landroid/view/ViewStub;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_68
    invoke-virtual {v3, v14}, Lpic;->D(I)Ljava/lang/Object;

    move-result-object v3

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    :goto_69
    move-object/from16 v12, p1

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_6a
    invoke-direct {v3, v5}, Lnfi;-><init>(Lnfh;)V

    goto/32 :goto_8

    nop

    nop

    :goto_6b
    check-cast v5, Landroid/widget/FrameLayout;

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

    :goto_6c
    move-object/from16 v12, p7

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    move-object/from16 v7, p5

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    move-object/from16 v14, p27

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

    :goto_6f
    invoke-direct {v12}, Lsuu;-><init>()V

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    add-int v0, v0, v1

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

    :goto_71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_8a

    nop

    nop

    :goto_72
    iput-object v14, v0, Lghe;->N:Lnpc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_73
    move-object/from16 v14, p13

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

    :goto_74
    const v14, 0x7f0b050f

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

    :goto_75
    invoke-direct {v5, v7}, Lhst;-><init>([B)V

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_76
    new-instance v5, Lnam;

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_77
    new-instance v1, Lghd;

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    :goto_78
    invoke-direct {v7, p0, v11}, Ljhv;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_8e

    nop

    nop

    :goto_79
    iput-object v3, v0, Lghe;->q:Lnfh;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_7a
    invoke-virtual/range {p7 .. p7}, Lfwv;->i()Lows;

    move-result-object v3

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    iput-object v14, v0, Lghe;->D:Lmyc;

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

    :goto_7c
    iget-object v13, v3, Lnar;->b:Ljava/lang/Object;

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

    :goto_7d
    invoke-virtual {v3, v5}, Lpic;->D(I)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    :goto_7e
    move-object/from16 v3, p16

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    invoke-direct {v1}, Lghd;-><init>()V

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_80
    iget-object v3, v3, Lnar;->a:Ljava/lang/Object;

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

    :goto_81
    invoke-static {v13}, Lpic;->R(Landroid/view/View;)Lpic;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    :goto_82
    invoke-interface {v7, v14}, Lmsx;->b(Lmsw;)Lpci;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_83
    iget-object v0, v2, Lpzi;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_84
    const v5, 0x7f0b0157

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

    :goto_85
    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    :goto_86
    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    :goto_87
    invoke-virtual/range {p7 .. p7}, Lfwv;->i()Lows;

    move-result-object v3

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_88
    new-instance v5, Lnfm;

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_89
    check-cast v3, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    new-instance v11, Lghb;

    nop

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    iput-object v3, v0, Lghe;->x:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    iput-object v12, v0, Lghe;->S:Lfwv;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_8d
    move-object/from16 v6, p9

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_8e
    invoke-virtual {v8, v7}, Lhzm;->a(Lggn;)Lpci;

    move-result-object v7

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

    :goto_8f
    check-cast v5, Lcom/google/android/apps/camera/ui/views/CaptureAnimationOverlay;

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_90
    iput-object v4, v0, Lghe;->r:Lnjb;

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

    :goto_91
    move-object/from16 v14, p19

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_92
    iput-object v14, v0, Lghe;->h:Lngo;

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_93
    iput-object v14, v0, Lghe;->Q:Lkyf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_94
    move-object/from16 v8, p12

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_95
    iput-object v13, v0, Lghe;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_96
    move-object v0, p0

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

    :goto_97
    iput-object v10, v0, Lghe;->U:Lhoh;

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

    :goto_98
    invoke-static/range {p9 .. p9}, Ljmo;->O(Landroid/view/WindowManager;)I

    move-result v3

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

    :goto_99
    iput-object v7, v0, Lghe;->p:Lmsx;

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    const v5, 0x7f0b02ca

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_9b
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    invoke-direct {v5, v1, v7, v6, p0}, Lnfm;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lncc;Landroid/view/WindowManager;Landroid/view/TextureView$SurfaceTextureListener;)V

    goto/32 :goto_6a

    nop

    nop

    :goto_9e
    invoke-direct {v11}, Lghb;-><init>()V

    goto/32 :goto_5b

    nop

    nop

    :goto_9f
    iget-object v0, v2, Lpzi;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_a0
    iget-object v3, v2, Lpzi;->h:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_a1
    iput-object v1, v0, Lghe;->I:Lnfh;

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop
.end method

.method private final c43d12f4f4da28dd6c943a4effe477b7m(Z)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Lmyc;->d(Z)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lghe;->D:Lmyc;

    nop

    goto/32 :goto_0

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
    iget-object v0, p0, Lghe;->E:Lglm;

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
    invoke-virtual {v0, p1}, Lglm;->l(Z)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Lrss;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lghe;->N:Lnpc;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    iget-object v0, p0, Lghe;->q:Lnfh;

    nop

    nop

    goto/32 :goto_0

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
    invoke-interface {v0, p0}, Lnfh;->c(Lnpc;)Lrss;

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
.end method

.method public final b()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lghe;->q:Lnfh;

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

    :goto_2
    invoke-interface {p0}, Lnfh;->f()V

    goto/32 :goto_1

    nop

    nop
.end method

.method public final c()V
    .locals 1

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/CaptureAnimationOverlay;->d:Landroid/animation/AnimatorSet;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x4

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/views/CaptureAnimationOverlay;->setVisibility(I)V

    goto/32 :goto_6

    nop

    nop

    :goto_3
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/CaptureAnimationOverlay;->d:Landroid/animation/AnimatorSet;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x1

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

    nop

    :goto_7
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Lghe;->G:Lcom/google/android/apps/camera/ui/views/CaptureAnimationOverlay;

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

    :goto_9
    iput v0, p0, Lcom/google/android/apps/camera/ui/views/CaptureAnimationOverlay;->e:I

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

    :goto_a
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_b
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :goto_c
    goto/32 :goto_5

    nop

    nop
.end method

.method public final d()V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Lfwv;->f()Z

    move-result v0

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

    :goto_1
    if-nez v0, :cond_0

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

    :goto_2
    iget-object p0, p0, Lghe;->L:Lmup;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {v0}, Lndu;->b()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lghe;->c:Lndu;

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

    :goto_5
    iget-object v0, p0, Lghe;->S:Lfwv;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Lmty;->c()V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop
.end method

.method public final e()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lghe;->E:Lglm;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, v0}, Lglm;->o(Z)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public final f()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0}, Lglm;->o(Z)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    iget-object p0, p0, Lghe;->E:Lglm;

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
    return-void

    nop

    nop

    nop
.end method

.method public final g()V
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lghe;->E:Lglm;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1
    const v1, 0xe

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    const v0, 0x11

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
    return-void

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_6
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

    :cond_0
    goto/32 :goto_d

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0, v1}, Ljdc;->j(I)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v1, 0x1

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

    :goto_b
    iget-object v0, p0, Lghe;->h:Lngo;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_c
    invoke-interface {v0, v1}, Lngo;->K(Z)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object p0, p0, Lghe;->F:Ljdc;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_10
    invoke-virtual {v0, v1}, Lglm;->m(Z)V

    goto/32 :goto_b

    nop

    nop

    nop
.end method

.method public final h()V
    .locals 1

    goto/32 :goto_a

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    goto :goto_7

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    iget-boolean v0, p0, Lmji;->i:Z

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

    :goto_5
    iget v0, p0, Lmji;->l:I

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_6
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    iput v0, p0, Lmji;->l:I

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_a
    iget-object p0, p0, Lghe;->R:Lmji;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method public final i(ZZLrss;)V
    .locals 12

    goto/32 :goto_12

    nop

    nop

    :goto_0
    if-eqz v8, :cond_0

    nop

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    :cond_0
    goto/32 :goto_d6

    nop

    nop

    :goto_1
    check-cast v8, Lsjt;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget v6, p0, Lmji;->n:I

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

    :goto_3
    if-eqz v9, :cond_1

    nop

    goto/32 :goto_109

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_108

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p3}, Lrss;->h()Z

    move-result v0

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {v1, v6}, Ltir;->e(Ljava/lang/Iterable;Ljava/util/List;)V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-gtz p2, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_115

    nop

    :cond_2
    goto/32 :goto_65

    nop

    nop

    nop

    :goto_7
    iget v10, v9, Lsjt;->b:I

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v7}, Lj$/time/Duration;->toMillis()J

    goto/32 :goto_11c

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v6}, Lj$/time/Duration;->toMillis()J

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    check-cast v6, Lsjt;

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    :goto_b
    iget-object v8, v7, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_3

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_48

    nop

    :goto_d
    iput-wide v4, p0, Lmji;->m:J

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    :goto_e
    invoke-interface {v1}, Lhrb;->e()Ljava/util/List;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    :goto_f
    iput v8, v9, Lskd;->b:I

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_10
    iget-object v8, v0, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_11d

    nop

    nop

    :goto_11
    invoke-static {v7, v6}, Ltir;->e(Ljava/lang/Iterable;Ljava/util/List;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_12
    const v0, 0x13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_13
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

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

    nop

    :goto_14
    iput v0, p0, Lmji;->h:I

    nop

    nop

    nop

    nop

    goto/32 :goto_119

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {v8, v9}, Lj$/time/Duration;->ofNanos(J)Lj$/time/Duration;

    move-result-object v7

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    :goto_16
    iget-object v6, p0, Lmji;->o:Lmjv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_127

    nop

    nop

    nop

    nop

    :goto_17
    if-nez v8, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v7, v0, Ltkb;->b:Ltkg;

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

    nop

    :goto_19
    iget-wide v10, p0, Lmji;->d:J

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object p0, p0, Lghe;->R:Lmji;

    nop

    nop

    goto/32 :goto_121

    nop

    nop

    nop

    :goto_1b
    iget v8, v9, Lskd;->b:I

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_1c
    iput v9, v8, Lsjt;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1d
    iget-object v6, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget v9, v8, Lsjt;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-interface {v7}, Ltkp;->c()Z

    move-result v8

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_20
    iput v6, v8, Lsjt;->h:I

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

    :goto_21
    if-gtz v8, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iput v6, v7, Lsjt;->f:I

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

    nop

    :goto_23
    sub-long/2addr v7, v9

    nop

    nop

    nop

    goto/32 :goto_10b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-nez v4, :cond_6

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    :cond_6
    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    nop

    :goto_25
    if-eqz v6, :cond_7

    nop

    nop

    nop

    goto/32 :goto_120

    nop

    nop

    :cond_7
    goto/32 :goto_11f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget-object v9, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_27
    if-eqz v9, :cond_8

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    sget-object v7, Lj$/time/Duration;->ZERO:Lj$/time/Duration;

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v7}, Ltkg;->m()Ltkb;

    move-result-object v7

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

    :goto_2b
    iget-wide v6, p0, Lmji;->m:J

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object v0, p0, Lmji;->c:Lpdh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f5

    nop

    nop

    nop

    nop

    :goto_2d
    sget-object v8, Lskc;->t:Lskc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    :goto_2e
    return-void

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_30
    if-nez p1, :cond_9

    nop

    nop

    goto/32 :goto_115

    nop

    nop

    :cond_9
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_31
    if-eqz v8, :cond_a

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iget-wide v9, v6, Lsjt;->c:J

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_33
    check-cast v7, Lsjt;

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    :goto_34
    if-eqz p1, :cond_b

    nop

    goto/32 :goto_fb

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_35
    iget-object v6, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    :goto_36
    iput v8, v9, Lsjt;->e:I

    nop

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v6, v7}, Lmjv;->J(Ltkb;)V

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iget v6, p0, Lmji;->l:I

    nop

    nop

    goto/32 :goto_fc

    nop

    nop

    nop

    :goto_39
    check-cast v8, Lskd;

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    check-cast v9, Lsjt;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_117

    nop

    nop

    nop

    :goto_3b
    iput-wide v6, v8, Lsjt;->m:J

    nop

    nop

    :goto_3c
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    iget-object v6, v6, Lsjt;->k:Ltkp;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    iget-boolean v4, v0, Lmjv;->k:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_3f
    iget-object v8, v6, Lmjv;->n:Lsob;

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_40
    check-cast v7, Lsjt;

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_41
    iget v8, v7, Lsjt;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_49

    nop

    :goto_43
    iput v7, v6, Lsjt;->b:I

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    nop

    :goto_44
    const v1, 0x1e

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    :goto_45
    if-nez v0, :cond_c

    nop

    goto/32 :goto_115

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_46
    iget v8, v0, Lsjt;->f:I

    nop

    goto/32 :goto_a0

    nop

    nop

    :goto_47
    iget-boolean p2, p0, Lmji;->i:Z

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_48
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4a
    check-cast v9, Lskd;

    nop

    nop

    nop

    goto/32 :goto_105

    nop

    nop

    nop

    nop

    :goto_4b
    iget-object v8, v7, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_4c
    iput p3, v7, Lsjt;->j:I

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_4d
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

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

    :goto_4e
    invoke-virtual {v6}, Ltkg;->C()Z

    move-result v6

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_4f
    if-eqz v8, :cond_d

    nop

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_51
    goto/32 :goto_e2

    nop

    nop

    :goto_52
    iget-object v6, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_11a

    nop

    nop

    nop

    nop

    nop

    :goto_53
    or-int/lit8 v9, v9, 0x40

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    :goto_54
    or-int/2addr v9, v10

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

    :goto_55
    iput-object v0, p0, Lmji;->c:Lpdh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    :goto_56
    iput-wide v2, p0, Lmji;->j:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    :goto_57
    iput v6, v8, Lsjt;->g:I

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_58
    or-int/lit8 v9, v9, 0x10

    nop

    nop

    goto/32 :goto_111

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    invoke-virtual {v9}, Ltkg;->C()Z

    move-result v9

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    iget-object v7, p0, Lmji;->k:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_5b
    iput-object v8, v6, Lsjt;->k:Ltkp;

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    goto/32 :goto_3d

    nop

    nop

    :goto_5d
    invoke-virtual {v7}, Ltkg;->C()Z

    move-result v7

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    :goto_5e
    iget-object v7, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    iput-wide v8, p0, Lmji;->d:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    :goto_60
    iput v9, v8, Lskd;->b:I

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_61
    iget-wide v6, p0, Lmji;->j:J

    nop

    nop

    nop

    goto/32 :goto_11b

    nop

    nop

    :goto_62
    iget-object v7, v0, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_63
    check-cast v8, Lsjt;

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    iput-boolean p1, p0, Lmji;->i:Z

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    iget-object p2, p0, Lmji;->p:Lgvg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_114

    nop

    nop

    nop

    nop

    :goto_66
    iget-object v6, v6, Lsjt;->l:Ltkp;

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

    :goto_67
    or-int/lit8 v7, v7, 0x2

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_68
    if-eqz v7, :cond_e

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    :cond_e
    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_6a
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_6b
    iget-object v8, v6, Lsjt;->k:Ltkp;

    nop

    nop

    goto/32 :goto_124

    nop

    nop

    :goto_6c
    or-int/lit8 v8, v8, 0x1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_6d
    iput-wide v8, p0, Lmji;->e:J

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    :goto_6e
    iget-object v9, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_6f
    invoke-virtual {v7}, Ltkg;->C()Z

    move-result v7

    nop

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

    :goto_70
    iget v9, v8, Lskd;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    :goto_71
    invoke-virtual {v7}, Ltkb;->o()V

    :goto_72
    goto/32 :goto_bc

    nop

    nop

    nop

    :goto_73
    or-int/lit16 v8, v8, 0x80

    nop

    nop

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    iget-object p2, p0, Lmji;->a:Lpdf;

    nop

    nop

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    :goto_75
    iget-wide v8, p0, Lmji;->b:J

    nop

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    :goto_76
    iget-object v6, v0, Ltkb;->b:Ltkg;

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

    :goto_77
    invoke-virtual {v0}, Ltkg;->m()Ltkb;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_78
    goto/16 :goto_115

    nop

    nop

    nop

    nop

    :goto_79
    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    iput p3, p0, Lmji;->n:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_7b
    invoke-virtual {v6}, Ltkg;->C()Z

    move-result v6

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    :goto_7c
    if-nez p2, :cond_f

    nop

    nop

    nop

    nop

    goto/32 :goto_fb

    nop

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_34

    nop

    nop

    :goto_7d
    iget-wide v7, v6, Lsjt;->d:J

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    iget v8, v7, Lsjt;->b:I

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    if-eqz v6, :cond_10

    nop

    nop

    nop

    goto/32 :goto_f9

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_f8

    nop

    nop

    nop

    nop

    nop

    :goto_80
    iget p2, p0, Lmji;->l:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_81
    or-int/lit16 v9, v9, 0x100

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_82
    iget-wide v8, p0, Lmji;->e:J

    nop

    nop

    nop

    nop

    goto/32 :goto_11e

    nop

    nop

    nop

    :goto_83
    iput v6, v8, Lsjt;->i:I

    nop

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    :goto_84
    or-int/lit8 v9, v9, 0x20

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_85
    iget v7, v6, Lsjt;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_86
    move-object v8, v7

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_87
    sget-object v0, Lpdh;->a:Lpdh;

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_88
    invoke-static {v8}, Ltkg;->u(Ltkp;)Ltkp;

    move-result-object v8

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_89
    invoke-static {v7}, Ltkg;->u(Ltkp;)Ltkp;

    move-result-object v7

    nop

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    :goto_8a
    iget-object p3, p3, Lqpa;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_fe

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    iget v8, v0, Lsjt;->i:I

    nop

    nop

    nop

    goto/32 :goto_118

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    invoke-virtual {v8}, Ltkg;->C()Z

    move-result v8

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    iget-object v7, v0, Ltkb;->b:Ltkg;

    nop

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

    :goto_8e
    if-eqz v7, :cond_11

    nop

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    :cond_11
    goto/32 :goto_f3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    sget-object v0, Lsjt;->a:Lsjt;

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_90
    invoke-virtual {v8}, Ltkg;->C()Z

    move-result v8

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_91
    iget-wide v8, p0, Lmji;->g:J

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    :goto_92
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_93
    iget-wide v8, p0, Lmji;->f:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    :goto_94
    iput-wide v8, p0, Lmji;->g:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    nop

    :goto_95
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_96
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_97
    const-wide/32 v8, 0xf4240

    nop

    nop

    nop

    goto/32 :goto_126

    nop

    nop

    nop

    nop

    :goto_98
    iget v8, v7, Lsjt;->b:I

    nop

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    nop

    nop

    :goto_99
    check-cast v7, Lsjt;

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    :goto_9a
    invoke-virtual {v7}, Lj$/time/Duration;->toMillis()J

    move-result-wide v10

    nop

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    :goto_9b
    iput v9, v8, Lsjt;->b:I

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :goto_9c
    check-cast v8, Lsjt;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    :goto_9d
    const/high16 v10, 0x100000

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    iput v9, v8, Lsjt;->b:I

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_9f
    invoke-virtual {v0}, Ltkb;->i()Ltkg;

    move-result-object v9

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    :goto_a0
    iget v8, v0, Lsjt;->g:I

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    :goto_a1
    iget-wide v6, p0, Lmji;->j:J

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    :goto_a2
    iget-boolean v0, p0, Lmji;->i:Z

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    :goto_a3
    if-eqz v9, :cond_12

    nop

    goto/32 :goto_5c

    nop

    nop

    :cond_12
    goto/32 :goto_88

    nop

    nop

    nop

    nop

    :goto_a4
    iput-wide v2, v0, Lmjv;->l:J

    nop

    nop

    nop

    :goto_a5
    goto/32 :goto_c8

    nop

    nop

    :goto_a6
    iget-object v8, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    :goto_a7
    iput v10, v9, Lsjt;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    iget-object v6, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_116

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    sub-long v6, v2, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    :goto_aa
    add-long/2addr v8, v10

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    if-eqz v7, :cond_13

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    :cond_13
    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    invoke-virtual {v8}, Ltkg;->C()Z

    move-result v8

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ad
    invoke-virtual {v9}, Ltkg;->C()Z

    move-result v9

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    iget-object v9, v7, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    :goto_af
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_b0
    goto/32 :goto_e8

    nop

    nop

    nop

    nop

    :goto_b1
    invoke-virtual {v6}, Lj$/time/Duration;->toMillis()J

    move-result-wide v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_b2
    if-gtz p2, :cond_14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    iget v8, v9, Lsjt;->b:I

    nop

    goto/32 :goto_10c

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    cmp-long v8, v6, v4

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_b5
    check-cast v9, Lsjt;

    nop

    nop

    nop

    goto/32 :goto_104

    nop

    nop

    nop

    :goto_b6
    iget-object v1, p0, Lghe;->H:Lhrb;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_b7
    iput-object v1, p0, Lmji;->k:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    iget-object p2, p0, Lmji;->p:Lgvg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    :goto_b9
    iget-object v7, v6, Lsjt;->l:Ltkp;

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

    :goto_ba
    if-eqz v0, :cond_15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_115

    nop

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_bb
    check-cast v8, Lsjt;

    nop

    nop

    nop

    goto/32 :goto_fd

    nop

    nop

    nop

    nop

    :goto_bc
    iget-object v9, v7, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_bd
    check-cast v6, Lsjt;

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_be
    const-wide/16 v4, 0x0

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    :goto_bf
    iget-object v6, p0, Lmji;->k:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    :goto_c0
    goto/16 :goto_dc

    nop

    nop

    nop

    nop

    nop

    :goto_c1
    goto/32 :goto_db

    nop

    nop

    nop

    :goto_c2
    invoke-static {}, Lgvg;->o()V

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_c3
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_c4
    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c5
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_c6
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c7
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    nop

    :goto_c8
    iput-boolean p1, v0, Lmjv;->k:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    :goto_c9
    if-eqz v8, :cond_16

    nop

    nop

    goto/32 :goto_107

    nop

    nop

    nop

    nop

    nop

    :cond_16
    goto/32 :goto_106

    nop

    nop

    nop

    :goto_ca
    or-int/lit8 v10, v10, 0x1

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    :goto_cb
    if-eqz v6, :cond_17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    :cond_17
    goto/32 :goto_50

    nop

    nop

    nop

    :goto_cc
    and-int/lit16 v8, v8, 0x100

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_cd
    iput-object v7, v6, Lsjt;->l:Ltkp;

    nop

    nop

    nop

    :goto_ce
    goto/32 :goto_66

    nop

    nop

    nop

    :goto_cf
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_d0
    iget-wide v8, v7, Lsjt;->d:J

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    :goto_d1
    cmp-long p2, v6, v8

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d2
    iput-wide v2, v6, Lsjt;->d:J

    nop

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    :goto_d3
    move-object v7, v6

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    :goto_d4
    iput v8, v7, Lsjt;->b:I

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_d5
    invoke-virtual {p3}, Lrss;->c()Ljava/lang/Object;

    move-result-object p3

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    :goto_d6
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_d7
    goto/32 :goto_102

    nop

    nop

    nop

    nop

    nop

    :goto_d8
    check-cast p3, Lqpa;

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d9
    invoke-virtual {v7}, Ltkg;->C()Z

    move-result v6

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_da
    iget-wide v10, v7, Lsjt;->m:J

    nop

    nop

    nop

    goto/32 :goto_f0

    nop

    nop

    :goto_db
    const/4 p3, -0x1

    nop

    nop

    nop

    nop

    :goto_dc
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_dd
    iget v9, v8, Lsjt;->b:I

    nop

    goto/32 :goto_81

    nop

    nop

    :goto_de
    or-int/lit8 v8, v8, 0x8

    nop

    nop

    goto/32 :goto_110

    nop

    nop

    nop

    :goto_df
    iget v9, v8, Lsjt;->b:I

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_e0
    if-eqz v6, :cond_18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    :cond_18
    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    nop

    :goto_e1
    if-eqz p1, :cond_19

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    :cond_19
    goto/32 :goto_a4

    nop

    nop

    nop

    :goto_e2
    iget-object v6, v0, Ltkb;->b:Ltkg;

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

    :goto_e3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    nop

    goto/32 :goto_112

    nop

    nop

    nop

    nop

    :goto_e4
    const-string p3, "BlockedShot"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_123

    nop

    nop

    nop

    :goto_e5
    invoke-virtual {v7}, Ltkg;->C()Z

    move-result v7

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e6
    iput-object v9, v8, Lskd;->v:Lsjt;

    nop

    goto/32 :goto_70

    nop

    nop

    :goto_e7
    if-nez v0, :cond_1a

    nop

    goto/32 :goto_c1

    nop

    :cond_1a
    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    nop

    :goto_e8
    iget-object v7, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_101

    nop

    nop

    nop

    nop

    nop

    :goto_e9
    goto/16 :goto_29

    nop

    nop

    nop

    :goto_ea
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_eb
    check-cast p3, Ljava/lang/Integer;

    nop

    goto/32 :goto_122

    nop

    nop

    :goto_ec
    invoke-virtual {v7}, Lj$/time/Duration;->toMillis()J

    move-result-wide v6

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    :goto_ed
    iget-object v8, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    :goto_ee
    iput-wide v6, p0, Lmji;->f:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_100

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ef
    if-eqz v7, :cond_1b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :cond_1b
    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_f0
    sub-long/2addr v8, v10

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

    :goto_f1
    invoke-virtual {v8}, Ltkg;->C()Z

    move-result v6

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    nop

    :goto_f2
    iput-wide v6, v9, Lsjt;->c:J

    nop

    nop

    nop

    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    :goto_f3
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_f4
    goto/32 :goto_ff

    nop

    nop

    nop

    :goto_f5
    invoke-interface {v0}, Lpdh;->a()V

    goto/32 :goto_87

    nop

    nop

    nop

    :goto_f6
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ee

    nop

    nop

    :goto_f7
    iget-wide v6, p0, Lmji;->j:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    nop

    nop

    :goto_f8
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_f9
    goto/32 :goto_a8

    nop

    nop

    :goto_fa
    iput-object p2, p0, Lmji;->c:Lpdh;

    nop

    nop

    nop

    :goto_fb
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_fc
    invoke-virtual {v7}, Ltkg;->C()Z

    move-result v7

    nop

    goto/32 :goto_ef

    nop

    nop

    :goto_fd
    iget v9, v8, Lsjt;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_fe
    invoke-interface {p3}, Loyd;->cM()Ljava/lang/Object;

    move-result-object p3

    nop

    goto/32 :goto_eb

    nop

    nop

    :goto_ff
    iget-object v7, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_10f

    nop

    nop

    :goto_100
    iget v0, p0, Lmji;->h:I

    nop

    nop

    nop

    goto/32 :goto_103

    nop

    nop

    nop

    nop

    nop

    :goto_101
    move-object v8, v7

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_102
    iget-object v8, v0, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    :goto_103
    add-int/lit8 v0, v0, 0x1

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

    :goto_104
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    nop

    :goto_105
    iget v8, v8, Lskc;->aG:I

    nop

    nop

    nop

    nop

    goto/32 :goto_10d

    nop

    nop

    nop

    :goto_106
    invoke-virtual {v7}, Ltkb;->o()V

    :goto_107
    goto/32 :goto_4b

    nop

    nop

    :goto_108
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_109
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_10a
    check-cast v9, Lsjt;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_10b
    invoke-static {v7, v8}, Lj$/time/Duration;->ofNanos(J)Lj$/time/Duration;

    move-result-object v6

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    :goto_10c
    or-int/lit8 v8, v8, 0x4

    nop

    nop

    nop

    goto/32 :goto_125

    nop

    nop

    nop

    nop

    :goto_10d
    iput v8, v9, Lskd;->f:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_10e
    check-cast v0, Lsjt;

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_10f
    move-object v8, v7

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_110
    iput v8, v7, Lsjt;->b:I

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_111
    iput v9, v8, Lsjt;->b:I

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_112
    iget-object v7, v0, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    :goto_113
    add-long/2addr v8, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    :goto_114
    invoke-static {}, Lgvg;->o()V

    :goto_115
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_116
    check-cast v6, Lsjt;

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_117
    iget v8, v8, Lsob;->T:I

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_118
    iget v0, v0, Lsjt;->j:I

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    :goto_119
    if-nez p2, :cond_1c

    nop

    nop

    nop

    goto/32 :goto_115

    nop

    nop

    nop

    nop

    :cond_1c
    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    :goto_11a
    check-cast v6, Lsjt;

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_11b
    cmp-long v0, v6, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_11c
    iget-object v0, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_10e

    nop

    nop

    nop

    :goto_11d
    move-object v9, v8

    nop

    nop

    nop

    goto/32 :goto_10a

    nop

    nop

    nop

    nop

    nop

    :goto_11e
    invoke-virtual {v6}, Lj$/time/Duration;->toMillis()J

    move-result-wide v10

    nop

    nop

    nop

    goto/32 :goto_113

    nop

    nop

    nop

    nop

    nop

    :goto_11f
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_120
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_121
    iget-object v0, p0, Lmji;->o:Lmjv;

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    :goto_122
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    :goto_123
    invoke-interface {p2, p3}, Lpdf;->a(Ljava/lang/String;)Lpdh;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    nop

    nop

    nop

    :goto_124
    invoke-interface {v8}, Ltkp;->c()Z

    move-result v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    :goto_125
    iput v8, v9, Lsjt;->b:I

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

    :goto_126
    div-long/2addr v6, v8

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_127
    sget-object v7, Lskd;->a:Lskd;

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop
.end method

.method public final j()V
    .locals 2

    goto/32 :goto_7

    nop

    nop

    :goto_0
    iput-wide v0, p0, Lmji;->m:J

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

    :goto_1
    const v1, 0xb

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_5

    nop

    :goto_3
    goto/32 :goto_c

    nop

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

    :goto_5
    goto/32 :goto_6

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

    :goto_7
    const v0, 0x1c

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_b
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

    :goto_c
    iget-object p0, p0, Lghe;->R:Lmji;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop
.end method

.method public final k()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lghe;->d:Lcom/google/android/apps/camera/ui/views/ViewfinderCover;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0, p0}, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->f(Lnne;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    iget-object p0, p0, Ljhy;->o:Lnne;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    iget-object p0, p0, Lghe;->A:Ljhy;

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
.end method

.method public final l(Z)V
    .locals 0

    goto/32 :goto_2

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

    :goto_1
    invoke-interface {p0, p1}, Lngo;->M(Z)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lghe;->h:Lngo;

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
.end method

.method public final m()V
    .locals 5

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_1
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

    :goto_2
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget v0, p0, Lghe;->T:I

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v0, Ljava/lang/IllegalStateException;

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

    nop

    :goto_5
    const v1, 0x12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_6
    iget-object v0, p0, Lghe;->q:Lnfh;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

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

    :goto_8
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_c
    throw v0

    nop

    nop

    nop

    nop

    nop

    :catch_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0xf

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

    :goto_e
    invoke-interface {v0}, Lnfh;->e()Lsui;

    move-result-object v0

    nop

    nop

    nop

    nop

    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    const-wide/16 v3, 0x7d0

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, v3, v4, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1

    goto/32 :goto_15

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

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const-string v0, "Synchronization close failed on preview switch."

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

    :goto_11
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_13
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iput v1, p0, Lghe;->T:I

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const-string v1, "Surface Destruction Synchronization on Module Switch Timed out."

    nop

    nop

    goto/32 :goto_18

    nop

    nop

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

    goto/32 :goto_12

    nop

    :cond_1
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_18
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    return-void

    nop

    nop

    nop

    nop

    :catch_1
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method public final n()V
    .locals 4

    goto/32 :goto_6

    nop

    nop

    :goto_0
    goto/32 :goto_d

    nop

    nop

    :goto_1
    new-instance v2, Lnju;

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

    :goto_2
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lghe;->G:Lcom/google/android/apps/camera/ui/views/CaptureAnimationOverlay;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_5
    const-wide/16 v2, 0x42

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x1e

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v0, 0x2

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

    :goto_8
    iget-object v2, p0, Lcom/google/android/apps/camera/ui/views/CaptureAnimationOverlay;->c:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

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
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

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

    nop

    :goto_a
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_b
    iget-object v2, p0, Lcom/google/android/apps/camera/ui/views/CaptureAnimationOverlay;->c:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

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

    :goto_c
    goto/32 :goto_12

    nop

    nop

    :goto_d
    goto/32 :goto_7

    nop

    nop

    :goto_e
    iget-object v2, p0, Lcom/google/android/apps/camera/ui/views/CaptureAnimationOverlay;->b:Landroid/view/animation/Interpolator;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    nop

    :array_0
    .array-data 4
        0x3f428f5c    # 0.76f
        0x3f428f5c    # 0.76f
    .end array-data

    :array_1
    .array-data 4
        0x3f428f5c    # 0.76f
        0x0
    .end array-data

    :goto_12
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto/32 :goto_8

    nop

    nop

    :goto_14
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_15
    new-array v1, v0, [F

    nop

    nop

    nop

    nop

    nop

    fill-array-data v1, :array_0

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_17
    new-array v0, v0, [F

    nop

    nop

    fill-array-data v0, :array_1

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_18
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_19
    invoke-direct {v2, p0}, Lnjv;-><init>(Lcom/google/android/apps/camera/ui/views/CaptureAnimationOverlay;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_1b
    new-instance v2, Lnjv;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v2, p0, Lcom/google/android/apps/camera/ui/views/CaptureAnimationOverlay;->b:Landroid/view/animation/Interpolator;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-direct {v2, p0, v0}, Lnju;-><init>(Lcom/google/android/apps/camera/ui/views/CaptureAnimationOverlay;Landroid/animation/ValueAnimator;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/32 :goto_1b

    nop

    nop

    :goto_1f
    const v1, 0x1f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_20
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const-wide/16 v2, 0xa6

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop
.end method

.method public final o()V
    .locals 2

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v1, 0x1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, v0}, Lghe;->c43d12f4f4da28dd6c943a4effe477b7m(Z)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_5
    const v1, 0x1d

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

    :goto_6
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Lghe;->G:Lcom/google/android/apps/camera/ui/views/CaptureAnimationOverlay;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/ui/views/CaptureAnimationOverlay;->a(Z)V

    goto/32 :goto_6

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x9

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_c
    goto/32 :goto_3

    nop

    :goto_d
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_0
    goto/32 :goto_c

    nop
.end method

.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iput-object p1, p0, Lghe;->s:Landroid/graphics/SurfaceTexture;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    iget-object p0, p0, Lghe;->n:Lnfk;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    iput p2, p0, Lghe;->t:I

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
    iput p3, p0, Lghe;->u:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_5
    if-nez p0, :cond_0

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

    :goto_6
    invoke-interface {p0, p1, p2, p3}, Lnfk;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    iput-object v0, p0, Lghe;->s:Landroid/graphics/SurfaceTexture;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x0

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

    :goto_2
    if-nez p0, :cond_0

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return p0

    nop

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    :goto_5
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_6
    return p0

    nop

    nop

    nop

    nop

    :goto_7
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

    :goto_8
    invoke-interface {p0, p1}, Lnfk;->onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p0, p0, Lghe;->n:Lnfk;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p2, p0, Lghe;->t:I

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lghe;->n:Lnfk;

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

    :goto_2
    if-nez p0, :cond_0

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

    :goto_3
    invoke-interface {p0, p1, p2, p3}, Lnfk;->onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V

    :goto_4
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput p3, p0, Lghe;->u:I

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

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p1, p0, Lghe;->s:Landroid/graphics/SurfaceTexture;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    iput-object p1, p0, Lghe;->s:Landroid/graphics/SurfaceTexture;

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
.end method

.method public final p()V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x17

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, v0}, Lghe;->c43d12f4f4da28dd6c943a4effe477b7m(Z)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_d

    nop

    :goto_4
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_6
    iget-object v0, p0, Lghe;->G:Lcom/google/android/apps/camera/ui/views/CaptureAnimationOverlay;

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

    :goto_7
    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/ui/views/CaptureAnimationOverlay;->a(Z)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8
    const/4 v1, 0x0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

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

    nop

    :goto_c
    goto/32 :goto_a

    nop

    nop

    :goto_d
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0xf

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
.end method

.method public final q()Z
    .locals 1

    goto/32 :goto_c

    nop

    nop

    nop

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

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3
    if-nez v0, :cond_0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Ljhy;->k:Lggo;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lghe;->Q:Lkyf;

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

    :goto_6
    invoke-virtual {p0}, Lggo;->o()Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0, v0}, Lkyf;->D(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v0, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_9
    iget-object p0, p0, Lghe;->A:Ljhy;

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
    return p0

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0}, Lkyf;->B()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Lghe;->Q:Lkyf;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop
.end method

.method public final r()V
    .locals 7

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const v0, 0xc

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

    :goto_1
    iget-object v2, p0, Lghe;->A:Ljhy;

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_2
    iget-object v1, p0, Lghe;->P:Llus;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_4
    sget-object v2, Lhmd;->c:Lhmn;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object v2, v1, Lmki;->a:Lpdh;

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v1, p0, Lghe;->x:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

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

    :goto_7
    iget-object v2, v1, Lmki;->a:Lpdh;

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

    :goto_8
    invoke-virtual {v1, v2}, Lhoh;->p(Lhmn;)Z

    move-result v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v1, v2}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :goto_a
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_b
    invoke-direct {v1}, Lsuu;-><init>()V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v1

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_e
    if-nez v1, :cond_0

    nop

    goto/32 :goto_34

    nop

    nop

    nop

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

    :goto_f
    return-void

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v1, p0, Lghe;->d:Lcom/google/android/apps/camera/ui/views/ViewfinderCover;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_12
    if-lez v0, :cond_1

    nop

    goto/32 :goto_15

    nop

    :cond_1
    goto/32 :goto_14

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_10

    nop

    :goto_15
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v1, v2}, Lmkp;->h(Ljava/lang/Enum;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v3, v1, Llus;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_18
    iget-object v1, p0, Lghe;->M:Ltxm;

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_19
    sget-object v2, Lmkh;->a:Lmkh;

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

    :goto_1a
    invoke-interface {v2}, Lpdh;->a()V

    goto/32 :goto_1d

    nop

    nop

    :goto_1b
    invoke-virtual {v1, v2}, Lmkp;->k(Ljava/lang/Enum;)Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_1c
    invoke-virtual {v1}, Ljia;->b()Lmki;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1d
    sget-object v2, Lpdh;->a:Lpdh;

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

    :goto_1e
    invoke-virtual {v1, v2}, Lsuu;->e(Ljava/lang/Object;)Z

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-eqz v2, :cond_2

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :cond_2
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iput-boolean v0, p0, Lghe;->z:Z

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

    :goto_21
    new-instance v2, Lgha;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_22
    invoke-direct {v2, p0, v0}, Lgha;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v1}, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->j()V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_24
    iput-object v1, p0, Lghe;->O:Lsuu;

    nop

    :goto_25
    goto/32 :goto_6

    nop

    nop

    :goto_26
    invoke-virtual {v1, v2}, Lmkp;->k(Ljava/lang/Enum;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_27
    if-eqz v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_3
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_28
    new-instance v1, Lsuu;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_29
    iget-object v1, p0, Lghe;->O:Lsuu;

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_2a
    iget-object v1, p0, Lghe;->U:Lhoh;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2b
    const-class v2, Ljava/lang/Object;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    check-cast v1, Ljia;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_2d
    monitor-enter v3

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v4, v1, Llus;->h:Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;

    nop

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_6

    nop

    iget-object v4, v1, Llus;->g:Lcom/google/android/apps/camera/ui/views/CutoutBar;

    nop

    nop

    nop

    if-nez v4, :cond_4

    nop

    goto/16 :goto_2f

    nop

    nop

    :cond_4
    iget-boolean v4, v1, Llus;->a:Z

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_5

    nop

    nop

    iget-object v4, v1, Llus;->f:Loyd;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v4}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    check-cast v4, Lhdc;

    nop

    invoke-virtual {v4}, Lhdc;->c()Z

    move-result v4

    nop

    nop

    if-eqz v4, :cond_5

    nop

    nop

    nop

    iget-object v4, v1, Llus;->k:Lluy;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Lluy;->b()Z

    move-result v4

    nop

    nop

    nop

    nop

    if-nez v4, :cond_5

    nop

    nop

    iget-object v4, v1, Llus;->g:Lcom/google/android/apps/camera/ui/views/CutoutBar;

    nop

    nop

    nop

    invoke-static {v4}, Lnnr;->j(Landroid/view/View;)Z

    move-result v4

    nop

    nop

    nop

    if-eqz v4, :cond_5

    nop

    nop

    nop

    iget-object v4, v1, Llus;->b:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    nop

    iget-object v5, v1, Llus;->i:Ljava/lang/Runnable;

    nop

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    new-instance v4, Llcc;

    nop

    nop

    nop

    nop

    const/16 v5, 0x10

    nop

    nop

    nop

    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    invoke-direct {v4, v1, v2, v5, v6}, Llcc;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    iput-object v4, v1, Llus;->i:Ljava/lang/Runnable;

    nop

    nop

    iget-object v2, v1, Llus;->b:Landroid/os/Handler;

    nop

    nop

    nop

    iget-object v4, v1, Llus;->i:Ljava/lang/Runnable;

    nop

    nop

    const-wide/16 v5, 0x1f4

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2e

    nop

    :cond_5
    iget-object v2, v1, Llus;->h:Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;

    nop

    nop

    const/4 v4, 0x4

    nop

    nop

    nop

    invoke-virtual {v2, v4}, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->setVisibility(I)V

    :goto_2e
    iput-boolean v0, v1, Llus;->a:Z

    nop

    nop

    nop

    nop

    nop

    monitor-exit v3

    nop

    nop

    nop

    nop

    goto :goto_34

    nop

    nop

    nop

    nop

    :cond_6
    :goto_2f
    monitor-exit v3

    nop

    goto :goto_34

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    monitor-exit v3

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_30
    const v1, 0x11

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    sget-object v2, Lmkd;->q:Lmkd;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_32
    goto/32 :goto_15

    nop

    :goto_33
    throw p0

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    sget-object v2, Lmkh;->a:Lmkh;

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

    nop

    :goto_36
    iget-object v2, v2, Ljhy;->o:Lnne;

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop
.end method

.method public final s()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-virtual {p0, v0}, Lglm;->l(Z)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x1

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    iget-object p0, p0, Lghe;->E:Lglm;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public final t(ILnfk;)V
    .locals 4

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object v0, p2, Lcom/google/android/apps/camera/ui/wirers/PreviewOverlay;->a:Landroid/view/GestureDetector;

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

    goto/32 :goto_28

    nop

    nop

    :cond_0
    goto/32 :goto_27

    nop

    nop

    :goto_3
    invoke-interface {p1}, Lnfk;->b()Landroid/view/View$OnTouchListener;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_4
    iput-object p1, p0, Lcom/google/android/apps/camera/ui/wirers/PreviewOverlay;->b:Landroid/view/View$OnTouchListener;

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {p2}, Lnfh;->d()Lsui;

    :goto_7
    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_8
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_9
    goto :goto_7

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v1, p0, Lghe;->q:Lnfh;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_d
    move-object p2, v1

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_32

    nop

    nop

    :goto_f
    add-int/lit8 v2, p1, -0x1

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_10
    if-nez p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_1
    goto/32 :goto_41

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1b

    nop

    nop

    :goto_12
    if-eq v1, p2, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_2
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_13
    const v0, 0x1e

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_14
    invoke-direct {v0, v1, p1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v0, p0, Lghe;->q:Lnfh;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_16
    new-instance v0, Landroid/view/GestureDetector;

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_17
    if-ne v2, v3, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget v1, p0, Lghe;->T:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1a

    nop

    nop

    :goto_1a
    iget-object v0, p0, Lghe;->K:Lnfh;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const/4 v0, 0x1

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_1c
    return-void

    nop

    nop

    :goto_1d
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_1e
    iput-object p2, p0, Lghe;->n:Lnfk;

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_1f
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object p0, p0, Lghe;->m:Lcom/google/android/apps/camera/ui/wirers/PreviewOverlay;

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

    :goto_21
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iput-object v2, p0, Lghe;->n:Lnfk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_23
    iget-object p2, p0, Lghe;->m:Lcom/google/android/apps/camera/ui/wirers/PreviewOverlay;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_f

    nop

    nop

    :goto_25
    if-ne v1, v0, :cond_4

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-interface {v0}, Lnfh;->e()Lsui;

    :goto_28
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_29
    if-lez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_3e

    nop

    :goto_2a
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object p1, p0, Lghe;->n:Lnfk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2c
    if-eq p1, v1, :cond_6

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

    :cond_6
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_2d
    const/4 v3, 0x2

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    if-nez p1, :cond_7

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_7
    goto/32 :goto_23

    nop

    nop

    :goto_2f
    invoke-static {v0}, La;->au(Z)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iput-object p2, p0, Lghe;->n:Lnfk;

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_31
    iget-object v0, p0, Lghe;->J:Lnfh;

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iput-object p2, p0, Lghe;->q:Lnfh;

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_33
    const v1, 0x16

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iput p1, p0, Lghe;->T:I

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

    :goto_35
    iget-object p2, p0, Lghe;->I:Lnfh;

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

    :goto_36
    if-nez p1, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_8
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_37
    move-object p2, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_38
    iget-object v1, p0, Lghe;->K:Lnfh;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iget-object v0, p0, Lghe;->J:Lnfh;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {p2}, Lcom/google/android/apps/camera/ui/wirers/PreviewOverlay;->getContext()Landroid/content/Context;

    move-result-object v1

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

    nop

    :goto_3c
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_3d
    iget-object p1, p0, Lghe;->n:Lnfk;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_1d

    nop

    nop

    :goto_3f
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    iget-object v0, p0, Lghe;->I:Lnfh;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-interface {p1}, Lnfk;->a()Landroid/view/GestureDetector$OnGestureListener;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_42
    goto/16 :goto_e

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_d

    nop

    nop
.end method
