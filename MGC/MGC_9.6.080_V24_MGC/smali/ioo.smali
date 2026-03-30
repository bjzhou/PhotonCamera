.class public final synthetic Lioo;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lioq;

.field public final synthetic b:Lcom/google/googlex/gcam/ShotMetadata;

.field public final synthetic c:Lrss;

.field public final synthetic d:Lrss;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:J

.field public final synthetic g:Lndt;


# direct methods
.method public synthetic constructor <init>(Lioq;Lcom/google/googlex/gcam/ShotMetadata;Lrss;Lrss;Ljava/lang/String;Lndt;J)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lioo;->b:Lcom/google/googlex/gcam/ShotMetadata;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p6, p0, Lioo;->g:Lndt;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    iput-object p4, p0, Lioo;->d:Lrss;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Lioo;->a:Lioq;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p3, p0, Lioo;->c:Lrss;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p5, p0, Lioo;->e:Ljava/lang/String;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_8
    iput-wide p7, p0, Lioo;->f:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method


# virtual methods
.method public final run()V
    .locals 20

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-nez v7, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_0
    :try_start_0
    invoke-virtual {v8}, Lcom/google/googlex/gcam/ShotMetadata;->e()Lsxp;

    move-result-object v6

    nop

    nop

    nop

    nop

    const/16 v7, 0x5f

    nop

    nop

    invoke-static {v8, v7}, Lsgj;->E(Lcom/google/googlex/gcam/ShotMetadata;I)V

    :goto_2
    new-instance v7, Lcom/google/googlex/gcam/HdrGainMapInfo;

    nop

    invoke-direct {v7}, Lcom/google/googlex/gcam/HdrGainMapInfo;-><init>()V

    invoke-virtual {v8, v7}, Lcom/google/googlex/gcam/ShotMetadata;->h(Lcom/google/googlex/gcam/HdrGainMapInfo;)V

    new-instance v7, Lcom/google/googlex/gcam/JpgEncodeOptions;

    nop

    nop

    invoke-direct {v7}, Lcom/google/googlex/gcam/JpgEncodeOptions;-><init>()V

    invoke-virtual {v7, v8}, Lcom/google/googlex/gcam/JpgEncodeOptions;->b(Lcom/google/googlex/gcam/ShotMetadata;)V

    invoke-virtual {v0}, Lrss;->h()Z

    move-result v8

    nop

    nop

    nop

    nop

    if-eqz v8, :cond_1

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v3

    nop

    check-cast v3, Lcom/google/googlex/gcam/InterleavedImageU8;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Lcom/google/googlex/gcam/InterleavedImageU8;->f()Lcom/google/googlex/gcam/InterleavedReadViewU8;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    invoke-static {v3, v7, v6}, Lcom/google/googlex/gcam/imageio/JpgHelper;->a(Lcom/google/googlex/gcam/InterleavedReadViewU8;Lcom/google/googlex/gcam/JpgEncodeOptions;Lsxp;)Lrss;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    check-cast v0, Lcom/google/googlex/gcam/InterleavedImageU8;

    nop

    invoke-virtual {v0}, Lcom/google/googlex/gcam/InterleavedImageU8;->h()V

    goto/16 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_1
    invoke-virtual {v3}, Lrss;->h()Z

    move-result v0

    nop

    if-eqz v0, :cond_2

    nop

    invoke-virtual {v3}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    new-instance v8, Lcom/google/googlex/gcam/GrayReadViewS16;

    nop

    nop

    move-object v9, v0

    nop

    check-cast v9, Lcom/google/googlex/gcam/GrayImageS16;

    nop

    nop

    iget-wide v9, v9, Lcom/google/googlex/gcam/GrayImageS16;->a:J

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Lcom/google/googlex/gcam/GrayImageS16;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v9, v10, v0}, Lcom/google/googlex/gcam/GcamModuleJNI;->GrayImageS16_read_view(JLcom/google/googlex/gcam/GrayImageS16;)J

    move-result-wide v9

    nop

    nop

    nop

    invoke-direct {v8, v9, v10}, Lcom/google/googlex/gcam/GrayReadViewS16;-><init>(J)V

    iget-wide v11, v8, Lcom/google/googlex/gcam/GrayReadViewS16;->a:J

    nop

    iget-wide v13, v7, Lcom/google/googlex/gcam/JpgEncodeOptions;->a:J

    nop

    nop

    nop

    nop

    iget v15, v6, Lsxp;->j:I

    nop

    nop

    nop

    const/high16 v18, -0x40800000    # -1.0f

    nop

    const/16 v19, 0x0

    nop

    nop

    move/from16 v16, v18

    nop

    nop

    nop

    nop

    nop

    move/from16 v17, v18

    nop

    nop

    nop

    nop

    invoke-static/range {v11 .. v19}, Lcom/google/googlex/gcam/imageio/JpgHelper;->remapAndEncodeGrayS16ToJpegAsByteArrayImpl(JJIFFFI)[B

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0}, Lrss;->i(Ljava/lang/Object;)Lrss;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Lrss;->c()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    check-cast v3, Lcom/google/googlex/gcam/GrayImageS16;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Lcom/google/googlex/gcam/GrayImageS16;->b()V

    move-object v3, v0

    nop

    nop

    nop

    nop

    goto :goto_3

    nop

    nop

    :cond_2
    sget-object v3, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v3}, Lrss;->h()Z

    move-result v0

    nop

    nop

    if-eqz v0, :cond_4

    nop

    nop

    nop

    iget-object v0, v2, Lioq;->a:Lios;

    nop

    nop

    nop

    nop

    nop

    iget-object v0, v0, Lios;->b:Llxa;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Llxa;->i()Llxg;

    move-result-object v0

    nop

    nop

    nop

    nop

    const-string v6, "jpg"

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v6}, Llxg;->b(Ljava/lang/String;)Llxc;

    move-result-object v6

    nop

    iget-object v0, v6, Llxc;->b:Lpsf;

    nop

    const-string v7, "DEBUG_"

    nop

    nop

    invoke-static {v4, v7}, Lmf;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    nop

    invoke-interface {v0, v4}, Lpsf;->h(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, v6, Llxc;->b:Lpsf;

    nop

    nop

    nop

    invoke-interface {v0}, Lpsf;->e()Ljava/io/FileOutputStream;

    move-result-object v4

    nop

    nop
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v3}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    check-cast v0, [B

    nop

    nop

    invoke-virtual {v4, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v6}, Llxc;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_4
    iget-object v1, v2, Lioq;->a:Lios;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {v1}, Lpdf;->g()V

    goto/32 :goto_b

    nop

    nop

    :goto_6
    iget-wide v0, v1, Lioo;->f:J

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_7
    iget-object v3, v3, Lios;->h:Liot;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v5}, Lndt;->close()V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/16 :goto_24

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v3, v1, Lioo;->d:Lrss;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v5}, Lndt;->close()V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x1a

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v1, v1, Liot;->d:Lpdf;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v1, v1, Lios;->h:Liot;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v0, v1, Lioo;->c:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0x17

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    :cond_3
    goto/32 :goto_14

    nop

    :goto_12
    iget-object v3, v3, Liot;->d:Lpdf;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_13
    iget-object v8, v1, Lioo;->b:Lcom/google/googlex/gcam/ShotMetadata;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_14
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_16
    return-void

    nop

    :catchall_1
    move-exception v0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_18
    invoke-interface {v3}, Lpdf;->g()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v3, v2, Lioq;->a:Lios;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1a
    move-object/from16 v1, p0

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v5, v1, Lioo;->g:Lndt;

    nop

    nop

    nop

    :try_start_4
    iget-object v6, v2, Lioq;->a:Lios;

    nop

    nop

    nop

    nop

    iget-object v6, v6, Lios;->h:Liot;

    nop

    iget-object v6, v6, Liot;->d:Lpdf;

    nop

    const-string v7, "fusion#saveDebugImage"

    nop

    nop

    invoke-interface {v6, v7}, Lpdf;->f(Ljava/lang/String;)V

    sget-object v6, Lsxp;->b:Lsxp;

    nop

    iget-object v7, v2, Lioq;->a:Lios;

    nop

    nop

    iget-object v7, v7, Lios;->h:Liot;

    nop

    iget-object v7, v7, Liot;->k:Lhoh;

    nop

    sget-object v8, Lhmq;->bk:Lhmn;

    nop

    invoke-virtual {v7, v8}, Lhoh;->p(Lhmn;)Z

    move-result v7

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1c
    move-object v3, v0

    nop

    nop

    nop

    nop

    nop

    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/32 :goto_9

    nop

    nop

    :goto_1d
    goto/32 :goto_15

    nop

    nop

    :goto_1e
    iget-object v4, v1, Lioo;->e:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v2, v2, Lioq;->a:Lios;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_20
    goto/16 :goto_25

    nop

    nop

    nop

    :catchall_2
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_21
    invoke-virtual {v2, v0, v1}, Lios;->g(J)V

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_22
    iget-object v2, v1, Lioo;->a:Lioq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_23
    move-object v4, v0

    nop

    nop

    nop

    nop

    :try_start_6
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_24
    throw v3

    nop
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catch_0
    move-exception v0

    nop

    :try_start_7
    sget-object v3, Liot;->a:Lsdb;

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Lscs;->c()Lsdo;

    move-result-object v3

    nop

    nop

    nop

    nop

    invoke-interface {v3, v0}, Lscz;->i(Ljava/lang/Throwable;)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    const/16 v3, 0x6d8

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, v3}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    const-string v3, "[%s] Error writing debug image to disk."

    nop

    nop

    nop

    nop

    iget-object v4, v2, Lioq;->a:Lios;

    nop

    nop

    nop

    nop

    iget-object v4, v4, Lios;->d:Ljava/lang/String;

    nop

    nop

    nop

    invoke-interface {v0, v3, v4}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v6}, Llxc;->a()V

    goto :goto_25

    nop

    nop

    nop

    nop

    nop

    :cond_4
    sget-object v0, Liot;->a:Lsdb;

    nop

    nop

    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    const/16 v3, 0x6d7

    nop

    invoke-interface {v0, v3}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    check-cast v0, Lscz;

    nop

    const-string v3, "[%s] Error encoding debug image."

    nop

    nop

    iget-object v4, v2, Lioq;->a:Lios;

    nop

    nop

    iget-object v4, v4, Lios;->d:Ljava/lang/String;

    nop

    nop

    invoke-interface {v0, v3, v4}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_25
    goto/32 :goto_6

    nop

    nop

    :goto_26
    throw v0

    nop

    nop

    :goto_27
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop
.end method
