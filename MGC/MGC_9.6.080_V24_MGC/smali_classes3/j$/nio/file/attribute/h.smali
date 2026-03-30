.class public final synthetic Lj$/nio/file/attribute/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/nio/file/attribute/e;


# instance fields
.field public final synthetic a:Ljava/nio/file/attribute/DosFileAttributeView;


# direct methods
.method private synthetic constructor <init>(Ljava/nio/file/attribute/DosFileAttributeView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/nio/file/attribute/h;->a:Ljava/nio/file/attribute/DosFileAttributeView;

    return-void
.end method

.method public static synthetic c(Ljava/nio/file/attribute/DosFileAttributeView;)Lj$/nio/file/attribute/h;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lj$/nio/file/attribute/h;

    invoke-direct {v0, p0}, Lj$/nio/file/attribute/h;-><init>(Ljava/nio/file/attribute/DosFileAttributeView;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a(Lj$/nio/file/attribute/w;Lj$/nio/file/attribute/w;Lj$/nio/file/attribute/w;)V
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/h;->a:Ljava/nio/file/attribute/DosFileAttributeView;

    invoke-static {p1}, Lj$/nio/file/attribute/n;->d(Lj$/nio/file/attribute/w;)Ljava/nio/file/attribute/FileTime;

    move-result-object p1

    invoke-static {p2}, Lj$/nio/file/attribute/n;->d(Lj$/nio/file/attribute/w;)Ljava/nio/file/attribute/FileTime;

    move-result-object p2

    invoke-static {p3}, Lj$/nio/file/attribute/n;->d(Lj$/nio/file/attribute/w;)Ljava/nio/file/attribute/FileTime;

    move-result-object p3

    invoke-static {v0, p1, p2, p3}, Lj$/nio/file/attribute/b;->s(Ljava/nio/file/attribute/BasicFileAttributeView;Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;)V

    return-void
.end method

.method public final synthetic equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lj$/nio/file/attribute/h;->a:Ljava/nio/file/attribute/DosFileAttributeView;

    instance-of v1, p1, Lj$/nio/file/attribute/h;

    if-eqz v1, :cond_0

    check-cast p1, Lj$/nio/file/attribute/h;

    iget-object p1, p1, Lj$/nio/file/attribute/h;->a:Ljava/nio/file/attribute/DosFileAttributeView;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/h;->a:Ljava/nio/file/attribute/DosFileAttributeView;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final synthetic name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/h;->a:Ljava/nio/file/attribute/DosFileAttributeView;

    invoke-static {v0}, Lj$/nio/file/attribute/b;->g(Ljava/nio/file/attribute/DosFileAttributeView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic readAttributes()Lj$/nio/file/attribute/BasicFileAttributes;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/h;->a:Ljava/nio/file/attribute/DosFileAttributeView;

    invoke-static {v0}, Lj$/nio/file/attribute/b;->k(Ljava/nio/file/attribute/DosFileAttributeView;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v0

    invoke-static {v0}, Lj$/nio/file/attribute/f;->a(Ljava/nio/file/attribute/BasicFileAttributes;)Lj$/nio/file/attribute/BasicFileAttributes;

    move-result-object v0

    return-object v0
.end method
