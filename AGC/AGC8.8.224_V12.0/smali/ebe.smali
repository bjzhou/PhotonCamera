.class public final Lebe;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnqz;

.field public static final b:Lnqz;

.field public static final c:Lnqz;

.field public static final d:Lnqz;

.field public static final e:J

.field private static final f:Lnak;


# instance fields
.field private final g:Ldhi;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "com/google/android/apps/camera/hdrplus/GcamUtils"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lebe;->f:Lnak;

    sget-object v0, Lnqz;->f:Lnqz;

    sput-object v0, Lebe;->a:Lnqz;

    sget-object v0, Lnqz;->d:Lnqz;

    sput-object v0, Lebe;->b:Lnqz;

    sget-object v0, Lnqz;->f:Lnqz;

    sput-object v0, Lebe;->c:Lnqz;

    sget-object v0, Lnqz;->b:Lnqz;

    sput-object v0, Lebe;->d:Lnqz;

    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->DEBUG_SAVE_INPUT_METERING_get()J

    move-result-wide v0

    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->DEBUG_SAVE_INPUT_PAYLOAD_get()J

    move-result-wide v2

    or-long/2addr v0, v2

    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->DEBUG_SAVE_METADATA_get()J

    move-result-wide v2

    or-long/2addr v0, v2

    sput-wide v0, Lebe;->e:J

    return-void
.end method

