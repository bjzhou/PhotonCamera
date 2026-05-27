.class public final synthetic Lj$/nio/file/attribute/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/nio/file/attribute/BasicFileAttributeView;


# instance fields
.field public final synthetic a:Lj$/nio/file/attribute/g;


# direct methods
.method private synthetic constructor <init>(Lj$/nio/file/attribute/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/nio/file/attribute/f;->a:Lj$/nio/file/attribute/g;

    return-void
.end method

.method public static synthetic a(Lj$/nio/file/attribute/g;)Ljava/nio/file/attribute/BasicFileAttributeView;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/nio/file/attribute/e;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/nio/file/attribute/e;

    iget-object p0, p0, Lj$/nio/file/attribute/e;->a:Ljava/nio/file/attribute/BasicFileAttributeView;

    return-object p0

    :cond_1
    instance-of v0, p0, Lj$/nio/file/attribute/l;

    if-eqz v0, :cond_2

    check-cast p0, Lj$/nio/file/attribute/l;

    invoke-static {p0}, Lj$/nio/file/attribute/k;->a(Lj$/nio/file/attribute/l;)Ljava/nio/file/attribute/DosFileAttributeView;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of v0, p0, Lj$/nio/file/attribute/K;

    if-eqz v0, :cond_3

    check-cast p0, Lj$/nio/file/attribute/K;

    invoke-static {p0}, Lj$/nio/file/attribute/J;->a(Lj$/nio/file/attribute/K;)Ljava/nio/file/attribute/PosixFileAttributeView;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance v0, Lj$/nio/file/attribute/f;

    invoke-direct {v0, p0}, Lj$/nio/file/attribute/f;-><init>(Lj$/nio/file/attribute/g;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lj$/nio/file/attribute/f;->a:Lj$/nio/file/attribute/g;

    instance-of v1, p1, Lj$/nio/file/attribute/f;

    if-eqz v1, :cond_0

    check-cast p1, Lj$/nio/file/attribute/f;

    iget-object p1, p1, Lj$/nio/file/attribute/f;->a:Lj$/nio/file/attribute/g;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/f;->a:Lj$/nio/file/attribute/g;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final synthetic name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/f;->a:Lj$/nio/file/attribute/g;

    invoke-interface {v0}, Lj$/nio/file/attribute/g;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic readAttributes()Ljava/nio/file/attribute/BasicFileAttributes;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/f;->a:Lj$/nio/file/attribute/g;

    invoke-interface {v0}, Lj$/nio/file/attribute/g;->readAttributes()Lj$/nio/file/attribute/BasicFileAttributes;

    move-result-object v0

    invoke-static {v0}, Lj$/nio/file/attribute/i;->a(Lj$/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic setTimes(Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;)V
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/f;->a:Lj$/nio/file/attribute/g;

    invoke-static {p1}, Lj$/nio/file/attribute/t;->b(Ljava/nio/file/attribute/FileTime;)Lj$/nio/file/attribute/E;

    move-result-object p1

    invoke-static {p2}, Lj$/nio/file/attribute/t;->b(Ljava/nio/file/attribute/FileTime;)Lj$/nio/file/attribute/E;

    move-result-object p2

    invoke-static {p3}, Lj$/nio/file/attribute/t;->b(Ljava/nio/file/attribute/FileTime;)Lj$/nio/file/attribute/E;

    move-result-object p3

    invoke-interface {v0, p1, p2, p3}, Lj$/nio/file/attribute/g;->a(Lj$/nio/file/attribute/E;Lj$/nio/file/attribute/E;Lj$/nio/file/attribute/E;)V

    return-void
.end method
