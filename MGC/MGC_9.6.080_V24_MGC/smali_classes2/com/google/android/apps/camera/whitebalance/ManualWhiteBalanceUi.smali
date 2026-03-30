.class public Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;
.super Landroid/widget/FrameLayout;
.source "PG"


# instance fields
.field private a:Lnne;

.field private b:Lnbh;

.field private c:Lnbe;

.field private d:Llyv;


# direct methods
.method private final 7ecc92917e9c4556cc19f457ddc41af8m(I)I
    .locals 3

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x7f070542

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return p1

    nop

    :goto_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_4
    add-int/2addr p1, v0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0xd

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

    :goto_8
    add-int/2addr p1, p0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_b
    div-int/lit8 p1, p1, 0x2

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_0

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

    :goto_11
    const v1, 0x2

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_12
    const v2, 0x7f070547

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

    :goto_13
    div-int/lit8 p0, p0, 0x2

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_14
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_15
    const v2, 0x7f070541

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_16
    div-int/lit8 v0, v0, 0x2

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

    :goto_17
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_18
    add-int/2addr p1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;->d:Llyv;

    nop

    nop

    :goto_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
    instance-of p2, p1, Lfwm;

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

    :goto_3
    iput-object p2, p0, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;->a:Lnne;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p2, p0, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;->b:Lnbh;

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_6
    invoke-interface {p1}, Lfwm;->a()Llyv;

    move-result-object p1

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

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-nez p2, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_9
    sget-object p2, Lnne;->a:Lnne;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_a
    check-cast p1, Lfwm;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_b
    sget-object p2, Lnbh;->a:Lnbh;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_c
    iput-object p2, p0, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;->c:Lnbe;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_d
    sget-object p2, Lnbe;->b:Lnbe;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop
.end method


