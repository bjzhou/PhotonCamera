.class public final Lc;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    goto/32 :goto_b

    nop

    nop

    :goto_0
    const v1, 0x14

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

    :goto_1
    if-lez v0, :cond_0

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

    :goto_2
    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_5

    nop

    :goto_4
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

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
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v0, Ljava/util/Properties;

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

    nop

    :goto_9
    return-void

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

    :goto_b
    const v0, 0x20

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_c
    sput-object v0, Lc;->a:Ljava/util/Properties;

    nop

    nop

    nop

    :try_start_0
    const-class v1, Le;

    nop

    nop

    nop

    nop

    nop

    const-string v2, "/android/icumessageformat/ICUConfig.properties"

    nop

    nop

    nop

    nop

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v3

    nop

    nop

    if-eqz v3, :cond_1

    nop

    nop

    nop

    new-instance v2, Ld;

    nop

    invoke-direct {v2, v1}, Ld;-><init>(Ljava/lang/Class;)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    check-cast v1, Ljava/io/InputStream;

    nop

    nop

    nop

    goto :goto_d

    nop

    nop

    nop

    nop

    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    nop

    nop

    :goto_d
    if-eqz v1, :cond_2

    nop

    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    goto/32 :goto_9

    nop

    nop
.end method

.method public static a()Ljava/lang/String;
    .locals 3

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    :goto_2
    sget-object v0, Lc;->a:Ljava/util/Properties;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x1f

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
    add-int v0, v0, v1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_1
    :try_start_0
    new-instance v0, Lb;

    nop

    invoke-direct {v0}, Lb;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    check-cast v0, Ljava/lang/String;

    nop
    :try_end_0
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_6
    if-eqz v0, :cond_2

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_2
    goto/32 :goto_2

    nop

    nop

    :goto_7
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto :goto_11

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_b
    const-string v1, "android.icumessageformat.text.MessagePattern.ApostropheMode"

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
    const/4 v0, 0x0

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

    :goto_d
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_e
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_12

    nop

    nop

    :goto_10
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    :goto_11
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_f

    nop

    :goto_14
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_15
    const-string v2, "DOUBLE_OPTIONAL"

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_17
    goto :goto_11

    nop

    nop

    nop

    nop

    :catch_0
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop
.end method
