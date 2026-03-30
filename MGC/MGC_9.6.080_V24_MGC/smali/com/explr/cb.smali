.class public Lcom/explr/cb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field static a:Ljava/io/FileFilter;

.field static b:Ljava/io/FileFilter;


# instance fields
.field private c:Ljava/util/List;

.field private d:Ljava/io/File;

.field private e:Landroid/content/Context;

.field private f:Landroid/app/AlertDialog;

.field private g:Landroid/widget/ListView;

.field private h:Lcom/explr/ca;

.field private i:Z

.field private j:Ljava/io/FileFilter;

.field private k:Ljava/lang/String;


# direct methods
.method private 166277962e993c138a6b1f0c9b571cc0m()V
    .locals 4

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lcom/explr/cb;->c:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_2
    iget-object v1, p0, Lcom/explr/cb;->c:Ljava/util/List;

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

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_4
    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :goto_5
    goto/32 :goto_1

    nop

    nop

    :goto_6
    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_8
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const-string v3, ".."

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-nez v1, :cond_1

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

    :cond_1
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Lcom/explr/cb;->c:Ljava/util/List;

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

    :goto_d
    iget-object v1, p0, Lcom/explr/cb;->j:Ljava/io/FileFilter;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_14

    nop

    nop

    :goto_f
    goto/32 :goto_c

    nop

    nop

    :goto_10
    iget-object v1, p0, Lcom/explr/cb;->c:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_11
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_2
    goto/32 :goto_2

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

    nop

    :goto_14
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_15
    const v0, 0x6

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

    :goto_16
    sget-object v1, Lcom/explr/bc;->INSTANCE:Lcom/explr/bc;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_18
    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v0, p0, Lcom/explr/cb;->d:Ljava/io/File;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1a
    new-instance v2, Ljava/io/File;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1b
    goto/32 :goto_f

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

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1d
    const v1, 0x12

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_1e
    iget-object v1, p0, Lcom/explr/cb;->d:Ljava/io/File;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop
.end method

.method static constructor <clinit>()V
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

    nop

    nop

    nop

    :goto_1
    sput-object v0, Lcom/explr/cb;->a:Ljava/io/FileFilter;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    sget-object v0, Lcom/explr/ba;->INSTANCE:Lcom/explr/ba;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sput-object v0, Lcom/explr/cb;->b:Ljava/io/FileFilter;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    sget-object v0, Lcom/explr/be;->INSTANCE:Lcom/explr/be;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    :goto_2
    iput-object v0, p0, Lcom/explr/cb;->h:Lcom/explr/ca;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object v0, p0, Lcom/explr/cb;->c:Ljava/util/List;

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
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

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
.end method

