.class public Lcom/google/android/apps/camera/evcomp/EvCompView;
.super Landroid/widget/FrameLayout;
.source "PG"


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:Loyn;

.field public c:Landroid/widget/CheckBox;

.field public d:Landroid/widget/ImageButton;

.field public e:Lcom/google/android/apps/camera/evcomp/EvCompSlider;

.field public f:Lcom/google/android/apps/camera/evcomp/EvCompSlider;

.field public g:Lhul;

.field public h:Lhul;

.field public i:Lnbh;

.field public j:F

.field public k:F

.field public l:Llyv;

.field private final m:Landroid/view/accessibility/AccessibilityManager;

.field private final n:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final o:I

.field private final p:I

.field private final q:I

.field private final r:I

.field private s:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v5, 0x7f1400be

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_1
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/camera/evcomp/EvCompView;->n(Lhum;IIII)Lhul;

    move-result-object p2

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

    :goto_2
    check-cast p2, Landroid/view/accessibility/AccessibilityManager;

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1c

    nop

    :goto_4
    iput p2, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->o:I

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

    :goto_5
    check-cast p1, Lfwm;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_6
    const v0, 0x7f0701ac

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

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

    :goto_8
    sget-object v0, Lhuj;->a:Lhuj;

    nop

    nop

    nop

    goto/32 :goto_26

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

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_a
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_b
    instance-of p2, p1, Lfwm;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_c
    iput p2, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->q:I

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_d
    const v0, 0x7f0701b2

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_e
    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

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

    :goto_f
    iput p2, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->p:I

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

    :goto_10
    sget-object v1, Lhum;->a:Lhum;

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_12
    iput-object p2, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->g:Lhul;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_13
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

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

    :goto_14
    iput-object p2, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->i:Lnbh;

    nop

    nop

    goto/32 :goto_3d

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

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_16
    const v2, 0x7f080294

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_18
    const v1, 0x13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_19
    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_1a
    iput-object p2, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->b:Loyn;

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-interface {p1}, Lfwm;->a()Llyv;

    move-result-object p1

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

    :goto_1c
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_2a

    nop

    nop

    :goto_1e
    const v0, 0x7f0701aa

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1f
    if-nez p2, :cond_1

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    sget-object v1, Lhum;->b:Lhum;

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const v4, 0x7f08015d

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

    :goto_22
    const v3, 0x7f06053d

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_23
    iput-object p2, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->a:Ljava/util/ArrayList;

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iput p2, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->r:I

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

    :goto_25
    const v0, 0x7f0701b1

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-direct {p2, v0}, Loxv;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_28
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_29
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_40

    nop

    nop

    :goto_2b
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    move-object v0, p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_2d
    new-instance p2, Loxv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_2e
    const v5, 0x7f140625

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_2f
    const v2, 0x7f080295

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_30
    iput-object p2, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->h:Lhul;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_31
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/camera/evcomp/EvCompView;->n(Lhum;IIII)Lhul;

    move-result-object p2

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

    :goto_32
    sget-object p2, Lnbh;->a:Lnbh;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_33
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_34
    iput-object p2, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_35
    const v3, 0x7f060545

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_37
    invoke-direct {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_34

    nop

    nop

    :goto_38
    iput-object p1, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->l:Llyv;

    nop

    nop

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    return-void

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_3c
    iput-object p2, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->m:Landroid/view/accessibility/AccessibilityManager;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_3d
    const-string p2, "accessibility"

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

    :goto_3e
    const v4, 0x7f08015e

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

    :goto_3f
    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

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

    :goto_40
    new-instance p2, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop
.end method

.method public static c(F)Ljava/lang/String;
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2
    const v1, 0x10

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
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

    :goto_4
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5
    const-string v0, "%+.1f"

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

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_7
    goto/32 :goto_d

    nop

    :goto_8
    const v0, 0x1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    return-object p0

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_c
    goto/32 :goto_a

    nop

    nop

    :goto_d
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const-string v0, "^[-+](0(\\.0*)?)$"

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_f
    const-string v1, "$1"

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

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
.end method

.method private final ccb4c19b7dbd16be9d2a43125797659dm(ILhul;)F
    .locals 4

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sub-float/2addr p1, v2

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

    :goto_1
    const v1, 0x18

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_2
    add-float/2addr p1, p0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_3
    const/high16 p0, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_4
    iget p2, p2, Lhul;->e:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_17

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->a()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_8
    int-to-float p0, p0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    int-to-float p1, p1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

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
    goto/32 :goto_5

    nop

    :goto_b
    int-to-float v2, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_c
    sub-float/2addr p0, p1

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

    :goto_d
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_e
    div-float/2addr p1, p2

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_10
    const/high16 v3, 0x40000000    # 2.0f

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

    :goto_11
    add-float/2addr p2, v0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_12
    div-float/2addr p0, v3

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_14
    int-to-float v1, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_15
    mul-float/2addr v2, v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    return p0

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_19
    invoke-static {p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->p(F)F

    move-result p0

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

    :goto_1a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->a()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1c
    mul-float/2addr p2, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->a()I

    move-result p0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop
.end method

.method private final d116db4599d9ddc8c35e61366a4f4967m(IF)I
    .locals 3

    goto/32 :goto_e

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1
    mul-float/2addr p2, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_2
    div-float/2addr v0, v2

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->a()I

    move-result v1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_4
    if-gt p1, p0, :cond_0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v2, 0x0

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_6
    mul-float/2addr v1, v2

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    float-to-int p0, p2

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_18

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->a()I

    move-result v0

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lt p1, v1, :cond_1

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

    :cond_1
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/high16 v2, 0x40000000    # 2.0f

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_c
    return p0

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x2

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

    :goto_f
    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->a()I

    move-result p0

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

    :goto_10
    sub-float/2addr v1, v0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_11
    sub-float/2addr p2, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_12
    int-to-float p0, p0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_13
    goto :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_15
    int-to-float v1, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_16
    if-lez v0, :cond_2

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_2
    goto/32 :goto_17

    nop

    :goto_17
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_19
    move p1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_1a
    add-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1b
    int-to-float v0, v0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const v1, 0x13

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    return p1

    nop

    nop

    :goto_1e
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    float-to-int v1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop
.end method

.method private static p(F)F
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    int-to-float p0, p0

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
    return p0

    nop

    :goto_2
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    div-float/2addr p0, v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    const/high16 v0, 0x42c80000    # 100.0f

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    mul-float/2addr p0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method final a()I
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    :goto_1
    sub-int/2addr v0, p0

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
    iget p0, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->o:I

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
    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->b()I

    move-result v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method final b()I
    .locals 5

    goto/32 :goto_33

    nop

    nop

    :goto_0
    goto/16 :goto_23

    nop

    :goto_1
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_2
    int-to-float p0, p0

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

    :goto_3
    check-cast v0, Loxv;

    nop

    goto/32 :goto_a

    nop

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

    goto/32 :goto_3d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3c

    nop

    :goto_5
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    :cond_1
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v2, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->c:Landroid/widget/CheckBox;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v2}, Landroid/widget/CheckBox;->getMeasuredWidth()I

    move-result v2

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    int-to-float v1, v1

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

    :goto_9
    if-ne v0, v2, :cond_2

    nop

    goto/32 :goto_45

    nop

    :cond_2
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_a
    iget-object v0, v0, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget v3, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->o:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_c
    sget-object v2, Lhuj;->c:Lhuj;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_d
    add-int/2addr v1, v3

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_f
    const v0, 0x3f4ccccd    # 0.8f

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v1, v2}, Lhuj;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_11
    add-int/2addr v1, v0

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_12
    float-to-int p0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v1, v1, Loxv;->d:Ljava/lang/Object;

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_14
    const v2, 0x7f07019f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_15
    goto :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_17
    iget v1, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->o:I

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_18
    const v2, 0x3f59999a    # 0.85f

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_19
    add-int/2addr v1, v2

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    check-cast v0, Lhuj;

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

    :goto_1c
    cmpl-float p0, v1, p0

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

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

    :goto_1e
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1f
    const v2, 0x7f0701a4

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

    :goto_20
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_21
    iget-object v2, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->c:Landroid/widget/CheckBox;

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v2}, Landroid/widget/CheckBox;->getMeasuredWidth()I

    move-result v2

    nop

    nop

    :goto_23
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->b:Loyn;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_25
    move v0, v1

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_26
    goto/32 :goto_3d

    nop

    :goto_27
    check-cast v1, Lhuj;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_28
    goto/16 :goto_3a

    nop

    :goto_29
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    add-int/2addr v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

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

    :goto_2c
    const/4 v2, 0x1

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

    :goto_2d
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object v1, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->b:Loyn;

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

    :goto_30
    add-int v1, v0, v0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_31
    if-ne v0, v2, :cond_3

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    :cond_3
    goto/32 :goto_41

    nop

    nop

    nop

    :goto_32
    if-gez p0, :cond_4

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_33
    const v0, 0xf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_34
    mul-float/2addr p0, v2

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

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

    :goto_36
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iget-object v2, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->c:Landroid/widget/CheckBox;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_38
    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->getMeasuredHeight()I

    move-result p0

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

    :goto_3c
    goto/32 :goto_2e

    nop

    :goto_3d
    goto/32 :goto_24

    nop

    nop

    :goto_3e
    const v2, 0x7f0701a9

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    if-nez v1, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_5
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_40
    const v1, 0x16

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    const/4 v2, 0x2

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_42
    check-cast v1, Loxv;

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

    :goto_43
    const/4 v1, 0x0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_44
    goto :goto_3a

    nop

    nop

    nop

    :goto_45
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_46
    if-eqz v2, :cond_6

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    mul-float/2addr p0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_48
    add-int/2addr v1, v2

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

    :goto_49
    return p0

    nop

    nop

    nop

    nop

    :goto_4a
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_4c
    invoke-virtual {v0}, Lhuj;->ordinal()I

    move-result v0

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_4d
    int-to-float p0, v0

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

    :goto_4e
    add-int/2addr v3, v3

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d(Lhul;F)V
    .locals 5

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const v0, 0x1a

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-float v4, v1, v3

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

    :goto_5
    cmpl-float v4, p2, v2

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_6
    const/high16 v2, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_7
    sub-int/2addr v1, v2

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

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_a
    const v2, 0x7f0701ad

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_b
    const-string p1, "Invalid min/max"

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_c
    throw p0

    nop

    :goto_d
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x16

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

    :goto_11
    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

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

    nop

    :goto_12
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p1, v0}, Lhul;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_15
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_16
    mul-float/2addr v4, v2

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

    :goto_17
    int-to-float v3, v3

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->a()I

    move-result v3

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

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

    :goto_1a
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2c

    nop

    nop

    :goto_1b
    const p2, 0x3c23d70a    # 0.01f

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_1c
    int-to-float v2, v2

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1d
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

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

    :goto_1e
    cmpg-float v4, v1, v3

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_1f
    sub-int/2addr v2, v3

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

    :goto_20
    if-gez v4, :cond_0

    nop

    goto/32 :goto_d

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

    :goto_21
    const v1, 0x800015

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_22
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_23
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_24
    if-gez v4, :cond_1

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

    :cond_1
    goto/32 :goto_26

    nop

    nop

    :goto_25
    sub-float p0, p2, p0

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_26
    cmpl-float v4, v1, v3

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_27
    cmpg-float v4, p2, v3

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

    :goto_28
    if-lez v4, :cond_2

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_29
    if-gtz p0, :cond_3

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_2a
    div-int/lit8 v2, v2, 0x2

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    if-lez v3, :cond_4

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_4
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_2d
    cmpl-float p0, p0, p2

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_2e
    float-to-int v2, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    cmpl-float v3, v1, v2

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_34

    nop

    :goto_31
    new-instance p1, Ljava/lang/StringBuilder;

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

    :goto_32
    iget v3, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->o:I

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_13

    nop

    :goto_34
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    sub-float/2addr v4, v2

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_36
    if-gez v4, :cond_5

    nop

    goto/32 :goto_9

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

    :goto_37
    iget v2, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->p:I

    nop

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

    :goto_38
    const/high16 v3, 0x40000000    # 2.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_39
    mul-float/2addr v4, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

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

    :goto_3b
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {p1, p2}, Lhul;->a(F)V

    goto/32 :goto_1b

    nop

    nop

    :goto_3d
    sub-float/2addr v2, p2

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_3e
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    add-float/2addr v4, v3

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_40
    if-lez v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_33

    nop

    :goto_41
    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->a()I

    move-result v2

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_42
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_44
    iget p0, p1, Lhul;->d:F

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_45
    invoke-virtual {p1}, Lhul;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_46
    iget v1, p1, Lhul;->e:F

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-direct {p0, v2, v1}, Lcom/google/android/apps/camera/evcomp/EvCompView;->d116db4599d9ddc8c35e61366a4f4967m(IF)I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_48
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_49
    div-float/2addr v2, v3

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

    :goto_4a
    const-string v0, "Fraction is not illegal: "

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_4b
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop
.end method

