.class public final Lgnf;
.super Ljava/lang/Object;

# interfaces
.implements Lgni;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Lgne;

.field public final c:Lkbc;

.field public final d:Ljava/io/File;

.field public e:I

.field public f:I

.field g:Lnkl;

.field public h:Lmpt;

.field public final i:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/pixelcamerakit/prealloc/ImageReaderPreallocator"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lgnf;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Lgne;Landroid/content/Context;Ljava/util/concurrent/Executor;Lkbc;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lgnf;->e:I

    iput v0, p0, Lgnf;->f:I

    sget-object v1, Lnkl;->d:Lnkl;

    iput-object v1, p0, Lgnf;->g:Lnkl;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lgnf;->i:Ljava/util/Map;

    iput-object p1, p0, Lgnf;->b:Lgne;

    invoke-static {p3}, Lnsy;->s(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    iput-object p4, p0, Lgnf;->c:Lkbc;

    sget-object p1, Lmpt;->b:Lmpt;

    iput-object p1, p0, Lgnf;->h:Lmpt;

    new-instance p1, Ljava/io/File;

    invoke-virtual {p2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p2

    const-string p3, "prealloc_history.pb"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lgnf;->d:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result p2

    if-eqz p2, :cond_3

    :try_start_0
    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    :try_start_1
    sget-object p1, Lnwh;->a:Lnwh;

    sget-object p3, Lmpt;->b:Lmpt;

    invoke-static {p2}, Lnvy;->I(Ljava/io/InputStream;)Lnvy;

    move-result-object p4

    invoke-virtual {p3}, Lnws;->P()Lnws;

    move-result-object p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v1, Lnyh;->a:Lnyh;

    invoke-virtual {v1, p3}, Lnyh;->b(Ljava/lang/Object;)Lnyo;

    move-result-object v1

    invoke-static {p4}, Lnvz;->p(Lnvy;)Lnvz;

    move-result-object p4

    invoke-interface {v1, p3, p4, p1}, Lnyo;->h(Ljava/lang/Object;Lnyk;Lnwh;)V

    invoke-interface {v1, p3}, Lnyo;->f(Ljava/lang/Object;)V
    :try_end_2
    .catch Lnxd; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lnyz; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {p3}, Lnws;->ae(Lnws;)V

    check-cast p3, Lmpt;

    iput-object p3, p0, Lgnf;->h:Lmpt;

    iget-object p1, p3, Lmpt;->a:Lnxa;

    invoke-interface {p1}, Lnxa;->size()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    return-void

    :catch_0
    move-exception p1

    :try_start_5
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p3

    instance-of p3, p3, Lnxd;

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Lnxd;

    throw p1

    :cond_0
    throw p1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p3

    instance-of p3, p3, Lnxd;

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Lnxd;

    throw p1

    :cond_1
    new-instance p3, Lnxd;

    invoke-direct {p3, p1}, Lnxd;-><init>(Ljava/io/IOException;)V

    throw p3

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Lnyz;->a()Lnxd;

    move-result-object p1

    throw p1

    :catch_3
    move-exception p1

    iget-boolean p3, p1, Lnxd;->a:Z

    if-eqz p3, :cond_2

    new-instance p3, Lnxd;

    invoke-direct {p3, p1}, Lnxd;-><init>(Ljava/io/IOException;)V

    move-object p1, p3

    :cond_2
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception p1

    :try_start_6
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    :try_start_7
    const-class p3, Ljava/lang/Throwable;

    const-string p4, "addSuppressed"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/Throwable;

    aput-object v3, v2, v0

    invoke-virtual {p3, p4, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    new-array p4, v1, [Ljava/lang/Object;

    aput-object p2, p4, v0

    invoke-virtual {p3, p1, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_0

    :catch_4
    move-exception p2

    :goto_0
    :try_start_8
    throw p1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    :catch_5
    move-exception p1

    sget-object p2, Lgnf;->a:Lnak;

    invoke-virtual {p2}, Lnaf;->c()Lnaz;

    move-result-object p2

    const-string p3, "Failed to load persisted manifest."

    const/16 p4, 0xc20

    invoke-static {p2, p3, p4, p1}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    iget-object p1, p0, Lgnf;->d:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-void

    :cond_3
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Lnkl;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgnf;->g:Lnkl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
