.class public final synthetic Lj$/nio/file/attribute/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/nio/file/attribute/DosFileAttributeView;


# instance fields
.field public final synthetic a:Lj$/nio/file/attribute/l;


# direct methods
.method private synthetic constructor <init>(Lj$/nio/file/attribute/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/nio/file/attribute/k;->a:Lj$/nio/file/attribute/l;

    return-void
.end method

.method public static synthetic a(Lj$/nio/file/attribute/l;)Ljava/nio/file/attribute/DosFileAttributeView;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/nio/file/attribute/j;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/nio/file/attribute/j;

    iget-object p0, p0, Lj$/nio/file/attribute/j;->a:Ljava/nio/file/attribute/DosFileAttributeView;

    return-object p0

    :cond_1
    new-instance v0, Lj$/nio/file/attribute/k;

    invoke-direct {v0, p0}, Lj$/nio/file/attribute/k;-><init>(Lj$/nio/file/attribute/l;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lj$/nio/file/attribute/k;->a:Lj$/nio/file/attribute/l;

    instance-of v1, p1, Lj$/nio/file/attribute/k;

    if-eqz v1, :cond_0

    check-cast p1, Lj$/nio/file/attribute/k;

    iget-object p1, p1, Lj$/nio/file/attribute/k;->a:Lj$/nio/file/attribute/l;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/k;->a:Lj$/nio/file/attribute/l;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final synthetic name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/k;->a:Lj$/nio/file/attribute/l;

    check-cast v0, Lj$/nio/file/attribute/j;

    invoke-virtual {v0}, Lj$/nio/file/attribute/j;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic readAttributes()Ljava/nio/file/attribute/BasicFileAttributes;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/k;->a:Lj$/nio/file/attribute/l;

    check-cast v0, Lj$/nio/file/attribute/j;

    invoke-virtual {v0}, Lj$/nio/file/attribute/j;->readAttributes()Lj$/nio/file/attribute/BasicFileAttributes;

    move-result-object v0

    invoke-static {v0}, Lj$/nio/file/attribute/i;->a(Lj$/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic readAttributes()Ljava/nio/file/attribute/DosFileAttributes;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/k;->a:Lj$/nio/file/attribute/l;

    check-cast v0, Lj$/nio/file/attribute/j;

    invoke-virtual {v0}, Lj$/nio/file/attribute/j;->d()Lj$/nio/file/attribute/o;

    move-result-object v0

    invoke-static {v0}, Lj$/nio/file/attribute/n;->a(Lj$/nio/file/attribute/o;)Ljava/nio/file/attribute/DosFileAttributes;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic setArchive(Z)V
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/k;->a:Lj$/nio/file/attribute/l;

    check-cast v0, Lj$/nio/file/attribute/j;

    invoke-virtual {v0, p1}, Lj$/nio/file/attribute/j;->e(Z)V

    return-void
.end method

.method public final synthetic setHidden(Z)V
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/k;->a:Lj$/nio/file/attribute/l;

    check-cast v0, Lj$/nio/file/attribute/j;

    invoke-virtual {v0, p1}, Lj$/nio/file/attribute/j;->f(Z)V

    return-void
.end method

.method public final synthetic setReadOnly(Z)V
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/k;->a:Lj$/nio/file/attribute/l;

    check-cast v0, Lj$/nio/file/attribute/j;

    invoke-virtual {v0, p1}, Lj$/nio/file/attribute/j;->g(Z)V

    return-void
.end method

.method public final synthetic setSystem(Z)V
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/k;->a:Lj$/nio/file/attribute/l;

    check-cast v0, Lj$/nio/file/attribute/j;

    invoke-virtual {v0, p1}, Lj$/nio/file/attribute/j;->h(Z)V

    return-void
.end method

.method public final synthetic setTimes(Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;)V
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/k;->a:Lj$/nio/file/attribute/l;

    invoke-static {p1}, Lj$/nio/file/attribute/t;->b(Ljava/nio/file/attribute/FileTime;)Lj$/nio/file/attribute/E;

    move-result-object p1

    invoke-static {p2}, Lj$/nio/file/attribute/t;->b(Ljava/nio/file/attribute/FileTime;)Lj$/nio/file/attribute/E;

    move-result-object p2

    invoke-static {p3}, Lj$/nio/file/attribute/t;->b(Ljava/nio/file/attribute/FileTime;)Lj$/nio/file/attribute/E;

    move-result-object p3

    check-cast v0, Lj$/nio/file/attribute/j;

    invoke-virtual {v0, p1, p2, p3}, Lj$/nio/file/attribute/j;->a(Lj$/nio/file/attribute/E;Lj$/nio/file/attribute/E;Lj$/nio/file/attribute/E;)V

    return-void
.end method
