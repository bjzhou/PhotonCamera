.class public final Lfns;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lfoh;


# instance fields
.field private final synthetic a:I

.field private final b:Ljava/lang/Object;

.field private final c:Ljava/lang/Object;


# direct methods
.method private final 33f5b80483094659737b73d90f80a8a4m(Ljava/lang/Integer;)Landroid/net/Uri;
    .locals 5

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_2
    const-string v0, "/"

    nop

    goto/32 :goto_9

    nop

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
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    return-object p0

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_9
    const-string v1, "android.resource://"

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v2, p0, Lfns;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Landroid/content/res/Resources;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    iget-object v3, p0, Lfns;->b:Ljava/lang/Object;

    nop

    nop

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    check-cast v3, Landroid/content/res/Resources;

    nop

    nop

    nop

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    iget-object p0, p0, Lfns;->b:Ljava/lang/Object;

    nop

    nop

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    nop

    check-cast p0, Landroid/content/res/Resources;

    nop

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    new-instance v4, Ljava/lang/StringBuilder;

    nop

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    nop

    nop

    nop
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_a
    invoke-static {v1, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_b
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const-string v0, "Received invalid resource id: "

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_6

    nop

    nop

    :goto_e
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_f
    const v0, 0x15

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

    :goto_10
    const v1, 0x1d

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const-string v1, "ResourceLoader"

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_12
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_14
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_15
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_17
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Lfnr;I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    iput p3, p0, Lfns;->a:I

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Lfns;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lfns;->b:Ljava/lang/Object;

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

    :goto_5
    return-void

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Lfoh;I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lfns;->b:Ljava/lang/Object;

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

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput p3, p0, Lfns;->a:I

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    iput-object p2, p0, Lfns;->c:Ljava/lang/Object;

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

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

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

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lfns;->c:Ljava/lang/Object;

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    iput p3, p0, Lfns;->a:I

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lfns;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_0

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
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Z
    .locals 4

    goto/32 :goto_17

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_2
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_4
    const-string v0, "file"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_5
    if-ne v0, v3, :cond_0

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :cond_0
    goto/32 :goto_2e

    nop

    nop

    :goto_6
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

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

    :goto_7
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Lfns;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_9
    check-cast p0, Landroid/content/Context;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

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
    return v1

    nop

    nop

    :goto_e
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-nez p0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

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

    :goto_10
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_21

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

    goto/32 :goto_e

    nop

    nop

    :cond_2
    goto/32 :goto_8

    nop

    nop

    :goto_13
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_15
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-lez v0, :cond_4

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2

    nop

    :goto_17
    const v0, 0xd

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    return v1

    nop

    :goto_1c
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const v1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1e
    if-nez p0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_5
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-eqz p0, :cond_6

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

    :cond_6
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_20
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_21
    return v2

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_28

    nop

    nop

    :goto_23
    check-cast p1, Landroid/net/Uri;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const-string v3, "android.resource"

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_25
    return v2

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_28
    check-cast p1, Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_3

    nop

    nop

    :goto_2a
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_2b
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_2c
    check-cast p1, Ljava/lang/Integer;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_2d
    const-string p1, "android_asset"

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    check-cast p1, Landroid/net/Uri;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    if-ne v0, v1, :cond_7

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    :cond_7
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_30
    const/4 v3, 0x2

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

    :goto_31
    if-nez p0, :cond_8

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iget v0, p0, Lfns;->a:I

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

    :goto_33
    return v1

    nop

    :goto_34
    goto/32 :goto_29

    nop

    nop

    nop

    nop
.end method

.method public final synthetic b(Ljava/lang/Object;IILfjp;)Lhdu;
    .locals 8

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_0
    invoke-static {v7, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    goto/32 :goto_4b

    nop

    nop

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_3
    goto :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-ne v0, v1, :cond_1

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_7
    check-cast p1, Landroid/net/Uri;

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_5b

    nop

    :goto_9
    new-instance v1, Lfnq;

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

    :goto_a
    invoke-virtual {v4, v0, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    :goto_b
    invoke-direct {p3, p4, p0}, Lhdu;-><init>(Lfjl;Lfjy;)V

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_d
    new-instance p4, Lhdu;

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_5c

    nop

    :goto_10
    const-string p1, "Failed to find resource id for: "

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {v7, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_13
    const-string p1, "Failed to parse resource uri: "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_14
    return-object p4

    nop

    nop

    :goto_15
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v6, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_17
    iget-object p0, p0, Lfns;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_18
    const/4 v3, 0x0

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {v7, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_1b
    goto/16 :goto_1

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

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

    :goto_1e
    iget-object p0, p0, Lfns;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v1, p0, Lfns;->b:Ljava/lang/Object;

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

    :goto_20
    return-object v3

    nop

    :goto_21
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_52

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

    :catch_0
    move-exception p0

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

    :goto_24
    invoke-direct {p4, v0, v1}, Lhdu;-><init>(Lfjl;Lfjy;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object p0, p0, Lfns;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_26
    invoke-static {v7, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_27
    const v0, 0x6

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-interface {p0, p1, p2, p3, p4}, Lfoh;->b(Ljava/lang/Object;IILfjp;)Lhdu;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_29
    check-cast p0, Landroid/content/res/AssetManager;

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_2a
    goto/16 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    return-object p0

    nop

    :goto_2d
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const/4 v5, 0x0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_30
    const v1, 0x4

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iget-object p0, p0, Lfns;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_33
    check-cast p3, Landroid/content/Context;

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    if-nez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_3d

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

    nop

    :goto_35
    invoke-direct {p0, p1}, Lfns;->33f5b80483094659737b73d90f80a8a4m(Ljava/lang/Integer;)Landroid/net/Uri;

    move-result-object p1

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_36
    if-nez p2, :cond_4

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    :cond_4
    goto/32 :goto_54

    nop

    nop

    nop

    :goto_37
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_38
    const/4 v2, 0x2

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

    :goto_39
    if-nez p0, :cond_5

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    if-eq v0, v2, :cond_6

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_6
    goto/32 :goto_37

    nop

    nop

    :goto_3b
    invoke-direct {v1, p2, p3, p0, p1}, Lfnq;-><init>(Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;Lfnr;I)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_3c
    return-object p3

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_40

    nop

    nop

    :goto_3e
    check-cast p2, Landroid/content/res/Resources$Theme;

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_40
    check-cast p1, Ljava/lang/Integer;

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_41
    iget-object p3, p0, Lfns;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_42
    check-cast v1, Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_43
    if-eq v4, v1, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    :cond_7
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    check-cast v0, Ljava/lang/String;

    nop

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    nop

    nop

    nop

    nop

    if-nez v0, :cond_8

    nop

    nop

    nop

    nop

    nop

    invoke-static {v7, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    nop

    nop

    nop

    if-eqz p0, :cond_0

    nop

    nop

    nop

    nop

    const-string p0, "Failed to parse a valid non-0 resource id from: "

    nop

    nop

    nop

    nop

    nop

    invoke-static {p1, p0}, Lfey;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    invoke-static {v7, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    nop

    nop

    nop

    nop

    :cond_8
    iget-object p0, p0, Lfns;->c:Ljava/lang/Object;

    nop

    nop

    nop

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    nop

    nop

    invoke-interface {p0, v0, p2, p3, p4}, Lfoh;->b(Ljava/lang/Object;IILfjp;)Lhdu;

    move-result-object v3

    nop
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_23

    nop

    nop

    :goto_44
    new-instance p3, Lhdu;

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

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

    :goto_46
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_48
    if-nez p2, :cond_9

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    new-instance p4, Lfth;

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_4a
    invoke-direct {v0, p1}, Lfth;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_4b
    return-object v3

    nop

    :goto_4c
    goto/32 :goto_50

    nop

    nop

    nop

    :goto_4d
    if-nez p0, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-direct {p4, p1}, Lfth;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_4f
    iget-object p1, p0, Lfns;->c:Ljava/lang/Object;

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

    :goto_50
    check-cast p1, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_51
    iget v0, p0, Lfns;->a:I

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    check-cast v2, Ljava/lang/String;

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_53
    invoke-static {v7, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    invoke-virtual {p2}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    :goto_55
    check-cast p1, Landroid/net/Uri;

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_56
    if-eqz p1, :cond_b

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_20

    nop

    nop

    :goto_57
    invoke-virtual {p4, p2}, Lfjp;->b(Lfjo;)Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_58
    if-ne v0, v2, :cond_c

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_7

    nop

    nop

    :goto_59
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_5c
    goto/32 :goto_51

    nop

    nop

    :goto_5d
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_5f
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_60
    invoke-virtual {p2, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_61
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_62
    invoke-interface {p1, p0, p2}, Lfng;->a(Landroid/content/res/AssetManager;Ljava/lang/String;)Lfjy;

    move-result-object p0

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

    :goto_63
    invoke-interface {p0, p1, p2, p3, p4}, Lfoh;->b(Ljava/lang/Object;IILfjp;)Lhdu;

    move-result-object p0

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_65
    goto :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_66
    goto/32 :goto_41

    nop

    nop

    :goto_67
    const/16 p3, 0x16

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

    nop

    :goto_68
    const-string v7, "ResourceUriLoader"

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

    :goto_69
    new-instance v0, Lfth;

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

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

    :goto_6b
    const-string p2, "Failed to parse resource id from: "

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_6c
    if-eqz v0, :cond_d

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_6d
    sget-object p2, Lfqz;->a:Lfjo;

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    nop

    nop

    nop

    :goto_6f
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_70
    check-cast v0, Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_71
    invoke-static {v7, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_1b

    nop

    nop
.end method
