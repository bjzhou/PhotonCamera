.class public final Lljm;
.super Llgk;


# instance fields
.field final synthetic e:Logd;

.field final synthetic f:Logd;


# direct methods
.method public constructor <init>(Lmqp;Logd;Landroid/content/Context;Logd;Logd;)V
    .locals 0

    iput-object p4, p0, Lljm;->e:Logd;

    iput-object p5, p0, Lljm;->f:Logd;

    const-string p4, "CrashMetric"

    invoke-direct {p0, p4, p1, p2, p3}, Llgk;-><init>(Ljava/lang/String;Lmqp;Logd;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a(Lozv;)Lmwn;
    .locals 3

    iget v0, p1, Lozv;->a:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_8

    iget-object v0, p0, Lljm;->e:Logd;

    invoke-interface {v0}, Logd;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object p1, p1, Lozv;->g:Lozh;

    if-nez p1, :cond_0

    sget-object p1, Lozh;->l:Lozh;

    :cond_0
    iget-object p1, p1, Lozh;->h:Lnlx;

    if-nez p1, :cond_1

    sget-object p1, Lnlx;->f:Lnlx;

    :cond_1
    invoke-static {}, Lmwn;->D()Lmwl;

    move-result-object v0

    iget-object v1, p1, Lnlx;->d:Lnlu;

    if-nez v1, :cond_2

    sget-object v1, Lnlu;->f:Lnlu;

    :cond_2
    iget-object v1, v1, Lnlu;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmwl;->g(Ljava/lang/Object;)V

    iget-object v1, p1, Lnlx;->e:Lnxa;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnlu;

    iget-object v2, v2, Lnlu;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lmwl;->g(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget v1, p1, Lnlx;->b:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    iget-object p1, p1, Lnlx;->c:Ljava/lang/Object;

    check-cast p1, Lnlv;

    goto :goto_1

    :cond_4
    sget-object p1, Lnlv;->b:Lnlv;

    :goto_1
    iget-object p1, p1, Lnlv;->a:Lnxa;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnlw;

    iget-object v1, v1, Lnlw;->b:Lnlu;

    if-nez v1, :cond_5

    sget-object v1, Lnlu;->f:Lnlu;

    :cond_5
    iget-object v1, v1, Lnlu;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmwl;->g(Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    invoke-virtual {v0}, Lmwl;->f()Lmwn;

    move-result-object p1

    return-object p1

    :cond_7
    iget-object p1, p0, Lljm;->f:Logd;

    invoke-interface {p1}, Logd;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lmwn;->F(Ljava/util/Collection;)Lmwn;

    move-result-object p1

    return-object p1

    :cond_8
    sget-object p1, Lmza;->a:Lmza;

    return-object p1
.end method
