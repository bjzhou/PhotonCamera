.class public final synthetic Lnny;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lnpo;

.field public final synthetic b:Lnph;

.field public final synthetic c:Lnou;

.field public final synthetic d:Lnou;

.field public final synthetic e:Lnob;


# direct methods
.method public synthetic constructor <init>(Lnpo;Lnph;Lnou;Lnou;Lnob;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnny;->a:Lnpo;

    iput-object p2, p0, Lnny;->b:Lnph;

    iput-object p3, p0, Lnny;->c:Lnou;

    iput-object p4, p0, Lnny;->d:Lnou;

    iput-object p5, p0, Lnny;->e:Lnob;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lnny;->a:Lnpo;

    iget-object v1, p0, Lnny;->b:Lnph;

    iget-object v2, p0, Lnny;->c:Lnou;

    iget-object v3, p0, Lnny;->d:Lnou;

    iget-object v4, p0, Lnny;->e:Lnob;

    invoke-virtual {v0}, Lnnb;->isDone()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1, v2}, Lnnb;->f(Lnou;)Z

    return-void

    :cond_0
    invoke-interface {v3}, Lnou;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lnoa;->a:Lnoa;

    sget-object v2, Lnoa;->b:Lnoa;

    invoke-virtual {v4, v1, v2}, Lnob;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnnb;->cancel(Z)Z

    :cond_1
    return-void
.end method
