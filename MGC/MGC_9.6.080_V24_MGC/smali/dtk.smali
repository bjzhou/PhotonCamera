.class public final Ldtk;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x20

    nop

    goto/32 :goto_e

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

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_3
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

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

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_5
    return p0

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_8
    const-string v0, "permission must be non-null"

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_9
    invoke-static {p1, v0}, Ldvu;->u(Ljava/lang/Object;Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_a
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

    :goto_b
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

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

    :goto_e
    const v1, 0x6

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

.method public static b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 8

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v3, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v4, :cond_0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_3
    check-cast v3, Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v3, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :goto_5
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_7
    invoke-direct {v1, v0, p0}, Ldtu;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_1

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    :goto_9
    monitor-enter v2

    nop

    nop

    nop

    :try_start_0
    sget-object v0, Ldtx;->b:Ljava/util/WeakHashMap;

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Landroid/util/SparseArray;

    nop

    nop

    nop

    nop

    nop

    if-nez v0, :cond_2

    nop

    new-instance v0, Landroid/util/SparseArray;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sget-object v3, Ldtx;->b:Ljava/util/WeakHashMap;

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    new-instance v3, Lqxk;

    nop

    nop

    iget-object v1, v1, Ldtu;->a:Landroid/content/res/Resources;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    nop

    nop

    invoke-direct {v3, v4, v1, p0}, Lqxk;-><init>(Landroid/content/res/ColorStateList;Landroid/content/res/Configuration;Landroid/content/res/Resources$Theme;)V

    invoke-virtual {v0, p1, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    monitor-exit v2

    nop

    move-object v3, v4

    nop

    nop

    goto/16 :goto_27

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    monitor-exit v2

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_a
    sget-object v2, Ldtx;->a:Ljava/lang/ThreadLocal;

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_b
    if-le v2, v3, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_3
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_c
    if-eqz v2, :cond_4

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2c

    nop

    nop

    :goto_d
    if-eqz v3, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

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

    nop

    :goto_e
    goto/16 :goto_1

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_12
    sget-object v2, Ldtx;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_13
    throw p0

    nop

    nop

    :goto_14
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_16
    iget v3, v2, Landroid/util/TypedValue;->type:I

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v3, 0x1

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_18
    goto/16 :goto_1

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v2

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_19
    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const v1, 0x6

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_1b
    iget v2, v2, Landroid/util/TypedValue;->type:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    move-object v3, v4

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    nop

    nop

    :try_start_1
    invoke-static {v0, v2, p0}, Ldtq;->a(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v4

    nop
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1f
    const/16 v3, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_20
    const-string v3, "ResourcesCompat"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v0, p1, v2, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_22
    monitor-enter v2

    nop

    nop

    nop

    nop

    nop

    :try_start_2
    sget-object v3, Ldtx;->b:Ljava/util/WeakHashMap;

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    check-cast v3, Landroid/util/SparseArray;

    nop

    nop

    nop

    nop

    nop

    const/4 v4, 0x0

    nop

    if-eqz v3, :cond_9

    nop

    nop

    nop

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v5

    nop

    nop

    nop

    nop

    if-lez v5, :cond_9

    nop

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    check-cast v5, Lqxk;

    nop

    nop

    nop

    nop

    if-eqz v5, :cond_9

    nop

    nop

    nop

    nop

    iget-object v6, v5, Lqxk;->b:Ljava/lang/Object;

    nop

    nop

    nop

    iget-object v7, v1, Ldtu;->a:Landroid/content/res/Resources;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    nop

    nop

    nop

    nop

    check-cast v6, Landroid/content/res/Configuration;

    nop

    invoke-virtual {v6, v7}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v6

    nop

    nop

    nop

    if-eqz v6, :cond_8

    nop

    nop

    nop

    nop

    nop

    iget-object v6, v1, Ldtu;->b:Landroid/content/res/Resources$Theme;

    nop

    if-nez v6, :cond_6

    nop

    nop

    iget v7, v5, Lqxk;->a:I

    nop

    nop

    nop

    nop

    nop

    if-eqz v7, :cond_7

    nop

    nop

    nop

    :cond_6
    if-eqz v6, :cond_8

    nop

    nop

    nop

    nop

    iget v7, v5, Lqxk;->a:I

    nop

    invoke-virtual {v6}, Landroid/content/res/Resources$Theme;->hashCode()I

    move-result v6

    nop

    nop

    nop

    nop

    nop

    if-ne v7, v6, :cond_8

    nop

    :cond_7
    iget-object v3, v5, Lqxk;->c:Ljava/lang/Object;

    nop

    monitor-exit v2

    nop

    nop

    goto/16 :goto_1d

    nop

    :cond_8
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_9
    monitor-exit v2

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_24
    if-ge v3, v5, :cond_a

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_a
    goto/32 :goto_1b

    nop

    nop

    :goto_25
    sget-object v3, Ldtx;->a:Ljava/lang/ThreadLocal;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v0, p1, p0}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_3

    nop

    nop

    :goto_28
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_29
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_2b
    check-cast v2, Landroid/util/TypedValue;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2c
    new-instance v2, Landroid/util/TypedValue;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    return-object v3

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    :try_start_3
    monitor-exit v2

    nop

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_2e
    const/16 v5, 0x1c

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_30
    sget-object v2, Ldtx;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    new-instance v1, Ldtu;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_32
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    const-string v5, "Failed to inflate ColorStateList, leaving it to the framework"

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static c(Landroid/content/Context;)[Ljava/io/File;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

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

    :goto_1
    const/4 v0, 0x0

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
    return-object p0

    nop
.end method

.method public static d(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)V
    .locals 6

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1
    throw p0

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_4
    const-string p1, "Cannot specify both RECEIVER_EXPORTED and RECEIVER_NOT_EXPORTED"

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    move-object v0, p0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_9
    move-object v2, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_a
    goto :goto_d

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_3

    nop

    nop

    :goto_c
    if-eqz p3, :cond_0

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

    :cond_0
    :goto_d
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    move v5, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_11
    or-int/lit8 p3, p3, 0x2

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_12
    move-object v1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_13
    const v0, 0xc

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_14
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    :goto_15
    if-eqz v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_16
    goto/16 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_18
    return-void

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1a
    const v1, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_1b
    and-int/lit8 v0, p3, 0x4

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    throw p0

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_c

    nop

    nop

    :goto_1e
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    and-int/lit8 v0, v5, 0x2

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_20
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_21
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_22
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :cond_3
    goto/32 :goto_2d

    nop

    :goto_23
    if-nez p3, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_4
    goto/32 :goto_a

    nop

    nop

    :goto_24
    if-eqz v0, :cond_5

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_5
    goto/32 :goto_23

    nop

    nop

    :goto_25
    and-int/lit8 v0, p3, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_26
    const-string p1, "Cannot specify both RECEIVER_VISIBLE_TO_INSTANT_APPS and RECEIVER_NOT_EXPORTED"

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_27
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_28
    const-string p1, "One of either RECEIVER_EXPORTED or RECEIVER_NOT_EXPORTED is required"

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_29
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_2a
    throw p0

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_e

    nop

    nop

    :goto_2c
    and-int/lit8 p3, v5, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_2d
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop
.end method
