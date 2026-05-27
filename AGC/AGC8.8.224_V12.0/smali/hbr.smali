.class public final synthetic Lhbr;
.super Ljava/lang/Object;

# interfaces
.implements Lhip;


# instance fields
.field public final synthetic a:Lnph;

.field public final synthetic b:Logd;

.field public final synthetic c:Logd;

.field public final synthetic d:Lnph;

.field public final synthetic e:Logd;

.field public final synthetic f:Ljuh;

.field public final synthetic g:Lcdi;


# direct methods
.method public synthetic constructor <init>(Lnph;Logd;Logd;Lnph;Lcdi;Logd;Ljuh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhbr;->a:Lnph;

    iput-object p2, p0, Lhbr;->b:Logd;

    iput-object p3, p0, Lhbr;->c:Logd;

    iput-object p4, p0, Lhbr;->d:Lnph;

    iput-object p5, p0, Lhbr;->g:Lcdi;

    iput-object p6, p0, Lhbr;->e:Logd;

    iput-object p7, p0, Lhbr;->f:Ljuh;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lhbr;->a:Lnph;

    iget-object v1, p0, Lhbr;->b:Logd;

    iget-object v2, p0, Lhbr;->c:Logd;

    iget-object v3, p0, Lhbr;->d:Lnph;

    iget-object v4, p0, Lhbr;->g:Lcdi;

    iget-object v5, p0, Lhbr;->e:Logd;

    iget-object v6, p0, Lhbr;->f:Ljuh;

    invoke-interface {v1}, Logd;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhcz;

    invoke-virtual {v0, v1}, Lnph;->e(Ljava/lang/Object;)Z

    invoke-interface {v2}, Logd;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhcq;

    invoke-virtual {v3, v0}, Lnph;->e(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lcdi;->i()Ljuf;

    move-result-object v0

    invoke-interface {v5}, Logd;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhdk;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lhbi;

    const/4 v3, 0x3

    invoke-direct {v2, v1, v3}, Lhbi;-><init>(Lhdk;I)V

    invoke-static {v2, v6}, Lnsy;->E(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v1

    new-instance v2, Lhbq;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lhbq;-><init>(Ljava/util/concurrent/Future;I)V

    invoke-virtual {v0, v2}, Ljuf;->d(Lkad;)V

    return-void
.end method