.method public constructor <init>(Ldhi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lebe;->g:Ldhi;

    return-void
.end method

.method public static a(IILcom/google/googlex/gcam/ShotMetadata;Lmqp;)Lcom/google/android/libraries/camera/exif/ExifInterface;
    .locals 8

    new-instance v0, Lcom/google/googlex/gcam/imageio/ExifEncode;

    invoke-direct {v0}, Lcom/google/googlex/gcam/imageio/ExifEncode;-><init>()V

    invoke-static {p2}, Lcom/google/googlex/gcam/ShotMetadata;->a(Lcom/google/googlex/gcam/ShotMetadata;)J

    move-result-wide v1

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/google/googlex/gcam/imageio/ExifEncode;->encodeGcamExif(IIJ)[B

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    array-length v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v1, v0, 0x4

    new-array v1, v1, [B

    const/4 v2, -0x1

    aput-byte v2, v1, p1

    const/4 v2, 0x1

    const/16 v3, -0x1f

    aput-byte v3, v1, v2

    add-int/lit8 v3, v0, 0x2

    shr-int/lit8 v4, v3, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    const/4 v5, 0x2

    aput-byte v4, v1, v5

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    const/4 v4, 0x3

    aput-byte v3, v1, v4

    if-lez v0, :cond_1

    const/4 v3, 0x4

    invoke-static {p0, p1, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    new-instance p0, Lcom/google/android/libraries/camera/exif/ExifInterface;

    invoke-direct {p0}, Lcom/google/android/libraries/camera/exif/ExifInterface;-><init>()V

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/google/android/libraries/camera/exif/ExifInterface;->r([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v1, Lebe;->f:Lnak;

    invoke-virtual {v1}, Lnaf;->c()Lnaz;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Unable to parse EXIF: %s"

    const/16 v6, 0x4ec

    invoke-static {v1, v3, v0, v6}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    :goto_1
    invoke-virtual {p2}, Lcom/google/googlex/gcam/ShotMetadata;->f()Lnqy;

    move-result-object v0

    sget-object v1, Lnqy;->b:Lnqy;

    if-eq v0, v1, :cond_3

    invoke-virtual {p2}, Lcom/google/googlex/gcam/ShotMetadata;->f()Lnqy;

    move-result-object v0

    sget-object v1, Lnqy;->a:Lnqy;

    if-eq v0, v1, :cond_3

    invoke-virtual {p2}, Lcom/google/googlex/gcam/ShotMetadata;->f()Lnqy;

    move-result-object v0

    sget-object v1, Lnqy;->d:Lnqy;

    if-ne v0, v1, :cond_2

    goto :goto_2

    :cond_2
    iput v5, p0, Lcom/google/android/libraries/camera/exif/ExifInterface;->bz:I

    goto :goto_3

    :cond_3
    :goto_2
    iput v2, p0, Lcom/google/android/libraries/camera/exif/ExifInterface;->bz:I

    :goto_3
    invoke-virtual {p2}, Lcom/google/googlex/gcam/ShotMetadata;->k()Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/googlex/gcam/ShotMetadata;->j()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Ldeo;->g:Ldeo;

    invoke-virtual {p3, v0}, Lmqp;->b(Lmqi;)Lmqp;

    move-result-object p3

    invoke-virtual {p3}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p2}, Lkrm;->c(Ljava/lang/String;)Lmqp;

    move-result-object v0

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lber;

    invoke-virtual {p3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    :try_start_1
    sget-object v3, Lbet;->a:Lcvm;

    const-string v6, "http://ns.google.com/photos/1.0/camera/"

    const-string v7, "GCamera"

    invoke-virtual {v3, v6, v7}, Lcvm;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v3, "SlowRawPath"

    new-instance v6, Lbfs;

    const/16 v7, 0x200

    invoke-direct {v6, v7}, Lbfs;-><init>(I)V

    new-instance v7, Lbfs;

    invoke-direct {v7}, Lbfs;-><init>()V

    invoke-interface {v1, v3, v6, p3, v7}, Lber;->g(Ljava/lang/String;Lbfs;Ljava/lang/String;Lbfs;)V
    :try_end_1
    .catch Lbeq; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception p3

    invoke-virtual {p3}, Lbeq;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string v1, "XmpUtil"

    const-string v3, "exception while appending disable suggested actions "

    invoke-virtual {v3, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    :try_start_2
    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lber;

    new-instance v0, Lbft;

    invoke-direct {v0}, Lbft;-><init>()V

    invoke-static {p3}, Lbet;->b(Lber;)V

    check-cast p3, Lbff;

    invoke-virtual {v0, v4, p1}, Lbfq;->f(IZ)V

    invoke-virtual {v0, v5, v2}, Lbfq;->f(IZ)V

    new-instance p1, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x800

    invoke-direct {p1, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    invoke-static {p3, p1, v0}, Ldp;->y(Lbff;Ljava/io/OutputStream;Lbft;)V
    :try_end_2
    .catch Lbeq; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    invoke-virtual {v0}, Lbft;->b()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lbeq; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_5

    :catch_2
    move-exception p3

    :try_start_4
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p2
    :try_end_4
    .catch Lbeq; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_5

    :catch_3
    move-exception p1

    goto :goto_5

    :cond_4
    sget-object p1, Lebe;->f:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    const-string p3, "Extended XMP section not found to append slowraw directory"

    const/16 v0, 0x4ea

    invoke-static {p1, p3, v0}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    :cond_5
    :goto_5
    iput-object p2, p0, Lcom/google/android/libraries/camera/exif/ExifInterface;->bA:Ljava/lang/String;

    return-object p0
.end method

.method public static b(Lkli;Lgdd;)Lcom/google/googlex/gcam/PostviewParams;
    .locals 5

    new-instance v0, Lcom/google/googlex/gcam/PostviewParams;

    invoke-direct {v0}, Lcom/google/googlex/gcam/PostviewParams;-><init>()V

    invoke-static {p0}, Lnsc;->g(Lkli;)Lkmf;

    move-result-object p0

    iget-object p0, p0, Lkmf;->b:Lkaf;

    sget-object v1, Lebe;->a:Lnqz;

    invoke-virtual {v0, v1}, Lcom/google/googlex/gcam/PostviewParams;->b(Lnqz;)V

    iget-object p1, p1, Lgdd;->b:Lkaf;

    invoke-static {p1}, Ljzr;->j(Lkaf;)Ljzr;

    move-result-object p1

    invoke-virtual {p1}, Ljzr;->c()F

    move-result p1

    iget v1, p0, Lkaf;->a:I

    iget p0, p0, Lkaf;->b:I

    const v2, 0x3f866666    # 1.05f

    const/high16 v3, 0x40c00000    # 6.0f

    if-le v1, p0, :cond_0

    int-to-float p0, v1

    div-float/2addr p0, v3

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    int-to-float v1, p0

    div-float/2addr v1, p1

    mul-float v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p1

    goto :goto_0

    :cond_0
    int-to-float p0, p0

    div-float/2addr p0, v3

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    int-to-float v1, p0

    mul-float v1, v1, p1

    mul-float v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p1

    move v4, p1

    move p1, p0

    move p0, v4

    :goto_0
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p0, p0, 0x1

    new-instance v1, Lkaf;

    and-int/lit8 p0, p0, -0x2

    and-int/lit8 p1, p1, -0x2

    invoke-direct {v1, p0, p1}, Lkaf;-><init>(II)V

    iget p0, v1, Lkaf;->a:I

    iget p1, v1, Lkaf;->b:I

    const/4 v2, 0x0

    if-le p0, p1, :cond_1

    invoke-virtual {v0, p0}, Lcom/google/googlex/gcam/PostviewParams;->d(I)V

    invoke-virtual {v0, v2}, Lcom/google/googlex/gcam/PostviewParams;->c(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v2}, Lcom/google/googlex/gcam/PostviewParams;->d(I)V

    iget p0, v1, Lkaf;->b:I

    invoke-virtual {v0, p0}, Lcom/google/googlex/gcam/PostviewParams;->c(I)V

    :goto_1
    return-object v0
.end method

.method public static d(J)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd_HHmmss_SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v1, "UTC"

    invoke-static {v1}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "XXXX_"

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final c(Ljava/io/File;JLjava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p2, p3}, Lebe;->d(J)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/io/File;

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    const-string v2, "gcam"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p3, v0, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p3}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/io/IOException;

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Could not create Gcam debug data folder: "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/io/IOException;

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Gcam debug data folder already exists: "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "Gcam debug directory not valid or doesn\'t exist: "

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final e()Z
    .locals 2

    iget-object v0, p0, Lebe;->g:Ldhi;

    sget-object v1, Ldhq;->a:Ldhk;

    invoke-interface {v0}, Ldhi;->c()V

    iget-object v0, p0, Lebe;->g:Ldhi;

    sget-object v1, Ldhy;->p:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final f(Lecy;)Z
    .locals 1

    sget-object v0, Lecy;->d:Lecy;

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lebe;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
