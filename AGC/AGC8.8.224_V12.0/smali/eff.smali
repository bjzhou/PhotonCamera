.class public final Leff;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/apps/camera/hdrplus/fusion/api/FusionProgressCallback;


# instance fields
.field final synthetic a:Lefy;

.field public final synthetic b:Lefh;


# direct methods
.method public constructor <init>(Lefh;Lefy;)V
    .locals 0

    iput-object p1, p0, Leff;->b:Lefh;

    iput-object p2, p0, Leff;->a:Lefy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final e(JLigo;Lcom/google/googlex/gcam/ShotMetadata;Z)V
    .locals 14

    move-object v11, p0

    move-object/from16 v4, p3

    iget-object v0, v11, Leff;->b:Lefh;

    iget-object v0, v0, Lefh;->j:Ljew;

    invoke-virtual {v0}, Ljew;->x()Lhbq;

    move-result-object v6

    iget-object v0, v4, Ligo;->b:Ljava/lang/Object;

    check-cast v0, Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/gcam/InterleavedImageU8;

    invoke-virtual {v0}, Lcom/google/googlex/gcam/InterleavedImageU8;->c()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, v4, Ligo;->b:Ljava/lang/Object;

    check-cast v0, Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/gcam/InterleavedImageU8;

    invoke-virtual {v0}, Lcom/google/googlex/gcam/InterleavedImageU8;->b()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, v4, Ligo;->a:Ljava/lang/Object;

    check-cast v1, Lmqp;

    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/HardwareBuffer;

    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, v4, Ligo;->a:Ljava/lang/Object;

    check-cast v1, Lmqp;

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/HardwareBuffer;

    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v1

    if-lez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-nez v0, :cond_3

    if-eqz v2, :cond_2

    move-wide v2, p1

    goto :goto_2

    :cond_2
    iget-object v0, v11, Leff;->b:Lefh;

    invoke-virtual {v6}, Lhbq;->close()V

    move-wide v2, p1

    invoke-virtual {v0, v2, v3}, Lefh;->f(J)V

    return-void

    :cond_3
    move-wide v2, p1

    :goto_2
    iget-object v12, v11, Leff;->b:Lefh;

    new-instance v13, Lefe;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, v13

    move-object v1, p0

    move-wide v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v7, p5

    invoke-direct/range {v0 .. v10}, Lefe;-><init>(Leff;JLigo;Lcom/google/googlex/gcam/ShotMetadata;Lhbq;Z[B[B[B)V

    invoke-virtual {v12, v13}, Lefh;->g(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final a(JIIZ)V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Leff;->b:Lefh;

    iget-wide v3, v2, Lefh;->e:J

    sub-long/2addr v0, v3

    iget-object v2, v2, Lefh;->i:Lnwn;

    iget-object v3, v2, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_0
    long-to-int v1, v0

    iget-object v0, v2, Lnwn;->b:Lnws;

    check-cast v0, Lnib;

    sget-object v2, Lnib;->e:Lnib;

    iget v2, v0, Lnib;->a:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v0, Lnib;->a:I

    iput v1, v0, Lnib;->b:I

    iget-object v0, p0, Leff;->b:Lefh;

    iget-object v0, v0, Lefh;->i:Lnwn;

    iget-object v1, p0, Leff;->a:Lefy;

    invoke-interface {v1, p3}, Lefy;->h(I)I

    move-result p3

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_1
    iget-object v0, v0, Lnwn;->b:Lnws;

    check-cast v0, Lnib;

    add-int/lit8 p3, p3, -0x1

    iput p3, v0, Lnib;->c:I

    iget p3, v0, Lnib;->a:I

    or-int/lit8 p3, p3, 0x2

    iput p3, v0, Lnib;->a:I

    iget-object p3, p0, Leff;->b:Lefh;

    iget-object p3, p3, Lefh;->i:Lnwn;

    iget-object v0, p0, Leff;->a:Lefy;

    invoke-interface {v0, p4}, Lefy;->g(I)I

    move-result p4

    iget-object v0, p3, Lnwn;->b:Lnws;

    invoke-virtual {v0}, Lnws;->ac()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p3}, Lnwn;->p()V

    :cond_2
    iget-object p3, p3, Lnwn;->b:Lnws;

    check-cast p3, Lnib;

    add-int/lit8 p4, p4, -0x1

    iput p4, p3, Lnib;->d:I

    iget p4, p3, Lnib;->a:I

    or-int/lit8 p4, p4, 0x4

    iput p4, p3, Lnib;->a:I

    if-eqz p5, :cond_3

    :try_start_0
    iget-object p3, p0, Leff;->a:Lefy;

    iget-object p4, p0, Leff;->b:Lefh;

    iget-object p5, p4, Lefh;->g:Lefi;

    iget-object p5, p5, Lefi;->c:Ldzf;

    iget-object p4, p4, Lefh;->b:Lgxl;

    invoke-interface {p3, p5, p4}, Lefy;->b(Ldzf;Lgxl;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    sget-object p4, Lefi;->a:Lnak;

    invoke-virtual {p4}, Lnaf;->c()Lnaz;

    move-result-object p4

    check-cast p4, Lnah;

    invoke-interface {p4, p3}, Lnah;->h(Ljava/lang/Throwable;)Lnaz;

    move-result-object p3

    check-cast p3, Lnah;

    const/16 p4, 0x56b

    invoke-interface {p3, p4}, Lnah;->G(I)Lnaz;

    move-result-object p3

    check-cast p3, Lnah;

    const-string p4, "Couldn\'t apply special type for %s"

    invoke-interface {p3, p4, p1, p2}, Lnah;->q(Ljava/lang/String;J)V

    :cond_3
    :goto_0
    iget-object p3, p0, Leff;->b:Lefh;

    invoke-static {p3}, Lefh;->h(Lefh;)V

    iget-object p3, p0, Leff;->b:Lefh;

    invoke-virtual {p3, p1, p2}, Lefh;->f(J)V

    return-void
.end method

.method public final b(JLcom/google/googlex/gcam/InterleavedImageU8;Lcom/google/googlex/gcam/ShotMetadata;)V
    .locals 6

    invoke-static {p3}, Ligo;->i(Ljava/lang/Object;)Ligo;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Leff;->e(JLigo;Lcom/google/googlex/gcam/ShotMetadata;Z)V

    return-void
.end method

.method public final c(Lcom/google/googlex/gcam/InterleavedImageU8;Lcom/google/googlex/gcam/ShotMetadata;Ljava/lang/String;)V
    .locals 10

    iget-object v0, p0, Leff;->b:Lefh;

    iget-object v0, v0, Lefh;->j:Ljew;

    invoke-virtual {v0}, Ljew;->x()Lhbq;

    move-result-object v6

    iget-object v0, p0, Leff;->b:Lefh;

    new-instance v9, Lcfu;

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v1, v9

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v1 .. v8}, Lcfu;-><init>(Leff;Lcom/google/googlex/gcam/ShotMetadata;Lcom/google/googlex/gcam/InterleavedImageU8;Ljava/lang/String;Lhbq;I[B)V

    invoke-virtual {v0, v9}, Lefh;->g(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final d(JLigo;Lcom/google/googlex/gcam/ShotMetadata;)V
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Leff;->e(JLigo;Lcom/google/googlex/gcam/ShotMetadata;Z)V

    return-void
.end method

.method public onProgress(JF)V
    .locals 0

    const/4 p1, 0x0

    const/4 p2, 0x0

    cmpl-float p1, p3, p1

    if-ltz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    cmpg-float p1, p3, p1

    if-gtz p1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    :goto_0
    invoke-static {p2}, Lmoz;->e(Z)V

    iget-object p1, p0, Leff;->b:Lefh;

    iget-object p1, p1, Lefh;->a:Lgaa;

    sget-object p2, Ledq;->b:Lilz;

    invoke-interface {p1, p2, p3}, Lgaa;->a(Lilz;F)V

    return-void
.end method
