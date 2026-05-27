.class public final Llly;
.super Llgk;


# instance fields
.field final synthetic e:Lmrd;


# direct methods
.method public constructor <init>(Lmqp;Logd;Landroid/content/Context;Lmrd;)V
    .locals 0

    iput-object p4, p0, Llly;->e:Lmrd;

    const-string p4, "StorageMetric"

    invoke-direct {p0, p4, p1, p2, p3}, Llgk;-><init>(Ljava/lang/String;Lmqp;Logd;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a(Lozv;)Lmwn;
    .locals 3

    iget v0, p1, Lozv;->a:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_2

    invoke-static {}, Lmwn;->D()Lmwl;

    move-result-object v0

    iget-object p1, p1, Lozv;->h:Lozq;

    if-nez p1, :cond_0

    sget-object p1, Lozq;->k:Lozq;

    :cond_0
    iget-object p1, p1, Lozq;->j:Lnxa;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lozp;

    iget-object v2, p0, Llly;->e:Lmrd;

    iget-object v1, v1, Lozp;->b:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lmrd;->f(Ljava/lang/CharSequence;)Ljava/util/List;

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
