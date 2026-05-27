.class public final synthetic Lj$/nio/file/attribute/I;
.super Ljava/lang/Object;

# interfaces
.implements Lj$/nio/file/attribute/K;


# instance fields
.field public final synthetic a:Ljava/nio/file/attribute/PosixFileAttributeView;


# direct methods
.method private synthetic constructor <init>(Ljava/nio/file/attribute/PosixFileAttributeView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/nio/file/attribute/I;->a:Ljava/nio/file/attribute/PosixFileAttributeView;

    return-void
.end method

.method public static synthetic c(Ljava/nio/file/attribute/PosixFileAttributeView;)Lj$/nio/file/attribute/K;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/nio/file/attribute/J;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/nio/file/attribute/J;

    iget-object p0, p0, Lj$/nio/file/attribute/J;->a:Lj$/nio/file/attribute/K;

    return-object p0

    :cond_1
    new-instance v0, Lj$/nio/file/attribute/I;

    invoke-direct {v0, p0}, Lj$/nio/file/attribute/I;-><init>(Ljava/nio/file/attribute/PosixFileAttributeView;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a(Lj$/nio/file/attribute/E;Lj$/nio/file/attribute/E;Lj$/nio/file/attribute/E;)V
    .locals 1

    invoke-static {p1}, Lj$/nio/file/attribute/t;->d(Lj$/nio/file/attribute/E;)Ljava/nio/file/attribute/FileTime;

    move-result-object p1

    invoke-static {p2}, Lj$/nio/file/attribute/t;->d(Lj$/nio/file/attribute/E;)Ljava/nio/file/attribute/FileTime;

    move-result-object p2

    invoke-static {p3}, Lj$/nio/file/attribute/t;->d(Lj$/nio/file/attribute/E;)Ljava/nio/file/attribute/FileTime;

    move-result-object p3

    iget-object v0, p0, Lj$/nio/file/attribute/I;->a:Ljava/nio/file/attribute/PosixFileAttributeView;

    invoke-interface {v0, p1, p2, p3}, Ljava/nio/file/attribute/BasicFileAttributeView;->setTimes(Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;)V

    return-void
.end method

.method public final synthetic b(Lj$/nio/file/attribute/V;)V
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/I;->a:Ljava/nio/file/attribute/PosixFileAttributeView;

    invoke-static {p1}, Lj$/nio/file/attribute/U;->a(Lj$/nio/file/attribute/V;)Ljava/nio/file/attribute/UserPrincipal;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/nio/file/attribute/FileOwnerAttributeView;->setOwner(Ljava/nio/file/attribute/UserPrincipal;)V

    return-void
.end method

.method public final synthetic d()Lj$/nio/file/attribute/N;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/I;->a:Ljava/nio/file/attribute/PosixFileAttributeView;

    invoke-interface {v0}, Ljava/nio/file/attribute/PosixFileAttributeView;->readAttributes()Ljava/nio/file/attribute/PosixFileAttributes;

    move-result-object v0

    invoke-static {v0}, Lj$/nio/file/attribute/L;->a(Ljava/nio/file/attribute/PosixFileAttributes;)Lj$/nio/file/attribute/N;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic e(Lj$/nio/file/attribute/H;)V
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/I;->a:Ljava/nio/file/attribute/PosixFileAttributeView;

    invoke-static {p1}, Lj$/nio/file/attribute/G;->a(Lj$/nio/file/attribute/H;)Ljava/nio/file/attribute/GroupPrincipal;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/nio/file/attribute/PosixFileAttributeView;->setGroup(Ljava/nio/file/attribute/GroupPrincipal;)V

    return-void
.end method

.method public final synthetic equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lj$/nio/file/attribute/I;

    if-eqz v0, :cond_0

    check-cast p1, Lj$/nio/file/attribute/I;

    iget-object p1, p1, Lj$/nio/file/attribute/I;->a:Ljava/nio/file/attribute/PosixFileAttributeView;

    :cond_0
    iget-object v0, p0, Lj$/nio/file/attribute/I;->a:Ljava/nio/file/attribute/PosixFileAttributeView;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic f(Ljava/util/Set;)V
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/I;->a:Ljava/nio/file/attribute/PosixFileAttributeView;

    invoke-static {p1}, Lj$/nio/file/a;->n(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/nio/file/attribute/PosixFileAttributeView;->setPermissions(Ljava/util/Set;)V

    return-void
.end method

.method public final synthetic getOwner()Lj$/nio/file/attribute/V;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/I;->a:Ljava/nio/file/attribute/PosixFileAttributeView;

    invoke-interface {v0}, Ljava/nio/file/attribute/FileOwnerAttributeView;->getOwner()Ljava/nio/file/attribute/UserPrincipal;

    move-result-object v0

    invoke-static {v0}, Lj$/nio/file/attribute/T;->a(Ljava/nio/file/attribute/UserPrincipal;)Lj$/nio/file/attribute/V;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/I;->a:Ljava/nio/file/attribute/PosixFileAttributeView;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final synthetic name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/I;->a:Ljava/nio/file/attribute/PosixFileAttributeView;

    invoke-interface {v0}, Ljava/nio/file/attribute/PosixFileAttributeView;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic readAttributes()Lj$/nio/file/attribute/BasicFileAttributes;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/I;->a:Ljava/nio/file/attribute/PosixFileAttributeView;

    invoke-interface {v0}, Ljava/nio/file/attribute/PosixFileAttributeView;->readAttributes()Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v0

    invoke-static {v0}, Lj$/nio/file/attribute/h;->a(Ljava/nio/file/attribute/BasicFileAttributes;)Lj$/nio/file/attribute/BasicFileAttributes;

    move-result-object v0

    return-object v0
.end method
