.class final Lcwq;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lnak;


# instance fields
.field private final b:Lfbk;

.field private final c:Ljew;

.field private final d:Ldja;

.field private final e:Lcvm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/camcorder/snapshot/SnapshotUtils"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lcwq;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Ldja;Lfbk;Ljew;Lcvm;[B[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcwq;->d:Ldja;

    iput-object p2, p0, Lcwq;->b:Lfbk;

    iput-object p3, p0, Lcwq;->c:Ljew;

    iput-object p4, p0, Lcwq;->e:Lcvm;

    return-void
.end method


# virtual methods
.method public final a([BLkab;Lklv;)Lcsv;
    .locals 12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Lcom/google/android/libraries/camera/exif/ExifInterface;

    invoke-direct {v2}, Lcom/google/android/libraries/camera/exif/ExifInterface;-><init>()V

    :try_start_0
    invoke-virtual {v2, p1}, Lcom/google/android/libraries/camera/exif/ExifInterface;->r([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    sget-object v3, Lcwq;->a:Lnak;

    invoke-virtual {v3}, Lnaf;->b()Lnaz;

    move-result-object v3

    const-string v4, "fail to read EXIF from JPEG byte array."

    const/16 v5, 0x2f5

    invoke-static {v3, v4, v5}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    :goto_0
    sget v3, Lcom/google/android/libraries/camera/exif/ExifInterface;->ai:I

    invoke-virtual {v2, v3}, Lcom/google/android/libraries/camera/exif/ExifInterface;->b(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    sget v5, Lcom/google/android/libraries/camera/exif/ExifInterface;->aj:I

    invoke-virtual {v2, v5}, Lcom/google/android/libraries/camera/exif/ExifInterface;->b(I)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    :goto_2
    sget v6, Lcom/google/android/libraries/camera/exif/ExifInterface;->b:I

    invoke-virtual {v2, v6}, Lcom/google/android/libraries/camera/exif/ExifInterface;->k(I)Lkdq;

    move-result-object v6

    if-eqz v6, :cond_2

    sget v6, Lcom/google/android/libraries/camera/exif/ExifInterface;->a:I

    invoke-virtual {v2, v6}, Lcom/google/android/libraries/camera/exif/ExifInterface;->k(I)Lkdq;

    move-result-object v6

    if-nez v6, :cond_3

    :cond_2
    sget v6, Lcom/google/android/libraries/camera/exif/ExifInterface;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/google/android/libraries/camera/exif/ExifInterface;->i(ILjava/lang/Object;)Lkdq;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/google/android/libraries/camera/exif/ExifInterface;->y(Lkdq;)V

    sget v6, Lcom/google/android/libraries/camera/exif/ExifInterface;->b:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/google/android/libraries/camera/exif/ExifInterface;->i(ILjava/lang/Object;)Lkdq;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/google/android/libraries/camera/exif/ExifInterface;->y(Lkdq;)V

    :cond_3
    sget v6, Lcom/google/android/libraries/camera/exif/ExifInterface;->j:I

    invoke-virtual {v2, v6}, Lcom/google/android/libraries/camera/exif/ExifInterface;->k(I)Lkdq;

    move-result-object v6

    if-nez v6, :cond_4

    sget v6, Lcom/google/android/libraries/camera/exif/ExifInterface;->j:I

    invoke-static {p2}, Lkdl;->b(Lkab;)Lkdl;

    move-result-object p2

    iget-short p2, p2, Lkdl;->i:S

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    invoke-virtual {v2, v6, p2}, Lcom/google/android/libraries/camera/exif/ExifInterface;->i(ILjava/lang/Object;)Lkdq;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/google/android/libraries/camera/exif/ExifInterface;->y(Lkdq;)V

    :cond_4
    new-instance p2, Lkds;

    invoke-direct {p2, v2}, Lkds;-><init>(Lcom/google/android/libraries/camera/exif/ExifInterface;)V

    invoke-virtual {p2, v0, v1}, Lkds;->g(J)V

    sget-object v6, Lmpx;->a:Lmpx;

    iget-object v7, p0, Lcwq;->d:Ldja;

    iget-object v7, v7, Ldja;->c:Ljava/lang/Object;

    sget-object v8, Lgzd;->b:Lgzr;

    invoke-interface {v7, v8}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v6, p0, Lcwq;->b:Lfbk;

    invoke-interface {v6}, Lfbk;->c()Lmqp;

    move-result-object v6

    invoke-virtual {v6}, Lmqp;->g()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v6}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/location/Location;

    invoke-virtual {p2, v7}, Lkds;->d(Landroid/location/Location;)V

    :cond_5
    sget v7, Lcom/google/android/libraries/camera/exif/ExifInterface;->Z:I

    invoke-virtual {v2, v7}, Lcom/google/android/libraries/camera/exif/ExifInterface;->a(I)Lkac;

    move-result-object v7

    sget v8, Lcom/google/android/libraries/camera/exif/ExifInterface;->G:I

    invoke-virtual {v2, v8}, Lcom/google/android/libraries/camera/exif/ExifInterface;->a(I)Lkac;

    move-result-object v8

    invoke-virtual {p2, p3, v7, v8}, Lkds;->h(Lklv;Lkac;Lkac;)V

    iget-object p2, p0, Lcwq;->c:Ljew;

    invoke-virtual {p2, v2}, Ljew;->n(Lcom/google/android/libraries/camera/exif/ExifInterface;)V

    iget-object p2, p0, Lcwq;->e:Lcvm;

    iget-object p3, p2, Lcvm;->c:Ljava/lang/Object;

    iget-object p2, p2, Lcvm;->a:Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    check-cast p3, Lkpo;

    invoke-virtual {p3, v7, v8}, Lkpo;->i(J)Lgxr;

    move-result-object p2

    const-string p3, "jpg"

    invoke-virtual {p2, p3}, Lgxr;->a(Ljava/lang/String;)Lgxn;

    move-result-object p3

    :try_start_1
    iget-object v7, p3, Lgxn;->a:Lkph;

    invoke-static {p1, v2, v7}, Llho;->z([BLcom/google/android/libraries/camera/exif/ExifInterface;Lkph;)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-lez v11, :cond_6

    const/4 v4, 0x1

    goto :goto_3

    :cond_6
    :goto_3
    const-string v9, "Expected to write a positive number of bytes to %s, instead wrote %s from byteArray of size %s"

    iget-object v10, p3, Lgxn;->a:Lkph;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v4, v9, v10, v7, p1}, Lmoz;->u(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {v2}, Lkdl;->c(Lcom/google/android/libraries/camera/exif/ExifInterface;)Lkdl;

    move-result-object p1

    invoke-static {p1}, Lkdl;->a(Lkdl;)Lkab;

    move-result-object p1

    new-instance v4, Lcsv;

    const/4 v7, 0x0

    invoke-direct {v4, v7}, Lcsv;-><init>([B)V

    new-instance v7, Ljava/io/File;

    const-string v8, ""

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v7, v4, Lcsv;->b:Ljava/io/File;

    iput-object v2, v4, Lcsv;->a:Lkdj;

    iput-object p3, v4, Lcsv;->c:Lgxn;

    iput-object p2, v4, Lcsv;->d:Lgxr;

    iput-object v6, v4, Lcsv;->e:Lmqp;

    sget-object p2, Lkqi;->c:Lkqi;

    if-eqz p2, :cond_7

    iput-object p2, v4, Lcsv;->f:Lkqi;

    new-instance p2, Lkaf;

    invoke-direct {p2, v3, v5}, Lkaf;-><init>(II)V

    iput-object p2, v4, Lcsv;->g:Lkaf;

    iget p1, p1, Lkab;->e:I

    iput p1, v4, Lcsv;->h:I

    iget-byte p1, v4, Lcsv;->k:B

    iput-wide v0, v4, Lcsv;->i:J

    or-int/lit8 p1, p1, 0x3

    int-to-byte p1, p1

    iput-byte p1, v4, Lcsv;->k:B

    return-object v4

    :cond_7
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null mimeType"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p1

    sget-object p2, Lcwq;->a:Lnak;

    invoke-virtual {p2}, Lnaf;->b()Lnaz;

    move-result-object p2

    const-string p3, "Failed to create file: "

    const/16 v0, 0x2f4

    invoke-static {p2, p3, v0, p1}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    throw p1
.end method
