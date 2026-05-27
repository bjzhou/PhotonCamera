.class public final synthetic Lj$/nio/file/V;
.super Ljava/lang/Object;

# interfaces
.implements Lj$/nio/file/X;


# instance fields
.field public final synthetic a:Ljava/nio/file/Watchable;


# direct methods
.method private synthetic constructor <init>(Ljava/nio/file/Watchable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/nio/file/V;->a:Ljava/nio/file/Watchable;

    return-void
.end method

.method public static synthetic a(Ljava/nio/file/Watchable;)Lj$/nio/file/X;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/nio/file/W;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/nio/file/W;

    iget-object p0, p0, Lj$/nio/file/W;->a:Lj$/nio/file/X;

    return-object p0

    :cond_1
    instance-of v0, p0, Ljava/nio/file/Path;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/nio/file/Path;

    invoke-static {p0}, Lj$/nio/file/s;->a(Ljava/nio/file/Path;)Lj$/nio/file/Path;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance v0, Lj$/nio/file/V;

    invoke-direct {v0, p0}, Lj$/nio/file/V;-><init>(Ljava/nio/file/Watchable;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic b(Lj$/nio/file/U;[Lj$/nio/file/H;[Lj$/nio/file/K;)Lj$/nio/file/Q;
    .locals 4

    invoke-static {p1}, Lj$/nio/file/T;->b(Lj$/nio/file/U;)Ljava/nio/file/WatchService;

    move-result-object p1

    invoke-static {p2}, Lj$/nio/file/h;->m([Lj$/nio/file/H;)[Ljava/nio/file/WatchEvent$Kind;

    move-result-object p2

    if-nez p3, :cond_0

    const/4 p3, 0x0

    goto :goto_1

    :cond_0
    array-length v0, p3

    new-array v1, v0, [Ljava/nio/file/WatchEvent$Modifier;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p3, v2

    invoke-static {v3}, Lj$/nio/file/J;->a(Lj$/nio/file/K;)Ljava/nio/file/WatchEvent$Modifier;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object p3, v1

    :goto_1
    iget-object v0, p0, Lj$/nio/file/V;->a:Ljava/nio/file/Watchable;

    invoke-interface {v0, p1, p2, p3}, Ljava/nio/file/Watchable;->register(Ljava/nio/file/WatchService;[Ljava/nio/file/WatchEvent$Kind;[Ljava/nio/file/WatchEvent$Modifier;)Ljava/nio/file/WatchKey;

    move-result-object p1

    invoke-static {p1}, Lj$/nio/file/O;->b(Ljava/nio/file/WatchKey;)Lj$/nio/file/Q;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic d(Lj$/nio/file/U;[Lj$/nio/file/H;)Lj$/nio/file/Q;
    .locals 1

    invoke-static {p1}, Lj$/nio/file/T;->b(Lj$/nio/file/U;)Ljava/nio/file/WatchService;

    move-result-object p1

    invoke-static {p2}, Lj$/nio/file/h;->m([Lj$/nio/file/H;)[Ljava/nio/file/WatchEvent$Kind;

    move-result-object p2

    iget-object v0, p0, Lj$/nio/file/V;->a:Ljava/nio/file/Watchable;

    invoke-interface {v0, p1, p2}, Ljava/nio/file/Watchable;->register(Ljava/nio/file/WatchService;[Ljava/nio/file/WatchEvent$Kind;)Ljava/nio/file/WatchKey;

    move-result-object p1

    invoke-static {p1}, Lj$/nio/file/O;->b(Ljava/nio/file/WatchKey;)Lj$/nio/file/Q;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lj$/nio/file/V;

    if-eqz v0, :cond_0

    check-cast p1, Lj$/nio/file/V;

    iget-object p1, p1, Lj$/nio/file/V;->a:Ljava/nio/file/Watchable;

    :cond_0
    iget-object v0, p0, Lj$/nio/file/V;->a:Ljava/nio/file/Watchable;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/nio/file/V;->a:Ljava/nio/file/Watchable;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
