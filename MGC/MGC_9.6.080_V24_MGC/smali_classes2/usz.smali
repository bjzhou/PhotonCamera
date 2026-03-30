.class public final Lusz;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:Ljava/lang/String; = "usz"

.field private static b:Lusy;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    goto/32 :goto_0

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
.end method

.method private constructor <init>()V
    .locals 0

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

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static a(Landroid/content/Context;I)Lusy;
    .locals 5

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_0
    const v1, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    if-ne p0, v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    nop

    nop

    nop

    nop

    new-instance v3, Landroid/content/ComponentName;

    nop

    nop

    nop

    nop

    nop

    const-string v4, "android.net.http.MetaDataHolder"

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v4, 0xc0280

    nop

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    nop
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    :goto_3
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4
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

    :goto_5
    if-nez p0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_2
    :try_start_1
    new-instance p0, Luts;

    nop

    invoke-direct {p0}, Luts;-><init>()V

    sput-object p0, Lusz;->b:Lusy;

    nop

    nop

    nop
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_6
    monitor-enter v0

    nop

    nop

    nop

    :try_start_2
    sget-object v1, Lusz;->b:Lusy;

    nop

    nop

    nop

    nop

    if-nez v1, :cond_5

    nop

    nop

    const/4 v1, 0x5

    nop

    nop

    nop

    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    nop

    if-eq p1, v1, :cond_4

    nop

    nop

    nop

    const/4 v1, 0x3

    nop

    nop

    nop

    nop

    nop

    if-ne p1, v1, :cond_3

    nop

    nop

    nop

    nop

    goto :goto_7

    nop

    nop

    nop

    nop

    :cond_3
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    :cond_4
    :goto_7
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    nop

    nop

    sget-object p1, Luta;->a:Ljava/lang/Object;

    nop

    monitor-enter p1

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    sget-object v1, Luta;->b:Landroid/content/Context;

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_8
    const-class v0, Lusz;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_9
    goto/32 :goto_e

    nop

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_b
    goto :goto_11

    nop

    nop

    nop

    nop

    :catch_0
    goto/32 :goto_10

    nop

    nop

    :goto_c
    goto :goto_13

    nop

    nop

    :catch_1
    move-exception p0

    nop

    nop

    :try_start_4
    sget-object p1, Lusz;->a:Ljava/lang/String;

    nop

    nop

    const-string v1, "Exception creating an instance of CronetLoggerImpl"

    nop

    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/32 :goto_12

    nop

    nop

    :goto_d
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_3

    nop

    nop

    :goto_f
    const v0, 0xd

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

    :goto_10
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_12
    goto :goto_13

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    :try_start_5
    monitor-exit p1

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p0

    nop

    nop

    nop

    :cond_5
    :goto_13
    sget-object p0, Lusz;->b:Lusy;

    nop

    if-nez p0, :cond_6

    nop

    nop

    nop

    new-instance p0, Luto;

    nop

    invoke-direct {p0}, Luto;-><init>()V

    sput-object p0, Lusz;->b:Lusy;

    nop

    nop

    nop

    nop

    :cond_6
    sget-object p0, Lusz;->b:Lusy;

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    return-object p0

    nop

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    monitor-exit v0

    nop

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-nez v1, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_7
    :try_start_7
    iget-object v3, v1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    nop

    if-eqz v3, :cond_8

    nop

    nop

    nop

    nop

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    nop

    goto :goto_17

    nop

    :cond_8
    :goto_16
    new-instance v1, Landroid/os/Bundle;

    nop

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :goto_17
    sput-object v1, Luta;->c:Landroid/os/Bundle;

    nop

    nop

    nop

    nop

    sput-object p0, Luta;->b:Landroid/content/Context;

    nop

    nop

    nop

    nop

    :goto_18
    sget-object p0, Luta;->c:Landroid/os/Bundle;

    nop

    nop

    nop

    monitor-exit p1

    nop

    nop

    nop

    nop
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    const-string p1, "android.net.http.EnableTelemetry"

    nop

    invoke-virtual {p0, p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    nop

    nop

    nop

    nop
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/32 :goto_5

    nop

    nop
.end method
