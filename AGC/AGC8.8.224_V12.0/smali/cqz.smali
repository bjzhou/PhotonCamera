.class public final Lcqz;
.super Ljava/lang/Object;

# interfaces
.implements Lcqx;


# instance fields
.field public final a:Lmqp;

.field public b:Lmqp;

.field public c:I

.field private final d:Ldhi;

.field private final e:Lcqv;

.field private final f:Ljava/lang/Object;

.field private final g:Lcrm;

.field private final h:Lmqp;

.field private final i:Lmqp;

.field private final j:Lmqp;

.field private final k:Lhio;

.field private final l:Lcyq;

.field private m:Lcqy;

.field private n:Z

.field private final o:Ljuf;


# direct methods
.method public constructor <init>(Lcdi;Ldhi;Lcqv;Lcrm;Lmqp;Lmqp;Lmqp;Lmqp;Lhio;Lcvm;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p11, Ljava/lang/Object;

    invoke-direct {p11}, Ljava/lang/Object;-><init>()V

    iput-object p11, p0, Lcqz;->f:Ljava/lang/Object;

    sget-object p11, Lcqy;->a:Lcqy;

    iput-object p11, p0, Lcqz;->m:Lcqy;

    sget-object p11, Lmpx;->a:Lmpx;

    iput-object p11, p0, Lcqz;->b:Lmqp;

    invoke-virtual {p1}, Lcdi;->i()Ljuf;

    move-result-object p1

    iput-object p1, p0, Lcqz;->o:Ljuf;

    iput-object p2, p0, Lcqz;->d:Ldhi;

    iput-object p3, p0, Lcqz;->e:Lcqv;

    iput-object p4, p0, Lcqz;->g:Lcrm;

    iput-object p5, p0, Lcqz;->i:Lmqp;

    iput-object p6, p0, Lcqz;->a:Lmqp;

    iput-object p7, p0, Lcqz;->j:Lmqp;

    iput-object p8, p0, Lcqz;->h:Lmqp;

    iput-object p9, p0, Lcqz;->k:Lhio;

    sget-object p2, Lika;->c:Lika;

    invoke-virtual {p10, p2}, Lcvm;->b(Lika;)Lcyq;

    move-result-object p2

    iput-object p2, p0, Lcqz;->l:Lcyq;

    new-instance p2, Lckj;

    const/16 p3, 0x8

    invoke-direct {p2, p0, p3}, Lckj;-><init>(Lcqz;I)V

    sget-object p3, Lnnv;->a:Lnnv;

    invoke-virtual {p4, p2, p3}, Ljwh;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljuf;->d(Lkad;)V

    invoke-virtual {p5}, Lmqp;->g()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p5}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lhib;

    new-instance p3, Lhhu;

    const/4 p4, 0x1

    invoke-direct {p3, p0, p4}, Lhhu;-><init>(Lcqz;I)V

    invoke-interface {p2, p3}, Lhib;->a(Lhia;)Lkad;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljuf;->d(Lkad;)V

    :cond_0
    invoke-virtual {p6}, Lmqp;->g()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p6}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljew;

    invoke-virtual {p2}, Ljew;->V()Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p5, Landroidx/wear/ambient/AmbientMode$AmbientController;

    invoke-direct {p5, p0}, Landroidx/wear/ambient/AmbientMode$AmbientController;-><init>(Lcqz;)V

    iget-object p2, p9, Lhio;->a:Ljava/util/List;

    invoke-interface {p2, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p2, Lgss;

    const/16 p6, 0xb

    const/4 p7, 0x0

    const/4 p8, 0x0

    move-object p3, p2

    move-object p4, p9

    invoke-direct/range {p3 .. p8}, Lgss;-><init>(Lhio;Landroidx/wear/ambient/AmbientMode$AmbientController;I[B[B)V

    invoke-virtual {p1, p2}, Ljuf;->d(Lkad;)V

    :cond_1
    return-void
.end method

.method public static synthetic a$004(Lhhy;D)V
    .locals 1

    invoke-virtual/range {p0 .. p2}, Lhhy;->a(D)V

    return-void
.end method

.method public static synthetic a$012(Lhhy;D)V
    .locals 1

    invoke-virtual/range {p0 .. p2}, Lhhy;->a(D)V

    return-void
.end method

.method public static synthetic a$017(Lhic;)V
    .locals 1

    invoke-interface/range {p0 .. p0}, Lhic;->a()V

    return-void
.end method

.method public static synthetic append$015(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 1

    invoke-virtual/range {p0 .. p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic append$016(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 1

    invoke-virtual/range {p0 .. p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic append$017(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 1

    invoke-virtual/range {p0 .. p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic append$018(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 1

    invoke-virtual/range {p0 .. p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b$003(Lhhy;I)V
    .locals 1

    invoke-virtual/range {p0 .. p1}, Lhhy;->b(I)V

    return-void
.end method

.method public static synthetic b$008(Lhhy;I)V
    .locals 1

    invoke-virtual/range {p0 .. p1}, Lhhy;->b(I)V

    return-void
.end method

.method public static synthetic c$002(Lhhy;I)V
    .locals 1

    invoke-virtual/range {p0 .. p1}, Lhhy;->c(I)V

    return-void
.end method

.method public static synthetic c$005(Lmqp;)Ljava/lang/Object;
    .locals 1

    invoke-virtual/range {p0 .. p0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c$006(Lhhy;I)V
    .locals 1

    invoke-virtual/range {p0 .. p1}, Lhhy;->c(I)V

    return-void
.end method

.method public static synthetic c$007(Lmqp;)Ljava/lang/Object;
    .locals 1

    invoke-virtual/range {p0 .. p0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c$008(Lmqp;)Ljava/lang/Object;
    .locals 1

    invoke-virtual/range {p0 .. p0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c$012(Lmqp;)Ljava/lang/Object;
    .locals 1

    invoke-virtual/range {p0 .. p0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c$013(Lmqp;)Ljava/lang/Object;
    .locals 1

    invoke-virtual/range {p0 .. p0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c$016(Lmqp;)Ljava/lang/Object;
    .locals 1

    invoke-virtual/range {p0 .. p0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic concat$020(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual/range {p0 .. p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic e$014(Lhil;)V
    .locals 1

    invoke-interface/range {p0 .. p0}, Lhil;->e()V

    return-void
.end method

.method public static synthetic equals$002(Lcqy;Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual/range {p0 .. p1}, Lcqy;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static synthetic equals$003(Lcqy;Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual/range {p0 .. p1}, Lcqy;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static synthetic floatValue$011(Ljava/lang/Float;)F
    .locals 1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public static synthetic g$001(Lmqp;)Z
    .locals 1

    invoke-static {}, Lcom/Globals;->GoogleDevices()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Lmqp;->g()Z

    move-result v0

    return v0

    :cond_0
    const v0, 0x0

    return v0
.end method

.method public static synthetic g$004(Lmqp;)Z
    .locals 1

    invoke-static {}, Lcom/Globals;->GoogleDevices()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Lmqp;->g()Z

    move-result v0

    return v0

    :cond_0
    const v0, 0x0

    return v0
.end method

.method public static synthetic g$011(Lmqp;)Z
    .locals 1

    invoke-static {}, Lcom/Globals;->GoogleDevices()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Lmqp;->g()Z

    move-result v0

    return v0

    :cond_0
    const v0, 0x0

    return v0
.end method

.method public static synthetic g$015(Lmqp;)Z
    .locals 1

    invoke-static {}, Lcom/Globals;->GoogleDevices()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Lmqp;->g()Z

    move-result v0

    return v0

    :cond_0
    const v0, 0x0

    return v0
.end method

.method public static synthetic get$010(Lj$/util/Optional;)Ljava/lang/Object;
    .locals 1

    invoke-virtual/range {p0 .. p0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic h$001(Lcqz;)Z
    .locals 1

    invoke-virtual/range {p0 .. p0}, Lcqz;->h()Z

    move-result v0

    return v0
.end method

.method public static synthetic h$009(Ldhi;Ldhj;)Lj$/util/Optional;
    .locals 1

    invoke-interface/range {p0 .. p1}, Ldhi;->h(Ldhj;)Lj$/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic h$010(Lhib;)V
    .locals 1

    invoke-interface/range {p0 .. p0}, Lhib;->h()V

    return-void
.end method

.method public static synthetic j$014(Lcqz;Lhhz;)V
    .locals 1

    invoke-virtual/range {p0 .. p1}, Lcqz;->j(Lhhz;)V

    return-void
.end method

.method private static final k(Lklv;)Z
    .locals 1

    sget-object v0, Lklv;->b:Lklv;

    invoke-virtual {p0, v0}, Lklv;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic k$013(Lhil;)I
    .locals 1

    invoke-interface/range {p0 .. p0}, Lhil;->k()I

    move-result v0

    return v0
.end method

.method public static synthetic toString$019(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Lmqp;
    .locals 13

    iget-object v0, p0, Lcqz;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcqz;->h()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lmpx;->a:Lmpx;

    monitor-exit v0

    return-object v1

    :cond_0
    iget v1, p0, Lcqz;->c:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    :goto_0
    if-eqz v1, :cond_a

    xor-int/lit8 v6, v4, 0x1

    const/4 v4, 0x2

    if-eq v1, v4, :cond_2

    const/4 v7, 0x0

    goto :goto_1

    :cond_2
    const/4 v7, 0x1

    :goto_1
    iget-object v1, p0, Lcqz;->h:Lmqp;

    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcrb;

    iget-object v2, v1, Lcrb;->c:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    iget-wide v3, v1, Lcrb;->f:J

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v2, v1, Lcrb;->c:Ljava/lang/Object;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    iget v5, v1, Lcrb;->e:I

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v2, v1, Lcrb;->c:Ljava/lang/Object;

    monitor-enter v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    iget v1, v1, Lcrb;->d:I

    monitor-exit v2

    const/16 v2, 0x1f

    move v11, v1

    move-wide v8, v3

    move v10, v5

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_1
    move-exception v1

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_2
    move-exception v1

    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v1

    :cond_3
    const-wide/16 v3, 0x0

    const/4 v1, 0x3

    move-wide v8, v3

    const/4 v2, 0x3

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_2
    iget-object v1, p0, Lcqz;->b:Lmqp;

    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcqz;->b:Lmqp;

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhhz;

    iget-wide v3, v1, Lhhz;->c:D

    double-to-float v1, v3

    or-int/lit8 v2, v2, 0x20

    move v12, v1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    const/4 v12, 0x0

    :goto_3
    const/16 v1, 0x3f

    if-eq v2, v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit8 v3, v2, 0x4

    if-nez v3, :cond_5

    const-string v3, " audioFrameCount"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    and-int/lit8 v3, v2, 0x8

    if-nez v3, :cond_6

    const-string v3, " audioFrameDropCount"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    and-int/lit8 v3, v2, 0x10

    if-nez v3, :cond_7

    const-string v3, " audioMaxFrameDropCount"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    and-int/lit8 v2, v2, 0x20

    if-nez v2, :cond_8

    const-string v2, " noiseFraction"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Missing required properties:"

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_9
    new-instance v1, Lcra;

    move-object v5, v1

    invoke-direct/range {v5 .. v12}, Lcra;-><init>(ZZJIIF)V

    invoke-static {v1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_a
    const/4 v1, 0x0

    throw v1

    :catchall_3
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v1
.end method

.method public b(Lcsc;)V
    .locals 5

    const v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    const v0, 0x0

    aput-object p0, v2, v0

    const v0, 0x1

    aput-object p1, v2, v0

    const-string/jumbo v1, "K065julIq8riaGOz"

    invoke-static {v1, v2}, Lcom/pairip/VMRunner;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-void
.end method

.method public final c(Lkpb;Lkou;)V
    .locals 10

    iget-object v0, p0, Lcqz;->l:Lcyq;

    invoke-interface {v0}, Lcyq;->bx()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcqz;->a:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljew;

    iget-object v0, v0, Ljew;->a:Ljava/lang/Object;

    invoke-interface {v0}, Lhil;->i()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcqz;->k:Lhio;

    if-nez p2, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v2, v0, Lhio;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    iget v2, v0, Lhio;->c:I

    add-int/2addr v2, v1

    iput v2, v0, Lhio;->c:I

    const/16 v3, 0x1e

    if-lt v2, v3, :cond_5

    const/4 v2, 0x0

    iput v2, v0, Lhio;->c:I

    sget-object v3, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p2, v3}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/camera2/params/Face;

    sget-object v4, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p2, v4}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Rect;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v3, :cond_2

    :cond_1
    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_1

    aget-object v5, v3, v4

    invoke-virtual {v5}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    const v9, 0x3fd55555

    mul-float v5, v5, v9

    mul-float v6, v6, v9

    div-float/2addr v6, v7

    div-float/2addr v5, v8

    mul-float v6, v6, v5

    const v5, 0x3d4ccccd    # 0.05f

    cmpl-float v5, v6, v5

    if-lez v5, :cond_4

    iget p2, v0, Lhio;->b:I

    add-int/2addr p2, v1

    const/4 v2, 0x3

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, v0, Lhio;->b:I

    if-ne p2, v2, :cond_5

    iget-object p2, v0, Lhio;->a:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/wear/ambient/AmbientMode$AmbientController;

    iget-object v0, v0, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    check-cast v0, Lcqz;

    iget-object v0, v0, Lcqz;->a:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljew;

    iget-object v2, v0, Ljew;->a:Ljava/lang/Object;

    invoke-interface {v2}, Lhil;->k()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    iget-object v0, v0, Ljew;->a:Ljava/lang/Object;

    invoke-interface {v0}, Lhil;->f()V

    goto :goto_1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :goto_2
    iput v2, v0, Lhio;->b:I

    :cond_5
    :goto_3
    iget-object p2, p0, Lcqz;->f:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    invoke-virtual {p0}, Lcqz;->h()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcqz;->m:Lcqy;

    sget-object v2, Lcqy;->c:Lcqy;

    invoke-virtual {v0, v2}, Lcqy;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcqz;->b:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcqz;->b:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhhz;

    iget v0, v0, Lhhz;->d:I

    if-eqz v0, :cond_6

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcqz;->j:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhic;

    invoke-interface {v0, p1}, Lhic;->c(Lkpb;)V

    goto :goto_4

    :cond_6
    const/4 p1, 0x0

    throw p1

    :cond_7
    :goto_4
    invoke-interface {p1}, Lkpb;->close()V

    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lcqz;->e:Lcqv;

    invoke-interface {v0}, Lcqv;->g()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcqz;->i:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhib;

    invoke-interface {v0}, Lhib;->f()V

    :cond_1
    iget-object v0, p0, Lcqz;->a:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljew;

    iget-object v0, v0, Ljew;->a:Ljava/lang/Object;

    invoke-interface {v0}, Lhil;->g()V

    :cond_2
    return-void
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Lcqz;->e:Lcqv;

    invoke-interface {v0}, Lcqv;->g()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcqz;->i:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhib;

    :cond_1
    iget-object v0, p0, Lcqz;->a:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljew;

    iget-object v0, v0, Ljew;->a:Ljava/lang/Object;

    invoke-interface {v0}, Lhil;->h()V

    :cond_2
    return-void
.end method

.method public f()V
    .locals 5

    const v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    const v0, 0x0

    aput-object p0, v2, v0

    const-string/jumbo v1, "ROqzIfAyinsNU1fw"

    invoke-static {v1, v2}, Lcom/pairip/VMRunner;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-void
.end method

.method public final g()V
    .locals 3

    iget-object v0, p0, Lcqz;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcqz;->m:Lcqy;

    sget-object v2, Lcqy;->c:Lcqy;

    invoke-virtual {v1, v2}, Lcqy;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcqz;->i:Lmqp;

    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhib;

    invoke-interface {v1}, Lhib;->i()V

    :cond_0
    iget-object v1, p0, Lcqz;->a:Lmqp;

    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljew;

    :cond_1
    iget-object v1, p0, Lcqz;->j:Lmqp;

    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhic;

    invoke-interface {v1}, Lhic;->b()V

    :cond_2
    sget-object v1, Lcqy;->d:Lcqy;

    iput-object v1, p0, Lcqz;->m:Lcqy;

    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final h()Z
    .locals 2

    iget-boolean v0, p0, Lcqz;->n:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcqz;->g:Lcrm;

    invoke-virtual {v0}, Ljwh;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgyt;

    sget-object v1, Lgyt;->b:Lgyt;

    invoke-virtual {v0, v1}, Lgyt;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final i(Lcsc;)Z
    .locals 2

    iget-object p1, p1, Lcsc;->x:Lklv;

    invoke-static {p1}, Lcqz;->k(Lklv;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object p1, p0, Lcqz;->a:Lmqp;

    invoke-virtual {p1}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljew;

    invoke-virtual {p1}, Ljew;->V()Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final j(Lhhz;)V
    .locals 2

    invoke-virtual {p0}, Lcqz;->h()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcqz;->i:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhib;

    invoke-interface {v0, p1}, Lhib;->e(Lhhz;)V

    :cond_1
    return-void
.end method
