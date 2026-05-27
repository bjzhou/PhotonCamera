.class public final Lkpo;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ContentResolver;Lkqa;Lkaq;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lkpo;->e:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lkpo;->a:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lkpo;->d:Ljava/lang/Object;

    iput-object p2, p0, Lkpo;->c:Ljava/lang/Object;

    iput-object p3, p0, Lkpo;->b:Ljava/lang/Object;

    const-string p1, "PublishNotifier"

    invoke-interface {p4, p1}, Lkaq;->a(Ljava/lang/String;)Lkaq;

    move-result-object p1

    iput-object p1, p0, Lkpo;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lkaq;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lmwn;->F(Ljava/util/Collection;)Lmwn;

    move-result-object v0

    iput-object v0, p0, Lkpo;->a:Ljava/lang/Object;

    invoke-static {p2}, Lmwn;->F(Ljava/util/Collection;)Lmwn;

    move-result-object v0

    iput-object v0, p0, Lkpo;->d:Ljava/lang/Object;

    invoke-static {p4}, Lmwn;->F(Ljava/util/Collection;)Lmwn;

    move-result-object v0

    iput-object v0, p0, Lkpo;->f:Ljava/lang/Object;

    invoke-static {p3}, Lmwn;->F(Ljava/util/Collection;)Lmwn;

    move-result-object v0

    iput-object v0, p0, Lkpo;->e:Ljava/lang/Object;

    const-string v0, "ParamBlkList"

    invoke-interface {p5, v0}, Lkaq;->a(Ljava/lang/String;)Lkaq;

    move-result-object p5

    iput-object p5, p0, Lkpo;->c:Ljava/lang/Object;

    invoke-static {}, Lmwn;->D()Lmwl;

    move-result-object p5

    invoke-virtual {p5, p1}, Lmwl;->h(Ljava/lang/Iterable;)V

    invoke-virtual {p5, p3}, Lmwl;->h(Ljava/lang/Iterable;)V

    invoke-virtual {p5, p4}, Lmwl;->h(Ljava/lang/Iterable;)V

    invoke-virtual {p5, p2}, Lmwl;->h(Ljava/lang/Iterable;)V

    invoke-virtual {p5}, Lmwl;->f()Lmwn;

    move-result-object p1

    iput-object p1, p0, Lkpo;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lken;Ljava/util/Map;Ljvs;Ljuf;Ljava/util/concurrent/Executor;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkpo;->c:Ljava/lang/Object;

    iput-object p2, p0, Lkpo;->f:Ljava/lang/Object;

    iput-object p3, p0, Lkpo;->a:Ljava/lang/Object;

    iput-object p4, p0, Lkpo;->b:Ljava/lang/Object;

    iput-object p5, p0, Lkpo;->d:Ljava/lang/Object;

    sget-object p1, Lgml;->c:Lgml;

    invoke-interface {p6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkll;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lkll;->a:Ljava/lang/String;

    iput-object p1, p0, Lkpo;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkkc;Landroidx/wear/ambient/AmbientDelegate;Lkpo;Lkaq;Lkbc;[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkpo;->b:Ljava/lang/Object;

    iput-object p2, p0, Lkpo;->f:Ljava/lang/Object;

    iput-object p3, p0, Lkpo;->a:Ljava/lang/Object;

    iput-object p5, p0, Lkpo;->e:Ljava/lang/Object;

    const-string p1, "FrameStreamMap"

    invoke-interface {p4, p1}, Lkaq;->a(Ljava/lang/String;)Lkaq;

    move-result-object p1

    iput-object p1, p0, Lkpo;->d:Ljava/lang/Object;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lkpo;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkqb;Lkbc;Lkaq;Ldhi;Lgzm;Lkqo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkpo;->f:Ljava/lang/Object;

    iput-object p2, p0, Lkpo;->e:Ljava/lang/Object;

    iput-object p4, p0, Lkpo;->b:Ljava/lang/Object;

    const-string p1, "GcaMediaStorage"

    invoke-interface {p3, p1}, Lkaq;->a(Ljava/lang/String;)Lkaq;

    move-result-object p1

    iput-object p1, p0, Lkpo;->c:Ljava/lang/Object;

    iput-object p5, p0, Lkpo;->a:Ljava/lang/Object;

    iput-object p6, p0, Lkpo;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lkpo;->a:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lkpo;->b:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p0, Lkpo;->c:Ljava/lang/Object;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p4, p0, Lkpo;->d:Ljava/lang/Object;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p5, p0, Lkpo;->e:Ljava/lang/Object;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p6, p0, Lkpo;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lkpo;->b:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lkpo;->a:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p0, Lkpo;->e:Ljava/lang/Object;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p4, p0, Lkpo;->d:Ljava/lang/Object;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p5, p0, Lkpo;->c:Ljava/lang/Object;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p6, p0, Lkpo;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;[C)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lkpo;->f:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lkpo;->e:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p0, Lkpo;->d:Ljava/lang/Object;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p4, p0, Lkpo;->b:Ljava/lang/Object;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p5, p0, Lkpo;->c:Ljava/lang/Object;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p6, p0, Lkpo;->a:Ljava/lang/Object;

    return-void
.end method

.method private final k(JILmwn;)Lmrl;
    .locals 9

    new-instance v8, Lkgr;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v2, p4

    move-wide v3, p1

    move v5, p3

    invoke-direct/range {v0 .. v7}, Lkgr;-><init>(Lkpo;Lmwn;JI[B[B)V

    invoke-static {v8}, Llkj;->D(Lmrl;)Lmrl;

    move-result-object p1

    return-object p1
.end method

.method private final l(Ljava/util/Set;)Lmwn;
    .locals 4

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lmza;->a:Lmza;

    return-object p1

    :cond_0
    invoke-static {}, Lmwn;->D()Lmwl;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkfa;

    iget-object v2, p0, Lkpo;->a:Ljava/lang/Object;

    iget-object v3, v1, Lkfa;->a:Landroid/hardware/camera2/CaptureRequest$Key;

    check-cast v2, Lkpo;

    invoke-virtual {v2, v3}, Lkpo;->b(Landroid/hardware/camera2/CaptureRequest$Key;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Lmwl;->g(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lkpo;->d:Ljava/lang/Object;

    iget-object v1, v1, Lkfa;->a:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Ignoring blocklisted parameter: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lkaq;->f(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lmwl;->f()Lmwn;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final a(Lkpr;)V
    .locals 8

    iget-object v0, p1, Lkpr;->e:Lmwn;

    invoke-virtual {v0}, Lmwn;->cz()Lnac;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkpj;

    iget-object v2, v1, Lkpj;->e:Lkqq;

    invoke-interface {v2}, Lkqq;->h()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmqr;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lkpo;->c:Ljava/lang/Object;

    check-cast v3, Landroid/content/ContentResolver;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    iget-object v3, p0, Lkpo;->f:Ljava/lang/Object;

    iget-object v4, p1, Lkpr;->a:Lkpm;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " NotifyChange: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lkaq;->f(Ljava/lang/String;)V

    iget-object v1, v1, Lkpj;->e:Lkqq;

    invoke-interface {v1}, Lkqq;->i()Lkqy;

    move-result-object v2

    iget-object v2, v2, Lkqy;->e:Ljava/lang/String;

    invoke-static {v2}, Lkqi;->a(Ljava/lang/String;)Lkqi;

    move-result-object v2

    invoke-virtual {v2}, Lkqi;->b()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lkqi;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_1
    invoke-virtual {v2}, Lkqi;->b()Z

    move-result v2

    const/4 v3, 0x1

    if-eq v3, v2, :cond_2

    const-string v2, "android.hardware.action.NEW_VIDEO"

    goto :goto_1

    :cond_2
    const-string v2, "android.hardware.action.NEW_PICTURE"

    :goto_1
    invoke-interface {v1}, Lkqq;->h()Landroid/net/Uri;

    move-result-object v1

    iget-object v4, p0, Lkpo;->f:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Broadcasting: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lkaq;->f(Ljava/lang/String;)V

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v4, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v4, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lkpo;->d:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lkpo;->a:Ljava/lang/Object;

    iget-object p1, p1, Lkpr;->a:Lkpm;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final b(Landroid/hardware/camera2/CaptureRequest$Key;)Z
    .locals 5

    iget-object v0, p0, Lkpo;->b:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lkpo;->a:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lkgx;->a:Lkgx;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lkpo;->d:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lkgx;->d:Lkgx;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lkpo;->f:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lkgx;->c:Lkgx;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lkpo;->e:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lkgx;->b:Lkgx;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lkpo;->b:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-static {v0}, Llkj;->x(Z)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lkpo;->c:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, v0, Lkgx;->f:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to update a blocklisted parameter : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Lkaq;->i(Ljava/lang/String;)V

    return v1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public final c(Lkfj;Ljava/util/Set;)Lkgq;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lkpo;->e:Ljava/lang/Object;

    const-string v3, "createFrameStream"

    invoke-interface {v2, v3}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v2, v0, Lkpo;->f:Ljava/lang/Object;

    check-cast v2, Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {v2}, Landroidx/wear/ambient/AmbientDelegate;->W()J

    move-result-wide v2

    move-object v4, v1

    check-cast v4, Lkkb;

    invoke-virtual {v4}, Lkkb;->f()J

    move-result-wide v5

    invoke-virtual {v4}, Lkkb;->i()Z

    move-result v7

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    cmp-long v12, v5, v10

    if-ltz v12, :cond_0

    const/4 v12, 0x1

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    :goto_0
    new-array v13, v9, [Ljava/lang/Object;

    const-string v14, "bytesPerImage() must be >= 0"

    invoke-static {v12, v14, v13}, Llkj;->z(ZLjava/lang/String;[Ljava/lang/Object;)V

    instance-of v12, v1, Lkjt;

    const v13, 0x7fffffff

    if-eqz v12, :cond_2

    move-object v14, v1

    check-cast v14, Lkjt;

    iget v14, v14, Lkjt;->d:I

    if-lez v14, :cond_1

    const/4 v15, 0x1

    goto :goto_1

    :cond_1
    const/4 v15, 0x0

    :goto_1
    new-array v8, v9, [Ljava/lang/Object;

    const-string v9, "Stream capacity must be > 0"

    invoke-static {v15, v9, v8}, Llkj;->z(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    const v14, 0x7fffffff

    :goto_2
    cmp-long v8, v5, v10

    if-nez v8, :cond_4

    if-ne v14, v13, :cond_3

    const/4 v2, -0x1

    goto :goto_5

    :cond_3
    move-wide v5, v10

    goto :goto_3

    :cond_4
    :goto_3
    cmp-long v8, v5, v10

    if-lez v8, :cond_5

    if-nez v7, :cond_5

    div-long/2addr v2, v5

    long-to-int v3, v2

    goto :goto_4

    :cond_5
    const v3, 0x7fffffff

    :goto_4
    invoke-static {v3, v14}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_5
    invoke-virtual {v4}, Lkkb;->i()Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {v4}, Lkkb;->f()J

    move-result-wide v10

    :goto_6
    if-eqz v12, :cond_7

    move-object v3, v1

    check-cast v3, Lkjt;

    invoke-static {v3}, Lmwn;->H(Ljava/lang/Object;)Lmwn;

    move-result-object v3

    goto :goto_7

    :cond_7
    sget-object v3, Lmza;->a:Lmza;

    :goto_7
    move-object/from16 v4, p2

    invoke-direct {v0, v4}, Lkpo;->l(Ljava/util/Set;)Lmwn;

    move-result-object v20

    new-instance v4, Lkgq;

    invoke-static/range {p1 .. p1}, Lmwn;->H(Ljava/lang/Object;)Lmwn;

    move-result-object v17

    instance-of v5, v1, Lkju;

    if-eqz v5, :cond_8

    move-object v5, v1

    check-cast v5, Lkju;

    invoke-static {v5}, Lmwn;->H(Ljava/lang/Object;)Lmwn;

    move-result-object v5

    move-object/from16 v19, v5

    goto :goto_8

    :cond_8
    sget-object v5, Lmza;->a:Lmza;

    move-object/from16 v19, v5

    :goto_8
    invoke-direct {v0, v10, v11, v2, v3}, Lkpo;->k(JILmwn;)Lmrl;

    move-result-object v22

    move-object/from16 v16, v4

    move-object/from16 v18, v3

    move/from16 v21, v2

    invoke-direct/range {v16 .. v22}, Lkgq;-><init>(Lmwn;Lmwn;Lmwn;Lmwn;ILmrl;)V

    iget-object v3, v0, Lkpo;->e:Ljava/lang/Object;

    invoke-interface {v3}, Lkbc;->f()V

    iget-object v3, v0, Lkpo;->c:Ljava/lang/Object;

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v3, v0, Lkpo;->d:Ljava/lang/Object;

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    iget-wide v7, v4, Lkgq;->f:J

    long-to-double v7, v7

    const-wide/high16 v9, 0x4130000000000000L    # 1048576.0

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v7, 0x2

    aput-object v1, v6, v7

    if-ltz v2, :cond_a

    if-ne v2, v13, :cond_9

    goto :goto_9

    :cond_9
    iget v1, v4, Lkgq;->e:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " with "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " frames max"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    :cond_a
    :goto_9
    const-string v1, ""

    :goto_a
    const/4 v2, 0x3

    aput-object v1, v6, v2

    const-string v1, "Created %-10s from [%s] %6.2f MiB/frame%s"

    invoke-static {v5, v1, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Lkaq;->f(Ljava/lang/String;)V

    return-object v4
.end method

.method public final d(Ljava/util/Set;Ljava/util/Set;)Lkgq;
    .locals 12

    iget-object v0, p0, Lkpo;->e:Ljava/lang/Object;

    const-string v1, "createFrameStream"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    invoke-static {p1}, Lmwn;->F(Ljava/util/Collection;)Lmwn;

    move-result-object v0

    iget-object v1, p0, Lkpo;->b:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkfj;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v4, v1

    check-cast v4, Lkkc;

    iget-object v4, v4, Lkkc;->a:Lmwn;

    invoke-virtual {v4, v3}, Lmwn;->contains(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, " is not available on this FrameServer."

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lmoz;->f(ZLjava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lkpo;->f:Ljava/lang/Object;

    check-cast v1, Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {v1}, Landroidx/wear/ambient/AmbientDelegate;->W()J

    move-result-wide v1

    invoke-static {v0}, Lktf;->i(Ljava/util/Collection;)J

    move-result-wide v3

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const v9, 0x7fffffff

    const v6, 0x7fffffff

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkfj;

    instance-of v8, v7, Lkjt;

    if-eqz v8, :cond_1

    check-cast v7, Lkjt;

    iget v7, v7, Lkjt;->d:I

    if-lez v7, :cond_2

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    :goto_2
    new-array v8, v11, [Ljava/lang/Object;

    const-string v11, "Stream capacity must be > 0"

    invoke-static {v10, v11, v8}, Llkj;->z(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_1

    :cond_3
    const-wide/16 v7, 0x0

    cmp-long v5, v3, v7

    if-gtz v5, :cond_4

    if-ne v6, v9, :cond_4

    const/4 v1, -0x1

    goto :goto_4

    :cond_4
    cmp-long v5, v3, v7

    if-lez v5, :cond_5

    div-long/2addr v1, v3

    long-to-int v2, v1

    goto :goto_3

    :cond_5
    const v2, 0x7fffffff

    :goto_3
    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_4
    invoke-static {p1}, Lktf;->i(Ljava/util/Collection;)J

    move-result-wide v2

    invoke-static {}, Lmwn;->D()Lmwl;

    move-result-object v4

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkfj;

    instance-of v7, v6, Lkjt;

    if-eqz v7, :cond_6

    check-cast v6, Lkjt;

    invoke-virtual {v4, v6}, Lmwl;->g(Ljava/lang/Object;)V

    goto :goto_5

    :cond_7
    invoke-virtual {v4}, Lmwl;->f()Lmwn;

    move-result-object v4

    invoke-direct {p0, p2}, Lkpo;->l(Ljava/util/Set;)Lmwn;

    move-result-object v6

    new-instance p2, Lkgq;

    invoke-static {}, Lmwn;->D()Lmwl;

    move-result-object v5

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkfj;

    instance-of v8, v7, Lkju;

    if-eqz v8, :cond_8

    check-cast v7, Lkju;

    invoke-virtual {v5, v7}, Lmwl;->g(Ljava/lang/Object;)V

    goto :goto_6

    :cond_9
    invoke-virtual {v5}, Lmwl;->f()Lmwn;

    move-result-object v5

    invoke-direct {p0, v2, v3, v1, v4}, Lkpo;->k(JILmwn;)Lmrl;

    move-result-object v8

    move-object v2, p2

    move-object v3, v0

    move v7, v1

    invoke-direct/range {v2 .. v8}, Lkgq;-><init>(Lmwn;Lmwn;Lmwn;Lmwn;ILmrl;)V

    iget-object p1, p0, Lkpo;->e:Ljava/lang/Object;

    invoke-interface {p1}, Lkbc;->f()V

    iget-object p1, p0, Lkpo;->c:Ljava/lang/Object;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lkpo;->d:Ljava/lang/Object;

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v11

    aput-object v0, v3, v10

    iget-wide v4, p2, Lkgq;->f:J

    long-to-double v4, v4

    const-wide/high16 v6, 0x4130000000000000L    # 1048576.0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/4 v4, 0x2

    aput-object v0, v3, v4

    if-ltz v1, :cond_b

    if-ne v1, v9, :cond_a

    goto :goto_7

    :cond_a
    iget v0, p2, Lkgq;->e:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " with "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " frames max"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_b
    :goto_7
    const-string v0, ""

    :goto_8
    const/4 v1, 0x3

    aput-object v0, v3, v1

    const-string v0, "Created %-10s from %s %.2f MiB/frame%s"

    invoke-static {v2, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lkaq;->f(Ljava/lang/String;)V

    return-object p2
.end method

.method public final e(Ljava/util/Set;)Liom;
    .locals 9

    new-instance v8, Liom;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lkpo;->f:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ldhi;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lkpo;->e:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lkbc;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lkpo;->d:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/util/concurrent/Executor;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lkpo;->b:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lkpo;->c:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ldbf;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lkpo;->a:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljvs;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, v8

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Liom;-><init>(Ljava/util/Set;Ldhi;Lkbc;Ljava/util/concurrent/Executor;Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;Ldbf;Ljvs;)V

    return-object v8
.end method

.method public final f(JLdyy;Ljava/lang/String;)Lgxr;
    .locals 7

    iget-object v0, p0, Lkpo;->a:Ljava/lang/Object;

    sget-object v1, Lgzd;->at:Lgzr;

    invoke-interface {v0, v1}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lgyb;->b:Lgyb;

    move-object v6, v0

    goto :goto_0

    :cond_0
    sget-object v0, Lgyb;->a:Lgyb;

    move-object v6, v0

    :goto_0
    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lkpo;->g(JLdyy;Ljava/lang/String;Lgyb;)Lgxr;

    move-result-object p1

    return-object p1
.end method

.method public final g(JLdyy;Ljava/lang/String;Lgyb;)Lgxr;
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lkpo;->e:Ljava/lang/Object;

    const-string v2, "Create fileGroup"

    invoke-interface {v1, v2}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v6, v0, Lkpo;->f:Ljava/lang/Object;

    iget-object v13, v0, Lkpo;->c:Ljava/lang/Object;

    iget-object v4, v0, Lkpo;->e:Ljava/lang/Object;

    iget-object v1, v0, Lkpo;->b:Ljava/lang/Object;

    iget-object v2, v0, Lkpo;->d:Ljava/lang/Object;

    new-instance v11, Lgxo;

    check-cast v2, Lkqo;

    move-object v3, v11

    move-object/from16 v5, p5

    move-object v7, v2

    move-object/from16 v8, p4

    move-wide/from16 v9, p1

    invoke-direct/range {v3 .. v10}, Lgxo;-><init>(Lkbc;Lgyb;Lkqb;Lkqo;Ljava/lang/String;J)V

    invoke-static {v11}, Llkj;->D(Lmrl;)Lmrl;

    move-result-object v8

    new-instance v3, Lgxr;

    sget-object v4, Ldho;->a:Ldhk;

    invoke-interface {v1}, Ldhi;->e()V

    iget-object v15, v2, Lkqo;->a:Landroid/content/Context;

    move-object v7, v3

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v14, p5

    invoke-direct/range {v7 .. v15}, Lgxr;-><init>(Lmrl;JLdyy;Ljava/lang/String;Lkaq;Lgyb;Landroid/content/Context;)V

    iget-object v1, v0, Lkpo;->c:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Created "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lkaq;->f(Ljava/lang/String;)V

    iget-object v1, v0, Lkpo;->e:Ljava/lang/Object;

    invoke-interface {v1}, Lkbc;->f()V

    return-object v3
.end method

.method public final h(J)Lgxr;
    .locals 2

    iget-object v0, p0, Lkpo;->b:Ljava/lang/Object;

    sget-object v1, Ldho;->a:Ldhk;

    invoke-interface {v0}, Ldhi;->e()V

    sget-object v0, Ldyy;->f:Ldyy;

    const-string v1, "NIGHT"

    invoke-virtual {p0, p1, p2, v0, v1}, Lkpo;->f(JLdyy;Ljava/lang/String;)Lgxr;

    move-result-object p1

    return-object p1
.end method

.method public final i(J)Lgxr;
    .locals 2

    iget-object v0, p0, Lkpo;->b:Ljava/lang/Object;

    sget-object v1, Ldho;->a:Ldhk;

    invoke-interface {v0}, Ldhi;->e()V

    sget-object v0, Ldyy;->a:Ldyy;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lkpo;->f(JLdyy;Ljava/lang/String;)Lgxr;

    move-result-object p1

    return-object p1
.end method

.method public final j(I)Lgkq;
    .locals 9

    new-instance v8, Lgkq;

    iget-object v1, p0, Lkpo;->c:Ljava/lang/Object;

    iget-object v2, p0, Lkpo;->a:Ljava/lang/Object;

    iget-object v0, p0, Lkpo;->b:Ljava/lang/Object;

    iget-object v4, p0, Lkpo;->d:Ljava/lang/Object;

    iget-object v5, p0, Lkpo;->f:Ljava/lang/Object;

    iget-object v3, p0, Lkpo;->e:Ljava/lang/Object;

    move-object v7, v3

    check-cast v7, Ljava/lang/String;

    move-object v3, v0

    check-cast v3, Ljuf;

    move-object v0, v8

    move v6, p1

    invoke-direct/range {v0 .. v7}, Lgkq;-><init>(Lken;Ljvs;Ljuf;Ljava/util/concurrent/Executor;Ljava/util/Map;ILjava/lang/String;)V

    return-object v8
.end method
