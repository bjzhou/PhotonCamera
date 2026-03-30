.class public final synthetic Lj$/nio/file/Path$-CC;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lj$/desugar/sun/nio/fs/o;)Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lj$/nio/file/r;

    invoke-direct {v0, p0}, Lj$/nio/file/r;-><init>(Lj$/desugar/sun/nio/fs/o;)V

    return-object v0
.end method

.method public static varargs of(Ljava/lang/String;[Ljava/lang/String;)Lj$/nio/file/Path;
    .locals 1

    sget-object v0, Lj$/nio/file/l;->a:Lj$/nio/file/j;

    invoke-virtual {v0, p0, p1}, Lj$/nio/file/j;->d(Ljava/lang/String;[Ljava/lang/String;)Lj$/nio/file/Path;

    move-result-object p0

    return-object p0
.end method
