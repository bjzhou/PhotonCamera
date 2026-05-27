.class public final Lffx;
.super Ljava/lang/Object;

# interfaces
.implements Lhip;


# static fields
.field private static final a:Lnak;


# instance fields
.field private final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final c:Landroid/content/Context;

.field private final d:Lkqa;

.field private final e:Lfbz;

.field private final f:J

.field private final g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/microvideo/ScanAndPublishPendingVideosBehavior"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lffx;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lkqa;Ldhi;Lfbz;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lffx;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lffx;->c:Landroid/content/Context;

    iput-object p2, p0, Lffx;->d:Lkqa;

    iput-object p4, p0, Lffx;->e:Lfbz;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    const-wide/16 v0, -0x5

    add-long/2addr p1, v0

    iput-wide p1, p0, Lffx;->f:J

    sget-object p1, Ldhv;->z:Ldhj;

    invoke-interface {p3, p1}, Ldhi;->l(Ldhj;)Z

    move-result p1

    iput-boolean p1, p0, Lffx;->g:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v1, p0

    :try_start_0
    iget-object v0, v1, Lffx;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v1, Lffx;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x2

    new-array v0, v4, [Ljava/lang/String;

    const-string v5, "_id"

    const/4 v6, 0x0

    aput-object v5, v0, v6

    const-string v5, "date_added"

    aput-object v5, v0, v2

    iget-object v5, v1, Lffx;->c:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v8, "android:query-arg-match-pending"

    const/4 v9, 0x3

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v8, "android:query-arg-sql-selection"

    iget-wide v10, v1, Lffx;->f:J

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "owner_package_name = ? AND date_added < "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "android:query-arg-sql-selection-args"

    new-array v10, v2, [Ljava/lang/String;

    aput-object v5, v10, v6

    invoke-virtual {v7, v8, v10}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v5, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    invoke-virtual {v3, v5, v0, v7, v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    if-eqz v5, :cond_9

    :goto_0
    :try_start_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    iget-boolean v0, v1, Lffx;->g:Z

    if-eqz v0, :cond_5

    iget-object v0, v1, Lffx;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    :try_start_2
    sget-object v12, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v13, v7

    invoke-static {v12, v13, v14}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    const-string v13, "r"

    invoke-virtual {v0, v12, v13, v8}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v12
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    if-nez v12, :cond_1

    :try_start_3
    sget-object v0, Lffx;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v10, 0x8b7

    invoke-interface {v0, v10}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v10, "Could not inspect video id %d as openFileDescriptor returned null"

    invoke-interface {v0, v10, v7}, Lnah;->p(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v12}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v13

    const-wide/32 v15, 0x30d40

    cmp-long v0, v13, v15

    if-gez v0, :cond_2

    sget-object v0, Lffx;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v10, 0x8b6

    invoke-interface {v0, v10}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v10, "Not restoring video id %d since it is too small (size: %d)"

    invoke-interface {v0, v10, v7, v13, v14}, Lnah;->t(Ljava/lang/String;IJ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_1
    :try_start_4
    invoke-virtual {v12}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    goto :goto_0

    :cond_2
    :try_start_5
    new-instance v13, Ljava/io/FileInputStream;

    invoke-virtual {v12}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {v13, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_5
    .catch Lkxk; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-static {v13}, Lkxl;->c(Ljava/io/FileInputStream;)Lkxl;

    move-result-object v0

    const-string v14, "mdat"

    invoke-virtual {v0, v14}, Lkxl;->f(Ljava/lang/String;)Lkxl;

    move-result-object v0

    iget-object v0, v0, Lkxl;->a:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lffx;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v10, 0x8b5

    invoke-interface {v0, v10}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v10, "Not restoring video id %d since it does not have an mdat box"

    invoke-interface {v0, v10, v7}, Lnah;->p(Ljava/lang/String;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V

    goto :goto_1

    :cond_3
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Lkxk; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    invoke-virtual {v12}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v10, v0

    :try_start_9
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v11, v0

    :try_start_a
    invoke-static {v10, v11}, Lfwt;->k(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_2
    throw v10
    :try_end_a
    .catch Lkxk; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :catch_0
    move-exception v0

    :try_start_b
    sget-object v10, Lffx;->a:Lnak;

    invoke-virtual {v10}, Lnaf;->c()Lnaz;

    move-result-object v10

    check-cast v10, Lnah;

    invoke-interface {v10, v0}, Lnah;->h(Ljava/lang/Throwable;)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v10, 0x8b4

    invoke-interface {v0, v10}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v10, "Not restoring video id %d due to invalid boxes"

    invoke-interface {v0, v10, v7}, Lnah;->p(Ljava/lang/String;I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v10, v0

    if-eqz v12, :cond_4

    :try_start_c
    invoke-virtual {v12}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v11, v0

    :try_start_d
    invoke-static {v10, v11}, Lfwt;->k(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    throw v10
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    :catch_1
    move-exception v0

    :try_start_e
    sget-object v10, Lffx;->a:Lnak;

    invoke-virtual {v10}, Lnaf;->c()Lnaz;

    move-result-object v10

    check-cast v10, Lnah;

    invoke-interface {v10, v0}, Lnah;->h(Ljava/lang/Throwable;)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v10, 0x8b3

    invoke-interface {v0, v10}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v10, "Could not inspect video id %d as the file is not found"

    invoke-interface {v0, v10, v7}, Lnah;->p(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_5
    :goto_4
    iget-object v0, v1, Lffx;->d:Lkqa;

    iget-object v12, v0, Lkqa;->k:Ljava/text/DateFormat;

    monitor-enter v12
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    :try_start_f
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v12
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    :try_start_10
    iget-object v12, v1, Lffx;->d:Lkqa;

    iget-object v12, v12, Lkqa;->c:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".RESTORED"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    const-string v13, "is_pending"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v13, "_display_name"

    invoke-virtual {v12, v13, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v13, v7

    invoke-static {v0, v13, v14}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v3, v0, v12, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    sget-object v0, Lffx;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v12, 0x8b1

    invoke-interface {v0, v12}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v12, "Published still-pending video id %s"

    invoke-interface {v0, v12, v7}, Lnah;->p(Ljava/lang/String;I)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v0, v12, v13}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v12

    sub-long/2addr v12, v10

    iget-object v0, v1, Lffx;->e:Lfbz;

    sget-object v7, Lnir;->d:Lnir;

    invoke-virtual {v7}, Lnws;->O()Lnwn;

    move-result-object v7

    iget-object v10, v7, Lnwn;->b:Lnws;

    invoke-virtual {v10}, Lnws;->ac()Z

    move-result v10

    if-nez v10, :cond_6

    invoke-virtual {v7}, Lnwn;->p()V

    :cond_6
    iget-object v10, v7, Lnwn;->b:Lnws;

    move-object v11, v10

    check-cast v11, Lnir;

    iget v14, v11, Lnir;->a:I

    or-int/2addr v14, v2

    iput v14, v11, Lnir;->a:I

    iput-wide v12, v11, Lnir;->b:J

    invoke-virtual {v10}, Lnws;->ac()Z

    move-result v10

    if-nez v10, :cond_7

    invoke-virtual {v7}, Lnwn;->p()V

    :cond_7
    iget-object v10, v7, Lnwn;->b:Lnws;

    check-cast v10, Lnir;

    iput v9, v10, Lnir;->c:I

    iget v11, v10, Lnir;->a:I

    or-int/2addr v11, v4

    iput v11, v10, Lnir;->a:I

    invoke-virtual {v7}, Lnwn;->i()Lnws;

    move-result-object v7

    check-cast v7, Lnir;

    invoke-interface {v0, v7}, Lfbz;->i(Lnir;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    goto/16 :goto_0

    :catchall_4
    move-exception v0

    :try_start_11
    monitor-exit v12
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    :try_start_12
    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    :cond_8
    :try_start_13
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    return-void

    :catchall_5
    move-exception v0

    move-object v2, v0

    goto :goto_5

    :cond_9
    :try_start_14
    sget-object v0, Lffx;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v2, 0x8b2

    invoke-interface {v0, v2}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v2, "Got null cursor while restoring videos"

    invoke-interface {v0, v2}, Lnah;->o(Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    return-void

    :goto_5
    if-eqz v5, :cond_a

    :try_start_15
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    goto :goto_6

    :catchall_6
    move-exception v0

    move-object v3, v0

    :try_start_16
    invoke-static {v2, v3}, Lfwt;->k(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_a
    :goto_6
    throw v2
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    :catchall_7
    move-exception v0

    sget-object v2, Lffx;->a:Lnak;

    invoke-virtual {v2}, Lnaf;->b()Lnaz;

    move-result-object v2

    const-string v3, "Failed to publish still-pending videos"

    const/16 v4, 0x8b0

    invoke-static {v2, v3, v4, v0}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    return-void
.end method
