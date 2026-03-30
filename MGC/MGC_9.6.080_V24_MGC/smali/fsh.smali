.class public Lfsh;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>([B)V
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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>([B[S)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static a(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
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

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    :goto_2
    invoke-static {p0, v0, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static b(ILjava/nio/ByteBuffer;)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

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

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x4

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    const/4 p0, -0x1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p0, v0, p1}, Lfsh;->t(IILjava/nio/ByteBuffer;)Z

    move-result v0

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

    :goto_4
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p0

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

    :goto_5
    return p0

    nop

    nop

    :goto_6
    return p0

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop
.end method

.method public static c(ILjava/nio/ByteBuffer;)S
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    const/4 v0, 0x2

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    :goto_4
    invoke-static {p0, v0, p1}, Lfsh;->t(IILjava/nio/ByteBuffer;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    if-nez v0, :cond_0

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    const/4 p0, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    return p0

    nop

    nop

    nop
.end method

.method public static d(III)Z
    .locals 0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1
    rem-int/lit8 p1, p1, 0x2

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

    :goto_2
    div-int/2addr p1, p2

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 p0, 0x1

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

    :goto_4
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
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    return p0

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    if-eqz p0, :cond_1

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

    :cond_1
    goto/32 :goto_2

    nop

    nop

    :goto_8
    div-int/2addr p0, p2

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_9
    rem-int/lit8 p0, p0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_a
    return p0

    nop

    nop

    nop
.end method

.method public static g(ZZZ[J)Landroid/content/Intent;
    .locals 3

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_0
    const-string p1, "com.google.android.apps.photos.mars.api.ACTION_REVIEW"

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_2
    goto/16 :goto_2d

    nop

    :goto_3
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_4
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_5
    new-instance v1, Landroid/content/Intent;

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

    :goto_6
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    const-string v0, "com.google.android.apps.photos.api.secure_mode_ids"

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_8
    if-eqz v1, :cond_0

    nop

    goto/32 :goto_33

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const-string v1, ""

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_a
    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :goto_b
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const-string v1, "com.google.android.apps.photos.api.secure_mode"

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_d
    invoke-virtual {p0, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    goto/32 :goto_34

    nop

    nop

    :goto_e
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :goto_f
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_11
    array-length p1, p3

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_12
    if-nez p1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_13
    if-nez p2, :cond_2

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_30

    nop

    nop

    :goto_14
    invoke-virtual {p0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-nez p0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const v0, 0x1d

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_18
    if-nez p1, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_1a
    new-instance p0, Landroid/content/Intent;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_1b
    const-string p1, "com.google.android.apps.photos"

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

    :goto_1c
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto/32 :goto_14

    nop

    nop

    :goto_1d
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1e
    const-string p1, "android.provider.action.REVIEW_SECURE"

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const/high16 p1, 0x10000000

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_21
    return-object p0

    nop

    nop

    :goto_22
    goto/32 :goto_23

    nop

    nop

    :goto_23
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-nez p1, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    :cond_5
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_26
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_27
    new-instance p0, Landroid/content/Intent;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_28
    invoke-static {v0}, Lcom/a;->aa_ma(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

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

    :goto_29
    goto :goto_38

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    const-string v2, "com.android.camera.action.REVIEW"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_2c
    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_2d
    goto/32 :goto_3a

    nop

    nop

    :goto_2e
    if-lez v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_41

    nop

    :goto_2f
    const-string p1, "com.google.android.apps.photos.mars.api.ACTION_REVIEW_SECURE"

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

    :goto_30
    const/high16 v2, 0x10000000

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_31
    const-string v0, "Z2FsbGV5X2tleQ"

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_32
    return-object v1

    nop

    nop

    :goto_33
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_34
    goto :goto_2d

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_36
    new-instance p0, Landroid/content/Intent;

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_37
    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_38
    goto/32 :goto_43

    nop

    nop

    nop

    :goto_39
    const v1, 0x17

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

    :goto_3a
    if-nez p2, :cond_7

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

    :cond_7
    goto/32 :goto_20

    nop

    nop

    :goto_3b
    new-instance p0, Landroid/content/Intent;

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    if-nez p0, :cond_8

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {p0, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_3e
    const-string p1, "android.provider.action.REVIEW"

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

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

    :goto_40
    rem-int v0, v0, v1

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

    :goto_41
    goto/32 :goto_22

    nop

    nop

    :goto_42
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    array-length p1, p3

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
.end method

.method public static h(Landroid/content/Context;)Lrss;
    .locals 3

    goto/32 :goto_9

    nop

    nop

    :goto_0
    if-eqz p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3
    return-object v0

    nop

    :goto_4
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_6
    if-nez v2, :cond_1

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_1
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_7
    if-eqz v1, :cond_2

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

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

    :goto_9
    const v0, 0x18

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

    :goto_a
    sget-object p0, Lrsa;->a:Lrsa;

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

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_c
    check-cast v1, Landroid/content/Intent;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x18

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/16 :goto_4

    nop

    nop

    :goto_f
    goto/32 :goto_11

    nop

    nop

    :goto_10
    invoke-static {v1}, Lcom/a;->aa_ma(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_12
    const-string v1, "com.google.android.apps.photos"

    nop

    :goto_13
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_5

    nop

    nop

    :goto_17
    const-string v1, "Z2FsbGV5X2tleQ"

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v1

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

    :goto_1a
    if-lez v0, :cond_3

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_15

    nop

    :goto_1b
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

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

    nop

    :goto_1c
    invoke-static {v0}, Lrss;->i(Ljava/lang/Object;)Lrss;

    move-result-object v0

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

    :goto_1d
    return-object p0

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const-string v2, ""

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_21
    const/high16 v2, 0x10000

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop
.end method

.method public static i()Lphf;
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_c

    nop

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    :goto_2
    const v0, 0x9

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, v1}, Lphe;->c(I)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_0

    nop

    :goto_5
    const/4 v1, 0x2

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0, v1}, Lphe;->b(I)V

    goto/32 :goto_f

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

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_8
    const/4 v1, 0x4

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    :goto_a
    invoke-static {}, Lphf;->a()Lphe;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_b
    return-object v0

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0, v1}, Lphe;->e(I)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0}, Lphe;->a()Lphf;

    move-result-object v0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v1, 0x1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

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

    :goto_11
    const v1, 0xd

    nop

    goto/32 :goto_7

    nop

    nop

    nop
.end method

.method public static j()Lphf;
    .locals 3

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, v2}, Lphe;->b(I)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

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

    :goto_2
    const v1, 0x1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-object v0

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0, v1}, Lphe;->e(I)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v2, 0x2

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0, v1}, Lphe;->c(I)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x13

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

    :goto_9
    goto/32 :goto_4

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
    invoke-static {}, Lphf;->a()Lphe;

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

    nop

    nop

    :goto_c
    invoke-virtual {v0}, Lphe;->a()Lphf;

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

    nop

    :goto_d
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_7

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

    :goto_f
    goto/32 :goto_a

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop
.end method

.method public static k()Lphf;
    .locals 2

    goto/32 :goto_b

    nop

    nop

    :goto_0
    const/4 v1, 0x4

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

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-object v0

    nop

    :goto_4
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

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
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_8
    const v1, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0, v1}, Lphe;->b(I)V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0}, Lphe;->a()Lphf;

    move-result-object v0

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

    :goto_b
    const v0, 0x1b

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

    nop

    :goto_c
    invoke-virtual {v0, v1}, Lphe;->c(I)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_e
    invoke-virtual {v0, v1}, Lphe;->e(I)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {}, Lphf;->a()Lphe;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_10
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop
.end method

.method public static l()Lphf;
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-static {}, Lphf;->a()Lphe;

    move-result-object v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0, v1}, Lphe;->c(I)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0xa

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v1, 0x3

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

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

    :goto_5
    invoke-virtual {v0, v1}, Lphe;->b(I)V

    goto/32 :goto_10

    nop

    nop

    :goto_6
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_8
    rem-int v0, v0, v1

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
    const v1, 0x16

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-object v0

    nop

    :goto_b
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0}, Lphe;->a()Lphf;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_d
    invoke-virtual {v0, v1}, Lphe;->e(I)V

    goto/32 :goto_c

    nop

    nop

    :goto_e
    goto/32 :goto_b

    nop

    :goto_f
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop
.end method

