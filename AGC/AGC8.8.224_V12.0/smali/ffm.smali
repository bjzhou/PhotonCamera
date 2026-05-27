.class final Lffm;
.super Ljava/lang/Object;

# interfaces
.implements Lnoj;


# instance fields
.field final synthetic a:Lffo;

.field final synthetic b:Lffp;

.field final synthetic c:Ldqx;


# direct methods
.method public constructor <init>(Lffp;Lffo;Ldqx;[B[B)V
    .locals 0

    iput-object p1, p0, Lffm;->b:Lffp;

    iput-object p2, p0, Lffm;->a:Lffo;

    iput-object p3, p0, Lffm;->c:Ldqx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 3

    iget-object v0, p0, Lffm;->a:Lffo;

    iget-object v0, v0, Lffo;->n:Lkxv;

    invoke-interface {v0}, Lkxv;->b()Lnou;

    move-result-object v0

    invoke-interface {v0}, Lnou;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lffm;->a:Lffo;

    iget-object v1, p0, Lffm;->c:Ldqx;

    invoke-static {v0, p1, v1}, Lffp;->k(Lffo;Ljava/lang/Throwable;Ldqx;)V

    return-void

    :cond_0
    iget-object v0, p0, Lffm;->b:Lffp;

    iget-object v1, p0, Lffm;->a:Lffo;

    iget-object v2, p0, Lffm;->c:Ldqx;

    invoke-virtual {v0, v1, p1, v2}, Lffp;->h(Lffo;Ljava/lang/Throwable;Ldqx;)V

    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 16

    move-object/from16 v1, p0

    iget-object v2, v1, Lffm;->b:Lffp;

    iget-object v3, v1, Lffm;->a:Lffo;

    iget-object v4, v1, Lffm;->c:Ldqx;

    iget-object v0, v3, Lffo;->d:Lfht;

    invoke-virtual {v0}, Lfht;->a()Lfht;

    move-result-object v0

    iget-wide v5, v0, Lfht;->d:J

    iget-wide v7, v0, Lfht;->c:J

    sub-long/2addr v5, v7

    iget-boolean v0, v3, Lffo;->o:Z

    if-nez v0, :cond_e

    :try_start_0
    iget-object v0, v4, Ldqx;->a:Ljava/lang/Object;

    check-cast v0, Lgxn;

    iget-object v0, v0, Lgxn;->a:Lkph;

    invoke-interface {v0}, Lkph;->e()Ljava/io/FileOutputStream;

    move-result-object v0

    iget-object v5, v4, Ldqx;->d:Ljava/lang/Object;

    move-object v6, v5

    check-cast v6, Lmqp;

    invoke-virtual {v6}, Lmqp;->g()Z

    move-result v6

    if-eqz v6, :cond_0

    check-cast v5, Lmqp;

    invoke-virtual {v5}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/libraries/camera/exif/ExifInterface;

    invoke-virtual {v5, v0}, Lcom/google/android/libraries/camera/exif/ExifInterface;->m(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    move-object v5, v0

    goto :goto_0

    :cond_0
    move-object v5, v0

    :goto_0
    :try_start_1
    iget-object v0, v3, Lffo;->h:Lnph;

    invoke-virtual {v0}, Lnph;->isDone()Z

    move-result v0

    invoke-static {v0}, Lmoz;->p(Z)V

    iget-object v0, v3, Lffo;->r:Lnou;

    invoke-interface {v0}, Lnou;->isDone()Z

    move-result v0

    invoke-static {v0}, Lmoz;->p(Z)V

    iget-object v0, v3, Lffo;->h:Lnph;

    invoke-static {v0}, Lnsy;->K(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v0, v3, Lffo;->r:Lnou;

    invoke-static {v0}, Lnsy;->K(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-gez v0, :cond_1

    sget-object v0, Lffp;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v10, 0x88c

    invoke-interface {v0, v10}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v10, "Negative shutter presentation timestamp detected (%d). Resetting to 0."

    invoke-interface {v0, v10, v6, v7}, Lnah;->q(Ljava/lang/String;J)V

    move-wide v6, v8

    goto :goto_1

    :cond_1
    :goto_1
    iget-object v0, v2, Lffp;->k:Ldhi;

    sget-object v8, Ldhw;->L:Ldhj;

    invoke-interface {v0, v8}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v2, Lffp;->n:Lffv;

    iget-object v8, v3, Lffo;->c:Lgxn;

    iget-object v8, v8, Lgxn;->a:Lkph;

    invoke-virtual {v0, v8}, Lffv;->a(Lkph;)V

    :cond_2
    iget-object v0, v3, Lffo;->c:Lgxn;

    iget-object v0, v0, Lgxn;->a:Lkph;

    invoke-interface {v0}, Lkph;->a()J

    move-result-wide v8

    long-to-int v0, v8

    int-to-long v8, v0

    const-wide/32 v10, 0x186a0

    cmp-long v12, v8, v10

    if-gez v12, :cond_3

    sget-object v8, Lffp;->a:Lnak;

    invoke-virtual {v8}, Lnaf;->c()Lnaz;

    move-result-object v8

    check-cast v8, Lnah;

    const/16 v9, 0x88b

    invoke-interface {v8, v9}, Lnah;->G(I)Lnaz;

    move-result-object v8

    check-cast v8, Lnah;

    const-string v9, "Bundled video file too small (%d bytes)"

    invoke-interface {v8, v9, v0}, Lnah;->p(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :cond_3
    :try_start_2
    iget-object v8, v3, Lffo;->c:Lgxn;

    iget-object v8, v8, Lgxn;->a:Lkph;

    invoke-interface {v8}, Lkph;->d()Ljava/io/FileInputStream;

    move-result-object v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    iget-boolean v9, v3, Lffo;->o:Z

    invoke-virtual {v2, v9}, Lffp;->e(Z)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v10, v4, Ldqx;->a:Ljava/lang/Object;

    check-cast v10, Lgxn;

    iget-object v10, v10, Lgxn;->a:Lkph;

    const-string v11, "MP"

    invoke-interface {v10, v11}, Lkph;->h(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    iget-object v10, v4, Ldqx;->a:Ljava/lang/Object;

    check-cast v10, Lgxn;

    iget-object v10, v10, Lgxn;->a:Lkph;

    const-string v11, "MV"

    invoke-interface {v10, v11}, Lkph;->h(Ljava/lang/String;)V

    :goto_2
    const/4 v11, 0x1

    if-eq v11, v9, :cond_5

    const/4 v9, 0x1

    goto :goto_3

    :cond_5
    const/4 v9, 0x2

    :goto_3
    iget-object v12, v4, Ldqx;->d:Ljava/lang/Object;

    move-object v13, v12

    check-cast v13, Lmqp;

    invoke-virtual {v13}, Lmqp;->g()Z

    move-result v13

    if-eqz v13, :cond_6

    check-cast v12, Lmqp;

    invoke-virtual {v12}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/libraries/camera/exif/ExifInterface;

    iget-object v12, v12, Lcom/google/android/libraries/camera/exif/ExifInterface;->bA:Ljava/lang/String;

    invoke-static {v12}, Lkrm;->c(Ljava/lang/String;)Lmqp;

    move-result-object v12

    invoke-virtual {v12}, Lmqp;->f()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lber;

    goto :goto_4

    :cond_6
    const/4 v12, 0x0

    :goto_4
    iget-object v13, v4, Ldqx;->b:Ljava/lang/Object;

    check-cast v13, [B

    invoke-static {v13, v12}, Lkrm;->d([BLber;)Lmqq;

    move-result-object v12

    iget-object v13, v12, Lmqq;->a:Ljava/lang/Object;

    check-cast v13, Lber;

    iget-object v12, v12, Lmqq;->b:Ljava/lang/Object;

    check-cast v12, Lber;

    iget-object v15, v4, Ldqx;->b:Ljava/lang/Object;

    new-instance v14, Landroidx/wear/ambient/AmbientMode$AmbientController;

    check-cast v15, [B

    invoke-direct {v14, v15}, Landroidx/wear/ambient/AmbientMode$AmbientController;-><init>([B)V

    new-instance v15, Lkwu;

    invoke-direct {v15, v0, v8}, Lkwu;-><init>(ILjava/io/InputStream;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v10, 0x0

    invoke-direct {v0, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    invoke-virtual {v0, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v0, :cond_d

    packed-switch v9, :pswitch_data_0

    :try_start_4
    invoke-static {}, Lkya;->a()Lkxz;

    move-result-object v0

    goto :goto_5

    :pswitch_0
    iget v0, v15, Lkwu;->a:I

    sget-object v9, Lbet;->a:Lcvm;

    const-string v10, "http://ns.google.com/photos/1.0/camera/"

    const-string v11, "GCamera"

    invoke-virtual {v9, v10, v11}, Lcvm;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v9, "http://ns.google.com/photos/1.0/camera/"

    const-string v10, "MicroVideo"

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v13, v9, v10, v1}, Lber;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "http://ns.google.com/photos/1.0/camera/"

    const-string v9, "MicroVideoVersion"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v13, v1, v9, v11}, Lber;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "http://ns.google.com/photos/1.0/camera/"

    const-string v9, "MicroVideoOffset"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v13, v1, v9, v0}, Lber;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "http://ns.google.com/photos/1.0/camera/"

    const-string v1, "MicroVideoPresentationTimestampUs"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v13, v0, v1, v6}, Lber;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v14, v13, v12, v15, v5}, Lllj;->s(Landroidx/wear/ambient/AmbientMode$AmbientController;Lber;Lber;Lkwu;Ljava/io/OutputStream;)V

    goto/16 :goto_a

    :catch_0
    move-exception v0

    goto/16 :goto_b

    :goto_5
    const-string v1, "Primary"

    iput-object v1, v0, Lkxz;->b:Ljava/lang/Object;

    invoke-virtual {v0, v10}, Lkxz;->c(I)V

    invoke-virtual {v0, v10}, Lkxz;->b(I)V

    const-string v1, "image/jpeg"

    iput-object v1, v0, Lkxz;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Lkxz;->a()Lkya;

    move-result-object v0

    invoke-static {}, Lkya;->a()Lkxz;

    move-result-object v1

    const-string v9, "MotionPhoto"

    iput-object v9, v1, Lkxz;->b:Ljava/lang/Object;

    const-string v9, "video/mp4"

    iput-object v9, v1, Lkxz;->a:Ljava/lang/Object;

    invoke-virtual {v1, v10}, Lkxz;->c(I)V

    iget v9, v15, Lkwu;->a:I

    invoke-virtual {v1, v9}, Lkxz;->b(I)V

    invoke-virtual {v1}, Lkxz;->a()Lkya;

    move-result-object v1

    const/4 v9, 0x2

    new-array v11, v9, [Lkya;

    aput-object v0, v11, v10

    const/4 v0, 0x1

    aput-object v1, v11, v0

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v9, :cond_9

    if-nez v0, :cond_7

    aget-object v1, v11, v10

    invoke-static {v1}, Lllj;->n(Lkya;)Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_7
    aget-object v1, v11, v0

    invoke-static {v1}, Lllj;->o(Lkya;)Ljava/lang/String;

    move-result-object v1

    :goto_7
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_8

    add-int/lit8 v0, v0, 0x1

    const/4 v9, 0x2

    goto :goto_6

    :cond_8
    new-instance v0, Lbeq;

    const-string v6, "Container items have bad values: "

    invoke-virtual {v6, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x5

    invoke-direct {v0, v1, v6}, Lbeq;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_9
    new-instance v1, Llhe;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Llhe;-><init>([C)V

    :goto_8
    const/4 v0, 0x2

    if-ge v10, v0, :cond_a

    aget-object v9, v11, v10

    invoke-virtual {v1, v9}, Llhe;->h(Lkya;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_a
    sget-object v0, Lbet;->a:Lcvm;

    const-string v9, "http://ns.google.com/photos/1.0/camera/"

    const-string v10, "Camera"

    invoke-virtual {v0, v9, v10}, Lcvm;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.google.com/photos/1.0/camera/"

    const-string v9, "MotionPhoto"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v13, v0, v9, v11}, Lber;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "http://ns.google.com/photos/1.0/camera/"

    const-string v9, "MotionPhotoVersion"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v13, v0, v9, v11}, Lber;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "http://ns.google.com/photos/1.0/camera/"

    const-string v9, "MotionPhotoPresentationTimestampUs"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v13, v0, v9, v6}, Lber;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lbet;->a:Lcvm;

    const-string v6, "http://ns.google.com/photos/1.0/container/"

    const-string v7, "Container"

    invoke-virtual {v0, v6, v7}, Lcvm;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.google.com/photos/1.0/container/"

    const-string v6, "Directory"

    new-instance v7, Lbfs;

    invoke-direct {v7}, Lbfs;-><init>()V

    invoke-virtual {v7}, Lbfs;->q()V

    invoke-virtual {v7}, Lbfs;->t()V

    const/4 v9, 0x0

    invoke-interface {v13, v0, v6, v9, v7}, Lber;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lbfs;)V

    monitor-enter v1
    :try_end_4
    .catch Lbeq; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iget-object v0, v1, Llhe;->a:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v6, 0x1

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkya;

    const-string v9, "Directory"

    invoke-static {v9, v6}, Lbdm;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "http://ns.google.com/photos/1.0/container/"

    invoke-static {v13, v9}, Lkya;->b(Lber;Ljava/lang/String;)V

    const-string v11, "Item"

    invoke-static {v10, v11}, Lbdm;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lbet;->a:Lcvm;

    const-string v11, "http://ns.google.com/photos/1.0/container/item/"

    move-object/from16 p1, v0

    const-string v0, "Item"

    invoke-virtual {v10, v11, v0}, Lcvm;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v13, v9}, Lkya;->b(Lber;Ljava/lang/String;)V

    const-string v0, "Mime"

    iget-object v10, v7, Lkya;->a:Ljava/lang/String;

    invoke-static {v13, v9, v0, v10}, Lkya;->f(Lber;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Semantic"

    iget-object v10, v7, Lkya;->b:Ljava/lang/String;

    invoke-static {v13, v9, v0, v10}, Lkya;->f(Lber;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Length"

    iget v10, v7, Lkya;->c:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v13, v9, v0, v10}, Lkya;->f(Lber;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Padding"

    iget v7, v7, Lkya;->d:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v13, v9, v0, v7}, Lkya;->f(Lber;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p1

    goto :goto_9

    :cond_b
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-static {v14, v13, v12, v15, v5}, Lllj;->s(Landroidx/wear/ambient/AmbientMode$AmbientController;Lber;Lber;Lkwu;Ljava/io/OutputStream;)V
    :try_end_6
    .catch Lbeq; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_a
    :try_start_7
    iget-object v0, v3, Lffo;->c:Lgxn;

    invoke-virtual {v0}, Lgxn;->a()V

    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    iget-object v0, v4, Ldqx;->e:Ljava/lang/Object;

    iget-object v1, v4, Ldqx;->a:Ljava/lang/Object;

    check-cast v1, Lgxn;

    iget-object v1, v1, Lgxn;->a:Lkph;

    invoke-interface {v1}, Lkph;->a()J

    move-result-wide v5

    invoke-interface {v0, v5, v6}, Lhjc;->d(J)V

    sget-boolean v0, Lfgk;->a:Z

    iget-object v0, v2, Lffp;->k:Ldhi;

    sget-object v1, Ldhv;->a:Ldhk;

    invoke-interface {v0}, Ldhi;->f()V

    sget-boolean v0, Lfgk;->a:Z

    sget-boolean v0, Lfgk;->a:Z

    sget-boolean v0, Lfgk;->a:Z

    sget-boolean v0, Lfgk;->a:Z

    iget-object v0, v4, Ldqx;->a:Ljava/lang/Object;

    check-cast v0, Lgxn;

    invoke-virtual {v0}, Lgxn;->b()V

    iget-object v0, v2, Lffp;->o:Landroid/os/Handler;

    iget-object v1, v3, Lffo;->a:Lgxy;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    iget-object v0, v3, Lffo;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, v2, Lffp;->k:Ldhi;

    invoke-interface {v0}, Ldhi;->f()V

    sget-object v0, Lffp;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v1, 0x8a6

    invoke-interface {v0, v1}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    iget-object v1, v3, Lffo;->a:Lgxy;

    const-string v2, "Took too long to finish microvideo for %s!"

    invoke-interface {v0, v2, v1}, Lnah;->r(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_c
    iget-object v0, v4, Ldqx;->e:Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v3, v1, v2}, Lffp;->f(Lffo;J)Lnjo;

    move-result-object v1

    check-cast v0, Lhjd;

    iput-object v1, v0, Lhjd;->l:Lnjo;

    iget-object v0, v3, Lffo;->m:Lnph;

    invoke-virtual {v0}, Lnph;->isDone()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lmoz;->p(Z)V

    iget-object v0, v3, Lffo;->m:Lnph;

    iget-object v1, v4, Ldqx;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lnph;->e(Ljava/lang/Object;)Z

    iget-object v0, v3, Lffo;->c:Lgxn;

    invoke-virtual {v0}, Lgxn;->a()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    throw v0
    :try_end_b
    .catch Lbeq; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :goto_b
    :try_start_c
    new-instance v1, Ljava/io/IOException;

    const-string v6, "XMP serialization encountered an issue."

    invoke-direct {v1, v6, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Executed command more than once. This is unexpected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :catchall_1
    move-exception v0

    move-object v1, v0

    :try_start_d
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_c

    :catchall_2
    move-exception v0

    move-object v6, v0

    :try_start_e
    invoke-static {v1, v6}, Lflb;->e(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_c
    throw v1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :catch_1
    move-exception v0

    :try_start_f
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :catchall_3
    move-exception v0

    move-object v1, v0

    :try_start_10
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    goto :goto_d

    :catchall_4
    move-exception v0

    move-object v5, v0

    :try_start_11
    invoke-static {v1, v5}, Lflb;->e(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_d
    throw v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    :catchall_5
    move-exception v0

    invoke-virtual {v2, v3, v0, v4}, Lffp;->h(Lffo;Ljava/lang/Throwable;Ldqx;)V

    iget-object v0, v4, Ldqx;->a:Ljava/lang/Object;

    check-cast v0, Lgxn;

    invoke-virtual {v0}, Lgxn;->a()V

    iget-object v0, v3, Lffo;->c:Lgxn;

    invoke-virtual {v0}, Lgxn;->a()V

    return-void

    :cond_e
    invoke-virtual {v2, v3, v4, v5, v6}, Lffp;->j(Lffo;Ldqx;J)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
