.class public Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;
.super Lhp;
.source "PG"


# static fields
.field private static final A:Lsdb;

.field private static final B:Lryy;

.field private static final C:Landroid/os/VibrationEffect;

.field public static a:Lngc;

.field public static w:I


# instance fields
.field private D:Z

.field private final E:Loyj;

.field private F:Landroid/view/GestureDetector;

.field private G:Lnnq;

.field private final H:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private I:I

.field private J:I

.field private final K:Ljava/lang/Object;

.field private L:Lnhc;

.field private M:Landroid/graphics/Paint;

.field private N:Landroid/graphics/Paint;

.field private O:Landroid/graphics/Paint;

.field private P:Landroid/graphics/Paint;

.field private Q:Landroid/graphics/Paint;

.field private R:Landroid/graphics/Paint;

.field private S:Landroid/graphics/Paint;

.field private T:Landroid/graphics/Paint;

.field private U:Landroid/graphics/Paint;

.field private V:Z

.field private W:Z

.field private aa:Z

.field private ab:Z

.field private ac:Lpci;

.field private ad:Landroid/animation/AnimatorSet;

.field private final ae:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

.field private final af:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

.field private ag:Lpdh;

.field private ah:Lpdh;

.field public b:Z

.field public final c:Loyd;

.field public d:Lngu;

.field public e:Lpdf;

.field public f:Lprb;

.field public final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public i:F

.field public j:Lnhb;

.field public final k:[Z

.field public l:Landroid/graphics/Paint;

.field public m:Landroid/graphics/RectF;

.field public n:Z

.field public o:Z

.field public p:I

.field public q:Lnfz;

.field public r:Lnne;

.field public s:I

.field public t:Z

.field public u:Z

.field public v:Landroid/view/MotionEvent;

.field public x:Lhoh;

.field public y:Lkjj;

.field public z:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;


# direct methods
.method private final 132cd3b981019b59dc42653eea0b34b4m(I)V
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    const/4 p1, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1
    return-void

    nop

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

    :goto_3
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x10

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

    nop

    :goto_7
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0, p1}, Lkjj;->g(Landroid/os/VibrationEffect;)V

    :goto_9
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_a
    if-eqz p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    nop

    :goto_b
    if-eq v0, v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_c
    if-nez p0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_2
    goto/32 :goto_a

    nop

    nop

    :goto_d
    iget-boolean v0, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->ab:Z

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0, p1}, Landroid/view/View;->performHapticFeedback(I)Z

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_f
    const v1, 0x14

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
    if-lez v0, :cond_3

    nop

    goto/32 :goto_4

    nop

    :cond_3
    goto/32 :goto_3

    nop

    :goto_11
    rem-int v0, v0, v1

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

    :goto_12
    sget-object p1, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->C:Landroid/os/VibrationEffect;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_14
    goto/16 :goto_9

    nop

    nop

    :goto_15
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->y:Lkjj;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_17
    if-eqz v0, :cond_4

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

    :cond_4
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_18
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->r:Lnne;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-eqz p1, :cond_5

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_1a
    return-void

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1c
    sget-object v1, Lnne;->s:Lnne;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p0, p1}, Landroid/view/View;->performHapticFeedback(I)Z

    goto/32 :goto_1

    nop

    nop

    :goto_1f
    const/4 p1, 0x6

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop
.end method

