.class public final Lgxk;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lnak;


# instance fields
.field private final b:Lmqp;

.field private final c:Lmqp;

.field private final d:Lhkp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/session/SessionStorageManagerImpl"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lgxk;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;Lhkp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

    move-result-object p1

    iput-object p1, p0, Lgxk;->b:Lmqp;

    invoke-static {p2}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

    move-result-object p1

    iput-object p1, p0, Lgxk;->c:Lmqp;

    iput-object p3, p0, Lgxk;->d:Lhkp;

    return-void
.end method

.method private final b(Ljava/io/File;)V
    .locals 9

    new-instance v0, Lgxj;

    invoke-direct {v0}, Lgxj;-><init>()V

    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    const-wide/32 v6, -0x5265c00

    add-long/2addr v6, v0

    cmp-long v8, v4, v6

    if-gez v8, :cond_1

    :try_start_0
    iget-object v4, p0, Lgxk;->d:Lhkp;

    invoke-virtual {v4, v3}, Lhkp;->a(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    sget-object v4, Lgxk;->a:Lnak;

    invoke-virtual {v4}, Lnaf;->c()Lnaz;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v5, "Could not clean up %s"

    const/16 v6, 0xd2c

    invoke-static {v4, v5, v3, v6}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/io/File;
    .locals 4

    iget-object v0, p0, Lgxk;->b:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sget-object v0, Lhkp;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v1}, Lgxk;->b(Ljava/io/File;)V

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lgxk;->c:Lmqp;

    invoke-virtual {v2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-direct {v0, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lgxk;->b(Ljava/io/File;)V

    return-object v1

    :cond_2
    new-instance p1, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Session directory is not a directory: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Could not create session directory: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Could retrieve baseDirectory."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
