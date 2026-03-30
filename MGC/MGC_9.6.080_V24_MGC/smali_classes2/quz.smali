.class public final synthetic Lquz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lqvd;


# instance fields
.field public final synthetic a:Lqvb;


# direct methods
.method public synthetic constructor <init>(Lqvb;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lquz;->a:Lqvb;

    nop

    goto/32 :goto_2

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

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 8

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_14

    nop

    nop

    nop

    nop

    nop

    :cond_0
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    goto/32 :goto_26

    nop

    nop

    :goto_2
    iget-object p0, p0, Lquz;->a:Lqvb;

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

    :goto_3
    goto :goto_8

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/16 :goto_20

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    const-string v2, "ContentProvider query failed, using default values"

    nop

    nop

    nop

    nop

    invoke-static {v1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :goto_6
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    :goto_8
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :cond_2
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

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

    nop

    :goto_c
    if-nez p0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :cond_3
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const-string p0, "Unable to acquire ContentProviderClient, using default values"

    nop

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

    :goto_e
    goto :goto_8

    nop

    :catchall_0
    move-exception v2

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/16 v3, 0x100

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_10
    iget-object v0, p0, Lqvb;->c:Landroid/content/ContentResolver;

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_11
    const-string v1, "ConfigurationContentLdr"

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_12
    if-eqz p0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_4
    :try_start_3
    const-string v2, "ContentProvider query returned null cursor, using default values"

    nop

    nop

    nop

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/16 :goto_6

    nop

    nop

    :goto_13
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    nop

    if-nez v2, :cond_1

    nop

    nop

    nop

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_14
    :try_start_4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_5

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

    :cond_5
    goto/32 :goto_1a

    nop

    :goto_16
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    throw p0

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_2

    nop

    nop

    :goto_1c
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1d
    move-object p0, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1e
    iget-object v1, p0, Lqvb;->d:Landroid/net/Uri;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1f
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_21
    goto :goto_22

    nop

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    :try_start_5
    invoke-virtual {v2, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_22
    throw v2

    nop

    nop

    nop
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/16 :goto_8

    nop

    nop

    :goto_24
    :try_start_6
    iget-object v3, p0, Lqvb;->d:Landroid/net/Uri;

    nop

    nop

    nop

    nop

    nop

    sget-object v4, Lqvb;->b:[Ljava/lang/String;

    nop

    nop

    nop

    nop

    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    nop

    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    nop

    move-object v2, v0

    nop

    nop

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    nop

    nop
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_25
    move-object p0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    goto/32 :goto_1d

    nop

    nop

    :goto_27
    const v1, 0x20

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_28
    if-le v2, v3, :cond_6

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :cond_6
    :try_start_7
    new-instance v3, Lwu;

    nop

    nop

    nop

    nop

    invoke-direct {v3, v2}, Lwu;-><init>(I)V

    goto :goto_2a

    nop

    nop

    :goto_29
    new-instance v3, Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    const/high16 v4, 0x3f800000    # 1.0f

    nop

    nop

    nop

    invoke-direct {v3, v2, v4}, Ljava/util/HashMap;-><init>(IF)V

    :goto_2a
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_7

    nop

    nop

    nop

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    const/4 v4, 0x1

    nop

    nop

    nop

    nop

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    nop

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2a

    nop

    nop

    :cond_7
    invoke-interface {p0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    nop

    if-nez v2, :cond_0

    nop

    nop

    const-string v2, "Cursor read incomplete (ContentProvider dead?), using default values"

    nop

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_2b
    const v0, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_2c
    goto/32 :goto_1b

    nop

    nop

    nop

    nop
.end method
