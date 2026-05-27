.class public final Ledd;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lnak;

.field private static final b:Lmvk;

.field private static final c:Lmwn;

.field private static final d:Lmwa;


# instance fields
.field private final e:Ldhi;

.field private final f:Ldzf;

.field private final g:Lkbc;

.field private final h:Lgvb;

.field private final i:Ljew;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "com/google/android/apps/camera/hdrplus/JpegCompressionSaving"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Ledd;->a:Lnak;

    new-instance v0, Lmvi;

    invoke-direct {v0}, Lmvi;-><init>()V

    sget-object v1, Lnqp;->b:Lnqp;

    sget-object v2, Lkdl;->a:Lkdl;

    invoke-virtual {v0, v1, v2}, Lmvi;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lnqp;->c:Lnqp;

    sget-object v2, Lkdl;->b:Lkdl;

    invoke-virtual {v0, v1, v2}, Lmvi;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lnqp;->d:Lnqp;

    sget-object v2, Lkdl;->c:Lkdl;

    invoke-virtual {v0, v1, v2}, Lmvi;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lnqp;->e:Lnqp;

    sget-object v2, Lkdl;->d:Lkdl;

    invoke-virtual {v0, v1, v2}, Lmvi;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lnqp;->f:Lnqp;

    sget-object v2, Lkdl;->e:Lkdl;

    invoke-virtual {v0, v1, v2}, Lmvi;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lnqp;->g:Lnqp;

    sget-object v2, Lkdl;->f:Lkdl;

    invoke-virtual {v0, v1, v2}, Lmvi;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lnqp;->h:Lnqp;

    sget-object v2, Lkdl;->g:Lkdl;

    invoke-virtual {v0, v1, v2}, Lmvi;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lnqp;->i:Lnqp;

    sget-object v2, Lkdl;->h:Lkdl;

    invoke-virtual {v0, v1, v2}, Lmvi;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lmvi;->a()Lmvk;

    move-result-object v0

    sput-object v0, Ledd;->b:Lmvk;

    sget-object v0, Lnqp;->f:Lnqp;

    sget-object v1, Lnqp;->g:Lnqp;

    sget-object v2, Lnqp;->h:Lnqp;

    sget-object v3, Lnqp;->i:Lnqp;

    invoke-static {v0, v1, v2, v3}, Lmwn;->K(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmwn;

    move-result-object v0

    sput-object v0, Ledd;->c:Lmwn;

    invoke-static {}, Lmwa;->i()Lmvw;

    move-result-object v0

    sget-object v1, Lkdl;->a:Lkdl;

    sget-object v2, Lkdl;->b:Lkdl;

    invoke-virtual {v0, v1, v2}, Lmvw;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lkdl;->b:Lkdl;

    sget-object v2, Lkdl;->a:Lkdl;

    invoke-virtual {v0, v1, v2}, Lmvw;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lkdl;->c:Lkdl;

    sget-object v2, Lkdl;->d:Lkdl;

    invoke-virtual {v0, v1, v2}, Lmvw;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lkdl;->d:Lkdl;

    sget-object v2, Lkdl;->c:Lkdl;

    invoke-virtual {v0, v1, v2}, Lmvw;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lkdl;->f:Lkdl;

    sget-object v2, Lkdl;->e:Lkdl;

    invoke-virtual {v0, v1, v2}, Lmvw;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lkdl;->e:Lkdl;

    sget-object v2, Lkdl;->f:Lkdl;

    invoke-virtual {v0, v1, v2}, Lmvw;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lkdl;->h:Lkdl;

    sget-object v2, Lkdl;->g:Lkdl;

    invoke-virtual {v0, v1, v2}, Lmvw;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lkdl;->g:Lkdl;

    sget-object v2, Lkdl;->h:Lkdl;

    invoke-virtual {v0, v1, v2}, Lmvw;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lmvw;->b()Lmwa;

    move-result-object v0

    sput-object v0, Ledd;->d:Lmwa;

    return-void
.end method

.method public constructor <init>(Ldhi;Ljew;Ldzf;Lkbc;Lgvb;[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ledd;->e:Ldhi;

    iput-object p2, p0, Ledd;->i:Ljew;

    iput-object p3, p0, Ledd;->f:Ldzf;

    iput-object p4, p0, Ledd;->g:Lkbc;

    iput-object p5, p0, Ledd;->h:Lgvb;

    return-void
.end method

.method private final b(Ledo;)Z
    .locals 1

    iget-object v0, p0, Ledd;->h:Lgvb;

    iget-object p1, p1, Ledo;->n:Lgkr;

    iget-object p1, p1, Lgkr;->d:Ljava/lang/Object;

    check-cast p1, Lfte;

    iget-object p1, p1, Lfte;->d:Lklv;

    invoke-interface {v0, p1}, Lgvb;->h(Lklv;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public final a(Ledo;Ledb;)V
    .locals 13

    iget-boolean v0, p2, Ledb;->d:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/googlex/gcam/ShotMetadata;

    iget-object v1, p1, Ledo;->d:Lcom/google/googlex/gcam/ShotMetadata;

    invoke-direct {v0, v1}, Lcom/google/googlex/gcam/ShotMetadata;-><init>(Lcom/google/googlex/gcam/ShotMetadata;)V

    invoke-virtual {p1}, Ledo;->b()Ledn;

    move-result-object p1

    invoke-virtual {p1, v0}, Ledn;->f(Lcom/google/googlex/gcam/ShotMetadata;)V

    invoke-virtual {p1}, Ledn;->a()Ledo;

    move-result-object p1

    :cond_0
    sget-object v0, Lnqp;->b:Lnqp;

    iget-object v1, p0, Ledd;->e:Ldhi;

    sget-object v2, Ldho;->bD:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->l(Ldhj;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p1, Ledo;->d:Lcom/google/googlex/gcam/ShotMetadata;

    iget-object v1, p0, Ledd;->g:Lkbc;

    const-string v2, "rotationCalculation"

    invoke-interface {v1, v2}, Lkbc;->e(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/googlex/gcam/ShotMetadata;->e()Lnqp;

    move-result-object v1

    const/16 v2, 0x3c

    invoke-static {v0, v2}, Lnsy;->l(Lcom/google/googlex/gcam/ShotMetadata;I)V

    iget-object v0, p0, Ledd;->g:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    invoke-direct {p0, p1}, Ledd;->b(Ledo;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Ledd;->b:Lmvk;

    invoke-virtual {v0, v1}, Lmvk;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkdl;

    if-nez v1, :cond_1

    sget-object v0, Lnqp;->a:Lnqp;

    goto :goto_0

    :cond_1
    sget-object v2, Ledd;->d:Lmwa;

    invoke-virtual {v2, v1}, Lmwa;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkdl;

    if-nez v1, :cond_2

    sget-object v0, Lnqp;->a:Lnqp;

    goto :goto_0

    :cond_2
    check-cast v0, Lmyt;

    iget-object v0, v0, Lmyt;->c:Lmyt;

    sget-object v2, Lnqp;->a:Lnqp;

    invoke-virtual {v0, v1, v2}, Lmwa;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnqp;

    goto :goto_0

    :cond_3
    move-object v0, v1

    :cond_4
    :goto_0
    iget-object v1, p1, Ledo;->b:Leej;

    iget-wide v2, p1, Ledo;->g:J

    if-eqz v1, :cond_7

    sget-object v4, Lnqp;->b:Lnqp;

    if-eq v0, v4, :cond_7

    sget-object v4, Lnqp;->a:Lnqp;

    if-ne v0, v4, :cond_5

    goto :goto_1

    :cond_5
    new-instance v4, Lkaf;

    invoke-virtual {v1}, Leej;->c()I

    move-result v5

    invoke-virtual {v1}, Leej;->b()I

    move-result v6

    invoke-direct {v4, v5, v6}, Lkaf;-><init>(II)V

    sget-object v5, Ledd;->c:Lmwn;

    invoke-virtual {v5, v0}, Lmwn;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v4}, Lkaf;->j()Lkaf;

    move-result-object v4

    :cond_6
    new-instance v5, Lcom/google/googlex/gcam/YuvImage;

    iget v6, v4, Lkaf;->a:I

    iget v4, v4, Lkaf;->b:I

    iget-object v7, v1, Leej;->c:Lcom/google/googlex/gcam/YuvReadView;

    invoke-virtual {v7}, Lcom/google/googlex/gcam/YuvReadView;->a()Lnrj;

    move-result-object v7

    invoke-direct {v5, v6, v4, v7}, Lcom/google/googlex/gcam/YuvImage;-><init>(IILnrj;)V

    invoke-static {v5}, Lnsy;->g(Lcom/google/googlex/gcam/YuvImage;)Lcom/google/googlex/gcam/YuvWriteView;

    move-result-object v4

    iget-object v1, v1, Leej;->c:Lcom/google/googlex/gcam/YuvReadView;

    invoke-static {v1, v0, v4}, Lcom/google/googlex/gcam/imageproc/Resample;->b(Lcom/google/googlex/gcam/YuvReadView;Lnqp;Lcom/google/googlex/gcam/YuvWriteView;)V

    new-instance v1, Leej;

    invoke-direct {v1, v4, v2, v3}, Leej;-><init>(Lcom/google/googlex/gcam/YuvWriteView;J)V

    goto :goto_1

    :cond_7
    :goto_1
    iget-object v2, p1, Ledo;->a:Lcom/google/googlex/gcam/InterleavedImageU8;

    if-eqz v2, :cond_a

    sget-object v3, Lnqp;->b:Lnqp;

    if-ne v0, v3, :cond_8

    goto :goto_2

    :cond_8
    new-instance v3, Lkaf;

    invoke-virtual {v2}, Lcom/google/googlex/gcam/InterleavedImageU8;->c()I

    move-result v4

    invoke-virtual {v2}, Lcom/google/googlex/gcam/InterleavedImageU8;->b()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lkaf;-><init>(II)V

    sget-object v4, Ledd;->c:Lmwn;

    invoke-virtual {v4, v0}, Lmwn;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v3}, Lkaf;->j()Lkaf;

    move-result-object v3

    :cond_9
    new-instance v4, Lcom/google/googlex/gcam/InterleavedImageU8;

    iget v5, v3, Lkaf;->a:I

    iget v3, v3, Lkaf;->b:I

    invoke-virtual {v2}, Lcom/google/googlex/gcam/InterleavedImageU8;->a()I

    move-result v6

    invoke-direct {v4, v5, v3, v6}, Lcom/google/googlex/gcam/InterleavedImageU8;-><init>(III)V

    invoke-virtual {v2}, Lcom/google/googlex/gcam/InterleavedImageU8;->e()Lcom/google/googlex/gcam/InterleavedReadViewU8;

    move-result-object v2

    invoke-virtual {v4}, Lcom/google/googlex/gcam/InterleavedImageU8;->f()Lcom/google/googlex/gcam/InterleavedWriteViewU8;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/google/googlex/gcam/imageproc/Resample;->a(Lcom/google/googlex/gcam/InterleavedReadViewU8;Lnqp;Lcom/google/googlex/gcam/InterleavedWriteViewU8;)V

    move-object v2, v4

    goto :goto_2

    :cond_a
    :goto_2
    new-instance v0, Ledc;

    invoke-direct {v0, v1, v2}, Ledc;-><init>(Leej;Lcom/google/googlex/gcam/InterleavedImageU8;)V

    iget v8, p2, Ledb;->e:F

    iget v9, p2, Ledb;->f:F

    iget v10, p2, Ledb;->g:F

    iget v11, p2, Ledb;->h:I

    new-instance v1, Lkbb;

    iget-object v2, p0, Ledd;->g:Lkbc;

    const-string v3, "compressJpeg"

    invoke-direct {v1, v2, v3}, Lkbb;-><init>(Lkbc;Ljava/lang/String;)V

    :try_start_0
    iget-object v2, v0, Ledc;->b:Lcom/google/googlex/gcam/InterleavedImageU8;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lcom/google/googlex/gcam/InterleavedImageU8;->e()Lcom/google/googlex/gcam/InterleavedReadViewU8;

    move-result-object v2

    new-instance v3, Lcom/google/googlex/gcam/JpgEncodeOptions;

    invoke-direct {v3}, Lcom/google/googlex/gcam/JpgEncodeOptions;-><init>()V

    iget-wide v4, v2, Lcom/google/googlex/gcam/InterleavedReadViewU8;->a:J

    iget-wide v6, v3, Lcom/google/googlex/gcam/JpgEncodeOptions;->a:J

    const/4 v2, 0x0

    move-wide v3, v4

    move-wide v5, v6

    move v7, v2

    invoke-static/range {v3 .. v11}, Lcom/google/googlex/gcam/imageio/JpgHelper;->encodeRgbToJpegAsByteArrayImpl(JJIFFFI)[B

    move-result-object v2

    invoke-static {v2}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

    move-result-object v2

    invoke-virtual {v2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :goto_3
    invoke-virtual {v1}, Lkbb;->close()V

    goto :goto_4

    :cond_b
    :try_start_1
    iget-object v2, v0, Ledc;->a:Leej;

    if-eqz v2, :cond_14

    iget-object v2, v2, Leej;->c:Lcom/google/googlex/gcam/YuvReadView;

    new-instance v3, Lcom/google/googlex/gcam/JpgEncodeOptions;

    invoke-direct {v3}, Lcom/google/googlex/gcam/JpgEncodeOptions;-><init>()V

    iget-wide v4, v2, Lcom/google/googlex/gcam/YuvReadView;->a:J

    iget-wide v6, v3, Lcom/google/googlex/gcam/JpgEncodeOptions;->a:J

    const/4 v2, 0x0

    move-wide v3, v4

    move-wide v5, v6

    move v7, v2

    invoke-static/range {v3 .. v11}, Lcom/google/googlex/gcam/imageio/JpgHelper;->encodeYuvToJpegAsByteArrayImpl(JJIFFFI)[B

    move-result-object v2

    invoke-static {v2}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

    move-result-object v2

    invoke-virtual {v2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    goto :goto_3

    :goto_4
    invoke-virtual {v0}, Ledc;->a()Lkaf;

    move-result-object v1

    new-instance v3, Lkbb;

    iget-object v4, p0, Ledd;->g:Lkbc;

    const-string v5, "getExif"

    invoke-direct {v3, v4, v5}, Lkbb;-><init>(Lkbc;Ljava/lang/String;)V

    :try_start_2
    iget v4, v1, Lkaf;->a:I

    iget v1, v1, Lkaf;->b:I

    iget-object v5, p1, Ledo;->d:Lcom/google/googlex/gcam/ShotMetadata;

    iget-object v6, p1, Ledo;->n:Lgkr;

    iget-object v6, v6, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {v6}, Lgxl;->m()Lmqp;

    move-result-object v6

    invoke-static {v4, v1, v5, v6}, Lebe;->a(IILcom/google/googlex/gcam/ShotMetadata;Lmqp;)Lcom/google/android/libraries/camera/exif/ExifInterface;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {v3}, Lkbb;->close()V

    array-length v3, v2

    iget-object v4, p2, Ledb;->a:Ljava/lang/String;

    new-instance v5, Lkbb;

    iget-object v6, p0, Ledd;->g:Lkbc;

    const-string v7, "populateExif"

    invoke-direct {v5, v6, v7}, Lkbb;-><init>(Lkbc;Ljava/lang/String;)V

    if-eqz v4, :cond_c

    :try_start_3
    sget v6, Lcom/google/android/libraries/camera/exif/ExifInterface;->TAG_SOFTWARE:I

    invoke-virtual {v1, v6}, Lcom/google/android/libraries/camera/exif/ExifInterface;->getTagStringValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v7, Lcom/google/android/libraries/camera/exif/ExifInterface;->TAG_SOFTWARE:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v7, v4}, Lcom/google/android/libraries/camera/exif/ExifInterface;->i(ILjava/lang/Object;)Lkdq;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/android/libraries/camera/exif/ExifInterface;->y(Lkdq;)V

    :cond_c
    iget-object v4, p1, Ledo;->n:Lgkr;

    iget-object v6, v4, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {v6}, Lgxl;->k()Lhjc;

    move-result-object v6

    int-to-long v7, v3

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    check-cast v6, Lhjd;

    iput-object v3, v6, Lhjd;->k:Ljava/lang/Long;

    new-instance v3, Lkds;

    invoke-direct {v3, v1}, Lkds;-><init>(Lcom/google/android/libraries/camera/exif/ExifInterface;)V

    iget-wide v6, p1, Ledo;->g:J

    invoke-static {v6, v7}, Limw;->a(J)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lkds;->g(J)V

    new-instance v3, Lkds;

    invoke-direct {v3, v1}, Lkds;-><init>(Lcom/google/android/libraries/camera/exif/ExifInterface;)V

    iget-object v6, v4, Lgkr;->d:Ljava/lang/Object;

    check-cast v6, Lfte;

    iget-object v6, v6, Lfte;->d:Lklv;

    sget v7, Lcom/google/android/libraries/camera/exif/ExifInterface;->Z:I

    invoke-virtual {v1, v7}, Lcom/google/android/libraries/camera/exif/ExifInterface;->a(I)Lkac;

    move-result-object v7

    sget v8, Lcom/google/android/libraries/camera/exif/ExifInterface;->G:I

    invoke-virtual {v1, v8}, Lcom/google/android/libraries/camera/exif/ExifInterface;->a(I)Lkac;

    move-result-object v8

    invoke-virtual {v3, v6, v7, v8}, Lkds;->h(Lklv;Lkac;Lkac;)V

    iget-object v3, v4, Lgkr;->d:Ljava/lang/Object;

    check-cast v3, Lfte;

    iget v3, v3, Lfte;->c:I

    if-ltz v3, :cond_d

    sget v6, Lcom/google/android/libraries/camera/exif/ExifInterface;->bh:I

    const-string v7, "M"

    invoke-virtual {v1, v6, v7}, Lcom/google/android/libraries/camera/exif/ExifInterface;->i(ILjava/lang/Object;)Lkdq;

    move-result-object v6

    sget v7, Lcom/google/android/libraries/camera/exif/ExifInterface;->bi:I

    new-instance v8, Lkac;

    int-to-long v9, v3

    const-wide/16 v11, 0x1

    invoke-direct {v8, v9, v10, v11, v12}, Lkac;-><init>(JJ)V

    invoke-virtual {v1, v7, v8}, Lcom/google/android/libraries/camera/exif/ExifInterface;->i(ILjava/lang/Object;)Lkdq;

    move-result-object v3

    invoke-virtual {v1, v6}, Lcom/google/android/libraries/camera/exif/ExifInterface;->y(Lkdq;)V

    invoke-virtual {v1, v3}, Lcom/google/android/libraries/camera/exif/ExifInterface;->y(Lkdq;)V

    :cond_d
    iget-object v3, v4, Lgkr;->d:Ljava/lang/Object;

    check-cast v3, Lfte;

    iget-object v3, v3, Lfte;->e:[B

    array-length v4, v3

    if-lez v4, :cond_e

    sget v4, Lcom/google/android/libraries/camera/exif/ExifInterface;->f:I

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v4, v6}, Lcom/google/android/libraries/camera/exif/ExifInterface;->i(ILjava/lang/Object;)Lkdq;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/libraries/camera/exif/ExifInterface;->y(Lkdq;)V

    :cond_e
    iget-object v3, p0, Ledd;->e:Ldhi;

    sget-object v4, Ldho;->bD:Ldhj;

    invoke-interface {v3, v4}, Ldhi;->l(Ldhj;)Z

    move-result v3

    if-nez v3, :cond_f

    invoke-direct {p0, p1}, Ledd;->b(Ledo;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-static {v1}, Lkdl;->c(Lcom/google/android/libraries/camera/exif/ExifInterface;)Lkdl;

    move-result-object v3

    sget-object v4, Ledd;->d:Lmwa;

    invoke-virtual {v4, v3}, Lmwa;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkdl;

    invoke-static {v3}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v3

    sget-object v4, Lkdl;->a:Lkdl;

    invoke-virtual {v3, v4}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkdl;

    sget v4, Lcom/google/android/libraries/camera/exif/ExifInterface;->j:I

    iget-short v3, v3, Lkdl;->i:S

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Lcom/google/android/libraries/camera/exif/ExifInterface;->i(ILjava/lang/Object;)Lkdq;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/libraries/camera/exif/ExifInterface;->y(Lkdq;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_f
    invoke-virtual {v5}, Lkbb;->close()V

    iget-object p1, p1, Ledo;->n:Lgkr;

    invoke-virtual {v0}, Ledc;->a()Lkaf;

    iget-object v0, p0, Ledd;->i:Ljew;

    invoke-virtual {v0, v1}, Ljew;->n(Lcom/google/android/libraries/camera/exif/ExifInterface;)V

    iget-boolean v0, p2, Ledb;->d:Z

    if-eqz v0, :cond_12

    iget-object v0, p1, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {v0}, Lgxl;->g()Lgxr;

    move-result-object v0

    invoke-virtual {v0}, Lgxr;->h()Lgxn;

    move-result-object v0

    iget-object v3, p2, Ledb;->b:Ljava/lang/String;

    if-eqz v3, :cond_10

    iget-object v4, v0, Lgxn;->a:Lkph;

    invoke-interface {v4, v3}, Lkph;->h(Ljava/lang/String;)V

    :cond_10
    :try_start_4
    iget-object v3, p2, Ledb;->c:Ldyy;

    if-eqz v3, :cond_11

    iget-object v4, p0, Ledd;->f:Ldzf;

    iget-object v5, v0, Lgxn;->a:Lkph;

    invoke-interface {v4, v5, v3}, Ldzf;->c(Lkph;Ldyy;)V

    :cond_11
    iget-object v3, v0, Lgxn;->a:Lkph;

    invoke-static {v2, v1, v3}, Llho;->B([BLcom/google/android/libraries/camera/exif/ExifInterface;Lkph;)J

    invoke-virtual {v0}, Lgxn;->b()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_5

    :catch_0
    move-exception v3

    sget-object v4, Ledd;->a:Lnak;

    invoke-virtual {v4}, Lnaf;->b()Lnaz;

    move-result-object v4

    const-string v5, "Error writing secondary image to disk"

    const/16 v6, 0x524

    invoke-static {v4, v5, v6, v3}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    invoke-virtual {v0}, Lgxn;->a()V

    :cond_12
    :goto_5
    iget-boolean p2, p2, Ledb;->d:Z

    if-nez p2, :cond_13

    iget-object p2, p1, Lgkr;->c:Ljava/lang/Object;

    new-instance v0, Lhkt;

    sget-object v3, Lkqi;->c:Lkqi;

    invoke-direct {v0, v3}, Lhkt;-><init>(Lkqi;)V

    invoke-virtual {v0, v1}, Lhkt;->a(Lcom/google/android/libraries/camera/exif/ExifInterface;)V

    invoke-static {v1}, Lkdl;->c(Lcom/google/android/libraries/camera/exif/ExifInterface;)Lkdl;

    move-result-object v1

    invoke-static {v1}, Lkdl;->a(Lkdl;)Lkab;

    move-result-object v1

    iget v1, v1, Lkab;->e:I

    invoke-static {v1}, Lkab;->b(I)Lkab;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhkt;->b(Lkab;)V

    invoke-interface {p2, v2, v0}, Lgxl;->r([BLhkt;)Lnou;

    iget-object p1, p1, Lgkr;->d:Ljava/lang/Object;

    check-cast p1, Lfte;

    iget-object p1, p1, Lfte;->f:Ljuf;

    invoke-virtual {p1}, Ljuf;->close()V

    :cond_13
    return-void

    :catchall_0
    move-exception p1

    :try_start_5
    invoke-virtual {v5}, Lkbb;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception p2

    invoke-static {p1, p2}, Lemq;->h(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_6
    throw p1

    :catchall_2
    move-exception p1

    :try_start_6
    invoke-virtual {v3}, Lkbb;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_7

    :catchall_3
    move-exception p2

    invoke-static {p1, p2}, Lemq;->h(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_7
    throw p1

    :cond_14
    :try_start_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Only YUV and RGB are supported for JPEG compression."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :catchall_4
    move-exception p1

    :try_start_8
    invoke-virtual {v1}, Lkbb;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto :goto_8

    :catchall_5
    move-exception p2

    invoke-static {p1, p2}, Lemq;->h(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_8
    goto :goto_a

    :goto_9
    throw p1

    :goto_a
    goto :goto_9
.end method
