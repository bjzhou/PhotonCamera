.class public abstract Lj$/adapter/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lj$/nio/file/spi/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Lj$/adapter/a;->b:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lj$/adapter/b;->d()Ljava/nio/file/FileSystem;

    move-result-object v0

    invoke-static {v0}, Lj$/adapter/b;->l(Ljava/nio/file/FileSystem;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v0

    invoke-static {v0}, Lj$/nio/file/spi/b;->B(Ljava/nio/file/spi/FileSystemProvider;)Lj$/nio/file/spi/d;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-boolean v0, Lj$/adapter/a;->c:Z

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    new-instance v1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v1, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitDiskReads()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    :cond_1
    invoke-static {}, Lj$/desugar/sun/nio/fs/d;->a()Lj$/desugar/sun/nio/fs/m;

    move-result-object v0

    :goto_0
    sput-object v0, Lj$/adapter/c;->a:Lj$/nio/file/spi/d;

    const-string v1, "file:///"

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj$/nio/file/spi/d;->j(Ljava/net/URI;)Lj$/nio/file/j;

    return-void
.end method

.method public static a()Lj$/nio/file/spi/d;
    .locals 1

    sget-object v0, Lj$/adapter/c;->a:Lj$/nio/file/spi/d;

    return-object v0
.end method
