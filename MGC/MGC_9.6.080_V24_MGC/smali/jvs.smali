.class public Ljvs;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lmiu;


# static fields
.field private static final a:Lsdb;


# instance fields
.field private final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final c:Landroid/content/Context;

.field private final d:Lpsu;

.field private final e:J

.field private final f:Z

.field private final g:Lmjv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

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

    :goto_2
    const-string v0, "jvs"

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sput-object v0, Ljvs;->a:Lsdb;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Lpsu;Lhoh;Lmjv;)V
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Ljvs;->d:Lpsu;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_18

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    goto/32 :goto_15

    nop

    nop

    :goto_4
    const v0, 0x19

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_8
    div-long/2addr p1, v0

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

    nop

    nop

    :goto_9
    add-long/2addr p1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

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

    :goto_b
    iput-object v0, p0, Ljvs;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_c
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_d
    iput-object p1, p0, Ljvs;->c:Landroid/content/Context;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_e
    iput-boolean p1, p0, Ljvs;->f:Z

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

    :goto_f
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_11
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_12
    rem-int v0, v0, v1

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

    :goto_13
    iput-wide p1, p0, Ljvs;->e:J

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iput-object p4, p0, Ljvs;->g:Lmjv;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_15
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const-wide/16 v0, 0x3e8

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

    :goto_17
    invoke-virtual {p3, p1}, Lhoh;->p(Lhmn;)Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_18
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_19
    const-wide/16 v0, -0x5

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1a
    sget-object p1, Lhmz;->A:Lhmn;

    nop

    nop

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
.end method


