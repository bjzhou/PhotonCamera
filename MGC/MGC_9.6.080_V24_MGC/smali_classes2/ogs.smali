.class public final Logs;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static volatile a:Ljava/util/Set;

.field public static volatile b:Ljava/util/Set;

.field private static e:Logs;


# instance fields
.field public final c:Landroid/content/Context;

.field public volatile d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    nop

    nop

    goto/32 :goto_3

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

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Logs;->c:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public static a(Landroid/content/Context;)Logs;
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x9

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    const-class v0, Logs;

    nop

    goto/32 :goto_d

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

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_5
    const v1, 0xf

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

    nop

    :goto_6
    sget-object p0, Logs;->e:Logs;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-object p0

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit v0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
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

    :goto_9
    throw p0

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_d
    monitor-enter v0

    nop

    :try_start_1
    sget-object v1, Logs;->e:Logs;

    nop

    nop

    nop

    nop

    nop

    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    invoke-static {p0}, Logm;->a(Landroid/content/Context;)V

    new-instance v1, Logs;

    nop

    nop

    nop

    invoke-direct {v1, p0}, Logs;-><init>(Landroid/content/Context;)V

    sput-object v1, Logs;->e:Logs;

    nop

    nop

    nop

    :cond_1
    monitor-exit v0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_6

    nop

    nop

    :goto_e
    invoke-static {p0}, Lolx;->ag(Ljava/lang/Object;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method static final varargs b(Landroid/content/pm/PackageInfo;[Loks;)Loks;
    .locals 3

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_0
    aget-object p0, p0, v2

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

    :goto_1
    aget-object p0, p1, v2

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

    :goto_2
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_5
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_6
    return-object v1

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_9
    array-length p0, p1

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_a
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_b
    aget-object p0, p1, v2

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v1, 0x0

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

    :goto_d
    array-length v0, v0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_e
    goto/16 :goto_26

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_10
    if-ne v0, v2, :cond_0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    nop

    :goto_11
    return-object v1

    nop

    nop

    :goto_12
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const-string p0, "GoogleSignatureVerifier"

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    new-instance v0, Logj;

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

    :goto_15
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :cond_1
    goto/32 :goto_1a

    nop

    :goto_16
    sget-object p1, Lcom/google/android/apps/camera/ui/remotecontrol/Gizr/bXyemjIV;->JlIbqsBnczon:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_17
    const/4 p1, 0x0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_18
    const v0, 0x1a

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

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

    :goto_1a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1d
    if-nez p0, :cond_3

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-direct {v0, p0}, Logj;-><init>([B)V

    :goto_1f
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_21
    const v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p0, v0}, Loks;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_23
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto :goto_1f

    nop

    :goto_26
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_27
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_28
    if-lt v2, p0, :cond_4

    nop

    goto/32 :goto_26

    nop

    nop

    :cond_4
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_29
    return-object p0

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static final c(Landroid/content/pm/PackageInfo;Z)Z
    .locals 4

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_1
    const-string v2, "com.android.vending"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    goto/16 :goto_1a

    nop

    nop

    :goto_3
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_4
    aput-object p1, p0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_5
    iget-object v3, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

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

    :goto_6
    if-nez p0, :cond_0

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

    :cond_0
    goto/32 :goto_17

    nop

    nop

    :goto_7
    if-nez p0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    :goto_8
    sget-object p0, Logl;->a:[Loks;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_9
    move-object v2, p0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_e
    invoke-static {v2, p0}, Logs;->b(Landroid/content/pm/PackageInfo;[Loks;)Loks;

    move-result-object p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-nez p0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :cond_2
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-nez p1, :cond_3

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :cond_3
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    move p1, v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_12
    aget-object p1, p1, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_13
    goto/16 :goto_37

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_34

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_26

    nop

    nop

    :goto_17
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_33

    nop

    nop

    nop

    :goto_19
    invoke-static {v2, p0}, Logs;->b(Landroid/content/pm/PackageInfo;[Loks;)Loks;

    move-result-object p0

    nop

    nop

    :goto_1a
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1b
    if-eqz p1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    :cond_4
    :goto_1c
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    sget-object p1, Logl;->a:[Loks;

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_1e
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    move p1, v0

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_20
    const-string v3, "com.google.android.gms"

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_21
    if-eqz v2, :cond_5

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_22
    goto/16 :goto_37

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_2b

    nop

    nop

    :goto_24
    iget-object p1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

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

    :goto_25
    if-lez v0, :cond_6

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_6
    goto/32 :goto_15

    nop

    :goto_26
    const/4 v0, 0x1

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

    :goto_27
    and-int/lit16 p1, p1, 0x81

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

    :goto_28
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_29
    const v0, 0x2

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

    :goto_2a
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_2b
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_2c
    if-nez v2, :cond_7

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :cond_7
    :goto_2d
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_2e
    if-nez p1, :cond_8

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2f
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_16

    nop

    :goto_31
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_32
    if-nez p1, :cond_9

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_33
    return v1

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    new-array p0, v0, [Loks;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_36
    goto/16 :goto_a

    nop

    :goto_37
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    if-nez p0, :cond_a

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_2e

    nop

    nop
.end method
