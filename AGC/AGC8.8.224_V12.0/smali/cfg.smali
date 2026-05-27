.class public final Lcfg;
.super Ljava/lang/Object;

# interfaces
.implements Lces;


# instance fields
.field private final a:Ldhi;

.field private final b:Lcfj;

.field private c:Lmqp;

.field private d:Lmqp;


# direct methods
.method public constructor <init>(Lcfj;Ldhi;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lmpx;->a:Lmpx;

    iput-object v0, p0, Lcfg;->c:Lmqp;

    iput-object v0, p0, Lcfg;->d:Lmqp;

    iput-object p2, p0, Lcfg;->a:Ldhi;

    iput-object p1, p0, Lcfg;->b:Lcfj;

    return-void
.end method


# virtual methods
.method public final a(Lkou;)V
    .locals 5

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->LOGICAL_MULTI_CAMERA_ACTIVE_PHYSICAL_ID:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v0}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_6

    iget-object v0, p0, Lcfg;->d:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcfg;->c:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcfg;->c:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    invoke-static {p1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    iput-object v0, p0, Lcfg;->c:Lmqp;

    iget-object v0, p0, Lcfg;->b:Lcfj;

    iget-object v1, p0, Lcfg;->d:Lmqp;

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkll;

    iget-object v2, v0, Lcfj;->h:Landroidx/wear/ambient/AmbientDelegate;

    iget-object v2, v2, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    check-cast v2, Lcfk;

    iget-object v2, v2, Lcfk;->a:Ljava/lang/String;

    invoke-static {v1, p1}, Lcfl;->e(Lkll;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :goto_1
    iget-object v2, v0, Lcfj;->a:Lcfl;

    invoke-static {v1, p1}, Lcfl;->e(Lkll;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcfk;

    iget-object v3, v2, Lcfl;->d:Ligo;

    const-string v4, ""

    invoke-virtual {v3, p1, v4}, Ligo;->s(Ljava/lang/String;Ljava/lang/String;)Ljwb;

    move-result-object v3

    iget-object v2, v2, Lcfl;->a:Ldhi;

    invoke-direct {v1, p1, v3, v2}, Lcfk;-><init>(Ljava/lang/String;Ljwb;Ldhi;)V

    iget-object p1, v1, Lcfk;->a:Ljava/lang/String;

    iget-object v2, v0, Lcfj;->h:Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {v2, v1}, Landroidx/wear/ambient/AmbientDelegate;->l(Lcfk;)V

    const/4 v1, 0x2

    iput v1, v0, Lcfj;->g:I

    iget-object v1, v0, Lcfj;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v0, Lcfj;->b:Ljava/util/Map;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v1, v0, Lcfj;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, v0, Lcfj;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object p1, v0, Lcfj;->d:Ljwb;

    iget-object v1, v0, Lcfj;->i:Lbkc;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljwb;->bn(Ljava/lang/Object;)V

    :cond_5
    invoke-virtual {v0}, Lcfj;->h()V

    return-void

    :cond_6
    :goto_2
    return-void
.end method

.method public final b()Lceq;
    .locals 2

    new-instance v0, Lcff;

    iget-object v1, p0, Lcfg;->a:Ldhi;

    invoke-direct {v0, v1}, Lcff;-><init>(Ldhi;)V

    return-object v0
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final d(Lkll;)V
    .locals 0

    invoke-static {p1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object p1

    iput-object p1, p0, Lcfg;->d:Lmqp;

    return-void
.end method

.method public final e(Lkli;)V
    .locals 0

    return-void
.end method

.method public final f(Lcey;)V
    .locals 0

    return-void
.end method