# virtual methods
.method public final a()Landroid/widget/ImageButton;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p0, Landroid/widget/ImageButton;

    nop

    nop

    nop

    goto/32 :goto_1

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
    const v0, 0x7f0b029b

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

    :goto_3
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;->findViewById(I)Landroid/view/View;

    move-result-object p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final b()Landroid/widget/SeekBar;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x7f0b029c

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;->findViewById(I)Landroid/view/View;

    move-result-object p0

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
    return-object p0

    nop

    nop

    nop

    :goto_3
    check-cast p0, Landroid/widget/SeekBar;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c()Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceKnob;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;->findViewById(I)Landroid/view/View;

    move-result-object p0

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
    const v0, 0x7f0b029a

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop

    :goto_3
    check-cast p0, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceKnob;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public final d(Lnbh;Lnbe;Lnne;)V
    .locals 4

    goto/32 :goto_20

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
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-nez p2, :cond_0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    nop

    :goto_3
    invoke-static {v2, v3, v0}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v2, 0x0

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_6
    const v1, 0xf

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

    :goto_8
    invoke-virtual {p0}, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;->b()Landroid/widget/SeekBar;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;->c()Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceKnob;

    move-result-object p2

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

    nop

    :goto_a
    add-int v0, v0, v1

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

    :goto_b
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

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

    :goto_d
    iput-object p1, p0, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;->b:Lnbh;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_e
    aput-object p2, v0, v2

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

    :goto_f
    const/4 v2, 0x1

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    :goto_11
    invoke-static {v2, v3, v0}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_12
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0}, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;->c()Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceKnob;

    move-result-object p2

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

    :goto_16
    invoke-virtual {p0}, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;->a()Landroid/widget/ImageButton;

    move-result-object p2

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_17
    aput-object p1, v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;->e(II)V

    goto/32 :goto_0

    nop

    nop

    :goto_19
    const/4 v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_1a
    iput-object p3, p0, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;->a:Lnne;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1b
    const/4 v3, 0x0

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

    :goto_1c
    if-nez p2, :cond_2

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

    :cond_2
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p2}, Landroid/widget/SeekBar;->getMax()I

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_1e
    const/16 v2, 0x37b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_14

    nop

    nop

    :goto_20
    const v0, 0xb

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_21
    aput-object p2, v0, v2

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    new-array v0, v0, [Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_23
    aput-object p1, v0, v2

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p0}, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;->b()Landroid/widget/SeekBar;

    move-result-object p1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_25
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_26
    new-array v0, v0, [Ljava/lang/Object;

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
    iput-object p2, p0, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;->c:Lnbe;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    rem-int v0, v0, v1

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

    :goto_29
    const/16 v2, 0x37a

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_2a
    const/4 v0, 0x2

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {p0}, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;->a()Landroid/widget/ImageButton;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop
.end method

.method public final e(II)V
    .locals 2

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;->b()Landroid/widget/SeekBar;

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

    :goto_1
    const v1, 0x7f070546

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sub-int/2addr p1, v0

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

    :goto_4
    int-to-float p0, p0

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

    :goto_5
    invoke-virtual {p0}, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x14

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    sub-int/2addr p0, v0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_9
    return-void

    nop

    nop

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
    goto/32 :goto_10

    nop

    :goto_c
    mul-float/2addr p1, p0

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_d
    invoke-virtual {v1, p1}, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceKnob;->setTranslationY(F)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getWidth()I

    move-result p0

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
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_5

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;->c()Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceKnob;

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

    :goto_12
    int-to-float p1, p1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    neg-int p1, p1

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
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_15
    div-float/2addr p0, p2

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_16
    const v0, 0x12

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    int-to-float p2, p2

    nop

    nop

    nop

    goto/32 :goto_15

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

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    div-int/lit8 v0, p2, 0x2

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method protected final onFinishInflate()V
    .locals 13

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_0
    const v7, 0x7f070545

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1
    const v11, 0x7f0802f0

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_2
    div-int/lit8 v2, v2, 0x2

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

    :goto_3
    goto/32 :goto_5c

    nop

    nop

    :goto_4
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0, v3, v12}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v9, 0x7f070542

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x7f0b029b

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    div-int/lit8 v3, v3, 0x2

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_b
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    check-cast v0, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceKnob;

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v6, 0x7f070546

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_10
    const v3, 0x7f07054b

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
    sub-int/2addr v2, v9

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

    :goto_12
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_14
    const v0, 0x4

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0}, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;->getResources()Landroid/content/res/Resources;

    move-result-object v9

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

    :goto_16
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_17
    const/4 v1, 0x0

    nop

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

    :goto_18
    const v7, 0x7f07054a

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_19
    add-int/2addr v3, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p0}, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;->getResources()Landroid/content/res/Resources;

    move-result-object v7

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

    :goto_1c
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

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

    :goto_1d
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const v0, 0x7f0b029a

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_1f
    const v10, 0x7f070541

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

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

    :goto_21
    neg-int v3, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_22
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_23
    sub-int/2addr v2, v4

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const v5, 0x7f070543

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p0}, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

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

    :goto_27
    const-string v1, "layout_inflater"

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_28
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_29
    check-cast v0, Landroid/widget/ImageButton;

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_2a
    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_2b
    invoke-direct {v11, v10, v9}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p0}, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    add-int/2addr v2, v5

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

    :goto_2f
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-direct {p0, v2}, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;->7ecc92917e9c4556cc19f457ddc41af8m(I)I

    move-result v2

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_31
    new-instance v11, Landroid/graphics/drawable/InsetDrawable;

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_32
    sub-int/2addr v3, v2

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_33
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_35
    iput v2, p0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_37
    invoke-virtual {p0}, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;->getResources()Landroid/content/res/Resources;

    move-result-object v2

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

    :goto_38
    const/4 v12, 0x0

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_3a
    invoke-virtual {v0, v11}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    new-instance v3, Landroid/graphics/drawable/InsetDrawable;

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/SeekBar;->setPadding(IIII)V

    goto/32 :goto_22

    nop

    nop

    :goto_3e
    invoke-direct {v3, p0, v6}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    sub-int/2addr v6, v8

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_40
    invoke-virtual {p0}, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {p0}, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v0, v3}, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceKnob;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    goto/32 :goto_49

    nop

    nop

    :goto_44
    invoke-virtual {v0}, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceKnob;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_45
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_46
    const v1, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_47
    iget v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_48
    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

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

    :goto_49
    invoke-virtual {p0}, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {p0}, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {p0}, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {p0}, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

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

    :goto_4e
    rem-int v0, v0, v1

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

    :goto_4f
    div-int/lit8 v2, v2, 0x2

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_50
    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceKnob;->setVisibility(I)V

    goto/32 :goto_5b

    nop

    nop

    :goto_51
    sub-int/2addr v2, v6

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_52
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_53
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_54
    const v1, 0x7f0e0044

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_55
    const/high16 v1, 0x43870000    # 270.0f

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

    :goto_56
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_57
    invoke-virtual {p0}, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;->getResources()Landroid/content/res/Resources;

    move-result-object v4

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

    :goto_58
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v2

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    const v3, 0x7f080160

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

    :goto_5a
    check-cast v0, Landroid/widget/SeekBar;

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

    :goto_5b
    return-void

    nop

    :goto_5c
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    add-int/2addr v2, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_5f
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_60
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_61
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_62
    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto/32 :goto_7

    nop

    nop

    :goto_63
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    check-cast v0, Landroid/view/LayoutInflater;

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_65
    const v0, 0x7f0b029c

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_66
    invoke-virtual {p0}, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_67
    invoke-virtual {v0, p0}, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceKnob;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_68
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setRotation(F)V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    invoke-virtual {v7, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

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
.end method

.method protected final onLayout(ZIIII)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;->d(Lnbh;Lnbe;Lnne;)V

    :goto_1
    goto/32 :goto_2

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

    nop

    :goto_3
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    goto/32 :goto_3

    nop

    nop

    :goto_5
    iget-object p3, p0, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;->a:Lnne;

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
    iget-object p1, p0, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;->b:Lnbh;

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

    :goto_7
    iget-object p2, p0, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;->c:Lnbe;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method

.method protected final onMeasure(II)V
    .locals 3

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1
    iget-object p1, p0, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;->d:Llyv;

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
    sget-object v0, Lnbe;->d:Lnbe;

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

    :goto_3
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p2}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;->a()Landroid/widget/ImageButton;

    move-result-object p2

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_8
    neg-int p2, p2

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_9
    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_a
    iput p2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    sget-object p2, Llyr;->aU:Llze;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;->getMeasuredHeight()I

    move-result v0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_f
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_10
    int-to-float p2, p2

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

    :goto_11
    const v2, 0x7f070547

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

    :goto_12
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_13
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_14
    const p2, 0x7f07054c

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_15
    const v1, 0x3f666666    # 0.9f

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_16
    invoke-virtual {p0}, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-nez p2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_18
    int-to-float v0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_19
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1a
    const v0, 0x2

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1b
    const v1, 0x1d

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

    :goto_1c
    const v0, 0x7f0b029b

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p0}, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;->b()Landroid/widget/SeekBar;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_1e
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

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

    :goto_1f
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_38

    nop

    :goto_20
    invoke-virtual {p1, p2}, Llyv;->b(Llyp;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p0}, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_22
    invoke-virtual {p2, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_23
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_24
    mul-float/2addr v0, v1

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

    :goto_25
    iget-object p2, p0, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;->c:Lnbe;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_26
    if-gez p2, :cond_2

    nop

    goto/32 :goto_42

    nop

    :cond_2
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_28

    nop

    nop

    :goto_28
    add-int/2addr p2, p1

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_29
    check-cast v0, Landroid/widget/ImageButton;

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_2a
    add-int/2addr p2, v0

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

    :goto_2b
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_2c
    add-int/2addr p2, v0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2d
    const v0, 0x7f07054a

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

    :goto_2e
    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

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

    :goto_2f
    const p2, 0x7f07054b

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_30
    if-nez p1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const p2, 0x3f4ccccd    # 0.8f

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
    const v1, 0x7f070543

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_34
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

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

    :goto_35
    div-int/lit8 p2, p2, 0x2

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

    :goto_36
    mul-float/2addr p1, p2

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    int-to-float p1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_47

    nop

    nop

    :goto_39
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_3a
    add-int v0, v0, v1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    add-int/2addr p2, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_3c
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-direct {p0, p1}, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;->7ecc92917e9c4556cc19f457ddc41af8m(I)I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_3e
    check-cast p1, Ljava/lang/Boolean;

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_3f
    sub-int/2addr v2, p2

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    float-to-int p1, p1

    nop

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_44
    invoke-virtual {v1}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_45
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_46
    return-void

    nop

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_f

    nop

    nop

    :goto_48
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {p2, v0}, Lnbe;->equals(Ljava/lang/Object;)Z

    move-result p2

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

    :goto_4a
    const v0, 0x7f070546

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

    :goto_4b
    invoke-virtual {p0}, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    cmpl-float p2, p2, v0

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_4d
    goto :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    goto/32 :goto_c

    nop

    nop

    nop

    nop
.end method
