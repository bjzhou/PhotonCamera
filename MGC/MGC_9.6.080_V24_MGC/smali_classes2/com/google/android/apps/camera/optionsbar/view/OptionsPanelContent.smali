.class public Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelContent;
.super Landroid/widget/LinearLayout;
.source "PG"


# static fields
.field private static final i:Lsdb;


# instance fields
.field public final a:Lrtm;

.field public b:Landroid/view/ViewGroup;

.field public c:I

.field public d:Loyd;

.field public e:Lnbe;

.field public f:Lnbh;

.field public g:Landroid/animation/AnimatorSet;

.field public h:Z

.field private j:I

.field private k:Landroid/util/Size;

.field private l:I


# direct methods
.method private final 1478a1c7833aac5e360e0ba4b0c0c568m()I
    .locals 2

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelContent;->f:Lnbh;

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelContent;->getResources()Landroid/content/res/Resources;

    move-result-object p0

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

    :goto_2
    const v1, 0x7f0700c3

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v1, 0x3

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_5
    add-int/2addr p0, p0

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

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelContent;->c()I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_8
    if-eq v0, v1, :cond_0

    nop

    nop

    goto/32 :goto_18

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

    :goto_9
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_a
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_b
    const-string v1, "Unexpected layout decision "

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

    :goto_c
    const/4 v1, 0x2

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_d
    const/4 v1, 0x1

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

    :goto_e
    const v0, 0x7f0700c6

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

    :goto_f
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_10
    throw v0

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
    if-ne v0, v1, :cond_2

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

    :cond_2
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelContent;->b(Lnbh;)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_14
    if-ne v0, v1, :cond_3

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelContent;->e:Lnbe;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_16
    const v0, 0x4

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

    :goto_17
    return p0

    nop

    :goto_18
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelContent;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1a
    return v0

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_1c
    return p0

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_1b

    nop

    :goto_1f
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v0}, Lnbe;->ordinal()I

    move-result v0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_21
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_23
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_10

    nop

    nop

    :goto_24
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

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

    :goto_25
    const v1, 0x1a

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_26
    iget-object p0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelContent;->e:Lnbe;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_29
    sub-int/2addr v0, p0

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

    :goto_2a
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :cond_4
    goto/32 :goto_1e

    nop
.end method

.method private final 19e596a3e324281407eb5c11093c0152m(Lnbh;)I
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p1}, Lnzk;->aQ(Lnbe;)Z

    move-result p1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelContent;->e:Lnbe;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1}, Lnbh;->d()Z

    move-result p1

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

    :goto_5
    iget p0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelContent;->l:I

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return p0

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelContent;->c()I

    move-result p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-nez p1, :cond_0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    :goto_9
    goto :goto_2

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

    :goto_b
    if-eqz p1, :cond_1

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

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method private final 3fd9578e124c68aa49885b22b61b4ec8m(Lnbh;)V
    .locals 4

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    goto/32 :goto_f

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_1
    invoke-virtual {p1}, Lnbh;->d()Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_2
    move p1, v3

    nop

    :goto_3
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelContent;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_5
    const v1, 0x20

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_8
    move v3, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

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

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_a
    if-nez v0, :cond_1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_c
    const v0, 0xf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_d
    invoke-virtual {p0, v1, p1, v1, v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelContent;->setPadding(IIII)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_10
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

    :goto_11
    const v2, 0x7f0700c4

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

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-nez p1, :cond_2

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_14
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelContent;->e:Lnbe;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_15
    const v2, 0x7f0700c2

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_16
    move v0, p1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_18
    const v0, 0x7f0700c5

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_19
    const v2, 0x7f0700c1

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelContent;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelContent;->getResources()Landroid/content/res/Resources;

    move-result-object p1

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
    move p1, v1

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1e
    return-void

    nop

    :goto_1f
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelContent;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_24
    sget-object v1, Lnbe;->a:Lnbe;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v0, v1}, Lnbe;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_26
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop
.end method

