.class public final Lews;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_1

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
    const-string v0, "PackageManagerHelper"

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-static {v0}, Leqh;->a(Ljava/lang/String;)Ljava/lang/String;

    goto/32 :goto_0

    nop

    nop
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Class;Z)V
    .locals 4

    goto/32 :goto_8

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_1
    goto/32 :goto_b

    nop

    :goto_2
    return-void

    nop

    nop

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

    :goto_3
    return-void

    nop

    nop

    :goto_4
    goto/32 :goto_1

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

    :goto_6
    invoke-static {}, Leqh;->b()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_8
    const v0, 0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_9
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_b
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    nop

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    new-instance v2, Landroid/content/ComponentName;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v2, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v0

    nop

    nop

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    const/4 v2, 0x1

    nop

    nop

    nop

    if-nez v0, :cond_1

    nop

    nop

    goto :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_1
    if-ne v0, v2, :cond_2

    nop

    move v1, v2

    nop

    :cond_2
    :goto_c
    if-ne p2, v1, :cond_3

    nop

    nop

    invoke-static {}, Leqh;->b()V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    return-void

    nop

    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    new-instance v1, Landroid/content/ComponentName;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    nop

    invoke-direct {v1, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    if-eq v2, p2, :cond_4

    nop

    const/4 p0, 0x2

    nop

    nop

    nop

    goto :goto_d

    nop

    :cond_4
    move p0, v2

    nop

    :goto_d
    invoke-virtual {v0, v1, p0, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    invoke-static {}, Leqh;->b()V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_e
    const v1, 0x1a

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
.end method
