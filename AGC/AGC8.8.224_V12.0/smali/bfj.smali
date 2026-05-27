.class public final Lbfj;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lbfj;->a:Ljava/util/Map;

    new-instance v1, Lbfs;

    invoke-direct {v1}, Lbfs;-><init>()V

    invoke-virtual {v1}, Lbfs;->q()V

    const-string v2, "dc:contributor"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "dc:language"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "dc:publisher"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "dc:relation"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "dc:subject"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "dc:type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lbfs;

    invoke-direct {v1}, Lbfs;-><init>()V

    invoke-virtual {v1}, Lbfs;->q()V

    invoke-virtual {v1}, Lbfs;->t()V

    const-string v2, "dc:creator"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "dc:date"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lbfs;

    invoke-direct {v1}, Lbfs;-><init>()V

    invoke-virtual {v1}, Lbfs;->q()V

    invoke-virtual {v1}, Lbfs;->t()V

    invoke-virtual {v1}, Lbfs;->s()V

    invoke-virtual {v1}, Lbfs;->r()V

    const-string v2, "dc:description"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "dc:rights"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "dc:title"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Lbfi;Lbfi;Z)V
    .locals 4

    iget-object v0, p0, Lbfi;->b:Ljava/lang/String;

    iget-object v1, p1, Lbfi;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0xcb

    const-string v2, "Mismatch between alias and base nodes"

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lbfi;->a()I

    move-result v0

    invoke-virtual {p1}, Lbfi;->a()I

    move-result v3

    if-ne v0, v3, :cond_4

    if-nez p2, :cond_1

    iget-object p2, p0, Lbfi;->a:Ljava/lang/String;

    iget-object v0, p1, Lbfi;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lbfi;->g()Lbfs;

    move-result-object p2

    invoke-virtual {p1}, Lbfi;->g()Lbfs;

    move-result-object v0

    invoke-virtual {p2, v0}, Lbfq;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lbfi;->b()I

    move-result p2

    invoke-virtual {p1}, Lbfi;->b()I

    move-result v0

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lbeq;

    invoke-direct {p0, v2, v1}, Lbeq;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lbfi;->h()Ljava/util/Iterator;

    move-result-object p2

    invoke-virtual {p1}, Lbfi;->h()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbfi;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbfi;

    invoke-static {v1, v3, v2}, Lbfj;->a(Lbfi;Lbfi;Z)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lbfi;->i()Ljava/util/Iterator;

    move-result-object p0

    invoke-virtual {p1}, Lbfi;->i()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lbfi;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfi;

    invoke-static {p2, v0, v2}, Lbfj;->a(Lbfi;Lbfi;Z)V

    goto :goto_2

    :cond_3
    return-void

    :cond_4
    new-instance p0, Lbeq;

    invoke-direct {p0, v2, v1}, Lbeq;-><init>(Ljava/lang/String;I)V

    goto :goto_4

    :goto_3
    throw p0

    :goto_4
    goto :goto_3
.end method

.method public static b(Lbfi;)V
    .locals 5

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Lbfi;->g()Lbfs;

    move-result-object v0

    invoke-virtual {v0}, Lbfs;->d()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lbfi;->g()Lbfs;

    move-result-object v0

    invoke-virtual {v0}, Lbfs;->t()V

    invoke-virtual {v0}, Lbfs;->s()V

    invoke-virtual {v0}, Lbfs;->r()V

    invoke-virtual {p0}, Lbfi;->h()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfi;

    invoke-virtual {v0}, Lbfi;->g()Lbfs;

    move-result-object v1

    invoke-virtual {v1}, Lbfs;->l()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lbfi;->g()Lbfs;

    move-result-object v1

    invoke-virtual {v1}, Lbfs;->c()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lbfi;->b:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    new-instance v1, Lbfi;

    const-string v2, "x-repair"

    const/4 v3, 0x0

    const-string v4, "xml:lang"

    invoke-direct {v1, v4, v2, v3}, Lbfi;-><init>(Ljava/lang/String;Ljava/lang/String;Lbfs;)V

    invoke-virtual {v0, v1}, Lbfi;->m(Lbfi;)V

    goto :goto_0

    :cond_4
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_5
    return-void

    :cond_6
    :goto_2
    return-void
.end method

.method public static c(Ljava/util/Iterator;Lbfi;Lbfi;)V
    .locals 4

    invoke-virtual {p2}, Lbfi;->g()Lbfs;

    move-result-object v0

    invoke-virtual {v0}, Lbfs;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lbfi;->g()Lbfs;

    move-result-object v0

    invoke-virtual {v0}, Lbfs;->c()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lbfi;

    const-string v1, "x-default"

    const/4 v2, 0x0

    const-string v3, "xml:lang"

    invoke-direct {v0, v3, v1, v2}, Lbfi;-><init>(Ljava/lang/String;Ljava/lang/String;Lbfs;)V

    invoke-virtual {p1, v0}, Lbfi;->m(Lbfi;)V

    goto :goto_0

    :cond_0
    new-instance p0, Lbeq;

    const-string p1, "Alias to x-default already has a language qualifier"

    const/16 p2, 0xcb

    invoke-direct {p0, p1, p2}, Lbeq;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    const-string p0, "[]"

    iput-object p0, p1, Lbfi;->a:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lbfi;->k(Lbfi;)V

    return-void
.end method
