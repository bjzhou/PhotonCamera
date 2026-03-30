.class public final Ljvg;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lstu;


# instance fields
.field final synthetic a:Ljvj;

.field final synthetic b:Ljvi;

.field final synthetic c:Ljvk;


# direct methods
.method public constructor <init>(Ljvk;Ljvj;Ljvi;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    iput-object p3, p0, Ljvg;->b:Ljvi;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Ljvg;->a:Ljvj;

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

    :goto_2
    return-void

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Ljvg;->c:Ljvk;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 2

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, v0, Ljvj;->o:Lqem;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, v1, p1, p0}, Ljvk;->e(Ljvj;Ljava/lang/Throwable;Ljvi;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_4
    invoke-interface {v0}, Lsui;->isCancelled()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Ljvg;->c:Ljvk;

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

    :goto_6
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Ljvg;->b:Ljvi;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Ljvg;->c:Ljvk;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Ljvg;->a:Ljvj;

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

    :goto_e
    iget-object p0, p0, Ljvg;->b:Ljvi;

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
    const v0, 0x9

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v1, p0, Ljvg;->a:Ljvj;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0, v1, p1, p0}, Ljvk;->d(Ljvj;Ljava/lang/Throwable;Ljvi;)V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_14
    iget-object v1, p0, Ljvg;->a:Ljvj;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v1, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_16
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-interface {v0}, Lqem;->b()Lsui;

    move-result-object v0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 17

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x19

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_1
    sget-object v4, Lhms;->a:Lhmo;

    nop

    nop

    :try_start_0
    iget-object v4, v6, Ljvi;->d:Llxc;

    nop

    iget-object v4, v4, Llxc;->b:Lpsf;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v4}, Lpsf;->e()Ljava/io/FileOutputStream;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    iget-object v5, v6, Ljvi;->b:Lrss;

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Lrss;->h()Z

    move-result v7

    nop

    if-eqz v7, :cond_0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Lrss;->c()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    check-cast v5, Lcom/google/android/libraries/camera/exif/ExifInterface;

    nop

    nop

    nop

    invoke-virtual {v5, v4}, Lcom/google/android/libraries/camera/exif/ExifInterface;->m(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v4

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :cond_0
    :try_start_1
    iget-object v5, v2, Ljvj;->h:Lsuu;

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Lsuu;->isDone()Z

    move-result v5

    nop

    nop

    invoke-static {v5}, Lrrf;->x(Z)V

    iget-object v5, v2, Ljvj;->t:Lsui;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v5}, Lsui;->isDone()Z

    move-result v5

    nop

    nop

    nop

    nop

    nop

    invoke-static {v5}, Lrrf;->x(Z)V

    iget-object v5, v2, Ljvj;->h:Lsuu;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v5}, Lsgj;->X(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    check-cast v5, Ljava/lang/Long;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    nop

    nop

    nop

    nop

    nop

    iget-object v5, v2, Ljvj;->t:Lsui;

    nop

    invoke-static {v5}, Lsgj;->X(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    check-cast v5, Ljava/lang/Long;

    nop

    nop

    nop

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    nop

    nop

    nop

    sub-long/2addr v7, v9

    nop

    const-wide/16 v9, 0x0

    nop

    nop

    nop

    nop

    nop

    cmp-long v5, v7, v9

    nop

    nop

    nop

    nop

    if-gez v5, :cond_1

    nop

    sget-object v5, Ljvk;->a:Lsdb;

    nop

    nop

    nop

    invoke-virtual {v5}, Lscs;->b()Lsdo;

    move-result-object v5

    nop

    nop

    nop

    nop

    const/16 v11, 0xa63

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v5, v11}, Lscz;->M(I)Lsdo;

    move-result-object v5

    nop

    nop

    nop

    nop

    check-cast v5, Lscz;

    nop

    const-string v11, "Negative shutter presentation timestamp detected (%d). Resetting to 0."

    nop

    nop

    nop

    nop

    invoke-interface {v5, v11, v7, v8}, Lscz;->u(Ljava/lang/String;J)V

    move-wide v7, v9

    nop

    nop

    nop

    nop

    nop

    :cond_1
    iget-object v5, v3, Ljvk;->v:Lhoh;

    nop

    nop

    sget-object v9, Lhna;->T:Lhmn;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5, v9}, Lhoh;->p(Lhmn;)Z

    move-result v5

    nop

    nop

    nop

    nop

    nop

    if-eqz v5, :cond_2

    nop

    nop

    nop

    iget-object v5, v3, Ljvk;->k:Ljvq;

    nop

    nop

    iget-object v9, v2, Ljvj;->c:Llxc;

    nop

    nop

    nop

    iget-object v9, v9, Llxc;->b:Lpsf;

    nop

    nop

    invoke-virtual {v5, v9}, Ljvq;->a(Lpsf;)V

    :cond_2
    iget-object v5, v2, Ljvj;->c:Llxc;

    nop

    nop

    nop

    nop

    nop

    iget-object v5, v5, Llxc;->b:Lpsf;

    nop

    invoke-interface {v5}, Lpsf;->a()J

    move-result-wide v9

    nop

    nop

    long-to-int v5, v9

    nop

    nop

    nop

    nop

    int-to-long v9, v5

    nop

    nop

    nop

    const-wide/32 v11, 0x186a0

    nop

    cmp-long v9, v9, v11

    nop

    if-gez v9, :cond_3

    nop

    nop

    nop

    sget-object v9, Ljvk;->a:Lsdb;

    nop

    nop

    nop

    invoke-virtual {v9}, Lscs;->c()Lsdo;

    move-result-object v9

    nop

    nop

    nop

    nop

    const/16 v10, 0xa62

    nop

    invoke-interface {v9, v10}, Lscz;->M(I)Lsdo;

    move-result-object v9

    nop

    nop

    check-cast v9, Lscz;

    nop

    nop

    const-string v10, "Bundled video file too small (%d bytes)"

    nop

    nop

    invoke-interface {v9, v10, v5}, Lscz;->t(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :try_start_2
    iget-object v9, v2, Ljvj;->c:Llxc;

    nop

    nop

    iget-object v9, v9, Llxc;->b:Lpsf;

    nop

    invoke-interface {v9}, Lpsf;->d()Ljava/io/FileInputStream;

    move-result-object v9

    nop

    nop

    nop

    nop
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-boolean v10, v2, Ljvj;->p:Z

    nop

    nop

    nop

    invoke-virtual {v3, v10}, Ljvk;->g(Z)Z

    move-result v10

    nop

    if-eqz v10, :cond_4

    nop

    nop

    nop

    iget-object v11, v6, Ljvi;->d:Llxc;

    nop

    nop

    nop

    iget-object v11, v11, Llxc;->b:Lpsf;

    nop

    const-string v12, "MP"

    nop

    nop

    nop

    invoke-interface {v11, v12}, Lpsf;->h(Ljava/lang/String;)V

    goto :goto_2

    nop

    nop

    :cond_4
    iget-object v11, v6, Ljvi;->d:Llxc;

    nop

    nop

    iget-object v11, v11, Llxc;->b:Lpsf;

    nop

    nop

    nop

    const-string v12, "MV"

    nop

    invoke-interface {v11, v12}, Lpsf;->h(Ljava/lang/String;)V

    :goto_2
    const/4 v12, 0x1

    nop

    if-eq v12, v10, :cond_5

    nop

    move v10, v12

    nop

    nop

    nop

    nop

    goto :goto_3

    nop

    nop

    nop

    nop

    :cond_5
    const/4 v10, 0x2

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v13, v6, Ljvi;->b:Lrss;

    nop

    invoke-virtual {v13}, Lrss;->h()Z

    move-result v14

    nop

    nop

    nop

    const/4 v15, 0x0

    nop

    nop

    nop

    nop

    nop

    if-eqz v14, :cond_6

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v13}, Lrss;->c()Ljava/lang/Object;

    move-result-object v13

    nop

    nop

    check-cast v13, Lcom/google/android/libraries/camera/exif/ExifInterface;

    nop

    nop

    iget-object v13, v13, Lcom/google/android/libraries/camera/exif/ExifInterface;->bA:Ljava/lang/String;

    nop

    nop

    invoke-static {v13}, Lpuf;->c(Ljava/lang/String;)Lrss;

    move-result-object v13

    nop

    nop

    nop

    nop

    invoke-virtual {v13}, Lrss;->f()Ljava/lang/Object;

    move-result-object v13

    nop

    nop

    check-cast v13, Lexq;

    nop

    goto :goto_4

    nop

    nop

    nop

    :cond_6
    move-object v13, v15

    nop

    nop

    :goto_4
    iget-object v14, v6, Ljvi;->c:[B

    nop

    invoke-static {v14, v13}, Lpuf;->d([BLexq;)Lrsu;

    move-result-object v13

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_7

    nop

    nop

    nop

    nop

    iget-object v14, v13, Lrsu;->a:Ljava/lang/Object;

    nop

    nop

    nop

    check-cast v14, Lexq;

    nop

    nop

    nop

    nop

    nop

    sget-object v16, Lidb;->s:Lidb;

    nop

    nop

    invoke-virtual/range {v16 .. v16}, Lidb;->f()Ljava/lang/String;

    move-result-object v11

    nop

    invoke-static {v14, v11}, Lpuf;->m(Lexq;Ljava/lang/String;)V

    :cond_7
    iget-object v11, v13, Lrsu;->a:Ljava/lang/Object;

    nop

    nop

    nop

    check-cast v11, Lexq;

    nop

    nop

    nop

    nop

    iget-object v13, v13, Lrsu;->b:Ljava/lang/Object;

    nop

    nop

    nop

    check-cast v13, Lexq;

    nop

    nop

    iget-object v14, v6, Ljvi;->c:[B

    nop

    nop

    nop

    nop

    nop

    new-instance v12, Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    nop

    nop

    invoke-direct {v12, v14, v15}, Landroidx/wear/ambient/AmbientMode$AmbientController;-><init>(Ljava/lang/Object;[B)V

    new-instance v14, Lqdl;

    nop

    nop

    invoke-direct {v14, v5, v9}, Lqdl;-><init>(ILjava/io/InputStream;)V

    new-instance v5, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    nop

    const/4 v15, 0x0

    nop

    nop

    nop

    invoke-direct {v5, v15}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    const/4 v15, 0x1

    nop

    invoke-virtual {v5, v15}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v5

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_a

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, v2, Ljvj;->c:Llxc;

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, v6, Ljvi;->e:Lmjn;

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {v0}, Lrrf;->x(Z)V

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_9
    goto/16 :goto_24

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_a
    invoke-virtual {v0}, Llxc;->a()V

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_c
    iget-object v0, v2, Ljvj;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_d
    move-object/from16 v1, v16

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_e
    goto/16 :goto_47

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_f
    move-object/from16 v1, v16

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    xor-int/2addr v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_11
    invoke-interface {v0, v2, v1}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    :goto_13
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_14
    const v0, 0x9

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

    :goto_15
    iget-object v1, v6, Ljvi;->a:Lmla;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v3}, Ljxe;->a()Ljxe;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    return-void

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_19
    move-object/from16 v1, v16

    nop

    nop

    nop

    :try_start_4
    iget-object v0, v1, Ljvk;->u:Lidi;

    nop

    nop

    nop

    nop

    iget-object v3, v6, Ljvi;->d:Llxc;

    nop

    nop

    nop

    iget-object v3, v3, Llxc;->b:Lpsf;

    nop

    nop

    nop

    nop

    sget-object v4, Lidb;->s:Lidb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v3, v4}, Lidi;->c(Lpsf;Lidb;)V

    goto :goto_1b

    nop

    nop

    nop

    :goto_1a
    move-object/from16 v1, v16

    nop

    nop

    :goto_1b
    iget-object v0, v1, Ljvk;->l:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    nop

    iget-object v3, v2, Ljvj;->a:Llxm;

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    move-object/from16 v1, v16

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v1, v2, v6, v4, v5}, Ljvk;->h(Ljvj;Ljvi;J)V

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_20
    move-object v4, v0

    nop

    nop

    nop

    nop

    :try_start_5
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_21
    throw v3

    nop

    nop

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v3, v2, Ljvj;->d:Ljxe;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_23
    move-object v1, v3

    nop

    nop

    :goto_24
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-boolean v0, v2, Ljvj;->q:Z

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

    :goto_26
    goto :goto_21

    nop

    :catchall_2
    move-exception v0

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_27
    if-eqz v0, :cond_8

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_28
    move-object v1, v3

    nop

    :goto_29
    :try_start_6
    new-instance v3, Ljava/io/IOException;

    nop

    nop

    nop

    const-string v5, "XMP serialization encountered an issue."

    nop

    nop

    nop

    nop

    invoke-direct {v3, v5, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    nop

    nop

    nop

    :goto_2a
    move-object v1, v3

    nop

    nop

    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    const-string v3, "Executed command more than once. This is unexpected"

    nop

    nop

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/16 :goto_47

    nop

    :catch_1
    move-exception v0

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_2c
    move-object/from16 v0, p0

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_2d
    check-cast v0, Lscz;

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_2e
    invoke-static {v2, v3, v4}, Ljvk;->i(Ljvj;J)Lsnu;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_30
    goto/16 :goto_5f

    nop

    nop

    nop

    :catchall_4
    move-exception v0

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_31
    iget-object v0, v2, Ljvj;->i:Lkjg;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_32
    goto/16 :goto_42

    nop

    nop

    nop

    nop

    :catch_2
    move-exception v0

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v0}, Lsuu;->isDone()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_34
    iget-object v1, v2, Ljvj;->a:Llxm;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v1, v2, v0, v6}, Ljvk;->d(Ljvj;Ljava/lang/Throwable;Ljvi;)V

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_36
    iget-object v0, v6, Ljvi;->d:Llxc;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_67

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_2c

    nop

    nop

    :goto_39
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    sget-object v2, Lcom/google/android/apps/camera/filmstrip/transition/KkW/xCXUu;->yYgWwamyxAnzw:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_3b
    if-ne v10, v15, :cond_9

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :cond_9
    :try_start_7
    new-instance v1, Lqyh;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1}, Lqyh;-><init>()V

    const-string v5, "MotionPhoto"

    nop

    nop

    nop

    nop

    iput-object v5, v1, Lqyh;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    const-string v5, "video/mp4"

    nop

    nop

    iput-object v5, v1, Lqyh;->a:Ljava/lang/String;

    nop

    const/4 v5, 0x0

    nop

    invoke-virtual {v1, v5}, Lqyh;->c(I)V

    iget v5, v14, Lqdl;->a:I

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v5}, Lqyh;->b(I)V

    invoke-virtual {v1}, Lqyh;->a()Lqyi;

    move-result-object v1

    nop

    nop

    if-eqz v13, :cond_b

    nop

    invoke-static {v13}, Lpuq;->ab(Lexq;)Z

    move-result v5

    nop

    nop

    if-nez v5, :cond_a

    nop

    goto :goto_3c

    nop

    nop

    nop

    nop

    nop

    :cond_a
    const/4 v5, 0x1

    nop

    nop

    nop

    new-array v10, v5, [Lqyi;

    nop

    const/4 v5, 0x0

    nop

    nop

    nop

    aput-object v1, v10, v5

    nop

    nop

    nop

    nop

    invoke-static {v13, v7, v8, v10}, Lpuq;->ac(Lexq;J[Lqyi;)V

    goto :goto_3d

    nop

    nop

    nop

    nop

    :cond_b
    :goto_3c
    invoke-static {v11}, Lpuq;->ab(Lexq;)Z

    move-result v5

    nop

    if-nez v5, :cond_c

    nop

    nop

    nop

    new-instance v5, Lqyh;

    nop

    nop

    invoke-direct {v5}, Lqyh;-><init>()V

    const-string v10, "Primary"

    nop

    nop

    iput-object v10, v5, Lqyh;->b:Ljava/lang/String;

    nop

    nop

    nop

    const/4 v10, 0x0

    nop

    nop

    invoke-virtual {v5, v10}, Lqyh;->c(I)V

    invoke-virtual {v5, v10}, Lqyh;->b(I)V

    const-string v15, "image/jpeg"

    nop

    nop

    iput-object v15, v5, Lqyh;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Lqyh;->a()Lqyi;

    move-result-object v5

    nop

    nop

    nop

    nop

    const/4 v15, 0x2

    nop

    nop

    nop

    nop

    nop

    new-array v15, v15, [Lqyi;

    nop

    aput-object v5, v15, v10

    nop

    nop

    nop

    nop

    nop

    const/4 v5, 0x1

    nop

    nop

    nop

    nop

    nop

    aput-object v1, v15, v5

    nop

    nop

    nop

    nop

    invoke-static {v11, v7, v8, v15}, Lpuq;->ac(Lexq;J[Lqyi;)V

    goto :goto_3d

    nop

    :cond_c
    const/4 v5, 0x1

    nop

    nop

    new-array v10, v5, [Lqyi;

    nop

    const/4 v5, 0x0

    nop

    nop

    aput-object v1, v10, v5

    nop

    nop

    nop

    nop

    nop

    invoke-static {v11, v7, v8, v10}, Lpuq;->ac(Lexq;J[Lqyi;)V

    :goto_3d
    invoke-static {v12, v11, v13, v14, v4}, Lpuq;->bO(Landroidx/wear/ambient/AmbientMode$AmbientController;Lexq;Lexq;Lqdl;Ljava/io/OutputStream;)V

    move-object/from16 v16, v3

    nop

    nop

    nop

    goto/16 :goto_65

    nop

    nop

    nop

    nop

    :goto_3e
    iget v5, v14, Lqdl;->a:I

    nop

    nop

    nop

    nop

    sget-object v10, Lexs;->a:Lts;

    nop

    nop

    nop

    nop

    const-string v15, "GCamera"

    nop

    nop

    invoke-virtual {v10, v1, v15}, Lts;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v10, "MicroVideo"

    nop
    :try_end_7
    .catch Lexp; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_a

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_3f
    move-object v3, v0

    nop

    :try_start_8
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_9

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    iget-object v0, v2, Ljvj;->n:Lsuu;

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_41
    move-object v1, v3

    nop

    nop

    nop

    nop

    :goto_42
    :try_start_9
    new-instance v3, Ljava/lang/RuntimeException;

    nop

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    nop

    nop
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    :catchall_5
    move-exception v0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_43
    move-object/from16 v1, v16

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    if-lez v0, :cond_d

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_37

    nop

    :goto_45
    goto/16 :goto_29

    nop

    nop

    :catch_3
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_46
    move-object v1, v3

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_49
    if-eqz v5, :cond_e

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_4a
    goto :goto_42

    nop

    nop

    nop

    :catchall_6
    move-exception v0

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {v0}, Llxc;->a()V

    goto/32 :goto_17

    nop

    nop

    :goto_4c
    goto/16 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :catchall_7
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_4e
    if-nez v0, :cond_f

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_52

    nop

    nop

    :goto_4f
    iget-object v0, v2, Ljvj;->n:Lsuu;

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

    :goto_50
    const/16 v1, 0xa80

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_51
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_52
    sget-object v0, Ljvk;->a:Lsdb;

    nop

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

    :goto_53
    if-nez v0, :cond_10

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    :cond_10
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    const-string v1, "http://ns.google.com/photos/1.0/camera/"

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_55
    iget-boolean v0, v2, Ljvj;->p:Z

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_56
    return-void

    nop

    nop

    nop

    nop

    :catchall_8
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_57
    iget-object v6, v0, Ljvg;->b:Ljvi;

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_58
    move-object/from16 v1, v16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_59
    iget-wide v4, v3, Ljxe;->d:J

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_5a
    goto :goto_5d

    nop

    nop

    nop

    nop

    :catchall_9
    move-exception v0

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    iget-object v2, v0, Ljvg;->a:Ljvj;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    move-object v5, v0

    nop

    nop

    nop

    nop

    :try_start_a
    invoke-virtual {v3, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5d
    throw v3

    nop

    nop

    nop

    nop

    nop
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :catch_4
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_5e
    move-object v1, v3

    nop

    :goto_5f
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_60
    iget-object v0, v2, Ljvj;->c:Llxc;

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_61
    move-object/from16 v16, v3

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_62
    invoke-virtual {v0}, Llxc;->a()V

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    iget-object v3, v0, Ljvg;->c:Ljvk;

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_64
    const/4 v15, 0x1

    nop

    :try_start_b
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    nop

    nop

    invoke-interface {v11, v1, v10, v3}, Lexq;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v10, "MicroVideoVersion"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v11, v1, v10, v3}, Lexq;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "MicroVideoOffset"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    nop

    nop

    nop

    nop

    invoke-interface {v11, v1, v3, v5}, Lexq;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "MicroVideoPresentationTimestampUs"

    nop

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    nop

    invoke-interface {v11, v1, v3, v5}, Lexq;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v12, v11, v13, v14, v4}, Lpuq;->bO(Landroidx/wear/ambient/AmbientMode$AmbientController;Lexq;Lexq;Lqdl;Ljava/io/OutputStream;)V
    :try_end_b
    .catch Lexp; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    :goto_65
    :try_start_c
    iget-object v1, v2, Ljvj;->c:Llxc;

    nop

    invoke-virtual {v1}, Llxc;->a()V

    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    :try_start_d
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    :try_start_e
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    iget-object v1, v6, Ljvi;->e:Lmjn;

    nop

    nop

    nop

    nop

    iget-object v3, v6, Ljvi;->d:Llxc;

    nop

    nop

    nop

    iget-object v3, v3, Llxc;->b:Lpsf;

    nop

    nop

    invoke-interface {v3}, Lpsf;->a()J

    move-result-wide v3

    nop

    nop

    invoke-virtual {v1, v3, v4}, Lmjn;->e(J)V

    sget-boolean v1, Ljwc;->a:Z

    nop

    nop

    nop

    sget-object v1, Lhmz;->a:Lhmo;

    nop

    nop

    sget-boolean v1, Ljwc;->a:Z

    nop

    nop

    nop

    nop

    sget-boolean v1, Ljwc;->a:Z

    nop

    nop

    nop

    nop

    sget-boolean v1, Ljwc;->a:Z

    nop

    nop

    sget-boolean v1, Ljwc;->a:Z

    nop

    nop

    iget-object v1, v6, Ljvi;->d:Llxc;

    nop

    nop

    nop

    invoke-virtual {v1}, Llxc;->b()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_66
    return-void

    nop

    nop

    :goto_67
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    move-object v3, v0

    nop

    nop

    nop

    nop

    nop

    :try_start_f
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_69
    sub-long/2addr v4, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    goto/16 :goto_24

    nop

    nop

    nop

    nop

    :catchall_a
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_6b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_6c
    iget-wide v6, v3, Ljxe;->c:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_6d
    invoke-virtual {v0, v1}, Lsuu;->e(Ljava/lang/Object;)Z

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_6e
    iput-object v1, v0, Lmjn;->k:Lsnu;

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    move-object v1, v3

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

    nop
.end method
