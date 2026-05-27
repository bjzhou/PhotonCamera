.class public final synthetic Lj$/nio/file/O;
.super Ljava/lang/Object;

# interfaces
.implements Lj$/nio/file/Q;


# instance fields
.field public final synthetic a:Ljava/nio/file/WatchKey;


# direct methods
.method private synthetic constructor <init>(Ljava/nio/file/WatchKey;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/nio/file/O;->a:Ljava/nio/file/WatchKey;

    return-void
.end method

.method public static synthetic b(Ljava/nio/file/WatchKey;)Lj$/nio/file/Q;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/nio/file/P;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/nio/file/P;

    iget-object p0, p0, Lj$/nio/file/P;->a:Lj$/nio/file/Q;

    return-object p0

    :cond_1
    new-instance v0, Lj$/nio/file/O;

    invoke-direct {v0, p0}, Lj$/nio/file/O;-><init>(Ljava/nio/file/WatchKey;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()V
    .locals 1

    iget-object v0, p0, Lj$/nio/file/O;->a:Ljava/nio/file/WatchKey;

    invoke-interface {v0}, Ljava/nio/file/WatchKey;->cancel()V

    return-void
.end method

.method public final synthetic c()Z
    .locals 1

    iget-object v0, p0, Lj$/nio/file/O;->a:Ljava/nio/file/WatchKey;

    invoke-interface {v0}, Ljava/nio/file/WatchKey;->isValid()Z

    move-result v0

    return v0
.end method

.method public final synthetic d()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/O;->a:Ljava/nio/file/WatchKey;

    invoke-interface {v0}, Ljava/nio/file/WatchKey;->pollEvents()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lj$/nio/file/a;->o(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic e()Z
    .locals 1

    iget-object v0, p0, Lj$/nio/file/O;->a:Ljava/nio/file/WatchKey;

    invoke-interface {v0}, Ljava/nio/file/WatchKey;->reset()Z

    move-result v0

    return v0
.end method

.method public final synthetic equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lj$/nio/file/O;

    if-eqz v0, :cond_0

    check-cast p1, Lj$/nio/file/O;

    iget-object p1, p1, Lj$/nio/file/O;->a:Ljava/nio/file/WatchKey;

    :cond_0
    iget-object v0, p0, Lj$/nio/file/O;->a:Ljava/nio/file/WatchKey;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic f()Lj$/nio/file/X;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/O;->a:Ljava/nio/file/WatchKey;

    invoke-interface {v0}, Ljava/nio/file/WatchKey;->watchable()Ljava/nio/file/Watchable;

    move-result-object v0

    invoke-static {v0}, Lj$/nio/file/V;->a(Ljava/nio/file/Watchable;)Lj$/nio/file/X;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/nio/file/O;->a:Ljava/nio/file/WatchKey;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
