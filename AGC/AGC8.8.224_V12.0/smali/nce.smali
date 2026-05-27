.class public final Lnce;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lnca;

.field private static final b:Lnbz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lncc;

    invoke-direct {v0}, Lncc;-><init>()V

    sput-object v0, Lnce;->a:Lnca;

    new-instance v0, Lncd;

    invoke-direct {v0}, Lncd;-><init>()V

    sput-object v0, Lnce;->b:Lnbz;

    return-void
.end method

.method public static a(Ljava/util/Set;)Lncb;
    .locals 5

    sget-object v0, Lnce;->a:Lnca;

    new-instance v1, Lnbx;

    invoke-direct {v1, v0}, Lnbx;-><init>(Lnca;)V

    sget-object v0, Lnce;->b:Lnbz;

    iput-object v0, v1, Lnbx;->f:Lnbz;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbc;

    const-string v2, "key"

    invoke-static {v0, v2}, Lndd;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v3, v0, Lnbc;->b:Z

    if-eqz v3, :cond_0

    sget-object v3, Lnbx;->b:Lnbz;

    invoke-static {v0, v2}, Lndd;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v2, v0, Lnbc;->b:Z

    const-string v4, "key must be repeating"

    invoke-static {v2, v4}, Lndd;->f(ZLjava/lang/String;)V

    iget-object v2, v1, Lnbx;->c:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Lnbx;->d:Ljava/util/Map;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sget-object v3, Lnbx;->a:Lnca;

    invoke-static {v0, v2}, Lndd;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v1, Lnbx;->d:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Lnbx;->c:Ljava/util/Map;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance p0, Lnby;

    invoke-direct {p0, v1}, Lnby;-><init>(Lnbx;)V

    return-object p0
.end method
