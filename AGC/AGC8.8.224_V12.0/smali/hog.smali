.class public final synthetic Lhog;
.super Ljava/lang/Object;

# interfaces
.implements Lnnn;


# instance fields
.field public final synthetic a:Lhol;

.field public final synthetic b:Ljxp;

.field public final synthetic c:Lctd;

.field public final synthetic d:Lkab;


# direct methods
.method public synthetic constructor <init>(Lhol;Ljxp;Lctd;Lkab;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhog;->a:Lhol;

    iput-object p2, p0, Lhog;->b:Ljxp;

    iput-object p3, p0, Lhog;->c:Lctd;

    iput-object p4, p0, Lhog;->d:Lkab;

    return-void
.end method


# virtual methods
.method public final a()Lnou;
    .locals 20

    move-object/from16 v1, p0

    iget-object v0, v1, Lhog;->a:Lhol;

    iget-object v2, v1, Lhog;->b:Ljxp;

    iget-object v3, v1, Lhog;->c:Lctd;

    iget-object v4, v1, Lhog;->d:Lkab;

    iget-object v5, v0, Lhol;->K:Ljwu;

    iget-object v6, v0, Lhol;->J:Ljws;

    invoke-interface {v3}, Lctd;->f()Ljava/io/FileDescriptor;

    move-result-object v7

    iget-object v8, v0, Lhol;->S:Limq;

    iget-object v9, v0, Lhol;->M:Lklv;

    iget-object v10, v0, Lhol;->d:Ldhi;

    invoke-virtual {v0, v4, v8, v9, v10}, Lhol;->a(Lkab;Limq;Lklv;Ldhi;)I

    move-result v8

    iget-object v9, v0, Lhol;->d:Ldhi;

    sget-object v10, Ldil;->f:Ldhj;

    invoke-interface {v9, v10}, Ldhi;->l(Ldhj;)Z

    move-result v9

    if-eqz v9, :cond_0

    new-instance v9, Lcux;

    iget-object v10, v0, Lhol;->d:Ldhi;

    invoke-direct {v9, v10}, Lcux;-><init>(Ldhi;)V

    goto :goto_0

    :cond_0
    new-instance v9, Ljxq;

    invoke-direct {v9}, Ljxq;-><init>()V

    :goto_0
    iget-object v10, v0, Lhol;->f:Ljwm;

    iput-object v5, v10, Ljwm;->a:Ljwu;

    iput-object v6, v10, Ljwm;->b:Ljws;

    iget-object v5, v0, Lhol;->H:Lkll;

    iput-object v5, v10, Ljwm;->c:Lkll;

    iget-object v5, v0, Lhol;->c:Landroid/media/AudioManager;

    iput-object v5, v10, Ljwm;->r:Landroid/media/AudioManager;

    iput-object v7, v10, Ljwm;->o:Ljava/io/FileDescriptor;

    iput v8, v10, Ljwm;->d:I

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v6}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v6

    iput-object v6, v10, Ljwm;->k:Lmqp;

    iget-object v6, v0, Lhol;->d:Ldhi;

    sget-object v7, Ldgu;->af:Ldhj;

    invoke-interface {v6, v7}, Ldhi;->l(Ldhj;)Z

    move-result v6

    if-eq v5, v6, :cond_1

    const/4 v6, 0x2

    goto :goto_1

    :cond_1
    const/4 v6, 0x1

    :goto_1
    iput v6, v10, Ljwm;->v:I

    invoke-static {v9}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v6

    iput-object v6, v10, Ljwm;->j:Lmqp;

    iget-object v6, v0, Lhol;->u:Lhof;

    invoke-virtual {v6}, Lhof;->m()Z

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v6, :cond_2

    iget-object v6, v0, Lhol;->W:Lhpu;

    iget v6, v6, Lhpu;->h:I

    int-to-float v6, v6

    const/high16 v8, 0x3fe00000    # 1.75f

    div-float/2addr v8, v6

    goto :goto_2

    :cond_2
    const/high16 v8, 0x3f800000    # 1.0f

    :goto_2
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-static {v6}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v6

    iput-object v6, v10, Ljwm;->y:Lmqp;

    iget-object v6, v0, Lhol;->u:Lhof;

    invoke-virtual {v6}, Lhof;->m()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v0, Lhol;->d:Ldhi;

    sget-object v7, Ldil;->i:Ldhj;

    invoke-interface {v6, v7}, Ldhi;->h(Ldhj;)Lj$/util/Optional;

    move-result-object v6

    invoke-virtual {v6}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v7

    goto :goto_3

    :cond_3
    :goto_3
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-static {v6}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v6

    iput-object v6, v10, Ljwm;->z:Lmqp;

    invoke-static {v2}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v2

    iput-object v2, v10, Ljwm;->l:Lmqp;

    new-instance v2, Ljwk;

    invoke-direct {v2, v0, v5}, Ljwk;-><init>(Lhol;I)V

    invoke-static {v2}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v2

    iput-object v2, v10, Ljwm;->n:Lmqp;

    iget-object v2, v0, Lhol;->d:Ldhi;

    sget-object v6, Ldil;->d:Ldhj;

    invoke-interface {v2, v6}, Ldhi;->l(Ldhj;)Z

    move-result v2

    const/4 v6, 0x0

    if-eqz v2, :cond_4

    iget-object v2, v0, Lhol;->f:Ljwm;

    sget-object v7, Ljxr;->a:Ljxr;

    invoke-virtual {v2, v7}, Ljwm;->a(Ljxr;)V

    iget-object v2, v0, Lhol;->f:Ljwm;

    iput-boolean v6, v2, Ljwm;->e:Z

    iget-object v7, v0, Lhol;->u:Lhof;

    iget-object v7, v7, Lhof;->s:Landroid/media/MediaCodec$Callback;

    invoke-static {v7}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v7

    iput-object v7, v2, Ljwm;->i:Lmqp;

    iget-object v2, v0, Lhol;->Q:Lmqp;

    invoke-virtual {v2}, Lmqp;->g()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v0, Lhol;->f:Ljwm;

    iget-object v7, v0, Lhol;->Q:Lmqp;

    invoke-virtual {v7}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/Surface;

    iput-object v7, v2, Ljwm;->s:Landroid/view/Surface;

    goto :goto_4

    :cond_4
    iget-object v2, v0, Lhol;->f:Ljwm;

    sget-object v7, Ljxr;->c:Ljxr;

    invoke-virtual {v2, v7}, Ljwm;->a(Ljxr;)V

    iget-object v2, v0, Lhol;->f:Ljwm;

    iput-boolean v5, v2, Ljwm;->e:Z

    :cond_5
    :goto_4
    iget-object v2, v0, Lhol;->k:Lfbk;

    invoke-interface {v2}, Lfbk;->c()Lmqp;

    move-result-object v2

    invoke-virtual {v2}, Lmqp;->g()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v0, Lhol;->f:Ljwm;

    iget-object v7, v0, Lhol;->k:Lfbk;

    invoke-interface {v7}, Lfbk;->c()Lmqp;

    move-result-object v7

    invoke-virtual {v7}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/location/Location;

    iput-object v7, v2, Ljwm;->f:Landroid/location/Location;

    :cond_6
    iget-object v2, v0, Lhol;->f:Ljwm;

    iget-object v7, v2, Ljwm;->o:Ljava/io/FileDescriptor;

    if-nez v7, :cond_7

    const/4 v7, 0x0

    goto :goto_5

    :cond_7
    const/4 v7, 0x1

    :goto_5
    const-string v8, "Neither recordFileDescriptor nor recordFile are specified"

    invoke-static {v7, v8}, Lmoz;->f(ZLjava/lang/Object;)V

    iget-object v7, v2, Ljwm;->a:Ljwu;

    if-eqz v7, :cond_8

    const/4 v7, 0x1

    goto :goto_6

    :cond_8
    const/4 v7, 0x0

    :goto_6
    const-string v8, "camcorderVideoResolution is required"

    invoke-static {v7, v8}, Lmoz;->f(ZLjava/lang/Object;)V

    iget-object v7, v2, Ljwm;->c:Lkll;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v2, Ljwm;->b:Ljws;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v2, Ljwm;->r:Landroid/media/AudioManager;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v2, Ljwm;->u:Lmqp;

    new-instance v7, Ljwz;

    new-instance v8, Lkgd;

    invoke-direct {v8}, Lkgd;-><init>()V

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Ljwz;-><init>(Lkgd;[B)V

    new-instance v10, Ljxn;

    invoke-direct {v10, v6}, Ljxn;-><init>(I)V

    new-instance v11, Ljxn;

    invoke-direct {v11, v5}, Ljxn;-><init>(I)V

    iget-object v8, v2, Ljwm;->l:Lmqp;

    invoke-virtual {v8}, Lmqp;->g()Z

    move-result v8

    if-eqz v8, :cond_9

    new-instance v12, Ljxj;

    iget-object v8, v2, Ljwm;->l:Lmqp;

    invoke-virtual {v8}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljxp;

    invoke-direct {v12, v8}, Ljxj;-><init>(Ljxp;)V

    iget-object v8, v2, Ljwm;->l:Lmqp;

    invoke-virtual {v8}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljxp;

    iget-object v13, v8, Ljxp;->b:Ljwu;

    iget-object v14, v2, Ljwm;->c:Lkll;

    iget-object v8, v2, Ljwm;->l:Lmqp;

    invoke-virtual {v8}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljxp;

    iget-boolean v15, v8, Ljxp;->c:Z

    iget-object v8, v2, Ljwm;->z:Lmqp;

    iget-object v9, v2, Ljwm;->l:Lmqp;

    invoke-virtual {v9}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljxp;

    iget-object v9, v9, Ljxp;->a:Lmqp;

    iget-object v10, v2, Ljwm;->l:Lmqp;

    invoke-virtual {v10}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljxp;

    iget-object v10, v2, Ljwm;->l:Lmqp;

    invoke-virtual {v10}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljxp;

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    invoke-virtual/range {v12 .. v19}, Ljxj;->a(Ljwu;Lkll;ZLmqp;Lmqp;ZZ)Lmqp;

    move-result-object v8

    goto :goto_7

    :cond_9
    iget-object v8, v2, Ljwm;->b:Ljws;

    invoke-virtual {v8}, Ljws;->e()Z

    move-result v8

    if-eqz v8, :cond_a

    iget-object v12, v2, Ljwm;->a:Ljwu;

    iget-object v13, v2, Ljwm;->c:Lkll;

    const/4 v14, 0x0

    iget-object v15, v2, Ljwm;->z:Lmqp;

    sget-object v16, Lmpx;->a:Lmpx;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v11 .. v18}, Ljxn;->a(Ljwu;Lkll;ZLmqp;Lmqp;ZZ)Lmqp;

    move-result-object v8

    goto :goto_7

    :cond_a
    iget-object v8, v2, Ljwm;->b:Ljws;

    invoke-virtual {v8}, Ljws;->f()Z

    move-result v8

    if-eqz v8, :cond_19

    iget-object v11, v2, Ljwm;->a:Ljwu;

    iget-object v12, v2, Ljwm;->c:Lkll;

    const/4 v13, 0x0

    iget-object v14, v2, Ljwm;->z:Lmqp;

    sget-object v15, Lmpx;->a:Lmpx;

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v10 .. v17}, Ljxn;->a(Ljwu;Lkll;ZLmqp;Lmqp;ZZ)Lmqp;

    move-result-object v8

    :goto_7
    iget-object v9, v2, Ljwm;->a:Ljwu;

    invoke-virtual {v8}, Lmqp;->g()Z

    move-result v10

    const-string v11, "Fail to camcorder profile for resolution %s"

    invoke-static {v10, v11, v9}, Lmoz;->s(ZLjava/lang/String;Ljava/lang/Object;)V

    iget-object v9, v2, Ljwm;->y:Lmqp;

    invoke-virtual {v9}, Lmqp;->g()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-virtual {v8}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljxl;

    iget-object v9, v2, Ljwm;->b:Ljws;

    iget-object v10, v2, Ljwm;->a:Ljwu;

    iget-object v11, v2, Ljwm;->y:Lmqp;

    invoke-virtual {v11}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-interface {v7, v8, v9, v10, v11}, Ljwy;->d(Ljxl;Ljws;Ljwu;F)Ljxa;

    move-result-object v7

    goto :goto_8

    :cond_b
    invoke-virtual {v8}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljxl;

    iget-object v9, v2, Ljwm;->b:Ljws;

    iget-object v10, v2, Ljwm;->a:Ljwu;

    invoke-interface {v7, v8, v9, v10}, Ljwy;->c(Ljxl;Ljws;Ljwu;)Ljxa;

    move-result-object v7

    :goto_8
    iget-object v8, v2, Ljwm;->q:Ljava/util/concurrent/Executor;

    if-nez v8, :cond_c

    const-string v8, "CamcorderCllbck"

    invoke-static {v8}, Ljvd;->f(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v8

    iput-object v8, v2, Ljwm;->q:Ljava/util/concurrent/Executor;

    :cond_c
    const-string v8, "Camcorder"

    invoke-static {v8}, Ljvd;->f(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v8

    invoke-static {v8}, Lnsy;->p(Ljava/util/concurrent/ExecutorService;)Lnow;

    move-result-object v8

    new-instance v9, Landroid/os/HandlerThread;

    const-string v10, "Camcorder"

    invoke-direct {v9, v10}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v9}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-static {v9}, Ljvd;->o(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v9

    iget-object v10, v2, Ljwm;->k:Lmqp;

    invoke-virtual {v10}, Lmqp;->g()Z

    move-result v10

    if-eqz v10, :cond_d

    iget-object v10, v2, Ljwm;->k:Lmqp;

    invoke-virtual {v10}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    goto :goto_9

    :cond_d
    const/4 v10, 0x0

    :goto_9
    iget-object v11, v2, Ljwm;->p:Ljyd;

    if-nez v11, :cond_11

    iget-object v11, v2, Ljwm;->b:Ljws;

    invoke-virtual {v11}, Ljws;->f()Z

    move-result v11

    if-nez v11, :cond_f

    if-eqz v10, :cond_e

    goto :goto_a

    :cond_e
    new-instance v9, Ljzh;

    new-instance v10, Ljza;

    new-instance v11, Landroid/media/MediaRecorder;

    invoke-direct {v11}, Landroid/media/MediaRecorder;-><init>()V

    invoke-direct {v10, v11}, Ljza;-><init>(Landroid/media/MediaRecorder;)V

    new-instance v11, Ljwl;

    invoke-direct {v11}, Ljwl;-><init>()V

    invoke-direct {v9, v10, v8, v11}, Ljzh;-><init>(Ljzd;Lnow;Ljzc;)V

    iput-object v9, v2, Ljwm;->p:Ljyd;

    goto :goto_b

    :cond_f
    :goto_a
    new-instance v10, Ljyz;

    new-instance v11, Lkaz;

    invoke-direct {v11}, Lkaz;-><init>()V

    iget-object v12, v2, Ljwm;->r:Landroid/media/AudioManager;

    invoke-direct {v10, v8, v9, v11}, Ljyz;-><init>(Lnow;Landroid/os/Handler;Lkbc;)V

    iget-object v8, v2, Ljwm;->j:Lmqp;

    invoke-virtual {v8}, Lmqp;->g()Z

    move-result v8

    if-eqz v8, :cond_10

    iget-object v8, v2, Ljwm;->j:Lmqp;

    invoke-virtual {v8}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljxv;

    iput-object v8, v10, Ljyz;->n:Ljxv;

    :cond_10
    iget-object v8, v2, Ljwm;->t:Lmqp;

    iput-object v10, v2, Ljwm;->p:Ljyd;

    :cond_11
    :goto_b
    iget-object v8, v2, Ljwm;->p:Ljyd;

    invoke-interface {v8, v7}, Ljyd;->r(Ljxa;)V

    iget v7, v2, Ljwm;->d:I

    invoke-interface {v8, v7}, Ljyd;->o(I)V

    iget-boolean v7, v2, Ljwm;->e:Z

    invoke-interface {v8, v7}, Ljyd;->n(Z)V

    iget-object v7, v2, Ljwm;->o:Ljava/io/FileDescriptor;

    if-eqz v7, :cond_12

    iget-object v8, v2, Ljwm;->p:Ljyd;

    invoke-interface {v8, v7}, Ljyd;->q(Ljava/io/FileDescriptor;)V

    :cond_12
    iget-object v7, v2, Ljwm;->f:Landroid/location/Location;

    if-eqz v7, :cond_13

    iget-object v8, v2, Ljwm;->p:Ljyd;

    invoke-interface {v8, v7}, Ljyd;->h(Landroid/location/Location;)V

    :cond_13
    iget-object v7, v2, Ljwm;->s:Landroid/view/Surface;

    if-eqz v7, :cond_14

    iget-object v8, v2, Ljwm;->p:Ljyd;

    invoke-interface {v8, v7}, Ljyd;->g(Landroid/view/Surface;)V

    :cond_14
    iget-object v7, v2, Ljwm;->h:Lmqp;

    iget-object v7, v2, Ljwm;->g:Lmqp;

    iget-object v7, v2, Ljwm;->A:Lmqp;

    iget-object v7, v2, Ljwm;->i:Lmqp;

    invoke-virtual {v7}, Lmqp;->g()Z

    move-result v7

    if-eqz v7, :cond_15

    iget-object v7, v2, Ljwm;->p:Ljyd;

    iget-object v8, v2, Ljwm;->i:Lmqp;

    invoke-virtual {v8}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/MediaCodec$Callback;

    invoke-interface {v7, v8}, Ljyd;->m(Landroid/media/MediaCodec$Callback;)V

    :cond_15
    iget-object v7, v2, Ljwm;->m:Lmqp;

    invoke-virtual {v7}, Lmqp;->g()Z

    move-result v7

    if-eqz v7, :cond_16

    iget-object v7, v2, Ljwm;->p:Ljyd;

    iget-object v8, v2, Ljwm;->m:Lmqp;

    invoke-virtual {v8}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljxr;

    invoke-interface {v7, v8}, Ljyd;->e(Ljxr;)V

    :cond_16
    iget-object v7, v2, Ljwm;->p:Ljyd;

    iget v8, v2, Ljwm;->v:I

    invoke-interface {v7, v8}, Ljyd;->f(I)V

    iget-object v7, v2, Ljwm;->w:Lmqp;

    iget-object v7, v2, Ljwm;->x:Lmqp;

    :try_start_0
    iget-object v7, v2, Ljwm;->p:Ljyd;

    invoke-interface {v7}, Ljyd;->a()Ljyc;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Ljwo;

    iget-object v9, v2, Ljwm;->q:Ljava/util/concurrent/Executor;

    iget-object v2, v2, Ljwm;->n:Lmqp;

    invoke-direct {v8, v7, v9, v2}, Ljwo;-><init>(Ljyc;Ljava/util/concurrent/Executor;Lmqp;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iput-object v8, v0, Lhol;->af:Ljwo;

    invoke-virtual {v0}, Lhol;->c()V

    iget-object v10, v0, Lhol;->z:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v11, Lhma;

    const/16 v2, 0x10

    invoke-direct {v11, v0, v2}, Lhma;-><init>(Lhol;I)V

    sget-object v2, Ldlg;->a:Lj$/time/Duration;

    invoke-virtual {v2}, Lj$/time/Duration;->getSeconds()J

    move-result-wide v12

    sget-object v2, Ldlg;->a:Lj$/time/Duration;

    invoke-virtual {v2}, Lj$/time/Duration;->getSeconds()J

    move-result-wide v14

    sget-object v16, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v10 .. v16}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    iput-object v2, v0, Lhol;->D:Ljava/util/concurrent/ScheduledFuture;

    invoke-static {}, Lhpx;->a()Lhpw;

    move-result-object v2

    iget-object v7, v0, Lhol;->J:Ljws;

    invoke-virtual {v2, v7}, Lhpw;->o(Ljws;)V

    iget-object v7, v0, Lhol;->K:Ljwu;

    invoke-virtual {v2, v7}, Lhpw;->b(Ljwu;)V

    invoke-virtual {v2, v3}, Lhpw;->i(Lctd;)V

    sget-object v7, Lmpx;->a:Lmpx;

    invoke-virtual {v2, v7}, Lhpw;->n(Lmqp;)V

    iget-object v7, v0, Lhol;->S:Limq;

    iget-object v8, v0, Lhol;->M:Lklv;

    iget-object v9, v0, Lhol;->d:Ldhi;

    invoke-virtual {v0, v4, v7, v8, v9}, Lhol;->a(Lkab;Limq;Lklv;Ldhi;)I

    move-result v4

    invoke-virtual {v2, v4}, Lhpw;->g(I)V

    iget-object v4, v0, Lhol;->af:Ljwo;

    iget-object v4, v4, Ljwo;->a:Ljyc;

    invoke-interface {v4}, Ljyc;->d()Lmqp;

    move-result-object v4

    invoke-virtual {v2, v4}, Lhpw;->f(Lmqp;)V

    iget-object v4, v0, Lhol;->W:Lhpu;

    invoke-virtual {v2, v4}, Lhpw;->l(Lhpu;)V

    iget-boolean v4, v0, Lhol;->x:Z

    invoke-virtual {v2, v4}, Lhpw;->e(Z)V

    const-string v4, ""

    invoke-virtual {v2, v4}, Lhpw;->m(Ljava/lang/String;)V

    iget-object v4, v0, Lhol;->E:Lgxz;

    invoke-virtual {v2, v4}, Lhpw;->k(Lgxz;)V

    iget-object v4, v0, Lhol;->m:Ljava/lang/Object;

    monitor-enter v4

    :try_start_1
    iget-object v7, v0, Lhol;->B:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_17

    sget-object v7, Lhol;->a:Lnak;

    invoke-virtual {v7}, Lnaf;->c()Lnaz;

    move-result-object v7

    check-cast v7, Lnah;

    const/16 v8, 0xee9

    invoke-interface {v7, v8}, Lnah;->G(I)Lnaz;

    move-result-object v7

    check-cast v7, Lnah;

    const-string v8, "prepareCamcorder(): Pending video file exists."

    invoke-interface {v7, v8}, Lnah;->o(Ljava/lang/String;)V

    iget-object v7, v0, Lhol;->B:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    :cond_17
    iget-object v7, v0, Lhol;->B:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance v2, Lhps;

    iget-object v4, v0, Lhol;->W:Lhpu;

    invoke-static {v3}, Ldgx;->e(Lctd;)Lgyb;

    move-result-object v3

    sget-object v7, Lgyb;->b:Lgyb;

    if-ne v3, v7, :cond_18

    goto :goto_c

    :cond_18
    const/4 v5, 0x0

    :goto_c
    invoke-direct {v2, v4, v5}, Lhps;-><init>(Lhpu;Z)V

    iput-object v2, v0, Lhol;->X:Lhps;

    iget-object v2, v0, Lhol;->af:Ljwo;

    iget-object v3, v0, Lhol;->F:Ljwj;

    iget-object v2, v2, Ljwo;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Lhol;->af:Ljwo;

    invoke-static {v0}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Fail to create video recorder"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unknown camcorder capture rate"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
