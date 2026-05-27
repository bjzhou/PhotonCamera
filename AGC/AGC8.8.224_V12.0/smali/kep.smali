.class public final Lkep;
.super Ljava/lang/Object;


# instance fields
.field public a:Lkfd;

.field public b:Lkfd;

.field public c:Lkfd;

.field public d:J

.field public e:I

.field public f:B

.field private g:Lkll;

.field private h:Lkez;

.field private i:Lkfd;

.field private j:Lkfd;

.field private k:Lmvq;

.field private l:Lmvv;

.field private m:Lmwl;

.field private n:Lmwn;

.field private o:Lkdd;

.field private p:Lkdy;

.field private q:Lmwn;

.field private r:Lkfg;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lkeq;
    .locals 25

    move-object/from16 v0, p0

    iget-object v1, v0, Lkep;->o:Lkdd;

    if-nez v1, :cond_0

    sget-object v1, Lmpx;->a:Lmpx;

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lkde;

    invoke-direct {v1}, Lkde;-><init>()V

    iput-object v1, v0, Lkep;->o:Lkdd;

    :cond_1
    iget-object v1, v0, Lkep;->k:Lmvq;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lmvq;->f()Lmvv;

    move-result-object v1

    iput-object v1, v0, Lkep;->l:Lmvv;

    goto :goto_1

    :cond_2
    iget-object v1, v0, Lkep;->l:Lmvv;

    if-nez v1, :cond_3

    sget v1, Lmvv;->d:I

    sget-object v1, Lmyu;->a:Lmvv;

    iput-object v1, v0, Lkep;->l:Lmvv;

    :cond_3
    :goto_1
    iget-object v1, v0, Lkep;->m:Lmwl;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lmwl;->f()Lmwn;

    move-result-object v1

    iput-object v1, v0, Lkep;->n:Lmwn;

    goto :goto_2

    :cond_4
    iget-object v1, v0, Lkep;->n:Lmwn;

    if-nez v1, :cond_5

    sget-object v1, Lmza;->a:Lmza;

    iput-object v1, v0, Lkep;->n:Lmwn;

    :cond_5
    :goto_2
    iget-byte v1, v0, Lkep;->f:B

    const/16 v2, 0xf

    if-ne v1, v2, :cond_c

    iget-object v6, v0, Lkep;->g:Lkll;

    if-eqz v6, :cond_c

    iget-object v7, v0, Lkep;->h:Lkez;

    if-eqz v7, :cond_c

    iget-object v8, v0, Lkep;->i:Lkfd;

    if-eqz v8, :cond_c

    iget-object v9, v0, Lkep;->a:Lkfd;

    if-eqz v9, :cond_c

    iget-object v10, v0, Lkep;->b:Lkfd;

    if-eqz v10, :cond_c

    iget-object v11, v0, Lkep;->c:Lkfd;

    if-eqz v11, :cond_c

    iget-object v12, v0, Lkep;->j:Lkfd;

    if-eqz v12, :cond_c

    iget-object v13, v0, Lkep;->r:Lkfg;

    if-eqz v13, :cond_c

    iget-object v1, v0, Lkep;->o:Lkdd;

    if-eqz v1, :cond_c

    iget-object v2, v0, Lkep;->p:Lkdy;

    if-eqz v2, :cond_c

    iget-object v15, v0, Lkep;->q:Lmwn;

    if-nez v15, :cond_6

    goto/16 :goto_6

    :cond_6
    new-instance v14, Lkeq;

    move-object v5, v14

    iget-object v4, v0, Lkep;->l:Lmvv;

    move-object v3, v14

    move-object v14, v4

    iget-object v4, v0, Lkep;->n:Lmwn;

    move-object/from16 v21, v15

    move-object v15, v4

    move-object/from16 v24, v3

    iget-wide v3, v0, Lkep;->d:J

    move-wide/from16 v18, v3

    iget v3, v0, Lkep;->e:I

    move/from16 v20, v3

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    invoke-direct/range {v5 .. v23}, Lkeq;-><init>(Lkll;Lkez;Lkfd;Lkfd;Lkfd;Lkfd;Lkfd;Lkfg;Lmvv;Lmwn;Lkdd;Lkdy;JILmwn;[B[B)V

    move-object/from16 v1, v24

    iget-object v2, v1, Lkeq;->g:Lmvv;

    move-object v3, v2

    check-cast v3, Lmyu;

    iget v3, v3, Lmyu;->c:I

    iget-object v4, v1, Lkeq;->b:Lkez;

    sget-object v5, Lkez;->b:Lkez;

    const/4 v6, 0x0

    if-ne v4, v5, :cond_a

    const/4 v4, 0x2

    if-gt v3, v4, :cond_9

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v3, :cond_a

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkfl;

    iget-object v7, v5, Lkfl;->a:Lkfm;

    sget-object v8, Lkfm;->d:Lkfm;

    if-eq v7, v8, :cond_8

    iget-object v5, v5, Lkfl;->a:Lkfm;

    sget-object v7, Lkfm;->e:Lkfm;

    if-eq v5, v7, :cond_8

    sget-object v7, Lkfm;->c:Lkfm;

    if-eq v5, v7, :cond_8

    sget-object v7, Lkfm;->b:Lkfm;

    if-ne v5, v7, :cond_7

    const/4 v5, 0x1

    goto :goto_4

    :cond_7
    const/4 v5, 0x0

    goto :goto_4

    :cond_8
    const/4 v5, 0x1

    :goto_4
    const-string v7, "Streams in highspeed operating mode must be a viewfinder or MediaRecorder/MediaCodec surface."

    invoke-static {v5, v7}, Lmoz;->q(ZLjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_9
    new-instance v1, Ljava/lang/IllegalStateException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v5, v2, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "At most 2 surfaces are supported in %s, but we get %s"

    invoke-static {v3, v2}, Llkj;->F(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    if-lez v3, :cond_b

    const/4 v4, 0x1

    goto :goto_5

    :cond_b
    const/4 v4, 0x0

    :goto_5
    const-string v2, "At least one stream should be provided"

    invoke-static {v4, v2}, Lmoz;->q(ZLjava/lang/Object;)V

    return-object v1

    :cond_c
    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lkep;->g:Lkll;

    if-nez v2, :cond_d

    const-string v2, " cameraId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    iget-object v2, v0, Lkep;->h:Lkez;

    if-nez v2, :cond_e

    const-string v2, " operatingMode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    iget-object v2, v0, Lkep;->i:Lkfd;

    if-nez v2, :cond_f

    const-string v2, " template"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    iget-object v2, v0, Lkep;->a:Lkfd;

    if-nez v2, :cond_10

    const-string v2, " captureTemplate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    iget-object v2, v0, Lkep;->b:Lkfd;

    if-nez v2, :cond_11

    const-string v2, " reprocessingTemplate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    iget-object v2, v0, Lkep;->c:Lkfd;

    if-nez v2, :cond_12

    const-string v2, " repeatingTemplate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    iget-object v2, v0, Lkep;->j:Lkfd;

    if-nez v2, :cond_13

    const-string v2, " repeatingCaptureTemplate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    iget-object v2, v0, Lkep;->r:Lkfg;

    if-nez v2, :cond_14

    const-string v2, " frameListener"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    iget-object v2, v0, Lkep;->o:Lkdd;

    if-nez v2, :cond_15

    const-string v2, " fatalErrorHandler"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    iget-object v2, v0, Lkep;->p:Lkdy;

    if-nez v2, :cond_16

    const-string v2, " cameraDeviceErrorListener"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_16
    iget-byte v2, v0, Lkep;->f:B

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-nez v2, :cond_17

    const-string v2, " result3ATimeoutNs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_17
    iget-byte v2, v0, Lkep;->f:B

    const/4 v3, 0x2

    and-int/2addr v2, v3

    if-nez v2, :cond_18

    const-string v2, " result3ATimeoutFrameCount"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_18
    iget-object v2, v0, Lkep;->q:Lmwn;

    if-nez v2, :cond_19

    const-string v2, " quirks"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_19
    iget-byte v2, v0, Lkep;->f:B

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_1a

    const-string v2, " autoResume"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1a
    iget-byte v2, v0, Lkep;->f:B

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_1b

    const-string v2, " useCameraPipe"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1b
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Missing required properties:"

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_8

    :goto_7
    throw v2

    :goto_8
    goto :goto_7
.end method

.method public final b()Lmwl;
    .locals 1

    iget-object v0, p0, Lkep;->m:Lmwl;

    if-nez v0, :cond_0

    invoke-static {}, Lmwn;->D()Lmwl;

    move-result-object v0

    iput-object v0, p0, Lkep;->m:Lmwl;

    :cond_0
    iget-object v0, p0, Lkep;->m:Lmwl;

    return-object v0
.end method

.method public final c(Ljava/util/Set;)V
    .locals 1

    invoke-virtual {p0}, Lkep;->b()Lmwl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmwl;->h(Ljava/lang/Iterable;)V

    return-void
.end method

.method public final d(Lkfl;)V
    .locals 1

    iget-object v0, p0, Lkep;->k:Lmvq;

    if-nez v0, :cond_0

    invoke-static {}, Lmvv;->e()Lmvq;

    move-result-object v0

    iput-object v0, p0, Lkep;->k:Lmvq;

    :cond_0
    iget-object v0, p0, Lkep;->k:Lmvq;

    invoke-virtual {v0, p1}, Lmvq;->g(Ljava/lang/Object;)V

    return-void
.end method

.method public final e(Lkdy;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lkep;->p:Lkdy;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null cameraDeviceErrorListener"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final f(Lkll;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lkep;->g:Lkll;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null cameraId"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final g(Lkez;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lkep;->h:Lkez;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null operatingMode"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final h(Lmwn;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lkep;->q:Lmwn;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null quirks"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final i(Lkfd;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lkep;->j:Lkfd;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null repeatingCaptureTemplate"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final j(Lkfd;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lkep;->i:Lkfd;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null template"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final k(Lkfg;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lkep;->r:Lkfg;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null frameListener"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
