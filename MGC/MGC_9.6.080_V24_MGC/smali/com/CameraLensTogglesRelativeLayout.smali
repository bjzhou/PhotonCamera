.class public Lcom/CameraLensTogglesRelativeLayout;
.super Landroid/widget/RelativeLayout;


# static fields
.field public static e:Lcom/CameraLensTogglesRelativeLayout;


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lnbh;

.field public c:Lnbe;

.field public d:I

.field public iPackageName:Ljava/lang/String;

.field public iResources:Landroid/content/res/Resources;


# direct methods
.method private 92ebcae27b5395a18af07a7e07265cf7m(Ljava/lang/String;)I
    .locals 4

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move-object/from16 v1, p1

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

    :goto_1
    iget-object v0, p0, Lcom/CameraLensTogglesRelativeLayout;->iResources:Landroid/content/res/Resources;

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

    :goto_2
    const v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x15

    nop

    goto/32 :goto_d

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

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_5
    iget-object v3, p0, Lcom/CameraLensTogglesRelativeLayout;->iPackageName:Ljava/lang/String;

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
    invoke-virtual/range {v0 .. v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_c

    nop

    nop

    :goto_9
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const-string v2, "id"

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_a

    nop

    nop

    :goto_d
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

    :goto_e
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    goto/32 :goto_9

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

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
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3
    iput-object v0, p0, Lcom/CameraLensTogglesRelativeLayout;->iResources:Landroid/content/res/Resources;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object v0, p0, Lcom/CameraLensTogglesRelativeLayout;->a:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    sput-object p0, Lcom/CameraLensTogglesRelativeLayout;->e:Lcom/CameraLensTogglesRelativeLayout;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-object v0, p0, Lcom/CameraLensTogglesRelativeLayout;->iPackageName:Ljava/lang/String;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_9
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    sput-object p0, Lcom/CameraLensTogglesRelativeLayout;->e:Lcom/CameraLensTogglesRelativeLayout;

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

    :goto_1
    iput-object v0, p0, Lcom/CameraLensTogglesRelativeLayout;->a:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    iput-object v0, p0, Lcom/CameraLensTogglesRelativeLayout;->iResources:Landroid/content/res/Resources;

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

    :goto_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    iput-object v0, p0, Lcom/CameraLensTogglesRelativeLayout;->iPackageName:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    new-instance v0, Ljava/util/ArrayList;

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

    :goto_6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

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
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    iput-object v0, p0, Lcom/CameraLensTogglesRelativeLayout;->iResources:Landroid/content/res/Resources;

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

    :goto_2
    return-void

    nop

    :goto_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    sput-object p0, Lcom/CameraLensTogglesRelativeLayout;->e:Lcom/CameraLensTogglesRelativeLayout;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-object v0, p0, Lcom/CameraLensTogglesRelativeLayout;->a:Ljava/util/List;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_9
    iput-object v0, p0, Lcom/CameraLensTogglesRelativeLayout;->iPackageName:Ljava/lang/String;

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

    nop
.end method


# virtual methods
.method public final L(Z)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_1

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

    :goto_2
    goto/32 :goto_5

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
    const/16 v0, 0x8

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
    invoke-virtual {p0, v0}, Lcom/CameraLensTogglesRelativeLayout;->setVisibility(I)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final Scaling(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_0
    const-string v1, ""

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v0}, Lcom/a;->ab_ma(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

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

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

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

    :goto_3
    add-int v0, v0, v1

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

    :goto_4
    if-nez v0, :cond_0

    nop

    goto/32 :goto_1f

    nop

    :cond_0
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_6
    const/16 v1, 0x64

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

    :goto_7
    const v1, 0xc

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_8
    invoke-static {v0, v1}, Lcom/a;->VariableKeyLens(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const-string v0, "S"

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

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

    :goto_b
    invoke-static {v0}, Lcom/a;->ab_ma(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-eqz v1, :cond_1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_e
    return-object v0

    nop

    nop

    :goto_f
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

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
    return-object p1

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const-string v1, ""

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_14
    const-string v0, "anBnX3NjYWxpbmdfZW5hYmxlX2tleQ"

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_15
    if-eqz v1, :cond_2

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_22

    nop

    nop

    :goto_16
    const-string v1, ""

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_18
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_12

    nop

    nop

    :goto_1a
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {v0, v1}, Lcom/a;->VariableKeyLens(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_1d
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_19

    nop

    :goto_1e
    return-object v0

    nop

    :goto_1f
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-eqz v1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_4
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_22
    const-string v0, "anBnX3NjYWxpbmdfa2V5"

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const v0, 0x17

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_24
    if-ne v0, v1, :cond_5

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

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

    nop

    :goto_26
    const-string v0, "S"

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

    :goto_27
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

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

    :goto_28
    const-string v1, ""

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
.end method

.method public getLensFacingID()Ljava/lang/String;
    .locals 2

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_0
    if-ne v0, v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

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

    :goto_1
    const/4 v1, 0x0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    :goto_3
    const v1, 0xe

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

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
    invoke-static {}, Lcom/a;->ac()[Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_6
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_7
    sget-object v0, Lcom/CameraLensesScan;->sActiveCam:Lpog;

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

    :goto_8
    return-object v0

    nop

    :goto_9
    goto/32 :goto_17

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

    goto/32 :goto_11

    nop

    :cond_2
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    sget-object v1, Lpog;->a:Lpog;

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

    :goto_c
    aget-object v0, v0, v1

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

    :goto_d
    goto/32 :goto_9

    nop

    nop

    :goto_e
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {}, Lcom/a;->ac()[Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_10
    return-object v0

    nop

    :goto_11
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_12
    aget-object v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_13
    sget-object v0, Lcom/CameraLensesScan;->sActiveCamIDValue:Ljava/lang/String;

    nop

    nop

    .local v0, "sActiveCamIDValue":Ljava/lang/String;
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_14
    return-object v0

    nop

    :goto_15
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v0, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_e

    nop

    nop

    :goto_18
    add-int v0, v0, v1

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
.end method

.method public getLensFacingMap()Ljava/util/Map;
    .locals 2

    goto/32 :goto_6

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_1
    sget-object v0, Lcom/CameraLensesScan;->sCameraLensFLoc:Ljava/util/Map;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    return-object v0

    nop

    :goto_3
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    sget-object v0, Lcom/CameraLensesScan;->sActiveCam:Lpog;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_6
    const v0, 0x6

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_8
    sget-object v1, Lpog;->a:Lpog;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_9
    if-ne v0, v1, :cond_1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x8

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

    :goto_b
    return-object v0

    nop

    nop

    :goto_c
    goto/32 :goto_1

    nop

    nop

    :goto_d
    sget-object v0, Lcom/CameraLensesScan;->sCameraLensBLoc:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_e
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_f

    nop

    nop

    nop

    nop
.end method

.method public getSelectID0(Landroid/widget/TextView;Ljava/lang/String;)Landroid/widget/TextView;
    .locals 2

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v0, "IDAction"

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

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

    :goto_2
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

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x19

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

    :goto_8
    goto/32 :goto_6

    nop

    :goto_9
    const/high16 v0, -0x1000000

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

    :goto_a
    invoke-virtual {p0, v0}, Lcom/CameraLensTogglesRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {p0, v0}, Lcom/CameraLensTogglesRelativeLayout;->92ebcae27b5395a18af07a7e07265cf7m(Ljava/lang/String;)I

    move-result v0

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

    :goto_c
    iput v0, p0, Lcom/CameraLensTogglesRelativeLayout;->d:I

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

    :goto_d
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_f
    const-string v0, "ID0"

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_10
    return-object p1

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_14

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

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_13
    invoke-direct {p0, v0}, Lcom/CameraLensTogglesRelativeLayout;->92ebcae27b5395a18af07a7e07265cf7m(Ljava/lang/String;)I

    move-result v0

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_14
    const/4 v1, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_15
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    nop

    :goto_16
    const v0, 0x1e

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_18
    return-object p1

    nop

    nop

    :goto_19
    goto/32 :goto_8

    nop

    nop

    :goto_1a
    check-cast v0, Landroid/widget/ImageView;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1b
    invoke-virtual {p0}, Lcom/CameraLensTogglesRelativeLayout;->getLensFacingID()Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public getSelectID1(Landroid/widget/TextView;Ljava/lang/String;)Landroid/widget/TextView;
    .locals 3

    goto/32 :goto_9

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lcom/CameraLensTogglesRelativeLayout;->getLensFacingID()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1
    const-string v2, "ID0_space_ID1"

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    check-cast v2, Landroid/widget/Space;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/32 :goto_1b

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

    :goto_5
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    check-cast v0, Landroid/widget/ImageView;

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

    :goto_7
    add-int v0, v0, v1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_8
    const/4 v1, -0x1

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

    :goto_9
    const v0, 0x1

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
    invoke-direct {p0, v0}, Lcom/CameraLensTogglesRelativeLayout;->92ebcae27b5395a18af07a7e07265cf7m(Ljava/lang/String;)I

    move-result v0

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_b
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_1e

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_c
    const v1, 0x1c

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

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

    nop

    nop

    :goto_e
    invoke-direct {p0, v2}, Lcom/CameraLensTogglesRelativeLayout;->92ebcae27b5395a18af07a7e07265cf7m(Ljava/lang/String;)I

    move-result v2

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

    :goto_f
    invoke-virtual {v2}, Landroid/widget/Space;->getWidth()I

    move-result v2

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

    :goto_10
    const-string v0, "IDAction"

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

    :goto_11
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0, v2}, Lcom/CameraLensTogglesRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

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

    :goto_13
    iput v0, p0, Lcom/CameraLensTogglesRelativeLayout;->d:I

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_14
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_4

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_16
    const/high16 v0, -0x1000000

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

    :goto_17
    invoke-virtual {p0, v0}, Lcom/CameraLensTogglesRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-nez v2, :cond_3

    nop

    nop

    goto/32 :goto_1e

    nop

    :cond_3
    goto/32 :goto_2

    nop

    nop

    :goto_19
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    return-object p1

    nop

    nop

    :goto_1c
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_1d
    return-object p1

    nop

    nop

    :goto_1e
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1f
    invoke-direct {p0, v0}, Lcom/CameraLensTogglesRelativeLayout;->92ebcae27b5395a18af07a7e07265cf7m(Ljava/lang/String;)I

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

    :goto_20
    add-int/2addr v1, v2

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_21
    int-to-float v1, v1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_22
    const-string v0, "ID1"

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

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

.method public getSelectID2(Landroid/widget/TextView;Ljava/lang/String;)Landroid/widget/TextView;
    .locals 3

    goto/32 :goto_c

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

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_20

    nop

    :goto_1
    const-string v2, "ID0_space_ID1"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, v2}, Lcom/CameraLensTogglesRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3
    invoke-virtual {v2}, Landroid/widget/Space;->getWidth()I

    move-result v2

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

    :goto_4
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_5
    if-nez v2, :cond_1

    nop

    goto/32 :goto_14

    nop

    :cond_1
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput v0, p0, Lcom/CameraLensTogglesRelativeLayout;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_7
    int-to-float v1, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-nez v0, :cond_2

    nop

    goto/32 :goto_14

    nop

    :cond_2
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_9
    add-int/2addr v1, v2

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_21

    nop

    nop

    :goto_c
    const v0, 0x19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_d
    invoke-virtual {p0, v0}, Lcom/CameraLensTogglesRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_e
    add-int v0, v0, v1

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

    :goto_f
    const v1, 0x1f

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

    :goto_10
    mul-int/lit8 v1, v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/high16 v0, -0x1000000

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

    :goto_12
    check-cast v2, Landroid/widget/Space;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_13
    return-object p1

    nop

    :goto_14
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    return-object p1

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_18
    check-cast v0, Landroid/widget/ImageView;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_19
    const-string v0, "IDAction"

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const-string v0, "ID2"

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

    :goto_1d
    const/4 v1, -0x1

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

    :goto_1e
    invoke-direct {p0, v0}, Lcom/CameraLensTogglesRelativeLayout;->92ebcae27b5395a18af07a7e07265cf7m(Ljava/lang/String;)I

    move-result v0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-direct {p0, v2}, Lcom/CameraLensTogglesRelativeLayout;->92ebcae27b5395a18af07a7e07265cf7m(Ljava/lang/String;)I

    move-result v2

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_17

    nop

    nop

    :goto_21
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_23
    invoke-virtual {p0}, Lcom/CameraLensTogglesRelativeLayout;->getLensFacingID()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_24
    invoke-direct {p0, v0}, Lcom/CameraLensTogglesRelativeLayout;->92ebcae27b5395a18af07a7e07265cf7m(Ljava/lang/String;)I

    move-result v0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_25
    if-nez v0, :cond_3

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1c

    nop

    nop
.end method

.method public getSelectID3(Landroid/widget/TextView;Ljava/lang/String;)Landroid/widget/TextView;
    .locals 3

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, v0}, Lcom/CameraLensTogglesRelativeLayout;->92ebcae27b5395a18af07a7e07265cf7m(Ljava/lang/String;)I

    move-result v0

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, v0}, Lcom/CameraLensTogglesRelativeLayout;->92ebcae27b5395a18af07a7e07265cf7m(Ljava/lang/String;)I

    move-result v0

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_2
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

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_3
    if-nez v2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_1
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-object p1

    nop

    :goto_7
    goto/32 :goto_1b

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

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

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

    :goto_a
    if-nez v0, :cond_2

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_2
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-nez v0, :cond_3

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_3
    goto/32 :goto_d

    nop

    nop

    :goto_c
    const v0, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_d
    check-cast v0, Landroid/widget/ImageView;

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

    :goto_e
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_10
    const/high16 v0, -0x1000000

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_11
    return-object p1

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const-string v2, "ID0_space_ID1"

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

    :goto_14
    check-cast v2, Landroid/widget/Space;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_16
    invoke-direct {p0, v2}, Lcom/CameraLensTogglesRelativeLayout;->92ebcae27b5395a18af07a7e07265cf7m(Ljava/lang/String;)I

    move-result v2

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_17
    invoke-virtual {p0}, Lcom/CameraLensTogglesRelativeLayout;->getLensFacingID()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_18
    mul-int/lit8 v1, v1, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_19
    const-string v0, "ID3"

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1a
    add-int/2addr v1, v2

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

    :goto_1b
    const/4 v1, -0x1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_5

    nop

    :goto_1d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_1e
    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

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

    :goto_1f
    invoke-virtual {v2}, Landroid/widget/Space;->getWidth()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_20
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/32 :goto_23

    nop

    nop

    :goto_21
    iput v0, p0, Lcom/CameraLensTogglesRelativeLayout;->d:I

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

    :goto_22
    invoke-virtual {p0, v0}, Lcom/CameraLensTogglesRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_23
    const-string v0, "IDAction"

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
    const v1, 0x10

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_25
    invoke-virtual {p0, v2}, Lcom/CameraLensTogglesRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method public getSelectID4(Landroid/widget/TextView;Ljava/lang/String;)Landroid/widget/TextView;
    .locals 3

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, v0}, Lcom/CameraLensTogglesRelativeLayout;->92ebcae27b5395a18af07a7e07265cf7m(Ljava/lang/String;)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-string v0, "IDAction"

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    const v1, 0xb

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
    const-string v0, "ID4"

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_5
    invoke-direct {p0, v2}, Lcom/CameraLensTogglesRelativeLayout;->92ebcae27b5395a18af07a7e07265cf7m(Ljava/lang/String;)I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

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

    :goto_7
    invoke-virtual {v2}, Landroid/widget/Space;->getWidth()I

    move-result v2

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

    :goto_8
    add-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_9
    check-cast v0, Landroid/widget/ImageView;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_a
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    :goto_b
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_15

    nop

    nop

    :goto_d
    return-object p1

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_f
    invoke-direct {p0, v0}, Lcom/CameraLensTogglesRelativeLayout;->92ebcae27b5395a18af07a7e07265cf7m(Ljava/lang/String;)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    goto/32 :goto_d

    nop

    nop

    :goto_11
    check-cast v2, Landroid/widget/Space;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_13
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_14
    const/high16 v0, -0x1000000

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_15
    invoke-virtual {p0}, Lcom/CameraLensTogglesRelativeLayout;->getLensFacingID()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_16
    mul-int/lit8 v1, v1, 0x4

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_17
    const-string v2, "ID0_space_ID1"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0, v0}, Lcom/CameraLensTogglesRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_19
    return-object p1

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    add-int/2addr v1, v2

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_1c
    invoke-virtual {p0, v2}, Lcom/CameraLensTogglesRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1d
    int-to-float v1, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-nez v2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_c

    nop

    nop

    :goto_20
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_3
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const v0, 0x1b

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_23
    iput v0, p0, Lcom/CameraLensTogglesRelativeLayout;->d:I

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const/4 v1, -0x1

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop
.end method

.method public initButtons()V
    .locals 3

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_0
    if-nez v2, :cond_0

    nop

    nop

    goto/32 :goto_7

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

    :goto_1
    return-void

    nop

    :pswitch_0
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1b

    nop

    nop

    :goto_4
    invoke-virtual {p0, v0}, Lcom/CameraLensTogglesRelativeLayout;->setFive(Ljava/util/Map;)V

    goto/32 :goto_45

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

    nop

    :pswitch_1
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    nop

    nop

    nop

    packed-switch v1, :pswitch_data_0

    :goto_7
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_8
    sget-object v1, Lnne;->c:Lnne;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_9
    sget-object v1, Lnne;->k:Lnne;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_a
    sget-object v1, Lnne;->f:Lnne;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-ne v0, v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    :pswitch_2
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_e
    const/4 v0, 0x4

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

    :goto_f
    const/16 v2, 0x64

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0, v0}, Lcom/CameraLensTogglesRelativeLayout;->setFive(Ljava/util/Map;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-ne v1, v2, :cond_2

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

    :cond_2
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-ne v0, v1, :cond_3

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

    nop

    :cond_3
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_13
    if-ne v0, v1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :cond_4
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_14
    invoke-static {v1}, Lcom/a;->ab(Ljava/lang/String;)Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_15
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v0, 0x1

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

    :goto_17
    sget-object v1, Lnne;->g:Lnne;

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_18
    return-void

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_29

    nop

    nop

    :goto_1a
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_1b
    const-string v0, "camera.lenstoggles_enable"

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

    :goto_1c
    invoke-virtual {p0}, Lcom/CameraLensTogglesRelativeLayout;->getLensFacingMap()Ljava/util/Map;

    move-result-object v0

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

    :goto_1d
    invoke-virtual {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->setVisibility(I)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    return-void

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

    nop

    :goto_1f
    sget-object v1, Lnne;->b:Lnne;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_20
    invoke-virtual {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->setVisibility(I)V

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    sget-object v1, Lnne;->q:Lnne;

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

    :goto_22
    invoke-virtual {p0, v0}, Lcom/CameraLensTogglesRelativeLayout;->setTwo(Ljava/util/Map;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-static {v1}, Lcom/a;->ab_mb(Ljava/lang/Object;)I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_24
    const-string v1, "anBnX3NjYWxpbmdfa2V5"

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_25
    invoke-virtual {p0, v0}, Lcom/CameraLensTogglesRelativeLayout;->setThree(Ljava/util/Map;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-ne v0, v1, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_36

    nop

    nop

    :goto_27
    if-ne v0, v1, :cond_6

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

    nop

    :cond_6
    goto/32 :goto_17

    nop

    nop

    :goto_28
    invoke-static {v1}, Lcom/a;->VariableKeyActiveLens(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_29
    sget-object v0, Lcom/a;->c:Ljava/lang/Object;

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

    nop

    nop

    :goto_2a
    if-ne v0, v1, :cond_7

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->setVisibility(I)V

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_2c
    invoke-static {v0}, Lcom/a;->ad_mc(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_2d
    if-ne v0, v1, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :cond_8
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2e
    goto/16 :goto_7

    nop

    nop

    :goto_2f
    goto/32 :goto_1c

    nop

    nop

    :goto_30
    invoke-virtual {p0, v0}, Lcom/CameraLensTogglesRelativeLayout;->setOne(Ljava/util/Map;)V

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_31
    invoke-virtual {p0, v0}, Lcom/CameraLensTogglesRelativeLayout;->setVisibility(I)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->setVisibility(I)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    const v1, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_34
    invoke-virtual {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->setVisibility(I)V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_35
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_36
    sget-object v1, Lnne;->l:Lnne;

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_37
    sget-object v1, Lnne;->p:Lnne;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_38
    if-lez v0, :cond_9

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

    :cond_9
    goto/32 :goto_2

    nop

    :goto_39
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->setVisibility(I)V

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_3c
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_3d
    const/16 v0, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_3e
    if-ne v0, v1, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :cond_a
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_3f
    if-eqz v0, :cond_b

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_3d

    nop

    nop

    :goto_40
    const/4 v1, 0x0

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_41
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {p0, v0}, Lcom/CameraLensTogglesRelativeLayout;->setVisibility(I)V

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_43
    return-void

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_44
    const/4 v1, 0x0

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

    :goto_45
    return-void

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_4
    .end packed-switch

    :goto_46
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {p0, v0}, Lcom/CameraLensTogglesRelativeLayout;->setFour(Ljava/util/Map;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method

.method final synthetic initToggles(Landroid/widget/TextView;)V
    .locals 1

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    new-instance v0, Lcom/CameraLensTogglesOnClickListener;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0, p0}, Lcom/CameraLensTogglesOnClickListener;-><init>(Lcom/CameraLensTogglesRelativeLayout;)V

    goto/32 :goto_4

    nop

    nop

    :goto_3
    new-instance v0, Lcom/CameraLensTogglesOnLongClickListener;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/32 :goto_3

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

    nop

    nop

    :goto_6
    goto/32 :goto_0

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
    if-eqz p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {v0, p0}, Lcom/CameraLensTogglesOnLongClickListener;-><init>(Lcom/CameraLensTogglesRelativeLayout;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method protected onFinishInflate()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_4

    nop

    nop

    :goto_2
    const-string v0, "CameraLensToggles:onFinishInflate"

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lcom/CameraLensTogglesRelativeLayout;->initButtons()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    goto/32 :goto_5

    nop

    nop

    :goto_1
    const-string v0, "CameraLensToggles:onLayout"

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
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_4

    nop

    nop

    :goto_3
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Lcom/CameraLensTogglesRelativeLayout;->initButtons()V

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public final onLayoutUpdated(Lnbe;Lnbh;)V
    .locals 1

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

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lcom/CameraLensTogglesRelativeLayout;->b:Lnbh;

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

    :goto_3
    iput-object p1, p0, Lcom/CameraLensTogglesRelativeLayout;->c:Lnbe;

    nop

    nop

    goto/32 :goto_8

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

    :goto_5
    iput-object p2, p0, Lcom/CameraLensTogglesRelativeLayout;->b:Lnbh;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_6
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lcom/CameraLensTogglesRelativeLayout;->isLaidOut()Z

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

    :goto_8
    invoke-virtual {p0}, Lcom/CameraLensTogglesRelativeLayout;->initButtons()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-eq v0, p2, :cond_1

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

    :cond_1
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_a
    goto :goto_1

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_0

    nop

    nop
.end method

.method public setFive(Ljava/util/Map;)V
    .locals 5

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/32 :goto_5c

    nop

    nop

    :goto_1
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_2
    iget-object v4, v2, Lcom/CameraLens;->camera_id:Ljava/lang/String;

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

    :goto_3
    iget-object v2, v2, Lcom/CameraLens;->camera_id:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_4
    iget-object v2, v2, Lcom/CameraLens;->camera_id:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    const v0, 0xa

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

    :goto_7
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-nez v1, :cond_0

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v2, 0x0

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0, v3, v4}, Lcom/CameraLensTogglesRelativeLayout;->Scaling(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_d
    check-cast v2, Lcom/CameraLens;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v2, 0x0

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

    :goto_f
    invoke-virtual {p0, v1, v2}, Lcom/CameraLensTogglesRelativeLayout;->getSelectID0(Landroid/widget/TextView;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

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

    :goto_10
    check-cast v1, Landroid/widget/Space;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_12
    if-nez v1, :cond_1

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    check-cast v1, Landroid/widget/TextView;

    nop

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

    :goto_14
    iget-object v3, v2, Lcom/CameraLens;->name_toggle:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_16
    return-void

    nop

    nop

    :goto_17
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_18
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

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

    :goto_19
    if-lez v0, :cond_2

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

    :cond_2
    goto/32 :goto_41

    nop

    :goto_1a
    invoke-virtual {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_1b
    invoke-direct {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->92ebcae27b5395a18af07a7e07265cf7m(Ljava/lang/String;)I

    move-result v1

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

    :goto_1c
    invoke-direct {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->92ebcae27b5395a18af07a7e07265cf7m(Ljava/lang/String;)I

    move-result v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const/4 v2, 0x0

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

    :goto_1f
    check-cast v2, Lcom/CameraLens;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_20
    rem-int v0, v0, v1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v4, v2, Lcom/CameraLens;->camera_id:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_22
    sget-object v2, Lcom/CameraLensToggles;->ID2:Lcom/CameraLensToggles;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const/4 v2, 0x0

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

    :goto_25
    iget-object v3, v2, Lcom/CameraLens;->name_toggle:Ljava/lang/String;

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

    :goto_26
    iget-object v3, v2, Lcom/CameraLens;->name_toggle:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_27
    check-cast v1, Landroid/widget/Space;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    return-void

    nop

    nop

    :goto_29
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_2a
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v2, v2, Lcom/CameraLens;->camera_id:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_2c
    invoke-virtual {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_2d
    sget-object v2, Lcom/CameraLensToggles;->ID4:Lcom/CameraLensToggles;

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-direct {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->92ebcae27b5395a18af07a7e07265cf7m(Ljava/lang/String;)I

    move-result v1

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_2f
    const-string v1, "ID3_space_ID4"

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

    nop

    :goto_30
    if-nez v1, :cond_3

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

    :cond_3
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const/4 v2, 0x0

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

    :goto_32
    const-string v1, "ID2_space_ID3"

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :goto_33
    if-nez v1, :cond_4

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_64

    nop

    nop

    :goto_34
    invoke-virtual {p0, v0}, Lcom/CameraLensTogglesRelativeLayout;->setVisibility(I)V

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_35
    invoke-virtual {p0, v1, v2}, Lcom/CameraLensTogglesRelativeLayout;->getSelectID3(Landroid/widget/TextView;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_36
    invoke-virtual {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_37
    if-nez v1, :cond_5

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :cond_5
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_38
    iget-object v4, v2, Lcom/CameraLens;->camera_id:Ljava/lang/String;

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

    :goto_39
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    check-cast v2, Lcom/CameraLens;

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

    :goto_3b
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/32 :goto_2b

    nop

    nop

    :goto_3c
    new-instance v1, Lcom/CameraLensTogglesConsumer$0;

    nop

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

    :goto_3d
    const-string v1, "ID2"

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {p0, v3, v4}, Lcom/CameraLensTogglesRelativeLayout;->Scaling(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_40
    if-nez v1, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_17

    nop

    :goto_42
    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_43
    const-string v1, "ID0"

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_44
    check-cast v1, Landroid/widget/TextView;

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

    :goto_45
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_46
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/32 :goto_54

    nop

    nop

    :goto_47
    const-string v1, "ID4"

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

    :goto_48
    check-cast v1, Landroid/widget/TextView;

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_4a
    invoke-virtual {p0, v1, v2}, Lcom/CameraLensTogglesRelativeLayout;->getSelectID4(Landroid/widget/TextView;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {p0, v3, v4}, Lcom/CameraLensTogglesRelativeLayout;->Scaling(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_4c
    iget-object v2, v2, Lcom/CameraLens;->camera_id:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_4d
    const v1, 0x16

    nop

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

    nop

    :goto_4e
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_2f

    nop

    nop

    :goto_50
    invoke-virtual {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_51
    invoke-direct {v1, p0}, Lcom/CameraLensTogglesConsumer$0;-><init>(Lcom/CameraLensTogglesRelativeLayout;)V

    goto/32 :goto_71

    nop

    nop

    :goto_52
    const/16 v0, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_53
    sget-object v2, Lcom/CameraLensToggles;->ID0:Lcom/CameraLensToggles;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_54
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_55
    invoke-virtual {p0, v1, v2}, Lcom/CameraLensTogglesRelativeLayout;->getSelectID1(Landroid/widget/TextView;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_56
    if-nez v1, :cond_7

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_57
    const/4 v2, 0x0

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_58
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_59
    iget-object v4, v2, Lcom/CameraLens;->camera_id:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/32 :goto_4

    nop

    nop

    :goto_5b
    invoke-direct {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->92ebcae27b5395a18af07a7e07265cf7m(Ljava/lang/String;)I

    move-result v1

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

    :goto_5c
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_6a

    nop

    nop

    :goto_5d
    check-cast v1, Landroid/widget/Space;

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_5e
    if-nez v1, :cond_8

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-direct {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->92ebcae27b5395a18af07a7e07265cf7m(Ljava/lang/String;)I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_60
    check-cast v2, Lcom/CameraLens;

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_61
    invoke-virtual {p0, v1, v2}, Lcom/CameraLensTogglesRelativeLayout;->getSelectID2(Landroid/widget/TextView;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_62
    iget-object v3, v2, Lcom/CameraLens;->name_toggle:Ljava/lang/String;

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

    :goto_63
    iget-object v2, v2, Lcom/CameraLens;->camera_id:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_64
    check-cast v1, Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_65
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    const-string v1, "ID1_space_ID2"

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_67
    check-cast v1, Landroid/widget/TextView;

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

    :goto_68
    invoke-virtual {p0, v3, v4}, Lcom/CameraLensTogglesRelativeLayout;->Scaling(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    nop

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

    :goto_69
    invoke-virtual {v1, v2}, Landroid/widget/Space;->setVisibility(I)V

    goto/32 :goto_7a

    nop

    nop

    :goto_6a
    const-string v1, "ID0_space_ID1"

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_6b
    const-string v1, "ID1"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_6c
    add-int v0, v0, v1

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

    :goto_6d
    sget-object v2, Lcom/CameraLensToggles;->ID1:Lcom/CameraLensToggles;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6e
    if-nez v1, :cond_9

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    :cond_9
    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    iget-object v4, v2, Lcom/CameraLens;->camera_id:Ljava/lang/String;

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_70
    iget-object v0, p0, Lcom/CameraLensTogglesRelativeLayout;->a:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_71
    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_72
    check-cast v1, Landroid/widget/Space;

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_73
    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_74
    invoke-direct {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->92ebcae27b5395a18af07a7e07265cf7m(Ljava/lang/String;)I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_75
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_76
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_77
    invoke-virtual {v1, v2}, Landroid/widget/Space;->setVisibility(I)V

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_78
    invoke-virtual {v1, v2}, Landroid/widget/Space;->setVisibility(I)V

    goto/32 :goto_6b

    nop

    nop

    :goto_79
    invoke-direct {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->92ebcae27b5395a18af07a7e07265cf7m(Ljava/lang/String;)I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_7a
    const-string v1, "ID3"

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_7b
    invoke-direct {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->92ebcae27b5395a18af07a7e07265cf7m(Ljava/lang/String;)I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_7c
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    check-cast v2, Lcom/CameraLens;

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :goto_7e
    sget-object v2, Lcom/CameraLensToggles;->ID3:Lcom/CameraLensToggles;

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_7f
    invoke-virtual {v1, v2}, Landroid/widget/Space;->setVisibility(I)V

    goto/32 :goto_3d

    nop

    nop

    :goto_80
    invoke-virtual {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_81
    invoke-direct {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->92ebcae27b5395a18af07a7e07265cf7m(Ljava/lang/String;)I

    move-result v1

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_82
    invoke-virtual {p0, v3, v4}, Lcom/CameraLensTogglesRelativeLayout;->Scaling(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_83
    iget-object v3, v2, Lcom/CameraLens;->name_toggle:Ljava/lang/String;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public setFour(Ljava/util/Map;)V
    .locals 5

    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v3, v4}, Lcom/CameraLensTogglesRelativeLayout;->Scaling(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_1
    check-cast v1, Landroid/widget/TextView;

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->92ebcae27b5395a18af07a7e07265cf7m(Ljava/lang/String;)I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    :goto_3
    if-nez v1, :cond_0

    nop

    goto/32 :goto_74

    nop

    :cond_0
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->92ebcae27b5395a18af07a7e07265cf7m(Ljava/lang/String;)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_7
    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    :cond_1
    goto/32 :goto_43

    nop

    nop

    :goto_8
    invoke-direct {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->92ebcae27b5395a18af07a7e07265cf7m(Ljava/lang/String;)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v4, v2, Lcom/CameraLens;->camera_id:Ljava/lang/String;

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

    :goto_a
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_b
    check-cast v1, Landroid/widget/Space;

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

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

    :goto_d
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_e
    invoke-direct {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->92ebcae27b5395a18af07a7e07265cf7m(Ljava/lang/String;)I

    move-result v1

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

    :goto_f
    const-string v1, "ID4"

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_10
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {v1, p0}, Lcom/CameraLensTogglesConsumer$0;-><init>(Lcom/CameraLensTogglesRelativeLayout;)V

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v4, v2, Lcom/CameraLens;->camera_id:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v1, v2}, Landroid/widget/Space;->setVisibility(I)V

    goto/32 :goto_59

    nop

    nop

    :goto_14
    iget-object v2, v2, Lcom/CameraLens;->camera_id:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_15
    if-nez v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    :cond_2
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p0, v1, v2}, Lcom/CameraLensTogglesRelativeLayout;->getSelectID1(Landroid/widget/TextView;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_17
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p0, v3, v4}, Lcom/CameraLensTogglesRelativeLayout;->Scaling(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

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

    :goto_1b
    const-string v1, "ID3"

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1d
    const-string v1, "ID2_space_ID3"

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v2, v2, Lcom/CameraLens;->camera_id:Ljava/lang/String;

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

    :goto_21
    check-cast v2, Lcom/CameraLens;

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

    :goto_22
    invoke-virtual {p0, v1, v2}, Lcom/CameraLensTogglesRelativeLayout;->getSelectID0(Landroid/widget/TextView;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

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

    :goto_23
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_6e

    nop

    :goto_24
    const/4 v2, 0x0

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_25
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_26
    const/16 v0, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_27
    check-cast v1, Landroid/widget/TextView;

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object v2, v2, Lcom/CameraLens;->camera_id:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_2b
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_2c
    check-cast v1, Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_2d
    invoke-direct {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->92ebcae27b5395a18af07a7e07265cf7m(Ljava/lang/String;)I

    move-result v1

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_2e
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_2f
    sget-object v2, Lcom/CameraLensToggles;->ID1:Lcom/CameraLensToggles;

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    const v1, 0x2

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_31
    invoke-virtual {v1, v2}, Landroid/widget/Space;->setVisibility(I)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_32
    const/4 v2, 0x0

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

    :goto_33
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_34
    sget-object v2, Lcom/CameraLensToggles;->ID2:Lcom/CameraLensToggles;

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_35
    invoke-virtual {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-direct {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->92ebcae27b5395a18af07a7e07265cf7m(Ljava/lang/String;)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_37
    if-nez v1, :cond_4

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_42

    nop

    nop

    :goto_38
    const/16 v2, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_39
    const-string v1, "ID1"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_3a
    iget-object v3, v2, Lcom/CameraLens;->name_toggle:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_3c
    sget-object v2, Lcom/CameraLensToggles;->ID3:Lcom/CameraLensToggles;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3d
    if-nez v1, :cond_5

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_4f

    nop

    nop

    :goto_3e
    invoke-virtual {v1, v2}, Landroid/widget/Space;->setVisibility(I)V

    goto/32 :goto_39

    nop

    nop

    :goto_3f
    check-cast v1, Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual {p0, v1, v2}, Lcom/CameraLensTogglesRelativeLayout;->getSelectID3(Landroid/widget/TextView;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-direct {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->92ebcae27b5395a18af07a7e07265cf7m(Ljava/lang/String;)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_42
    check-cast v1, Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_43
    check-cast v1, Landroid/widget/Space;

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_44
    new-instance v1, Lcom/CameraLensTogglesConsumer$0;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_45
    invoke-virtual {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_46
    iget-object v3, v2, Lcom/CameraLens;->name_toggle:Ljava/lang/String;

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

    :goto_47
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

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

    nop

    :goto_48
    invoke-virtual {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

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

    :goto_49
    invoke-virtual {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_4b
    const-string v1, "ID0_space_ID1"

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4c
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_4d
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    check-cast v1, Landroid/widget/Space;

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

    :goto_4f
    check-cast v1, Landroid/widget/Space;

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_50
    invoke-virtual {p0, v0}, Lcom/CameraLensTogglesRelativeLayout;->setVisibility(I)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_51
    if-nez v1, :cond_6

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_52
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_53
    invoke-virtual {p0, v3, v4}, Lcom/CameraLensTogglesRelativeLayout;->Scaling(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_54
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

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

    :goto_55
    invoke-direct {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->92ebcae27b5395a18af07a7e07265cf7m(Ljava/lang/String;)I

    move-result v1

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    iget-object v4, v2, Lcom/CameraLens;->camera_id:Ljava/lang/String;

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_57
    const/16 v2, 0x8

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_58
    iget-object v4, v2, Lcom/CameraLens;->camera_id:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    const-string v1, "ID2"

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_5a
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_5d
    invoke-direct {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->92ebcae27b5395a18af07a7e07265cf7m(Ljava/lang/String;)I

    move-result v1

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    check-cast v2, Lcom/CameraLens;

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-virtual {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_60
    check-cast v2, Lcom/CameraLens;

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

    :goto_61
    const/4 v2, 0x0

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

    :goto_62
    iget-object v2, v2, Lcom/CameraLens;->camera_id:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_63
    iget-object v3, v2, Lcom/CameraLens;->name_toggle:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_64
    const-string v1, "ID0"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_65
    invoke-virtual {v1, v2}, Landroid/widget/Space;->setVisibility(I)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_66
    check-cast v2, Lcom/CameraLens;

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_67
    iget-object v0, p0, Lcom/CameraLensTogglesRelativeLayout;->a:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_68
    if-nez v1, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    :cond_7
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    invoke-virtual {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_6a
    const-string v1, "ID3_space_ID4"

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    iget-object v3, v2, Lcom/CameraLens;->name_toggle:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_6d
    const v0, 0x16

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_6e
    goto/32 :goto_18

    nop

    nop

    :goto_6f
    goto/32 :goto_67

    nop

    nop

    nop

    :goto_70
    invoke-virtual {p0, v1, v2}, Lcom/CameraLensTogglesRelativeLayout;->getSelectID2(Landroid/widget/TextView;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_71
    if-nez v1, :cond_8

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    :cond_8
    goto/32 :goto_2c

    nop

    nop

    :goto_72
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_73
    return-void

    nop

    nop

    nop

    nop

    :goto_74
    goto/32 :goto_26

    nop

    nop

    :goto_75
    if-nez v1, :cond_9

    nop

    goto/32 :goto_74

    nop

    nop

    :cond_9
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_76
    sget-object v2, Lcom/CameraLensToggles;->ID0:Lcom/CameraLensToggles;

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_77
    const-string v1, "ID1_space_ID2"

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_78
    invoke-virtual {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

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

    :goto_79
    invoke-virtual {p0, v3, v4}, Lcom/CameraLensTogglesRelativeLayout;->Scaling(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_7a
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop
.end method

.method public setOne(Ljava/util/Map;)V
    .locals 5

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->92ebcae27b5395a18af07a7e07265cf7m(Ljava/lang/String;)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

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

    :goto_2
    invoke-direct {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->92ebcae27b5395a18af07a7e07265cf7m(Ljava/lang/String;)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_3
    const/16 v2, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

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

    :goto_5
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-nez v1, :cond_0

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

    :cond_0
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0xf

    nop

    nop

    goto/32 :goto_18

    nop

    nop

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

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_a
    check-cast v1, Landroid/widget/Space;

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_b
    sget-object v2, Lcom/CameraLensToggles;->ID0:Lcom/CameraLensToggles;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_c
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/32 :goto_56

    nop

    nop

    :goto_d
    iget-object v4, v2, Lcom/CameraLens;->camera_id:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_e
    check-cast v1, Landroid/widget/Space;

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/16 v2, 0x8

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

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

    :goto_12
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_14
    if-nez v1, :cond_1

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
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->92ebcae27b5395a18af07a7e07265cf7m(Ljava/lang/String;)I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_16
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_17
    invoke-virtual {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const v1, 0x16

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p0, v3, v4}, Lcom/CameraLensTogglesRelativeLayout;->Scaling(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_1a
    invoke-virtual {v1, v2}, Landroid/widget/Space;->setVisibility(I)V

    goto/32 :goto_4e

    nop

    nop

    :goto_1b
    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_3b

    nop

    nop

    :goto_1d
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_1e
    check-cast v1, Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1f
    const-string v1, "ID2_space_ID3"

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

    :goto_20
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    check-cast v1, Landroid/widget/Space;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_22
    const/16 v0, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_23
    const-string v1, "ID1_space_ID2"

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

    :goto_24
    const-string v1, "ID0"

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_25
    if-nez v1, :cond_2

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

    :cond_2
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_26
    if-nez v1, :cond_3

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_27
    invoke-direct {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->92ebcae27b5395a18af07a7e07265cf7m(Ljava/lang/String;)I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_28
    new-instance v1, Lcom/CameraLensTogglesConsumer$0;

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_29
    const-string v1, "ID1"

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

    :goto_2a
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {p0, v1, v2}, Lcom/CameraLensTogglesRelativeLayout;->getSelectID0(Landroid/widget/TextView;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_2c
    const/16 v2, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v1, v2}, Landroid/widget/Space;->setVisibility(I)V

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_2e
    invoke-direct {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->92ebcae27b5395a18af07a7e07265cf7m(Ljava/lang/String;)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_2f
    invoke-direct {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->92ebcae27b5395a18af07a7e07265cf7m(Ljava/lang/String;)I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_30
    invoke-direct {v1, p0}, Lcom/CameraLensTogglesConsumer$0;-><init>(Lcom/CameraLensTogglesRelativeLayout;)V

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_31
    check-cast v1, Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_32
    invoke-virtual {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-direct {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->92ebcae27b5395a18af07a7e07265cf7m(Ljava/lang/String;)I

    move-result v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    const/16 v2, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_35
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_37
    check-cast v1, Landroid/widget/Space;

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_38
    check-cast v1, Landroid/widget/TextView;

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

    :goto_39
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_23

    nop

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

    :goto_3b
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_3e
    const/16 v2, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/32 :goto_4f

    nop

    nop

    :goto_40
    invoke-direct {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->92ebcae27b5395a18af07a7e07265cf7m(Ljava/lang/String;)I

    move-result v1

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

    :goto_41
    if-nez v1, :cond_4

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_4
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_42
    if-lez v0, :cond_5

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1c

    nop

    :goto_43
    const-string v1, "ID4"

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_44
    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_45
    invoke-virtual {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_46
    if-nez v1, :cond_6

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_47
    const/16 v2, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_48
    if-nez v1, :cond_7

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_49
    invoke-direct {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->92ebcae27b5395a18af07a7e07265cf7m(Ljava/lang/String;)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_4a
    check-cast v2, Lcom/CameraLens;

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_4c
    iget-object v0, p0, Lcom/CameraLensTogglesRelativeLayout;->a:Ljava/util/List;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {p0, v0}, Lcom/CameraLensTogglesRelativeLayout;->setVisibility(I)V

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    const-string v1, "ID3"

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_4f
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_50
    const-string v1, "ID0_space_ID1"

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_51
    const-string v1, "ID3_space_ID4"

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_53
    invoke-virtual {v1, v2}, Landroid/widget/Space;->setVisibility(I)V

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_54
    if-nez v1, :cond_8

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_5d

    nop

    nop

    :goto_55
    if-nez v1, :cond_9

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_57
    const/16 v2, 0x8

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

    :goto_58
    iget-object v2, v2, Lcom/CameraLens;->camera_id:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_59
    invoke-virtual {v1, v2}, Landroid/widget/Space;->setVisibility(I)V

    goto/32 :goto_5e

    nop

    nop

    :goto_5a
    iget-object v3, v2, Lcom/CameraLens;->name_toggle:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_5b
    const/16 v2, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_5c
    check-cast v1, Landroid/widget/TextView;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_5d
    check-cast v1, Landroid/widget/TextView;

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_5e
    const-string v1, "ID2"

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_5f
    invoke-virtual {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop
.end method

.method public setThree(Ljava/util/Map;)V
    .locals 5

    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_0
    iget-object v2, v2, Lcom/CameraLens;->camera_id:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_1
    if-nez v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    :cond_0
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->92ebcae27b5395a18af07a7e07265cf7m(Ljava/lang/String;)I

    move-result v1

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

    :goto_4
    iget-object v4, v2, Lcom/CameraLens;->camera_id:Ljava/lang/String;

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

    :goto_5
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_6
    const/16 v2, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v4, v2, Lcom/CameraLens;->camera_id:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_9
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_a
    check-cast v1, Landroid/widget/TextView;

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const-string v1, "ID0"

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->92ebcae27b5395a18af07a7e07265cf7m(Ljava/lang/String;)I

    move-result v1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_e
    check-cast v2, Lcom/CameraLens;

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/16 v2, 0x8

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0, v1, v2}, Lcom/CameraLensTogglesRelativeLayout;->getSelectID0(Landroid/widget/TextView;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

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

    :goto_12
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    sget-object v2, Lcom/CameraLensToggles;->ID1:Lcom/CameraLensToggles;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_16
    return-void

    nop

    nop

    :goto_17
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

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

    :goto_1b
    invoke-virtual {v1, v2}, Landroid/widget/Space;->setVisibility(I)V

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_20

    nop

    :goto_1d
    iget-object v0, p0, Lcom/CameraLensTogglesRelativeLayout;->a:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_1e
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_21
    iget-object v2, v2, Lcom/CameraLens;->camera_id:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_22
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-nez v1, :cond_1

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_25
    const-string v1, "ID4"

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

    :goto_26
    invoke-virtual {v1, v2}, Landroid/widget/Space;->setVisibility(I)V

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_28
    iget-object v2, v2, Lcom/CameraLens;->camera_id:Ljava/lang/String;

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

    :goto_29
    return-void

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_69

    nop

    nop

    :goto_2b
    invoke-virtual {v1, v2}, Landroid/widget/Space;->setVisibility(I)V

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_2c
    const-string v1, "ID2"

    nop

    goto/32 :goto_71

    nop

    nop

    :goto_2d
    if-nez v1, :cond_2

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

    :cond_2
    goto/32 :goto_6c

    nop

    nop

    :goto_2e
    const-string v1, "ID2_space_ID3"

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    check-cast v1, Landroid/widget/Space;

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    if-nez v1, :cond_3

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :cond_3
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_31
    sget-object v2, Lcom/CameraLensToggles;->ID0:Lcom/CameraLensToggles;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_32
    const/4 v2, 0x0

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_33
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_34
    if-nez v1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {p0, v1, v2}, Lcom/CameraLensTogglesRelativeLayout;->getSelectID1(Landroid/widget/TextView;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    if-nez v1, :cond_5

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-direct {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->92ebcae27b5395a18af07a7e07265cf7m(Ljava/lang/String;)I

    move-result v1

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_38
    const-string v1, "ID1_space_ID2"

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_39
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    const v1, 0x19

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    check-cast v1, Landroid/widget/TextView;

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

    :goto_3c
    iget-object v3, v2, Lcom/CameraLens;->name_toggle:Ljava/lang/String;

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

    :goto_3d
    invoke-virtual {p0, v3, v4}, Lcom/CameraLensTogglesRelativeLayout;->Scaling(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    if-nez v1, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    :cond_6
    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_3f
    check-cast v2, Lcom/CameraLens;

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_40
    check-cast v2, Lcom/CameraLens;

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_41
    check-cast v1, Landroid/widget/Space;

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {p0, v0}, Lcom/CameraLensTogglesRelativeLayout;->setVisibility(I)V

    goto/32 :goto_16

    nop

    nop

    :goto_43
    const-string v1, "ID1"

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_44
    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-direct {v1, p0}, Lcom/CameraLensTogglesConsumer$0;-><init>(Lcom/CameraLensTogglesRelativeLayout;)V

    goto/32 :goto_44

    nop

    nop

    :goto_46
    invoke-virtual {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    iget-object v3, v2, Lcom/CameraLens;->name_toggle:Ljava/lang/String;

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

    :goto_48
    const-string v1, "ID3"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_49
    invoke-virtual {p0, v3, v4}, Lcom/CameraLensTogglesRelativeLayout;->Scaling(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {v1, v2}, Landroid/widget/Space;->setVisibility(I)V

    goto/32 :goto_25

    nop

    nop

    :goto_4b
    invoke-direct {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->92ebcae27b5395a18af07a7e07265cf7m(Ljava/lang/String;)I

    move-result v1

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    check-cast v1, Landroid/widget/TextView;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-direct {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->92ebcae27b5395a18af07a7e07265cf7m(Ljava/lang/String;)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_4f
    check-cast v1, Landroid/widget/TextView;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_50
    check-cast v1, Landroid/widget/Space;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_51
    const/16 v2, 0x8

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_52
    if-nez v1, :cond_7

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_53
    const-string v1, "ID3_space_ID4"

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_54
    iget-object v3, v2, Lcom/CameraLens;->name_toggle:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_55
    invoke-virtual {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_56
    if-nez v1, :cond_8

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_57
    const/4 v2, 0x0

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_58
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_59
    invoke-direct {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->92ebcae27b5395a18af07a7e07265cf7m(Ljava/lang/String;)I

    move-result v1

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    check-cast v1, Landroid/widget/TextView;

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_5c
    iget-object v4, v2, Lcom/CameraLens;->camera_id:Ljava/lang/String;

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_5d
    if-lez v0, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_1f

    nop

    :goto_5e
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_5f
    sget-object v2, Lcom/CameraLensToggles;->ID2:Lcom/CameraLensToggles;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_60
    const-string v1, "ID0_space_ID1"

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_61
    invoke-virtual {p0, v1, v2}, Lcom/CameraLensTogglesRelativeLayout;->getSelectID2(Landroid/widget/TextView;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

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

    nop

    :goto_62
    invoke-virtual {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    invoke-virtual {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->findViewById(I)Landroid/view/View;

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

    nop

    :goto_64
    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_65
    invoke-direct {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->92ebcae27b5395a18af07a7e07265cf7m(Ljava/lang/String;)I

    move-result v1

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_66
    const/16 v2, 0x8

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

    :goto_67
    invoke-direct {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->92ebcae27b5395a18af07a7e07265cf7m(Ljava/lang/String;)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_68
    invoke-virtual {p0, v3, v4}, Lcom/CameraLensTogglesRelativeLayout;->Scaling(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    const/16 v0, 0x8

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_6a
    invoke-virtual {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

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

    :goto_6b
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    check-cast v1, Landroid/widget/Space;

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_6d
    rem-int v0, v0, v1

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

    :goto_6e
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    const v0, 0xc

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_70
    new-instance v1, Lcom/CameraLensTogglesConsumer$0;

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

    :goto_71
    invoke-direct {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->92ebcae27b5395a18af07a7e07265cf7m(Ljava/lang/String;)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop
.end method

.method public setTwo(Ljava/util/Map;)V
    .locals 5

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_0
    if-nez v1, :cond_0

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_68

    nop

    :cond_1
    goto/32 :goto_67

    nop

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/Space;->setVisibility(I)V

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x17

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_4
    iget-object v4, v2, Lcom/CameraLens;->camera_id:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_4b

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
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/32 :goto_44

    nop

    nop

    :goto_8
    check-cast v1, Landroid/widget/TextView;

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->92ebcae27b5395a18af07a7e07265cf7m(Ljava/lang/String;)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_a
    invoke-direct {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->92ebcae27b5395a18af07a7e07265cf7m(Ljava/lang/String;)I

    move-result v1

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Lcom/CameraLensTogglesRelativeLayout;->a:Ljava/util/List;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_3d

    nop

    nop

    :goto_d
    if-nez v1, :cond_2

    nop

    nop

    goto/32 :goto_6

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

    :goto_e
    invoke-virtual {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_f
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0, v0}, Lcom/CameraLensTogglesRelativeLayout;->setVisibility(I)V

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_12
    invoke-virtual {v1, v2}, Landroid/widget/Space;->setVisibility(I)V

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-nez v1, :cond_3

    nop

    goto/32 :goto_6

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

    :goto_14
    check-cast v1, Landroid/widget/TextView;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_15
    check-cast v1, Landroid/widget/Space;

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-nez v1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0, v3, v4}, Lcom/CameraLensTogglesRelativeLayout;->Scaling(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1b
    if-nez v1, :cond_5

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_43

    nop

    nop

    nop

    :goto_1c
    check-cast v1, Landroid/widget/TextView;

    nop

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

    :goto_1d
    invoke-virtual {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_1e
    invoke-virtual {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_20
    const-string v1, "ID0"

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p0, v1, v2}, Lcom/CameraLensTogglesRelativeLayout;->getSelectID1(Landroid/widget/TextView;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v3, v2, Lcom/CameraLens;->name_toggle:Ljava/lang/String;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_23
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_25
    sget-object v2, Lcom/CameraLensToggles;->ID0:Lcom/CameraLensToggles;

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_68

    nop

    :goto_27
    invoke-virtual {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_28
    iget-object v2, v2, Lcom/CameraLens;->camera_id:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_29
    iget-object v2, v2, Lcom/CameraLens;->camera_id:Ljava/lang/String;

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto/32 :goto_20

    nop

    nop

    :goto_2b
    const-string v1, "ID0_space_ID1"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2c
    invoke-direct {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->92ebcae27b5395a18af07a7e07265cf7m(Ljava/lang/String;)I

    move-result v1

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

    :goto_2d
    iget-object v4, v2, Lcom/CameraLens;->camera_id:Ljava/lang/String;

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

    :goto_2e
    invoke-virtual {v1, v2}, Landroid/widget/Space;->setVisibility(I)V

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const-string v1, "ID3"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_30
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_31
    add-int v0, v0, v1

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_33
    const/16 v2, 0x8

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_34
    check-cast v1, Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_35
    const/16 v0, 0x8

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_36
    const-string v1, "ID2"

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_37
    const/16 v2, 0x8

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

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

    :goto_3a
    invoke-virtual {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

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

    :goto_3b
    const/16 v2, 0x8

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

    :goto_3c
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    const-string v1, "ID3_space_ID4"

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-direct {v1, p0}, Lcom/CameraLensTogglesConsumer$0;-><init>(Lcom/CameraLensTogglesRelativeLayout;)V

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_3f
    const-string v1, "ID1_space_ID2"

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_40
    if-nez v1, :cond_6

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_6
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_41
    invoke-direct {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->92ebcae27b5395a18af07a7e07265cf7m(Ljava/lang/String;)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_42
    check-cast v1, Landroid/widget/Space;

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_43
    check-cast v1, Landroid/widget/TextView;

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_44
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_45
    check-cast v2, Lcom/CameraLens;

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-direct {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->92ebcae27b5395a18af07a7e07265cf7m(Ljava/lang/String;)I

    move-result v1

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

    :goto_47
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_48
    const-string v1, "ID4"

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

    :goto_49
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_4a
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {p0, v3, v4}, Lcom/CameraLensTogglesRelativeLayout;->Scaling(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_4c
    check-cast v2, Lcom/CameraLens;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_4d
    if-nez v1, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_7
    goto/32 :goto_51

    nop

    nop

    nop

    :goto_4e
    invoke-direct {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->92ebcae27b5395a18af07a7e07265cf7m(Ljava/lang/String;)I

    move-result v1

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

    :goto_4f
    const/16 v2, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_50
    const-string v1, "ID2_space_ID3"

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_51
    check-cast v1, Landroid/widget/Space;

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_52
    const/16 v2, 0x8

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    invoke-virtual {p0, v1, v2}, Lcom/CameraLensTogglesRelativeLayout;->getSelectID0(Landroid/widget/TextView;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

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

    :goto_54
    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    goto/32 :goto_5

    nop

    nop

    :goto_55
    sget-object v2, Lcom/CameraLensToggles;->ID1:Lcom/CameraLensToggles;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_56
    new-instance v1, Lcom/CameraLensTogglesConsumer$0;

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

    :goto_57
    if-nez v1, :cond_8

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_58
    invoke-direct {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->92ebcae27b5395a18af07a7e07265cf7m(Ljava/lang/String;)I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_59
    const/4 v2, 0x0

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

    nop

    :goto_5a
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    const/16 v2, 0x8

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_5d
    if-nez v1, :cond_9

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_9
    goto/32 :goto_66

    nop

    nop

    :goto_5e
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_5f
    iget-object v3, v2, Lcom/CameraLens;->name_toggle:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_60
    invoke-virtual {v1, v2}, Landroid/widget/Space;->setVisibility(I)V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_61
    invoke-direct {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->92ebcae27b5395a18af07a7e07265cf7m(Ljava/lang/String;)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_62
    const v0, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_63
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_64
    const-string v1, "ID1"

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_65
    invoke-direct {p0, v1}, Lcom/CameraLensTogglesRelativeLayout;->92ebcae27b5395a18af07a7e07265cf7m(Ljava/lang/String;)I

    move-result v1

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

    :goto_66
    check-cast v1, Landroid/widget/Space;

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

    nop

    :goto_67
    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_68
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop
.end method
