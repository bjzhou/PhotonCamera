.class public final synthetic Lj$/nio/file/W;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/nio/file/Watchable;


# instance fields
.field public final synthetic a:Lj$/nio/file/X;


# direct methods
.method private synthetic constructor <init>(Lj$/nio/file/X;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/nio/file/W;->a:Lj$/nio/file/X;

    return-void
.end method

.method public static synthetic a(Lj$/nio/file/X;)Ljava/nio/file/Watchable;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/nio/file/V;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/nio/file/V;

    iget-object p0, p0, Lj$/nio/file/V;->a:Ljava/nio/file/Watchable;

    return-object p0

    :cond_1
    instance-of v0, p0, Lj$/nio/file/Path;

    if-eqz v0, :cond_2

    check-cast p0, Lj$/nio/file/Path;

    invoke-static {p0}, Lj$/nio/file/t;->a(Lj$/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance v0, Lj$/nio/file/W;

    invoke-direct {v0, p0}, Lj$/nio/file/W;-><init>(Lj$/nio/file/X;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lj$/nio/file/W;->a:Lj$/nio/file/X;

    instance-of v1, p1, Lj$/nio/file/W;

    if-eqz v1, :cond_0

    check-cast p1, Lj$/nio/file/W;

    iget-object p1, p1, Lj$/nio/file/W;->a:Lj$/nio/file/X;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/nio/file/W;->a:Lj$/nio/file/X;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final synthetic register(Ljava/nio/file/WatchService;[Ljava/nio/file/WatchEvent$Kind;)Ljava/nio/file/WatchKey;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/W;->a:Lj$/nio/file/X;

    invoke-static {p1}, Lj$/nio/file/S;->b(Ljava/nio/file/WatchService;)Lj$/nio/file/U;

    move-result-object p1

    invoke-static {p2}, Lj$/nio/file/h;->k([Ljava/nio/file/WatchEvent$Kind;)[Lj$/nio/file/H;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lj$/nio/file/X;->d(Lj$/nio/file/U;[Lj$/nio/file/H;)Lj$/nio/file/Q;

    move-result-object p1

    invoke-static {p1}, Lj$/nio/file/P;->a(Lj$/nio/file/Q;)Ljava/nio/file/WatchKey;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic register(Ljava/nio/file/WatchService;[Ljava/nio/file/WatchEvent$Kind;[Ljava/nio/file/WatchEvent$Modifier;)Ljava/nio/file/WatchKey;
    .locals 5

    iget-object v0, p0, Lj$/nio/file/W;->a:Lj$/nio/file/X;

    invoke-static {p1}, Lj$/nio/file/S;->b(Ljava/nio/file/WatchService;)Lj$/nio/file/U;

    move-result-object p1

    invoke-static {p2}, Lj$/nio/file/h;->k([Ljava/nio/file/WatchEvent$Kind;)[Lj$/nio/file/H;

    move-result-object p2

    if-nez p3, :cond_0

    const/4 p3, 0x0

    goto :goto_1

    :cond_0
    array-length v1, p3

    new-array v2, v1, [Lj$/nio/file/K;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p3, v3

    invoke-static {v4}, Lj$/nio/file/I;->a(Ljava/nio/file/WatchEvent$Modifier;)Lj$/nio/file/K;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move-object p3, v2

    :goto_1
    invoke-interface {v0, p1, p2, p3}, Lj$/nio/file/X;->b(Lj$/nio/file/U;[Lj$/nio/file/H;[Lj$/nio/file/K;)Lj$/nio/file/Q;

    move-result-object p1

    invoke-static {p1}, Lj$/nio/file/P;->a(Lj$/nio/file/Q;)Ljava/nio/file/WatchKey;

    move-result-object p1

    return-object p1
.end method