.method public final e(Lnbh;)V
    .locals 1

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0, p1}, Lnzk;->ag(Landroid/view/View;Lnbh;)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1
    return-void

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
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->g:Lhul;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {p0, p1}, Lnzk;->ag(Landroid/view/View;Lnbh;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_6
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v0, p1}, Lnzk;->ag(Landroid/view/View;Lnbh;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->h:Lhul;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->a:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_a
    invoke-static {v0, p1}, Lnzk;->ag(Landroid/view/View;Lnbh;)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->d:Landroid/widget/ImageButton;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_c
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->c:Landroid/widget/CheckBox;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop
.end method

.method public final f(F)V
    .locals 2

    goto/32 :goto_6

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_e

    nop

    :goto_2
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_4
    cmpl-float v0, p1, v0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x19

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_9
    if-gez v0, :cond_1

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

    :cond_1
    goto/32 :goto_17

    nop

    nop

    :goto_a
    goto/32 :goto_2

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_c
    cmpg-float v0, p1, v0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_d
    throw p0

    nop

    :goto_e
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_10
    const v1, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_12
    const/high16 v0, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    return-void

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const-string v1, "Fraction is not illegal: "

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_17
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->g:Lhul;

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
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1

    nop

    :goto_19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0, v0, p1}, Lcom/google/android/apps/camera/evcomp/EvCompView;->d(Lhul;F)V

    goto/32 :goto_13

    nop

    nop
