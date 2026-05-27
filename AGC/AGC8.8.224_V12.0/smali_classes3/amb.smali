.class public final Lamb;
.super Lalz;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lalx;->a:Lalx;

    invoke-direct {p0, v0}, Lamb;-><init>(Lalz;)V

    return-void
.end method

.method public constructor <init>(Lalz;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lalz;-><init>()V

    iget-object v0, p0, Lalz;->b:Ljava/util/Map;

    iget-object p1, p1, Lalz;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final a(Laly;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lalz;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Laly;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lalz;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
