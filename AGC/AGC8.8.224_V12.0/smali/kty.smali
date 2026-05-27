.class public final Lkty;
.super Ljava/lang/Object;

# interfaces
.implements Lktz;


# instance fields
.field public final a:Lkua;

.field public b:Lcom/google/lens/sdk/PendingIntentConsumer;

.field private final c:Ljava/util/Queue;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lktv;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lkty;->c:Ljava/util/Queue;

    new-instance v0, Lkue;

    invoke-direct {v0, p1, p0, p2}, Lkue;-><init>(Landroid/content/Context;Lktz;Lktv;)V

    iput-object v0, p0, Lkty;->a:Lkua;

    return-void
.end method

.method private final g()Z
    .locals 2

    invoke-virtual {p0}, Lkty;->a()Liun;

    move-result-object v0

    iget v1, v0, Liun;->a:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    iget-object v1, p0, Lkty;->a:Lkua;

    invoke-interface {v1}, Lkua;->a()I

    move-result v1

    iget v0, v0, Liun;->c:I

    if-lt v1, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a()Liun;
    .locals 3

    invoke-static {}, Llho;->t()V

    iget-object v0, p0, Lkty;->a:Lkua;

    invoke-interface {v0}, Lkua;->f()Z

    move-result v0

    const-string v1, "getServerFlags() called before ready."

    invoke-static {v0, v1}, Llho;->u(ZLjava/lang/String;)V

    iget-object v0, p0, Lkty;->a:Lkua;

    invoke-interface {v0}, Lkua;->f()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Liun;->f:Liun;

    return-object v0

    :cond_0
    iget-object v0, p0, Lkty;->a:Lkua;

    invoke-static {}, Llho;->t()V

    check-cast v0, Lkue;

    invoke-virtual {v0}, Lkue;->l()Z

    move-result v1

    const-string v2, "Attempted to use ServerFlags before ready."

    invoke-static {v1, v2}, Llho;->u(ZLjava/lang/String;)V

    iget-object v0, v0, Lkue;->f:Liun;

    return-object v0
.end method

.method public final b()V
    .locals 2

    :goto_0
    iget-object v0, p0, Lkty;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkty;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lktx;

    iget-object v1, p0, Lkty;->a:Lkua;

    invoke-interface {v1}, Lkua;->g()I

    move-result v1

    invoke-interface {v0, v1}, Lktx;->a(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c(Landroid/os/Bundle;)Z
    .locals 5

    invoke-static {}, Llho;->t()V

    iget-object v0, p0, Lkty;->a:Lkua;

    invoke-interface {v0}, Lkua;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Liuf;->c:Liuf;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    check-cast v0, Lnwp;

    iget-object v2, v0, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_1
    iget-object v2, v0, Lnwp;->b:Lnws;

    check-cast v2, Liuf;

    const/16 v3, 0x155

    iput v3, v2, Liuf;->b:I

    iget v3, v2, Liuf;->a:I

    const/4 v4, 0x1

    or-int/2addr v3, v4

    iput v3, v2, Liuf;->a:I

    invoke-virtual {v0}, Lnwn;->i()Lnws;

    move-result-object v0

    check-cast v0, Liuf;

    new-instance v2, Liud;

    invoke-direct {v2, p1}, Liud;-><init>(Landroid/os/Parcelable;)V

    :try_start_0
    iget-object p1, p0, Lkty;->a:Lkua;

    invoke-virtual {v0}, Lnve;->J()[B

    move-result-object v0

    invoke-interface {p1, v0, v2}, Lkua;->c([BLiud;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    const-string v0, "LensServiceBridge"

    const-string v2, "Failed to inject image."

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public final d(Lktx;)V
    .locals 1

    invoke-static {}, Llho;->t()V

    iget-object v0, p0, Lkty;->a:Lkua;

    invoke-interface {v0}, Lkua;->f()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lkty;->a:Lkua;

    invoke-interface {v0}, Lkua;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lkty;->c:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lkty;->a:Lkua;

    check-cast p1, Lkue;

    invoke-virtual {p1}, Lkue;->j()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lkue;->k()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lkue;->m()V

    :cond_1
    return-void

    :cond_2
    :goto_0
    iget-object v0, p0, Lkty;->a:Lkua;

    invoke-interface {v0}, Lkua;->g()I

    move-result v0

    invoke-interface {p1, v0}, Lktx;->a(I)V

    return-void
.end method

.method public final e()I
    .locals 1

    invoke-static {}, Llho;->t()V

    iget-object v0, p0, Lkty;->a:Lkua;

    invoke-interface {v0}, Lkua;->f()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lkty;->a:Lkua;

    invoke-interface {v0}, Lkua;->g()I

    move-result v0

    return v0

    :cond_0
    invoke-direct {p0}, Lkty;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    const/16 v0, 0xd

    return v0
.end method

.method public final f()I
    .locals 2

    invoke-static {}, Llho;->t()V

    iget-object v0, p0, Lkty;->a:Lkua;

    invoke-interface {v0}, Lkua;->f()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lkty;->a:Lkua;

    invoke-interface {v0}, Lkua;->g()I

    move-result v0

    return v0

    :cond_0
    invoke-direct {p0}, Lkty;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lkty;->a()Liun;

    move-result-object v0

    iget v1, v0, Liun;->a:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1

    iget-object v1, p0, Lkty;->a:Lkua;

    invoke-interface {v1}, Lkua;->a()I

    move-result v1

    iget v0, v0, Liun;->e:I

    if-lt v1, v0, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    const/16 v0, 0xd

    return v0
.end method
