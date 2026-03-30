.class public final Lolu;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static a:Ljava/lang/Boolean;

.field public static b:Ljava/lang/Boolean;

.field private static c:Ljava/lang/Boolean;

.field private static d:Ljava/lang/Boolean;


# direct methods
.method public static a(Landroid/content/Context;)Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p0}, Lolu;->b(Landroid/content/pm/PackageManager;)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public static b(Landroid/content/pm/PackageManager;)Z
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    sput-object p0, Lolu;->c:Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

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

    :goto_4
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    sget-object v0, Lolu;->c:Ljava/lang/Boolean;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const-string v0, "android.hardware.type.watch"

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_7
    sget-object p0, Lolu;->c:Ljava/lang/Boolean;

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

    :goto_8
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_9
    return p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    sget-object p0, Lolu;->d:Ljava/lang/Boolean;

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
    sget-object v0, Lolu;->d:Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

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

    :goto_3
    if-nez p0, :cond_0

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

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    const/4 p0, 0x1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_5
    sput-object p0, Lolu;->d:Ljava/lang/Boolean;

    nop

    nop

    :goto_6
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    if-eqz v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_8
    const-string v0, "cn.google"

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 p0, 0x0

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

    :goto_c
    return p0

    nop

    nop

    :goto_d
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_e
    return p0

    nop

    nop

    :goto_f
    goto/32 :goto_b

    nop

    nop

    nop

    nop
.end method
