.class public final Leau;
.super Ljava/lang/Object;

# interfaces
.implements Lecn;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lebb;

.field final synthetic c:Lewa;

.field final synthetic d:Lgkr;


# direct methods
.method public constructor <init>(Lewa;ILgkr;Lebb;[B[B)V
    .locals 0

    iput-object p1, p0, Leau;->c:Lewa;

    iput p2, p0, Leau;->a:I

    iput-object p3, p0, Leau;->d:Lgkr;

    iput-object p4, p0, Leau;->b:Lebb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final o(Leea;Landroid/graphics/Bitmap;Lcom/google/googlex/gcam/ShotMetadata;)V
    .locals 7

    iget-object p1, p0, Leau;->c:Lewa;

    iget-object p1, p1, Lewa;->h:Ljava/lang/Object;

    const-string v0, "PostviewRgbCallback"

    invoke-interface {p1, v0}, Lkbc;->e(Ljava/lang/String;)V

    iget-object p1, p0, Leau;->c:Lewa;

    iget-object p1, p1, Lewa;->e:Ljava/lang/Object;

    check-cast p1, Lcvr;

    invoke-virtual {p1}, Lcvr;->H()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p3}, Lcom/google/googlex/gcam/ShotMetadata;->d()Lcom/google/googlex/gcam/FrameMetadata;

    move-result-object p1

    iget-wide v1, p1, Lcom/google/googlex/gcam/FrameMetadata;->a:J

    invoke-static {v1, v2, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_geometric_calibration_get(JLcom/google/googlex/gcam/FrameMetadata;)J

    move-result-wide v1

    const/4 p1, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    move-object v5, p1

    goto :goto_0

    :cond_0
    new-instance v5, Lcom/google/googlex/gcam/GeometricCalibrationVector;

    invoke-direct {v5, v1, v2, v0}, Lcom/google/googlex/gcam/GeometricCalibrationVector;-><init>(JZ)V

    :goto_0
    iget-wide v1, v5, Lcom/google/googlex/gcam/GeometricCalibrationVector;->a:J

    invoke-static {v1, v2, v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->GeometricCalibrationVector_isEmpty(JLcom/google/googlex/gcam/GeometricCalibrationVector;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p3}, Lcom/google/googlex/gcam/ShotMetadata;->d()Lcom/google/googlex/gcam/FrameMetadata;

    move-result-object v1

    iget-wide v5, v1, Lcom/google/googlex/gcam/FrameMetadata;->a:J

    invoke-static {v5, v6, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_mesh_warp_get(JLcom/google/googlex/gcam/FrameMetadata;)J

    move-result-wide v1

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/google/googlex/gcam/MeshWarp;

    invoke-direct {p1, v1, v2, v0}, Lcom/google/googlex/gcam/MeshWarp;-><init>(JZ)V

    :goto_1
    invoke-virtual {p1}, Lcom/google/googlex/gcam/MeshWarp;->c()Lcom/google/googlex/gcam/FloatVector;

    move-result-object p1

    iget-wide v1, p1, Lcom/google/googlex/gcam/FloatVector;->a:J

    invoke-static {v1, v2, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->FloatVector_isEmpty(JLcom/google/googlex/gcam/FloatVector;)Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    iget-object p1, p0, Leau;->c:Lewa;

    iget-object p1, p1, Lewa;->e:Ljava/lang/Object;

    check-cast p1, Lcvr;

    invoke-virtual {p1}, Lcvr;->G()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgtd;

    invoke-interface {p1, p2, p3}, Lgtd;->d(Landroid/graphics/Bitmap;Lcom/google/googlex/gcam/ShotMetadata;)V

    :cond_3
    iget-object p1, p0, Leau;->c:Lewa;

    iget-object p3, p1, Lewa;->f:Ljava/lang/Object;

    iget v1, p0, Leau;->a:I

    iget-object p1, p1, Lewa;->j:Ljava/lang/Object;

    check-cast p1, Lklw;

    invoke-virtual {p1}, Lklw;->k()Lklv;

    move-result-object p1

    invoke-interface {p3, p2, v1, p1}, Lgvb;->b(Landroid/graphics/Bitmap;ILklv;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    iget p3, p0, Leau;->a:I

    if-eqz p3, :cond_4

    if-eqz p2, :cond_4

    invoke-static {p2, p3}, Lewa;->b(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_4
    iget-object p2, p0, Leau;->d:Lgkr;

    iget-object p2, p2, Lgkr;->c:Ljava/lang/Object;

    iget-object p3, p0, Leau;->b:Lebb;

    iget-boolean p3, p3, Lebb;->j:Z

    if-eqz p3, :cond_5

    iget-object p3, p0, Leau;->c:Lewa;

    iget-object p3, p3, Lewa;->k:Ljava/lang/Object;

    invoke-interface {p3}, Logd;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ldsa;

    sget-object v1, Lmpx;->a:Lmpx;

    invoke-static {p3, p1, v1}, Ldsi;->a(Ldsa;Landroid/graphics/Bitmap;Lmqp;)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_5
    invoke-interface {p2, p1, v0}, Lgxl;->X(Landroid/graphics/Bitmap;I)V

    iget-object p1, p0, Leau;->c:Lewa;

    iget-object p1, p1, Lewa;->h:Ljava/lang/Object;

    invoke-interface {p1}, Lkbc;->f()V

    return-void
.end method
