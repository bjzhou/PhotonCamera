.class final Lkne;
.super Lknf;


# instance fields
.field a:Lknn;

.field private final b:Loiw;


# direct methods
.method public constructor <init>(Loiw;)V
    .locals 1

    invoke-direct {p0}, Lknf;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lkne;->a:Lknn;

    iput-object p1, p0, Lkne;->b:Loiw;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lkni;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iget-object p2, p0, Lkne;->a:Lknn;

    if-nez p2, :cond_0

    iget-object p2, p0, Lkne;->b:Loiw;

    invoke-interface {p2}, Loiw;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lknn;

    iput-object p2, p0, Lkne;->a:Lknn;

    :cond_0
    iget-object p2, p0, Lkne;->a:Lknn;

    invoke-interface {p2, p1}, Lknn;->a(Ljava/lang/Object;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b(Lkns;Lkte;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lkne;->a:Lknn;

    const/4 v1, 0x0

    iput-object v1, p0, Lkne;->a:Lknn;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Lkns;->a(Lkte;)V

    iget-object p2, p2, Lkte;->c:Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    invoke-interface {v0, p1, p2}, Lknn;->b(Lkns;[Ljava/lang/Object;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
