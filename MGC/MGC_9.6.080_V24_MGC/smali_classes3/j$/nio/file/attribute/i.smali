.class public final synthetic Lj$/nio/file/attribute/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/nio/file/attribute/BasicFileAttributes;


# instance fields
.field public final synthetic a:Ljava/nio/file/attribute/DosFileAttributes;


# direct methods
.method private synthetic constructor <init>(Ljava/nio/file/attribute/DosFileAttributes;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/nio/file/attribute/i;->a:Ljava/nio/file/attribute/DosFileAttributes;

    return-void
.end method

.method public static synthetic a(Ljava/nio/file/attribute/DosFileAttributes;)Lj$/nio/file/attribute/i;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lj$/nio/file/attribute/i;

    invoke-direct {v0, p0}, Lj$/nio/file/attribute/i;-><init>(Ljava/nio/file/attribute/DosFileAttributes;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic creationTime()Lj$/nio/file/attribute/w;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/i;->a:Ljava/nio/file/attribute/DosFileAttributes;

    invoke-static {v0}, Lj$/nio/file/attribute/b;->o(Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    invoke-static {v0}, Lj$/nio/file/attribute/n;->b(Ljava/nio/file/attribute/FileTime;)Lj$/nio/file/attribute/w;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lj$/nio/file/attribute/i;->a:Ljava/nio/file/attribute/DosFileAttributes;

    instance-of v1, p1, Lj$/nio/file/attribute/i;

    if-eqz v1, :cond_0

    check-cast p1, Lj$/nio/file/attribute/i;

    iget-object p1, p1, Lj$/nio/file/attribute/i;->a:Ljava/nio/file/attribute/DosFileAttributes;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic fileKey()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/i;->a:Ljava/nio/file/attribute/DosFileAttributes;

    invoke-static {v0}, Lj$/nio/file/attribute/b;->c(Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/i;->a:Ljava/nio/file/attribute/DosFileAttributes;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final synthetic isDirectory()Z
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/i;->a:Ljava/nio/file/attribute/DosFileAttributes;

    invoke-static {v0}, Lj$/nio/file/attribute/b;->A(Ljava/nio/file/attribute/BasicFileAttributes;)Z

    move-result v0

    return v0
.end method

.method public final synthetic isOther()Z
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/i;->a:Ljava/nio/file/attribute/DosFileAttributes;

    invoke-static {v0}, Lj$/nio/file/attribute/b;->u(Ljava/nio/file/attribute/BasicFileAttributes;)Z

    move-result v0

    return v0
.end method

.method public final synthetic isRegularFile()Z
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/i;->a:Ljava/nio/file/attribute/DosFileAttributes;

    invoke-static {v0}, Lj$/nio/file/attribute/b;->x(Ljava/nio/file/attribute/BasicFileAttributes;)Z

    move-result v0

    return v0
.end method

.method public final synthetic isSymbolicLink()Z
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/i;->a:Ljava/nio/file/attribute/DosFileAttributes;

    invoke-static {v0}, Lj$/nio/file/attribute/b;->C(Ljava/nio/file/attribute/BasicFileAttributes;)Z

    move-result v0

    return v0
.end method

.method public final synthetic lastAccessTime()Lj$/nio/file/attribute/w;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/i;->a:Ljava/nio/file/attribute/DosFileAttributes;

    invoke-static {v0}, Lj$/nio/file/attribute/b;->y(Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    invoke-static {v0}, Lj$/nio/file/attribute/n;->b(Ljava/nio/file/attribute/FileTime;)Lj$/nio/file/attribute/w;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic lastModifiedTime()Lj$/nio/file/attribute/w;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/i;->a:Ljava/nio/file/attribute/DosFileAttributes;

    invoke-static {v0}, Lj$/nio/file/attribute/b;->v(Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    invoke-static {v0}, Lj$/nio/file/attribute/n;->b(Ljava/nio/file/attribute/FileTime;)Lj$/nio/file/attribute/w;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic size()J
    .locals 2

    iget-object v0, p0, Lj$/nio/file/attribute/i;->a:Ljava/nio/file/attribute/DosFileAttributes;

    invoke-static {v0}, Lj$/nio/file/attribute/b;->a(Ljava/nio/file/attribute/BasicFileAttributes;)J

    move-result-wide v0

    return-wide v0
.end method
