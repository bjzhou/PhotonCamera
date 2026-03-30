.class public Lcom/explr/aa;
.super Landroid/widget/ArrayAdapter;


# static fields
.field private static final a:Ljava/lang/Object;

.field static a:Ljava/text/SimpleDateFormat;

.field private static b:Landroid/util/TypedValue;


# instance fields
.field b:Ljava/util/List;


# direct methods
.method private 166277962e993c138a6b1f0c9b571cc0m(Ljava/util/List;Ljava/lang/String;)V
    .locals 3

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez p2, :cond_0

    nop

    goto/32 :goto_11

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_18

    nop

    :goto_3
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_4
    const-string p2, "yyyy/MM/dd HH:mm:ss"

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    :goto_6
    const-string v1, ""

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_7
    sput-object v0, Lcom/explr/aa;->a:Ljava/text/SimpleDateFormat;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_8
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    :cond_1
    goto/32 :goto_17

    nop

    :goto_9
    const v0, 0x1c

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

    :goto_a
    new-instance v0, Ljava/text/SimpleDateFormat;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_b
    invoke-direct {v0, p2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    goto/32 :goto_7

    nop

    nop

    :goto_c
    add-int v0, v0, v1

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

    :goto_d
    iput-object p1, p0, Lcom/explr/aa;->b:Ljava/util/List;

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

    :goto_e
    return-void

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_2

    nop

    nop

    :goto_10
    goto :goto_5

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_13
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

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

    :goto_15
    if-eqz v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    :cond_2
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v1, 0x5

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_a

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x7

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p1, p3, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    goto/32 :goto_10

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

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x7f0b05b1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_6
    sput-object v0, Lcom/explr/aa;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v0, Ljava/lang/Object;

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
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_d

    nop

    nop

    :goto_b
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

    :goto_c
    invoke-direct {p0, p2, p1}, Lcom/explr/aa;->166277962e993c138a6b1f0c9b571cc0m(Ljava/util/List;Ljava/lang/String;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_4

    nop

    nop

    :goto_10
    const/4 p1, 0x0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;II)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-direct {p0, p2, p1}, Lcom/explr/aa;->166277962e993c138a6b1f0c9b571cc0m(Ljava/util/List;Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1, p3, p4, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    goto/32 :goto_3

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
    const/4 p1, 0x0

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

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;ILjava/lang/String;)V
    .locals 2

    goto/32 :goto_1

    nop

    nop

    :goto_0
    goto/32 :goto_c

    nop

    :goto_1
    const v0, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    const v1, 0x7

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
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

    :goto_5
    const v0, 0x7f0b05b1

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

    :goto_6
    add-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {p0, p1, p3, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0, p2, p4}, Lcom/explr/aa;->166277962e993c138a6b1f0c9b571cc0m(Ljava/util/List;Ljava/lang/String;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    :goto_a
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 4

    goto/32 :goto_a

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_2
    const/16 v0, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_3
    const v1, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_15

    nop

    :goto_5
    const/16 v0, 0x15

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    if-ge v1, v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    :cond_0
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_7
    return-object v0

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit v3

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_8
    return-object v0

    nop

    nop

    :goto_9
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x20

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    monitor-enter v3

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    sget-object v0, Lcom/explr/aa;->b:Landroid/util/TypedValue;

    nop

    nop

    nop

    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    new-instance v0, Landroid/util/TypedValue;

    nop

    nop

    nop

    nop

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    sput-object v0, Lcom/explr/aa;->b:Landroid/util/TypedValue;

    nop

    nop

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    nop

    nop

    nop

    sget-object v1, Lcom/explr/aa;->b:Landroid/util/TypedValue;

    nop

    nop

    nop

    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    invoke-virtual {v2, p1, v1, v0}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    sget-object v0, Lcom/explr/aa;->b:Landroid/util/TypedValue;

    nop

    nop

    nop

    nop

    nop

    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    nop

    nop

    nop

    nop

    monitor-exit v3

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

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

    :goto_f
    sget-object v3, Lcom/explr/aa;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_11
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

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

    :goto_12
    throw v0

    nop

    nop

    :goto_13
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_16
    if-ge v1, v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_2
    goto/32 :goto_0

    nop

    nop

    :goto_17
    return-object v0

    nop

    :goto_18
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-lez v0, :cond_3

    nop

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

    :goto_1a
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p3, 0x0

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/32 :goto_3c

    nop

    nop

    :goto_3
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v5, p0, Lcom/explr/aa;->b:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_5
    invoke-static {v4, v5}, Lcom/explr/ac;->getReadableFileSize(J)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_6
    check-cast v0, Landroid/widget/TextView;

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v5, v6}, Lcom/explr/aa;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_8
    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_9
    const/4 v3, 0x0

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Lcom/explr/aa;->getContext()Landroid/content/Context;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_c
    const-string p3, ""

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_d
    invoke-static {p1, v4}, Lcom/explr/aa;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

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
    goto/16 :goto_48

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_20

    nop

    nop

    :goto_11
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {p3, v0, v1}, Ljava/util/Date;-><init>(J)V

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_13
    const v6, 0x7f080538

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object p3, p0, Lcom/explr/aa;->b:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {p1, v1}, Lcom/explr/aa;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-eqz p1, :cond_0

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :cond_0
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_17
    return-object p2

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    check-cast v5, Ljava/io/File;

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_1a
    if-eqz v3, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_56

    nop

    nop

    :goto_1b
    invoke-virtual {p0}, Lcom/explr/aa;->getContext()Landroid/content/Context;

    move-result-object v5

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_1c
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v3, p0, Lcom/explr/aa;->b:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const v4, 0x7f080539

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p0}, Lcom/explr/aa;->getContext()Landroid/content/Context;

    move-result-object p1

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v4, p0, Lcom/explr/aa;->b:Ljava/util/List;

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    check-cast v1, Landroid/widget/TextView;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_22
    const v0, 0x7f0b05b1

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/32 :goto_b

    nop

    nop

    :goto_24
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_25
    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_26
    new-instance p3, Ljava/util/Date;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_27
    const v1, 0x7f080538

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_28
    const v1, 0x7f0b05b0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_29
    return-object p3

    nop

    nop

    :goto_2a
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/32 :goto_38

    nop

    nop

    :goto_2d
    check-cast v3, Ljava/io/File;

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

    :goto_2e
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

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

    :goto_30
    const v2, 0x7f0b05af

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_31
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_32
    const-string p3, ".."

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

    nop

    :goto_33
    sget-object p1, Lcom/explr/aa;->a:Ljava/text/SimpleDateFormat;

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

    :goto_34
    const v1, 0x14

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

    :goto_35
    check-cast p2, Landroid/view/ViewGroup;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_36
    check-cast v2, Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_37
    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_38
    goto/16 :goto_58

    nop

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v0, p1, p3, p3, p3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_3c
    sget-object p1, Lcom/explr/aa;->a:Ljava/text/SimpleDateFormat;

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_3d
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v5

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {v0, p1, p3, p3, p3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_3f
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_40
    check-cast p1, Ljava/io/File;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_41
    const/16 v4, 0x8

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

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

    :goto_43
    add-int v0, v0, v1

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

    nop

    nop

    :goto_44
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_45
    goto/32 :goto_18

    nop

    nop

    :goto_46
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_47
    invoke-direct {p3, v0, v1}, Ljava/util/Date;-><init>(J)V

    :goto_48
    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_49
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_4b
    const v0, 0x1f

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {p1, p3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_4d
    invoke-virtual {v0, v5, p3, p3, p3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    rem-int v0, v0, v1

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_4f
    check-cast p1, Ljava/io/File;

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_50
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    :cond_2
    goto/32 :goto_45

    nop

    :goto_51
    new-instance p3, Ljava/util/Date;

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_52
    if-nez v5, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_3
    goto/32 :goto_4

    nop

    nop

    :goto_53
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_54
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_55
    if-eqz p2, :cond_4

    nop

    nop

    goto/32 :goto_2a

    nop

    :cond_4
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_56
    const-string p1, ".."

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_57
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_58
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop
.end method
