.class public final synthetic Lj$/nio/file/attribute/J;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/nio/file/attribute/PosixFileAttributeView;


# instance fields
.field public final synthetic a:Lj$/nio/file/attribute/K;


# direct methods
.method private synthetic constructor <init>(Lj$/nio/file/attribute/K;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/nio/file/attribute/J;->a:Lj$/nio/file/attribute/K;

    return-void
.end method

.method public static synthetic a(Lj$/nio/file/attribute/K;)Ljava/nio/file/attribute/PosixFileAttributeView;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/nio/file/attribute/I;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/nio/file/attribute/I;

    iget-object p0, p0, Lj$/nio/file/attribute/I;->a:Ljava/nio/file/attribute/PosixFileAttributeView;

    return-object p0

    :cond_1
    new-instance v0, Lj$/nio/file/attribute/J;

    invoke-direct {v0, p0}, Lj$/nio/file/attribute/J;-><init>(Lj$/nio/file/attribute/K;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lj$/nio/file/attribute/J;->a:Lj$/nio/file/attribute/K;

    instance-of v1, p1, Lj$/nio/file/attribute/J;

    if-eqz v1, :cond_0

    check-cast p1, Lj$/nio/file/attribute/J;

    iget-object p1, p1, Lj$/nio/file/attribute/J;->a:Lj$/nio/file/attribute/K;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic getOwner()Ljava/nio/file/attribute/UserPrincipal;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/J;->a:Lj$/nio/file/attribute/K;

    check-cast v0, Lj$/nio/file/attribute/I;

    invoke-virtual {v0}, Lj$/nio/file/attribute/I;->getOwner()Lj$/nio/file/attribute/V;

    move-result-object v0

    invoke-static {v0}, Lj$/nio/file/attribute/U;->a(Lj$/nio/file/attribute/V;)Ljava/nio/file/attribute/UserPrincipal;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/J;->a:Lj$/nio/file/attribute/K;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final synthetic name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/J;->a:Lj$/nio/file/attribute/K;

    check-cast v0, Lj$/nio/file/attribute/I;

    invoke-virtual {v0}, Lj$/nio/file/attribute/I;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic readAttributes()Ljava/nio/file/attribute/BasicFileAttributes;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/J;->a:Lj$/nio/file/attribute/K;

    check-cast v0, Lj$/nio/file/attribute/I;

    invoke-virtual {v0}, Lj$/nio/file/attribute/I;->readAttributes()Lj$/nio/file/attribute/BasicFileAttributes;

    move-result-object v0

    invoke-static {v0}, Lj$/nio/file/attribute/i;->a(Lj$/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic readAttributes()Ljava/nio/file/attribute/PosixFileAttributes;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/J;->a:Lj$/nio/file/attribute/K;

    check-cast v0, Lj$/nio/file/attribute/I;

    invoke-virtual {v0}, Lj$/nio/file/attribute/I;->d()Lj$/nio/file/attribute/N;

    move-result-object v0

    invoke-static {v0}, Lj$/nio/file/attribute/M;->a(Lj$/nio/file/attribute/N;)Ljava/nio/file/attribute/PosixFileAttributes;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic setGroup(Ljava/nio/file/attribute/GroupPrincipal;)V
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/J;->a:Lj$/nio/file/attribute/K;

    invoke-static {p1}, Lj$/nio/file/attribute/F;->a(Ljava/nio/file/attribute/GroupPrincipal;)Lj$/nio/file/attribute/H;

    move-result-object p1

    check-cast v0, Lj$/nio/file/attribute/I;

    invoke-virtual {v0, p1}, Lj$/nio/file/attribute/I;->e(Lj$/nio/file/attribute/H;)V

    return-void
.end method

.method public final synthetic setOwner(Ljava/nio/file/attribute/UserPrincipal;)V
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/J;->a:Lj$/nio/file/attribute/K;

    invoke-static {p1}, Lj$/nio/file/attribute/T;->a(Ljava/nio/file/attribute/UserPrincipal;)Lj$/nio/file/attribute/V;

    move-result-object p1

    check-cast v0, Lj$/nio/file/attribute/I;

    invoke-virtual {v0, p1}, Lj$/nio/file/attribute/I;->b(Lj$/nio/file/attribute/V;)V

    return-void
.end method

.method public final synthetic setPermissions(Ljava/util/Set;)V
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/J;->a:Lj$/nio/file/attribute/K;

    invoke-static {p1}, Lj$/nio/file/a;->n(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    check-cast v0, Lj$/nio/file/attribute/I;

    invoke-virtual {v0, p1}, Lj$/nio/file/attribute/I;->f(Ljava/util/Set;)V

    return-void
.end method

.method public final synthetic setTimes(Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;)V
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/J;->a:Lj$/nio/file/attribute/K;

    invoke-static {p1}, Lj$/nio/file/attribute/t;->b(Ljava/nio/file/attribute/FileTime;)Lj$/nio/file/attribute/E;

    move-result-object p1

    invoke-static {p2}, Lj$/nio/file/attribute/t;->b(Ljava/nio/file/attribute/FileTime;)Lj$/nio/file/attribute/E;

    move-result-object p2

    invoke-static {p3}, Lj$/nio/file/attribute/t;->b(Ljava/nio/file/attribute/FileTime;)Lj$/nio/file/attribute/E;

    move-result-object p3

    check-cast v0, Lj$/nio/file/attribute/I;

    invoke-virtual {v0, p1, p2, p3}, Lj$/nio/file/attribute/I;->a(Lj$/nio/file/attribute/E;Lj$/nio/file/attribute/E;Lj$/nio/file/attribute/E;)V

    return-void
.end method
