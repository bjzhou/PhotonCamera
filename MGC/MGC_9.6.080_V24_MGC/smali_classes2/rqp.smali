.class final Lrqp;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method static a(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 4

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_2
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_3
    const v1, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    const v0, 0x4

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
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    const/4 v0, 0x0

    nop

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    nop

    nop

    invoke-static {}, Lqrf;->m()Landroid/net/Uri;

    move-result-object v2

    nop

    nop

    const-string v3, "getSetupIntent"

    nop

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    invoke-virtual {v1, v2, v3, p0, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    nop

    nop

    nop

    if-nez p0, :cond_1

    nop

    goto/16 :goto_b

    nop

    nop

    nop

    nop

    :cond_1
    const-string v1, "intent"

    nop

    nop

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    nop

    check-cast v1, Landroid/app/PendingIntent;

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_2

    nop

    nop

    return-object v1

    nop

    nop

    :cond_2
    const-string v1, "exceptionType"

    nop

    nop

    nop

    nop

    const-string v2, ""

    nop

    nop

    nop

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    nop

    nop

    nop

    if-nez v2, :cond_6

    nop

    nop

    nop

    nop

    const-class v2, Lcom/google/ar/core/exceptions/UnavailableDeviceNotCompatibleException;

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    nop

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    nop

    if-nez v2, :cond_5

    nop

    const-class v2, Lcom/google/ar/core/exceptions/UnavailableUserDeclinedInstallationException;

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    if-nez v2, :cond_4

    nop

    nop

    nop

    nop

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    nop

    const-class v2, Ljava/lang/RuntimeException;

    nop

    nop

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    nop

    nop

    const-string v2, "exceptionText"

    nop

    invoke-virtual {p0, v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    if-eqz p0, :cond_3

    nop

    nop

    nop

    nop

    nop

    const-class v2, Ljava/lang/String;

    nop

    nop

    nop

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    nop

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    check-cast p0, Ljava/lang/RuntimeException;

    nop

    nop

    nop

    nop

    nop

    goto :goto_9

    nop

    nop

    :cond_3
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    check-cast p0, Ljava/lang/RuntimeException;

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_9
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_a
    throw p0

    nop

    nop

    nop

    nop

    :cond_4
    :try_start_1
    new-instance p0, Lcom/google/ar/core/exceptions/UnavailableUserDeclinedInstallationException;

    nop

    invoke-direct {p0}, Lcom/google/ar/core/exceptions/UnavailableUserDeclinedInstallationException;-><init>()V

    throw p0

    nop

    :cond_5
    new-instance p0, Lcom/google/ar/core/exceptions/UnavailableDeviceNotCompatibleException;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p0}, Lcom/google/ar/core/exceptions/UnavailableDeviceNotCompatibleException;-><init>()V

    throw p0

    nop

    nop

    nop
    :try_end_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_6
    :goto_b
    goto/32 :goto_6

    nop

    nop

    :goto_c
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_8

    nop

    nop

    nop

    nop
.end method
