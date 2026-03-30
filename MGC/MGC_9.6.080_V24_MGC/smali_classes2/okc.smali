.class public final Lokc;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:Lyo;

.field private static b:Ljava/util/Locale;


# direct methods
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

    :goto_1
    sput-object v0, Lokc;->a:Lyo;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v0, Lyo;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0}, Lyo;-><init>()V

    goto/32 :goto_1

    nop

    nop
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    nop

    :catch_0
    goto/32 :goto_6

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

    :goto_5
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    const v0, 0x9

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

    :goto_8
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    :try_start_0
    invoke-static {p0}, Lomb;->b(Landroid/content/Context;)Lpic;

    move-result-object v1

    nop

    iget-object v2, v1, Lpic;->a:Ljava/lang/Object;

    nop

    check-cast v2, Landroid/content/Context;

    nop

    nop

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    nop

    iget-object v1, v1, Lpic;->a:Ljava/lang/Object;

    nop

    check-cast v1, Landroid/content/Context;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    nop

    nop

    nop

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_3

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

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_d
    const v1, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_e
    if-nez v1, :cond_1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    nop

    :goto_f
    return-object v0

    nop

    nop

    :goto_10
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

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
.end method

.method public static b(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Lokc;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const p0, 0x7f140148

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

    :goto_2
    const/16 v2, 0x14

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    if-ne p1, v2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_0
    packed-switch p1, :pswitch_data_0

    goto/32 :goto_3b

    nop

    nop

    :goto_4
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const p0, 0x7f14014a

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_6
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_30

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

    :goto_9
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const p0, 0x7f14014d

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {p0}, Lolu;->c(Landroid/content/Context;)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_c
    if-ne p1, v2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x20

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {p0, p1, v1}, Lokc;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_f
    invoke-static {p0, p1, v1}, Lokc;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/16 v2, 0x9

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_11
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_12
    return-object p0

    nop

    :goto_13
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-ne p1, v2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_15

    nop

    nop

    :goto_15
    const/4 v2, 0x5

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_3e

    nop

    :goto_17
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-ne p1, v2, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    :cond_3
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_19
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_1e
    return-object p0

    nop

    nop

    :goto_1f
    goto/32 :goto_46

    nop

    nop

    nop

    :goto_20
    const v0, 0x15

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_21
    if-ne p1, v2, :cond_4

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

    :cond_4
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_22
    const-string p1, "common_google_play_services_network_error_text"

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_23
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_36

    nop

    nop

    :goto_24
    const/4 v2, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_25
    invoke-static {p0, p1, v1}, Lokc;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const/4 v2, 0x3

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

    :goto_27
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_28
    if-nez p0, :cond_5

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

    :cond_5
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v0, p0, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_2a
    invoke-static {p0, p1, v1}, Lokc;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v0, p0, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v0, p0, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_2e
    if-ne p1, v2, :cond_6

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const/4 v2, 0x2

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_30
    const-string p1, "common_google_play_services_restricted_profile_text"

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const-string p1, "common_google_play_services_api_unavailable_text"

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_32
    if-lez v0, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    :cond_7
    goto/32 :goto_16

    nop

    :goto_33
    invoke-virtual {v0, p0, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_34
    add-int v0, v0, v1

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

    :goto_35
    const-string p1, "common_google_play_services_sign_in_failed_text"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_36
    const p0, 0x7f14014c

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_37
    return-object p0

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {v0, p0, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_3a
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    const p0, 0x7f140147

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    const p0, 0x7f140143

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

    nop

    :goto_3d
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :goto_3e
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    const-string p1, "common_google_play_services_invalid_account_text"

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_42
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_43
    invoke-virtual {v0, p0, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_44
    return-object p0

    nop

    :pswitch_2
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_45
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_46
    const p0, 0x7f140140

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_47
    return-object p0

    nop

    nop

    :goto_48
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_4a
    if-ne p1, v2, :cond_8

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-static {p0, p1, v1}, Lokc;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop
.end method

.method public static c(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Lokc;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_31

    nop

    :goto_3
    invoke-static {p0, p1}, Lokc;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_5
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_30

    nop

    nop

    :goto_6
    return-object v1

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_7
    const p0, 0x7f140141

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

    :goto_8
    return-object v1

    nop

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_25

    nop

    nop

    :goto_9
    const-string p1, "The current user profile is restricted and could not use authenticated features."

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_a
    return-object p0

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_c
    const-string p0, "Developer error occurred. Please see logs for detailed information"

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_d
    const-string v2, "GoogleApiAvailability"

    nop

    nop

    nop

    nop

    packed-switch p1, :pswitch_data_0

    :pswitch_3
    goto/32 :goto_12

    nop

    nop

    :goto_e
    const p0, 0x7f140144

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_f
    const-string p1, "An invalid account was specified when connecting. Please provide a valid account."

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_10
    const-string p0, "The application is not licensed to the user."

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_11
    const-string p0, "Internal error occurred. Please see logs for detailed information"

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_12
    const-string p0, "Unexpected error code "

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

    :goto_13
    const-string p1, "The specified account could not be signed in."

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v1, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const-string p0, "One of the API components you attempted to connect to is not available."

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {p0, p1}, Lokc;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

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

    nop

    nop

    :goto_17
    return-object v1

    nop

    nop

    :pswitch_4
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_18
    const-string p1, "Network error occurred. Please retry request later."

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_19
    const-string p1, "common_google_play_services_restricted_profile_title"

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_1a
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_1c
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

    nop

    :goto_1d
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const-string p1, "common_google_play_services_network_error_title"

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1f
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_2
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_5
        :pswitch_8
        :pswitch_d
        :pswitch_1
        :pswitch_9
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_c
        :pswitch_a
        :pswitch_5
        :pswitch_3
        :pswitch_0
    .end packed-switch

    :goto_20
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const/4 v1, 0x0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_24
    return-object v1

    nop

    nop

    nop

    nop

    :pswitch_6
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const-string p0, "Google Play services is invalid. Cannot recover."

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

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

    nop

    :goto_27
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_28
    add-int v0, v0, v1

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

    :goto_29
    return-object p0

    nop

    nop

    :pswitch_7
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const-string p1, "common_google_play_services_invalid_account_title"

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_2b
    return-object v1

    nop

    :pswitch_8
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_2b

    nop

    nop

    :goto_2d
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_3b

    nop

    nop

    :goto_2e
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    return-object v1

    nop

    nop

    nop

    nop

    nop

    :pswitch_9
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_30
    const-string p1, "common_google_play_services_sign_in_failed_title"

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_31
    goto/32 :goto_20

    nop

    :goto_32
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_33
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_34
    invoke-static {p0, p1}, Lokc;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_35
    const p0, 0x7f14014b

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    return-object p0

    nop

    nop

    :pswitch_a
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-static {p1, p0}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_38
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_39
    return-object p0

    nop

    nop

    :pswitch_b
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_3a
    return-object p0

    nop

    nop

    :pswitch_c
    goto/32 :goto_15

    nop

    nop

    :goto_3b
    return-object v1

    nop

    nop

    nop

    :pswitch_d
    goto/32 :goto_11

    nop

    nop

    :goto_3c
    const v0, 0x8

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const p0, 0x7f140147

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

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

    :goto_2
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    :goto_4
    invoke-static {p0, p1}, Lokc;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_7
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {p1, p0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_9
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_a
    if-eqz p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

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

    nop
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

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

    :goto_1
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    nop

    nop

    nop

    const-string v2, "com.google.android.gms"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x17

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_3
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_4
    monitor-enter v0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    nop

    nop

    nop

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    nop

    nop

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    nop

    invoke-static {v1}, Lduk;->b(Landroid/os/LocaleList;)Lduk;

    move-result-object v1

    nop

    nop

    nop

    iget-object v1, v1, Lduk;->b:Ldul;

    nop

    nop

    iget-object v1, v1, Ldul;->a:Landroid/os/LocaleList;

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1

    nop

    sget-object v2, Lokc;->b:Ljava/util/Locale;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    if-nez v2, :cond_0

    nop

    invoke-virtual {v0}, Lyo;->clear()V

    sput-object v1, Lokc;->b:Ljava/util/Locale;

    nop

    nop

    nop

    nop

    nop

    :cond_0
    invoke-virtual {v0, p1}, Lyo;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    check-cast v1, Ljava/lang/String;

    nop

    nop

    nop

    if-eqz v1, :cond_1

    nop

    monitor-exit v0

    nop

    nop

    nop

    return-object v1

    nop

    nop

    nop

    :cond_1
    sget v1, Logr;->c:I

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    sget-object v0, Lokc;->a:Lyo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_7
    move-object p0, v1

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_2

    nop

    goto/32 :goto_11

    nop

    :cond_2
    goto/32 :goto_10

    nop

    :goto_a
    const v1, 0x9

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_b
    goto :goto_8

    nop

    nop

    nop

    :catch_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_c
    if-eqz p0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_3
    :try_start_2
    monitor-exit v0

    nop

    return-object v1

    nop

    :goto_d
    const-string v2, "string"

    nop

    nop

    nop

    nop

    const-string v3, "com.google.android.gms"

    nop

    nop

    nop

    invoke-virtual {p0, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    nop

    nop

    nop

    if-nez v2, :cond_4

    nop

    nop

    nop

    nop

    const-string p0, "GoogleApiAvailability"

    nop

    nop

    nop

    nop

    nop

    const-string v2, "Missing resource: "

    nop

    nop

    invoke-static {p1, v2}, Lmf;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    nop

    nop

    nop

    return-object v1

    nop

    nop

    nop

    nop

    nop

    :cond_4
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    nop

    if-eqz v2, :cond_5

    nop

    const-string p0, "GoogleApiAvailability"

    nop

    nop

    nop

    const-string v2, "Got empty resource: "

    nop

    nop

    invoke-static {p1, v2}, Lmf;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    nop

    nop

    nop

    return-object v1

    nop

    nop

    nop

    nop

    :cond_5
    sget-object v1, Lokc;->a:Lyo;

    nop

    nop

    invoke-virtual {v1, p1, p0}, Lyo;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    nop

    return-object p0

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_e
    throw p0

    nop

    :goto_f
    goto/32 :goto_3

    nop

    nop

    :goto_10
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_5

    nop

    nop
.end method