.end method

.method public final g(F)V
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

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
    iget-object p0, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->e:Lcom/google/android/apps/camera/evcomp/EvCompSlider;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_3
    const v0, 0x15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_4
    invoke-static {v0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->p(F)F

    move-result v0

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_5
    if-nez p1, :cond_0

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
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p1, p1, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    :goto_9
    goto/32 :goto_15

    nop

    nop

    :goto_a
    const v1, 0x7f1401c0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1, v0}, Lhuj;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_d
    const v1, 0x7f1400bd

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

    :goto_e
    iget v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->j:F

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

    :goto_f
    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput p1, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->j:F

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

    :goto_11
    check-cast p1, Lhuj;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {v0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->p(F)F

    move-result v0

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p1, v1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_14
    filled-new-array {v0}, [Ljava/lang/Object;

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

    :goto_15
    goto/32 :goto_1e

    nop

    :goto_16
    if-lez v0, :cond_1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1d

    nop

    :goto_17
    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/16 :goto_1

    nop

    nop

    :goto_19
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object p1, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->b:Loyn;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->j:F

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    check-cast p1, Loxv;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_20
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_21
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

    :goto_22
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_23
    const v1, 0x4

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_24
    sget-object v0, Lhuj;->a:Lhuj;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop
.end method

.method public final h(F)V
    .locals 2

    goto/32 :goto_23

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_1
    check-cast v0, Loxv;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_2
    invoke-virtual {p0, v0, p1}, Lcom/google/android/apps/camera/evcomp/EvCompView;->d(Lhul;F)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    check-cast v0, Lhuj;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_5
    cmpl-float v0, p1, v0

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

    :goto_6
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_7
    if-gez v0, :cond_0

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

    :cond_0
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    sget-object v1, Lhuj;->a:Lhuj;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_9
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_a
    invoke-virtual {v0, v1}, Lhuj;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_b
    const/4 v1, 0x0

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

    :goto_c
    return-void

    nop

    :goto_d
    goto/32 :goto_1e

    nop

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
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_10
    throw p0

    nop

    nop

    :goto_11
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_19

    nop

    nop

    :goto_14
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->h:Lhul;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->b:Loyn;

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

    :goto_16
    const v1, 0x7

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_11

    nop

    :goto_19
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1a
    sget-object v1, Lcom/google/android/libraries/performance/primes/transmitter/clearcut/itlF/rqoPuzOSTbBmB;->yAwSRExpQbsYKJ:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1b
    iget-object v0, v0, Loxv;->d:Ljava/lang/Object;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    :cond_1
    goto/32 :goto_18

    nop

    :goto_1d
    const/high16 v0, 0x3f800000    # 1.0f

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

    :goto_1e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1f
    add-int v0, v0, v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_20
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_21
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_2
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_22
    cmpg-float v0, p1, v0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const v0, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_24
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_3
    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final i(F)V
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    const v1, 0x7

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

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

    :goto_2
    return-void

    nop

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
    rem-int v0, v0, v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {v0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->p(F)F

    move-result v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    iput p1, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->k:F

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

    :goto_7
    iget v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->k:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_11

    nop

    nop

    :goto_9
    const v0, 0x12

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_b
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_c
    const v1, 0x7f140624

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_d
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p0, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->f:Lcom/google/android/apps/camera/evcomp/EvCompSlider;

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

    :goto_f
    add-int v0, v0, v1

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
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
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

    :goto_13
    invoke-virtual {p1, v1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop
.end method

.method public final j()V
    .locals 5

    goto/32 :goto_25

    nop

    nop

    :goto_0
    iget-object p0, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->c:Landroid/widget/CheckBox;

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

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    goto/32 :goto_18

    nop

    nop

    :goto_3
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

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

    :goto_4
    check-cast v2, Loxv;

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_5
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

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

    :goto_6
    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->b()I

    move-result v2

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v3, 0x2

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v2, 0x7f0701ad

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

    :goto_9
    iget-object v2, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->c:Landroid/widget/CheckBox;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->b()I

    move-result v2

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_b
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x800015

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_d
    add-int/2addr v2, v1

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

    :goto_e
    div-int/2addr v2, v3

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_f
    div-int/2addr v1, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0, v0}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_11
    goto/16 :goto_2a

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_13
    add-int/2addr v2, v1

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

    :goto_14
    iget-object v2, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->b:Loyn;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_15
    add-int/2addr v1, v2

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v1, 0x3

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_17
    if-ne v2, v3, :cond_0

    nop

    nop

    nop

    goto/32 :goto_21

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

    :goto_18
    goto/32 :goto_1f

    nop

    nop

    :goto_19
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_1e

    nop

    :goto_1a
    div-int/2addr v2, v3

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

    :goto_1b
    iget v2, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->o:I

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v2}, Landroid/widget/CheckBox;->getMeasuredWidth()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1d
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_1e
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto :goto_2a

    nop

    nop

    :goto_21
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget v1, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->o:I

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_23
    if-ne v2, v4, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_2
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

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

    :goto_25
    const v0, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_26
    const v2, 0x7f0701a4

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

    :goto_27
    const/4 v1, -0x2

    nop

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

    :goto_28
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_29
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2b
    const/4 v4, 0x1

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_2c
    sub-int/2addr v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_2d
    check-cast v2, Lhuj;

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

    :goto_2e
    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_30
    iget v1, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->o:I

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

    :goto_31
    add-int/2addr v2, v1

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget-object v2, v2, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_34
    rem-int v0, v0, v1

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

    :goto_35
    if-nez v2, :cond_3

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_36
    add-int/2addr v2, v1

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v2}, Lhuj;->ordinal()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_38
    div-int/2addr v2, v3

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

    :goto_39
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    nop

    goto/32 :goto_2f

    nop

    nop

    nop
.end method

.method public final k()V
    .locals 5

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget v3, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->r:I

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v3, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->b:Loyn;

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int/2addr v2, v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget v1, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->o:I

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

    :goto_6
    add-int/2addr v2, v1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_7
    if-ne v3, v2, :cond_0

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_8
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    nop

    :goto_9
    goto/32 :goto_20

    nop

    nop

    :goto_a
    iget-object v1, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->d:Landroid/widget/ImageButton;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_35

    nop

    :goto_c
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v3}, Lhuj;->ordinal()I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_f
    add-int/2addr v3, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

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
    goto :goto_9

    nop

    nop

    :goto_12
    goto/32 :goto_19

    nop

    nop

    :goto_13
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_14
    div-int/2addr v1, v2

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_15
    if-ne v3, v4, :cond_1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_16
    const/4 v1, -0x2

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_17
    check-cast v3, Lhuj;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_18
    add-int v0, v0, v1

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

    :goto_19
    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->b()I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1b
    div-int/2addr v1, v2

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v1

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    add-int/2addr v3, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget v1, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->o:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_20
    iget-object p0, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->d:Landroid/widget/ImageButton;

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_21
    const/4 v2, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_22
    div-int/2addr v3, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_23
    const v3, 0x7f0701a6

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_24
    sub-int/2addr v3, v1

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_25
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_26
    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    sub-int/2addr v3, v4

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_28
    const v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_29
    div-int/2addr v3, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_2a
    const/4 v4, 0x1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v3, v3, Loxv;->d:Ljava/lang/Object;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_2c
    if-nez v3, :cond_2

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto/16 :goto_9

    nop

    :goto_2e
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const v1, 0x1b

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

    :goto_30
    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->b()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_32
    iget v4, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->q:I

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_33
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_b

    nop

    :goto_34
    return-void

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_36
    check-cast v3, Loxv;

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_37
    const v1, 0x800015

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop
.end method

