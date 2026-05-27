.class public final synthetic Ldvn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ldvr;

.field public final synthetic b:Lnph;


# direct methods
.method public synthetic constructor <init>(Ldvr;Lnph;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldvn;->a:Ldvr;

    iput-object p2, p0, Ldvn;->b:Lnph;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Ldvn;->a:Ldvr;

    iget-object v1, p0, Ldvn;->b:Lnph;

    iget-object v2, v0, Ldvr;->h:Lnou;

    invoke-interface {v2}, Lnou;->isDone()Z

    move-result v2

    const-string v3, "launchPhotos"

    if-eqz v2, :cond_0

    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v2, "Photos Launch was already cancelled."

    invoke-direct {v0, v2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    sget-object v2, Ldvr;->a:Lnak;

    invoke-virtual {v2}, Lnaf;->c()Lnaz;

    move-result-object v2

    const/16 v4, 0x483

    invoke-static {v2, v3, v4, v0}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    invoke-virtual {v1, v0}, Lnph;->a(Ljava/lang/Throwable;)Z

    return-void

    :cond_0
    iget-object v2, v0, Ldvr;->c:Logd;

    invoke-interface {v2}, Logd;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lchj;

    invoke-virtual {v0, v2}, Ldvr;->f(Lchj;)Lchd;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Ldvr;->g(Lchd;)Lnou;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnph;->f(Lnou;)Z

    return-void

    :cond_1
    iget-object v2, v0, Ldvr;->g:Lgzm;

    sget-object v4, Lgzd;->at:Lgzr;

    invoke-interface {v2, v4}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ldvr;->a()Lnou;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnph;->f(Lnou;)Z

    return-void

    :cond_2
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v2, "filmstrip item was null"

    invoke-direct {v0, v2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    sget-object v2, Ldvr;->a:Lnak;

    invoke-virtual {v2}, Lnaf;->b()Lnaz;

    move-result-object v2

    const/16 v4, 0x482

    invoke-static {v2, v3, v4, v0}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    invoke-virtual {v1, v0}, Lnph;->a(Ljava/lang/Throwable;)Z

    return-void
.end method
