.class public final synthetic Lj$/nio/file/S;
.super Ljava/lang/Object;

# interfaces
.implements Lj$/nio/file/U;


# instance fields
.field public final synthetic a:Ljava/nio/file/WatchService;


# direct methods
.method private synthetic constructor <init>(Ljava/nio/file/WatchService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/nio/file/S;->a:Ljava/nio/file/WatchService;

    return-void
.end method

.method public static synthetic b(Ljava/nio/file/WatchService;)Lj$/nio/file/U;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/nio/file/T;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/nio/file/T;

    iget-object p0, p0, Lj$/nio/file/T;->a:Lj$/nio/file/U;

    return-object p0

    :cond_1
    new-instance v0, Lj$/nio/file/S;

    invoke-direct {v0, p0}, Lj$/nio/file/S;-><init>(Ljava/nio/file/WatchService;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic c()Lj$/nio/file/Q;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/S;->a:Ljava/nio/file/WatchService;

    invoke-interface {v0}, Ljava/nio/file/WatchService;->poll()Ljava/nio/file/WatchKey;

    move-result-object v0

    invoke-static {v0}, Lj$/nio/file/O;->b(Ljava/nio/file/WatchKey;)Lj$/nio/file/Q;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic close()V
    .locals 1

    iget-object v0, p0, Lj$/nio/file/S;->a:Ljava/nio/file/WatchService;

    invoke-interface {v0}, Ljava/nio/file/WatchService;->close()V

    return-void
.end method

.method public final synthetic d(JLjava/util/concurrent/TimeUnit;)Lj$/nio/file/Q;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/S;->a:Ljava/nio/file/WatchService;

    invoke-interface {v0, p1, p2, p3}, Ljava/nio/file/WatchService;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/nio/file/WatchKey;

    move-result-object p1

    invoke-static {p1}, Lj$/nio/file/O;->b(Ljava/nio/file/WatchKey;)Lj$/nio/file/Q;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic e()Lj$/nio/file/Q;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/S;->a:Ljava/nio/file/WatchService;

    invoke-interface {v0}, Ljava/nio/file/WatchService;->take()Ljava/nio/file/WatchKey;

    move-result-object v0

    invoke-static {v0}, Lj$/nio/file/O;->b(Ljava/nio/file/WatchKey;)Lj$/nio/file/Q;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lj$/nio/file/S;

    if-eqz v0, :cond_0

    check-cast p1, Lj$/nio/file/S;

    iget-object p1, p1, Lj$/nio/file/S;->a:Ljava/nio/file/WatchService;

    :cond_0
    iget-object v0, p0, Lj$/nio/file/S;->a:Ljava/nio/file/WatchService;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/nio/file/S;->a:Ljava/nio/file/WatchService;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