.method private final 430f03c2ea70bd28108d593eca0c7c30m()V
    .locals 4

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v1, v0, Lnhc;->x:Llyi;

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

    :goto_1
    goto/32 :goto_e

    nop

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->invalidate()V

    goto/32 :goto_d

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

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_5
    iget-object v1, v0, Lnhc;->w:Lnga;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    iget-boolean v2, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->V:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_7
    iget-object v0, v0, Lnhc;->x:Llyi;

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
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->e()Lnhc;

    move-result-object v0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x1f

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_b
    invoke-virtual {p0, v1}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->g(Z)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->e94656b6137dd01f26085f984afe853em(Lnhc;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

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
    iget-boolean v3, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->W:Z

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_11
    invoke-static {v1, v0, p0, v2, v3}, Lnhc;->d(Lnga;Llyi;Landroid/view/View;ZZ)Lnhc;

    move-result-object v0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_12
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v1, v0, Lnhc;->w:Lnga;

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

    :goto_14
    const v0, 0x7

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

    :goto_15
    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 11

    goto/32 :goto_f

    nop

    nop

    :goto_0
    sget-object v10, Lnga;->W:Lnga;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_13

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_9

    nop

    :goto_4
    const/4 v0, 0x3

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

    :goto_5
    sget-object v10, Lnga;->X:Lnga;

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_6
    sget-object v0, Lnga;->B:Lnga;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_7
    aput-object v0, v7, v9

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_8
    sput-object v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->A:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_9
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_b
    const-string v0, "com.google.android.apps.camera.ui.shutterbutton.ShutterButton"

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

    :goto_c
    new-array v7, v0, [Lnga;

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
    const/4 v0, 0x2

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {}, Landroid/os/VibrationEffect;->startComposition()Landroid/os/VibrationEffect$Composition;

    move-result-object v0

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

    :goto_f
    const v0, 0x2

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

    :goto_10
    const/4 v9, 0x1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composition;->compose()Landroid/os/VibrationEffect;

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

    :goto_12
    sput v9, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->w:I

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_13
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_14
    sget-object v5, Lnga;->E:Lnga;

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_15
    sget-object v3, Lnga;->d:Lnga;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v8, 0x0

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_17
    sput-object v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->C:Landroid/os/VibrationEffect;

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
    aput-object v10, v7, v0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_19
    sput-object v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->B:Lryy;

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

    :goto_1a
    const/4 v0, 0x4

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    sget-object v1, Lnga;->u:Lnga;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    add-int v0, v0, v1

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

    nop

    :goto_1d
    aput-object v0, v7, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1e
    sget-object v2, Lnga;->z:Lnga;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1f
    sget-object v0, Lnga;->O:Lnga;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_20
    invoke-static/range {v1 .. v7}, Lryy;->K(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lryy;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_21
    const v1, 0x3f333333    # 0.7f

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_22
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_23
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v0, v9, v1, v8}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IFI)Landroid/os/VibrationEffect$Composition;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_25
    aput-object v10, v7, v0

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const v1, 0x1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_27
    sget-object v4, Lnga;->a:Lnga;

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_28
    sget-object v6, Lnga;->f:Lnga;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    goto/32 :goto_0

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

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V
    .locals 6

    goto/32 :goto_1c

    nop

    nop

    :goto_0
    new-instance v1, Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    :goto_1
    sget-object v3, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->A:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    iput-boolean p2, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->b:Z

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v3}, Lscs;->c()Lsdo;

    move-result-object v3

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    :goto_5
    iput-object v0, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->k:[Z

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    :goto_6
    iget-object v4, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->M:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    sget-object v0, Lnga;->a:Lnga;

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

    :goto_8
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v1, 0x2

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {v0, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_c
    const v3, 0x7f0b0049

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const-wide/16 v3, 0x0

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {v0, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    :goto_f
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_10
    iput-object v1, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->R:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_b3

    nop

    nop

    nop

    :goto_12
    const/16 v4, 0x1397

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v1, 0x40133333    # 2.3f

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    :goto_14
    invoke-direct {v1, p1, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v5, 0x7f060888

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    :goto_16
    invoke-interface {p1, p0}, Lnfx;->c(Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;)V

    :goto_17
    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iput-object v1, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->l:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_19
    const v5, 0x7f060a8d

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v1, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->M:Landroid/graphics/Paint;

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

    :goto_1b
    check-cast v3, Lscz;

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const v0, 0x19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    :goto_1d
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    new-instance v1, Landroid/graphics/Paint;

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

    :goto_20
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto/32 :goto_1a

    nop

    nop

    :goto_21
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_1f

    nop

    nop

    :goto_23
    iput-boolean p3, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->W:Z

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_24
    new-instance v0, Lngb;

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_25
    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->setLayerType(ILandroid/graphics/Paint;)V

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    :goto_26
    const v3, 0x7f140030

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

    :goto_27
    iput v0, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->i:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_28
    iput-object v1, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->ag:Lpdh;

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_29
    sget-object v1, Lpdh;->a:Lpdh;

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_2a
    const/4 v2, 0x3

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iput-object v0, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->c:Loyd;

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_2c
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_76

    nop

    nop

    :goto_2d
    invoke-interface {v3, v4}, Lscz;->M(I)Lsdo;

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

    :goto_2e
    new-instance v1, Landroid/graphics/Paint;

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
    const v3, 0x7f14003e

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-direct {v0, p0}, Lngb;-><init>(Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;)V

    goto/32 :goto_1e

    nop

    nop

    :goto_31
    new-instance v0, Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {p0, p2}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->k(Z)V

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-static {v0, v1, p0, v2, p3}, Lnhc;->d(Lnga;Llyi;Landroid/view/View;ZZ)Lnhc;

    move-result-object p3

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_35
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :goto_36
    iput-object v0, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->H:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_37
    iget-object v4, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->M:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iput-object v1, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->af:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

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

    :goto_39
    invoke-direct {p0, p3}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->e94656b6137dd01f26085f984afe853em(Lnhc;)V

    goto/32 :goto_b0

    nop

    nop

    :goto_3a
    rem-int v0, v0, v1

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

    :goto_3b
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    const-class p2, Lnfx;

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_3d
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_3f

    nop

    nop

    :goto_3e
    int-to-float v1, v1

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

    nop

    nop

    :goto_3f
    iput-object v1, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->U:Landroid/graphics/Paint;

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

    :goto_40
    iput v1, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->p:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    :goto_41
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->l:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_42
    new-instance v1, Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_43
    const/16 v0, 0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    goto/32 :goto_6b

    nop

    nop

    :goto_45
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_46
    new-instance v1, Lncl;

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_47
    const-string v4, "System has invalid long press threshold value=%d ms"

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    :goto_48
    invoke-interface {p1, p2}, Liyf;->c(Ljava/lang/Class;)Liyg;

    move-result-object p1

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :goto_4a
    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_7

    nop

    nop

    :goto_4c
    invoke-direct {v0, v1}, Loyj;-><init>(Lrtm;)V

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    check-cast p1, Lnfx;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_4e
    const v5, 0x7f06005b

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_7b

    nop

    nop

    :goto_50
    new-instance v1, Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_51
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    :goto_52
    new-instance v1, Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->b()F

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_54
    iput-object v1, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->ah:Lpdh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_55
    cmp-long v3, v1, v3

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    :goto_56
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_57
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_58
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

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
    iput-object v1, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->N:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_5a
    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-direct {p0, p1, p2}, Lhp;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    iput-object v1, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->S:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    :goto_5e
    iput-object v0, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->E:Loyj;

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->l:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_60
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :cond_0
    goto/32 :goto_49

    nop

    :goto_61
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_6d

    nop

    nop

    :goto_62
    invoke-direct {p0, p3}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->c43d12f4f4da28dd6c943a4effe477b7m(Lnga;)V

    goto/32 :goto_33

    nop

    nop

    :goto_63
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    int-to-long v1, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_65
    new-instance v1, Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_66
    iput-object v1, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->ae:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->getResources()Landroid/content/res/Resources;

    move-result-object v4

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

    :goto_68
    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    iput-boolean p2, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->ab:Z

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    :goto_6a
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    iput-object v1, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->Q:Landroid/graphics/Paint;

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

    :goto_6c
    iput-object v0, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->m:Landroid/graphics/RectF;

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

    :goto_6d
    iget-object v1, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->T:Landroid/graphics/Paint;

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
    if-nez p2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_94

    nop

    nop

    nop

    nop

    :goto_6f
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_70
    new-instance v3, Lnfy;

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    :goto_71
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    :goto_72
    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_73
    iget-object p3, p3, Lnhc;->w:Lnga;

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_74
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_a7

    nop

    nop

    :goto_75
    const v3, 0x7f0b0048

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    :goto_76
    iput-object v1, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->T:Landroid/graphics/Paint;

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

    :goto_77
    new-instance v1, Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_78
    iput-boolean p2, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->D:Z

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

    :goto_79
    iget-object v4, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->M:Landroid/graphics/Paint;

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    const/4 v3, -0x1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_7b
    iget-object v1, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->T:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    :goto_7c
    new-instance v0, Loyj;

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    :goto_7d
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->l:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    :goto_7e
    const v5, 0x7f060889

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    :goto_7f
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_80
    return-void

    nop

    :goto_81
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_82
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_83
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_84
    iput-object v0, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->K:Ljava/lang/Object;

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_85
    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

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

    :goto_86
    iput-object v1, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->M:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_87
    const v1, 0x10

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    :goto_88
    invoke-static {v1}, Lnnr;->b(F)I

    move-result v1

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_89
    sget-object v1, Llyi;->f:Llyi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    :goto_8a
    iput-object v0, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_8b
    invoke-virtual {v4, v5, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :goto_8c
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_8d
    const/16 v2, 0xa

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    iput-boolean p2, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->V:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    :goto_8f
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_90
    invoke-virtual {v4, v5, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

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

    :goto_91
    invoke-direct {v0, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    :goto_92
    invoke-direct {v1, v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_93
    new-instance v1, Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    :goto_94
    check-cast p1, Liyf;

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_95
    iget-object v4, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->M:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_96
    new-instance v1, Landroid/view/GestureDetector;

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_97
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_98
    iget-boolean v2, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->V:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_99
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_9a
    new-instance v1, Lhdh;

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    invoke-static {v0}, Loxz;->a(Loyd;)Loyd;

    move-result-object v0

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_9c
    invoke-direct {v3, p0}, Lnfy;-><init>(Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;)V

    goto/32 :goto_14

    nop

    nop

    :goto_9d
    const/4 p2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    :goto_9e
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    if-lez v3, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    :cond_2
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    new-instance v0, Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    iput-object v0, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    invoke-direct {v1, v2}, Lncl;-><init>(I)V

    goto/32 :goto_a3

    nop

    nop

    :goto_a3
    iput-object v1, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->ac:Lpci;

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

    :goto_a4
    invoke-direct {v1, v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    goto/32 :goto_66

    nop

    nop

    :goto_a5
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    :goto_a6
    iput-object v1, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->P:Landroid/graphics/Paint;

    nop

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

    :goto_a7
    const/16 v1, 0xff

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_a8
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    iget-object v1, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->T:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    iput-object v1, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->F:Landroid/view/GestureDetector;

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_ab
    invoke-virtual {v4, v5, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

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

    :goto_ac
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_ad
    instance-of p2, p1, Liyf;

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->a()F

    move-result v0

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_af
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_b0
    invoke-direct {p0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->430f03c2ea70bd28108d593eca0c7c30m()V

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b1
    iput-boolean v0, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->o:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_b2
    iget-object v4, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->M:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    new-instance v1, Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_b5
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_5f

    nop

    nop

    :goto_b6
    invoke-virtual {v4, v5, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    invoke-direct {v1, p0, v2}, Lhdh;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_18

    nop

    nop

    :goto_b9
    iput-boolean p2, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->W:Z

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    new-array v0, v0, [Z

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_bb
    invoke-interface {v3, v4, v1, v2}, Lscz;->u(Ljava/lang/String;J)V

    :goto_bc
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_bd
    iput-object v1, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->O:Landroid/graphics/Paint;

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    :goto_be
    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private final c43d12f4f4da28dd6c943a4effe477b7m(Lnga;)V
    .locals 3

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_37

    nop

    :pswitch_0
    goto/32 :goto_38

    nop

    nop

    :goto_1
    const v2, 0x7f14004a

    nop

    nop

    nop

    packed-switch p1, :pswitch_data_0

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x7f14002d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_3
    const v1, 0x7f140026

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_4
    invoke-super {p0, p1}, Lhp;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/16 :goto_37

    nop

    nop

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x7f14002f

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_8
    if-eq p1, v2, :cond_0

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x7f14002b

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_a
    if-eq p1, v2, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :cond_1
    goto/32 :goto_31

    nop

    nop

    :goto_b
    const v1, 0x7f140051

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_c
    const v1, 0x7f140047

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_d
    goto/16 :goto_37

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2b

    nop

    :goto_f
    goto/16 :goto_37

    nop

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_10
    goto/16 :goto_37

    nop

    nop

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_12
    if-eq p1, v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :cond_3
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v1, 0x7f140025

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_14
    sget-object v1, Lnne;->f:Lnne;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_15
    goto/16 :goto_37

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/16 :goto_37

    nop

    nop

    nop

    nop

    :pswitch_6
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_17
    goto/16 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_19
    goto/16 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :pswitch_7
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/16 :goto_37

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/16 :goto_37

    nop

    nop

    nop

    :pswitch_8
    goto/32 :goto_3f

    nop

    nop

    :goto_1d
    const v1, 0x7f14002c

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_1e
    goto/16 :goto_37

    nop

    nop

    nop

    nop

    :goto_1f
    :pswitch_9
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const v1, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_21
    const v1, 0x7f140031

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_22
    sget-object v2, Lnne;->f:Lnne;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_23
    const v1, 0x7f140029

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const v1, 0x7f14002a

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_25
    const v1, 0x7f140049

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_26
    const v1, 0x7f140024

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_27
    const v1, 0x7f140039

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const v1, 0x7f140032

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

    :goto_2a
    const v1, 0x7f140030

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

    :goto_2b
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2d
    return-void

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_12
        :pswitch_12
        :pswitch_8
        :pswitch_8
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_11
        :pswitch_14
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_e
        :pswitch_e
        :pswitch_4
        :pswitch_4
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_5
        :pswitch_5
        :pswitch_2
        :pswitch_2
        :pswitch_5
        :pswitch_9
        :pswitch_b
        :pswitch_10
        :pswitch_1
        :pswitch_a
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_c
        :pswitch_f
        :pswitch_f
        :pswitch_9
        :pswitch_9
        :pswitch_15
        :pswitch_7
    .end packed-switch

    :goto_2e
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_2f
    sget-object v2, Lnne;->n:Lnne;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_30
    const v1, 0x7f14004b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_31
    const v1, 0x7f14003a

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_32
    goto/16 :goto_37

    nop

    nop

    :pswitch_a
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    const v1, 0x7f140048

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_34
    const v1, 0x7f140050

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_35
    sget-object v1, Lnne;->n:Lnne;

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_36
    move v1, v2

    nop

    :goto_37
    :pswitch_b
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_38
    const v1, 0x7f140035

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_39
    const v1, 0x7f14004c

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

    :goto_3a
    iget-object p1, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->r:Lnne;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    goto/16 :goto_37

    nop

    :pswitch_c
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_3c
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_3d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    goto :goto_37

    nop

    nop

    nop

    :pswitch_d
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3f
    iget-object p1, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->r:Lnne;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_40
    const v1, 0x7f140046

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_41
    goto :goto_37

    nop

    nop

    :pswitch_e
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_42
    goto/16 :goto_37

    nop

    nop

    :pswitch_f
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_43
    const v1, 0x7f140023

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual {p1}, Lnga;->ordinal()I

    move-result p1

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_45
    goto/16 :goto_37

    nop

    :pswitch_10
    goto/32 :goto_13

    nop

    nop

    :goto_46
    goto/16 :goto_37

    nop

    nop

    :pswitch_11
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_47
    goto/16 :goto_37

    nop

    :pswitch_12
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_48
    goto/16 :goto_37

    nop

    nop

    :goto_49
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    goto/32 :goto_2c

    nop

    nop

    :goto_4b
    goto/16 :goto_37

    nop

    nop

    nop

    nop

    :pswitch_13
    goto/32 :goto_33

    nop

    nop

    :goto_4c
    goto/16 :goto_37

    nop

    nop

    nop

    nop

    nop

    :pswitch_14
    goto/32 :goto_9

    nop

    nop

    :goto_4d
    if-eq p1, v1, :cond_4

    nop

    goto/32 :goto_18

    nop

    :cond_4
    goto/32 :goto_43

    nop

    nop

    :goto_4e
    goto/16 :goto_37

    nop

    :pswitch_15
    goto/32 :goto_34

    nop

    nop

    nop

    nop
.end method

.method private final e94656b6137dd01f26085f984afe853em(Lnhc;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Lnhb;

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
    invoke-direct {v0, p1}, Lnhb;-><init>(Lnhc;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    iput-object v0, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->j:Lnhb;

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

    :goto_3
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->K:Ljava/lang/Object;

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

    :goto_4
    throw p0

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    :try_start_0
    monitor-exit v0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

    nop

    nop

    :goto_6
    monitor-enter v0

    nop

    :try_start_1
    iput-object p1, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->L:Lnhc;

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public a()F
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const/high16 p0, 0x3f800000    # 1.0f

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
    return p0

    nop

    nop

    nop
.end method

.method protected b()F
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const/high16 p0, 0x40400000    # 3.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    int-to-float p0, p0

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

    :goto_2
    invoke-static {p0}, Lnnr;->b(F)I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    return p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final buildDrawingCache(Z)V
    .locals 0

    goto/32 :goto_2

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

    nop

    nop

    nop

    :goto_1
    invoke-super {p0, p1}, Lhp;->buildDrawingCache(Z)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->invalidate()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public c(Lnga;Lngn;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->m(Lnga;Llyi;Lngn;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, v0, Lnhc;->x:Llyi;

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

    :goto_3
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->e()Lnhc;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public final d()Lnga;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->e()Lnhc;

    move-result-object p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    :goto_2
    iget-object p0, p0, Lnhc;->w:Lnga;

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

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 18

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_1d2

    nop

    :goto_1
    goto/32 :goto_e3

    nop

    nop

    :goto_2
    sub-double v5, v7, v5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_f9

    nop

    nop

    nop

    nop

    nop

    :goto_4
    check-cast v6, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_119

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v15, v14, Ljuq;->q:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_115

    nop

    nop

    nop

    :goto_6
    if-eqz v2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1da

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f8

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v5, v6}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v5

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

    :goto_8
    invoke-static {v6, v11}, Ljava/lang/Math;->max(FF)F

    move-result v11

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

    :goto_9
    invoke-virtual {v13}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/16 :goto_10c

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_10b

    nop

    nop

    nop

    :goto_c
    move v2, v5

    nop

    nop

    :goto_d
    goto/32 :goto_1c0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

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

    nop

    :goto_f
    if-gez v2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    :goto_10
    move v15, v7

    nop

    goto/32 :goto_148

    nop

    nop

    :goto_11
    const/4 v4, 0x5

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setTranslationX(F)V

    goto/32 :goto_154

    nop

    nop

    nop

    nop

    :goto_13
    if-eqz v3, :cond_2

    nop

    nop

    goto/32 :goto_1c6

    nop

    nop

    :cond_2
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_14
    sget-object v3, Lnga;->g:Lnga;

    nop

    nop

    nop

    nop

    goto/32 :goto_1bb

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v2, v3, Lnna;->b:Landroid/widget/ImageView;

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v2}, Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;->a()V

    :goto_17
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    nop

    goto/32 :goto_122

    nop

    nop

    nop

    :goto_19
    const/4 v4, 0x1

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    :goto_1a
    goto/16 :goto_32

    nop

    nop

    :goto_1b
    goto/32 :goto_105

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v2, v2, Ljvu;->a:Loyn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17a

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_1e
    const v14, 0x3ee66666    # 0.45f

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

    :goto_1f
    iget-object v14, v11, Ljup;->a:Ljuq;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_20
    iget v10, v12, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_22
    sub-float/2addr v4, v7

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_23
    invoke-static {v7, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    :goto_24
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    nop

    :goto_25
    move v2, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    :goto_26
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->getWidth()I

    move-result v15

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

    :goto_27
    int-to-float v10, v10

    nop

    goto/32 :goto_f4

    nop

    nop

    :goto_28
    invoke-static {v5, v4}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_192

    nop

    nop

    nop

    :goto_29
    invoke-interface {v11}, Lrtm;->a()Ljava/lang/Object;

    move-result-object v11

    nop

    nop

    goto/32 :goto_18b

    nop

    nop

    nop

    :goto_2a
    move v7, v4

    nop

    nop

    :goto_2b
    goto/32 :goto_16f

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    :goto_2d
    if-lez v5, :cond_3

    nop

    nop

    nop

    goto/32 :goto_1b9

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_19a

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    move v15, v7

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-static {v5, v6, v7}, Lnna;->c(FFF)F

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_102

    nop

    nop

    nop

    nop

    :goto_30
    iget-object v6, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_196

    nop

    nop

    nop

    :goto_31
    const v14, 0x3f2b851f    # 0.67f

    nop

    nop

    :goto_32
    goto/32 :goto_186

    nop

    nop

    nop

    nop

    :goto_33
    goto :goto_32

    nop

    :goto_34
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-interface {v2, v3}, Lpdf;->a(Ljava/lang/String;)Lpdh;

    move-result-object v2

    nop

    nop

    goto/32 :goto_17e

    nop

    nop

    nop

    nop

    nop

    :goto_36
    const-string v3, "ShutterButton#click"

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_37
    const v0, 0x18

    nop

    nop

    nop

    goto/32 :goto_1e8

    nop

    nop

    :goto_38
    invoke-static {v4, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    const/4 v5, 0x1

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

    :goto_3a
    new-instance v3, Landroid/graphics/PointF;

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

    :goto_3b
    if-eqz v12, :cond_4

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_9e

    nop

    nop

    :goto_3c
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-static {v12}, Lnnr;->h(Landroid/view/WindowManager;)Landroid/util/Size;

    move-result-object v12

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_3e
    goto/16 :goto_ac

    nop

    nop

    :goto_3f
    goto/32 :goto_201

    nop

    nop

    nop

    :goto_40
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_41
    int-to-float v4, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_11e

    nop

    nop

    :goto_42
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_43
    goto/16 :goto_90

    nop

    :goto_44
    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-direct {v0, v2}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->132cd3b981019b59dc42653eea0b34b4m(I)V

    goto/32 :goto_0

    nop

    nop

    :goto_46
    iput v7, v2, Ljvu;->k:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_182

    nop

    nop

    nop

    :goto_47
    sub-float/2addr v15, v9

    nop

    nop

    goto/32 :goto_11f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    iput-object v11, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->v:Landroid/view/MotionEvent;

    nop

    nop

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_4a
    sget-object v3, Lnga;->F:Lnga;

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    add-int/2addr v15, v13

    nop

    nop

    nop

    goto/32 :goto_1dc

    nop

    nop

    :goto_4c
    invoke-virtual {v12}, Landroid/util/Size;->getHeight()I

    move-result v13

    nop

    nop

    nop

    goto/32 :goto_134

    nop

    nop

    :goto_4d
    int-to-float v12, v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b7

    nop

    nop

    :goto_4e
    neg-float v5, v5

    nop

    nop

    nop

    goto/32 :goto_15f

    nop

    nop

    :goto_4f
    move v8, v4

    nop

    nop

    nop

    :goto_50
    goto/32 :goto_1e0

    nop

    nop

    :goto_51
    const/4 v3, 0x0

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    :goto_52
    goto/16 :goto_ac

    nop

    nop

    nop

    nop

    :goto_53
    goto/32 :goto_78

    nop

    nop

    :goto_54
    invoke-static {v6, v3}, Ljvu;->a(FLandroid/util/Range;)F

    move-result v6

    nop

    goto/32 :goto_1b5

    nop

    nop

    nop

    nop

    nop

    :goto_55
    check-cast v4, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    :goto_56
    iget-object v11, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->q:Lnfz;

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    :goto_57
    sub-float/2addr v2, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_175

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    iget v15, v3, Landroid/graphics/PointF;->x:F

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    iget-boolean v2, v14, Ljuq;->n:Z

    nop

    nop

    nop

    goto/32 :goto_13d

    nop

    nop

    nop

    nop

    :goto_5a
    check-cast v5, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_5c
    sget-object v15, Lnga;->J:Lnga;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    :goto_5d
    iget-object v4, v14, Ljuq;->q:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    goto/32 :goto_146

    nop

    nop

    nop

    :goto_5e
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    :goto_5f
    check-cast v4, Landroid/graphics/PointF;

    nop

    goto/32 :goto_18a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    neg-float v5, v8

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    :goto_61
    iget-object v2, v3, Lnna;->e:Landroid/view/MotionEvent;

    nop

    goto/32 :goto_ed

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    if-ne v3, v4, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_19c

    nop

    nop

    :cond_5
    goto/32 :goto_173

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    invoke-static {v3, v5}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v3

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    :goto_64
    iget v7, v2, Ljvu;->k:F

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_65
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    nop

    nop

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    :goto_66
    iget-object v2, v11, Ljup;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

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

    :goto_67
    invoke-virtual {v3, v1}, Lstm;->f(Landroid/view/MotionEvent;)V

    goto/32 :goto_1cb

    nop

    nop

    nop

    :goto_68
    sub-float/2addr v6, v7

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_69
    goto :goto_73

    nop

    nop

    nop

    :goto_6a
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_6b
    sub-float/2addr v5, v8

    nop

    goto/32 :goto_151

    nop

    nop

    :goto_6c
    const-wide v7, 0x4056800000000000L    # 90.0

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

    :goto_6d
    const/4 v7, 0x2

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    :goto_6e
    if-nez v2, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_1b3

    nop

    :cond_6
    goto/32 :goto_1b2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    goto/16 :goto_129

    nop

    nop

    :goto_70
    goto/32 :goto_128

    nop

    nop

    nop

    nop

    :goto_71
    invoke-interface {v3}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    :goto_72
    goto/16 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_73
    goto/32 :goto_c

    nop

    nop

    :goto_74
    iget v13, v12, Landroid/graphics/Rect;->top:I

    nop

    nop

    goto/32 :goto_15c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->getWidth()I

    move-result v6

    nop

    goto/32 :goto_179

    nop

    nop

    nop

    nop

    nop

    :goto_76
    iput v5, v2, Ljvu;->h:F

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    :goto_77
    iget-object v5, v2, Ljvu;->e:Landroid/view/WindowManager;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1fe

    nop

    nop

    nop

    :goto_78
    iget-boolean v2, v11, Ljup;->b:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_79
    invoke-virtual {v13}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_7a
    const/4 v4, 0x1

    nop

    nop

    nop

    goto/32 :goto_127

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    if-nez v3, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_1fa

    nop

    nop

    nop

    :goto_7c
    cmpg-float v2, v2, v3

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_7e
    int-to-float v6, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_104

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    iput v6, v2, Ljvu;->j:F

    nop

    goto/32 :goto_1a2

    nop

    nop

    :goto_80
    cmpg-float v2, v2, v3

    nop

    nop

    nop

    goto/32 :goto_19e

    nop

    nop

    nop

    nop

    :goto_81
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_82
    sget-object v3, Lnga;->a:Lnga;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c5

    nop

    nop

    :goto_83
    goto/32 :goto_eb

    nop

    nop

    :goto_84
    move v8, v5

    nop

    nop

    nop

    goto/32 :goto_1e1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_85
    iget-object v13, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->v:Landroid/view/MotionEvent;

    nop

    nop

    goto/32 :goto_1bc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_86
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    :goto_87
    iget-object v3, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->F:Landroid/view/GestureDetector;

    nop

    goto/32 :goto_130

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_88
    iget v10, v3, Landroid/graphics/PointF;->y:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_89
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    if-eqz v2, :cond_8

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_8b
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

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

    :goto_8c
    and-int v2, v2, v17

    nop

    nop

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    :goto_8d
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    nop

    nop

    goto/32 :goto_1b4

    nop

    nop

    :goto_8e
    if-ne v2, v3, :cond_9

    nop

    nop

    goto/32 :goto_1c6

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_82

    nop

    nop

    nop

    nop

    :goto_8f
    invoke-interface {v3}, Lnxc;->c()F

    move-result v3

    nop

    nop

    nop

    nop

    :goto_90
    goto/32 :goto_163

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_91
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    nop

    goto/32 :goto_1ee

    nop

    nop

    nop

    nop

    :goto_92
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->getVisibility()I

    move-result v3

    nop

    nop

    goto/32 :goto_1aa

    nop

    nop

    :goto_93
    iget v5, v2, Ljvu;->h:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_94
    iget-object v3, v2, Ljvu;->c:Lnxc;

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

    :goto_95
    if-ne v7, v5, :cond_a

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    :goto_96
    invoke-interface {v2}, Lpdh;->a()V

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_97
    if-ltz v13, :cond_b

    nop

    nop

    nop

    goto/32 :goto_16e

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_171

    nop

    nop

    :goto_98
    aget v13, v11, v4

    nop

    nop

    goto/32 :goto_188

    nop

    nop

    nop

    nop

    nop

    :goto_99
    iget-object v15, v14, Ljuq;->q:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    :goto_9a
    move v7, v5

    nop

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_ee

    nop

    nop

    nop

    :goto_9c
    move v6, v5

    nop

    nop

    nop

    goto/32 :goto_1e6

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    iget-object v14, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    :goto_9e
    int-to-float v5, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_150

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    cmpl-float v2, v2, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_138

    nop

    nop

    :goto_a0
    if-eqz v6, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e7

    nop

    nop

    nop

    :cond_c
    :goto_a1
    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    :goto_a2
    invoke-virtual {v11}, Lnbe;->ordinal()I

    move-result v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    iget v5, v5, Lhkp;->b:F

    nop

    nop

    nop

    goto/32 :goto_1f7

    nop

    nop

    nop

    nop

    :goto_a4
    const/4 v4, 0x2

    nop

    goto/32 :goto_19b

    nop

    nop

    nop

    :goto_a5
    iget-object v2, v3, Lnna;->b:Landroid/widget/ImageView;

    nop

    nop

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    :goto_a6
    if-eq v14, v15, :cond_d

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :cond_d
    goto/32 :goto_dd

    nop

    nop

    :goto_a7
    invoke-virtual {v2, v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1bd

    nop

    nop

    nop

    nop

    :goto_a8
    const/high16 v7, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_18e

    nop

    nop

    nop

    :goto_a9
    invoke-virtual {v2}, Ljvu;->d()V

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_aa
    const/4 v7, 0x0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_ab
    move/from16 v17, v8

    nop

    nop

    nop

    :goto_ac
    goto/32 :goto_15b

    nop

    nop

    nop

    nop

    :goto_ad
    iget v6, v3, Lnna;->j:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_af
    iget-object v11, v11, Lnbs;->a:Lnbr;

    nop

    nop

    goto/32 :goto_1f9

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    check-cast v3, Lhkp;

    nop

    nop

    nop

    goto/32 :goto_116

    nop

    nop

    nop

    nop

    :goto_b1
    invoke-static {v6, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    :goto_b2
    invoke-direct {v3, v4, v9}, Landroid/graphics/PointF;-><init>(FF)V

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_b3
    new-instance v2, Lnnq;

    nop

    goto/32 :goto_200

    nop

    nop

    :goto_b4
    invoke-static {v4, v5}, Ljvu;->b(FLandroid/util/Range;)F

    move-result v6

    nop

    nop

    nop

    :goto_b5
    goto/32 :goto_123

    nop

    nop

    nop

    nop

    :goto_b6
    invoke-static {v5, v6}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1be

    nop

    nop

    :goto_b7
    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_194

    nop

    nop

    nop

    nop

    :goto_b8
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    nop

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b9
    invoke-interface {v5}, Lnxc;->b()F

    move-result v5

    nop

    :goto_ba
    goto/32 :goto_19f

    nop

    nop

    nop

    nop

    nop

    :goto_bb
    sub-float/2addr v7, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1de

    nop

    nop

    :goto_bc
    if-ne v11, v4, :cond_e

    nop

    goto/32 :goto_34

    nop

    :cond_e
    goto/32 :goto_172

    nop

    nop

    nop

    nop

    nop

    :goto_bd
    move-object/from16 v1, p1

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_be
    goto/16 :goto_184

    nop

    nop

    :goto_bf
    goto/32 :goto_15a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c0
    goto/16 :goto_2b

    nop

    nop

    :goto_c1
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_c2
    iget v5, v2, Ljvu;->h:F

    nop

    nop

    nop

    goto/32 :goto_1b8

    nop

    nop

    nop

    nop

    nop

    :goto_c3
    if-nez v7, :cond_f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_141

    nop

    :cond_f
    goto/32 :goto_13e

    nop

    nop

    nop

    nop

    :goto_c4
    if-gez v2, :cond_10

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_c5
    const-wide v7, 0x4066800000000000L    # 180.0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_c6
    goto/16 :goto_ac

    nop

    nop

    nop

    nop

    :goto_c7
    goto/32 :goto_1c4

    nop

    nop

    nop

    nop

    :goto_c8
    if-nez v5, :cond_11

    nop

    nop

    nop

    goto/32 :goto_13b

    nop

    nop

    :cond_11
    goto/32 :goto_162

    nop

    nop

    nop

    nop

    :goto_c9
    if-nez v2, :cond_12

    nop

    goto/32 :goto_ac

    nop

    nop

    :cond_12
    goto/32 :goto_66

    nop

    nop

    nop

    :goto_ca
    if-nez v2, :cond_13

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_13
    :goto_cb
    goto/32 :goto_1ce

    nop

    nop

    :goto_cc
    if-eqz v2, :cond_14

    nop

    goto/32 :goto_131

    nop

    nop

    :cond_14
    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    :goto_cd
    if-ne v6, v7, :cond_15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1af

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_fc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ce
    new-instance v9, Landroid/graphics/PointF;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_cf
    invoke-static {v5, v3}, Ljvu;->b(FLandroid/util/Range;)F

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_198

    nop

    nop

    :goto_d0
    const/4 v4, 0x0

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_d1
    invoke-interface {v5}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_d2
    const/4 v5, 0x0

    nop

    nop

    goto/32 :goto_f5

    nop

    nop

    nop

    :goto_d3
    iget-object v5, v2, Ljvu;->c:Lnxc;

    nop

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    :goto_d4
    if-eqz v7, :cond_16

    nop

    nop

    nop

    goto/32 :goto_141

    nop

    nop

    nop

    nop

    nop

    :cond_16
    goto/32 :goto_10f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d5
    invoke-direct {v2, v3, v5, v6, v7}, Lnnq;-><init>(FFFF)V

    goto/32 :goto_1b6

    nop

    nop

    nop

    nop

    :goto_d6
    iget v6, v3, Lnna;->j:F

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_d7
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_13f

    nop

    nop

    :goto_d8
    invoke-static {v5, v4}, Ljvu;->a(FLandroid/util/Range;)F

    move-result v4

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_d9
    iget-object v5, v2, Ljvu;->b:Loyd;

    nop

    nop

    nop

    goto/32 :goto_18f

    nop

    nop

    nop

    nop

    nop

    :goto_da
    const-wide v7, 0x4052c00000000000L    # 75.0

    nop

    nop

    nop

    goto/32 :goto_12a

    nop

    nop

    nop

    :goto_db
    move v7, v5

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

    nop

    nop

    :goto_dc
    invoke-virtual {v13}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    nop

    goto/32 :goto_143

    nop

    nop

    nop

    nop

    :goto_dd
    xor-int/2addr v2, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16a

    nop

    nop

    nop

    :goto_de
    iget-object v2, v11, Ljup;->d:Ljvu;

    nop

    nop

    nop

    goto/32 :goto_11b

    nop

    nop

    nop

    nop

    :goto_df
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    nop

    goto/32 :goto_1c3

    nop

    nop

    nop

    nop

    :goto_e0
    iget-object v11, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->v:Landroid/view/MotionEvent;

    nop

    goto/32 :goto_1d5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e1
    iget v4, v4, Landroid/graphics/PointF;->y:F

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_e2
    const/4 v7, 0x0

    nop

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    nop

    :goto_e3
    if-eqz v2, :cond_17

    nop

    nop

    goto/32 :goto_1d2

    nop

    :cond_17
    goto/32 :goto_1ea

    nop

    nop

    nop

    nop

    nop

    :goto_e4
    if-ltz v12, :cond_18

    nop

    goto/32 :goto_16e

    nop

    nop

    nop

    :cond_18
    goto/32 :goto_10a

    nop

    nop

    nop

    nop

    :goto_e5
    if-nez v14, :cond_19

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :cond_19
    goto/32 :goto_121

    nop

    nop

    nop

    nop

    nop

    :goto_e6
    const v14, 0x3f666666    # 0.9f

    nop

    nop

    nop

    nop

    goto/32 :goto_165

    nop

    nop

    :goto_e7
    iget v5, v3, Lnna;->f:F

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_e8
    invoke-static {v2, v6, v7}, Lnna;->c(FFF)F

    move-result v2

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e9
    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v14

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    nop

    :goto_ea
    goto/32 :goto_1cd

    nop

    nop

    :goto_eb
    goto/32 :goto_f7

    nop

    nop

    nop

    nop

    nop

    :goto_ec
    invoke-static {v5}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13a

    nop

    nop

    :goto_ed
    if-eqz v2, :cond_1a

    nop

    nop

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    :cond_1a
    goto/32 :goto_189

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ee
    if-eqz v7, :cond_1b

    nop

    goto/32 :goto_70

    nop

    :cond_1b
    goto/32 :goto_db

    nop

    nop

    :goto_ef
    if-ne v8, v9, :cond_1c

    nop

    nop

    nop

    nop

    goto/32 :goto_1e2

    nop

    nop

    nop

    nop

    :cond_1c
    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f0
    iget v6, v2, Ljvu;->i:F

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_f1
    invoke-virtual {v3, v2}, Lnna;->b(Z)V

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_f2
    cmpl-double v7, v5, v7

    nop

    goto/32 :goto_1db

    nop

    nop

    :goto_f3
    if-nez v2, :cond_1d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10c

    nop

    nop

    nop

    :cond_1d
    goto/32 :goto_1f5

    nop

    nop

    nop

    nop

    nop

    :goto_f4
    invoke-static {v6, v10}, Ljava/lang/Math;->min(FF)F

    move-result v10

    nop

    nop

    goto/32 :goto_190

    nop

    nop

    nop

    nop

    nop

    :goto_f5
    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_f6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->getHeight()I

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_f7
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    :goto_f8
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_1d9

    nop

    nop

    :goto_f9
    iget-object v7, v14, Ljuq;->q:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    goto/32 :goto_109

    nop

    nop

    nop

    :goto_fa
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v11

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_fb
    iget-object v4, v2, Ljvu;->a:Loyn;

    nop

    nop

    goto/32 :goto_113

    nop

    nop

    nop

    :goto_fc
    iget-object v5, v3, Lnna;->b:Landroid/widget/ImageView;

    nop

    goto/32 :goto_103

    nop

    nop

    nop

    nop

    nop

    :goto_fd
    check-cast v8, Ljava/lang/Float;

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :goto_fe
    check-cast v6, Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_1ed

    nop

    nop

    nop

    nop

    nop

    :goto_ff
    goto/16 :goto_ac

    nop

    nop

    :goto_100
    goto/32 :goto_df

    nop

    nop

    nop

    nop

    :goto_101
    iget-object v6, v3, Lnna;->a:Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_178

    nop

    nop

    nop

    nop

    :goto_102
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setTranslationX(F)V

    goto/32 :goto_126

    nop

    nop

    :goto_103
    iget v6, v3, Lnna;->j:F

    nop

    nop

    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    nop

    :goto_104
    cmpl-float v2, v2, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    :goto_105
    if-ge v13, v12, :cond_1e

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :cond_1e
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_106
    iget-object v2, v3, Lnna;->a:Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_107
    invoke-static {v10, v4}, Ljvu;->c(FF)Landroid/util/Range;

    move-result-object v4

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_108
    const/4 v4, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    :goto_109
    invoke-virtual {v7, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10a
    const/4 v12, 0x1

    nop

    nop

    nop

    goto/32 :goto_16d

    nop

    nop

    nop

    nop

    nop

    :goto_10b
    const/4 v4, 0x1

    nop

    nop

    nop

    :goto_10c
    goto/32 :goto_1fb

    nop

    nop

    :goto_10d
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    nop

    nop

    goto/32 :goto_147

    nop

    nop

    nop

    :goto_10e
    cmpg-float v13, v13, v8

    nop

    goto/32 :goto_97

    nop

    nop

    :goto_10f
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v7

    nop

    nop

    nop

    nop

    goto/32 :goto_1df

    nop

    nop

    nop

    :goto_110
    check-cast v5, Lhkp;

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

    nop

    :goto_111
    cmpl-float v6, v6, v8

    nop

    nop

    nop

    goto/32 :goto_11a

    nop

    nop

    :goto_112
    or-int/2addr v6, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    :goto_113
    invoke-interface {v4}, Loyn;->cM()Ljava/lang/Object;

    goto/32 :goto_1c

    nop

    nop

    :goto_114
    if-eqz v15, :cond_1f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_159

    nop

    nop

    :cond_1f
    goto/32 :goto_99

    nop

    nop

    :goto_115
    invoke-virtual {v15}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v15

    nop

    nop

    nop

    nop

    goto/32 :goto_114

    nop

    nop

    nop

    :goto_116
    iget v3, v3, Lhkp;->a:F

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_117
    check-cast v5, Ljava/lang/Float;

    nop

    goto/32 :goto_14a

    nop

    nop

    nop

    nop

    :goto_118
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    nop

    nop

    goto/32 :goto_1f1

    nop

    nop

    nop

    nop

    :goto_119
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_202

    nop

    nop

    nop

    nop

    :goto_11a
    if-gez v6, :cond_20

    nop

    nop

    nop

    goto/32 :goto_1d7

    nop

    :cond_20
    goto/32 :goto_a9

    nop

    nop

    nop

    :goto_11b
    iget-object v3, v2, Ljvu;->l:Lstm;

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_11c
    neg-float v4, v4

    nop

    goto/32 :goto_17d

    nop

    nop

    :goto_11d
    const/4 v7, 0x0

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    :goto_11e
    cmpl-float v5, v11, v4

    nop

    nop

    goto/32 :goto_1a4

    nop

    nop

    nop

    nop

    :goto_11f
    sub-float/2addr v10, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_137

    nop

    nop

    nop

    nop

    :goto_120
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->getHeight()I

    move-result v16

    nop

    nop

    nop

    nop

    goto/32 :goto_161

    nop

    nop

    :goto_121
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->d()Lnga;

    move-result-object v14

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_122
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->getMeasuredWidth()I

    move-result v6

    nop

    goto/32 :goto_1a0

    nop

    nop

    :goto_123
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_155

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_124
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    nop

    goto/32 :goto_183

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_125
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_126
    iget-object v2, v3, Lnna;->a:Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;

    nop

    nop

    nop

    nop

    goto/32 :goto_17b

    nop

    nop

    nop

    nop

    nop

    :goto_127
    if-ne v6, v4, :cond_21

    nop

    nop

    nop

    goto/32 :goto_14d

    nop

    nop

    nop

    :cond_21
    goto/32 :goto_6d

    nop

    nop

    :goto_128
    move v7, v4

    nop

    nop

    nop

    nop

    nop

    :goto_129
    goto/32 :goto_1a6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12a
    cmpl-double v3, v5, v7

    nop

    goto/32 :goto_1c2

    nop

    nop

    nop

    :goto_12b
    if-nez v2, :cond_22

    nop

    goto/32 :goto_1da

    nop

    nop

    nop

    nop

    :cond_22
    goto/32 :goto_15e

    nop

    nop

    :goto_12c
    if-nez v5, :cond_23

    nop

    nop

    goto/32 :goto_1f8

    nop

    nop

    :cond_23
    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    :goto_12d
    if-eq v2, v4, :cond_24

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_24
    goto/32 :goto_174

    nop

    nop

    nop

    nop

    :goto_12e
    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v6

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_12f
    if-gtz v7, :cond_25

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    :cond_25
    goto/32 :goto_f0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_130
    invoke-virtual {v3, v1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :goto_131
    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    :goto_132
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->p()Z

    move-result v3

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

    :goto_133
    invoke-static {v6, v11}, Ljvu;->c(FF)Landroid/util/Range;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_164

    nop

    nop

    nop

    :goto_134
    invoke-virtual {v12}, Landroid/util/Size;->getWidth()I

    move-result v12

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    :goto_135
    iget-object v7, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_136
    const/4 v4, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_167

    nop

    nop

    nop

    nop

    nop

    :goto_137
    move v9, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_139

    nop

    nop

    nop

    nop

    :goto_138
    if-ltz v2, :cond_26

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :cond_26
    goto/32 :goto_1cf

    nop

    nop

    :goto_139
    float-to-double v5, v15

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_13a
    iput-object v5, v2, Ljvu;->g:Lj$/util/Optional;

    nop

    :goto_13b
    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13c
    new-array v11, v10, [I

    nop

    goto/32 :goto_1ad

    nop

    nop

    :goto_13d
    if-eqz v2, :cond_27

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    :cond_27
    goto/32 :goto_de

    nop

    nop

    nop

    nop

    nop

    :goto_13e
    move v7, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_140

    nop

    nop

    :goto_13f
    iput v2, v3, Lnna;->g:F

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    :goto_140
    goto/16 :goto_1c9

    nop

    :goto_141
    goto/32 :goto_1c8

    nop

    nop

    nop

    nop

    :goto_142
    float-to-double v7, v10

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_143
    invoke-direct {v9, v4, v3}, Landroid/graphics/PointF;-><init>(FF)V

    goto/32 :goto_158

    nop

    nop

    nop

    :goto_144
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1ef

    nop

    nop

    nop

    :goto_145
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    :goto_146
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_147
    invoke-static {v5, v7, v6}, Lnna;->c(FFF)F

    move-result v5

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_148
    move/from16 v17, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_142

    nop

    nop

    nop

    nop

    nop

    :goto_149
    int-to-float v11, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_14a
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_1a9

    nop

    nop

    nop

    :goto_14b
    iget v5, v2, Ljvu;->h:F

    nop

    goto/32 :goto_14f

    nop

    nop

    :goto_14c
    goto/16 :goto_17

    nop

    nop

    nop

    nop

    :goto_14d
    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    :goto_14e
    if-nez v3, :cond_28

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    :cond_28
    goto/32 :goto_1d3

    nop

    nop

    nop

    :goto_14f
    const/4 v6, 0x0

    nop

    nop

    nop

    goto/32 :goto_197

    nop

    nop

    nop

    nop

    nop

    :goto_150
    iget v6, v2, Ljvu;->h:F

    nop

    nop

    goto/32 :goto_16c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_151
    div-float/2addr v6, v4

    nop

    nop

    nop

    goto/32 :goto_1fd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_152
    move v6, v4

    nop

    nop

    nop

    nop

    :goto_153
    goto/32 :goto_193

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_154
    iget-object v2, v3, Lnna;->a:Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;

    nop

    nop

    nop

    goto/32 :goto_191

    nop

    nop

    nop

    nop

    :goto_155
    invoke-virtual {v3, v4}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v3

    nop

    goto/32 :goto_1f0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_156
    if-nez v6, :cond_29

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    :cond_29
    goto/32 :goto_1a1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_157
    iget-object v11, v2, Ljvu;->d:Lrtm;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_158
    invoke-virtual {v15, v9}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :goto_159
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15a
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_1e9

    nop

    nop

    nop

    :goto_15b
    and-int v2, v9, v15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_15c
    int-to-float v13, v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10e

    nop

    nop

    nop

    :goto_15d
    invoke-virtual {v5}, Lj$/util/Optional;->isEmpty()Z

    move-result v5

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    :goto_15e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->getVisibility()I

    move-result v2

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_15f
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setTranslationX(F)V

    goto/32 :goto_106

    nop

    nop

    nop

    nop

    :goto_160
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    goto/32 :goto_fb

    nop

    nop

    nop

    nop

    :goto_161
    add-int v11, v11, v16

    nop

    nop

    goto/32 :goto_1a3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_162
    iget-object v5, v2, Ljvu;->a:Loyn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    :goto_163
    iget-boolean v5, v2, Ljvu;->f:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_12c

    nop

    nop

    nop

    :goto_164
    neg-float v10, v10

    nop

    nop

    goto/32 :goto_157

    nop

    nop

    nop

    :goto_165
    if-nez v11, :cond_2a

    nop

    goto/32 :goto_1b

    nop

    :cond_2a
    goto/32 :goto_108

    nop

    nop

    nop

    nop

    nop

    :goto_166
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_167
    if-ne v3, v4, :cond_2b

    nop

    goto/32 :goto_19c

    nop

    nop

    nop

    :cond_2b
    goto/32 :goto_145

    nop

    nop

    nop

    nop

    nop

    :goto_168
    iput-boolean v2, v3, Lnna;->i:Z

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_169
    if-gt v7, v5, :cond_2c

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

    :cond_2c
    goto/32 :goto_135

    nop

    nop

    nop

    nop

    :goto_16a
    check-cast v11, Ljup;

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

    :goto_16b
    const/high16 v14, 0x3f000000    # 0.5f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_16c
    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1ff

    nop

    nop

    nop

    nop

    :goto_16d
    goto/16 :goto_1e5

    nop

    nop

    nop

    nop

    :goto_16e
    goto/32 :goto_1e4

    nop

    nop

    nop

    :goto_16f
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d0

    nop

    nop

    nop

    :goto_170
    invoke-virtual {v7}, Lstm;->e()F

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_1f6

    nop

    nop

    nop

    nop

    :goto_171
    iget v12, v12, Landroid/graphics/Rect;->bottom:I

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

    nop

    :goto_172
    if-ge v13, v12, :cond_2d

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :cond_2d
    goto/32 :goto_16b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_173
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_136

    nop

    nop

    nop

    nop

    nop

    :goto_174
    iget-object v2, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->ah:Lpdh;

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    :goto_175
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    nop

    goto/32 :goto_195

    nop

    nop

    nop

    :goto_176
    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    nop

    nop

    nop

    nop

    goto/32 :goto_133

    nop

    nop

    nop

    nop

    nop

    :goto_177
    invoke-super/range {p0 .. p1}, Lhp;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    nop

    goto/32 :goto_1cc

    nop

    nop

    nop

    nop

    :goto_178
    iget-object v6, v6, Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;->h:Lnbh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1ec

    nop

    nop

    nop

    nop

    nop

    :goto_179
    int-to-float v6, v6

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17a
    invoke-interface {v2, v3}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_1d6

    nop

    nop

    nop

    nop

    :goto_17b
    invoke-virtual {v2}, Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;->a()V

    goto/32 :goto_14c

    nop

    nop

    nop

    :goto_17c
    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b1

    nop

    nop

    :goto_17d
    mul-float/2addr v4, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_107

    nop

    nop

    :goto_17e
    iput-object v2, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->ah:Lpdh;

    nop

    nop

    nop

    nop

    :goto_17f
    goto/32 :goto_1ba

    nop

    nop

    nop

    nop

    :goto_180
    const/4 v3, 0x0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_181
    if-lez v0, :cond_2e

    nop

    nop

    goto/32 :goto_eb

    nop

    nop

    nop

    :cond_2e
    goto/32 :goto_ea

    nop

    :goto_182
    invoke-static {v4, v6}, Ljvu;->b(FLandroid/util/Range;)F

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_18c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_183
    invoke-static {v3, v5}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v3

    nop

    :goto_184
    goto/32 :goto_14b

    nop

    nop

    :goto_185
    iput v2, v3, Lnna;->f:F

    nop

    goto/32 :goto_1ca

    nop

    nop

    nop

    :goto_186
    sub-float v4, v7, v14

    nop

    nop

    nop

    goto/32 :goto_11c

    nop

    nop

    :goto_187
    add-float/2addr v6, v8

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_188
    aget v14, v11, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_189
    iput-object v1, v3, Lnna;->e:Landroid/view/MotionEvent;

    nop

    nop

    goto/32 :goto_1c1

    nop

    nop

    nop

    nop

    :goto_18a
    iget v9, v4, Landroid/graphics/PointF;->x:F

    nop

    nop

    nop

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    nop

    :goto_18b
    check-cast v11, Lnbs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    :goto_18c
    iget-object v7, v2, Ljvu;->l:Lstm;

    nop

    nop

    nop

    goto/32 :goto_170

    nop

    nop

    nop

    nop

    :goto_18d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->getMeasuredHeight()I

    move-result v7

    nop

    nop

    nop

    nop

    goto/32 :goto_1a5

    nop

    nop

    nop

    :goto_18e
    if-ltz v6, :cond_2f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    :cond_2f
    goto/32 :goto_ae

    nop

    nop

    nop

    :goto_18f
    invoke-interface {v5}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v5

    nop

    goto/32 :goto_110

    nop

    nop

    :goto_190
    iget v11, v12, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    nop

    nop

    goto/32 :goto_149

    nop

    nop

    :goto_191
    invoke-virtual {v2}, Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;->a()V

    goto/32 :goto_1ae

    nop

    nop

    nop

    :goto_192
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    :goto_193
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    nop

    nop

    goto/32 :goto_169

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_194
    check-cast v7, Ljava/lang/Float;

    nop

    goto/32 :goto_166

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_195
    iget v6, v3, Lnna;->g:F

    nop

    nop

    nop

    nop

    goto/32 :goto_1d8

    nop

    nop

    nop

    nop

    nop

    :goto_196
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_156

    nop

    nop

    nop

    nop

    :goto_197
    cmpg-float v5, v5, v6

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_198
    iget v6, v2, Ljvu;->h:F

    nop

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    :goto_199
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->d()Lnga;

    move-result-object v2

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_19a
    iget-object v5, v2, Ljvu;->a:Loyn;

    nop

    nop

    goto/32 :goto_1c7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19b
    if-eq v3, v4, :cond_30

    nop

    goto/32 :goto_cb

    nop

    nop

    :cond_30
    :goto_19c
    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19d
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    nop

    goto/32 :goto_185

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19e
    if-gez v2, :cond_31

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    :cond_31
    goto/32 :goto_203

    nop

    nop

    nop

    nop

    :goto_19f
    cmpg-float v6, v3, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    :goto_1a0
    int-to-float v6, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_18d

    nop

    nop

    :goto_1a1
    iget-object v6, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_1a2
    invoke-virtual {v2, v3}, Ljvu;->e(Landroid/util/Range;)V

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_1a3
    invoke-direct {v12, v13, v14, v15, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/32 :goto_e0

    nop

    nop

    :goto_1a4
    if-ltz v5, :cond_32

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    :cond_32
    goto/32 :goto_118

    nop

    nop

    nop

    nop

    nop

    :goto_1a5
    int-to-float v7, v7

    nop

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    :goto_1a6
    or-int/2addr v6, v7

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a7
    cmp-long v7, v7, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    :goto_1a8
    iget-object v12, v2, Ljvu;->e:Landroid/view/WindowManager;

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_1a9
    iput v5, v2, Ljvu;->h:F

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1aa
    if-eqz v3, :cond_33

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d2

    nop

    nop

    nop

    :cond_33
    goto/32 :goto_132

    nop

    nop

    :goto_1ab
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_1ac
    new-instance v12, Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    :goto_1ad
    invoke-virtual {v0, v11}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->getLocationOnScreen([I)V

    goto/32 :goto_1ac

    nop

    nop

    nop

    :goto_1ae
    goto/16 :goto_17

    nop

    nop

    :goto_1af
    goto/32 :goto_11d

    nop

    nop

    nop

    nop

    nop

    :goto_1b0
    iget-boolean v3, v14, Ljuq;->p:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    :goto_1b1
    check-cast v5, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_125

    nop

    nop

    :goto_1b2
    invoke-interface {v2}, Lngu;->d()V

    :goto_1b3
    goto/32 :goto_1d1

    nop

    nop

    :goto_1b4
    const v6, 0x3dcccccd    # 0.1f

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

    nop

    :goto_1b5
    iget v7, v2, Ljvu;->k:F

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    :goto_1b6
    iput-object v2, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->G:Lnnq;

    nop

    goto/32 :goto_199

    nop

    nop

    nop

    nop

    :goto_1b7
    cmpg-float v12, v8, v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    nop

    :goto_1b8
    iput v5, v2, Ljvu;->i:F

    nop

    nop

    nop

    nop

    :goto_1b9
    goto/32 :goto_1f2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1ba
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->p()Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_12b

    nop

    nop

    nop

    nop

    nop

    :goto_1bb
    if-ne v2, v3, :cond_34

    nop

    nop

    nop

    nop

    goto/32 :goto_1d2

    nop

    nop

    :cond_34
    goto/32 :goto_92

    nop

    nop

    nop

    :goto_1bc
    if-nez v11, :cond_35

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :cond_35
    goto/32 :goto_1e3

    nop

    nop

    nop

    nop

    nop

    :goto_1bd
    if-nez v2, :cond_36

    nop

    nop

    goto/32 :goto_10c

    nop

    nop

    nop

    nop

    nop

    :cond_36
    goto/32 :goto_1bf

    nop

    nop

    nop

    :goto_1be
    if-nez v12, :cond_37

    nop

    nop

    goto/32 :goto_100

    nop

    nop

    nop

    nop

    :cond_37
    goto/32 :goto_1f3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1bf
    iget-object v2, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->d:Lngu;

    nop

    goto/32 :goto_f3

    nop

    nop

    nop

    :goto_1c0
    if-nez v2, :cond_38

    nop

    nop

    nop

    nop

    goto/32 :goto_1e7

    nop

    nop

    nop

    :cond_38
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_1c1
    iget-object v2, v3, Lnna;->e:Landroid/view/MotionEvent;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19d

    nop

    nop

    :goto_1c2
    if-gez v3, :cond_39

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :cond_39
    goto/32 :goto_1b0

    nop

    nop

    :goto_1c3
    invoke-virtual {v4, v6}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v6

    nop

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

    nop

    :goto_1c4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    :goto_1c5
    if-eq v2, v3, :cond_3a

    nop

    nop

    nop

    nop

    goto/32 :goto_1d2

    nop

    nop

    nop

    nop

    :cond_3a
    :goto_1c6
    goto/32 :goto_1ab

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c7
    invoke-interface {v5}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_117

    nop

    nop

    nop

    :goto_1c8
    move v7, v4

    nop

    nop

    nop

    :goto_1c9
    goto/32 :goto_112

    nop

    nop

    nop

    nop

    :goto_1ca
    iget-object v2, v3, Lnna;->e:Landroid/view/MotionEvent;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    :goto_1cb
    iget-boolean v3, v2, Ljvu;->f:Z

    nop

    goto/32 :goto_14e

    nop

    nop

    nop

    :goto_1cc
    return v0

    nop

    nop

    nop

    :goto_1cd
    goto/32 :goto_83

    nop

    nop

    nop

    :goto_1ce
    iget-object v2, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    goto/32 :goto_180

    nop

    nop

    nop

    nop

    :goto_1cf
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    nop

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    nop

    nop

    :goto_1d0
    const/4 v9, 0x6

    nop

    nop

    goto/32 :goto_ef

    nop

    nop

    nop

    nop

    :goto_1d1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->h()V

    :goto_1d2
    goto/32 :goto_177

    nop

    nop

    :goto_1d3
    iget-object v3, v2, Ljvu;->b:Loyd;

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

    :goto_1d4
    sub-float/2addr v6, v7

    nop

    nop

    nop

    goto/32 :goto_1fc

    nop

    nop

    :goto_1d5
    if-eqz v11, :cond_3b

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :cond_3b
    goto/32 :goto_fa

    nop

    nop

    :goto_1d6
    goto/16 :goto_ac

    nop

    nop

    nop

    nop

    :goto_1d7
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d8
    sub-float/2addr v5, v6

    nop

    nop

    nop

    goto/32 :goto_101

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d9
    invoke-direct {v0, v2}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->132cd3b981019b59dc42653eea0b34b4m(I)V

    :goto_1da
    goto/32 :goto_1dd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1db
    if-gez v7, :cond_3c

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_3c
    goto/32 :goto_c5

    nop

    nop

    :goto_1dc
    aget v11, v11, v5

    nop

    nop

    goto/32 :goto_120

    nop

    nop

    nop

    nop

    :goto_1dd
    iget-object v2, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->d:Lngu;

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_1de
    invoke-static {v7, v5}, Ljava/lang/Math;->max(FF)F

    move-result v7

    nop

    goto/32 :goto_1d4

    nop

    nop

    :goto_1df
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v9

    nop

    nop

    goto/32 :goto_1a7

    nop

    nop

    nop

    nop

    nop

    :goto_1e0
    const/4 v10, 0x2

    nop

    goto/32 :goto_13c

    nop

    nop

    nop

    nop

    nop

    :goto_1e1
    goto/16 :goto_50

    nop

    :goto_1e2
    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_1e3
    if-nez v13, :cond_3d

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :cond_3d
    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    :goto_1e4
    const/4 v12, 0x0

    nop

    nop

    nop

    :goto_1e5
    goto/32 :goto_111

    nop

    nop

    nop

    nop

    nop

    :goto_1e6
    goto/16 :goto_153

    nop

    :goto_1e7
    goto/32 :goto_152

    nop

    nop

    nop

    nop

    :goto_1e8
    const v1, 0x12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_144

    nop

    nop

    nop

    nop

    nop

    :goto_1e9
    const/high16 v5, 0x41000000    # 8.0f

    nop

    goto/32 :goto_124

    nop

    nop

    :goto_1ea
    iget-object v2, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->e:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_1eb

    nop

    nop

    nop

    nop

    :goto_1eb
    if-nez v2, :cond_3e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17f

    nop

    nop

    nop

    nop

    nop

    :cond_3e
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_1ec
    invoke-virtual {v6}, Lnbh;->ordinal()I

    move-result v6

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_1ed
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    :goto_1ee
    invoke-virtual {v5}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v8

    nop

    nop

    nop

    goto/32 :goto_fd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1ef
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_181

    nop

    nop

    :goto_1f0
    check-cast v3, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_160

    nop

    nop

    :goto_1f1
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_1f2
    iget-object v5, v2, Ljvu;->g:Lj$/util/Optional;

    nop

    nop

    goto/32 :goto_15d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f3
    invoke-virtual {v2}, Ljvu;->d()V

    goto/32 :goto_ff

    nop

    nop

    :goto_1f4
    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

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

    nop

    :goto_1f5
    invoke-interface {v2}, Lngu;->f()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1f6
    cmpl-float v7, v7, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_12f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f7
    goto/16 :goto_ba

    nop

    nop

    :goto_1f8
    goto/32 :goto_d3

    nop

    nop

    nop

    :goto_1f9
    iget-object v11, v11, Lnbr;->i:Lnbe;

    nop

    goto/32 :goto_1a8

    nop

    nop

    :goto_1fa
    iget-object v3, v11, Ljup;->e:Lnna;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_168

    nop

    nop

    nop

    :goto_1fb
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    nop

    nop

    goto/32 :goto_12d

    nop

    nop

    nop

    nop

    :goto_1fc
    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1fd
    mul-float/2addr v6, v5

    nop

    nop

    goto/32 :goto_187

    nop

    nop

    nop

    :goto_1fe
    invoke-static {v5}, Lnnr;->h(Landroid/view/WindowManager;)Landroid/util/Size;

    move-result-object v5

    nop

    goto/32 :goto_1f4

    nop

    nop

    nop

    nop

    nop

    :goto_1ff
    check-cast v11, Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_176

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_200
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_201
    move v9, v6

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_202
    invoke-static {v5, v6}, Ljvu;->c(FF)Landroid/util/Range;

    move-result-object v5

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    nop

    :goto_203
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final drawableStateChanged()V
    .locals 4

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_0
    iget-boolean v1, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->aa:Z

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1
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
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x19

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

    :goto_3
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {v1}, Lngu;->f()V

    :goto_5
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    :goto_7
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v1, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

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

    :goto_9
    const/4 v2, 0x1

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

    :goto_a
    if-nez v1, :cond_1

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1c

    nop

    nop

    :goto_b
    if-nez v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_2
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1a

    nop

    :goto_d
    invoke-super {p0}, Lhp;->drawableStateChanged()V

    goto/32 :goto_16

    nop

    nop

    :goto_e
    if-ne v0, v1, :cond_4

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_4
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x20

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_10
    iget-object v1, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->d:Lngu;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_11
    const/4 v3, 0x0

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

    :goto_12
    iput-boolean v0, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->aa:Z

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
    rem-int v0, v0, v1

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

    :goto_15
    if-nez v1, :cond_5

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

    :cond_5
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->isPressed()Z

    move-result v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_1b

    nop

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_19
    iget-object v1, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->d:Lngu;

    nop

    nop

    goto/32 :goto_a

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

    :goto_1b
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-interface {v1, v0}, Lngu;->b(Z)V

    :goto_1d
    goto/32 :goto_12

    nop

    nop

    nop
.end method

.method public final e()Lnhc;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->L:Lnhc;

    nop

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    return-object p0

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->K:Ljava/lang/Object;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    throw p0

    nop

    nop

    nop

    nop
.end method

.method public final f(Z)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->isEnabled()Z

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    iput-boolean p1, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->D:Z

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method final g(Z)V
    .locals 1

    goto/32 :goto_8

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :goto_1
    goto/32 :goto_6

    nop

    nop

    :goto_2
    if-nez p1, :cond_0

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

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :goto_4
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->ad:Landroid/animation/AnimatorSet;

    nop

    nop

    goto/32 :goto_3

    nop

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

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    :goto_8
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->ad:Landroid/animation/AnimatorSet;

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
.end method

.method public final getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->getBackground()Landroid/graphics/drawable/Drawable;

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

    nop
.end method

.method public final h()V
    .locals 1

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->d:Lngu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->getVisibility()I

    move-result v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

    goto/32 :goto_9

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
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_6

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

    :goto_4
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->getVisibility()I

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    :goto_6
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto :goto_6

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_a
    if-nez p0, :cond_2

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_d

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->p()Z

    move-result v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->isEnabled()Z

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-interface {p0}, Lngu;->e()V

    :goto_e
    goto/32 :goto_5

    nop

    nop

    nop
.end method

.method public final i(Lnga;)V
    .locals 3

    goto/32 :goto_10

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

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
    goto/32 :goto_4

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

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, p1}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->e94656b6137dd01f26085f984afe853em(Lnhc;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-boolean v1, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->V:Z

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
    iget-boolean v2, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->W:Z

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
    const v1, 0x17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {p1, v0, p0, v1, v2}, Lnhc;->d(Lnga;Llyi;Landroid/view/View;ZZ)Lnhc;

    move-result-object p1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, v0, Lnhc;->x:Llyi;

    nop

    nop

    goto/32 :goto_6

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
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->e()Lnhc;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_f
    invoke-direct {p0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->430f03c2ea70bd28108d593eca0c7c30m()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0xb

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
.end method

.method public final j(ZLngn;)V
    .locals 2

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object p1, Lnga;->v:Lnga;

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    :goto_1
    const/16 v0, 0x2a

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

    :goto_2
    const/4 v0, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p2, p1, v1}, Lngn;->b(FI)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_4
    sget-object p1, Lnga;->s:Lnga;

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    sget-object p1, Lnga;->p:Lnga;

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    :goto_6
    if-ne p1, v0, :cond_0

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-ne p1, v0, :cond_1

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_a
    sget-object p1, Lnga;->G:Lnga;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-ne p1, v0, :cond_2

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_4d

    nop

    nop

    :goto_c
    sget-object p1, Lnga;->e:Lnga;

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_d
    if-ne p1, v0, :cond_3

    nop

    goto/32 :goto_24

    nop

    nop

    :cond_3
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    sget-object p1, Lnga;->r:Lnga;

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_f
    sget-object p1, Lnga;->a:Lnga;

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    :goto_11
    goto/32 :goto_5b

    nop

    nop

    :goto_12
    if-eqz p1, :cond_4

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->c(Lnga;Lngn;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_14
    return-void

    nop

    nop

    :goto_15
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_16
    return-void

    nop

    nop

    :goto_17
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->isEnabled()Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->c(Lnga;Lngn;)V

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_1a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_1b
    sget-object p1, Lnga;->A:Lnga;

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

    :goto_1c
    if-ne p1, v0, :cond_5

    nop

    nop

    goto/32 :goto_78

    nop

    :cond_5
    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_1d
    const p1, 0x3f87ae14    # 1.06f

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-lez v0, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_35

    nop

    :goto_1f
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->c(Lnga;Lngn;)V

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_20
    if-ne p1, v0, :cond_7

    nop

    goto/32 :goto_8d

    nop

    :cond_7
    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_21
    const/16 v0, 0x1a

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_22
    if-ne p1, v0, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    :cond_8
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_23
    return-void

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_4

    nop

    nop

    :goto_25
    const/4 v0, 0x4

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p2, p1, v1}, Lngn;->b(FI)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_27
    return-void

    nop

    nop

    :goto_28
    goto/32 :goto_31

    nop

    nop

    :goto_29
    const/16 v0, 0x19

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2a
    sget-object p1, Lnga;->d:Lnga;

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

    :goto_2b
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->c(Lnga;Lngn;)V

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->c(Lnga;Lngn;)V

    goto/32 :goto_8c

    nop

    nop

    :goto_2d
    const/16 v0, 0x1f

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    :goto_2e
    return-void

    nop

    nop

    :goto_2f
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    const/16 v1, 0xfa

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->isEnabled()Z

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_32
    return-void

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_40

    nop

    nop

    :goto_34
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->c(Lnga;Lngn;)V

    goto/32 :goto_3b

    nop

    nop

    :goto_35
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_37
    if-ne p1, v0, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_9
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_38
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->c(Lnga;Lngn;)V

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_39
    if-ne p1, v0, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_a
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    const v1, 0x1c

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_3b
    return-void

    nop

    nop

    :goto_3c
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_3d
    const v0, 0x10

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->c(Lnga;Lngn;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_3f
    const/16 v0, 0xe

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_41
    const/16 v0, 0x15

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

    :goto_42
    invoke-virtual {v0}, Lnga;->ordinal()I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->d()Lnga;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    :goto_44
    const/high16 p1, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_45
    if-ne p1, v0, :cond_b

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_46
    if-ne p1, v0, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    :cond_c
    :goto_47
    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_4a
    if-ne p1, v0, :cond_d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    const/16 v0, 0x1c

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->c(Lnga;Lngn;)V

    goto/32 :goto_14

    nop

    nop

    :goto_4d
    const/16 v0, 0xf

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_4e
    sget-object p1, Lnga;->u:Lnga;

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    sget-object p1, Lnga;->B:Lnga;

    nop

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

    nop

    :goto_50
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->c(Lnga;Lngn;)V

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    return-void

    nop

    nop

    :goto_52
    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_53
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->c(Lnga;Lngn;)V

    goto/32 :goto_77

    nop

    nop

    :goto_54
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->c(Lnga;Lngn;)V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_55
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->c(Lnga;Lngn;)V

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    if-ne p1, v0, :cond_e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    :cond_e
    goto/32 :goto_84

    nop

    nop

    :goto_57
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_58
    goto/32 :goto_a

    nop

    nop

    :goto_59
    const/16 v1, 0x64

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_5a
    iget-boolean p1, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->b:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_5b
    sget-object p1, Lnga;->l:Lnga;

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    if-nez p1, :cond_f

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_5d
    const/16 v0, 0x29

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_5e
    sget-object p1, Lnga;->C:Lnga;

    nop

    goto/32 :goto_7b

    nop

    nop

    :goto_5f
    const/16 v0, 0x12

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_60
    const/4 v0, 0x3

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_61
    const/16 v0, 0x14

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

    :goto_62
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    invoke-virtual {v0}, Lnga;->ordinal()I

    move-result p1

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

    :goto_64
    sget-object p1, Lnga;->Q:Lnga;

    nop

    goto/32 :goto_74

    nop

    nop

    :goto_65
    return-void

    nop

    nop

    :goto_66
    goto/32 :goto_86

    nop

    nop

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
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    return-void

    nop

    nop

    nop

    :goto_6a
    goto/32 :goto_44

    nop

    nop

    :goto_6b
    goto/16 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    goto/32 :goto_1d

    nop

    nop

    :goto_6d
    const/16 v0, 0x11

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    return-void

    nop

    nop

    nop

    nop

    :goto_6f
    goto/32 :goto_c

    nop

    nop

    :goto_70
    if-ne p1, v0, :cond_10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_71
    if-ne p1, v0, :cond_11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_72
    const/16 v0, 0x16

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_73
    sget-object p1, Lnga;->b:Lnga;

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_74
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->c(Lnga;Lngn;)V

    goto/32 :goto_2e

    nop

    nop

    :goto_75
    return-void

    nop

    nop

    nop

    nop

    :goto_76
    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_77
    return-void

    nop

    nop

    nop

    :goto_78
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_79
    if-ne p1, v0, :cond_12

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    :cond_12
    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_7a
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_7b
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->c(Lnga;Lngn;)V

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_7c
    if-nez p1, :cond_13

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_7d
    return-void

    nop

    nop

    :goto_7e
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    sget-object p1, Lnga;->P:Lnga;

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

    :goto_80
    return-void

    nop

    nop

    nop

    :goto_81
    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_82
    if-nez p1, :cond_14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_83
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->c(Lnga;Lngn;)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_84
    goto/16 :goto_47

    nop

    nop

    nop

    nop

    :goto_85
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_86
    sget-object p1, Lnga;->z:Lnga;

    nop

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

    :goto_87
    const/16 v0, 0x1b

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    :goto_88
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->c(Lnga;Lngn;)V

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_89
    if-ne p1, v0, :cond_15

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    if-ne p1, v0, :cond_16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    :cond_16
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    sget-object p1, Lnga;->o:Lnga;

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_8c
    return-void

    nop

    nop

    :goto_8d
    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->c(Lnga;Lngn;)V

    goto/32 :goto_6e

    nop

    nop

    nop

    nop
.end method

.method public final k(Z)V
    .locals 1

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Loyj;->a()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->invalidate()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->isClickable()Z

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->setClickable(Z)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    goto/32 :goto_8

    nop

    nop

    :goto_5
    iget-object p1, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->E:Loyj;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    iput-boolean p1, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->b:Z

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->isEnabled()Z

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    nop

    nop

    goto/32 :goto_4

    nop

    nop
.end method

.method public final l(ZZ)V
    .locals 4

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

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

    :goto_1
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto/32 :goto_2b

    nop

    nop

    :goto_2
    invoke-direct {v2, p0, v3}, Lieq;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_1

    nop

    nop

    :goto_3
    const/16 v2, 0xa5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_4
    if-ne v1, p1, :cond_0

    nop

    nop

    goto/32 :goto_31

    nop

    :cond_0
    goto/32 :goto_3

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

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_1
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_6
    filled-new-array {v0, v2}, [I

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v2, Lieq;

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_9
    goto/32 :goto_11

    nop

    nop

    :goto_a
    invoke-direct {p1, v0, p2, v1}, Lndt;-><init>(Ljava/lang/Object;I[B)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->ac:Lpci;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_c
    const-wide/16 p1, 0x0

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_d
    invoke-interface {v0, v1}, Lpdf;->a(Ljava/lang/String;)Lpdh;

    move-result-object v0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_e
    const/16 v2, 0xff

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-nez p1, :cond_2

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

    :cond_2
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget v0, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->p:I

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

    :goto_14
    invoke-direct {p1, p0}, Lnfv;-><init>(Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iput-object v0, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->ag:Lpdh;

    nop

    nop

    :goto_16
    goto/32 :goto_0

    nop

    nop

    :goto_17
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->ag:Lpdh;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-interface {v0}, Lpdh;->a()V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const v0, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_1b
    iput-object p1, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->ac:Lpci;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_1c
    const-wide/16 v2, 0x96

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1d
    invoke-super {p0, p1}, Lhp;->setEnabled(Z)V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto/32 :goto_36

    nop

    nop

    :goto_22
    const/4 p2, 0x4

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_23
    invoke-interface {v0}, Lpci;->close()V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->isClickable()Z

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_25
    goto/16 :goto_16

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->e:Lpdf;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_28
    new-instance p1, Lndt;

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

    :goto_29
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const/16 v3, 0x11

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

    :goto_2b
    if-eqz p1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_2c
    const-string v1, "ShutterButton#disabled"

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const/4 v1, 0x0

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

    :goto_30
    goto/16 :goto_f

    nop

    :goto_31
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->isEnabled()Z

    goto/32 :goto_24

    nop

    nop

    :goto_33
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->k(Z)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_2e

    nop

    nop

    :goto_35
    new-instance p1, Lnfv;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_36
    new-instance p2, Lnfw;

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_37
    goto :goto_3f

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_3e

    nop

    nop

    :goto_39
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_3c
    add-int v0, v0, v1

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

    :goto_3d
    if-ne v1, p2, :cond_4

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

    :cond_4
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    const-wide/16 p1, 0x1f4

    nop

    :goto_3f
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_40
    if-lez v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_2d

    nop

    :goto_41
    invoke-direct {p2, v0, p1}, Lnfw;-><init>(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_42
    const v1, 0x14

    nop

    goto/32 :goto_3c

    nop

    nop
.end method

.method public final m(Lnga;Llyi;Lngn;)V
    .locals 3

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_0
    iput-object v1, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->j:Lnhb;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-boolean v2, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->W:Z

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

    :goto_2
    iput-object p3, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->ad:Landroid/animation/AnimatorSet;

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->invalidate()V

    :goto_4
    goto/32 :goto_35

    nop

    nop

    :goto_5
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v0, Lkzq;

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v1, Lnhb;

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

    :goto_8
    sget-object v0, Lnga;->m:Lnga;

    nop

    goto/32 :goto_47

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

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_c
    iput-boolean v0, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->V:Z

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

    :goto_d
    invoke-virtual {v0, v2}, Lhoh;->p(Lhmn;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-ne p2, v2, :cond_1

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p3, v1, p2}, Lngn;->a(Lnhc;Lnhc;)Landroid/animation/AnimatorSet;

    move-result-object p3

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_10
    sget-object v0, Lnga;->f:Lnga;

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->x:Lhoh;

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p3, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-direct {v1, v0}, Lnhb;-><init>(Lnhc;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_15
    if-eq p1, v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :cond_2
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :cond_3
    goto/32 :goto_45

    nop

    :goto_17
    iget-object v2, v0, Lnhc;->x:Llyi;

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

    :goto_18
    invoke-direct {p2, v0}, Lnng;-><init>(Ljava/util/function/Consumer;)V

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_19
    iget-object v1, p3, Lngn;->b:Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->setTag(Ljava/lang/Object;)V

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v2, v0, Lnhc;->w:Lnga;

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_1c
    new-instance p2, Lnng;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 v0, 0x0

    nop

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

    :goto_1e
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->e()Lnhc;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_1f
    if-nez v0, :cond_4

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_4
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const v0, 0x5

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

    :goto_21
    const v1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_22
    invoke-virtual {v0, v2}, Lhoh;->p(Lhmn;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_23
    return-void

    nop

    :goto_24
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_25
    const/4 v1, 0x1

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_26
    if-nez v0, :cond_5

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_27

    nop

    nop

    :goto_27
    iput-boolean v1, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->ab:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p0, v1}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->g(Z)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v0}, Lprb;->p()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2a
    goto :goto_24

    nop

    :goto_2b
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto/16 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->x:Lhoh;

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v1}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->e()Lnhc;

    move-result-object v1

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

    :goto_30
    if-nez v0, :cond_6

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

    :cond_6
    goto/32 :goto_41

    nop

    nop

    nop

    :goto_31
    iget-object v1, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->K:Ljava/lang/Object;

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

    :goto_32
    iget-object v0, v0, Lnhc;->x:Llyi;

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

    :goto_33
    goto/16 :goto_4a

    nop

    :goto_34
    goto/32 :goto_49

    nop

    nop

    :goto_35
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->e()Lnhc;

    move-result-object v0

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_36
    invoke-virtual {p1}, Lnga;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {p3}, Landroid/animation/AnimatorSet;->start()V

    goto/32 :goto_36

    nop

    nop

    :goto_38
    if-eq p1, v2, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_39
    monitor-enter v1

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iput-object p2, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->L:Lnhc;

    nop

    nop

    nop

    nop

    monitor-exit v1

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-direct {v0, p0, p2, v1}, Lkzq;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_1c

    nop

    nop

    :goto_3b
    if-ne p1, v0, :cond_8

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3c
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->f:Lprb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_3d
    sget-object v2, Lhmz;->q:Lhmn;

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

    :goto_3e
    sget-object v0, Lnga;->n:Lnga;

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

    :goto_3f
    iput-boolean v0, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->ab:Z

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

    nop

    :goto_41
    sget-object v2, Lhmq;->bC:Lhmn;

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

    :goto_42
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    :try_start_1
    monitor-exit v1

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_44
    iget-boolean v1, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->V:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_45
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_4e

    nop

    nop

    :goto_47
    if-ne p1, v0, :cond_9

    nop

    goto/32 :goto_34

    nop

    :cond_9
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_48
    const/4 v1, 0x6

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_49
    move v0, v1

    nop

    :goto_4a
    goto/32 :goto_3f

    nop

    nop

    :goto_4b
    goto/16 :goto_34

    nop

    nop

    :goto_4c
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->x:Lhoh;

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

    :goto_4e
    invoke-direct {p0, p1}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->c43d12f4f4da28dd6c943a4effe477b7m(Lnga;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-static {p1, p2, p0, v1, v2}, Lnhc;->d(Lnga;Llyi;Landroid/view/View;ZZ)Lnhc;

    move-result-object p2

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop
.end method

.method public final n()V
    .locals 4

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1
    iget v2, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->J:I

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    mul-float/2addr v0, v1

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

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int/2addr v0, v0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x13

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    int-to-float v0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_8
    int-to-float v1, v1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_9
    sub-int/2addr v1, v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->e()Lnhc;

    move-result-object v0

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

    :goto_b
    invoke-virtual {p0, v1, v2, v0, v3}, Landroid/graphics/RectF;->set(FFFF)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_c
    add-int v3, v2, v0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_4

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
    int-to-float v0, v0

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

    :goto_10
    float-to-int v0, v0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_11
    iget v1, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->i:F

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_12
    const v1, 0x1

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

    :goto_13
    iget v0, v0, Lnhc;->u:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_15
    int-to-float v3, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_16
    int-to-float v2, v2

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_17
    sub-int/2addr v2, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_18
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->m:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_19
    add-int/2addr v0, v1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_1b
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1c
    iget v1, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->I:I

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final o()V
    .locals 3

    goto/32 :goto_3

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x1e

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

    :goto_2
    invoke-virtual {p0, v0}, Lngc;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0, p0, v1, v2}, Lngc;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_5
    sget-object p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->a:Lngc;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_6
    sget-object v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->a:Lngc;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/16 v0, 0x3e9

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

    :goto_c
    return-void

    nop

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

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_f
    const-wide/16 v1, 0x3e8

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    goto/32 :goto_166

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    int-to-float v6, v6

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_97

    nop

    nop

    :goto_3
    iget-object v1, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->S:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_4
    int-to-float v13, v2

    nop

    nop

    goto/32 :goto_129

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v1, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->R:Landroid/graphics/Paint;

    nop

    goto/32 :goto_10c

    nop

    nop

    nop

    :goto_6
    const/4 v7, 0x0

    nop

    nop

    nop

    goto/32 :goto_150

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_8
    check-cast v1, Landroid/graphics/drawable/Drawable$ConstantState;

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v9, v3, v6, v1, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_a
    goto/32 :goto_db

    nop

    nop

    :goto_b
    check-cast v1, Ljhy;

    nop

    nop

    nop

    nop

    goto/32 :goto_f8

    nop

    nop

    nop

    :goto_c
    if-lt v15, v2, :cond_0

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

    :cond_0
    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_3d

    nop

    nop

    :goto_f
    invoke-virtual {v3, v5, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10d

    nop

    nop

    :goto_10
    iget-object v1, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->T:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_17c

    nop

    nop

    nop

    nop

    :goto_11
    iget v4, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->J:I

    nop

    nop

    nop

    goto/32 :goto_13e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget v1, v10, Lnhc;->f:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_123

    nop

    nop

    nop

    nop

    :goto_13
    sget-object v3, Lnga;->F:Lnga;

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-eq v1, v3, :cond_1

    nop

    nop

    nop

    goto/32 :goto_175

    nop

    :cond_1
    goto/32 :goto_174

    nop

    nop

    nop

    :goto_15
    int-to-float v4, v3

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

    :goto_16
    move-object/from16 v1, p1

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v9, v1, v3, v6, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/32 :goto_168

    nop

    nop

    :goto_18
    invoke-virtual {v1, v11}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    :goto_19
    sget-object v3, Lnga;->g:Lnga;

    nop

    goto/32 :goto_15e

    nop

    nop

    :goto_1a
    if-le v6, v3, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_2
    :goto_1b
    goto/32 :goto_93

    nop

    nop

    nop

    nop

    :goto_1c
    move-object v11, v1

    nop

    goto/32 :goto_130

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v9, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_1e
    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    :goto_1f
    if-ne v1, v3, :cond_3

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    :cond_3
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    int-to-float v4, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    :goto_21
    int-to-float v3, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_148

    nop

    nop

    :goto_22
    if-ne v1, v3, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :cond_4
    goto/32 :goto_138

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v3, v5, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_122

    nop

    nop

    nop

    nop

    :goto_24
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    :goto_25
    if-nez v1, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    :cond_5
    :goto_26
    goto/32 :goto_14b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-static {v2}, Lnnr;->b(F)I

    move-result v3

    nop

    goto/32 :goto_14c

    nop

    nop

    nop

    nop

    :goto_28
    iget-object v2, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->N:Landroid/graphics/Paint;

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget v8, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->i:F

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

    nop

    :goto_2a
    iget-object v1, v10, Lnhc;->m:Lrss;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    sget-object v3, Lnga;->y:Lnga;

    nop

    nop

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    nop

    :goto_2c
    check-cast v1, Ljhy;

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    sget-object v3, Lnga;->E:Lnga;

    nop

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    nop

    nop

    :goto_2e
    iget v1, v10, Lnhc;->l:I

    nop

    goto/32 :goto_ed

    nop

    nop

    :goto_2f
    if-nez v1, :cond_6

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_30
    if-ne v1, v3, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :cond_7
    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    :goto_31
    int-to-float v6, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iget v3, v10, Lnhc;->D:I

    nop

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    :goto_33
    mul-float/2addr v6, v8

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    :goto_34
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_163

    nop

    nop

    :goto_35
    iput-object v1, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->U:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    iget v6, v10, Lnhc;->u:I

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iput-object v6, v3, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->g:Lpdh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    if-nez v1, :cond_8

    nop

    goto/32 :goto_131

    nop

    nop

    :cond_8
    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :goto_39
    iget v6, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->J:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_154

    nop

    nop

    nop

    :goto_3a
    iget v3, v10, Lnhc;->i:I

    nop

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    :goto_3b
    invoke-interface {v6}, Lpdh;->a()V

    goto/32 :goto_5a

    nop

    nop

    :goto_3c
    iget-object v1, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->Q:Landroid/graphics/Paint;

    nop

    goto/32 :goto_152

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    iget-object v1, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->Q:Landroid/graphics/Paint;

    nop

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

    :goto_3e
    const v3, 0x7f060888

    nop

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    :goto_3f
    const v5, 0x7f06005b

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    nop

    :goto_40
    iget-object v1, v1, Ljhy;->e:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

    nop

    nop

    nop

    goto/32 :goto_13c

    nop

    nop

    nop

    nop

    nop

    :goto_41
    iget-object v8, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->Q:Landroid/graphics/Paint;

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

    :goto_42
    iget-object v1, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->z:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    nop

    nop

    goto/32 :goto_157

    nop

    nop

    :goto_43
    if-nez v1, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    :cond_9
    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    int-to-float v1, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_132

    nop

    nop

    :goto_45
    move v6, v14

    nop

    goto/32 :goto_dc

    nop

    nop

    :goto_46
    invoke-virtual {v1, v4, v5, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/32 :goto_f9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    if-nez v1, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fe

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_7

    nop

    nop

    :goto_48
    new-instance v1, Landroid/graphics/Paint;

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

    :goto_49
    iget-object v1, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->T:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_11e

    nop

    nop

    :goto_4a
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    :goto_4b
    goto/32 :goto_162

    nop

    nop

    nop

    :goto_4c
    sget-object v3, Lnga;->J:Lnga;

    nop

    nop

    goto/32 :goto_101

    nop

    nop

    :goto_4d
    add-int/lit8 v15, v15, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    sget-object v3, Lgjl;->a:Lgjl;

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_4f
    sget-object v6, Lmkd;->t:Lmkd;

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

    :goto_50
    iget-object v1, v1, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    :goto_51
    iget-object v1, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->O:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_139

    nop

    nop

    nop

    :goto_52
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto/32 :goto_f0

    nop

    nop

    nop

    nop

    :goto_53
    invoke-virtual {v1, v3}, Lryy;->contains(Ljava/lang/Object;)Z

    move-result v1

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

    :goto_54
    iput-object v1, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->T:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    nop

    :goto_55
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_56
    int-to-float v1, v1

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    :goto_57
    iget-boolean v1, v10, Lnhc;->q:Z

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_58
    array-length v2, v1

    nop

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    :goto_59
    invoke-virtual {v1, v11}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    sget-object v6, Lpdh;->a:Lpdh;

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

    :goto_5b
    new-instance v1, Landroid/graphics/Paint;

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    const/high16 v2, 0x3f000000    # 0.5f

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_5d
    int-to-float v6, v6

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

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

    :goto_5f
    iget-object v1, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->O:Landroid/graphics/Paint;

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

    :goto_60
    iget v3, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->p:I

    nop

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    :goto_61
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_62
    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    :goto_63
    sget-object v8, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->a:Lmko;

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    int-to-float v14, v1

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    iget v1, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->I:I

    nop

    nop

    nop

    nop

    goto/32 :goto_10a

    nop

    nop

    :goto_66
    iget v3, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->I:I

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    :goto_67
    invoke-virtual {v1, v3}, Lsuu;->e(Ljava/lang/Object;)Z

    :goto_68
    goto/32 :goto_72

    nop

    nop

    nop

    :goto_69
    if-eq v1, v2, :cond_b

    nop

    goto/32 :goto_d5

    nop

    nop

    :cond_b
    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    :goto_6a
    move v15, v7

    nop

    nop

    nop

    nop

    :goto_6b
    goto/32 :goto_aa

    nop

    nop

    :goto_6c
    mul-float/2addr v6, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_16a

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    if-ne v1, v3, :cond_c

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :cond_c
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_6f
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/32 :goto_7a

    nop

    nop

    :goto_71
    iget-object v6, v3, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->g:Lpdh;

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_72
    iget-object v1, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->T:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_13f

    nop

    nop

    nop

    nop

    :goto_73
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    int-to-float v1, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_149

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    move v3, v13

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

    :goto_76
    new-instance v1, Landroid/graphics/LightingColorFilter;

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_77
    sget-object v6, Lmkd;->t:Lmkd;

    nop

    nop

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    nop

    :goto_78
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/32 :goto_127

    nop

    nop

    nop

    nop

    nop

    :goto_79
    iget-object v1, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->N:Landroid/graphics/Paint;

    nop

    goto/32 :goto_176

    nop

    nop

    nop

    nop

    :goto_7a
    iget-boolean v1, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->W:Z

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    :goto_7b
    if-gtz v1, :cond_d

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    :cond_d
    goto/32 :goto_13a

    nop

    nop

    nop

    nop

    :goto_7c
    aget-boolean v1, v1, v15

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_7d
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_105

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    int-to-float v3, v3

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    :goto_7f
    if-ne v1, v3, :cond_e

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

    :cond_e
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_80
    if-ne v1, v3, :cond_f

    nop

    goto/32 :goto_26

    nop

    nop

    :cond_f
    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    nop

    :goto_81
    invoke-static {v3}, Lnnr;->b(F)I

    move-result v3

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    :goto_82
    sget v1, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->w:I

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    :goto_83
    invoke-virtual {v3, v6}, Lmkp;->k(Ljava/lang/Enum;)Z

    move-result v6

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_84
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->o()V

    :goto_85
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_86
    add-int/2addr v0, v2

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_87
    int-to-float v1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    :goto_88
    if-ne v1, v3, :cond_10

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    :goto_89
    iget v5, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->i:F

    nop

    goto/32 :goto_74

    nop

    nop

    :goto_8a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    :goto_8b
    goto/16 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    goto/32 :goto_179

    nop

    nop

    nop

    nop

    :goto_8d
    iget-object v5, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->O:Landroid/graphics/Paint;

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    :goto_8e
    if-nez v1, :cond_11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f1

    nop

    :cond_11
    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    const/high16 v3, 0x40400000    # 3.0f

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    :goto_90
    int-to-float v2, v1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_91
    invoke-virtual {v1, v11}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto/32 :goto_142

    nop

    nop

    nop

    nop

    :goto_92
    int-to-float v3, v3

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_93
    iget v3, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->I:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_108

    nop

    nop

    :goto_94
    iget v8, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->i:F

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

    :goto_95
    if-nez v1, :cond_12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    :cond_12
    goto/32 :goto_42

    nop

    nop

    nop

    :goto_96
    iget v2, v1, Lnhc;->y:I

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

    :goto_97
    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_98
    int-to-float v1, v15

    nop

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    :goto_99
    int-to-float v1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_16e

    nop

    nop

    :goto_9a
    int-to-float v6, v6

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_9b
    sget-object v3, Lnga;->n:Lnga;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_9c
    invoke-virtual {v1}, Lrss;->f()Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_9d
    iget-object v1, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->R:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_153

    nop

    nop

    nop

    nop

    :goto_9e
    mul-float/2addr v1, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_136

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    sget-object v3, Lnga;->G:Lnga;

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

    :goto_a0
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_145

    nop

    nop

    :goto_a1
    if-eqz v1, :cond_13

    nop

    nop

    nop

    nop

    goto/32 :goto_12e

    nop

    nop

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    iget-object v1, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->P:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_117

    nop

    nop

    nop

    :goto_a3
    iget v3, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->I:I

    nop

    nop

    goto/32 :goto_11c

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    int-to-float v1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_169

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_a6
    mul-float/2addr v6, v8

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    iget-object v1, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->M:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    :goto_a8
    iget v1, v10, Lnhc;->j:I

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_a9
    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    nop

    nop

    goto/32 :goto_140

    nop

    nop

    :goto_aa
    iget-object v1, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->k:[Z

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_ab
    if-lez v0, :cond_14

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_61

    nop

    :goto_ac
    iget v2, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->I:I

    nop

    nop

    goto/32 :goto_170

    nop

    nop

    :goto_ad
    sget-object v3, Lnga;->k:Lnga;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    iget-object v8, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->N:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    :goto_af
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_b0
    if-gtz v3, :cond_15

    nop

    goto/32 :goto_134

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_e1

    nop

    nop

    nop

    :goto_b1
    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b2
    invoke-virtual {v3, v6, v8}, Lmkp;->i(Ljava/lang/Enum;Lmko;)V

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_fc

    nop

    nop

    :goto_b4
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_14d

    nop

    nop

    nop

    nop

    :goto_b5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->p()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    :goto_b6
    iget v3, v10, Lnhc;->t:I

    nop

    goto/32 :goto_164

    nop

    nop

    nop

    :goto_b7
    mul-float/2addr v3, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_109

    nop

    nop

    :goto_b8
    if-ne v1, v2, :cond_16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    :cond_16
    goto/32 :goto_155

    nop

    nop

    :goto_b9
    invoke-static {v2}, Lnnr;->b(F)I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_151

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    goto/16 :goto_131

    nop

    nop

    nop

    nop

    :goto_bb
    goto/32 :goto_10b

    nop

    nop

    nop

    nop

    :goto_bc
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    goto/32 :goto_98

    nop

    nop

    nop

    :goto_bd
    iget-object v1, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->U:Landroid/graphics/Paint;

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

    :goto_be
    mul-float/2addr v4, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12a

    nop

    nop

    nop

    nop

    nop

    :goto_bf
    sget-object v3, Lnga;->f:Lnga;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_c0
    iget v1, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->I:I

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_c1
    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c2
    iget-object v1, v10, Lnhc;->w:Lnga;

    nop

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    :goto_c3
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c4
    int-to-float v3, v3

    nop

    goto/32 :goto_159

    nop

    nop

    nop

    :goto_c5
    invoke-virtual {v3, v5, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_c6
    iget v3, v10, Lnhc;->f:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    :goto_c7
    iget-object v1, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->U:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_c8
    const/4 v4, 0x0

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    :goto_c9
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_104

    nop

    nop

    nop

    nop

    :goto_ca
    add-int/2addr v3, v2

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cb
    if-eq v1, v2, :cond_17

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    :cond_17
    goto/32 :goto_84

    nop

    nop

    nop

    :goto_cc
    int-to-float v12, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_114

    nop

    nop

    nop

    nop

    nop

    :goto_cd
    iget v6, v10, Lnhc;->e:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    nop

    :goto_ce
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cf
    if-eqz v1, :cond_18

    nop

    goto/32 :goto_4b

    nop

    :cond_18
    goto/32 :goto_15c

    nop

    nop

    nop

    nop

    :goto_d0
    int-to-float v3, v3

    nop

    goto/32 :goto_12b

    nop

    nop

    nop

    nop

    nop

    :goto_d1
    invoke-virtual {v9, v1, v3, v6, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_d2
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_d3
    iget v8, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->i:F

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_d4
    goto/16 :goto_85

    nop

    nop

    nop

    nop

    :goto_d5
    goto/32 :goto_143

    nop

    nop

    nop

    :goto_d6
    iget-object v1, v10, Lnhc;->w:Lnga;

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_d7
    invoke-virtual {v9, v3, v4, v1, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_d8
    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    :goto_d9
    invoke-direct {v1, v3, v7}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    goto/32 :goto_1c

    nop

    nop

    :goto_da
    iget v3, v10, Lnhc;->g:I

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    :goto_db
    iget v1, v10, Lnhc;->k:I

    nop

    nop

    nop

    nop

    goto/32 :goto_167

    nop

    nop

    nop

    :goto_dc
    move v7, v14

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_dd
    iget-object v8, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->U:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_fb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_de
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->isEnabled()Z

    :goto_df
    goto/32 :goto_10

    nop

    nop

    :goto_e0
    mul-float/2addr v1, v3

    nop

    nop

    nop

    goto/32 :goto_16f

    nop

    nop

    nop

    :goto_e1
    const v3, 0x3f5c28f6    # 0.86f

    nop

    nop

    nop

    nop

    goto/32 :goto_133

    nop

    nop

    :goto_e2
    iget v6, v10, Lnhc;->k:I

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_e3
    sget-object v3, Lnga;->l:Lnga;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_126

    nop

    nop

    nop

    :goto_e4
    iget v3, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->J:I

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    :goto_e5
    iget-object v1, v1, Ljhy;->F:Lsuu;

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_e6
    const/16 v2, 0x1e

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_e7
    invoke-virtual {v3, v6}, Lmkp;->k(Ljava/lang/Enum;)Z

    move-result v6

    nop

    nop

    goto/32 :goto_119

    nop

    nop

    nop

    nop

    :goto_e8
    if-nez v6, :cond_19

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

    :cond_19
    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_e9
    if-gtz v1, :cond_1a

    nop

    nop

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    :cond_1a
    goto/32 :goto_a3

    nop

    nop

    nop

    :goto_ea
    if-ne v1, v3, :cond_1b

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :cond_1b
    goto/32 :goto_177

    nop

    nop

    nop

    nop

    nop

    :goto_eb
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto/32 :goto_17a

    nop

    nop

    nop

    :goto_ec
    sget-object v3, Lmkd;->s:Lmkd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_118

    nop

    nop

    nop

    nop

    :goto_ed
    iget v3, v10, Lnhc;->e:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15a

    nop

    nop

    :goto_ee
    invoke-virtual {v1, v11}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto/32 :goto_178

    nop

    nop

    nop

    nop

    nop

    :goto_ef
    iget-object v1, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->Q:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_16b

    nop

    nop

    :goto_f0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :goto_f1
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_f2
    iget v2, v10, Lnhc;->p:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_116

    nop

    nop

    nop

    nop

    nop

    :goto_f3
    iget-object v1, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->j:Lnhb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_135

    nop

    nop

    :goto_f4
    if-ne v1, v3, :cond_1c

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :cond_1c
    goto/32 :goto_9f

    nop

    nop

    :goto_f5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->isEnabled()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_14a

    nop

    nop

    nop

    nop

    nop

    :goto_f6
    sget-object v6, Lmkd;->s:Lmkd;

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_f7
    iget v3, v10, Lnhc;->t:I

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f8
    iget-object v3, v1, Ljhy;->e:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

    nop

    nop

    nop

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f9
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    goto/32 :goto_fd

    nop

    nop

    nop

    nop

    nop

    :goto_fa
    const v3, 0x7f060889

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    nop

    :goto_fb
    invoke-virtual {v9, v1, v3, v6, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/32 :goto_2e

    nop

    nop

    :goto_fc
    iget-object v1, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->N:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    :goto_fd
    invoke-virtual {v1, v9}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_fe
    goto/32 :goto_1

    nop

    nop

    :goto_ff
    iget-object v1, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->R:Landroid/graphics/Paint;

    nop

    goto/32 :goto_a5

    nop

    nop

    :goto_100
    if-eqz v11, :cond_1d

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    nop

    nop

    :cond_1d
    goto/32 :goto_de

    nop

    nop

    nop

    :goto_101
    if-eq v1, v3, :cond_1e

    nop

    goto/32 :goto_10e

    nop

    nop

    nop

    nop

    :cond_1e
    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    :goto_102
    iget v1, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->I:I

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_103
    iget-object v1, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->Q:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    :goto_104
    iget-object v1, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->T:Landroid/graphics/Paint;

    nop

    goto/32 :goto_171

    nop

    nop

    :goto_105
    iget-object v1, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->U:Landroid/graphics/Paint;

    nop

    goto/32 :goto_14e

    nop

    nop

    nop

    nop

    nop

    :goto_106
    iget v3, v10, Lnhc;->r:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_107
    iget v3, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->J:I

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    :goto_108
    int-to-float v3, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_109
    float-to-int v3, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_113

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10a
    int-to-float v1, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_107

    nop

    nop

    nop

    :goto_10b
    sget-object v1, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->B:Lryy;

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

    :goto_10c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    nop

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

    :goto_10d
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    :goto_10e
    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    :goto_10f
    sget-object v3, Lnga;->M:Lnga;

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_110
    int-to-float v3, v3

    nop

    goto/32 :goto_15d

    nop

    nop

    :goto_111
    move-object v11, v4

    nop

    :goto_112
    goto/32 :goto_100

    nop

    nop

    nop

    :goto_113
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/32 :goto_146

    nop

    nop

    nop

    :goto_114
    iget v2, v1, Lnhc;->z:I

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

    :goto_115
    iget v8, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->i:F

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    :goto_116
    iget v3, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->I:I

    nop

    nop

    nop

    nop

    goto/32 :goto_11f

    nop

    nop

    nop

    nop

    nop

    :goto_117
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_118
    sget-object v6, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->a:Lmko;

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_119
    if-eqz v6, :cond_1f

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :cond_1f
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_11a
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/32 :goto_ff

    nop

    nop

    :goto_11b
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11c
    int-to-float v3, v3

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11d
    iget v1, v10, Lnhc;->f:I

    nop

    nop

    goto/32 :goto_15b

    nop

    nop

    nop

    nop

    :goto_11e
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    nop

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11f
    sub-int v4, v3, v2

    nop

    goto/32 :goto_17b

    nop

    nop

    nop

    :goto_120
    sub-int v5, v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    nop

    :goto_121
    const/4 v2, 0x4

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_122
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_ef

    nop

    nop

    :goto_123
    iget-object v2, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->N:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_11a

    nop

    nop

    nop

    nop

    nop

    :goto_124
    const v3, 0x3ea3d70a    # 0.32f

    nop

    nop

    :goto_125
    goto/32 :goto_13b

    nop

    nop

    nop

    nop

    nop

    :goto_126
    if-ne v1, v3, :cond_20

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :cond_20
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_127
    iget-object v1, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->U:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_f7

    nop

    nop

    :goto_128
    iget v4, v10, Lnhc;->s:I

    nop

    nop

    nop

    goto/32 :goto_172

    nop

    nop

    :goto_129
    iget v1, v1, Lnhc;->A:I

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_12a
    iget-object v5, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->P:Landroid/graphics/Paint;

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

    :goto_12b
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_49

    nop

    nop

    :goto_12c
    iget v3, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->I:I

    nop

    nop

    nop

    goto/32 :goto_110

    nop

    nop

    :goto_12d
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    :goto_12e
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_12f
    add-float v5, v13, v12

    nop

    nop

    nop

    nop

    goto/32 :goto_173

    nop

    nop

    nop

    :goto_130
    goto/16 :goto_112

    nop

    nop

    nop

    nop

    nop

    :goto_131
    goto/32 :goto_111

    nop

    nop

    :goto_132
    iget v3, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->J:I

    nop

    nop

    goto/32 :goto_16c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_133
    goto/16 :goto_125

    nop

    :goto_134
    goto/32 :goto_124

    nop

    nop

    nop

    nop

    nop

    :goto_135
    invoke-virtual {v1}, Lnhb;->a()Lnhc;

    move-result-object v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_147

    nop

    nop

    :goto_136
    iget-object v8, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->R:Landroid/graphics/Paint;

    nop

    goto/32 :goto_15f

    nop

    nop

    nop

    nop

    nop

    :goto_137
    if-nez v1, :cond_21

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    :cond_21
    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    :goto_138
    sget-object v3, Lnga;->j:Lnga;

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    :goto_139
    invoke-virtual {v1, v11}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto/32 :goto_13d

    nop

    nop

    nop

    nop

    :goto_13a
    iget v1, v10, Lnhc;->B:I

    nop

    nop

    goto/32 :goto_156

    nop

    nop

    nop

    nop

    :goto_13b
    const/high16 v6, 0x437f0000    # 255.0f

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13c
    invoke-virtual {v1, v3, v6}, Lmkp;->i(Ljava/lang/Enum;Lmko;)V

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    :goto_13d
    iget-object v1, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->M:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_ee

    nop

    nop

    nop

    nop

    :goto_13e
    int-to-float v4, v4

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

    :goto_13f
    iget v3, v10, Lnhc;->C:I

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

    :goto_140
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_103

    nop

    nop

    :goto_141
    iget v8, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->i:F

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_142
    iget-object v1, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->z:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_143
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->e()Lnhc;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    :goto_144
    invoke-static/range {p0 .. p0}, Lnzk;->w(Landroid/view/View;)I

    move-result v3

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_145
    move-object/from16 v9, p1

    nop

    goto/32 :goto_f3

    nop

    nop

    :goto_146
    iget-object v1, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->P:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_106

    nop

    nop

    nop

    :goto_147
    iget v1, v10, Lnhc;->g:I

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_148
    iget v6, v10, Lnhc;->v:I

    nop

    nop

    nop

    goto/32 :goto_141

    nop

    nop

    nop

    :goto_149
    mul-float/2addr v1, v5

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14a
    iget-object v3, v10, Lnhc;->w:Lnga;

    nop

    nop

    nop

    goto/32 :goto_158

    nop

    nop

    nop

    nop

    :goto_14b
    iget v1, v10, Lnhc;->h:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    :goto_14c
    sub-int/2addr v1, v3

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_14d
    iget v1, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->I:I

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    :goto_14e
    iget v3, v10, Lnhc;->j:I

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    :goto_14f
    const v1, 0x17

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_150
    if-nez v6, :cond_22

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_131

    nop

    nop

    nop

    :cond_22
    goto/32 :goto_137

    nop

    nop

    nop

    nop

    :goto_151
    add-int/2addr v3, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_12f

    nop

    nop

    nop

    nop

    nop

    :goto_152
    invoke-virtual {v1, v11}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto/32 :goto_79

    nop

    nop

    nop

    :goto_153
    invoke-virtual {v1, v11}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_154
    int-to-float v6, v6

    nop

    nop

    nop

    goto/32 :goto_115

    nop

    nop

    :goto_155
    const/4 v2, 0x2

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_156
    if-gtz v1, :cond_23

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    :cond_23
    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_157
    iget-object v1, v1, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_158
    iget-boolean v6, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->o:Z

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_159
    invoke-virtual {v9, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto/32 :goto_102

    nop

    nop

    :goto_15a
    if-gt v1, v3, :cond_24

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :cond_24
    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    :goto_15b
    if-gtz v1, :cond_25

    nop

    goto/32 :goto_d2

    nop

    nop

    :cond_25
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_15c
    iget-object v1, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->P:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_144

    nop

    nop

    :goto_15d
    iget v6, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->J:I

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    :goto_15e
    if-ne v1, v3, :cond_26

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :cond_26
    goto/32 :goto_10f

    nop

    nop

    nop

    nop

    :goto_15f
    invoke-virtual {v9, v3, v6, v1, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_160
    goto/32 :goto_11d

    nop

    nop

    nop

    nop

    nop

    :goto_161
    if-lt v1, v3, :cond_27

    nop

    nop

    goto/32 :goto_160

    nop

    nop

    nop

    nop

    nop

    :cond_27
    goto/32 :goto_12c

    nop

    nop

    nop

    nop

    nop

    :goto_162
    iget-object v1, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->N:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    :goto_163
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    :goto_164
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_f5

    nop

    nop

    nop

    :goto_165
    iget v3, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->J:I

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    :goto_166
    const v0, 0x6

    nop

    nop

    goto/32 :goto_14f

    nop

    nop

    nop

    nop

    :goto_167
    iget v3, v10, Lnhc;->e:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_161

    nop

    nop

    nop

    :goto_168
    iget v1, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->I:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_169
    mul-float/2addr v1, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_16a
    iget-object v8, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->T:Landroid/graphics/Paint;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_16b
    const/16 v3, 0x7f

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

    :goto_16c
    int-to-float v3, v3

    nop

    nop

    nop

    goto/32 :goto_128

    nop

    nop

    nop

    :goto_16d
    iget-boolean v1, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->n:Z

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_16e
    iget v3, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->J:I

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

    :goto_16f
    int-to-float v2, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_165

    nop

    nop

    nop

    :goto_170
    const/high16 v3, 0x41400000    # 12.0f

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    :goto_171
    const/4 v3, -0x1

    nop

    nop

    nop

    goto/32 :goto_12d

    nop

    nop

    :goto_172
    iget v5, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->i:F

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_173
    iget-object v8, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->l:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_174
    goto/16 :goto_26

    nop

    nop

    :goto_175
    goto/32 :goto_16d

    nop

    nop

    :goto_176
    invoke-virtual {v1, v11}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_177
    sget-object v3, Lnga;->O:Lnga;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_178
    iget-object v1, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->S:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    :goto_179
    sget v1, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->w:I

    nop

    goto/32 :goto_121

    nop

    nop

    :goto_17a
    iget-object v1, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->T:Landroid/graphics/Paint;

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

    nop

    nop

    :goto_17b
    iget v0, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->J:I

    nop

    nop

    goto/32 :goto_120

    nop

    nop

    :goto_17c
    invoke-virtual {v1, v11}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto/32 :goto_bd

    nop

    nop

    nop
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_1
    invoke-super {p0, p1}, Lhp;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->isAccessibilityFocused()Z

    move-result v0

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

    :goto_5
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_7
    if-eq v0, v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {p0, p1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_9
    if-eq v0, v1, :cond_2

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_a
    const/16 v1, 0x1000

    nop

    goto/32 :goto_7

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

    :goto_c
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_d
    const/16 v1, 0x800

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

    :goto_e
    if-eqz v0, :cond_3

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_f
    if-nez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_4
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_11
    const v1, 0x9

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_12
    const-string p1, "Ignore state announcement"

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

    :goto_13
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getContentChangeTypes()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_15
    const v0, 0x15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_17
    rem-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_18
    check-cast p0, Lscz;

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

    nop

    :goto_19
    const/16 p1, 0x13a0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

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

    nop

    :goto_1b
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->isEnabled()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1c
    sget-object p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->A:Lsdb;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1d
    invoke-interface {p0, p1}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x1c

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

    :goto_1
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->setEnabled(Z)V

    :goto_3
    goto/32 :goto_25

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

    nop

    :goto_5
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x1a

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto :goto_13

    nop

    :goto_9
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

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

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->ae:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->ae:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_e
    return-void

    nop

    :goto_f
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->e()Lnhc;

    move-result-object v0

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    sget-object v1, Lnga;->a:Lnga;

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

    :goto_12
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->H:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_15
    invoke-super {p0, p1}, Lhp;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_16
    if-ne v0, v1, :cond_0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->af:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

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

    :goto_18
    goto/16 :goto_9

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    goto/32 :goto_27

    nop

    nop

    :goto_1d
    if-ne v0, v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_1e
    if-eq v0, v1, :cond_2

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto/32 :goto_e

    nop

    nop

    :goto_20
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-ne v0, v1, :cond_3

    nop

    goto/32 :goto_f

    nop

    :cond_3
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_23
    if-eq v0, v1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_4
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_1b

    nop

    nop

    :goto_25
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->af:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_26
    iget-object v0, v0, Lnhc;->w:Lnga;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->r:Lnne;

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_28
    goto/16 :goto_f

    nop

    :goto_29
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    sget-object v1, Lnga;->J:Lnga;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_2b
    if-lez v0, :cond_5

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

    :cond_5
    goto/32 :goto_1a

    nop

    :goto_2c
    sget-object v1, Lnga;->K:Lnga;

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

    :goto_2d
    if-nez v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_1

    nop

    nop

    :goto_2e
    sget-object v1, Lnne;->b:Lnne;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_2f
    sget-object v1, Lnga;->o:Lnga;

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
.end method

.method protected final onMeasure(II)V
    .locals 0

    goto/32 :goto_2

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
    invoke-super {p0, p1, p2}, Lhp;->onMeasure(II)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->n()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method protected final onSizeChanged(IIII)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    div-int/lit8 p2, p2, 0x2

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    iput p1, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->I:I

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    div-int/lit8 p1, p1, 0x2

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

    :goto_3
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->n()V

    goto/32 :goto_4

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
    iput p2, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->J:I

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-super {p0, p1}, Lhp;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    :goto_2
    const/4 p0, 0x1

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public final p()Z
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

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

    nop

    :goto_5
    return p0

    nop

    nop

    nop

    :goto_6
    iget-boolean v0, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->D:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_7
    const/4 p0, 0x1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    iget-boolean p0, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->b:Z

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

.method public final performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 2

    goto/32 :goto_5

    nop

    nop

    :goto_0
    const v0, 0x7f0b0048

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
    if-nez p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_3
    invoke-interface {p1}, Lngu;->f()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x1f

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 p2, 0x0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_9
    invoke-virtual {p0, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/32 :goto_3

    nop

    nop

    :goto_a
    if-eq p1, v0, :cond_1

    nop

    nop

    goto/32 :goto_21

    nop

    :cond_1
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_b
    invoke-interface {p1, p2}, Lngu;->b(Z)V

    :goto_c
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->H:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return p0

    nop

    :goto_f
    goto/32 :goto_1

    nop

    nop

    :goto_10
    invoke-super {p0, p1, p2}, Lhp;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_12
    iget-object p1, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->d:Lngu;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_13
    goto :goto_c

    nop

    nop

    :goto_14
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v0, 0x7f0b0049

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

    :goto_16
    if-nez p1, :cond_2

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_d

    nop

    nop

    :goto_17
    if-lez v0, :cond_3

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_6

    nop

    :goto_18
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->H:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/32 :goto_1e

    nop

    nop

    :goto_1a
    invoke-interface {p1}, Lngu;->h()V

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1b
    const v1, 0x19

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1c
    if-eq p1, v0, :cond_4

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_1e
    invoke-interface {p1, v1}, Lngu;->b(Z)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object p1, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->d:Lngu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_20
    return v1

    nop

    nop

    :goto_21
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final performClick()Z
    .locals 3

    goto/32 :goto_b

    nop

    nop

    :goto_0
    iput-object v1, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->G:Lnnq;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->d:Lngu;

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

    :goto_4
    if-nez v1, :cond_0

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

    :cond_0
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_1

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1c

    nop

    :goto_6
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->getVisibility()I

    move-result v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1d

    nop

    :goto_8
    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_2
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_9
    iget-object v1, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->d:Lngu;

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
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x1d

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_c
    invoke-super {p0}, Lhp;->performClick()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_e
    if-eqz v1, :cond_3

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_3
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->p()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_10
    iget-object v2, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->G:Lnnq;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_11
    const v1, 0x1c

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_12
    if-nez v2, :cond_4

    nop

    goto/32 :goto_17

    nop

    :cond_4
    goto/32 :goto_16

    nop

    nop

    :goto_13
    return v0

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->isEnabled()Z

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-interface {v1, v2}, Lngu;->i(Lnnq;)V

    :goto_17
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_18
    invoke-interface {p0}, Lngu;->a()V

    :goto_19
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1b
    const/4 p0, 0x0

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

    :goto_1c
    goto/32 :goto_14

    nop

    nop

    :goto_1d
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final q(I)V
    .locals 5

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int/lit8 v4, v0, -0x1

    nop

    nop

    :goto_1
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-boolean v0, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->u:Z

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-eq p1, v3, :cond_0

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-boolean v0, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->u:Z

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_7
    if-eqz v0, :cond_1

    nop

    nop

    goto/32 :goto_24

    nop

    :cond_1
    goto/32 :goto_31

    nop

    nop

    :goto_8
    array-length v0, p1

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p1, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->k:[Z

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v0, 0x5

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

    :goto_c
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_d
    if-eq p1, v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_e
    iput-boolean v1, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->u:Z

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_10
    aput-boolean v0, p1, v4

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

    :goto_11
    move v1, v0

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_12
    if-ge v0, v1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_3
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v1, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->k:[Z

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->invalidate()V

    goto/32 :goto_32

    nop

    nop

    :goto_15
    const/16 v4, 0x1d

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_16
    xor-int/lit8 p1, p1, 0x1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_17
    if-eq p1, v0, :cond_4

    nop

    goto/32 :goto_2a

    nop

    nop

    :cond_4
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_18
    iget-boolean p1, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->t:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_19
    const v0, 0xd

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_1a
    iput v0, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->s:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_1b
    iget-object p1, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->k:[Z

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

    :goto_1c
    iput-boolean p1, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->t:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_1d
    xor-int/lit8 v1, v1, 0x1

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

    :goto_1e
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->invalidate()V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_1f
    iput v2, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->s:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_20
    aput-boolean p1, v1, v4

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const/4 v0, 0x0

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

    :goto_22
    rem-int v0, v0, v1

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/16 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const/16 v1, 0x1e

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_26
    aput-boolean v0, p1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_27
    iget v0, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->s:I

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_28
    move v2, v1

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    return-void

    nop

    :goto_2a
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2b
    add-int/lit8 v4, v1, -0x1

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const/4 v3, 0x4

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

    :goto_2e
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_27

    nop

    nop

    :goto_30
    const v1, 0xd

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_31
    array-length v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_32
    return-void

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_34
    goto :goto_2c

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_36
    iget-boolean v1, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->u:Z

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_37
    const/4 v0, 0x3

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

    nop

    nop

    :goto_38
    if-lez v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :cond_5
    goto/32 :goto_2e

    nop

    :goto_39
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_3a
    if-eqz v1, :cond_6

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_8

    nop

    nop

    :goto_3b
    iput-boolean v1, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->t:Z

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

    :goto_3c
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->invalidate()V

    :goto_3d
    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public final setEnabled(Z)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->l(ZZ)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x1

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
.end method
