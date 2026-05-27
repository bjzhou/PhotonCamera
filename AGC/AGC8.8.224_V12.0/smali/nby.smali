.class final Lnby;
.super Lncb;


# instance fields
.field private final a:Ljava/util/Map;

.field private final b:Ljava/util/Map;

.field private final c:Lnbz;


# direct methods
.method public constructor <init>(Lnbx;)V
    .locals 3

    invoke-direct {p0}, Lncb;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnby;->a:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lnby;->b:Ljava/util/Map;

    iget-object v2, p1, Lnbx;->c:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object v0, p1, Lnbx;->d:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object p1, p1, Lnbx;->f:Lnbz;

    iput-object p1, p0, Lnby;->c:Lnbz;

    return-void
.end method


# virtual methods
.method protected final a(Lnbc;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lnby;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnca;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lnca;->a(Lnbc;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p1, p2, p3}, Lnbc;->e(Ljava/lang/Object;Lnbb;)V

    return-void
.end method

.method protected final b(Lnbc;Ljava/util/Iterator;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lnby;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbz;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lnbz;->a(Lnbc;Ljava/util/Iterator;Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lnby;->c:Lnbz;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnby;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2, p3}, Lnbc;->f(Ljava/util/Iterator;Lnbb;)V

    return-void

    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lncb;->a(Lnbc;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    return-void
.end method
