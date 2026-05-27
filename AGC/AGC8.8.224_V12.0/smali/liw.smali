.class public final Lliw;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Ljava/io/File;

.field public c:I

.field public d:Z

.field private final e:Ljava/lang/String;

.field private f:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/libraries/performance/primes/metrics/crash/CrashCounter"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lliw;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lliw;->c:I

    iput-boolean v0, p0, Lliw;->d:Z

    iput-object p1, p0, Lliw;->b:Ljava/io/File;

    iput-object p2, p0, Lliw;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    invoke-virtual {p0}, Lliw;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Lliw;->c:I

    return v0
.end method

.method public final b()Ljava/io/File;
    .locals 4

    iget-object v0, p0, Lliw;->f:Ljava/io/File;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lliw;->b:Ljava/io/File;

    iget-object v2, p0, Lliw;->e:Ljava/lang/String;

    const-string v3, "_crash_counter_storage.pb"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lliw;->f:Ljava/io/File;

    :cond_0
    iget-object v0, p0, Lliw;->f:Ljava/io/File;

    return-object v0
.end method

.method public final c()Z
    .locals 7

    iget-boolean v0, p0, Lliw;->d:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Lliw;->b()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    invoke-static {}, Lnwh;->a()Lnwh;

    move-result-object v3

    sget-object v4, Llja;->c:Llja;

    invoke-static {v2}, Lnvy;->I(Ljava/io/InputStream;)Lnvy;

    move-result-object v5

    invoke-virtual {v4}, Lnws;->P()Lnws;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v6, Lnyh;->a:Lnyh;

    invoke-virtual {v6, v4}, Lnyh;->b(Ljava/lang/Object;)Lnyo;

    move-result-object v6

    invoke-static {v5}, Lnvz;->p(Lnvy;)Lnvz;

    move-result-object v5

    invoke-interface {v6, v4, v5, v3}, Lnyo;->h(Ljava/lang/Object;Lnyk;Lnwh;)V

    invoke-interface {v6, v4}, Lnyo;->f(Ljava/lang/Object;)V
    :try_end_2
    .catch Lnxd; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lnyz; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {v4}, Lnws;->ae(Lnws;)V

    check-cast v4, Llja;

    iget v3, v4, Llja;->b:I

    iput v3, p0, Lliw;->c:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_5
    invoke-virtual {v3}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    instance-of v4, v4, Lnxd;

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    check-cast v3, Lnxd;

    throw v3

    :cond_1
    throw v3

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    instance-of v4, v4, Lnxd;

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    check-cast v3, Lnxd;

    throw v3

    :cond_2
    new-instance v4, Lnxd;

    invoke-direct {v4, v3}, Lnxd;-><init>(Ljava/io/IOException;)V

    throw v4

    :catch_2
    move-exception v3

    invoke-virtual {v3}, Lnyz;->a()Lnxd;

    move-result-object v3

    throw v3

    :catch_3
    move-exception v3

    iget-boolean v4, v3, Lnxd;->a:Z

    if-eqz v4, :cond_3

    new-instance v4, Lnxd;

    invoke-direct {v4, v3}, Lnxd;-><init>(Ljava/io/IOException;)V

    move-object v3, v4

    :cond_3
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v3

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_7
    invoke-static {v3, v2}, Lljr;->b(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_0
    throw v3
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :catch_4
    move-exception v1

    sget-object v2, Lliw;->a:Lnak;

    invoke-virtual {v2}, Lnaf;->c()Lnaz;

    move-result-object v2

    const-string v3, "failed to read counter from disk."

    const/16 v4, 0x1199

    invoke-static {v2, v3, v4, v1}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    return v0

    :catch_5
    move-exception v2

    iput v0, p0, Lliw;->c:I

    :goto_1
    iput-boolean v1, p0, Lliw;->d:Z

    return v1
.end method
