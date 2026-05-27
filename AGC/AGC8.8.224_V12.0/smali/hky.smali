.class final Lhky;
.super Ljava/lang/Object;

# interfaces
.implements Lnno;


# instance fields
.field final synthetic a:Lhlb;


# direct methods
.method public constructor <init>(Lhlb;)V
    .locals 0

    iput-object p1, p0, Lhky;->a:Lhlb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Lnou;
    .locals 7

    check-cast p1, Lbpj;

    :try_start_0
    iget-object v0, p0, Lhky;->a:Lhlb;

    iget-object v0, v0, Lhlb;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lbpj;->h(Ljava/lang/String;)Lbkb;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lbkb;->f()Ljava/io/File;

    move-result-object p1

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result p1

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 p1, p1, 0xff

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Lhkx;

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr p1, v1

    invoke-static {p1}, Lkab;->b(I)Lkab;

    move-result-object p1

    invoke-direct {v3, v2, p1}, Lhkx;-><init>(Landroid/graphics/Bitmap;Lkab;)V

    iget-object p1, p0, Lhky;->a:Lhlb;

    iget-object p1, p1, Lhlb;->f:Ljava/lang/Object;

    monitor-enter p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v1, p0, Lhky;->a:Lhlb;

    iput-object v3, v1, Lhlb;->e:Ljava/lang/Object;

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {v3}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p1

    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_8
    const-class v1, Ljava/lang/Throwable;

    const-string v2, "addSuppressed"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Throwable;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v0, v2, v6

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_9
    throw p1

    :cond_0
    const/4 p1, 0x0

    invoke-static {p1}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object p1
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-static {p1}, Lnsy;->A(Ljava/lang/Throwable;)Lnou;

    move-result-object p1

    :goto_1
    return-object p1
.end method
