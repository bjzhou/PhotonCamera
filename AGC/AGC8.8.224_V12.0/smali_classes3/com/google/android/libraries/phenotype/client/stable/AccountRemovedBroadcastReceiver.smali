.class public final Lcom/google/android/libraries/phenotype/client/stable/AccountRemovedBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const-string v0, "android.accounts.action.ACCOUNT_REMOVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "accountType"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.google.work"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "cn.google"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "__logged_out_type"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "authAccount"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "../"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "/.."

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {}, Llon;->c()V

    invoke-static {p1}, Llon;->a(Landroid/content/Context;)Llon;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/libraries/phenotype/client/stable/AccountRemovedBroadcastReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Lnou;

    invoke-static {v0}, Llpt;->b(Llon;)Llst;

    move-result-object v3

    new-instance v4, Llps;

    const/4 v5, 0x3

    invoke-direct {v4, p2, v5}, Llps;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Llon;->b()Lnox;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Llst;->b(Lmqi;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v3

    invoke-static {v3}, Lnoo;->q(Lnou;)Lnoo;

    move-result-object v3

    new-instance v4, Lcpq;

    const/4 v5, 0x5

    invoke-direct {v4, v0, p2, v5}, Lcpq;-><init>(Llon;Ljava/lang/String;I)V

    invoke-virtual {v0}, Llon;->b()Lnox;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lnnf;->j(Lnou;Lnno;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v3

    const-class v4, Ljava/io/IOException;

    sget-object v5, Lhop;->s:Lhop;

    sget-object v6, Lnnv;->a:Lnnv;

    invoke-static {v3, v4, v5, v6}, Lnml;->i(Lnou;Ljava/lang/Class;Lmqi;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0}, Llon;->b()Lnox;

    move-result-object v0

    new-instance v3, Llkq;

    const/4 v4, 0x4

    invoke-direct {v3, p1, p2, v4}, Llkq;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-interface {v0, v3}, Lnox;->a(Ljava/lang/Runnable;)Lnou;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v2, p2

    invoke-static {v2}, Lnsy;->v([Lnou;)Lnom;

    move-result-object p1

    new-instance p2, Lkhk;

    const/16 v0, 0x8

    invoke-direct {p2, v1, v0}, Lkhk;-><init>(Landroid/content/BroadcastReceiver$PendingResult;I)V

    sget-object v0, Lnnv;->a:Lnnv;

    invoke-virtual {p1, p2, v0}, Lnom;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lnou;

    return-void

    :cond_4
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Got an invalid account name for P/H that includes \'..\':"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ". Exiting."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AccountRemovedRecv"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
