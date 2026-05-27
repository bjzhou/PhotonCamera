.class public final Lllf;
.super Llgk;


# instance fields
.field final synthetic e:Lmrd;


# direct methods
.method public constructor <init>(Lmqp;Logd;Landroid/content/Context;Lmrd;)V
    .locals 0

    iput-object p4, p0, Lllf;->e:Lmrd;

    const-string p4, "NetworkMetric"

    invoke-direct {p0, p4, p1, p2, p3}, Llgk;-><init>(Ljava/lang/String;Lmqp;Logd;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a(Lozv;)Lmwn;
    .locals 3

    iget v0, p1, Lozv;->a:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_2

    invoke-static {}, Lmwn;->D()Lmwl;

    move-result-object v0

    iget-object p1, p1, Lozv;->f:Loyt;

    if-nez p1, :cond_0

    sget-object p1, Loyt;->b:Loyt;

    :cond_0
    iget-object p1, p1, Loyt;->a:Lnxa;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Loys;

    iget-object v2, p0, Lllf;->e:Lmrd;

    iget-object v1, v1, Loys;->d:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lmrd;->d(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmwl;->h(Ljava/lang/Iterable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lmwl;->f()Lmwn;

    move-result-object p1

    return-object p1

    :cond_2
    sget-object p1, Lmza;->a:Lmza;

    return-object p1
.end method