.method public static synthetic m(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string p0, "EYES"

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
    return-object p0

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_5
    .end packed-switch

    :goto_2
    const-string p0, "SMART_DEFAULT_ROI"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    :pswitch_0
    goto/32 :goto_a

    nop

    nop

    :goto_4
    return-object p0

    nop

    nop

    :pswitch_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const-string p0, "INVALID"

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

    :goto_6
    const-string p0, "null"

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-object p0

    nop

    nop

    :pswitch_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-object p0

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-object p0

    nop

    :pswitch_4
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_a
    const-string p0, "TRACKING"

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_b
    const-string p0, "SALIENCY"

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_c
    return-object p0

    nop

    nop

    :pswitch_5
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_d
    return-object p0

    nop

    nop

    :pswitch_6
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const-string p0, "FACE"

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return-object p0

    nop

    nop

    :pswitch_7
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_10
    const-string p0, "DEFAULT"

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const-string p0, "TOUCH"

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

.method public static n(ZLjava/lang/String;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    throw p0

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

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    :goto_5
    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static o(Ljava/lang/String;)V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2
    const-string v0, "Must not be null or empty"

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    if-eqz p0, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

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

.method public static p(Ljava/util/Collection;)V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v0, "Must not be empty."

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

    :goto_1
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

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

    :goto_3
    if-eqz p0, :cond_0

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
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

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
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public static q(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    if-nez p0, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    throw p0

    nop

    :goto_2
    return-void

    nop

    :goto_3
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    new-instance p0, Ljava/lang/NullPointerException;

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

.method public static r(Ljava/lang/Object;)V
    .locals 1

    goto/32 :goto_1

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
    const-string v0, "Argument must not be null"

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-static {p0, v0}, Lfsh;->q(Ljava/lang/Object;Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop
.end method

.method public static synthetic s(Ljava/io/RandomAccessFile;)Ljava/nio/channels/FileChannel;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0

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

    :goto_2
    invoke-static {p0}, Lj$/nio/channels/DesugarChannels;->convertMaybeLegacyFileChannelFromLibrary(Ljava/nio/channels/FileChannel;)Ljava/nio/channels/FileChannel;

    move-result-object p0

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

.method private static t(IILjava/nio/ByteBuffer;)Z
    .locals 0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    if-ge p2, p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    sub-int/2addr p2, p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

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

    :goto_6
    const/4 p0, 0x0

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

    :goto_7
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

    nop
.end method


# virtual methods
.method public e()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    throw p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public f()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop
.end method
