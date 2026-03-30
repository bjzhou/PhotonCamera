.class public final synthetic Lj$/io/FileRetargetClass;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static toPath(Ljava/io/File;)Lj$/nio/file/Path;
    .locals 2

    invoke-static {}, Lj$/nio/file/m;->i()Lj$/nio/file/j;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lj$/nio/file/j;->d(Ljava/lang/String;[Ljava/lang/String;)Lj$/nio/file/Path;

    move-result-object p0

    return-object p0
.end method