.method public final l()V
    .locals 16

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v2, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->e:Lcom/google/android/apps/camera/evcomp/EvCompSlider;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->getResources()Landroid/content/res/Resources;

    move-result-object v13

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

    nop

    :goto_2
    iget-object v1, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->e:Lcom/google/android/apps/camera/evcomp/EvCompSlider;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    iget-object v3, v3, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_4
    invoke-static {v7, v10}, Ldtz;->d(II)I

    move-result v7

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

    :goto_5
    invoke-virtual {v1, v4}, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_7
    iget-object v2, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->e:Lcom/google/android/apps/camera/evcomp/EvCompSlider;

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

    :goto_8
    iget-object v1, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->e:Lcom/google/android/apps/camera/evcomp/EvCompSlider;

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_9
    goto/16 :goto_6c

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->b()I

    move-result v3

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v2, v5}, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v13, v14, v11}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v13

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_12
    invoke-static {v13, v10}, Ldtz;->d(II)I

    move-result v13

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {v5, v3, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_15
    iget-object v2, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->f:Lcom/google/android/apps/camera/evcomp/EvCompSlider;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_16
    iget-object v2, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->f:Lcom/google/android/apps/camera/evcomp/EvCompSlider;

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const v14, 0x7f060542

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

    :goto_18
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_19
    iget v2, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->o:I

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_1a
    add-int/2addr v3, v2

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

    :goto_1b
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->b()I

    move-result v12

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

    :goto_1d
    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_1e
    const v9, 0x7f0600c5

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v8, v7, v11}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v7

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_20
    div-int/lit8 v3, v3, 0x2

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

    :goto_21
    const v2, 0x800015

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v0, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->e:Lcom/google/android/apps/camera/evcomp/EvCompSlider;

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->b()I

    move-result v3

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v2, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->f:Lcom/google/android/apps/camera/evcomp/EvCompSlider;

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
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v3

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_26
    div-int/lit8 v2, v2, 0x2

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_27
    sget-object v6, Lhuj;->c:Lhuj;

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

    :goto_28
    const v2, 0x800015

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

    :goto_29
    iget v3, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->r:I

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_2a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2b
    iget v4, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->q:I

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-static {v7, v10}, Ldtz;->d(II)I

    move-result v7

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-static {v9, v10}, Ldtz;->d(II)I

    move-result v9

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

    :goto_2e
    invoke-virtual {v1}, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->requestLayout()V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const v0, 0x1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_30
    add-int v0, v0, v1

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

    :goto_31
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v15, v9, v11}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v9

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_33
    const v7, 0x7f060546

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_34
    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-static {v5, v10}, Ldtz;->d(II)I

    move-result v5

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_36
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_37
    move-object/from16 v0, p0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v9, v14, v11}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v9

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

    :goto_39
    add-int/2addr v3, v3

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3a
    const v1, 0x14

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_3b
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_3c
    sub-int/2addr v1, v5

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_3d
    iget-object v3, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->m:Landroid/view/accessibility/AccessibilityManager;

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_3e
    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

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

    :goto_3f
    const/4 v11, 0x0

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

    :goto_40
    invoke-virtual {v0}, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->invalidate()V

    goto/32 :goto_4e

    nop

    nop

    :goto_41
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->b()I

    move-result v2

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    if-nez v3, :cond_1

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_1
    goto/32 :goto_29

    nop

    nop

    :goto_43
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->b()I

    move-result v5

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

    :goto_44
    invoke-direct {v4, v3, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_45
    check-cast v3, Lhuj;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-virtual {v2, v8, v9, v7, v6}, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->a(IIII)V

    goto/32 :goto_51

    nop

    nop

    :goto_47
    sub-int/2addr v5, v4

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_48
    iget v5, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->r:I

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {v2, v3, v5, v7, v6}, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->a(IIII)V

    goto/32 :goto_41

    nop

    nop

    :goto_4a
    invoke-virtual {v3, v6}, Lhuj;->equals(Ljava/lang/Object;)Z

    move-result v3

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

    :goto_4b
    invoke-virtual {v2, v12, v8, v13, v9}, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->a(IIII)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    iget-object v3, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->b:Loyn;

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

    nop

    nop

    :goto_4d
    iget-object v2, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->f:Lcom/google/android/apps/camera/evcomp/EvCompSlider;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_4e
    return-void

    nop

    :goto_4f
    goto/32 :goto_1b

    nop

    nop

    :goto_50
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_51
    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

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

    :goto_52
    invoke-virtual {v10, v6, v11}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v6

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

    nop

    :goto_53
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->b()I

    move-result v6

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_54
    const v8, 0x7f06053e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_55
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->b()I

    move-result v8

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

    :goto_56
    goto :goto_60

    nop

    nop

    nop

    :goto_57
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_59
    invoke-virtual {v2}, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->requestLayout()V

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_5a
    invoke-static {v8, v10}, Ldtz;->d(II)I

    move-result v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_5b
    const/16 v10, 0xdb

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->getResources()Landroid/content/res/Resources;

    move-result-object v13

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

    :goto_5d
    if-nez v3, :cond_2

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :cond_2
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    div-int/lit8 v5, v5, 0x2

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    nop

    :goto_60
    goto/32 :goto_65

    nop

    nop

    :goto_61
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_62
    const v2, 0x7f0701ad

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_63
    invoke-virtual {v2}, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->invalidate()V

    goto/32 :goto_56

    nop

    nop

    :goto_64
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_66
    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    invoke-virtual {v12, v7, v11}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v7

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_68
    const v6, 0x7f0600c6

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_69
    invoke-virtual {v8, v6, v11}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v6

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_6a
    check-cast v3, Loxv;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6b
    iget v3, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->r:I

    nop

    :goto_6c
    goto/32 :goto_2b

    nop

    nop

    :goto_6d
    invoke-virtual {v5, v8, v11}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

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

    :goto_6e
    add-int/2addr v1, v2

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

    :goto_6f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_70
    invoke-virtual {v13, v8, v11}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v8

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

    nop
.end method

.method public final m(Landroid/view/View;Landroid/view/MotionEvent;)[F
    .locals 17

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sub-float/2addr v8, v7

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sget-object v11, Lhuj;->c:Lhuj;

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_4
    invoke-virtual {v9}, Lrss;->h()Z

    move-result v2

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

    :goto_5
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    :goto_6
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

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

    :goto_7
    const/4 v6, 0x1

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

    :goto_8
    check-cast v5, Lhul;

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    :goto_9
    check-cast v10, Lhuj;

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

    :goto_a
    move-object/from16 v6, v16

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

    :goto_b
    goto/16 :goto_47

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_d
    iput v7, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->s:F

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_e
    check-cast v5, Ljava/lang/Integer;

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

    :goto_f
    add-int/lit8 v14, v14, 0x1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget v10, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->o:I

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_11
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

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

    nop

    :goto_12
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_13
    const/4 v4, 0x0

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v10, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->a:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v15}, Lhul;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_16
    add-float/2addr v8, v9

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_17
    move-object/from16 v10, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_18
    if-eqz v5, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    :cond_0
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_19
    int-to-float v8, v8

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_29

    nop

    nop

    :goto_1c
    check-cast v10, Loxv;

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    :goto_1d
    move v14, v4

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    sget-object v9, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v5, v2}, Lhul;->a(F)V

    goto/32 :goto_13

    nop

    nop

    :goto_21
    goto :goto_1b

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_24
    if-nez v10, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :cond_1
    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_25
    aput v5, v3, v4

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_26
    invoke-direct {v0, v8, v9}, Lcom/google/android/apps/camera/evcomp/EvCompView;->d116db4599d9ddc8c35e61366a4f4967m(IF)I

    move-result v8

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    :goto_27
    invoke-direct {v0, v8, v5}, Lcom/google/android/apps/camera/evcomp/EvCompView;->ccb4c19b7dbd16be9d2a43125797659dm(ILhul;)F

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_28
    if-eq v7, v2, :cond_2

    nop

    goto/32 :goto_22

    nop

    nop

    :cond_2
    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_2a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->requestLayout()V

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_2b
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    :goto_2c
    invoke-virtual {v7}, Lnbh;->d()Z

    move-result v7

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

    nop

    :goto_2d
    if-nez v7, :cond_3

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_3
    goto/32 :goto_78

    nop

    nop

    :goto_2e
    float-to-int v8, v8

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    :goto_2f
    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_4c

    nop

    nop

    :goto_31
    if-eqz v16, :cond_4

    nop

    nop

    nop

    goto/32 :goto_59

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

    :goto_32
    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    nop

    goto/32 :goto_86

    nop

    nop

    :goto_33
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->invalidate()V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_35
    if-le v10, v6, :cond_5

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1f

    nop

    nop

    :goto_36
    sub-int/2addr v4, v10

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v9}, Lrss;->c()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_38
    iget-object v2, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->a:Ljava/util/ArrayList;

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_39
    if-nez v8, :cond_6

    nop

    goto/32 :goto_6e

    nop

    nop

    :cond_6
    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_3a
    aput v5, v3, v6

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_3b
    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iput v1, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->s:F

    nop

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_99

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {v10, v11}, Lhuj;->equals(Ljava/lang/Object;)Z

    move-result v10

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_3f
    goto/16 :goto_88

    nop

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_87

    nop

    nop

    :goto_41
    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_42
    add-int/2addr v4, v9

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :goto_43
    iget v10, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_44
    const v0, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_45
    move-object/from16 v1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    :goto_46
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    nop

    :goto_47
    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    if-lt v14, v13, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :cond_7
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    if-eq v1, v4, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :cond_8
    goto/32 :goto_12

    nop

    nop

    :goto_4a
    invoke-virtual {v1}, Lnbh;->d()Z

    move-result v1

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    move v4, v6

    nop

    goto/32 :goto_80

    nop

    nop

    :goto_4c
    move-object/from16 v0, p0

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_4d
    invoke-virtual {v4, v5}, Lhul;->a(F)V

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_4e
    goto/16 :goto_9f

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    goto/32 :goto_14

    nop

    nop

    :goto_50
    goto/16 :goto_1e

    nop

    nop

    nop

    nop

    :goto_51
    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    sget-object v12, Lrsa;->a:Lrsa;

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    :goto_53
    iget v9, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->s:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_54
    if-eqz v7, :cond_9

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_93

    nop

    nop

    :goto_55
    iget-object v7, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->i:Lnbh;

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_56
    invoke-virtual {v5}, Lhul;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    move-object v5, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_58
    goto/16 :goto_8a

    nop

    nop

    nop

    nop

    nop

    :goto_59
    goto/32 :goto_89

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-direct {v0, v5, v4}, Lcom/google/android/apps/camera/evcomp/EvCompView;->ccb4c19b7dbd16be9d2a43125797659dm(ILhul;)F

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_5b
    iget v8, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_5c
    check-cast v15, Lhul;

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    check-cast v4, Lhul;

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_5e
    sub-float/2addr v8, v9

    nop

    nop

    nop

    nop

    :goto_5f
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_60
    add-int v0, v0, v1

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

    :goto_61
    const/4 v4, 0x1

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    :goto_62
    invoke-virtual {v8, v9}, Lnbh;->equals(Ljava/lang/Object;)Z

    move-result v8

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_63
    iget v9, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->s:F

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_64
    add-float/2addr v8, v7

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_65
    const/4 v4, 0x0

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

    :goto_66
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

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

    :goto_67
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

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

    :goto_68
    aput v2, v3, v4

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

    :goto_69
    if-nez v4, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_6a
    const/high16 v5, -0x40800000    # -1.0f

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    const v1, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_6c
    sget-object v9, Lrsa;->a:Lrsa;

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    goto/16 :goto_5f

    nop

    nop

    nop

    :goto_6e
    goto/32 :goto_5b

    nop

    nop

    :goto_6f
    if-nez v2, :cond_b

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :cond_b
    goto/32 :goto_38

    nop

    nop

    :goto_70
    invoke-static {v4}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v12

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_71
    iput v1, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->s:F

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_72
    invoke-direct {v0, v4, v10}, Lcom/google/android/apps/camera/evcomp/EvCompView;->d116db4599d9ddc8c35e61366a4f4967m(IF)I

    move-result v4

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    :goto_73
    check-cast v10, Landroid/widget/FrameLayout$LayoutParams;

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    :goto_74
    if-lt v4, v10, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    :cond_c
    goto/32 :goto_82

    nop

    nop

    :goto_75
    iget v8, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

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

    :goto_76
    iget v9, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

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

    :goto_77
    int-to-float v8, v8

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_78
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_79
    iget-object v10, v10, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    goto/16 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    goto/32 :goto_83

    nop

    nop

    :goto_7c
    move-object/from16 p2, v10

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_7d
    iget-object v8, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->i:Lnbh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    :goto_7e
    const/4 v2, 0x2

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

    :goto_7f
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_80
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_81
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_82
    iget v4, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_83
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_84
    new-array v3, v2, [F

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_85
    iput v4, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_86
    iget v4, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    nop

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

    :goto_87
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    nop

    nop

    nop

    :goto_88
    goto/32 :goto_71

    nop

    nop

    nop

    :goto_89
    move-object/from16 p2, v10

    nop

    nop

    :goto_8a
    goto/32 :goto_f

    nop

    nop

    :goto_8b
    aput v5, v3, v4

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_8c
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_8d
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

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

    :goto_8e
    invoke-virtual {v15, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v16

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    iget v10, v15, Lhul;->e:F

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

    :goto_90
    goto/16 :goto_9f

    nop

    nop

    nop

    nop

    nop

    :goto_91
    goto/32 :goto_56

    nop

    nop

    nop

    :goto_92
    if-nez v1, :cond_d

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_7f

    nop

    nop

    :goto_93
    iget-object v1, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->i:Lnbh;

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_94
    iget-object v11, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->a:Ljava/util/ArrayList;

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

    nop

    nop

    :goto_95
    sub-int v9, v8, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    :goto_96
    sget-object v9, Lnbh;->c:Lnbh;

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_97
    const/4 v6, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_98
    iget v9, v5, Lhul;->e:F

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_99
    return-object v3

    nop

    nop

    nop

    :goto_9a
    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    if-lez v0, :cond_e

    nop

    goto/32 :goto_30

    nop

    nop

    :cond_e
    goto/32 :goto_2f

    nop

    :goto_9c
    iget-object v10, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->b:Loyn;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_9d
    iput v8, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    :goto_9e
    move-object v9, v12

    nop

    :goto_9f
    goto/32 :goto_d

    nop

    nop

    nop
.end method

.method public final n(Lhum;IIII)Lhul;
    .locals 5

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_0
    invoke-direct {p1, v0, v3}, Lhuk;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_9

    nop

    nop

    :goto_1
    div-int/2addr v1, v3

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Lhul;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_3
    sget-object p2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_4
    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

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
    invoke-virtual {v0}, Lhul;->getResources()Landroid/content/res/Resources;

    move-result-object p2

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

    :goto_6
    const p4, 0x7f0701ab

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_7
    iget v2, v0, Lhul;->b:I

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

    nop

    :goto_8
    invoke-virtual {v0, p2}, Lhul;->setElevation(F)V

    goto/32 :goto_3

    nop

    nop

    :goto_9
    invoke-virtual {v0, p1}, Lhul;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    goto/32 :goto_10

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0, p1}, Lhul;->setFocusable(Z)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

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

    nop

    nop

    :goto_d
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {v2, p4, v1}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_10
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_11
    int-to-float p2, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0, p2}, Lhul;->setImageResource(I)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/4 p1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0, p1}, Lhul;->setTag(Ljava/lang/Object;)V

    goto/32 :goto_14

    nop

    nop

    :goto_16
    new-instance v2, Landroid/graphics/drawable/InsetDrawable;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->getContext()Landroid/content/Context;

    move-result-object v1

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_18
    invoke-virtual {v3, p4, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_e

    nop

    nop

    :goto_1a
    invoke-virtual {v0, v2}, Lhul;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1b
    const v0, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v0, p2}, Lhul;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 p2, -0x2

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_1e
    iget v1, v0, Lhul;->c:I

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

    nop

    :goto_1f
    add-int v0, v0, v1

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

    :goto_20
    invoke-virtual {v0, p1}, Lhul;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/32 :goto_32

    nop

    nop

    :goto_21
    const v1, 0x20

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v0, p1}, Lhul;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const/4 v3, 0x2

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

    :goto_24
    invoke-virtual {p0, p3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-direct {p1, p2, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v0}, Lhul;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_27
    new-instance p1, Lhuk;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_28
    invoke-virtual {v0}, Lhul;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_29
    sub-int/2addr v1, v2

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_2a
    const/4 v4, 0x0

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

    :goto_2b
    iput p1, v0, Lhul;->e:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_2c
    new-instance v0, Lhul;

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

    :goto_2d
    invoke-virtual {p1, p5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_2e
    invoke-direct {v0, v1}, Lhul;-><init>(Landroid/content/Context;)V

    goto/32 :goto_1e

    nop

    nop

    :goto_2f
    return-object v0

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_31
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_32
    const/high16 p1, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop
.end method

.method protected final onFinishInflate()V
    .locals 2

    goto/32 :goto_8

    nop

    nop

    :goto_0
    const v0, 0x7f0b01a0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->f:Lcom/google/android/apps/camera/evcomp/EvCompSlider;

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
    goto/32 :goto_1c

    nop

    :goto_4
    const v0, 0x7f0b01a2

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    const v1, 0x15

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

    :goto_6
    return-void

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
    const v0, 0x1f

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x7f0b0283

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_b
    check-cast v0, Lcom/google/android/apps/camera/evcomp/EvCompSlider;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_c
    check-cast v0, Lcom/google/android/apps/camera/evcomp/EvCompSlider;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_d
    iput-object v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->c:Landroid/widget/CheckBox;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_e
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {v0, v1}, Lhun;-><init>(I)V

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_11
    const v0, 0x7f0b019f

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v1, 0x0

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

    :goto_13
    iput-object v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->d:Landroid/widget/ImageButton;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_14
    check-cast v0, Landroid/widget/CheckBox;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_15
    iget-object v1, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->e:Lcom/google/android/apps/camera/evcomp/EvCompSlider;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_18
    add-int v0, v0, v1

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

    :goto_19
    check-cast v0, Landroid/widget/ImageButton;

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

    :goto_1a
    new-instance v0, Lhun;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1d
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :cond_0
    goto/32 :goto_1b

    nop

    :goto_1e
    iput-object v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->f:Lcom/google/android/apps/camera/evcomp/EvCompSlider;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_1f
    iput-object v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->e:Lcom/google/android/apps/camera/evcomp/EvCompSlider;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_21
    rem-int v0, v0, v1

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
.end method

.method protected final onLayout(ZIIII)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    const/4 p2, 0x1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

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

    :goto_3
    iget-object p1, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    :goto_5
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

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
    if-nez p2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

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

    :goto_9
    iget-object p2, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_a
    goto :goto_7

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/evcomp/EvCompView;->e(Lnbh;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p2

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_f
    if-eqz p2, :cond_1

    nop

    nop

    goto/32 :goto_13

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

    :goto_10
    iget-object p1, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 p2, 0x0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_12
    goto :goto_7

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_14
    iget-object p2, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->m:Landroid/view/accessibility/AccessibilityManager;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_15
    iget-object p1, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->i:Lnbh;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object p2, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/32 :goto_a

    nop

    nop

    :goto_18
    if-eqz p1, :cond_2

    nop

    nop

    goto/32 :goto_7

    nop

    nop

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
    if-nez p2, :cond_3

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_16

    nop

    nop
.end method

.method public final onMeasure(II)V
    .locals 0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_0
    sget-object p2, Llyr;->aU:Llze;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->k()V

    :goto_2
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->l()V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1, p2}, Llyv;->b(Llyp;)Ljava/lang/Object;

    move-result-object p1

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

    :goto_7
    check-cast p1, Ljava/lang/Boolean;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->j()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p1, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->l:Llyv;

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

    :goto_a
    return-void

    nop

    nop

    nop

    nop

    :goto_b
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto/32 :goto_9

    nop

    nop

    nop
.end method

.method public final setVisibility(I)V
    .locals 1

    goto/32 :goto_b

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
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    check-cast v0, Lhul;

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
    invoke-virtual {v0, p1}, Lhul;->setVisibility(I)V

    goto/32 :goto_5

    nop

    nop

    :goto_5
    goto :goto_8

    nop

    :goto_6
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_9
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_a
    iget-object p0, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->a:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_b
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop
.end method
