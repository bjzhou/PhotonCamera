.class public final Lcom/google/android/libraries/phenotype/client/stable/PhenotypeUpdateBackgroundBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const-string v0, "com.google.android.gms.phenotype.PACKAGE_NAME"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5

    const-string v0, "../"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "/.."

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1}, Llon;->a(Landroid/content/Context;)Llon;

    move-result-object v0

    invoke-static {p1}, Llpq;->a(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Llpq;

    if-eqz p1, :cond_3

    iget v1, p1, Llpq;->e:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/libraries/phenotype/client/stable/PhenotypeUpdateBackgroundBroadcastReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v1

    invoke-static {v0}, Llpt;->b(Llon;)Llst;

    move-result-object v2

    invoke-virtual {v2}, Llst;->a()Lnou;

    move-result-object v2

    invoke-static {v2}, Lnoo;->q(Lnou;)Lnoo;

    move-result-object v2

    new-instance v3, Llps;

    const/4 v4, 0x0

    invoke-direct {v3, p2, v4}, Llps;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Llon;->b()Lnox;

    move-result-object v5

    invoke-static {v2, v3, v5}, Lnnf;->i(Lnou;Lmqi;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v2

    invoke-static {v2}, Lnoo;->q(Lnou;)Lnoo;

    move-result-object v2

    new-instance v3, Llpw;

    invoke-direct {v3, p1, p2, v0, v4}, Llpw;-><init>(Llpq;Ljava/lang/String;Llon;I)V

    invoke-virtual {v0}, Llon;->b()Lnox;

    move-result-object p1

    invoke-static {v2, v3, p1}, Lnnf;->j(Lnou;Lnno;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object p1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Llon;->b()Lnox;

    move-result-object v3

    const-wide/16 v4, 0x19

    invoke-static {p1, v4, v5, v2, v3}, Lnsy;->I(Lnou;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lnou;

    move-result-object p1

    check-cast p1, Lnoo;

    new-instance v2, Lkgc;

    const/16 v3, 0x9

    invoke-direct {v2, p1, p2, v1, v3}, Lkgc;-><init>(Lnoo;Ljava/lang/String;Landroid/content/BroadcastReceiver$PendingResult;I)V

    invoke-virtual {v0}, Llon;->b()Lnox;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lnnb;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void

    :cond_3
    :goto_0
    return-void

    :cond_4
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Got an invalid config package for P/H that includes \'..\': "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ". Exiting."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PhenotypeBackgroundRecv"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    return-void
.end method
