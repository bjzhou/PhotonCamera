.class public final synthetic Leai;
.super Ljava/lang/Object;

# interfaces
.implements Lkml;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/googlex/gcam/GyroSampleVector;I)V
    .locals 0

    iput p2, p0, Leai;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leai;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Leaj;I)V
    .locals 0

    iput p2, p0, Leai;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leai;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;I)V
    .locals 0

    iput p2, p0, Leai;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leai;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 18

    move-object/from16 v0, p0

    iget v1, v0, Leai;->b:I

    packed-switch v1, :pswitch_data_0

    move-object/from16 v2, p1

    iget-object v1, v0, Leai;->a:Ljava/lang/Object;

    sget-object v3, Lech;->b:Lkaf;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    goto :goto_1

    :pswitch_0
    iget-object v1, v0, Leai;->a:Ljava/lang/Object;

    move-object/from16 v2, p1

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void

    :pswitch_1
    move-object/from16 v2, p1

    iget-object v1, v0, Leai;->a:Ljava/lang/Object;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkmo;

    move-object v4, v1

    check-cast v4, Leaj;

    iget-boolean v5, v4, Leaj;->b:Z

    if-eqz v5, :cond_0

    iget-object v6, v4, Leaj;->a:Lemr;

    iget v7, v3, Lkmo;->f:F

    iget v8, v3, Lkmo;->g:F

    iget v9, v3, Lkmo;->h:F

    iget-wide v10, v3, Lkmo;->e:J

    invoke-interface/range {v6 .. v11}, Lemr;->b(FFFJ)V

    goto :goto_0

    :cond_0
    iget-object v12, v4, Leaj;->a:Lemr;

    iget v13, v3, Lkmo;->f:F

    iget v4, v3, Lkmo;->g:F

    neg-float v14, v4

    iget v4, v3, Lkmo;->h:F

    neg-float v15, v4

    iget-wide v3, v3, Lkmo;->e:J

    move-wide/from16 v16, v3

    invoke-interface/range {v12 .. v17}, Lemr;->b(FFFJ)V

    goto :goto_0

    :cond_1
    return-void

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkmo;

    new-instance v9, Lcom/google/googlex/gcam/GyroSample;

    invoke-direct {v9}, Lcom/google/googlex/gcam/GyroSample;-><init>()V

    iget-wide v4, v3, Lkmo;->e:J

    iget-wide v6, v9, Lcom/google/googlex/gcam/GyroSample;->a:J

    invoke-static {v6, v7, v9, v4, v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->GyroSample_timestamp_ns_set(JLcom/google/googlex/gcam/GyroSample;J)V

    iget v4, v3, Lkmo;->f:F

    iget-wide v5, v9, Lcom/google/googlex/gcam/GyroSample;->a:J

    invoke-static {v5, v6, v9, v4}, Lcom/google/googlex/gcam/GcamModuleJNI;->GyroSample_x_set(JLcom/google/googlex/gcam/GyroSample;F)V

    iget v4, v3, Lkmo;->g:F

    iget-wide v5, v9, Lcom/google/googlex/gcam/GyroSample;->a:J

    invoke-static {v5, v6, v9, v4}, Lcom/google/googlex/gcam/GcamModuleJNI;->GyroSample_y_set(JLcom/google/googlex/gcam/GyroSample;F)V

    iget v3, v3, Lkmo;->h:F

    iget-wide v4, v9, Lcom/google/googlex/gcam/GyroSample;->a:J

    invoke-static {v4, v5, v9, v3}, Lcom/google/googlex/gcam/GcamModuleJNI;->GyroSample_z_set(JLcom/google/googlex/gcam/GyroSample;F)V

    move-object v6, v1

    check-cast v6, Lcom/google/googlex/gcam/GyroSampleVector;

    iget-wide v4, v6, Lcom/google/googlex/gcam/GyroSampleVector;->a:J

    iget-wide v7, v9, Lcom/google/googlex/gcam/GyroSample;->a:J

    invoke-static/range {v4 .. v9}, Lcom/google/googlex/gcam/GcamModuleJNI;->GyroSampleVector_add(JLcom/google/googlex/gcam/GyroSampleVector;JLcom/google/googlex/gcam/GyroSample;)V

    goto :goto_1

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
