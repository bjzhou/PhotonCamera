.class public final Landroidx/work/OverwritingInputMerger;
.super Laxk;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Laxk;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Laxh;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laxh;

    invoke-virtual {v2}, Laxh;->b()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    invoke-static {v1, v0}, Ldq;->f(Ljava/util/Map;Ljava/util/Map;)V

    invoke-static {v0}, Ldq;->e(Ljava/util/Map;)Laxh;

    move-result-object p1

    return-object p1
.end method
