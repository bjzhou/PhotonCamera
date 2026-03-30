.class public Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;
.super Lil;
.source "PG"


# static fields
.field private static final i:Lsdb;


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final b:Landroid/content/res/Resources;

.field public final c:I

.field public final d:I

.field public final e:Ljava/util/concurrent/atomic/AtomicReference;

.field public f:I

.field public g:F

.field public h:Landroid/widget/SeekBar;

.field private final j:I

.field private k:Z

.field private l:Z

.field private m:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const-string v0, "com.google.android.apps.camera.zoomui.view.ZoomKnob"

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sput-object v0, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->i:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_3

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

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    goto/32 :goto_15

    nop

    nop

    :goto_0
    check-cast p2, Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

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

    :goto_2
    invoke-virtual {p1, p2}, Lhoh;->d(Lhmn;)Lj$/util/Optional;

    move-result-object p2

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_3
    iput-boolean p1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->k:Z

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_21

    nop

    nop

    :goto_5
    new-instance p2, Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_6
    invoke-interface {p1}, Lfwm;->b()Lhoh;

    move-result-object p1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p2, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_8
    sget-object p2, Lhmq;->af:Lhmn;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_9
    iput p2, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->c:I

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_a
    invoke-direct {p2, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_c
    iput-boolean p2, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->l:Z

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_e
    invoke-direct {p0, p1, p2}, Lil;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p1, p2}, Lhoh;->p(Lhmn;)Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x7f070a82

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_29

    nop

    :goto_12
    const v0, 0x7f070aa3

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

    :goto_13
    iput-object p2, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->e:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_14
    iput-boolean v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->l:Z

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_15
    const v0, 0x7

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

    :goto_16
    sget-object p2, Lhnz;->a:Lhmo;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_17
    iput-object p2, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->b:Landroid/content/res/Resources;

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

    :goto_18
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_19
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1a
    iput p2, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->j:I

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_1b
    instance-of p2, p1, Lfwm;

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p1, p2}, Lhoh;->p(Lhmn;)Z

    move-result p2

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    div-int/lit8 p2, p2, 0x2

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1f
    const v0, 0x7f070a87

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_20
    check-cast p1, Lfwm;

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

    :goto_21
    return-void

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_23
    sget-object p2, Lhnz;->e:Lhmn;

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

    :goto_24
    iput-boolean v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->k:Z

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

    :goto_25
    invoke-virtual {p2}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p2

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
    sub-int/2addr p2, v0

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_27
    iput p2, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->m:F

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_28
    if-nez p2, :cond_1

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

    :cond_1
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_22

    nop

    nop

    :goto_2a
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_2b
    iput p2, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->d:I

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

    :goto_2c
    const v1, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_2d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2e
    sget-object v1, Lnwy;->b:Lnwy;

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

    :goto_2f
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_30
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_31
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_32
    invoke-direct {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_34
    sget-object p2, Lhnz;->f:Lhmn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

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
.end method


# virtual methods
.method public final a(FF)F
    .locals 3

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_1
    cmpg-float p0, p1, v1

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

    :goto_2
    const-string p2, "Not a supported normalization setting: "

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_3
    if-ne v0, v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return p1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_6
    const/high16 v1, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_8
    throw p1

    nop

    nop

    :goto_9
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

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

    :goto_c
    check-cast v0, Lnwy;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return p1

    nop

    nop

    :goto_e
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_f
    return v1

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_11
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

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

    :goto_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

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

    :goto_13
    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_14
    if-ltz p0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_26

    nop

    nop

    :goto_15
    const/4 v1, 0x2

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->e:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_17
    if-ne v0, v2, :cond_2

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

    :cond_2
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_18
    if-eq v0, p2, :cond_3

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_3
    goto/32 :goto_4

    nop

    nop

    :goto_19
    invoke-virtual {v0}, Lnwy;->ordinal()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v1, 0x3

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1b
    const/4 v2, 0x1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1d
    if-ne v0, v1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_4
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-nez v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_10

    nop

    :goto_21
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_22
    const/4 p2, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_23
    iget-object p0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->e:Ljava/util/concurrent/atomic/AtomicReference;

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

    :goto_24
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_26
    return v1

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_28
    const v1, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_29
    return p2

    nop

    :goto_2a
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_2b
    if-lez v0, :cond_6

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_20

    nop
.end method

.method public final b(FFF)Ljava/lang/String;
    .locals 4

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    float-to-int p0, v0

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_1
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_2
    int-to-double p2, p2

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

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_34

    nop

    :goto_4
    invoke-virtual {v0, p1}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    goto/32 :goto_a

    nop

    nop

    :goto_5
    invoke-virtual {p3, p2, v0}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_6
    const/4 v1, 0x0

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_7
    cmpg-float v1, v0, v1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p3, v0, v1}, Ljava/math/BigDecimal;-><init>(D)V

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_9
    double-to-float p2, p2

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0, p2, p3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_b
    const-string v2, "Zoom ratio: %g, Min zoom: %g, BaseZoom: %g"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_14

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

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_e
    invoke-direct {p0, p1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    goto/32 :goto_57

    nop

    nop

    :goto_f
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_10
    if-eqz v1, :cond_1

    nop

    goto/32 :goto_21

    nop

    nop

    :cond_1
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_11
    const-string v1, "\u00d7"

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
    cmpg-float p1, p1, v1

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_13
    iget-boolean v1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->l:Z

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_14
    return-object p0

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_53

    nop

    nop

    :goto_16
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_17
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_5b

    nop

    nop

    :goto_18
    invoke-virtual {v1}, Lscs;->c()Lsdo;

    move-result-object v0

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

    :goto_19
    invoke-interface {v2, v3, v0}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1a
    const/16 v1, 0x14cd

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_1b
    invoke-virtual {v1}, Lscs;->c()Lsdo;

    move-result-object v2

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-interface {v2, v3}, Lscz;->M(I)Lsdo;

    move-result-object v2

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    mul-float/2addr v0, p2

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 v1, 0x0

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

    :goto_20
    if-lez v1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :cond_3
    :goto_21
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_23
    const-string v3, "Invalid zoom value: %g"

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_24
    iget-boolean v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->k:Z

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_25
    sget-object v1, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->i:Lsdb;

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_26
    div-float/2addr v0, v2

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_27
    const-string p1, "0"

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

    :goto_28
    const v1, 0x16

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_29
    div-float v0, p1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_2a
    cmpl-float p0, v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-interface {v0, v2, v1, p2, p3}, Lscz;->G(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p0, p1, p2}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object p0

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

    :goto_2d
    if-nez v1, :cond_4

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    cmpl-float p0, v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_2f
    const/high16 p2, 0x42c80000    # 100.0f

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

    :goto_30
    move v0, p1

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_2f

    nop

    nop

    :goto_32
    goto/16 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_36
    int-to-float p0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_37
    if-ltz p0, :cond_5

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_38
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

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

    :goto_39
    const v0, 0x19

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {p2}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide p2

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

    :goto_3b
    long-to-float v0, v2

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    sget-object p1, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    const/high16 v2, 0x41200000    # 10.0f

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

    :goto_3e
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_3f
    check-cast v2, Lscz;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_40
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    new-instance p3, Ljava/math/BigDecimal;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_42
    return-object p0

    nop

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_44
    const/high16 v1, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_45
    if-eqz p0, :cond_6

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :cond_6
    :goto_46
    goto/32 :goto_4c

    nop

    nop

    :goto_47
    const/4 p2, 0x2

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_48
    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

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

    :goto_49
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

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

    :goto_4a
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    new-instance p0, Ljava/text/DecimalFormat;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {p0, p2, p3}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->a(FF)F

    move-result v0

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_50
    if-ltz p1, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_51
    float-to-double v0, p2

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_52
    div-double/2addr p2, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_53
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_54
    sget-object v1, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/ADF/UKeap;->oIKkyWhfTx:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_55
    check-cast v0, Lscz;

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_56
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    invoke-static {p2, p3}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

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

    :goto_58
    iget p0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->m:F

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_59
    mul-double/2addr v2, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_5a
    new-instance v0, Ljava/text/DecimalFormat;

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

    :goto_5b
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    const/16 v3, 0x14cc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_5d
    sget-object p1, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    nop

    nop

    nop

    :goto_5e
    goto/32 :goto_4

    nop

    nop

    :goto_5f
    if-eqz v1, :cond_8

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_48

    nop

    nop

    nop

    :goto_60
    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop
.end method

.method public final c(Z)V
    .locals 4

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_13

    nop

    nop

    :goto_3
    const v1, 0x1b

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_5
    if-ne v3, p1, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

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

    :goto_6
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    div-int/lit8 v1, v1, 0x2

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

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
    iget-object v1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->b:Landroid/content/res/Resources;

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

    :goto_b
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

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
    const v0, 0x18

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

    :goto_d
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_e
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/32 :goto_b

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

    nop

    :goto_10
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_11
    const v3, 0x7f070a82

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

    :goto_12
    if-lez v0, :cond_1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_17

    nop

    :goto_13
    move v1, v2

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_15
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

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

    :goto_16
    goto/32 :goto_18

    nop

    nop

    :goto_17
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_0

    nop

    nop

    :goto_19
    const v2, 0x7f070a86

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1a
    iget v1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->f:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_1b
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

    :goto_1c
    add-int/2addr v2, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1d
    add-int/2addr v2, v1

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

    :goto_1e
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop
.end method

.method public final d(Z)V
    .locals 0

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/16 p1, 0xff

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_4
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

    :goto_5
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->h:Landroid/widget/SeekBar;

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

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-nez p1, :cond_0

    nop

    nop

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

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method

.method public final e(IFFF)V
    .locals 3

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const v0, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p2, p3, p4}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->b(FFF)Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_3
    int-to-float v0, v0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_4
    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    :cond_0
    goto/32 :goto_18

    nop

    :goto_6
    div-int/lit8 v0, v0, 0x2

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

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

    :goto_8
    add-int/2addr p1, v2

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x20

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_a
    int-to-float v0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_b
    goto/32 :goto_19

    nop

    nop

    :goto_c
    mul-float/2addr v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 p1, 0x0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_e
    int-to-float p1, p1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_f
    iget v1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->g:F

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

    :goto_10
    return-void

    nop

    :goto_11
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0, v1}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/32 :goto_2

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_14
    const v2, -0xc350

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->j:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_16
    float-to-int v0, v0

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

    :goto_17
    float-to-int p1, v0

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_11

    nop

    nop

    :goto_19
    goto/32 :goto_15

    nop

    nop

    :goto_1a
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->setText(Ljava/lang/CharSequence;)V

    goto/32 :goto_10

    nop

    nop

    :goto_1b
    const p1, 0x47435000    # 50000.0f

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1c
    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

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

    :goto_1d
    mul-float/2addr v0, p1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1f
    div-float/2addr v0, p1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop
.end method