.method private static synthetic a(Ljava/io/File;Ljava/io/File;)I
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

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

    :goto_1
    return p0

    nop

    :goto_2
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

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

    nop

    :goto_4
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

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

    :goto_5
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method private static synthetic a(Landroid/content/DialogInterface;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method private static synthetic a(Ljava/io/File;)Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz p0, :cond_0

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Ljava/io/File;->isHidden()Z

    move-result p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

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
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 p0, 0x1

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

    :goto_6
    return p0

    nop

    nop
.end method

.method private static synthetic b(Ljava/io/File;)Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p0

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
.end method

.method private f875135777c17da3cef2ea6eeff5be29m()Lcom/explr/aa;
    .locals 5

    goto/32 :goto_15

    nop

    nop

    :goto_0
    iget-object v1, p0, Lcom/explr/cb;->g:Landroid/widget/ListView;

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

    :goto_1
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
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

    :cond_0
    goto/32 :goto_9

    nop

    :goto_3
    invoke-direct {p0}, Lcom/explr/cb;->166277962e993c138a6b1f0c9b571cc0m()V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v1, p0, Lcom/explr/cb;->g:Landroid/widget/ListView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_6
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v2, p0, Lcom/explr/cb;->c:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x19

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
    const v3, 0x7f0e01aa

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_d
    new-instance v0, Lcom/explr/aa;

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

    :goto_e
    add-int v0, v0, v1

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
    iget-object v4, p0, Lcom/explr/cb;->k:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    return-object v0

    nop

    :goto_11
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_13
    iget-object v1, p0, Lcom/explr/cb;->e:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_14
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/explr/aa;-><init>(Landroid/content/Context;Ljava/util/List;ILjava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v0, 0x20

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
.end method

.method public static synthetic lambda$2ks4aLyM4EwBvXxGz5PR2DQ43TU(Ljava/io/File;)Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    :goto_1
    invoke-static {p0}, Lcom/explr/cb;->b(Ljava/io/File;)Z

    move-result p0

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
.end method

.method public static synthetic lambda$5pSlKLMsEC2y7cf40Y93k4eMQlg(Landroid/content/DialogInterface;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Lcom/explr/cb;->a(Landroid/content/DialogInterface;I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method public static synthetic lambda$C9uQuNV58yqbMYnpXXHEPGCsC7M(Ljava/io/File;Ljava/io/File;)I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Lcom/explr/cb;->a(Ljava/io/File;Ljava/io/File;)I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return p0

    nop
.end method

.method public static synthetic lambda$Z1eAdt2Fxo6k_2XvfWucOTUa-Uc(Ljava/io/File;)Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    :goto_1
    invoke-static {p0}, Lcom/explr/cb;->a(Ljava/io/File;)Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method public build()Lcom/explr/cb;
    .locals 4

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_0
    const-string v2, "Load"

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object v0, p0, Lcom/explr/cb;->f:Landroid/app/AlertDialog;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

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

    :goto_4
    iget-object v3, p0, Lcom/explr/cb;->e:Landroid/content/Context;

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_5
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x1e

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Lcom/explr/cb;->f:Landroid/app/AlertDialog;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_8
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

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

    :goto_9
    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x10

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_10

    nop

    :goto_d
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Lcom/explr/cb;->g:Landroid/widget/ListView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_18

    nop

    nop

    :goto_11
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/high16 v0, 0x1040000

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {p0}, Lcom/explr/cb;->f875135777c17da3cef2ea6eeff5be29m()Lcom/explr/aa;

    move-result-object v0

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

    :goto_14
    invoke-virtual {v1, v0, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_15
    new-instance v1, Landroid/app/AlertDialog$Builder;

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

    :goto_16
    iput-object v0, p0, Lcom/explr/cb;->g:Landroid/widget/ListView;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_17
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1a
    sget-object v2, Lcom/explr/bb;->INSTANCE:Lcom/explr/bb;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop
.end method

.method public build$1()Lcom/explr/cb;
    .locals 4

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_0
    iput-object v0, p0, Lcom/explr/cb;->g:Landroid/widget/ListView;

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

    :goto_1
    goto/32 :goto_1a

    nop

    :goto_2
    return-object p0

    nop

    nop

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
    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    sget-object v2, Lcom/explr/bb;->INSTANCE:Lcom/explr/bb;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_7
    invoke-direct {p0}, Lcom/explr/cb;->f875135777c17da3cef2ea6eeff5be29m()Lcom/explr/aa;

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

    :goto_8
    new-instance v1, Landroid/app/AlertDialog$Builder;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_9
    const/high16 v0, 0x1040000

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_b
    iget-object v0, p0, Lcom/explr/cb;->g:Landroid/widget/ListView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_c
    const-string v2, "Load config"

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_d
    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v1, v0, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iput-object v0, p0, Lcom/explr/cb;->f:Landroid/app/AlertDialog;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v3, p0, Lcom/explr/cb;->e:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v0, p0, Lcom/explr/cb;->f:Landroid/app/AlertDialog;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_19

    nop

    :goto_16
    const v1, 0x4

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

    :goto_17
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto/32 :goto_2

    nop

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_3

    nop

    nop

    :goto_1a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
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

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-eqz p2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-nez p2, :cond_1

    nop

    goto/32 :goto_1b

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

    nop

    nop

    :goto_3
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_4
    const-string p3, ".."

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p2, p0, Lcom/explr/cb;->d:Ljava/io/File;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, p2}, Lcom/explr/cb;->testExternalStorage(Ljava/io/File;)Ljava/io/File;

    move-result-object p2

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
    goto/16 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {p2, p3, p1}, Lcom/explr/ca;->onChoosePath(Ljava/lang/String;Ljava/io/File;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    :goto_b
    iget-object p2, p0, Lcom/explr/cb;->h:Lcom/explr/ca;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_c
    iget-object p1, p0, Lcom/explr/cb;->c:Ljava/util/List;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p2, p0, Lcom/explr/cb;->d:Ljava/io/File;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_e
    iput-object p2, p0, Lcom/explr/cb;->d:Ljava/io/File;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

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

    :goto_10
    invoke-static {p1, p2}, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {p0}, Lcom/explr/cb;->f875135777c17da3cef2ea6eeff5be29m()Lcom/explr/aa;

    :goto_12
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object p1, p0, Lcom/explr/cb;->f:Landroid/app/AlertDialog;

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

    :goto_14
    iget-object p1, p0, Lcom/explr/cb;->c:Ljava/util/List;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_16
    iget-object p2, p0, Lcom/explr/cb;->h:Lcom/explr/ca;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p2

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p2

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_1a
    return-void

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-eqz p2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1e

    nop

    nop

    :goto_1d
    const-string p1, "start_active_directory_key"

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-boolean p2, p0, Lcom/explr/cb;->i:Z

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1f
    check-cast p1, Ljava/io/File;

    nop

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

    nop

    :goto_20
    if-gez p3, :cond_3

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_21
    if-nez p2, :cond_4

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_5

    nop

    nop

    :goto_22
    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-ge p3, p1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    :cond_5
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p0, p1}, Lcom/explr/cb;->testExternalStorage(Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_26
    goto/16 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_28
    iput-object p1, p0, Lcom/explr/cb;->d:Ljava/io/File;

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_19

    nop

    nop
.end method

.method public show()V
    .locals 4

    goto/32 :goto_11

    nop

    nop

    :goto_0
    const-string v2, "android.settings.MANAGE_ALL_FILES_ACCESS_PERMISSION"

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result v0

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

    :goto_2
    const v1, 0x1a

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1d

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

    goto/32 :goto_10

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_7
    const/16 v1, 0x1e

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

    :goto_8
    return-void

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Lcom/explr/cb;->f:Landroid/app/AlertDialog;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_b
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_d
    new-instance v1, Landroid/content/Intent;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto/32 :goto_19

    nop

    nop

    :goto_f
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :goto_10
    goto/32 :goto_8

    nop

    nop

    :goto_11
    const v0, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v0, p0, Lcom/explr/cb;->g:Landroid/widget/ListView;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_13
    if-eqz v0, :cond_1

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

    :cond_1
    goto/32 :goto_15

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

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

    :goto_15
    iget-object v3, p0, Lcom/explr/cb;->e:Landroid/content/Context;

    nop

    nop

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    nop

    nop

    nop

    const-string v1, "android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION"

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    nop

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    nop

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_1c

    nop

    nop

    :goto_16
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

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

    :goto_17
    if-ge v0, v1, :cond_2

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_2
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_b

    nop

    :goto_19
    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/32 :goto_4

    nop

    nop

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

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1b
    if-nez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_12

    nop

    nop

    :goto_1c
    goto/16 :goto_10

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v0, p0, Lcom/explr/cb;->f:Landroid/app/AlertDialog;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop
.end method

.method public testExternalStorage(Ljava/io/File;)Ljava/io/File;
    .locals 3

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_10

    nop

    nop

    :goto_3
    return-object v0

    nop

    :goto_4
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_6
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

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
    if-nez v2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    :goto_8
    move-object/from16 v0, p1

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_3

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

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

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
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_e
    goto/32 :goto_2

    nop

    nop

    :goto_f
    const v1, 0x20

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    nop

    goto/32 :goto_b

    nop

    nop

    nop
.end method

.method public with(Landroid/content/Context;)Lcom/explr/cb;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lcom/explr/cb;->e:Landroid/content/Context;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop
.end method

.method public withChosenListener(Lcom/explr/ca;)Lcom/explr/cb;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object p0

    nop

    :goto_1
    iput-object p1, p0, Lcom/explr/cb;->h:Lcom/explr/ca;

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public withDateFormat()Lcom/explr/cb;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0}, Lcom/explr/cb;->withDateFormat(Ljava/lang/String;)Lcom/explr/cb;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    const-string v0, "yyyy/MM/dd HH:mm:ss"

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
    return-object v0

    nop
.end method

.method public withDateFormat(Ljava/lang/String;)Lcom/explr/cb;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lcom/explr/cb;->k:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public withFilter(Ljava/io/FileFilter;)Lcom/explr/cb;
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_0
    const v1, 0xc

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_5
    return-object p0

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v1, 0x0

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

    :goto_8
    invoke-virtual {p0, v0, v0, v1}, Lcom/explr/cb;->withFilter(ZZ[Ljava/lang/String;)Lcom/explr/cb;

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_b
    iput-object p1, p0, Lcom/explr/cb;->j:Ljava/io/FileFilter;

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

    :goto_c
    const v0, 0xd

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    goto/32 :goto_a

    nop

    :cond_0
    goto/32 :goto_9

    nop
.end method

.method public withFilter(ZZLjava/io/FileFilter;)Lcom/explr/cb;
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

    nop

    goto/32 :goto_2

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

    :goto_2
    invoke-virtual {p0, p1, p2, v0}, Lcom/explr/cb;->withFilter(ZZ[Ljava/lang/String;)Lcom/explr/cb;

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p3, p0, Lcom/explr/cb;->j:Ljava/io/FileFilter;

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

.method public varargs withFilter(ZZ[Ljava/lang/String;)Lcom/explr/cb;
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p1, v0, p2, p3}, Lcom/explr/ab;-><init>(ZZ[Ljava/lang/String;)V

    :goto_1
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2
    goto :goto_1

    nop

    nop

    :goto_3
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_4
    sget-object p1, Lcom/explr/cb;->a:Ljava/io/FileFilter;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-boolean p1, p0, Lcom/explr/cb;->i:Z

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

    :goto_6
    return-object p0

    nop

    nop

    nop

    :goto_7
    goto :goto_1

    nop

    :goto_8
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-boolean v0, p0, Lcom/explr/cb;->i:Z

    nop

    goto/32 :goto_0

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

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    :goto_b
    if-eqz p3, :cond_1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    :goto_c
    iput-object p1, p0, Lcom/explr/cb;->j:Ljava/io/FileFilter;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_d
    new-instance p1, Lcom/explr/ab;

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
    sget-object p1, Lcom/explr/cb;->b:Ljava/io/FileFilter;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop
.end method

.method public varargs withFilter(Z[Ljava/lang/String;)Lcom/explr/cb;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    invoke-virtual {p0, v0, p1, p2}, Lcom/explr/cb;->withFilter(ZZ[Ljava/lang/String;)Lcom/explr/cb;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return-object p1

    nop
.end method

.method public withFilterRegex(ZZLjava/lang/String;)Lcom/explr/cb;
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_8

    nop

    :goto_1
    const/4 v1, 0x2

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_3
    iput-object p1, p0, Lcom/explr/cb;->j:Ljava/io/FileFilter;

    nop

    goto/32 :goto_4

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

    nop

    nop

    :goto_5
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

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

    :goto_7
    goto/32 :goto_5

    nop

    nop

    :goto_8
    goto/32 :goto_9

    nop

    nop

    :goto_9
    iput-boolean p1, p0, Lcom/explr/cb;->i:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_a
    const v0, 0x10

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_b
    iget-boolean v0, p0, Lcom/explr/cb;->i:Z

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

    :goto_c
    invoke-direct {p1, v0, p2, p3, v1}, Lcom/explr/ad;-><init>(ZZLjava/lang/String;I)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_d
    new-instance p1, Lcom/explr/ad;

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

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method

.method public withFilterRegex(ZZLjava/lang/String;I)Lcom/explr/cb;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance p1, Lcom/explr/ad;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    iget-boolean v0, p0, Lcom/explr/cb;->i:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    iput-boolean p1, p0, Lcom/explr/cb;->i:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lcom/explr/cb;->j:Ljava/io/FileFilter;

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
    return-object p0

    nop

    nop

    nop

    :goto_5
    invoke-direct {p1, v0, p2, p3, p4}, Lcom/explr/ad;-><init>(ZZLjava/lang/String;I)V

    goto/32 :goto_3

    nop

    nop
.end method

.method public withResources(III)Lcom/explr/cb;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public withStartFile(Ljava/lang/String;)Lcom/explr/cb;
    .locals 1

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Lcom/explr/cb;->testExternalStorage(Ljava/io/File;)Ljava/io/File;

    move-result-object p1

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

    :goto_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p1

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
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_3
    new-instance v0, Ljava/io/File;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, p1}, Lcom/explr/cb;->testExternalStorage(Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_5
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p1, p0, Lcom/explr/cb;->d:Ljava/io/File;

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
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

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

    :goto_9
    iput-object p1, p0, Lcom/explr/cb;->d:Ljava/io/File;

    nop

    :goto_a
    goto/32 :goto_c

    nop

    nop

    :goto_b
    if-nez p1, :cond_0

    nop

    goto/32 :goto_f

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

    :goto_c
    iget-object p1, p0, Lcom/explr/cb;->d:Ljava/io/File;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-eqz p1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_e
    goto :goto_a

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput-object p1, p0, Lcom/explr/cb;->d:Ljava/io/File;

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_12
    iput-object v0, p0, Lcom/explr/cb;->d:Ljava/io/File;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p0, v0}, Lcom/explr/cb;->testExternalStorage(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop
.end method
