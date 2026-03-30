.class final Liiv;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lilh;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lijb;

.field final synthetic c:Llko;


# direct methods
.method public constructor <init>(Lijb;ILlko;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p2, p0, Liiv;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    :goto_2
    iput-object p1, p0, Liiv;->b:Lijb;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p3, p0, Liiv;->c:Llko;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    return-void

    nop
.end method


# virtual methods
.method public final dp(Linb;Landroid/graphics/Bitmap;Lcom/google/googlex/gcam/ShotMetadata;)V
    .locals 5

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Lfdn;->s()Z

    move-result p1

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_1
    invoke-static {v1, v2, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->FloatVector_isEmpty(JLcom/google/googlex/gcam/FloatVector;)Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget p3, p0, Liiv;->a:I

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_4
    invoke-static {p2, p3}, Lijb;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1}, Lcom/google/googlex/gcam/FrameMetadata;->n()Lcom/google/googlex/gcam/MeshWarp;

    move-result-object p1

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_7
    invoke-virtual {v1, p2, p3, p1}, Lnpr;->k(Landroid/graphics/Bitmap;ILpog;)Landroid/graphics/Bitmap;

    move-result-object p1

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_8
    if-nez p2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2f

    nop

    :goto_a
    if-nez p3, :cond_2

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_b
    iget-object p1, p0, Liiv;->b:Lijb;

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p1, p1, Lijb;->a:Lpdf;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_d
    iget-wide v1, p1, Lcom/google/googlex/gcam/GeometricCalibrationVector;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-nez p1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1b

    nop

    nop

    :goto_f
    iget-object v1, p1, Lijb;->e:Lnpr;

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-wide v1, p1, Lcom/google/googlex/gcam/FrameMetadata;->a:J

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_13
    const-string v0, "PostviewRgbCallback"

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_14
    invoke-interface {p1, v0}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-nez p1, :cond_4

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-wide v1, p1, Lcom/google/googlex/gcam/FloatVector;->a:J

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_17
    goto/16 :goto_3f

    nop

    nop

    :goto_18
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const-wide/16 v3, 0x0

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_1a
    iget-object p1, p0, Liiv;->b:Lijb;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p3}, Lcom/google/googlex/gcam/ShotMetadata;->d()Lcom/google/googlex/gcam/FrameMetadata;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1c
    if-eqz p1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_23

    nop

    nop

    :goto_1d
    check-cast p1, Lltg;

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p1}, Lfdn;->r()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget p3, p0, Liiv;->a:I

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p3}, Lcom/google/googlex/gcam/ShotMetadata;->d()Lcom/google/googlex/gcam/FrameMetadata;

    move-result-object p1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_21
    if-eqz p1, :cond_6

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :cond_6
    :goto_22
    goto/32 :goto_35

    nop

    nop

    :goto_23
    const/4 p1, 0x0

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p1}, Lcom/google/googlex/gcam/MeshWarp;->c()Lcom/google/googlex/gcam/FloatVector;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_25
    invoke-static {v1, v2, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_geometric_calibration_get(JLcom/google/googlex/gcam/FrameMetadata;)J

    move-result-wide v1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_26
    iget-object p1, p0, Liiv;->b:Lijb;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const v0, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_28
    iget-object p1, p1, Lijb;->j:Lfdn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget-object p2, p0, Liiv;->c:Llko;

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2b
    cmp-long p1, v1, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_2c
    iget-object p0, p0, Liiv;->b:Lijb;

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    new-instance p1, Lcom/google/googlex/gcam/GeometricCalibrationVector;

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_11

    nop

    nop

    :goto_30
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_31
    const/4 v0, 0x0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_33
    invoke-interface {p2, p1, v0}, Llxa;->ac(Landroid/graphics/Bitmap;I)V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_34
    iget-object p1, p1, Lijb;->c:Lkog;

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_35
    iget-object p1, p0, Liiv;->b:Lijb;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_37
    iget-object p0, p0, Lijb;->a:Lpdf;

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_38
    invoke-interface {p1, p2, p3}, Lltg;->b(Landroid/graphics/Bitmap;Lcom/google/googlex/gcam/ShotMetadata;)V

    :goto_39
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_3a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_3b
    invoke-static {v1, v2, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->GeometricCalibrationVector_isEmpty(JLcom/google/googlex/gcam/GeometricCalibrationVector;)Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {p1}, Lpoh;->l()Lpog;

    move-result-object p1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    iget-object p1, p1, Lijb;->j:Lfdn;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-direct {p1, v1, v2, v0}, Lcom/google/googlex/gcam/GeometricCalibrationVector;-><init>(JZ)V

    :goto_3f
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    if-nez p3, :cond_7

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_41
    iget-object p2, p2, Llko;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop
.end method
