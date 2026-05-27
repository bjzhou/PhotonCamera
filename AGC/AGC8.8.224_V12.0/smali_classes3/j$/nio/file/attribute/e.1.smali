.class public final synthetic Lj$/nio/file/attribute/e;
.super Ljava/lang/Object;

# interfaces
.implements Lj$/nio/file/attribute/g;


# instance fields
.field public final synthetic a:Ljava/nio/file/attribute/BasicFileAttributeView;


# direct methods
.method private synthetic constructor <init>(Ljava/nio/file/attribute/BasicFileAttributeView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/nio/file/attribute/e;->a:Ljava/nio/file/attribute/BasicFileAttributeView;

    return-void
.end method

.method public static synthetic c(Ljava/nio/file/attribute/BasicFileAttributeView;)Lj$/nio/file/attribute/g;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/nio/file/attribute/f;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/nio/file/attribute/f;

    iget-object p0, p0, Lj$/nio/file/attribute/f;->a:Lj$/nio/file/attribute/g;

    return-object p0

    :cond_1
    instance-of v0, p0, Ljava/nio/file/attribute/DosFileAttributeView;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/nio/file/attribute/DosFileAttributeView;

    invoke-static {p0}, Lj$/nio/file/attribute/j;->c(Ljava/nio/file/attribute/DosFileAttributeView;)Lj$/nio/file/attribute/l;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of v0, p0, Ljava/nio/file/attribute/PosixFileAttributeView;

    if-eqz v0, :cond_3

    check-cast p0, Ljava/nio/file/attribute/PosixFileAttributeView;

    invoke-static {p0}, Lj$/nio/file/attribute/I;->c(Ljava/nio/file/attribute/PosixFileAttributeView;)Lj$/nio/file/attribute/K;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance v0, Lj$/nio/file/attribute/e;

    invoke-direct {v0, p0}, Lj$/nio/file/attribute/e;-><init>(Ljava/nio/file/attribute/BasicFileAttributeView;)V

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

    iget-object v0, p0, Lj$/nio/file/attribute/e;->a:Ljava/nio/file/attribute/BasicFileAttributeView;

    invoke-interface {v0, p1, p2, p3}, Ljava/nio/file/attribute/BasicFileAttributeView;->setTimes(Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;)V

    return-void
.end method

.method public final synthetic equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lj$/nio/file/attribute/e;

    if-eqz v0, :cond_0

    check-cast p1, Lj$/nio/file/attribute/e;

    iget-object p1, p1, Lj$/nio/file/attribute/e;->a:Ljava/nio/file/attribute/BasicFileAttributeView;

    :cond_0
    iget-object v0, p0, Lj$/nio/file/attribute/e;->a:Ljava/nio/file/attribute/BasicFileAttributeView;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/e;->a:Ljava/nio/file/attribute/BasicFileAttributeView;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final synthetic name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/e;->a:Ljava/nio/file/attribute/BasicFileAttributeView;

    invoke-interface {v0}, Ljava/nio/file/attribute/BasicFileAttributeView;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic readAttributes()Lj$/nio/file/attribute/BasicFileAttributes;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/e;->a:Ljava/nio/file/attribute/BasicFileAttributeView;

    invoke-interface {v0}, Ljava/nio/file/attribute/BasicFileAttributeView;->readAttributes()Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v0

    invoke-static {v0}, Lj$/nio/file/attribute/h;->a(Ljava/nio/file/attribute/BasicFileAttributes;)Lj$/nio/file/attribute/BasicFileAttributes;

    move-result-object v0

    return-object v0
.end method
