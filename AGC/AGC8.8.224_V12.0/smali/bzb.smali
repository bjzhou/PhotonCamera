.class public final Lbzb;
.super Lbw;


# instance fields
.field public final a:Lbyi;

.field private final b:Ljava/util/Set;

.field private c:Lbzb;


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lbyi;

    invoke-direct {v0}, Lbyi;-><init>()V

    invoke-direct {p0}, Lbw;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lbzb;->b:Ljava/util/Set;

    iput-object v0, p0, Lbzb;->a:Lbyi;

    return-void
.end method

.method private final c()V
    .locals 1

    iget-object v0, p0, Lbzb;->c:Lbzb;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lbzb;->b:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lbzb;->c:Lbzb;

    :cond_0
    return-void
.end method


# virtual methods
.method public final onAttach(Landroid/content/Context;)V
    .locals 6

    const-string v0, "com.bumptech.glide.manager"

    invoke-super {p0, p1}, Lbw;->onAttach(Landroid/content/Context;)V

    move-object p1, p0

    :goto_0
    iget-object v1, p1, Lbw;->B:Lbw;

    if-eqz v1, :cond_0

    move-object p1, v1

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lbw;->y:Lcq;

    const/4 v1, 0x5

    const-string v2, "SupportRMFragment"

    if-nez p1, :cond_2

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "Unable to register fragment with root, ancestor detached"

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lbw;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0}, Lbzb;->c()V

    invoke-static {v3}, Lbol;->b(Landroid/content/Context;)Lbol;

    move-result-object v3

    iget-object v3, v3, Lbol;->d:Lbyu;

    iget-object v4, v3, Lbyu;->b:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbzb;

    if-nez v4, :cond_3

    invoke-virtual {p1, v0}, Lcq;->e(Ljava/lang/String;)Lbw;

    move-result-object v4

    check-cast v4, Lbzb;

    if-nez v4, :cond_3

    new-instance v4, Lbzb;

    invoke-direct {v4}, Lbzb;-><init>()V

    iget-object v5, v3, Lbyu;->b:Ljava/util/Map;

    invoke-interface {v5, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcq;->i()Lcx;

    move-result-object v5

    invoke-virtual {v5, v4, v0}, Lcx;->o(Lbw;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcx;->i()V

    iget-object v0, v3, Lbyu;->c:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v0, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    :cond_3
    :goto_1
    iput-object v4, p0, Lbzb;->c:Lbzb;

    invoke-virtual {p0, v4}, Lbzb;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lbzb;->c:Lbzb;

    iget-object p1, p1, Lbzb;->b:Ljava/util/Set;

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "Unable to register fragment with root"

    invoke-static {v2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_4
    return-void
.end method

.method public final onDestroy()V
    .locals 1

    invoke-super {p0}, Lbw;->onDestroy()V

    iget-object v0, p0, Lbzb;->a:Lbyi;

    invoke-virtual {v0}, Lbyi;->b()V

    invoke-direct {p0}, Lbzb;->c()V

    return-void
.end method

.method public final onDetach()V
    .locals 0

    invoke-super {p0}, Lbw;->onDetach()V

    invoke-direct {p0}, Lbzb;->c()V

    return-void
.end method

.method public final onStart()V
    .locals 1

    invoke-super {p0}, Lbw;->onStart()V

    iget-object v0, p0, Lbzb;->a:Lbyi;

    invoke-virtual {v0}, Lbyi;->c()V

    return-void
.end method

.method public final onStop()V
    .locals 1

    invoke-super {p0}, Lbw;->onStop()V

    iget-object v0, p0, Lbzb;->a:Lbyi;

    invoke-virtual {v0}, Lbyi;->d()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-super {p0}, Lbw;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbw;->B:Lbw;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :cond_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "{parent="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
