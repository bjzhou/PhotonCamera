.class public final Lowf;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final b:Ljava/util/HashMap;

.field public final c:Ljava/util/HashMap;

.field public final d:Ljava/util/HashMap;

.field public e:Ljava/lang/Object;

.field public final f:Lolx;

.field private g:Ljava/util/HashMap;

.field private final h:Ljava/util/HashMap;

.field private i:Z

.field private final j:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    goto/32 :goto_22

    nop

    nop

    :goto_2
    invoke-direct {v0}, Lolx;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0xd

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v1, v2, v3}, Ljava/util/HashMap;-><init>(IF)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object v1, p0, Lowf;->b:Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object v0, p0, Lowf;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_8
    iput-object v0, p0, Lowf;->f:Lolx;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_9
    iput-object v1, p0, Lowf;->c:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_a
    const/16 v2, 0x10

    nop

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

    nop

    :goto_b
    new-instance v1, Ljava/util/HashMap;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_c
    invoke-direct {v1, v2, v3}, Ljava/util/HashMap;-><init>(IF)V

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_d
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {v1, v2, v3}, Ljava/util/HashMap;-><init>(IF)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput-boolean v0, p0, Lowf;->i:Z

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_10
    const/high16 v3, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iput-object v1, p0, Lowf;->d:Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_13
    iput-object v0, p0, Lowf;->j:[Ljava/lang/String;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_14
    new-instance v1, Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iput-object v0, p0, Lowf;->g:Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_16
    invoke-direct {v1, v2, v3}, Ljava/util/HashMap;-><init>(IF)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_17
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_18
    const v0, 0x1c

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    new-instance v1, Ljava/util/HashMap;

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

    nop

    :goto_1a
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1b
    new-instance v1, Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1c
    new-instance v0, Lolx;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1d
    iput-object v1, p0, Lowf;->h:Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_1e
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_23
    iput-object v0, p0, Lowf;->e:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_24
    if-lez v0, :cond_0

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_20

    nop

    :goto_25
    new-array v0, v0, [Ljava/lang/String;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static final c(Landroid/content/ContentResolver;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    :goto_1
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    :goto_2
    if-nez p0, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    const-string v0, "ContentResolver needed with GservicesDelegateSupplier.init()"

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public static final e(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    :goto_1
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v0, :cond_1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_7

    nop

    nop

    :goto_6
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

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

    nop

    nop

    nop

    :goto_7
    return-object p2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_2

    nop

    nop
.end method


# virtual methods
.method public final a(Landroid/content/ContentResolver;)V
    .locals 3

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_0
    iput-object v0, p0, Lowf;->e:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p1, p0, Lowf;->d:Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_16

    nop

    :goto_3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    :goto_4
    iget-object v0, p0, Lowf;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

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

    :goto_5
    iput-object p1, p0, Lowf;->e:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_6
    new-instance p1, Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_7
    iget-object p1, p0, Lowf;->b:Ljava/util/HashMap;

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

    :goto_8
    iget-object p1, p0, Lowf;->g:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_9
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p1, p0, Lowf;->c:Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {v1, p0}, Lowc;-><init>(Lowf;)V

    goto/32 :goto_2e

    nop

    nop

    :goto_e
    const v0, 0xa

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {v0, v1, v2}, Ljava/util/HashMap;-><init>(IF)V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_12
    iget-object v0, p0, Lowf;->g:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_13
    new-instance v1, Lowc;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_14
    new-instance v0, Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    goto/32 :goto_c

    nop

    nop

    :goto_19
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object p1, p0, Lowf;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    sget-object v0, Lovz;->a:Landroid/net/Uri;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1c
    iget-object p1, p0, Lowf;->h:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_1d
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1e
    const/16 v1, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_1f
    const/high16 v2, 0x3f800000    # 1.0f

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p1, v0, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_23
    if-eqz v0, :cond_1

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_24
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_25
    const v1, 0xf

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iput-object v0, p0, Lowf;->g:Ljava/util/HashMap;

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

    :goto_27
    iput-boolean v1, p0, Lowf;->i:Z

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_29
    return-void

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_1a

    nop

    nop

    :goto_2b
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_2c
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_15

    nop

    :goto_2d
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_2f
    new-instance v0, Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop
.end method

.method public final b(Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    if-eq p1, v0, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lowf;->g:Ljava/util/HashMap;

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

    :goto_3
    invoke-interface {p2, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lowf;->e:Ljava/lang/Object;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    :cond_0
    goto/32 :goto_1e

    nop

    :goto_1
    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_1
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    nop

    nop

    nop

    if-eqz v3, :cond_2

    nop

    nop

    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :try_start_2
    invoke-virtual {p1}, Landroid/content/ContentProviderClient;->release()Z
    :try_end_2
    .catch Lowe; {:try_start_2 .. :try_end_2} :catch_1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    move-object v3, v2

    nop

    :goto_3
    goto/32 :goto_a

    nop

    nop

    :goto_4
    goto/16 :goto_f

    nop

    nop

    nop

    nop

    :cond_2
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :try_start_4
    invoke-virtual {p1}, Landroid/content/ContentProviderClient;->release()Z
    :try_end_4
    .catch Lowe; {:try_start_4 .. :try_end_4} :catch_1

    goto/32 :goto_e

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_6
    return-object v2

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    :try_start_5
    monitor-exit p0

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_7
    if-nez p1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_3
    :try_start_6
    sget-object v4, Lovz;->a:Landroid/net/Uri;

    nop

    nop

    nop

    nop

    nop

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v7

    nop

    nop

    nop

    nop

    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    nop

    const/4 v5, 0x0

    nop

    nop

    nop

    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    nop

    move-object v3, p1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_9
    const v0, 0x1c

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

    nop

    :goto_a
    monitor-enter p0

    nop

    nop

    :try_start_7
    iget-object p1, p0, Lowf;->e:Ljava/lang/Object;

    nop

    nop

    nop

    if-ne v0, p1, :cond_4

    nop

    nop

    nop

    iget-object p1, p0, Lowf;->g:Ljava/util/HashMap;

    nop

    nop

    nop

    invoke-virtual {p1, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    monitor-exit p0

    nop

    nop

    if-eqz v3, :cond_5

    nop

    nop

    nop

    nop

    nop

    return-object v3

    nop

    nop

    nop

    nop

    nop

    :cond_5
    return-object v2

    nop

    nop

    nop

    :catchall_1
    move-exception p1

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_b
    goto :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_c
    :try_start_8
    new-instance p0, Lowe;

    nop

    nop

    const-string p2, "ContentProvider query returned null cursor"

    nop

    nop

    nop

    invoke-direct {p0, p2}, Lowe;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    nop
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :goto_d
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    move-object v3, v2

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {p1}, Lowf;->c(Landroid/content/ContentResolver;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto :goto_12

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    :try_start_9
    new-instance p2, Lowe;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p2, p0}, Lowe;-><init>(Ljava/lang/Throwable;)V

    throw p2

    nop

    nop

    nop

    nop

    nop
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :goto_12
    :try_start_a
    invoke-virtual {p1}, Landroid/content/ContentProviderClient;->release()Z

    throw p0

    nop

    nop

    nop

    :goto_13
    new-instance p0, Lowe;

    nop

    nop

    nop

    const/4 p1, 0x0

    nop

    nop

    nop

    sget-object p1, Lcom/google/android/libraries/performance/primes/transmitter/clearcut/itlF/rqoPuzOSTbBmB;->qrcRQhiNkVYf:Ljava/lang/String;

    nop

    invoke-direct {p0, p1}, Lowe;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    nop

    nop

    nop
    :try_end_a
    .catch Lowe; {:try_start_a .. :try_end_a} :catch_1

    :catch_1
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_14
    throw p1

    nop

    :catchall_2
    move-exception p0

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

    :goto_15
    const v1, 0x9

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_16
    throw p1

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_18
    monitor-enter p0

    nop

    :try_start_b
    invoke-virtual {p0, p1}, Lowf;->a(Landroid/content/ContentResolver;)V

    iget-object v0, p0, Lowf;->e:Ljava/lang/Object;

    nop

    nop

    iget-object v1, p0, Lowf;->g:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    if-eqz v1, :cond_7

    nop

    nop

    nop

    nop

    nop

    iget-object p1, p0, Lowf;->g:Ljava/util/HashMap;

    nop

    nop

    nop

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    check-cast p1, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    if-nez p1, :cond_6

    nop

    nop

    nop

    goto :goto_19

    nop

    nop

    :cond_6
    move-object v2, p1

    nop

    nop

    :goto_19
    monitor-exit p0

    nop

    nop

    return-object v2

    nop

    nop

    nop

    :cond_7
    monitor-exit p0

    nop
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    sget-object v1, Lovz;->a:Landroid/net/Uri;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1, v1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p1

    nop

    nop

    nop
    :try_end_c
    .catch Lowe; {:try_start_c .. :try_end_c} :catch_1

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_1b
    if-nez v1, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :cond_8
    :try_start_d
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_1c
    if-nez p1, :cond_9

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_9
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_1e
    goto/32 :goto_17

    nop

    :goto_1f
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_20
    if-nez v3, :cond_a

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_1d

    nop

    nop

    :goto_21
    goto :goto_22

    nop

    :catchall_3
    move-exception p2

    nop

    nop

    nop

    nop

    nop

    :try_start_e
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_22
    throw p0

    nop

    nop

    nop

    nop
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :catchall_4
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop
.end method