.method private final 51550bab6b6440a4fd45f825c221b363m()I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelContent;->c:I

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

    :goto_1
    return v0

    nop

    nop

    nop

    nop

    :goto_2
    add-int/2addr v0, p0

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

    :goto_3
    iget p0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelContent;->j:I

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    sput-object v0, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelContent;->i:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    const-string v0, "com.google.android.apps.camera.optionsbar.view.OptionsPanelContent"

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
    return-void

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-direct {p1, p0, p2}, Lhdh;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 p2, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    sget-object p1, Lnbh;->a:Lnbh;

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

    :goto_4
    iput-object p1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelContent;->f:Lnbh;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 p1, 0x0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelContent;->e:Lnbe;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_7
    new-instance p1, Lhdh;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    sget-object p1, Lnbe;->b:Lnbe;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_9
    iput-object p1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelContent;->a:Lrtm;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_a
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_b
    iput-boolean p1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelContent;->h:Z

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()F
    .locals 4

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_1b

    nop

    :goto_1
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_2
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const-string v1, "unsupported orientation: "

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_5
    sget-object v1, Lnbh;->a:Lnbh;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v3, 0x3

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_7
    return p0

    nop

    :goto_8
    goto/32 :goto_38

    nop

    nop

    nop

    :goto_9
    sget-object v1, Lnbh;->d:Lnbh;

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_b
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p0

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

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v1}, Lnbh;->ordinal()I

    move-result v2

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto :goto_8

    nop

    :goto_f
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_10
    if-nez v2, :cond_0

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2b

    nop

    nop

    :goto_11
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

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
    const v0, 0x19

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_14
    goto/16 :goto_3d

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_16
    if-le v1, v2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    :cond_1
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_17
    rem-int v0, v0, v1

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_18
    if-ne v2, v3, :cond_2

    nop

    nop

    nop

    goto/32 :goto_3

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
    iget v1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelContent;->l:I

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    return p0

    nop

    :goto_1b
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    sub-int/2addr v0, p0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_1

    nop

    :goto_1e
    invoke-virtual {v0}, Lnbh;->d()Z

    move-result v0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-static {v0}, Lnzk;->aQ(Lnbe;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_20
    const/4 v3, 0x1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_21
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelContent;->f:Lnbh;

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

    :goto_22
    int-to-float p0, p0

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

    :goto_23
    invoke-virtual {p0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelContent;->c()I

    move-result v2

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_24
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_25
    if-nez v0, :cond_3

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelContent;->b(Lnbh;)I

    move-result v0

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_27
    goto/16 :goto_3d

    nop

    :goto_28
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p0, v1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelContent;->b(Lnbh;)I

    move-result p0

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_2b
    if-ne v2, v3, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :cond_4
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_2c
    if-eq v2, v3, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    sget-object v1, Lnbh;->c:Lnbh;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_2e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_2f
    if-ne v0, v1, :cond_6

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_6
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_30
    if-lez v0, :cond_7

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_7
    goto/32 :goto_0

    nop

    :goto_31
    iget-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelContent;->f:Lnbh;

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

    :goto_32
    const/4 v3, 0x2

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_33
    goto :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelContent;->f:Lnbh;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    goto :goto_3a

    nop

    :goto_37
    goto/32 :goto_39

    nop

    nop

    :goto_38
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_39
    move v1, v3

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelContent;->e:Lnbe;

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

    :goto_3c
    sget-object v1, Lnbh;->b:Lnbh;

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_2a

    nop

    nop

    nop

    nop
.end method

.method public final b(Lnbh;)I
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelContent;->e:Lnbe;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1
    const v0, 0x4

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_2
    return v0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_a

    nop

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

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelContent;->k:Landroid/util/Size;

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_9
    return p0

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

    :goto_b
    invoke-direct {p0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelContent;->51550bab6b6440a4fd45f825c221b363m()I

    move-result v0

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

    :goto_c
    invoke-virtual {v0, v1}, Lnbe;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_d
    invoke-direct {p0, p1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelContent;->19e596a3e324281407eb5c11093c0152m(Lnbh;)I

    move-result p0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_f
    add-int/2addr v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_11
    sget-object v1, Lnbe;->a:Lnbe;

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

    :goto_12
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

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
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelContent;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v1, 0x19

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_17
    if-lez v0, :cond_1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    :goto_18
    const v0, 0x7f0700ca

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop
.end method

.method public final c()I
    .locals 3

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v2, 0x7f0700cc

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelContent;->e:Lnbe;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    const/4 v1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_3
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_4
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_5
    if-nez p0, :cond_1

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

    :cond_1
    goto/32 :goto_d

    nop

    nop

    :goto_6
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelContent;->e:Lnbe;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_8
    if-ne v0, v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_26

    nop

    :goto_a
    invoke-virtual {v0}, Lnbe;->ordinal()I

    move-result v0

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_b
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_c
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_e
    return p0

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_10
    const-string v1, "Unexpected layout decision "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_11
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelContent;->k:Landroid/util/Size;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_13
    invoke-virtual {p0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelContent;->getResources()Landroid/content/res/Resources;

    move-result-object v0

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

    :goto_14
    rem-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_15
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_16
    const v1, 0x15

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p0}, Lnbh;->d()Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_18
    iget-object p0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelContent;->k:Landroid/util/Size;

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_1b
    const v0, 0x13

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_27

    nop

    nop

    :goto_1d
    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

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
    if-eq v0, v1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    :cond_4
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-ne v0, v1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelContent;->getResources()Landroid/content/res/Resources;

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

    :goto_23
    const v1, 0x7f0700cd

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

    :goto_24
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_e

    nop

    nop

    :goto_26
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_1

    nop

    nop

    :goto_28
    iget v1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelContent;->l:I

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget-object p0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelContent;->f:Lnbh;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

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

    :goto_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

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

    :goto_2e
    const/4 v1, 0x3

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_30
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto :goto_25

    nop

    :goto_32
    goto/32 :goto_24

    nop

    nop

    :goto_33
    return p0

    nop

    nop

    :goto_34
    goto/32 :goto_1c

    nop

    nop

    nop

    nop
.end method

.method public final d()V
    .locals 3

    goto/32 :goto_17

    nop

    nop

    :goto_0
    goto/32 :goto_a

    nop

    nop

    :goto_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2
    sget-object v0, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelContent;->i:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    :goto_4
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_6
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

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

    :goto_8
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelContent;->d:Loyd;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

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
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0xb

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_c
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_d
    const-string v1, "windowSize is uninitialized, falling back to display metrics"

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/16 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-interface {v0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_11
    new-instance v0, Landroid/util/Size;

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
    iput-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelContent;->k:Landroid/util/Size;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_13
    if-eqz v1, :cond_0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    :goto_14
    invoke-virtual {p0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelContent;->getResources()Landroid/content/res/Resources;

    move-result-object v2

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
    check-cast v0, Lscz;

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

    :goto_16
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_17
    const v0, 0x1b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_18
    check-cast v0, Landroid/util/Size;

    nop

    :goto_19
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-eqz v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_1
    goto/32 :goto_28

    nop

    nop

    :goto_1b
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

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

    :goto_1c
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    :cond_2
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1d
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_3
    goto/32 :goto_0

    nop

    :goto_1e
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1f
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_20
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

    :goto_21
    add-int v0, v0, v1

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

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

    :goto_23
    const/16 v1, 0xc8a

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

    :goto_24
    invoke-virtual {p0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelContent;->getResources()Landroid/content/res/Resources;

    move-result-object v1

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

    :goto_25
    if-eqz v1, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_4
    :goto_26
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_27
    invoke-interface {v0, v1}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_11

    nop

    nop

    :goto_28
    const/4 v0, 0x0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e()V
    .locals 4

    goto/32 :goto_20

    nop

    nop

    :goto_0
    goto/16 :goto_d

    nop

    :goto_1
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sget-object v0, Lnbh;->a:Lnbh;

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_3
    sub-int/2addr v1, v2

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_32

    nop

    nop

    :goto_5
    invoke-direct {p0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelContent;->51550bab6b6440a4fd45f825c221b363m()I

    move-result v2

    nop

    :goto_6
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-ne v1, v2, :cond_0

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

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

    :goto_9
    iget-object v2, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelContent;->k:Landroid/util/Size;

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

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelContent;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_c
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    nop

    nop

    :goto_d
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v2, 0x7f0700cb

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iput v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelContent;->l:I

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {p0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelContent;->51550bab6b6440a4fd45f825c221b363m()I

    move-result v2

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

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

    :goto_14
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_15
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

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

    :goto_16
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelContent;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_38

    nop

    nop

    nop

    :goto_19
    if-lez v0, :cond_1

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_37

    nop

    :goto_1a
    const/high16 v2, 0x40000000    # 2.0f

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_1b
    invoke-virtual {p0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelContent;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelContent;->f()V

    goto/32 :goto_e

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

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1e
    iget-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelContent;->e:Lnbe;

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
    div-int/2addr v1, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_20
    const v0, 0xb

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_21
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-interface {v1}, Lrtm;->a()Ljava/lang/Object;

    move-result-object v1

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

    nop

    :goto_23
    const/4 v3, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelContent;->g()V

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelContent;->getMeasuredHeight()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_26
    iput v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelContent;->j:I

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

    :goto_27
    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelContent;->measure(II)V

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_28
    if-ne v1, v2, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_29
    invoke-static {v0, v1}, Lnnr;->c(Landroid/app/Activity;Landroid/view/WindowInsets;)I

    move-result v0

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

    :goto_2a
    const/high16 v2, -0x80000000

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

    :goto_2b
    check-cast v1, Landroid/view/WindowInsets;

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

    :goto_2c
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v1}, Lnbe;->ordinal()I

    move-result v1

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

    :goto_2f
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_30
    check-cast v0, Landroid/app/Activity;

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_31
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

    :goto_32
    throw v0

    nop

    :goto_33
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_34
    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelContent;->3fd9578e124c68aa49885b22b61b4ec8m(Lnbh;)V

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-direct {p0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelContent;->1478a1c7833aac5e360e0ba4b0c0c568m()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_36
    if-eq v1, v3, :cond_3

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

    :cond_3
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {p0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelContent;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_3b
    iget-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelContent;->a:Lrtm;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_3c
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_3d
    const/4 v2, 0x2

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_3e
    goto/16 :goto_6

    nop

    nop

    :goto_3f
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_41
    iget-object p0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelContent;->e:Lnbe;

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

    :goto_42
    if-nez v1, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_43
    const v2, 0x7f0700cc

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    const-string v1, "Unexpected layout decision "

    nop

    nop

    goto/32 :goto_2f

    nop

    nop
.end method

.method public final f()V
    .locals 5

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-ne v2, v4, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelContent;->setRotation(F)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelContent;->c()I

    move-result v2

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

    nop

    :goto_4
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelContent;->f:Lnbh;

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_5
    div-int/2addr v2, v3

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    int-to-float v1, v0

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
    iget-object v2, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelContent;->f:Lnbh;

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_8
    const/high16 v2, 0x40000000    # 2.0f

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelContent;->f:Lnbh;

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_a
    if-nez v0, :cond_1

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
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_b
    sub-int/2addr v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_c
    div-int/2addr v0, v3

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_d
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_f
    int-to-float v0, v0

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_11
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v4, 0x1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_3a

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_16
    iget v0, v0, Lnbh;->e:I

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_17
    goto :goto_10

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_9

    nop

    nop

    :goto_19
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1b
    if-ne v2, v4, :cond_2

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v3, 0x2

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_1d
    goto :goto_12

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_2b

    nop

    nop

    :goto_1f
    invoke-virtual {p0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelContent;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_20
    iget v2, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelContent;->l:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_21
    const v1, 0x1f

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_22
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_39

    nop

    :goto_23
    goto/16 :goto_12

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    add-int v0, v0, v1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v0}, Lnbh;->c()Lnbh;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_27
    const v0, 0x6

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_28
    const/4 v0, 0x0

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelContent;->3fd9578e124c68aa49885b22b61b4ec8m(Lnbh;)V

    goto/32 :goto_31

    nop

    nop

    :goto_2a
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelContent;->f:Lnbh;

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_2b
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_2c
    if-nez v2, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_2d
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2e
    iget-object v2, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelContent;->e:Lnbe;

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

    :goto_2f
    invoke-virtual {p0, v1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelContent;->setPivotX(F)V

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v0}, Lnbh;->d()Z

    move-result v0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_31
    invoke-direct {p0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelContent;->1478a1c7833aac5e360e0ba4b0c0c568m()I

    move-result v0

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

    :goto_32
    div-float/2addr v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v2}, Lnbe;->ordinal()I

    move-result v2

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {p0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelContent;->c()I

    move-result v0

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {p0, v1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelContent;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/32 :goto_19

    nop

    nop

    :goto_36
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

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

    :goto_37
    sub-int/2addr v2, v0

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

    :goto_38
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_1a

    nop

    nop

    :goto_3a
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_3b
    invoke-direct {p0, v2}, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelContent;->19e596a3e324281407eb5c11093c0152m(Lnbh;)I

    move-result v2

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

    :goto_3c
    goto/16 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    if-ne v2, v3, :cond_5

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    const/4 v4, 0x3

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

    :goto_40
    invoke-virtual {p0, v1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelContent;->setPivotY(F)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop
.end method

.method public final g()V
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_12

    nop

    nop

    :goto_1
    invoke-virtual {p0, v1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelContent;->b(Lnbh;)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

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
    goto/32 :goto_8

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelContent;->b:Landroid/view/ViewGroup;

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

    :goto_6
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

    :goto_7
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/32 :goto_10

    nop

    nop

    :goto_8
    goto/32 :goto_11

    nop

    nop

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

    nop

    :goto_a
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelContent;->f:Lnbh;

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

    :goto_e
    const v1, 0x8

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_f
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    :goto_11
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelContent;->c()I

    move-result v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object p0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelContent;->b:Landroid/view/ViewGroup;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final onLayout(ZIIII)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    :goto_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

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

    nop

    nop

    nop

    :goto_2
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    const-string v0, "OptionsPanelContent onLayout"

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method

.method protected final onMeasure(II)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-string v0, "OptionsPanelContent onMeasure"

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto/32 :goto_0

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

    nop
.end method
