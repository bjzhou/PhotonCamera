.class public final synthetic Lnng;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lnni;

.field public final synthetic b:Lnou;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lnni;Lnou;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnng;->a:Lnni;

    iput-object p2, p0, Lnng;->b:Lnou;

    iput p3, p0, Lnng;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lnng;->a:Lnni;

    iget-object v1, p0, Lnng;->b:Lnou;

    iget v2, p0, Lnng;->c:I

    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v1}, Lnou;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_0

    iput-object v3, v0, Lnni;->a:Lmvm;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnnb;->cancel(Z)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2, v1}, Lnni;->i(ILjava/util/concurrent/Future;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {v0, v3}, Lnni;->j(Lmvm;)V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0, v3}, Lnni;->j(Lmvm;)V

    throw v1
.end method
