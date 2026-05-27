.class public final Llgo;
.super Ljava/lang/Object;

# interfaces
.implements Llnl;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;

.field private final c:Ljava/util/Set;


# direct methods
.method public constructor <init>(Loiw;Loiw;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llgo;->a:Loiw;

    iput-object p2, p0, Llgo;->b:Loiw;

    iput-object p3, p0, Llgo;->c:Ljava/util/Set;

    return-void
.end method

.method private final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Llgo;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1}, Llgo;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static final d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "federatedLearningLastScheduledSession_"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lozv;)Lnou;
    .locals 7

    iget-object v0, p0, Llgo;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llgl;

    iget-object v1, p0, Llgo;->c:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llgk;

    iget-object v3, v2, Llgk;->c:Logd;

    invoke-interface {v3}, Logd;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Logq;

    iget-boolean v3, v3, Logq;->d:Z

    if-eqz v3, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object v3, v2, Llgk;->b:Lmqp;

    invoke-virtual {v3}, Lmqp;->g()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Logd;

    invoke-interface {v3}, Logd;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Llgj;

    invoke-interface {v3}, Llgj;->a()Z

    move-result v3

    goto :goto_1

    :cond_2
    iget-object v3, v2, Llgk;->c:Logd;

    invoke-interface {v3}, Logd;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Logq;

    iget-boolean v3, v3, Logq;->a:Z

    :goto_1
    if-eqz v3, :cond_3

    invoke-virtual {v2, p1}, Llgk;->a(Lozv;)Lmwn;

    move-result-object v3

    invoke-virtual {v3}, Lmwn;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lmvm;->v()Lmvv;

    move-result-object v3

    sget-object v4, Lhop;->p:Lhop;

    invoke-static {v3, v4}, Llyh;->H(Ljava/util/List;Lmqi;)Ljava/util/List;

    move-result-object v3

    iget-object v4, v2, Llgk;->c:Logd;

    invoke-interface {v4}, Logd;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Logq;

    iget-object v4, v4, Logq;->b:Ljava/lang/String;

    iget-object v5, v2, Llgk;->d:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "%PACKAGE_NAME%"

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v2, Llgk;->a:Ljava/lang/String;

    const-string v6, "%METRIC_NAME%"

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v2, Llgk;->c:Logd;

    invoke-interface {v5}, Logd;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Logq;

    iget-object v5, v5, Logq;->c:Ljava/lang/String;

    iget-object v2, v2, Llgk;->a:Ljava/lang/String;

    invoke-interface {v0, v5, v3}, Llgl;->a(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v4}, Llgl;->c(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Llgo;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v0, v3}, Llgl;->b(Ljava/lang/String;)V

    iget-object v3, p0, Llgo;->b:Loiw;

    invoke-interface {v3}, Loiw;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-static {v2}, Llgo;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    :cond_3
    :goto_2
    iget-object v2, v2, Llgk;->a:Ljava/lang/String;

    invoke-direct {p0, v2}, Llgo;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v2}, Llgl;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    sget-object p1, Lnor;->a:Lnou;

    return-object p1
.end method

.method public final b()Loxq;
    .locals 2

    new-instance v0, Loxq;

    const/16 v1, -0xa

    invoke-direct {v0, v1}, Loxq;-><init>(I)V

    return-object v0
.end method
