.class final Lglr;
.super Ljava/lang/Object;

# interfaces
.implements Lkai;


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lgls;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lgls;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lglr;->b:Lgls;

    iput-object p2, p0, Lglr;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic bn(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lglr;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lglr;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkgq;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lglr;->b:Lgls;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lglr;->c:Ljava/lang/String;

    iget-object p1, p0, Lglr;->b:Lgls;

    iput-object v0, p1, Lgls;->a:Lkgq;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
