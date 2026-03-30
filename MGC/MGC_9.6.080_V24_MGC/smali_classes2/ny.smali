.class public final Lny;
.super Landroid/content/ContextWrapper;
.source "PG"


# static fields
.field private static b:Landroid/content/res/Configuration;


# instance fields
.field public a:I

.field private c:Landroid/content/res/Resources$Theme;

.field private d:Landroid/view/LayoutInflater;

.field private e:Landroid/content/res/Configuration;

.field private f:Landroid/content/res/Resources;


# direct methods
.method private final 33f5b80483094659737b73d90f80a8a4m()V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const v0, 0x9

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

    :goto_1
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_0
    goto/32 :goto_17

    nop

    nop

    :goto_2
    goto/32 :goto_a

    nop

    nop

    :goto_3
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

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

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_6
    goto/32 :goto_3

    nop

    nop

    :goto_7
    if-eqz v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Lny;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    nop

    goto/32 :goto_13

    nop

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
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput-object v0, p0, Lny;->c:Landroid/content/res/Resources$Theme;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_c
    invoke-direct {p0}, Lny;->f875135777c17da3cef2ea6eeff5be29m()Landroid/content/res/Resources;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_2

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

    :cond_2
    goto/32 :goto_2

    nop

    :goto_e
    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_f
    invoke-virtual {v1, v0}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    :goto_10
    goto/32 :goto_18

    nop

    nop

    :goto_11
    iget p0, p0, Lny;->a:I

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v0, p0, Lny;->c:Landroid/content/res/Resources$Theme;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_14
    invoke-virtual {v0, p0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v1, 0x1

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

    :goto_16
    const v1, 0xf

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

    :goto_17
    iget-object v1, p0, Lny;->c:Landroid/content/res/Resources$Theme;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v0, p0, Lny;->c:Landroid/content/res/Resources$Theme;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-direct {p0, v0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    goto/32 :goto_0

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput p2, p0, Lny;->a:I

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iput-object p2, p0, Lny;->c:Landroid/content/res/Resources$Theme;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method private final f875135777c17da3cef2ea6eeff5be29m()Landroid/content/res/Resources;
    .locals 3

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lny;->e:Landroid/content/res/Configuration;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lny;->f:Landroid/content/res/Resources;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2
    invoke-super {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_23

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
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1b

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-eqz v1, :cond_1

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

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_7
    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    :cond_2
    goto/32 :goto_0

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

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-object v0, p0, Lny;->f:Landroid/content/res/Resources;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Lny;->e:Landroid/content/res/Configuration;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v1, Landroid/content/res/Configuration;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_c
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput v2, v1, Landroid/content/res/Configuration;->fontScale:F

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_3

    nop

    goto/32 :goto_d

    nop

    :cond_3
    goto/32 :goto_c

    nop

    :goto_11
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p0, v0}, Lny;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_14
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_16
    sget-object v1, Lny;->b:Landroid/content/res/Configuration;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_17
    if-nez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :cond_4
    goto/32 :goto_1d

    nop

    nop

    :goto_18
    const v1, 0x10

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

    :goto_19
    goto :goto_24

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1b
    sget-object v1, Lny;->b:Landroid/content/res/Configuration;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1c
    const v0, 0x20

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto :goto_1a

    nop

    nop

    :goto_1e
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v0, p0, Lny;->f:Landroid/content/res/Resources;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_20
    sput-object v1, Lny;->b:Landroid/content/res/Configuration;

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

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

    :goto_23
    iput-object v0, p0, Lny;->f:Landroid/content/res/Resources;

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Landroid/content/res/Configuration;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object v0, p0, Lny;->f:Landroid/content/res/Resources;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    goto/32 :goto_1

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
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_7
    new-instance p0, Ljava/lang/IllegalStateException;

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

    :goto_8
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput-object v0, p0, Lny;->e:Landroid/content/res/Configuration;

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

    :goto_b
    if-eqz v0, :cond_1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    nop

    :goto_c
    const-string p1, "Override configuration has already been set"

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_d
    new-instance v0, Landroid/content/res/Configuration;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Lny;->e:Landroid/content/res/Configuration;

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

    :goto_f
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const-string p1, "getResources() or getAssets() has already been called"

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

    :goto_11
    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    goto/32 :goto_a

    nop

    nop
.end method

.method public final getAssets()Landroid/content/res/AssetManager;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Lny;->f875135777c17da3cef2ea6eeff5be29m()Landroid/content/res/Resources;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop
.end method

.method public final getResources()Landroid/content/res/Resources;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lny;->f875135777c17da3cef2ea6eeff5be29m()Landroid/content/res/Resources;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop
.end method

.method public final getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

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

    :goto_2
    invoke-virtual {p1, p0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

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
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    nop

    :goto_4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Lny;->d:Landroid/view/LayoutInflater;

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_8

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lny;->getBaseContext()Landroid/content/Context;

    move-result-object p1

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

    :goto_8
    iget-object p0, p0, Lny;->d:Landroid/view/LayoutInflater;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-object p0

    nop

    nop

    nop

    nop

    :goto_a
    return-object p0

    nop

    nop

    :goto_b
    goto/32 :goto_f

    nop

    nop

    :goto_c
    const-string v0, "layout_inflater"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_d
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p1, p0, Lny;->d:Landroid/view/LayoutInflater;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Lny;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final getTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lny;->33f5b80483094659737b73d90f80a8a4m()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lny;->c:Landroid/content/res/Resources$Theme;

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

    :goto_2
    iget v0, p0, Lny;->a:I

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    :goto_4
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

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

    :goto_5
    iget-object p0, p0, Lny;->c:Landroid/content/res/Resources$Theme;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    return-object v0

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x7f15046d

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

    :goto_9
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    iput v0, p0, Lny;->a:I

    nop

    :goto_b
    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final setTheme(I)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lny;->33f5b80483094659737b73d90f80a8a4m()V

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    iput p1, p0, Lny;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    if-ne v0, p1, :cond_0

    nop

    nop

    goto/32 :goto_1

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

    :goto_4
    return-void

    nop

    nop

    nop

    :goto_5
    iget v0, p0, Lny;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method
