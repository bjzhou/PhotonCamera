.class public final Lgwa;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lkab;

.field public final b:I

.field public final c:I

.field private final d:Ljava/util/UUID;

.field private final e:I

.field private final f:J

.field private final g:Lgpa;

.field private final h:Lgya;

.field private final i:Ldhi;

.field private final j:[B

.field private final k:Lcom/google/android/libraries/camera/exif/ExifInterface;


# direct methods
.method public constructor <init>(IJLjava/util/UUID;Lkab;II[BLcom/google/android/libraries/camera/exif/ExifInterface;Lgpa;Lgya;Ldhi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lgwa;->e:I

    iput-wide p2, p0, Lgwa;->f:J

    iput-object p4, p0, Lgwa;->d:Ljava/util/UUID;

    iput-object p5, p0, Lgwa;->a:Lkab;

    iput p6, p0, Lgwa;->b:I

    iput p7, p0, Lgwa;->c:I

    iput-object p8, p0, Lgwa;->j:[B

    iput-object p9, p0, Lgwa;->k:Lcom/google/android/libraries/camera/exif/ExifInterface;

    iput-object p10, p0, Lgwa;->g:Lgpa;

    iput-object p11, p0, Lgwa;->h:Lgya;

    iput-object p12, p0, Lgwa;->i:Ldhi;

    return-void
.end method


# virtual methods
.method public final a(Lgxn;Lmqp;Lmqp;)Lhkt;
    .locals 8

    new-instance v0, Lhkt;

    iget v1, p0, Lgwa;->b:I

    iget v2, p0, Lgwa;->c:I

    invoke-static {v1, v2}, Lkaf;->h(II)Lkaf;

    sget-object v1, Lkqi;->c:Lkqi;

    invoke-direct {v0, v1}, Lhkt;-><init>(Lkqi;)V

    iget-object v1, p0, Lgwa;->a:Lkab;

    invoke-virtual {v0, v1}, Lhkt;->b(Lkab;)V

    :try_start_0
    iget-object v1, p1, Lgxn;->a:Lkph;

    invoke-interface {v1}, Lkph;->e()Ljava/io/FileOutputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-boolean v5, p1, Lgxn;->b:Z

    iget-object v2, p1, Lgxn;->c:Ldyy;

    invoke-virtual {v2}, Ldyy;->d()Ljava/lang/String;

    move-result-object v6

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v7, v1

    invoke-virtual/range {v2 .. v7}, Lgwa;->b(Lmqp;Lmqp;ZLjava/lang/String;Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    invoke-virtual {p1}, Lgxn;->b()V

    return-object v0

    :catchall_0
    move-exception p2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p3

    :try_start_4
    invoke-static {p2, p3}, Linb;->G(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_0
    throw p2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p2

    invoke-virtual {p1}, Lgxn;->a()V

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final b(Lmqp;Lmqp;ZLjava/lang/String;Ljava/io/OutputStream;)V
    .locals 5

    iget-object v0, p0, Lgwa;->k:Lcom/google/android/libraries/camera/exif/ExifInterface;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p5}, Lcom/google/android/libraries/camera/exif/ExifInterface;->m(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object p5

    :try_start_0
    iget-object v0, p0, Lgwa;->j:[B

    iget-object v1, p0, Lgwa;->g:Lgpa;

    iget-object v1, v1, Lgpa;->c:Lmqp;

    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgwa;->j:[B

    iget-object v3, p0, Lgwa;->g:Lgpa;

    iget-object v3, v3, Lgpa;->c:Lmqp;

    invoke-virtual {v3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthResult;

    invoke-static {v1, v3, v2}, Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthUtils;->d([BLcom/google/android/apps/camera/dynamicdepth/DynamicDepthResult;Lgtk;)[B

    move-result-object v1

    iget-object v3, p0, Lgwa;->g:Lgpa;

    iget-object v3, v3, Lgpa;->c:Lmqp;

    invoke-virtual {v3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthResult;

    invoke-virtual {v3}, Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthResult;->close()V

    if-eqz v1, :cond_0

    move-object v0, v1

    :cond_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object v0, p0, Lgwa;->g:Lgpa;

    iget-object v0, v0, Lgpa;->c:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lkrk;

    invoke-direct {v0, v1}, Lkrk;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, Lkrm;->e(Lkrl;)Lmqq;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v3, v0, Lmqq;->a:Ljava/lang/Object;

    if-eqz v3, :cond_1

    check-cast v3, Lber;

    goto :goto_0

    :cond_1
    move-object v3, v2

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, v0, Lmqq;->b:Ljava/lang/Object;

    if-eqz v0, :cond_2

    move-object v2, v0

    check-cast v2, Lber;

    goto :goto_1

    :cond_2
    :goto_1
    iget-object v0, p0, Lgwa;->g:Lgpa;

    iget-object v0, v0, Lgpa;->b:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lgwa;->g:Lgpa;

    iget-object v0, v0, Lgpa;->b:Lmqp;

    invoke-virtual {v0}, Lmqp;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lber;

    invoke-static {v2, v0}, Lkrm;->b(Lber;Lber;)Lber;

    move-result-object v2

    :cond_3
    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V

    move-object v0, v2

    move-object v2, v3

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lgwa;->g:Lgpa;

    iget-object v0, v0, Lgpa;->a:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lgwa;->g:Lgpa;

    iget-object v0, v0, Lgpa;->a:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lber;

    iget-object v0, p0, Lgwa;->g:Lgpa;

    iget-object v0, v0, Lgpa;->b:Lmqp;

    invoke-virtual {v0}, Lmqp;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lber;

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lgwa;->g:Lgpa;

    iget-object v0, v0, Lgpa;->b:Lmqp;

    invoke-virtual {v0}, Lmqp;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lber;

    :goto_2
    iget-object v3, p0, Lgwa;->i:Ldhi;

    if-eqz v3, :cond_7

    sget-object v4, Ldib;->I:Ldhj;

    invoke-interface {v3, v4}, Ldhi;->l(Ldhj;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lgwa;->h:Lgya;

    if-eqz v3, :cond_7

    sget-object v4, Lgya;->k:Lgya;

    if-ne v3, v4, :cond_7

    if-nez v2, :cond_6

    sget p3, Lkrm;->a:I

    invoke-static {}, Lbet;->a()Lber;

    move-result-object v2

    :cond_6
    invoke-static {v2, p4}, Lkrm;->j(Lber;Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    if-nez v2, :cond_8

    iget-object v2, p0, Lgwa;->d:Ljava/util/UUID;

    xor-int/lit8 v3, p3, 0x1

    sget v4, Lkrm;->a:I

    invoke-static {}, Lbet;->a()Lber;

    move-result-object v4

    invoke-static {v2, p3, p4, v3, v4}, Ljcb;->p(Ljava/util/UUID;ZLjava/lang/String;ZLber;)V

    move-object v2, v4

    goto :goto_3

    :cond_8
    iget-object v3, p0, Lgwa;->d:Ljava/util/UUID;

    xor-int/lit8 v4, p3, 0x1

    invoke-static {v3, p3, p4, v4, v2}, Ljcb;->p(Ljava/util/UUID;ZLjava/lang/String;ZLber;)V

    :goto_3
    iget-object p3, p0, Lgwa;->k:Lcom/google/android/libraries/camera/exif/ExifInterface;

    if-eqz p3, :cond_9

    iget-object p3, p3, Lcom/google/android/libraries/camera/exif/ExifInterface;->bA:Ljava/lang/String;

    invoke-static {p3}, Lkrm;->c(Ljava/lang/String;)Lmqp;

    move-result-object p3

    invoke-virtual {p3}, Lmqp;->f()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lber;

    invoke-static {v0, p3}, Lkrm;->b(Lber;Lber;)Lber;

    move-result-object v0

    :cond_9
    new-instance p3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance p4, Lkrk;

    invoke-direct {p4, v1}, Lkrk;-><init>(Ljava/io/InputStream;)V

    invoke-static {p4, p3, v2, v0}, Lkrm;->n(Lkrl;Ljava/io/OutputStream;Lber;Lber;)V

    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p3

    invoke-virtual {p5, p3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1}, Lmqp;->g()Z

    move-result p3

    if-eqz p3, :cond_b

    invoke-virtual {p2}, Lmqp;->g()Z

    move-result p3

    if-eqz p3, :cond_a

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [B

    invoke-virtual {p2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p3, p2}, Lefr;->b([BLjava/lang/String;)V

    :cond_a
    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-virtual {p5, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_b
    invoke-virtual {p5}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-virtual {p5}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p2

    invoke-static {p1, p2}, Linb;->G(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_4
    throw p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p1, Lgwa;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lgwa;

    iget-wide v2, p0, Lgwa;->f:J

    iget-wide v4, p1, Lgwa;->f:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget v0, p0, Lgwa;->b:I

    iget v2, p1, Lgwa;->b:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lgwa;->c:I

    iget v2, p1, Lgwa;->c:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lgwa;->e:I

    iget p1, p1, Lgwa;->e:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Lgwa;->f:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lgwa;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lgwa;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lgwa;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "%d_%dx%d_%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-wide v0, p0, Lgwa;->f:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BurstMemoryImage["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
