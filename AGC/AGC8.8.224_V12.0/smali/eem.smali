.class final Leem;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Leeo;

.field private final b:Lnph;

.field private c:I

.field private final d:Z

.field private final e:Lcom/google/googlex/gcam/ShotMetadata;

.field private final f:I

.field private final g:J

.field private final h:Lmqp;

.field private final i:Ligo;


# direct methods
.method public constructor <init>(Leeo;Ligo;Lnph;IZLcom/google/googlex/gcam/ShotMetadata;IJLmqp;[B[B)V
    .locals 0

    iput-object p1, p0, Leem;->a:Leeo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Leem;->i:Ligo;

    iput-object p3, p0, Leem;->b:Lnph;

    iput p4, p0, Leem;->c:I

    iput-boolean p5, p0, Leem;->d:Z

    iput-object p6, p0, Leem;->e:Lcom/google/googlex/gcam/ShotMetadata;

    iput p7, p0, Leem;->f:I

    iput-wide p8, p0, Leem;->g:J

    iput-object p10, p0, Leem;->h:Lmqp;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object v0, p0, Leem;->i:Ligo;

    iget-object v1, v0, Ligo;->b:Ljava/lang/Object;

    check-cast v1, Lmqp;

    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/gcam/InterleavedImageU8;

    invoke-virtual {v0}, Lcom/google/googlex/gcam/InterleavedImageU8;->e()Lcom/google/googlex/gcam/InterleavedReadViewU8;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Ligo;->a:Ljava/lang/Object;

    check-cast v0, Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/HardwareBuffer;

    const-wide/16 v1, 0x3

    invoke-static {v0, v1, v2}, Lcom/google/googlex/gcam/LockedHardwareBuffer;->c(Landroid/hardware/HardwareBuffer;J)Lcom/google/googlex/gcam/LockedHardwareBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/gcam/LockedHardwareBuffer;->a()Lcom/google/googlex/gcam/InterleavedReadViewU8;

    move-result-object v0

    :goto_0
    new-instance v1, Lkaf;

    invoke-virtual {v0}, Lcom/google/googlex/gcam/InterleavedReadViewU8;->d()I

    move-result v2

    invoke-virtual {v0}, Lcom/google/googlex/gcam/InterleavedReadViewU8;->c()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lkaf;-><init>(II)V

    iget-boolean v2, p0, Leem;->d:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, p0, Leem;->e:Lcom/google/googlex/gcam/ShotMetadata;

    invoke-virtual {v2}, Lcom/google/googlex/gcam/ShotMetadata;->e()Lnqp;

    move-result-object v2

    invoke-static {v2}, Lnsy;->h(Lnqp;)I

    move-result v2

    iget-object v4, p0, Leem;->e:Lcom/google/googlex/gcam/ShotMetadata;

    const/16 v5, 0x3c

    invoke-static {v4, v5}, Lnsy;->l(Lcom/google/googlex/gcam/ShotMetadata;I)V

    invoke-static {v2}, Lkab;->b(I)Lkab;

    move-result-object v4

    invoke-virtual {v1, v4}, Lkaf;->i(Lkab;)Lkaf;

    move-result-object v1

    iput v3, p0, Leem;->c:I

    move-object v7, v1

    move v3, v2

    goto :goto_1

    :cond_1
    move-object v7, v1

    :goto_1
    new-instance v1, Lcom/google/googlex/gcam/JpgEncodeOptions;

    invoke-direct {v1}, Lcom/google/googlex/gcam/JpgEncodeOptions;-><init>()V

    invoke-static {v0, v1, v3}, Lcom/google/googlex/gcam/imageio/JpgHelper;->a(Lcom/google/googlex/gcam/InterleavedReadViewU8;Lcom/google/googlex/gcam/JpgEncodeOptions;I)Lmqp;

    move-result-object v0

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, v7, Lkaf;->a:I

    iget v2, v7, Lkaf;->b:I

    iget-object v3, p0, Leem;->e:Lcom/google/googlex/gcam/ShotMetadata;

    iget-object v4, p0, Leem;->h:Lmqp;

    invoke-static {v1, v2, v3, v4}, Lebe;->a(IILcom/google/googlex/gcam/ShotMetadata;Lmqp;)Lcom/google/android/libraries/camera/exif/ExifInterface;

    move-result-object v9

    iget-object v1, p0, Leem;->a:Leeo;

    iget-object v2, v1, Leeo;->d:Lgvb;

    iget-object v1, v1, Leeo;->g:Lfuz;

    invoke-virtual {v1}, Lklw;->k()Lklv;

    move-result-object v1

    iget v3, p0, Leem;->c:I

    invoke-interface {v2, v9, v1, v3}, Lgvb;->f(Lcom/google/android/libraries/camera/exif/ExifInterface;Lklv;I)V

    new-instance v1, Lkds;

    invoke-direct {v1, v9}, Lkds;-><init>(Lcom/google/android/libraries/camera/exif/ExifInterface;)V

    iget-wide v2, p0, Leem;->g:J

    invoke-virtual {v1, v2, v3}, Lkds;->g(J)V

    iget-object v2, p0, Leem;->a:Leeo;

    iget-object v2, v2, Leeo;->g:Lfuz;

    invoke-virtual {v2}, Lklw;->k()Lklv;

    move-result-object v2

    sget v3, Lcom/google/android/libraries/camera/exif/ExifInterface;->Z:I

    invoke-virtual {v9, v3}, Lcom/google/android/libraries/camera/exif/ExifInterface;->a(I)Lkac;

    move-result-object v3

    sget v4, Lcom/google/android/libraries/camera/exif/ExifInterface;->G:I

    invoke-virtual {v9, v4}, Lcom/google/android/libraries/camera/exif/ExifInterface;->a(I)Lkac;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lkds;->h(Lklv;Lkac;Lkac;)V

    iget-object v2, p0, Leem;->a:Leeo;

    iget-object v2, v2, Leeo;->b:Lfbk;

    invoke-interface {v2}, Lfbk;->c()Lmqp;

    move-result-object v2

    invoke-virtual {v2}, Lmqp;->g()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Location;

    invoke-virtual {v1, v2}, Lkds;->d(Landroid/location/Location;)V

    :cond_2
    iget-object v1, p0, Leem;->a:Leeo;

    iget-object v1, v1, Leeo;->h:Ljew;

    invoke-virtual {v1, v9}, Ljew;->n(Lcom/google/android/libraries/camera/exif/ExifInterface;)V

    iget-object v1, p0, Leem;->e:Lcom/google/googlex/gcam/ShotMetadata;

    invoke-virtual {v1}, Lcom/google/googlex/gcam/ShotMetadata;->b()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iget v3, p0, Leem;->f:I

    int-to-long v3, v3

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [B

    iget v8, p0, Leem;->c:I

    add-long/2addr v1, v3

    const/4 v10, 0x0

    move-wide v4, v1

    invoke-static/range {v4 .. v10}, Lfwy;->a(J[BLkaf;ILcom/google/android/libraries/camera/exif/ExifInterface;Ljew;)Lfwy;

    move-result-object v0

    iget-object v1, p0, Leem;->b:Lnph;

    invoke-virtual {v1, v0}, Lnph;->e(Ljava/lang/Object;)Z

    return-void

    :cond_3
    sget-object v0, Leeo;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v1, "Error encoding burst image"

    const/16 v2, 0x547

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    iget-object v0, p0, Leem;->b:Lnph;

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Image couldn\'t be encoded."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lnph;->a(Ljava/lang/Throwable;)Z

    return-void

    :cond_4
    return-void
.end method
