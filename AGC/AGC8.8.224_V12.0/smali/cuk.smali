.class public final synthetic Lcuk;
.super Ljava/lang/Object;

# interfaces
.implements Lnnn;


# instance fields
.field public final synthetic a:Lcul;

.field public final synthetic b:Lcsc;

.field public final synthetic c:Lcrz;

.field public final synthetic d:Lfvx;


# direct methods
.method public synthetic constructor <init>(Lcul;Lfvx;Lcsc;Lcrz;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcuk;->a:Lcul;

    iput-object p2, p0, Lcuk;->d:Lfvx;

    iput-object p3, p0, Lcuk;->b:Lcsc;

    iput-object p4, p0, Lcuk;->c:Lcrz;

    return-void
.end method


# virtual methods
.method public final a()Lnou;
    .locals 17

    move-object/from16 v1, p0

    iget-object v0, v1, Lcuk;->a:Lcul;

    iget-object v2, v1, Lcuk;->d:Lfvx;

    iget-object v3, v1, Lcuk;->b:Lcsc;

    iget-object v4, v1, Lcuk;->c:Lcrz;

    iget-object v5, v0, Lcul;->k:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v6, v0, Lcul;->a:Lkbc;

    const-string v7, "VideoRecorderFactory#CreateVideoRecorder"

    invoke-interface {v6, v7}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v6, v0, Lcul;->k:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    iget-boolean v7, v3, Lcsc;->A:Z

    const/4 v11, 0x1

    if-eqz v7, :cond_9

    iget-object v7, v0, Lcul;->c:Lmqp;

    iget-object v12, v0, Lcul;->j:Ldhi;

    sget-object v13, Ldgu;->a:Ldhk;

    invoke-interface {v12}, Ldhi;->c()V

    iget-object v12, v0, Lcul;->p:Liac;

    iget-object v13, v3, Lcsc;->h:Lmqp;

    invoke-virtual {v13}, Lmqp;->g()Z

    move-result v13

    if-nez v13, :cond_0

    sget-object v12, Lmpx;->a:Lmpx;

    goto :goto_0

    :cond_0
    iget-boolean v13, v12, Liac;->b:Z

    if-eqz v13, :cond_1

    iget-boolean v13, v3, Lcsc;->C:Z

    if-eqz v13, :cond_1

    iget-object v13, v12, Liac;->a:Ljava/lang/Object;

    check-cast v13, Ljwh;

    invoke-virtual {v13}, Ljwh;->bm()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lgyt;

    sget-object v14, Lgyt;->b:Lgyt;

    invoke-virtual {v13, v14}, Lgyt;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    iget-object v13, v12, Liac;->c:Ljava/lang/Object;

    check-cast v13, Lmqp;

    invoke-virtual {v13}, Lmqp;->g()Z

    move-result v13

    if-eqz v13, :cond_1

    iget-object v13, v12, Liac;->d:Ljava/lang/Object;

    move-object v14, v13

    check-cast v14, Lmqp;

    invoke-virtual {v14}, Lmqp;->g()Z

    move-result v14

    if-eqz v14, :cond_1

    check-cast v13, Lmqp;

    invoke-virtual {v13}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljji;

    iget-object v12, v12, Liac;->c:Ljava/lang/Object;

    check-cast v12, Lmqp;

    invoke-virtual {v12}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lhib;

    iget-object v13, v3, Lcsc;->h:Lmqp;

    invoke-virtual {v13}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljwx;

    iget v13, v13, Ljwx;->c:I

    iget-object v14, v3, Lcsc;->h:Lmqp;

    invoke-virtual {v14}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljwx;

    iget v14, v14, Ljwx;->e:I

    sget-object v15, Ljwq;->b:Ljwq;

    iget v15, v15, Ljwq;->f:I

    mul-int/lit8 v15, v15, 0x8

    new-instance v10, Lhhk;

    new-instance v9, Lcrl;

    mul-int v16, v13, v14

    mul-int v15, v15, v16

    const v8, 0x7fffffff

    invoke-direct {v9, v15, v8}, Lcrl;-><init>(II)V

    invoke-direct {v10, v12, v13, v14, v9}, Lhhk;-><init>(Lhib;IILcrl;)V

    invoke-static {v10}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v12

    goto :goto_0

    :cond_1
    sget-object v12, Lmpx;->a:Lmpx;

    :goto_0
    invoke-virtual {v7}, Lmqp;->g()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v12}, Lmqp;->g()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v7}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcvr;

    invoke-virtual {v12}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lhhk;

    new-instance v9, Lcri;

    iget-object v7, v7, Lcvr;->a:Ljava/lang/Object;

    check-cast v7, Lcrb;

    invoke-direct {v9, v8, v7}, Lcri;-><init>(Lhhk;Lcrb;)V

    invoke-static {v9}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v7

    goto :goto_1

    :cond_2
    sget-object v7, Lmpx;->a:Lmpx;

    :goto_1
    new-instance v8, Ljyz;

    iget-object v9, v0, Lcul;->d:Lnow;

    iget-object v10, v0, Lcul;->g:Lctv;

    invoke-virtual {v10}, Lctv;->a()Landroid/os/Handler;

    move-result-object v10

    iget-object v12, v0, Lcul;->a:Lkbc;

    invoke-direct {v8, v9, v10, v12}, Ljyz;-><init>(Lnow;Landroid/os/Handler;Lkbc;)V

    iget-object v9, v0, Lcul;->i:Ljxv;

    iput-object v9, v8, Ljyz;->n:Ljxv;

    iget-object v9, v0, Lcul;->j:Ldhi;

    sget-object v10, Ldgu;->ag:Ldhj;

    invoke-interface {v9, v10}, Ldhi;->l(Ldhj;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v7}, Lmqp;->g()Z

    move-result v9

    if-nez v9, :cond_3

    iget-object v9, v4, Lcrz;->t:Lgyd;

    invoke-virtual {v9}, Lgyd;->b()Lgys;

    move-result-object v9

    sget-object v10, Lgys;->c:Lgys;

    invoke-virtual {v9, v10}, Lgys;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v9, 0x1

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    :goto_2
    iput-boolean v9, v8, Ljyz;->s:Z

    iget-boolean v9, v3, Lcsc;->B:Z

    if-eqz v9, :cond_4

    iget-object v9, v0, Lcul;->u:Ldne;

    iget-object v10, v8, Ljyz;->o:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {v7}, Lmqp;->g()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v7}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkmx;

    iput-object v7, v8, Ljyz;->x:Lkmx;

    :cond_5
    iget-object v7, v0, Lcul;->j:Ldhi;

    sget-object v9, Ldgu;->R:Ldhj;

    invoke-interface {v7, v9}, Ldhi;->l(Ldhj;)Z

    move-result v7

    if-eqz v7, :cond_6

    iput-boolean v11, v8, Ljyz;->p:Z

    :cond_6
    iget-boolean v7, v3, Lcsc;->E:Z

    if-eqz v7, :cond_7

    const/4 v7, 0x6

    iput v7, v8, Ljyz;->f:I

    iput v11, v8, Ljyz;->g:I

    const/4 v9, 0x7

    iput v9, v8, Ljyz;->h:I

    goto :goto_4

    :cond_7
    const/4 v7, 0x6

    iget-object v9, v0, Lcul;->j:Ldhi;

    sget-object v10, Ldgu;->af:Ldhj;

    invoke-interface {v9, v10}, Ldhi;->l(Ldhj;)Z

    move-result v9

    if-eq v11, v9, :cond_8

    const/4 v9, 0x2

    goto :goto_3

    :cond_8
    const/4 v9, 0x1

    :goto_3
    iput v9, v8, Ljyz;->f:I

    iput v11, v8, Ljyz;->g:I

    const/4 v9, 0x3

    iput v9, v8, Ljyz;->h:I

    goto :goto_4

    :cond_9
    const/4 v7, 0x6

    iget-object v8, v0, Lcul;->l:Lmqp;

    invoke-virtual {v8}, Lmqp;->g()Z

    move-result v8

    if-nez v8, :cond_a

    iget-object v8, v0, Lcul;->f:Loiw;

    check-cast v8, Lcvc;

    invoke-virtual {v8}, Lcvc;->a()Ljzd;

    move-result-object v8

    invoke-static {v8}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v8

    iput-object v8, v0, Lcul;->l:Lmqp;

    :cond_a
    new-instance v8, Ljzh;

    iget-object v9, v0, Lcul;->l:Lmqp;

    invoke-virtual {v9}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljzd;

    iget-object v10, v0, Lcul;->d:Lnow;

    iget-object v12, v2, Lfvx;->d:Ljava/lang/Object;

    invoke-direct {v8, v9, v10, v12}, Ljzh;-><init>(Ljzd;Lnow;Ljzc;)V

    :goto_4
    iget-object v9, v3, Lcsc;->g:Ljxa;

    iget-object v10, v0, Lcul;->m:Ljye;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v8, v10}, Ljyd;->b(Ljye;)Ljyd;

    move-result-object v10

    invoke-interface {v10, v9}, Ljyd;->r(Ljxa;)V

    iget-object v12, v3, Lcsc;->h:Lmqp;

    invoke-virtual {v12}, Lmqp;->f()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljwx;

    invoke-interface {v10, v12}, Ljyd;->c(Ljwx;)V

    iget-object v12, v3, Lcsc;->k:Lmqp;

    const-wide v13, 0x7fffffffffffffffL

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Lmqp;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-interface {v10, v12, v13}, Ljyd;->k(J)V

    iget-object v12, v0, Lcul;->j:Ldhi;

    sget-object v13, Ldgu;->K:Ldhj;

    invoke-interface {v12, v13}, Ldhi;->l(Ldhj;)Z

    move-result v12

    if-eqz v12, :cond_b

    iget-object v12, v3, Lcsc;->d:Ljwu;

    invoke-virtual {v12}, Ljwu;->d()Z

    move-result v12

    if-eqz v12, :cond_b

    iget-object v12, v3, Lcsc;->c:Ljws;

    sget-object v13, Ljws;->d:Ljws;

    invoke-virtual {v12, v13}, Ljws;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    const/4 v7, 0x2

    goto :goto_5

    :cond_b
    iget-object v12, v0, Lcul;->m:Ljye;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v12, Lcuu;

    iget-object v12, v12, Lcuu;->a:Lgyd;

    iget-object v12, v12, Lgyd;->a:Ljwb;

    invoke-interface {v12}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lgys;

    sget-object v13, Lgys;->c:Lgys;

    invoke-virtual {v12, v13}, Lgys;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eq v11, v12, :cond_c

    goto :goto_5

    :cond_c
    const/4 v7, 0x2

    :goto_5
    invoke-interface {v10, v7}, Ljyd;->d(I)V

    iget-object v7, v2, Lfvx;->j:Ljava/lang/Object;

    iget-object v10, v3, Lcsc;->d:Ljwu;

    move-object v12, v7

    check-cast v12, Lcyy;

    iget-object v12, v12, Lcyy;->b:Ljava/lang/Object;

    monitor-enter v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    move-object v13, v7

    check-cast v13, Lcyy;

    invoke-virtual {v13, v10}, Lcyy;->a(Ljwu;)Lmqp;

    move-result-object v10

    invoke-virtual {v10}, Lmqp;->g()Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-virtual {v10}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/Surface;

    monitor-exit v12

    goto :goto_7

    :cond_d
    move-object v10, v7

    check-cast v10, Lcyy;

    iget-object v10, v10, Lcyy;->c:Landroid/view/Surface;

    if-nez v10, :cond_e

    goto :goto_6

    :cond_e
    const/4 v11, 0x0

    :goto_6
    invoke-static {v11}, Lmoz;->p(Z)V

    move-object v10, v7

    check-cast v10, Lcyy;

    iget-object v10, v10, Lcyy;->d:Landroid/view/Surface;

    if-eqz v10, :cond_f

    sget-object v10, Lcyy;->a:Lnak;

    invoke-virtual {v10}, Lnaf;->c()Lnaz;

    move-result-object v10

    check-cast v10, Lnah;

    const/16 v11, 0x30d

    invoke-interface {v10, v11}, Lnah;->G(I)Lnaz;

    move-result-object v10

    check-cast v10, Lnah;

    const-string v11, "Pending surface exists, release it first before creating new one."

    invoke-interface {v10, v11}, Lnah;->o(Ljava/lang/String;)V

    move-object v10, v7

    check-cast v10, Lcyy;

    iget-object v10, v10, Lcyy;->d:Landroid/view/Surface;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10}, Landroid/view/Surface;->release()V

    :cond_f
    move-object v10, v7

    check-cast v10, Lcyy;

    iget-object v10, v10, Lcyy;->e:Ljyx;

    invoke-static {}, Landroid/media/MediaCodec;->createPersistentInputSurface()Landroid/view/Surface;

    move-result-object v10

    move-object v11, v7

    check-cast v11, Lcyy;

    iput-object v10, v11, Lcyy;->d:Landroid/view/Surface;

    check-cast v7, Lcyy;

    iget-object v7, v7, Lcyy;->d:Landroid/view/Surface;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_7
    :try_start_3
    invoke-interface {v8, v7}, Ljyd;->g(Landroid/view/Surface;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/4 v7, 0x0

    :try_start_4
    iget-object v10, v3, Lcsc;->i:Lmqp;

    invoke-virtual {v10}, Lmqp;->g()Z

    move-result v11

    if-eqz v11, :cond_10

    iget-object v11, v2, Lfvx;->k:Ljava/lang/Object;

    invoke-virtual {v10}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/Uri;

    const-string v12, "rw"

    check-cast v11, Landroid/content/Context;

    invoke-static {v11, v10, v12}, Llqs;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v10

    iget-object v11, v0, Lcul;->t:Lcvm;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11, v10}, Lcvm;->h(Landroid/os/ParcelFileDescriptor;)Lctd;

    move-result-object v10

    iput-object v10, v0, Lcul;->o:Lctd;

    goto :goto_8

    :cond_10
    iget-object v10, v0, Lcul;->t:Lcvm;

    iget-object v11, v3, Lcsc;->g:Ljxa;

    iget-object v11, v11, Ljxa;->a:Ljwt;

    iget-object v11, v11, Ljwt;->f:Lkqi;

    invoke-virtual {v10, v11}, Lcvm;->i(Lkqi;)Lctd;

    move-result-object v10

    iput-object v10, v0, Lcul;->o:Lctd;

    :goto_8
    iget-object v10, v0, Lcul;->o:Lctd;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v10}, Lctd;->e()Lnou;

    move-result-object v10

    invoke-interface {v8, v10}, Ljyd;->p(Lnou;)V

    invoke-static {}, Lcsu;->a()Lllz;

    move-result-object v10

    iget-object v11, v0, Lcul;->o:Lctd;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10, v11}, Lllz;->h(Lctd;)V

    iget-object v11, v0, Lcul;->q:Ldja;

    invoke-virtual {v11}, Ldja;->k()I

    move-result v11

    invoke-virtual {v10, v11}, Lllz;->i(I)V

    invoke-virtual {v10}, Lllz;->g()Lcsu;

    move-result-object v10
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    iget-object v11, v3, Lcsc;->j:Lmqp;

    invoke-virtual {v11}, Lmqp;->g()Z

    move-result v12

    if-eqz v12, :cond_11

    invoke-virtual {v11}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-eqz v11, :cond_11

    iget-object v9, v3, Lcsc;->j:Lmqp;

    invoke-virtual {v9}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto :goto_9

    :cond_11
    iget-object v11, v0, Lcul;->r:Ldja;

    iget-object v12, v9, Ljxa;->c:Ljws;

    iget-object v9, v9, Ljxa;->b:Ljwu;

    invoke-virtual {v12}, Ljws;->f()Z

    move-result v13

    if-eqz v13, :cond_13

    sget-object v13, Ljwu;->k:Ljwu;

    if-ne v9, v13, :cond_12

    iget-object v9, v11, Ldja;->a:Ljava/lang/Object;

    sget-object v11, Ldgu;->d:Ldhk;

    invoke-interface {v9, v11}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object v9

    invoke-virtual {v9}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto :goto_9

    :cond_12
    sget-object v13, Ljwu;->i:Ljwu;

    if-ne v9, v13, :cond_13

    iget-object v9, v11, Ldja;->a:Ljava/lang/Object;

    sget-object v11, Ldgu;->c:Ldhk;

    invoke-interface {v9, v11}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object v9

    invoke-virtual {v9}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto :goto_9

    :cond_13
    invoke-virtual {v12}, Ljws;->e()Z

    move-result v9

    if-eqz v9, :cond_14

    iget-object v9, v11, Ldja;->a:Ljava/lang/Object;

    sget-object v11, Ldgu;->e:Ldhk;

    invoke-interface {v9, v11}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object v9

    invoke-virtual {v9}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto :goto_9

    :cond_14
    const/4 v9, 0x0

    :goto_9
    mul-int/lit16 v9, v9, 0x3e8

    invoke-interface {v8, v9}, Ljyd;->j(I)V

    iget-object v9, v4, Lcrz;->n:Ljvs;

    check-cast v9, Ljvk;

    iget-object v9, v9, Ljvk;->d:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v8, v9}, Ljyd;->o(I)V

    iget-boolean v3, v3, Lcsc;->l:Z

    if-eqz v3, :cond_15

    iget-object v3, v0, Lcul;->h:Lfbk;

    invoke-interface {v3}, Lfbk;->b()Lcjf;

    move-result-object v3

    iget-object v9, v0, Lcul;->e:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v11, v3, Lcjf;->b:Lnou;

    invoke-static {v11}, Lnsy;->C(Lnou;)Lnou;

    move-result-object v11

    sget-object v12, Lcfv;->d:Lcfv;

    sget-object v13, Lnnv;->a:Lnnv;

    invoke-static {v11, v12, v13}, Lnnf;->i(Lnou;Lmqi;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v11

    iget-wide v12, v3, Lcjf;->c:J

    sget-object v14, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v11, v12, v13, v14, v9}, Lnsy;->I(Lnou;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lnou;

    move-result-object v9

    const-class v11, Ljava/lang/Exception;

    new-instance v12, Lcdu;

    const/4 v13, 0x2

    invoke-direct {v12, v3, v13}, Lcdu;-><init>(Lcjf;I)V

    sget-object v3, Lnnv;->a:Lnnv;

    invoke-static {v9, v11, v12, v3}, Lnml;->i(Lnou;Ljava/lang/Class;Lmqi;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v3

    invoke-interface {v8, v3}, Ljyd;->i(Lnou;)V

    :cond_15
    iget-object v3, v0, Lcul;->r:Ldja;

    iget-object v3, v3, Ldja;->a:Ljava/lang/Object;

    sget-object v9, Ldgu;->Q:Ldhj;

    invoke-interface {v3, v9}, Ldhi;->i(Ldhj;)Lj$/util/Optional;

    move-result-object v3

    const-wide v11, 0xee6b2800L

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v3, v9}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-interface {v8, v11, v12}, Ljyd;->l(J)V

    iget-object v3, v0, Lcul;->r:Ldja;

    iget-object v3, v3, Ldja;->a:Ljava/lang/Object;

    sget-object v9, Ldgu;->F:Ldhj;

    invoke-interface {v3, v9}, Ldhi;->l(Ldhj;)Z

    move-result v3

    invoke-interface {v8, v3}, Ljyd;->s(Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    new-instance v3, Lcui;

    invoke-interface {v8}, Ljyd;->a()Ljyc;

    move-result-object v8

    iget-object v9, v4, Lcrz;->t:Lgyd;

    invoke-virtual {v9}, Lgyd;->b()Lgys;

    move-result-object v9

    iget-object v4, v4, Lcrz;->p:Ljvs;

    invoke-interface {v4}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgyt;

    invoke-direct {v3, v8, v10, v9, v4}, Lcui;-><init>(Ljyc;Lcsu;Lgys;Lgyt;)V

    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    iget-object v2, v2, Lfvx;->j:Ljava/lang/Object;

    move-object v4, v2

    check-cast v4, Lcyy;

    iget-object v4, v4, Lcyy;->b:Ljava/lang/Object;

    monitor-enter v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    move-object v6, v2

    check-cast v6, Lcyy;

    iget-object v6, v6, Lcyy;->d:Landroid/view/Surface;

    if-eqz v6, :cond_16

    move-object v8, v2

    check-cast v8, Lcyy;

    iput-object v6, v8, Lcyy;->c:Landroid/view/Surface;

    check-cast v2, Lcyy;

    iput-object v7, v2, Lcyy;->d:Landroid/view/Surface;

    :cond_16
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    iget-object v0, v0, Lcul;->a:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    invoke-static {v3}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v0

    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_a
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :catch_0
    move-exception v0

    move-object v7, v10

    goto :goto_a

    :catch_1
    move-exception v0

    :goto_a
    if-eqz v7, :cond_17

    :try_start_c
    iget-object v2, v7, Lcsu;->a:Lctd;

    invoke-interface {v2}, Lctd;->close()V

    :cond_17
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :catchall_1
    move-exception v0

    :try_start_d
    monitor-exit v12
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :try_start_e
    throw v0

    :catchall_2
    move-exception v0

    monitor-exit v6
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :try_start_f
    throw v0

    :catchall_3
    move-exception v0

    monitor-exit v5
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    throw v0
.end method
