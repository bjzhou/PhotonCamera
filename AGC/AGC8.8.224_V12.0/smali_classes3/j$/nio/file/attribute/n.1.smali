.class public final synthetic Lj$/nio/file/attribute/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/nio/file/attribute/DosFileAttributes;


# instance fields
.field public final synthetic a:Lj$/nio/file/attribute/o;


# direct methods
.method private synthetic constructor <init>(Lj$/nio/file/attribute/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/nio/file/attribute/n;->a:Lj$/nio/file/attribute/o;

    return-void
.end method

.method public static synthetic a(Lj$/nio/file/attribute/o;)Ljava/nio/file/attribute/DosFileAttributes;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/nio/file/attribute/m;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/nio/file/attribute/m;

    iget-object p0, p0, Lj$/nio/file/attribute/m;->a:Ljava/nio/file/attribute/DosFileAttributes;

    return-object p0

    :cond_1
    new-instance v0, Lj$/nio/file/attribute/n;

    invoke-direct {v0, p0}, Lj$/nio/file/attribute/n;-><init>(Lj$/nio/file/attribute/o;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic creationTime()Ljava/nio/file/attribute/FileTime;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/n;->a:Lj$/nio/file/attribute/o;

    check-cast v0, Lj$/nio/file/attribute/m;

    invoke-virtual {v0}, Lj$/nio/file/attribute/m;->creationTime()Lj$/nio/file/attribute/E;

    move-result-object v0

    invoke-static {v0}, Lj$/nio/file/attribute/t;->d(Lj$/nio/file/attribute/E;)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lj$/nio/file/attribute/n;->a:Lj$/nio/file/attribute/o;

    instance-of v1, p1, Lj$/nio/file/attribute/n;

    if-eqz v1, :cond_0

    check-cast p1, Lj$/nio/file/attribute/n;

    iget-object p1, p1, Lj$/nio/file/attribute/n;->a:Lj$/nio/file/attribute/o;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic fileKey()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/n;->a:Lj$/nio/file/attribute/o;

    check-cast v0, Lj$/nio/file/attribute/m;

    invoke-virtual {v0}, Lj$/nio/file/attribute/m;->fileKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/n;->a:Lj$/nio/file/attribute/o;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final synthetic isArchive()Z
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/n;->a:Lj$/nio/file/attribute/o;

    check-cast v0, Lj$/nio/file/attribute/m;

    invoke-virtual {v0}, Lj$/nio/file/attribute/m;->b()Z

    move-result v0

    return v0
.end method

.method public final synthetic isDirectory()Z
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/n;->a:Lj$/nio/file/attribute/o;

    check-cast v0, Lj$/nio/file/attribute/m;

    invoke-virtual {v0}, Lj$/nio/file/attribute/m;->isDirectory()Z

    move-result v0

    return v0
.end method

.method public final synthetic isHidden()Z
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/n;->a:Lj$/nio/file/attribute/o;

    check-cast v0, Lj$/nio/file/attribute/m;

    invoke-virtual {v0}, Lj$/nio/file/attribute/m;->c()Z

    move-result v0

    return v0
.end method

.method public final synthetic isOther()Z
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/n;->a:Lj$/nio/file/attribute/o;

    check-cast v0, Lj$/nio/file/attribute/m;

    invoke-virtual {v0}, Lj$/nio/file/attribute/m;->isOther()Z

    move-result v0

    return v0
.end method

.method public final synthetic isReadOnly()Z
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/n;->a:Lj$/nio/file/attribute/o;

    check-cast v0, Lj$/nio/file/attribute/m;

    invoke-virtual {v0}, Lj$/nio/file/attribute/m;->d()Z

    move-result v0

    return v0
.end method

.method public final synthetic isRegularFile()Z
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/n;->a:Lj$/nio/file/attribute/o;

    check-cast v0, Lj$/nio/file/attribute/m;

    invoke-virtual {v0}, Lj$/nio/file/attribute/m;->isRegularFile()Z

    move-result v0

    return v0
.end method

.method public final synthetic isSymbolicLink()Z
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/n;->a:Lj$/nio/file/attribute/o;

    check-cast v0, Lj$/nio/file/attribute/m;

    invoke-virtual {v0}, Lj$/nio/file/attribute/m;->isSymbolicLink()Z

    move-result v0

    return v0
.end method

.method public final synthetic isSystem()Z
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/n;->a:Lj$/nio/file/attribute/o;

    check-cast v0, Lj$/nio/file/attribute/m;

    invoke-virtual {v0}, Lj$/nio/file/attribute/m;->e()Z

    move-result v0

    return v0
.end method

.method public final synthetic lastAccessTime()Ljava/nio/file/attribute/FileTime;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/n;->a:Lj$/nio/file/attribute/o;

    check-cast v0, Lj$/nio/file/attribute/m;

    invoke-virtual {v0}, Lj$/nio/file/attribute/m;->lastAccessTime()Lj$/nio/file/attribute/E;

    move-result-object v0

    invoke-static {v0}, Lj$/nio/file/attribute/t;->d(Lj$/nio/file/attribute/E;)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic lastModifiedTime()Ljava/nio/file/attribute/FileTime;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/n;->a:Lj$/nio/file/attribute/o;

    check-cast v0, Lj$/nio/file/attribute/m;

    invoke-virtual {v0}, Lj$/nio/file/attribute/m;->lastModifiedTime()Lj$/nio/file/attribute/E;

    move-result-object v0

    invoke-static {v0}, Lj$/nio/file/attribute/t;->d(Lj$/nio/file/attribute/E;)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic size()J
    .locals 2

    iget-object v0, p0, Lj$/nio/file/attribute/n;->a:Lj$/nio/file/attribute/o;

    check-cast v0, Lj$/nio/file/attribute/m;

    invoke-virtual {v0}, Lj$/nio/file/attribute/m;->size()J

    move-result-wide v0

    return-wide v0
.end method
