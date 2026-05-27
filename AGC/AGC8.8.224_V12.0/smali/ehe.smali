.class public final Lehe;
.super Ljava/lang/Object;

# interfaces
.implements Ledm;


# instance fields
.field public final a:Lgxl;

.field public b:J

.field public c:Z

.field public d:I

.field public final synthetic e:Lehf;

.field public final f:Lnwn;

.field public final g:Ljew;

.field private final h:Lgaa;

.field private final i:Lmqp;

.field private final j:Ljava/util/UUID;

.field private k:Lcom/google/googlex/gcam/InterleavedImageU8;

.field private l:Lnrc;

.field private m:Lcom/google/googlex/gcam/ShotMetadata;

.field private n:Lnrc;

.field private o:Lcom/google/googlex/gcam/ShotMetadata;

.field private p:Lcom/google/googlex/gcam/PortraitRequest;

.field private q:Lcom/google/googlex/gcam/ShotMetadata;

.field private r:Lnou;

.field private s:Ljuf;

.field private t:Z

.field private u:Z

.field private final v:Lehb;


# direct methods
.method public constructor <init>(Lehf;Lgxl;Lgaa;Lmqp;Ljava/util/UUID;Lmqp;)V
    .locals 1

    iput-object p1, p0, Lehe;->e:Lehf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljew;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljew;-><init>([C)V

    iput-object p1, p0, Lehe;->g:Ljew;

    sget-object p1, Lnki;->f:Lnki;

    invoke-virtual {p1}, Lnws;->O()Lnwn;

    move-result-object p1

    iput-object p1, p0, Lehe;->f:Lnwn;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lehe;->c:Z

    iput-boolean p1, p0, Lehe;->t:Z

    const/4 v0, 0x1

    iput v0, p0, Lehe;->d:I

    iput-boolean p1, p0, Lehe;->u:Z

    iput-object p3, p0, Lehe;->h:Lgaa;

    iput-object p2, p0, Lehe;->a:Lgxl;

    iput-object p4, p0, Lehe;->i:Lmqp;

    iput-object p5, p0, Lehe;->j:Ljava/util/UUID;

    sget-object p1, Ledl;->a:Lilz;

    const/4 p4, 0x0

    invoke-interface {p3, p1, p4}, Lgaa;->a(Lilz;F)V

    new-instance p1, Lehb;

    invoke-direct {p1, p0, p3, p2, p6}, Lehb;-><init>(Lehe;Lgaa;Lgxl;Lmqp;)V

    iput-object p1, p0, Lehe;->v:Lehb;

    return-void
.end method

.method public static bridge synthetic g(Lehe;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lehe;->t:Z

    return-void
.end method


# virtual methods
.method public final a(Lkpb;Lnou;)V
    .locals 0

    return-void
.end method

.method public final b(Lnrc;Lcom/google/googlex/gcam/ShotMetadata;Lnqv;Ljava/util/List;)V
    .locals 0

    iget-object p3, p0, Lehe;->a:Lgxl;

    invoke-interface {p3}, Lgxl;->s()Ljava/lang/String;

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lehe;->l:Lnrc;

    iput-object p2, p0, Lehe;->m:Lcom/google/googlex/gcam/ShotMetadata;

    return-void

    :cond_1
    :goto_0
    new-instance p1, Lnrc;

    invoke-direct {p1}, Lnrc;-><init>()V

    iput-object p1, p0, Lehe;->l:Lnrc;

    new-instance p1, Lcom/google/googlex/gcam/ShotMetadata;

    invoke-direct {p1}, Lcom/google/googlex/gcam/ShotMetadata;-><init>()V

    iput-object p1, p0, Lehe;->m:Lcom/google/googlex/gcam/ShotMetadata;

    return-void
.end method

.method public final c(Lcom/google/googlex/gcam/InterleavedImageU8;Lcom/google/googlex/gcam/PortraitRequest;Lcom/google/googlex/gcam/ShotMetadata;Lnou;Ljuf;)V
    .locals 2

    iput-object p1, p0, Lehe;->k:Lcom/google/googlex/gcam/InterleavedImageU8;

    iput-object p2, p0, Lehe;->p:Lcom/google/googlex/gcam/PortraitRequest;

    iput-object p3, p0, Lehe;->q:Lcom/google/googlex/gcam/ShotMetadata;

    iput-object p4, p0, Lehe;->r:Lnou;

    iput-object p5, p0, Lehe;->s:Ljuf;

    iget-object p1, p0, Lehe;->e:Lehf;

    iget-object p1, p1, Lehf;->c:Legz;

    iget-object p2, p0, Lehe;->p:Lcom/google/googlex/gcam/PortraitRequest;

    iget-object p3, p0, Lehe;->a:Lgxl;

    invoke-interface {p3}, Lgxl;->d()J

    move-result-wide p3

    iget-object p5, p1, Legz;->b:Loiw;

    check-cast p5, Lfix;

    invoke-virtual {p5}, Lfix;->b()Lmqp;

    move-result-object p5

    iget-object p1, p1, Legz;->c:Ldhi;

    sget-object v0, Ldib;->l:Ldhj;

    invoke-interface {p1, v0}, Ldhi;->l(Ldhj;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p5}, Lmqp;->g()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p5}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    new-instance p5, Ljava/io/File;

    const-string v0, "portrait"

    invoke-direct {p5, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p5}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p5}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Legz;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->b()Lnaz;

    move-result-object p1

    const-string v0, "Could not create portrait mode debug data folder."

    const/16 v1, 0x5af

    invoke-static {p1, v0, v1}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    :cond_0
    invoke-virtual {p5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iget-wide v0, p2, Lcom/google/googlex/gcam/PortraitRequest;->a:J

    invoke-static {v0, v1, p2, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->PortraitRequest_portrait_raw_path_set(JLcom/google/googlex/gcam/PortraitRequest;Ljava/lang/String;)V

    invoke-static {p3, p4}, Lebe;->d(J)Ljava/lang/String;

    move-result-object p1

    iget-wide p3, p2, Lcom/google/googlex/gcam/PortraitRequest;->a:J

    invoke-static {p3, p4, p2, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->PortraitRequest_shot_prefix_set(JLcom/google/googlex/gcam/PortraitRequest;Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lehe;->a:Lgxl;

    invoke-interface {p1}, Lgxl;->s()Ljava/lang/String;

    return-void
.end method

.method public final declared-synchronized close()V
    .locals 16

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_0
    iget-object v0, v1, Lehe;->e:Lehf;

    iget-object v0, v0, Lehf;->e:Ldhi;

    sget-object v2, Ldib;->A:Ldhj;

    invoke-interface {v0, v2}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v1, Lehe;->l:Lnrc;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lehf;->b:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v2, "Attempting to close the session but no primary RAW image has been received."

    const/16 v3, 0x5c2

    invoke-static {v0, v2, v3}, Ld;->g(Lnaz;Ljava/lang/String;C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :goto_0
    :try_start_1
    iget-object v0, v1, Lehe;->k:Lcom/google/googlex/gcam/InterleavedImageU8;

    if-nez v0, :cond_2

    sget-object v0, Lehf;->b:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v2, "Attempting to close the session but no RGB image has been received."

    const/16 v3, 0x5c1

    invoke-static {v0, v2, v3}, Ld;->g(Lnaz;Ljava/lang/String;C)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    iget-object v0, v1, Lehe;->e:Lehf;

    iget-boolean v0, v0, Lehf;->f:Z

    if-eqz v0, :cond_4

    iget-object v0, v1, Lehe;->n:Lnrc;

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    sget-object v0, Lehf;->b:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v2, "Attempting to close the session but no RAW image has been received."

    const/16 v3, 0x5c0

    invoke-static {v0, v2, v3}, Ld;->g(Lnaz;Ljava/lang/String;C)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_4
    :goto_1
    :try_start_3
    iget-boolean v0, v1, Lehe;->u:Z

    if-eqz v0, :cond_5

    sget-object v0, Lehf;->b:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v2, "Postprocessing has already been started from another request."

    const/16 v3, 0x5bf

    invoke-static {v0, v2, v3}, Ld;->g(Lnaz;Ljava/lang/String;C)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :cond_5
    :try_start_4
    iget-object v0, v1, Lehe;->a:Lgxl;

    invoke-interface {v0}, Lgxl;->s()Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, v1, Lehe;->u:Z

    iget-object v0, v1, Lehe;->e:Lehf;

    iget-object v0, v0, Lehf;->g:Ljava/util/Map;

    iget-object v2, v1, Lehe;->a:Lgxl;

    invoke-interface {v2}, Lgxl;->s()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lehe;->e:Lehf;

    iget-object v0, v0, Lehf;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v14

    iget-object v0, v1, Lehe;->r:Lnou;

    invoke-static {v0}, Lehf;->e(Lnou;)Lcom/google/googlex/gcam/InterleavedImageU16;

    move-result-object v6

    iget-object v0, v1, Lehe;->i:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    const/4 v13, 0x0

    if-eqz v0, :cond_8

    iget-object v0, v1, Lehe;->p:Lcom/google/googlex/gcam/PortraitRequest;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/google/googlex/gcam/PortraitRequest;->a()Lcom/google/googlex/gcam/PixelRectVector;

    move-result-object v0

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_2

    :cond_6
    iget-object v0, v1, Lehe;->p:Lcom/google/googlex/gcam/PortraitRequest;

    invoke-virtual {v0}, Lcom/google/googlex/gcam/PortraitRequest;->a()Lcom/google/googlex/gcam/PixelRectVector;

    move-result-object v0

    iget-wide v2, v0, Lcom/google/googlex/gcam/PixelRectVector;->a:J

    invoke-static {v2, v3, v0}, Lcom/google/googlex/gcam/GcamModuleJNI;->PixelRectVector_size(JLcom/google/googlex/gcam/PixelRectVector;)J

    move-result-wide v2

    long-to-int v0, v2

    :goto_2
    iget-object v2, v1, Lehe;->f:Lnwn;

    iget-object v3, v2, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_7
    iget-object v2, v2, Lnwn;->b:Lnws;

    check-cast v2, Lnki;

    sget-object v3, Lnki;->f:Lnki;

    iget v3, v2, Lnki;->a:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v2, Lnki;->a:I

    iput v0, v2, Lnki;->d:I

    iget-object v0, v1, Lehe;->a:Lgxl;

    invoke-interface {v0}, Lgxl;->s()Ljava/lang/String;

    iget-object v0, v1, Lehe;->i:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lgoy;

    iget-object v5, v1, Lehe;->k:Lcom/google/googlex/gcam/InterleavedImageU8;

    iget-object v0, v1, Lehe;->e:Lehf;

    iget-object v7, v0, Lehf;->j:Lfuz;

    iget-object v8, v1, Lehe;->p:Lcom/google/googlex/gcam/PortraitRequest;

    iget-object v9, v1, Lehe;->l:Lnrc;

    iget-object v10, v1, Lehe;->m:Lcom/google/googlex/gcam/ShotMetadata;

    iget-object v11, v1, Lehe;->n:Lnrc;

    iget-object v12, v1, Lehe;->o:Lcom/google/googlex/gcam/ShotMetadata;

    iget-object v0, v1, Lehe;->v:Lehb;

    move-wide v3, v14

    move-object v13, v0

    invoke-interface/range {v2 .. v13}, Lgoy;->e(JLcom/google/googlex/gcam/InterleavedImageU8;Lcom/google/googlex/gcam/InterleavedImageU16;Lfuz;Lcom/google/googlex/gcam/PortraitRequest;Lcom/google/googlex/gcam/RawReadView;Lcom/google/googlex/gcam/ShotMetadata;Lcom/google/googlex/gcam/RawReadView;Lcom/google/googlex/gcam/ShotMetadata;Lehb;)Lnou;

    move-result-object v0

    goto :goto_3

    :cond_8
    new-instance v0, Lkdf;

    const-string v2, "Portrait controller not available or null PortraitRequest, no effect applied."

    invoke-direct {v0, v2}, Lkdf;-><init>(Ljava/lang/String;)V

    sget-object v2, Lehf;->b:Lnak;

    invoke-virtual {v2}, Lnaf;->b()Lnaz;

    move-result-object v2

    const-string v3, "No effect applied."

    const/16 v4, 0x5bd

    invoke-static {v2, v3, v4, v0}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    invoke-static {v0}, Lnsy;->A(Ljava/lang/Throwable;)Lnou;

    move-result-object v0

    :goto_3
    new-instance v2, Lehc;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v14, v15, v3}, Lehc;-><init>(Lehe;JI)V

    sget-object v3, Lnnv;->a:Lnnv;

    invoke-static {v0, v2, v3}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d(Lnrc;Lcom/google/googlex/gcam/ShotMetadata;Lnqv;Ljava/util/List;)V
    .locals 0

    iget-object p3, p0, Lehe;->a:Lgxl;

    invoke-interface {p3}, Lgxl;->s()Ljava/lang/String;

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lehe;->n:Lnrc;

    iput-object p2, p0, Lehe;->o:Lcom/google/googlex/gcam/ShotMetadata;

    return-void

    :cond_1
    :goto_0
    new-instance p1, Lnrc;

    invoke-direct {p1}, Lnrc;-><init>()V

    iput-object p1, p0, Lehe;->n:Lnrc;

    new-instance p1, Lcom/google/googlex/gcam/ShotMetadata;

    invoke-direct {p1}, Lcom/google/googlex/gcam/ShotMetadata;-><init>()V

    iput-object p1, p0, Lehe;->o:Lcom/google/googlex/gcam/ShotMetadata;

    return-void
.end method

.method public final e(Lcom/google/googlex/gcam/InterleavedImageU8;Lcom/google/googlex/gcam/ShotMetadata;Ljava/util/List;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Invalid operation: addSecondaryRgbImage"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final f(JLmqp;)V
    .locals 3

    iget-boolean v0, p0, Lehe;->t:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lehe;->g:Ljew;

    invoke-virtual {v0}, Ljew;->w()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lehe;->h:Lgaa;

    sget-object v1, Ledl;->a:Lilz;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {v0, v1, v2}, Lgaa;->a(Lilz;F)V

    iget-object v0, p0, Lehe;->s:Ljuf;

    invoke-virtual {v0}, Ljuf;->close()V

    iget-boolean v0, p0, Lehe;->c:Z

    if-eqz v0, :cond_1

    sget-object p1, Lehf;->b:Lnak;

    iget-object p1, p0, Lehe;->a:Lgxl;

    invoke-interface {p1}, Lgxl;->s()Ljava/lang/String;

    iget-object p1, p0, Lehe;->a:Lgxl;

    invoke-interface {p1}, Lgxl;->k()Lhjc;

    move-result-object p1

    iget-object p2, p0, Lehe;->f:Lnwn;

    invoke-virtual {p2}, Lnwn;->i()Lnws;

    move-result-object p2

    check-cast p2, Lnki;

    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Lnws;->ad(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnwn;

    invoke-virtual {v0, p2}, Lnwn;->s(Lnws;)V

    check-cast p1, Lhjd;

    iput-object v0, p1, Lhjd;->z:Lnwn;

    invoke-virtual {p3}, Lmqp;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lehe;->a:Lgxl;

    invoke-interface {p1}, Lgxl;->k()Lhjc;

    move-result-object p1

    invoke-virtual {p3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/libraries/camera/exif/ExifInterface;

    check-cast p1, Lhjd;

    iput-object p2, p1, Lhjd;->g:Lcom/google/android/libraries/camera/exif/ExifInterface;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lehe;->a:Lgxl;

    invoke-interface {p1}, Lgxl;->k()Lhjc;

    move-result-object p1

    iget-object p2, p0, Lehe;->k:Lcom/google/googlex/gcam/InterleavedImageU8;

    invoke-virtual {p2}, Lcom/google/googlex/gcam/InterleavedImageU8;->c()I

    move-result p2

    iget-object p3, p0, Lehe;->k:Lcom/google/googlex/gcam/InterleavedImageU8;

    invoke-virtual {p3}, Lcom/google/googlex/gcam/InterleavedImageU8;->b()I

    move-result p3

    iget-object v0, p0, Lehe;->q:Lcom/google/googlex/gcam/ShotMetadata;

    iget-object v1, p0, Lehe;->a:Lgxl;

    invoke-interface {v1}, Lgxl;->m()Lmqp;

    move-result-object v1

    invoke-static {p2, p3, v0, v1}, Lebe;->a(IILcom/google/googlex/gcam/ShotMetadata;Lmqp;)Lcom/google/android/libraries/camera/exif/ExifInterface;

    move-result-object p2

    check-cast p1, Lhjd;

    iput-object p2, p1, Lhjd;->g:Lcom/google/android/libraries/camera/exif/ExifInterface;

    :goto_0
    iget-object p1, p0, Lehe;->a:Lgxl;

    invoke-interface {p1}, Lgxl;->A()V

    return-void

    :cond_1
    new-instance p3, Ldog;

    const-string v0, "PostProcessingPortraitImageSaverImpl did not save any output images."

    invoke-direct {p3, v0}, Ldog;-><init>(Ljava/lang/String;)V

    sget-object v0, Lehf;->b:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    invoke-interface {v0, p3}, Lnah;->h(Ljava/lang/Throwable;)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v1, 0x5c4

    invoke-interface {v0, v1}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    iget-object v1, p0, Lehe;->a:Lgxl;

    invoke-interface {v1}, Lgxl;->s()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error processing the image, cancelling the session %s for %d"

    invoke-interface {v0, v2, v1, p1, p2}, Lnah;->y(Ljava/lang/String;Ljava/lang/Object;J)V

    iget-object p1, p0, Lehe;->a:Lgxl;

    invoke-interface {p1, p3}, Lgxl;->w(Ljava/lang/Throwable;)V

    return-void

    :cond_2
    sget-object p1, Lehf;->b:Lnak;

    return-void
.end method

.method public final h(JLigo;Lgpa;ILeen;Lhbq;Lmqp;)V
    .locals 24

    move-object/from16 v10, p0

    iget-object v0, v10, Lehe;->p:Lcom/google/googlex/gcam/PortraitRequest;

    iget-wide v1, v0, Lcom/google/googlex/gcam/PortraitRequest;->a:J

    invoke-static {v1, v2, v0}, Lcom/google/googlex/gcam/GcamModuleJNI;->PortraitRequest_image_rotation_get(JLcom/google/googlex/gcam/PortraitRequest;)I

    move-result v0

    invoke-static {v0}, Lnqp;->a(I)Lnqp;

    move-result-object v0

    invoke-static {v0}, Lnsy;->h(Lnqp;)I

    move-result v0

    rsub-int v0, v0, 0x168

    iget-object v1, v10, Lehe;->e:Lehf;

    iget-object v11, v1, Lehf;->h:Leeo;

    iget-object v1, v10, Lehe;->p:Lcom/google/googlex/gcam/PortraitRequest;

    invoke-virtual {v1}, Lcom/google/googlex/gcam/PortraitRequest;->d()Z

    move-result v18

    iget-object v1, v10, Lehe;->a:Lgxl;

    iget-object v2, v10, Lehe;->j:Ljava/util/UUID;

    iget-object v3, v10, Lehe;->q:Lcom/google/googlex/gcam/ShotMetadata;

    rem-int/lit16 v0, v0, 0x168

    move-wide/from16 v12, p1

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    move/from16 v16, p5

    move/from16 v17, v0

    move-object/from16 v19, p6

    move-object/from16 v20, v1

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object/from16 v23, p8

    invoke-virtual/range {v11 .. v23}, Leeo;->a(JLigo;Lgpa;IIZLeen;Lgxl;Ljava/util/UUID;Lcom/google/googlex/gcam/ShotMetadata;Lmqp;)Lnou;

    move-result-object v11

    new-instance v12, Lehd;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v12

    move-object/from16 v1, p0

    move-object/from16 v2, p7

    move-object/from16 v3, p6

    move-wide/from16 v4, p1

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v9}, Lehd;-><init>(Lehe;Lhbq;Leen;JLigo;[B[B[B)V

    sget-object v0, Lnnv;->a:Lnnv;

    invoke-static {v11, v12, v0}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    return-void
.end method
