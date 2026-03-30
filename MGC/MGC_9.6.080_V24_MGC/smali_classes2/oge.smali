.class public Loge;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final c:I

.field public static final d:Loge;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_6

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
    new-instance v0, Loge;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0}, Loge;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    const v0, 0xe8b2118

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    sput-object v0, Loge;->d:Loge;

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

    :goto_5
    sput v0, Loge;->c:I

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    sget v0, Logr;->c:I

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    nop
.end method


# virtual methods
.method public final e(Landroid/content/Context;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget v0, Loge;->c:I

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1, v0}, Loge;->f(Landroid/content/Context;I)I

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

    nop
.end method

.method public final f(Landroid/content/Context;I)I
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    const/16 p0, 0x12

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    invoke-static {p1, p0}, Logr;->c(Landroid/content/Context;I)Z

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

    nop

    :goto_3
    return p0

    nop

    nop

    nop

    :goto_4
    invoke-static {p1, p2}, Logr;->a(Landroid/content/Context;I)I

    move-result p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    if-nez p1, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final g(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;
    .locals 2

    goto/32 :goto_3b

    nop

    nop

    :goto_0
    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p2

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

    :goto_1
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_a

    nop

    :goto_3
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_4
    return-object p0

    nop

    :goto_5
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const-string p2, "market://details"

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

    :goto_7
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_8
    invoke-virtual {p1, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto/32 :goto_1b

    nop

    nop

    :goto_9
    return-object p1

    nop

    :goto_a
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 p0, 0x2

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_c
    if-ne p2, p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_d
    goto :goto_5

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const-string p2, "-"

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_10
    if-nez p1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_11
    new-instance p0, Landroid/content/Intent;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_12
    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p1, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_14
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_16
    new-instance p1, Landroid/content/Intent;

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_18
    const v1, 0x2

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

    :goto_19
    if-nez p1, :cond_2

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_1a
    const-string p3, "pcampaignid"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_1b
    const-string p0, "com.android.vending"

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
    invoke-static {p0, v0, p1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1f
    const/high16 p0, 0x80000

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-eqz p0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_23
    goto/32 :goto_4c

    nop

    nop

    :goto_24
    invoke-virtual {p1, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_26
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p2, p3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

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

    :goto_28
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_29
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_2a
    sget p2, Loge;->c:I

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    return-object p1

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const-string p2, "gcore_"

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_2f
    const-string v0, "com.google.android.gms"

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_30
    add-int v0, v0, v1

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    if-ne p2, p0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    :cond_4
    goto/32 :goto_42

    nop

    nop

    :goto_32
    if-eqz v1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_33
    return-object p1

    nop

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_35
    sget-object p1, Lcom/google/android/build/data/ERtJ/cVlffQDuQRSSY;->jHqcOOCWJuFDRto:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_36
    const-string p1, "com.google.android.wearable.app"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_37
    if-eqz p3, :cond_6

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_38
    const-string p2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_39
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {p1, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3b
    const v0, 0x16

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_3c
    new-instance p0, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_3d
    const-string p3, "id"

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {p2, p3, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :goto_3f
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    if-lez v0, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_2

    nop

    :goto_41
    const-string p0, "package"

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_42
    const/4 p0, 0x3

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    const/4 p1, 0x0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_45
    if-nez p1, :cond_8

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

    :cond_8
    :try_start_0
    invoke-static {p1}, Lomb;->b(Landroid/content/Context;)Lpic;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    const/4 p3, 0x0

    nop

    invoke-virtual {p2, p1, p3}, Lpic;->y(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    nop

    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    nop

    nop

    nop

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_46
    goto/32 :goto_49

    nop

    nop

    nop

    :goto_47
    if-ne p2, p0, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    rem-int v0, v0, v1

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_4a
    const-string p2, "android.intent.action.VIEW"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-static {p1}, Lolu;->c(Landroid/content/Context;)Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_4e
    new-instance p1, Landroid/content/Intent;

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_4f
    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method public final h(Landroid/content/Context;ILjava/lang/String;)Landroid/app/PendingIntent;
    .locals 0

    goto/32 :goto_5

    nop

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

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/high16 p3, 0xc000000

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
    if-eqz p0, :cond_0

    nop

    nop

    goto/32 :goto_8

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

    :goto_4
    invoke-static {p1, p2, p0, p3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0, p1, p2, p3}, Loge;->g(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p0

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

    :goto_6
    const/4 p2, 0x0

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

    :goto_7
    return-object p0

    nop

    nop

    :goto_8
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop
.end method
