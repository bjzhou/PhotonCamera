.class public final synthetic Lj$/nio/file/P;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/nio/file/WatchKey;


# instance fields
.field public final synthetic a:Lj$/nio/file/Q;


# direct methods
.method private synthetic constructor <init>(Lj$/nio/file/Q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/nio/file/P;->a:Lj$/nio/file/Q;

    return-void
.end method

.method public static synthetic a(Lj$/nio/file/Q;)Ljava/nio/file/WatchKey;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/nio/file/O;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/nio/file/O;

    iget-object p0, p0, Lj$/nio/file/O;->a:Ljava/nio/file/WatchKey;

    return-object p0

    :cond_1
    new-instance v0, Lj$/nio/file/P;

    invoke-direct {v0, p0}, Lj$/nio/file/P;-><init>(Lj$/nio/file/Q;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic cancel()V
    .locals 1

    iget-object v0, p0, Lj$/nio/file/P;->a:Lj$/nio/file/Q;

    check-cast v0, Lj$/nio/file/O;

    invoke-virtual {v0}, Lj$/nio/file/O;->a()V

    return-void
.end method

.method public final synthetic equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lj$/nio/file/P;->a:Lj$/nio/file/Q;

    instance-of v1, p1, Lj$/nio/file/P;

    if-eqz v1, :cond_0

    check-cast p1, Lj$/nio/file/P;

    iget-object p1, p1, Lj$/nio/file/P;->a:Lj$/nio/file/Q;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/nio/file/P;->a:Lj$/nio/file/Q;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final synthetic isValid()Z
    .locals 1

    iget-object v0, p0, Lj$/nio/file/P;->a:Lj$/nio/file/Q;

    check-cast v0, Lj$/nio/file/O;

    invoke-virtual {v0}, Lj$/nio/file/O;->c()Z

    move-result v0

    return v0
.end method

.method public final synthetic pollEvents()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/P;->a:Lj$/nio/file/Q;

    check-cast v0, Lj$/nio/file/O;

    invoke-virtual {v0}, Lj$/nio/file/O;->d()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lj$/nio/file/a;->o(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic reset()Z
    .locals 1

    iget-object v0, p0, Lj$/nio/file/P;->a:Lj$/nio/file/Q;

    check-cast v0, Lj$/nio/file/O;

    invoke-virtual {v0}, Lj$/nio/file/O;->e()Z

    move-result v0

    return v0
.end method

.method public final synthetic watchable()Ljava/nio/file/Watchable;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/P;->a:Lj$/nio/file/Q;

    check-cast v0, Lj$/nio/file/O;

    invoke-virtual {v0}, Lj$/nio/file/O;->f()Lj$/nio/file/X;

    move-result-object v0

    invoke-static {v0}, Lj$/nio/file/W;->a(Lj$/nio/file/X;)Ljava/nio/file/Watchable;

    move-result-object v0

    return-object v0
.end method