# virtual methods
.method public final run()V
    .locals 14

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    :goto_2
    goto/32 :goto_1

    nop

    :goto_3
    goto/32 :goto_e

    nop

    nop

    :goto_4
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    :goto_6
    goto/32 :goto_26

    nop

    nop

    :goto_7
    goto :goto_8

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_8
    throw p0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :catchall_1
    move-exception p0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/16 :goto_20

    nop

    nop

    nop

    nop

    nop

    :catchall_2
    move-exception v3

    nop

    :try_start_1
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_a
    goto/16 :goto_15

    nop

    nop

    nop

    nop

    :catchall_3
    move-exception p0

    nop

    nop

    nop

    :try_start_2
    monitor-exit v6

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    throw p0

    nop

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :cond_0
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_b
    goto/16 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_1
    :try_start_5
    new-instance v10, Ljava/io/FileInputStream;

    nop

    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v11

    nop

    nop

    invoke-direct {v10, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_5
    .catch Lqeb; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    :try_start_6
    invoke-static {v10}, Lqec;->b(Ljava/io/FileInputStream;)Lqec;

    move-result-object v11

    nop

    const-string v12, "mdat"

    nop

    nop

    nop

    nop

    invoke-virtual {v11, v12}, Lqec;->e(Ljava/lang/String;)Lqec;

    move-result-object v11

    nop

    nop

    iget-object v11, v11, Lqec;->a:Lrss;

    nop

    nop

    nop

    invoke-virtual {v11}, Lrss;->h()Z

    move-result v11

    nop

    nop

    if-nez v11, :cond_2

    nop

    nop

    sget-object v3, Ljvs;->a:Lsdb;

    nop

    nop

    invoke-virtual {v3}, Lscs;->c()Lsdo;

    move-result-object v3

    nop

    nop

    nop

    nop

    const/16 v8, 0xa90

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v3, v8}, Lscz;->M(I)Lsdo;

    move-result-object v3

    nop

    nop

    check-cast v3, Lscz;

    nop

    nop

    nop

    const-string v8, "Not restoring video id %d since it does not have an mdat box"

    nop

    invoke-interface {v3, v8, v5}, Lscz;->t(Ljava/lang/String;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    goto/16 :goto_23

    nop

    nop

    :cond_2
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Lqeb; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    :try_start_8
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x20

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_e
    const-string v0, "owner_package_name = ? AND date_added < "

    nop

    :try_start_9
    iget-object v1, p0, Ljvs;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    nop

    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_3

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    :cond_3
    iget-object v1, p0, Ljvs;->c:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    const-string v3, "_id"

    nop

    nop

    nop

    const-string v4, "date_added"

    nop

    nop

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    nop

    iget-object v4, p0, Ljvs;->c:Landroid/content/Context;

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    nop

    new-instance v5, Landroid/os/Bundle;

    nop

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "android:query-arg-match-pending"

    nop

    nop

    nop

    nop

    nop

    const/4 v7, 0x3

    nop

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v6, "android:query-arg-sql-selection"

    nop

    nop

    nop

    nop

    nop

    iget-wide v8, p0, Ljvs;->e:J

    nop

    nop

    nop

    nop

    nop

    new-instance v10, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    invoke-virtual {v5, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "android:query-arg-sql-selection-args"

    nop

    nop

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    invoke-virtual {v5, v0, v4}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    nop

    nop

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    nop

    invoke-virtual {v1, v0, v3, v5, v4}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    nop
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/32 :goto_14

    nop

    nop

    :goto_f
    sget-object v0, Ljvs;->a:Lsdb;

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

    :goto_10
    return-void

    nop

    nop

    :catchall_4
    move-exception p0

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

    nop

    :goto_11
    goto :goto_12

    nop

    nop

    nop

    :catchall_5
    move-exception v8

    nop

    nop

    nop

    nop

    :try_start_a
    invoke-virtual {v3, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_12
    throw v3

    nop

    nop

    nop

    nop

    nop
    :try_end_a
    .catch Lqeb; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    :catch_0
    move-exception v3

    nop

    nop

    nop

    nop

    :try_start_b
    sget-object v8, Ljvs;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v8}, Lscs;->c()Lsdo;

    move-result-object v8

    nop

    nop

    nop

    nop

    invoke-interface {v8, v3}, Lscz;->i(Ljava/lang/Throwable;)Lsdo;

    move-result-object v3

    nop

    nop

    check-cast v3, Lscz;

    nop

    nop

    nop

    nop

    const/16 v8, 0xa8f

    nop

    nop

    nop

    nop

    invoke-interface {v3, v8}, Lscz;->M(I)Lsdo;

    move-result-object v3

    nop

    nop

    check-cast v3, Lscz;

    nop

    nop

    nop

    const-string v8, "Not restoring video id %d due to invalid boxes"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v3, v8, v5}, Lscz;->t(Ljava/lang/String;I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_4

    nop

    goto/32 :goto_3

    nop

    :cond_4
    goto/32 :goto_2

    nop

    :goto_14
    if-nez v0, :cond_5

    nop

    nop

    goto/32 :goto_19

    nop

    :cond_5
    :goto_15
    :try_start_c
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    nop

    if-eqz v3, :cond_0

    nop

    nop

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    nop

    nop

    nop

    nop

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    nop

    nop

    nop

    nop

    nop

    iget-boolean v6, p0, Ljvs;->f:Z

    nop

    if-eqz v6, :cond_7

    nop

    nop

    iget-object v6, p0, Ljvs;->c:Landroid/content/Context;

    nop

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    nop

    nop

    nop

    nop
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :try_start_d
    sget-object v10, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    nop

    nop

    nop

    int-to-long v11, v5

    nop

    invoke-static {v10, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    nop

    nop

    const-string v11, "r"

    nop

    nop

    nop

    nop

    invoke-virtual {v6, v10, v11, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    nop

    nop

    nop
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_16
    goto/16 :goto_23

    nop

    nop

    nop

    nop

    :catchall_6
    move-exception v3

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

    :goto_17
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_18
    goto/16 :goto_6

    nop

    nop

    :goto_19
    :try_start_e
    sget-object p0, Ljvs;->a:Lsdb;

    nop

    nop

    nop

    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    const/16 v1, 0xa8d

    nop

    nop

    nop

    invoke-interface {p0, v1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    check-cast p0, Lscz;

    nop

    const-string v1, "Got null cursor while restoring videos"

    nop

    nop

    nop

    nop

    invoke-interface {p0, v1}, Lscz;->s(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {v1, v2, v0, p0}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1b
    if-nez v6, :cond_6

    nop

    nop

    goto/32 :goto_1f

    nop

    :cond_6
    :try_start_f
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_1d
    const-string v1, "Failed to publish still-pending videos"

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

    :goto_1e
    goto :goto_1f

    nop

    nop

    nop

    :catchall_7
    move-exception v6

    nop

    :try_start_10
    invoke-virtual {v3, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1f
    throw v3

    nop

    nop
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    :catch_1
    move-exception v3

    nop

    nop

    :try_start_11
    sget-object v6, Ljvs;->a:Lsdb;

    nop

    nop

    invoke-virtual {v6}, Lscs;->c()Lsdo;

    move-result-object v6

    nop

    nop

    nop

    invoke-interface {v6, v3}, Lscz;->i(Ljava/lang/Throwable;)Lsdo;

    move-result-object v3

    nop

    nop

    check-cast v3, Lscz;

    nop

    nop

    const/16 v6, 0xa8e

    nop

    nop

    invoke-interface {v3, v6}, Lscz;->M(I)Lsdo;

    move-result-object v3

    nop

    nop

    check-cast v3, Lscz;

    nop

    nop

    nop

    nop

    const-string v6, "Could not inspect video id %d as the file is not found"

    nop

    nop

    invoke-interface {v3, v6, v5}, Lscz;->t(Ljava/lang/String;I)V

    goto/16 :goto_15

    nop

    nop

    nop

    nop

    :cond_7
    :goto_20
    iget-object v6, p0, Ljvs;->d:Lpsu;

    nop

    nop

    iget-object v6, v6, Lpsu;->l:Ljava/text/DateFormat;

    nop

    nop

    nop

    monitor-enter v6

    nop
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    :try_start_12
    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    invoke-virtual {v10, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v10

    nop

    nop

    nop

    nop

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    nop

    nop

    nop

    invoke-virtual {v6, v10}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    nop

    nop

    nop

    monitor-exit v6

    nop

    nop

    nop

    nop

    nop
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    :try_start_13
    iget-object v6, p0, Ljvs;->d:Lpsu;

    nop

    nop

    nop

    iget-object v6, v6, Lpsu;->d:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    new-instance v11, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".RESTORED"

    nop

    nop

    nop

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    new-instance v10, Landroid/content/ContentValues;

    nop

    nop

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    const-string v11, "is_pending"

    nop

    nop

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    nop

    nop

    nop

    nop

    invoke-virtual {v10, v11, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "_display_name"

    nop

    nop

    invoke-virtual {v10, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    nop

    nop

    nop

    int-to-long v11, v5

    nop

    nop

    invoke-static {v3, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v3, v10, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    sget-object v3, Ljvs;->a:Lsdb;

    nop

    nop

    nop

    invoke-virtual {v3}, Lscs;->c()Lsdo;

    move-result-object v3

    nop

    nop

    nop

    nop

    const/16 v6, 0xa8c

    nop

    nop

    nop

    nop

    invoke-interface {v3, v6}, Lscz;->M(I)Lsdo;

    move-result-object v3

    nop

    check-cast v3, Lscz;

    nop

    nop

    nop

    nop

    const-string v6, "Published still-pending video id %s"

    nop

    nop

    nop

    invoke-interface {v3, v6, v5}, Lscz;->t(Ljava/lang/String;I)V

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v5, v6}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v5

    nop

    nop

    nop

    nop

    sub-long/2addr v5, v8

    nop

    nop

    nop

    nop

    nop

    iget-object v3, p0, Ljvs;->g:Lmjv;

    nop

    nop

    nop

    nop

    nop

    sget-object v8, Lsmw;->a:Lsmw;

    nop

    nop

    nop

    nop

    invoke-virtual {v8}, Ltkg;->m()Ltkb;

    move-result-object v8

    nop

    nop

    nop

    nop

    iget-object v9, v8, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    invoke-virtual {v9}, Ltkg;->C()Z

    move-result v9

    nop

    nop

    nop

    if-nez v9, :cond_8

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v8}, Ltkb;->o()V

    :cond_8
    iget-object v9, v8, Ltkb;->b:Ltkg;

    nop

    nop

    move-object v10, v9

    nop

    nop

    nop

    check-cast v10, Lsmw;

    nop

    nop

    iget v11, v10, Lsmw;->b:I

    nop

    nop

    nop

    nop

    nop

    or-int/2addr v11, v2

    nop

    nop

    nop

    iput v11, v10, Lsmw;->b:I

    nop

    nop

    nop

    nop

    iput-wide v5, v10, Lsmw;->c:J

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v9}, Ltkg;->C()Z

    move-result v5

    nop

    nop

    nop

    if-nez v5, :cond_9

    nop

    nop

    invoke-virtual {v8}, Ltkb;->o()V

    :cond_9
    iget-object v5, v8, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    check-cast v5, Lsmw;

    nop

    nop

    iput v7, v5, Lsmw;->d:I

    nop

    nop

    nop

    nop

    nop

    iget v6, v5, Lsmw;->b:I

    nop

    nop

    nop

    nop

    or-int/lit8 v6, v6, 0x2

    nop

    nop

    nop

    nop

    nop

    iput v6, v5, Lsmw;->b:I

    nop

    nop

    nop

    nop

    invoke-virtual {v8}, Ltkb;->i()Ltkg;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    check-cast v5, Lsmw;

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v5}, Lmjv;->d(Lsmw;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_21
    if-eqz v6, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :cond_a
    :try_start_14
    sget-object v3, Ljvs;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Lscs;->c()Lsdo;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    const/16 v8, 0xa92

    nop

    invoke-interface {v3, v8}, Lscz;->M(I)Lsdo;

    move-result-object v3

    nop

    nop

    nop

    check-cast v3, Lscz;

    nop

    const-string v8, "Could not inspect video id %d as openFileDescriptor returned null"

    nop

    nop

    nop

    nop

    invoke-interface {v3, v8, v5}, Lscz;->t(Ljava/lang/String;I)V

    goto/16 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v10

    nop

    nop

    const-wide/32 v12, 0x30d40

    nop

    nop

    nop

    nop

    cmp-long v12, v10, v12

    nop

    nop

    nop

    nop

    nop

    if-gez v12, :cond_1

    nop

    sget-object v3, Ljvs;->a:Lsdb;

    nop

    nop

    nop

    invoke-virtual {v3}, Lscs;->c()Lsdo;

    move-result-object v3

    nop

    const/16 v8, 0xa91

    nop

    invoke-interface {v3, v8}, Lscz;->M(I)Lsdo;

    move-result-object v3

    nop

    nop

    nop

    nop

    check-cast v3, Lscz;

    nop

    const-string v8, "Not restoring video id %d since it is too small (size: %d)"

    nop

    nop

    invoke-interface {v3, v8, v5, v10, v11}, Lscz;->x(Ljava/lang/String;IJ)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    :goto_23
    :try_start_15
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_15
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_15} :catch_1
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_24
    const v0, 0xf

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_25
    const/16 v2, 0xa8b

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-nez v0, :cond_b

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_b
    :try_start_16
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop
.end method
