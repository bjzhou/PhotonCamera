.class public final Lgwq;
.super Ljava/lang/Object;

# interfaces
.implements Lgxl;


# static fields
.field private static final b:Lnak;


# instance fields
.field public final a:Lgxy;

.field private final c:Lhjc;

.field private final d:Ljava/lang/String;

.field private final e:J

.field private final f:Lcjf;

.field private g:Lkou;

.field private final h:Lnph;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/session/ImageIntentSession"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lgwq;->b:Lnak;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLcjf;Lhjc;Lnph;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgwq;->d:Ljava/lang/String;

    iput-wide p2, p0, Lgwq;->e:J

    iput-object p4, p0, Lgwq;->f:Lcjf;

    iput-object p5, p0, Lgwq;->c:Lhjc;

    invoke-static {}, Lgxy;->a()Lgxy;

    move-result-object p1

    iput-object p1, p0, Lgwq;->a:Lgxy;

    invoke-virtual {p6}, Lnph;->isDone()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    const-string p2, "SettableFuture for image data is already set before the session started"

    invoke-static {p1, p2}, Lmoz;->q(ZLjava/lang/Object;)V

    iput-object p6, p0, Lgwq;->h:Lnph;

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 0

    return-void
.end method

.method public final B(Ligf;Ljava/lang/Throwable;)V
    .locals 2

    sget-object p1, Lgwq;->b:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    const-string v0, "Error in Intent session."

    const/16 v1, 0xcfe

    invoke-static {p1, v0, v1, p2}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    iget-object p1, p0, Lgwq;->h:Lnph;

    invoke-virtual {p1, p2}, Lnph;->a(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final C(Z)V
    .locals 0

    return-void
.end method

.method public final D()V
    .locals 0

    return-void
.end method

.method public final E()V
    .locals 0

    return-void
.end method

.method public final M()V
    .locals 0

    return-void
.end method

.method public final N(Lkou;Z)V
    .locals 0

    iput-object p1, p0, Lgwq;->g:Lkou;

    return-void
.end method

.method public final O(Z)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized Q(Ligf;)V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized S(Lkaf;)V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final synthetic T(J)V
    .locals 0

    return-void
.end method

.method public final synthetic U()V
    .locals 0

    invoke-static {p0}, Ljfc;->k(Lgxl;)V

    return-void
.end method

.method public final V(Ljava/lang/Integer;)V
    .locals 0

    return-void
.end method

.method public final X(Landroid/graphics/Bitmap;I)V
    .locals 0

    return-void
.end method

.method public final Y(Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public final synthetic Z(Landroid/graphics/Bitmap;I)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized a()Lkae;
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lkae;->b:Lkae;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final ab(I)V
    .locals 0

    return-void
.end method

.method public final ac(Lcvr;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized b(Lkae;)V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final c(Lgpy;)V
    .locals 0

    return-void
.end method

.method public final d()J
    .locals 2

    iget-wide v0, p0, Lgwq;->e:J

    return-wide v0
.end method

.method public final f()Lgxn;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final g()Lgxr;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final h()Lgxy;
    .locals 1

    iget-object v0, p0, Lgwq;->a:Lgxy;

    return-object v0
.end method

.method public final i()Lgya;
    .locals 1

    sget-object v0, Lgya;->i:Lgya;

    return-object v0
.end method

.method public final j()Lgyb;
    .locals 1

    sget-object v0, Lgyb;->a:Lgyb;

    return-object v0
.end method

.method public final k()Lhjc;
    .locals 1

    iget-object v0, p0, Lgwq;->c:Lhjc;

    return-object v0
.end method

.method public final l()Lkou;
    .locals 1

    iget-object v0, p0, Lgwq;->g:Lkou;

    return-object v0
.end method

.method public final m()Lmqp;
    .locals 1

    sget-object v0, Lmpx;->a:Lmpx;

    return-object v0
.end method

.method public final n()Lmqp;
    .locals 1

    sget-object v0, Lmpx;->a:Lmpx;

    return-object v0
.end method

.method public final p()Lnou;
    .locals 3

    iget-object v0, p0, Lgwq;->h:Lnph;

    new-instance v1, Leth;

    const/16 v2, 0x12

    invoke-direct {v1, p0, v2}, Leth;-><init>(Lgwq;I)V

    sget-object v2, Lnnv;->a:Lnnv;

    invoke-static {v0, v1, v2}, Lnnf;->i(Lnou;Lmqi;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v0

    return-object v0
.end method

.method public final q()Lnou;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Image Intent session doesn\'t have a MediaStoreRecord."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final r([BLhkt;)Lnou;
    .locals 4

    :try_start_0
    iget-object p2, p2, Lhkt;->c:Lmqp;

    invoke-virtual {p2}, Lmqp;->f()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/libraries/camera/exif/ExifInterface;

    if-eqz p2, :cond_2

    iget-object v0, p0, Lgwq;->f:Lcjf;

    invoke-virtual {v0}, Lcjf;->b()Lmqp;

    move-result-object v0

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lkds;

    invoke-direct {v1, p2}, Lkds;-><init>(Lcom/google/android/libraries/camera/exif/ExifInterface;)V

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/location/Location;

    invoke-virtual {v1, p2}, Lkds;->d(Landroid/location/Location;)V

    iget-object p2, v1, Lkds;->a:Lcom/google/android/libraries/camera/exif/ExifInterface;

    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    if-eqz p1, :cond_1

    new-instance v1, Lnff;

    invoke-direct {v1, v0}, Lnff;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p2, v1}, Lcom/google/android/libraries/camera/exif/ExifInterface;->m(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    array-length v2, p1

    const/4 v3, 0x0

    invoke-virtual {p2, p1, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v1}, Lnff;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v1}, Lnff;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catchall_0
    move-exception p1

    :try_start_5
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    :try_start_6
    invoke-static {p1, p2}, Lkfg;->D(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    :try_start_7
    invoke-virtual {v1}, Lnff;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception p2

    :try_start_8
    invoke-static {p1, p2}, Lkfg;->D(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_1
    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Argument is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_2
    iget-object p2, p0, Lgwq;->h:Lnph;

    invoke-virtual {p2, p1}, Lnph;->e(Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    sget-object p2, Lgwq;->b:Lnak;

    invoke-virtual {p2}, Lnaf;->b()Lnaz;

    move-result-object p2

    const-string v0, "Could not read image bytes."

    const/16 v1, 0xcfd

    invoke-static {p2, v0, v1, p1}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    iget-object p2, p0, Lgwq;->h:Lnph;

    invoke-virtual {p2, p1}, Lnph;->a(Ljava/lang/Throwable;)Z

    :goto_3
    iget-object p1, p0, Lgwq;->a:Lgxy;

    invoke-static {p1}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object p1

    return-object p1
.end method

.method public final s()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgwq;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final u(Lgxw;)V
    .locals 0

    return-void
.end method

.method public final w(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final y()V
    .locals 0

    return-void
.end method

.method public final z()V
    .locals 0

    return-void
.end method
