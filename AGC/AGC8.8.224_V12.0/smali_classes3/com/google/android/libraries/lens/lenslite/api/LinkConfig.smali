.class public abstract Lcom/google/android/libraries/lens/lenslite/api/LinkConfig;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "LinkConfig"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lcom/google/android/libraries/lens/lenslite/api/LinkConfig$Builder;
    .locals 2

    new-instance v0, Lkuw;

    invoke-direct {v0}, Lkuw;-><init>()V

    sget-object v1, Lkvk;->b:Lkvy;

    invoke-virtual {v0, v1}, Lkuw;->a(Lkvy;)V

    const/4 v1, 0x3

    iput-byte v1, v0, Lkuw;->G:B

    return-object v0
.end method

.method public static fromByteArray([B)Lcom/google/android/libraries/lens/lenslite/api/LinkConfig;
    .locals 8

    invoke-static {}, Lnwh;->a()Lnwh;

    move-result-object v0

    sget-object v1, Lkwa;->L:Lkwa;

    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {v1, p0, v3, v2, v0}, Lnws;->Q(Lnws;[BIILnwh;)Lnws;

    move-result-object p0

    invoke-static {p0}, Lnws;->ae(Lnws;)V

    check-cast p0, Lkwa;

    invoke-static {}, Lcom/google/android/libraries/lens/lenslite/api/LinkConfig;->builder()Lcom/google/android/libraries/lens/lenslite/api/LinkConfig$Builder;

    move-result-object v0

    iget v1, p0, Lkwa;->a:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lkwa;->c:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object v3, v0

    check-cast v3, Lkuw;

    iput-object v1, v3, Lkuw;->a:Ljava/lang/Boolean;

    :cond_0
    iget v1, p0, Lkwa;->a:I

    const/high16 v3, 0x800000

    and-int/2addr v1, v3

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lkwa;->c:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object v3, v0

    check-cast v3, Lkuw;

    iput-object v1, v3, Lkuw;->b:Ljava/lang/Boolean;

    :cond_1
    iget v1, p0, Lkwa;->a:I

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lkwa;->d:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object v4, v0

    check-cast v4, Lkuw;

    iput-object v1, v4, Lkuw;->c:Ljava/lang/Boolean;

    :cond_2
    iget v1, p0, Lkwa;->a:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lkwa;->g:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object v4, v0

    check-cast v4, Lkuw;

    iput-object v1, v4, Lkuw;->e:Ljava/lang/Boolean;

    iget-object v1, p0, Lkwa;->r:Lkwc;

    if-nez v1, :cond_3

    sget-object v1, Lkwc;->b:Lkwc;

    :cond_3
    iget-object v1, v1, Lkwc;->a:Lnxa;

    iput-object v1, v4, Lkuw;->f:Ljava/util/List;

    :cond_4
    iget v1, p0, Lkwa;->a:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    iget v1, p0, Lkwa;->h:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v4, v0

    check-cast v4, Lkuw;

    iput-object v1, v4, Lkuw;->g:Ljava/lang/Integer;

    :cond_5
    iget-object v1, p0, Lkwa;->i:Lkwd;

    if-nez v1, :cond_6

    sget-object v1, Lkwd;->c:Lkwd;

    :cond_6
    iget v1, v1, Lkwd;->a:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_8

    iget-object v1, p0, Lkwa;->i:Lkwd;

    if-nez v1, :cond_7

    sget-object v1, Lkwd;->c:Lkwd;

    :cond_7
    iget-boolean v1, v1, Lkwd;->b:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object v4, v0

    check-cast v4, Lkuw;

    iput-object v1, v4, Lkuw;->d:Ljava/lang/Boolean;

    :cond_8
    iget v1, p0, Lkwa;->a:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_a

    iget-boolean v1, p0, Lkwa;->d:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object v4, v0

    check-cast v4, Lkuw;

    iput-object v1, v4, Lkuw;->c:Ljava/lang/Boolean;

    iget-object v1, p0, Lkwa;->p:Lnxa;

    invoke-interface {v1}, Lnxa;->size()I

    move-result v1

    if-lez v1, :cond_a

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v5, p0, Lkwa;->p:Lnxa;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkwf;

    iget-object v7, v6, Lkwf;->b:Ljava/lang/String;

    iget v6, v6, Lkwf;->c:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v1, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_9
    iput-object v1, v4, Lkuw;->l:Ljava/util/Map;

    :cond_a
    iget v1, p0, Lkwa;->a:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_c

    iget v1, p0, Lkwa;->j:I

    invoke-static {v1}, Lkwp;->a(I)I

    move-result v1

    if-nez v1, :cond_b

    const/4 v1, 0x2

    :cond_b
    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v4, v0

    check-cast v4, Lkuw;

    iput-object v1, v4, Lkuw;->h:Ljava/lang/Integer;

    :cond_c
    iget v1, p0, Lkwa;->a:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_d

    iget-boolean v1, p0, Lkwa;->k:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object v4, v0

    check-cast v4, Lkuw;

    iput-object v1, v4, Lkuw;->i:Ljava/lang/Boolean;

    :cond_d
    iget v1, p0, Lkwa;->a:I

    const/high16 v4, 0x100000

    and-int/2addr v1, v4

    if-eqz v1, :cond_f

    iget-boolean v1, p0, Lkwa;->x:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object v4, v0

    check-cast v4, Lkuw;

    iput-object v1, v4, Lkuw;->u:Ljava/lang/Boolean;

    iget v1, p0, Lkwa;->a:I

    const/high16 v5, 0x400000

    and-int/2addr v1, v5

    if-eqz v1, :cond_f

    iget-object v1, p0, Lkwa;->z:Lkvz;

    if-nez v1, :cond_e

    sget-object v1, Lkvz;->a:Lkvz;

    :cond_e
    iput-object v1, v4, Lkuw;->v:Lkvz;

    :cond_f
    iget v1, p0, Lkwa;->a:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_10

    iget v1, p0, Lkwa;->l:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v4, v0

    check-cast v4, Lkuw;

    iput-object v1, v4, Lkuw;->j:Ljava/lang/Integer;

    :cond_10
    iget v1, p0, Lkwa;->a:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_11

    iget-boolean v1, p0, Lkwa;->m:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object v4, v0

    check-cast v4, Lkuw;

    iput-object v1, v4, Lkuw;->k:Ljava/lang/Boolean;

    :cond_11
    iget v1, p0, Lkwa;->a:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_12

    iget-boolean v1, p0, Lkwa;->n:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object v4, v0

    check-cast v4, Lkuw;

    iput-object v1, v4, Lkuw;->m:Ljava/lang/Boolean;

    :cond_12
    iget v1, p0, Lkwa;->a:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_13

    iget-boolean v1, p0, Lkwa;->o:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object v4, v0

    check-cast v4, Lkuw;

    iput-object v1, v4, Lkuw;->n:Ljava/lang/Boolean;

    :cond_13
    iget v1, p0, Lkwa;->a:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_14

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object v4, v0

    check-cast v4, Lkuw;

    iput-object v1, v4, Lkuw;->o:Ljava/lang/Boolean;

    :cond_14
    iget v1, p0, Lkwa;->a:I

    const/high16 v4, 0x10000

    and-int/2addr v1, v4

    if-eqz v1, :cond_15

    iget-boolean v1, p0, Lkwa;->t:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object v4, v0

    check-cast v4, Lkuw;

    iput-object v1, v4, Lkuw;->p:Ljava/lang/Boolean;

    :cond_15
    iget v1, p0, Lkwa;->q:I

    invoke-static {v1}, Lkvy;->b(I)Lkvy;

    move-result-object v1

    if-nez v1, :cond_16

    sget-object v1, Lkvy;->a:Lkvy;

    :cond_16
    sget-object v4, Lkvy;->a:Lkvy;

    if-ne v1, v4, :cond_17

    sget-object v1, Lkvk;->b:Lkvy;

    goto :goto_1

    :cond_17
    iget v1, p0, Lkwa;->q:I

    invoke-static {v1}, Lkvy;->b(I)Lkvy;

    move-result-object v1

    if-nez v1, :cond_18

    sget-object v1, Lkvy;->a:Lkvy;

    :cond_18
    :goto_1
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/lens/lenslite/api/LinkConfig$Builder;->a(Lkvy;)V

    iget v1, p0, Lkwa;->a:I

    const/high16 v4, 0x20000

    and-int/2addr v1, v4

    if-eqz v1, :cond_1a

    iget v1, p0, Lkwa;->u:I

    invoke-static {v1}, Lkwp;->b(I)I

    move-result v1

    if-nez v1, :cond_19

    const/4 v1, 0x1

    :cond_19
    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v4, v0

    check-cast v4, Lkuw;

    iput-object v1, v4, Lkuw;->q:Ljava/lang/Integer;

    :cond_1a
    iget v1, p0, Lkwa;->a:I

    const/high16 v4, 0x40000

    and-int/2addr v1, v4

    if-eqz v1, :cond_1b

    iget-boolean v1, p0, Lkwa;->v:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object v4, v0

    check-cast v4, Lkuw;

    iput-object v1, v4, Lkuw;->r:Ljava/lang/Boolean;

    :cond_1b
    iget v1, p0, Lkwa;->b:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_1c

    iget-wide v3, p0, Lkwa;->K:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object v3, v0

    check-cast v3, Lkuw;

    iput-object v1, v3, Lkuw;->s:Ljava/lang/Long;

    :cond_1c
    iget v1, p0, Lkwa;->a:I

    const/high16 v3, 0x80000

    and-int/2addr v1, v3

    if-eqz v1, :cond_1d

    iget-boolean v1, p0, Lkwa;->w:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object v3, v0

    check-cast v3, Lkuw;

    iput-object v1, v3, Lkuw;->t:Ljava/lang/Boolean;

    :cond_1d
    iget v1, p0, Lkwa;->a:I

    const/high16 v3, 0x200000

    and-int/2addr v1, v3

    if-eqz v1, :cond_1e

    iget-wide v3, p0, Lkwa;->y:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object v3, v0

    check-cast v3, Lkuw;

    iput-object v1, v3, Lkuw;->w:Ljava/lang/Long;

    :cond_1e
    iget v1, p0, Lkwa;->a:I

    const/high16 v3, 0x1000000

    and-int/2addr v1, v3

    if-eqz v1, :cond_1f

    iget-boolean v1, p0, Lkwa;->B:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object v3, v0

    check-cast v3, Lkuw;

    iput-object v1, v3, Lkuw;->x:Ljava/lang/Boolean;

    :cond_1f
    iget v1, p0, Lkwa;->a:I

    const/high16 v3, 0x2000000

    and-int/2addr v1, v3

    if-eqz v1, :cond_21

    iget-object v1, p0, Lkwa;->C:Lkwo;

    if-nez v1, :cond_20

    sget-object v1, Lkwo;->a:Lkwo;

    :cond_20
    invoke-virtual {v1}, Lnve;->J()[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    move-object v3, v0

    check-cast v3, Lkuw;

    iput-object v1, v3, Lkuw;->y:Ljava/nio/ByteBuffer;

    :cond_21
    iget v1, p0, Lkwa;->a:I

    const/high16 v3, 0x4000000

    and-int/2addr v1, v3

    if-eqz v1, :cond_22

    iget-boolean v1, p0, Lkwa;->D:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object v3, v0

    check-cast v3, Lkuw;

    iput-object v1, v3, Lkuw;->z:Ljava/lang/Boolean;

    :cond_22
    iget v1, p0, Lkwa;->a:I

    const/high16 v3, 0x8000000

    and-int/2addr v1, v3

    if-eqz v1, :cond_23

    iget-object v1, p0, Lkwa;->E:Lnvt;

    invoke-virtual {v1}, Lnvt;->A()[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    move-object v3, v0

    check-cast v3, Lkuw;

    iput-object v1, v3, Lkuw;->A:Ljava/nio/ByteBuffer;

    :cond_23
    iget v1, p0, Lkwa;->a:I

    const/high16 v3, 0x10000000

    and-int/2addr v1, v3

    if-eqz v1, :cond_24

    iget-boolean v1, p0, Lkwa;->F:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object v3, v0

    check-cast v3, Lkuw;

    iput-object v1, v3, Lkuw;->B:Ljava/lang/Boolean;

    :cond_24
    iget v1, p0, Lkwa;->b:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_25

    iget-boolean v1, p0, Lkwa;->J:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Lkuw;

    iput-object v1, v2, Lkuw;->C:Ljava/lang/Boolean;

    :cond_25
    iget v1, p0, Lkwa;->a:I

    const/high16 v2, 0x20000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_27

    iget-object v1, p0, Lkwa;->G:Lkwe;

    if-nez v1, :cond_26

    sget-object v1, Lkwe;->a:Lkwe;

    :cond_26
    move-object v2, v0

    check-cast v2, Lkuw;

    iput-object v1, v2, Lkuw;->E:Lkwe;

    :cond_27
    iget v1, p0, Lkwa;->a:I

    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v1, v2

    if-eqz v1, :cond_28

    iget-boolean v1, p0, Lkwa;->H:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Lkuw;

    iput-object v1, v2, Lkuw;->D:Ljava/lang/Boolean;

    :cond_28
    iget v1, p0, Lkwa;->a:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_29

    iget-boolean p0, p0, Lkwa;->I:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    move-object v1, v0

    check-cast v1, Lkuw;

    iput-object p0, v1, Lkuw;->F:Ljava/lang/Boolean;

    :cond_29
    invoke-virtual {v0}, Lcom/google/android/libraries/lens/lenslite/api/LinkConfig$Builder;->build()Lcom/google/android/libraries/lens/lenslite/api/LinkConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract aiAiShoppingDetectionEnabled()Z
.end method

.method public abstract aiAiTranslateDetectionEnabled()Z
.end method

.method public abstract apparelDetectionEnabled()Ljava/lang/Boolean;
.end method

.method public abstract apparelMode()Ljava/lang/Integer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract barcodeEnabled()Ljava/lang/Boolean;
.end method

.method public abstract documentScanningEnabled()Ljava/lang/Boolean;
.end method

.method public abstract dutyCycleMode()Ljava/lang/Integer;
.end method

.method public abstract dynamicLoadingMode()Lkvy;
.end method

.method public abstract embedderModeEnabled()Ljava/lang/Boolean;
.end method

.method public abstract foreignLanguageDetectionEnabled()Ljava/lang/Boolean;
.end method

.method public abstract freeTextCopyEnabled()Ljava/lang/Boolean;
.end method

.method public abstract gleamEngineEnabled()Ljava/lang/Boolean;
.end method

.method public abstract legacyPixelParity()Ljava/lang/Boolean;
.end method

.method public abstract lens2020ModeEnabled()Ljava/lang/Boolean;
.end method

.method public abstract lens2020Params()Lkvz;
.end method

.method public abstract lightweightSuggestionsModeEnabled()Ljava/lang/Boolean;
.end method

.method public abstract linkEvalConfigMetadata()Ljava/nio/ByteBuffer;
.end method

.method public abstract linkModelDownloadEnabled()Ljava/lang/Boolean;
.end method

.method public abstract minimumDynamicLoadingHostVersion()Ljava/lang/Long;
.end method

.method public abstract mobileRaidParams()Lkwe;
.end method

.method public abstract modelDownloadCheckTimeoutMs()Ljava/lang/Long;
.end method

.method public abstract modelDownloadEnabled()Ljava/lang/Boolean;
.end method

.method public abstract nonEnPersonNameDetectionEnabled()Ljava/lang/Boolean;
.end method

.method public abstract pdpTextExtractionEnabled()Ljava/lang/Boolean;
.end method

.method public abstract pixelChipMode()Ljava/lang/Boolean;
.end method

.method public abstract processorImagePoolSize()Ljava/lang/Integer;
.end method

.method public abstract processorMode()Ljava/lang/Integer;
.end method

.method public abstract productDetectionEnabled()Ljava/lang/Boolean;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract productIndex()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract productMode()Ljava/lang/Integer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract sceneClassificationMap()Ljava/util/Map;
.end method

.method public abstract sceneDetectionEnabled()Ljava/lang/Boolean;
.end method

.method public abstract serializedPipelineConfig()Ljava/nio/ByteBuffer;
.end method

.method public abstract stopPipelineOnPause()Ljava/lang/Boolean;
.end method

.method public abstract supportedTranslateLanguages()Ljava/util/List;
.end method

.method public abstract textSelectionEnabled()Ljava/lang/Boolean;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public final toByteArray()[B
    .locals 8

    sget-object v0, Lkwa;->L:Lkwa;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/libraries/lens/lenslite/api/LinkConfig;->wifiConnectionEnabled()Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v3, v0, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v3, v0, Lnwn;->b:Lnws;

    check-cast v3, Lkwa;

    iget v4, v3, Lkwa;->a:I

    or-int/2addr v4, v2

    iput v4, v3, Lkwa;->a:I

    iput-boolean v1, v3, Lkwa;->c:Z

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/libraries/lens/lenslite/api/LinkConfig;->wifiScanEnabled()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v3, v0, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_2
    iget-object v3, v0, Lnwn;->b:Lnws;

    check-cast v3, Lkwa;

    iget v4, v3, Lkwa;->a:I

    const/high16 v5, 0x800000

    or-int/2addr v4, v5

    iput v4, v3, Lkwa;->a:I

    iput-boolean v1, v3, Lkwa;->A:Z

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/libraries/lens/lenslite/api/LinkConfig;->sceneDetectionEnabled()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v3, v0, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_4
    iget-object v3, v0, Lnwn;->b:Lnws;

    check-cast v3, Lkwa;

    iget v4, v3, Lkwa;->a:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v3, Lkwa;->a:I

    iput-boolean v1, v3, Lkwa;->d:Z

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/libraries/lens/lenslite/api/LinkConfig;->freeTextCopyEnabled()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v3, v0, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_6
    iget-object v3, v0, Lnwn;->b:Lnws;

    check-cast v3, Lkwa;

    iget v4, v3, Lkwa;->a:I

    or-int/lit8 v4, v4, 0x8

    iput v4, v3, Lkwa;->a:I

    iput-boolean v1, v3, Lkwa;->f:Z

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/libraries/lens/lenslite/api/LinkConfig;->foreignLanguageDetectionEnabled()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v3, v0, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_8
    iget-object v3, v0, Lnwn;->b:Lnws;

    check-cast v3, Lkwa;

    iget v4, v3, Lkwa;->a:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v3, Lkwa;->a:I

    iput-boolean v1, v3, Lkwa;->g:Z

    invoke-virtual {p0}, Lcom/google/android/libraries/lens/lenslite/api/LinkConfig;->supportedTranslateLanguages()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_c

    sget-object v3, Lkwc;->b:Lkwc;

    invoke-virtual {v3}, Lnws;->O()Lnwn;

    move-result-object v3

    iget-object v4, v3, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_9
    iget-object v4, v3, Lnwn;->b:Lnws;

    check-cast v4, Lkwc;

    iget-object v5, v4, Lkwc;->a:Lnxa;

    invoke-interface {v5}, Lnxa;->c()Z

    move-result v6

    if-nez v6, :cond_a

    invoke-static {v5}, Lnws;->U(Lnxa;)Lnxa;

    move-result-object v5

    iput-object v5, v4, Lkwc;->a:Lnxa;

    :cond_a
    iget-object v4, v4, Lkwc;->a:Lnxa;

    invoke-static {v1, v4}, Lnvd;->e(Ljava/lang/Iterable;Ljava/util/List;)V

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_b
    iget-object v1, v0, Lnwn;->b:Lnws;

    check-cast v1, Lkwa;

    invoke-virtual {v3}, Lnwn;->i()Lnws;

    move-result-object v3

    check-cast v3, Lkwc;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v3, v1, Lkwa;->r:Lkwc;

    iget v3, v1, Lkwa;->a:I

    or-int/lit16 v3, v3, 0x4000

    iput v3, v1, Lkwa;->a:I

    :cond_c
    invoke-virtual {p0}, Lcom/google/android/libraries/lens/lenslite/api/LinkConfig;->processorMode()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v3, v0, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_d

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_d
    iget-object v3, v0, Lnwn;->b:Lnws;

    check-cast v3, Lkwa;

    iget v4, v3, Lkwa;->a:I

    or-int/lit8 v4, v4, 0x20

    iput v4, v3, Lkwa;->a:I

    iput v1, v3, Lkwa;->h:I

    :cond_e
    invoke-virtual {p0}, Lcom/google/android/libraries/lens/lenslite/api/LinkConfig;->freeTextCopyEnabled()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_11

    sget-object v1, Lkwd;->c:Lkwd;

    invoke-virtual {v1}, Lnws;->O()Lnwn;

    move-result-object v1

    iget-object v3, v1, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_f

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_f
    iget-object v3, v1, Lnwn;->b:Lnws;

    check-cast v3, Lkwd;

    iget v4, v3, Lkwd;->a:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v3, Lkwd;->a:I

    iput-boolean v2, v3, Lkwd;->b:Z

    iget-object v3, v0, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_10

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_10
    iget-object v3, v0, Lnwn;->b:Lnws;

    check-cast v3, Lkwa;

    invoke-virtual {v1}, Lnwn;->i()Lnws;

    move-result-object v1

    check-cast v1, Lkwd;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v3, Lkwa;->i:Lkwd;

    iget v1, v3, Lkwa;->a:I

    or-int/lit8 v1, v1, 0x40

    iput v1, v3, Lkwa;->a:I

    :cond_11
    invoke-virtual {p0}, Lcom/google/android/libraries/lens/lenslite/api/LinkConfig;->sceneDetectionEnabled()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v3, v0, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_12

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_12
    iget-object v3, v0, Lnwn;->b:Lnws;

    check-cast v3, Lkwa;

    iget v4, v3, Lkwa;->a:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v3, Lkwa;->a:I

    iput-boolean v1, v3, Lkwa;->d:Z

    invoke-virtual {p0}, Lcom/google/android/libraries/lens/lenslite/api/LinkConfig;->sceneClassificationMap()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    sget-object v4, Lkwf;->d:Lkwf;

    invoke-virtual {v4}, Lnws;->O()Lnwn;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, v4, Lnwn;->b:Lnws;

    invoke-virtual {v6}, Lnws;->ac()Z

    move-result v6

    if-nez v6, :cond_13

    invoke-virtual {v4}, Lnwn;->p()V

    :cond_13
    iget-object v6, v4, Lnwn;->b:Lnws;

    check-cast v6, Lkwf;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v7, v6, Lkwf;->a:I

    or-int/2addr v7, v2

    iput v7, v6, Lkwf;->a:I

    iput-object v5, v6, Lkwf;->b:Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v5, v4, Lnwn;->b:Lnws;

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_14

    invoke-virtual {v4}, Lnwn;->p()V

    :cond_14
    iget-object v5, v4, Lnwn;->b:Lnws;

    check-cast v5, Lkwf;

    iget v6, v5, Lkwf;->a:I

    or-int/lit8 v6, v6, 0x2

    iput v6, v5, Lkwf;->a:I

    iput v3, v5, Lkwf;->c:F

    invoke-virtual {v4}, Lnwn;->i()Lnws;

    move-result-object v3

    check-cast v3, Lkwf;

    iget-object v4, v0, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_15

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_15
    iget-object v4, v0, Lnwn;->b:Lnws;

    check-cast v4, Lkwa;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v4, Lkwa;->p:Lnxa;

    invoke-interface {v5}, Lnxa;->c()Z

    move-result v6

    if-nez v6, :cond_16

    invoke-static {v5}, Lnws;->U(Lnxa;)Lnxa;

    move-result-object v5

    iput-object v5, v4, Lkwa;->p:Lnxa;

    :cond_16
    iget-object v4, v4, Lkwa;->p:Lnxa;

    invoke-interface {v4, v3}, Lnxa;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_17
    invoke-virtual {p0}, Lcom/google/android/libraries/lens/lenslite/api/LinkConfig;->triggerMode()Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lkwp;->a(I)I

    move-result v1

    iget-object v4, v0, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_18

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_18
    iget-object v4, v0, Lnwn;->b:Lnws;

    check-cast v4, Lkwa;

    add-int/lit8 v5, v1, -0x1

    if-eqz v1, :cond_19

    iput v5, v4, Lkwa;->j:I

    iget v1, v4, Lkwa;->a:I

    or-int/lit16 v1, v1, 0x80

    iput v1, v4, Lkwa;->a:I

    goto :goto_1

    :cond_19
    throw v3

    :cond_1a
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/libraries/lens/lenslite/api/LinkConfig;->apparelDetectionEnabled()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v4, v0, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_1b

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_1b
    iget-object v4, v0, Lnwn;->b:Lnws;

    move-object v5, v4

    check-cast v5, Lkwa;

    iget v6, v5, Lkwa;->a:I

    or-int/lit16 v6, v6, 0x100

    iput v6, v5, Lkwa;->a:I

    iput-boolean v1, v5, Lkwa;->k:Z

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_1c
    iget-object v1, v0, Lnwn;->b:Lnws;

    check-cast v1, Lkwa;

    iput v2, v1, Lkwa;->s:I

    iget v4, v1, Lkwa;->a:I

    const v5, 0x8000

    or-int/2addr v4, v5

    iput v4, v1, Lkwa;->a:I

    :cond_1d
    invoke-virtual {p0}, Lcom/google/android/libraries/lens/lenslite/api/LinkConfig;->processorImagePoolSize()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v4, v0, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_1e

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_1e
    iget-object v4, v0, Lnwn;->b:Lnws;

    check-cast v4, Lkwa;

    iget v5, v4, Lkwa;->a:I

    or-int/lit16 v5, v5, 0x200

    iput v5, v4, Lkwa;->a:I

    iput v1, v4, Lkwa;->l:I

    :cond_1f
    invoke-virtual {p0}, Lcom/google/android/libraries/lens/lenslite/api/LinkConfig;->nonEnPersonNameDetectionEnabled()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_21

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v4, v0, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_20

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_20
    iget-object v4, v0, Lnwn;->b:Lnws;

    check-cast v4, Lkwa;

    iget v5, v4, Lkwa;->a:I

    or-int/lit16 v5, v5, 0x400

    iput v5, v4, Lkwa;->a:I

    iput-boolean v1, v4, Lkwa;->m:Z

    :cond_21
    invoke-virtual {p0}, Lcom/google/android/libraries/lens/lenslite/api/LinkConfig;->legacyPixelParity()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_23

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v4, v0, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_22

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_22
    iget-object v4, v0, Lnwn;->b:Lnws;

    check-cast v4, Lkwa;

    iget v5, v4, Lkwa;->a:I

    or-int/lit16 v5, v5, 0x800

    iput v5, v4, Lkwa;->a:I

    iput-boolean v1, v4, Lkwa;->n:Z

    :cond_23
    invoke-virtual {p0}, Lcom/google/android/libraries/lens/lenslite/api/LinkConfig;->pixelChipMode()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_25

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v4, v0, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_24

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_24
    iget-object v4, v0, Lnwn;->b:Lnws;

    check-cast v4, Lkwa;

    iget v5, v4, Lkwa;->a:I

    or-int/lit16 v5, v5, 0x1000

    iput v5, v4, Lkwa;->a:I

    iput-boolean v1, v4, Lkwa;->o:Z

    :cond_25
    invoke-virtual {p0}, Lcom/google/android/libraries/lens/lenslite/api/LinkConfig;->documentScanningEnabled()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_27

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_27

    sget-object v1, Lkwb;->a:Lkwb;

    iget-object v4, v0, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_26

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_26
    iget-object v4, v0, Lnwn;->b:Lnws;

    check-cast v4, Lkwa;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v4, Lkwa;->e:Lkwb;

    iget v1, v4, Lkwa;->a:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v4, Lkwa;->a:I

    :cond_27
    invoke-virtual {p0}, Lcom/google/android/libraries/lens/lenslite/api/LinkConfig;->gleamEngineEnabled()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_29

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v4, v0, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_28

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_28
    iget-object v4, v0, Lnwn;->b:Lnws;

    check-cast v4, Lkwa;

    iget v5, v4, Lkwa;->a:I

    const/high16 v6, 0x10000

    or-int/2addr v5, v6

    iput v5, v4, Lkwa;->a:I

    iput-boolean v1, v4, Lkwa;->t:Z

    :cond_29
    invoke-virtual {p0}, Lcom/google/android/libraries/lens/lenslite/api/LinkConfig;->dynamicLoadingMode()Lkvy;

    move-result-object v1

    iget-object v4, v0, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_2a

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_2a
    iget-object v4, v0, Lnwn;->b:Lnws;

    check-cast v4, Lkwa;

    iget v1, v1, Lkvy;->f:I

    iput v1, v4, Lkwa;->q:I

    iget v1, v4, Lkwa;->a:I

    or-int/lit16 v1, v1, 0x2000

    iput v1, v4, Lkwa;->a:I

    invoke-virtual {p0}, Lcom/google/android/libraries/lens/lenslite/api/LinkConfig;->dutyCycleMode()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2d

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lkwp;->b(I)I

    move-result v1

    iget-object v4, v0, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_2b

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_2b
    iget-object v4, v0, Lnwn;->b:Lnws;

    check-cast v4, Lkwa;

    add-int/lit8 v5, v1, -0x1

    if-eqz v1, :cond_2c

    iput v5, v4, Lkwa;->u:I

    iget v1, v4, Lkwa;->a:I

    const/high16 v3, 0x20000

    or-int/2addr v1, v3

    iput v1, v4, Lkwa;->a:I

    goto :goto_2

    :cond_2c
    throw v3

    :cond_2d
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/libraries/lens/lenslite/api/LinkConfig;->modelDownloadEnabled()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_2f

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v3, v0, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_2e

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_2e
    iget-object v3, v0, Lnwn;->b:Lnws;

    check-cast v3, Lkwa;

    iget v4, v3, Lkwa;->a:I

    const/high16 v5, 0x40000

    or-int/2addr v4, v5

    iput v4, v3, Lkwa;->a:I

    iput-boolean v1, v3, Lkwa;->v:Z

    :cond_2f
    invoke-virtual {p0}, Lcom/google/android/libraries/lens/lenslite/api/LinkConfig;->modelDownloadCheckTimeoutMs()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_31

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_30

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_30
    iget-object v1, v0, Lnwn;->b:Lnws;

    check-cast v1, Lkwa;

    iget v5, v1, Lkwa;->b:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v1, Lkwa;->b:I

    iput-wide v3, v1, Lkwa;->K:J

    :cond_31
    invoke-virtual {p0}, Lcom/google/android/libraries/lens/lenslite/api/LinkConfig;->barcodeEnabled()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_33

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v3, v0, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_32

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_32
    iget-object v3, v0, Lnwn;->b:Lnws;

    check-cast v3, Lkwa;

    iget v4, v3, Lkwa;->a:I

    const/high16 v5, 0x80000

    or-int/2addr v4, v5

    iput v4, v3, Lkwa;->a:I

    iput-boolean v1, v3, Lkwa;->w:Z

    :cond_33
    invoke-virtual {p0}, Lcom/google/android/libraries/lens/lenslite/api/LinkConfig;->lens2020ModeEnabled()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_36

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v3, v0, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_34

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_34
    iget-object v3, v0, Lnwn;->b:Lnws;

    check-cast v3, Lkwa;

    iget v4, v3, Lkwa;->a:I

    const/high16 v5, 0x100000

    or-int/2addr v4, v5

    iput v4, v3, Lkwa;->a:I

    iput-boolean v1, v3, Lkwa;->x:Z

    invoke-virtual {p0}, Lcom/google/android/libraries/lens/lenslite/api/LinkConfig;->lens2020Params()Lkvz;

    move-result-object v1

    if-eqz v1, :cond_36

    iget-object v3, v0, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_35

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_35
    iget-object v3, v0, Lnwn;->b:Lnws;

    check-cast v3, Lkwa;

    iput-object v1, v3, Lkwa;->z:Lkvz;

    iget v1, v3, Lkwa;->a:I

    const/high16 v4, 0x400000

    or-int/2addr v1, v4

    iput v1, v3, Lkwa;->a:I

    :cond_36
    invoke-virtual {p0}, Lcom/google/android/libraries/lens/lenslite/api/LinkConfig;->trivialFeatureEnabledBits()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_38

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_37

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_37
    iget-object v1, v0, Lnwn;->b:Lnws;

    check-cast v1, Lkwa;

    iget v5, v1, Lkwa;->a:I

    const/high16 v6, 0x200000

    or-int/2addr v5, v6

    iput v5, v1, Lkwa;->a:I

    iput-wide v3, v1, Lkwa;->y:J

    :cond_38
    invoke-virtual {p0}, Lcom/google/android/libraries/lens/lenslite/api/LinkConfig;->pdpTextExtractionEnabled()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_3a

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v3, v0, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_39

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_39
    iget-object v3, v0, Lnwn;->b:Lnws;

    check-cast v3, Lkwa;

    iget v4, v3, Lkwa;->a:I

    const/high16 v5, 0x1000000

    or-int/2addr v4, v5

    iput v4, v3, Lkwa;->a:I

    iput-boolean v1, v3, Lkwa;->B:Z

    :cond_3a
    invoke-virtual {p0}, Lcom/google/android/libraries/lens/lenslite/api/LinkConfig;->linkEvalConfigMetadata()Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_3f

    :try_start_0
    invoke-static {}, Lnwh;->a()Lnwh;

    move-result-object v3

    sget-object v4, Lkwo;->a:Lkwo;

    invoke-static {v1}, Lnvy;->J(Ljava/nio/ByteBuffer;)Lnvy;

    move-result-object v1

    invoke-virtual {v4}, Lnws;->P()Lnws;

    move-result-object v4
    :try_end_0
    .catch Lnxd; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    sget-object v5, Lnyh;->a:Lnyh;

    invoke-virtual {v5, v4}, Lnyh;->b(Ljava/lang/Object;)Lnyo;

    move-result-object v5

    invoke-static {v1}, Lnvz;->p(Lnvy;)Lnvz;

    move-result-object v1

    invoke-interface {v5, v4, v1, v3}, Lnyo;->h(Ljava/lang/Object;Lnyk;Lnwh;)V

    invoke-interface {v5, v4}, Lnyo;->f(Ljava/lang/Object;)V
    :try_end_1
    .catch Lnxd; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lnyz; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-static {v4}, Lnws;->ae(Lnws;)V

    invoke-static {v4}, Lnws;->ae(Lnws;)V

    check-cast v4, Lkwo;

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_3b

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_3b
    iget-object v1, v0, Lnwn;->b:Lnws;

    check-cast v1, Lkwa;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v4, v1, Lkwa;->C:Lkwo;

    iget v3, v1, Lkwa;->a:I

    const/high16 v4, 0x2000000

    or-int/2addr v3, v4

    iput v3, v1, Lkwa;->a:I

    goto :goto_3

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    instance-of v3, v3, Lnxd;

    if-eqz v3, :cond_3c

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Lnxd;

    throw v1

    :cond_3c
    throw v1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    instance-of v3, v3, Lnxd;

    if-eqz v3, :cond_3d

    invoke-virtual {v1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Lnxd;

    throw v1

    :cond_3d
    new-instance v3, Lnxd;

    invoke-direct {v3, v1}, Lnxd;-><init>(Ljava/io/IOException;)V

    throw v3

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Lnyz;->a()Lnxd;

    move-result-object v1

    throw v1

    :catch_3
    move-exception v1

    iget-boolean v3, v1, Lnxd;->a:Z

    if-eqz v3, :cond_3e

    new-instance v3, Lnxd;

    invoke-direct {v3, v1}, Lnxd;-><init>(Ljava/io/IOException;)V

    move-object v1, v3

    :cond_3e
    throw v1
    :try_end_2
    .catch Lnxd; {:try_start_2 .. :try_end_2} :catch_4

    :catch_4
    move-exception v1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x6

    const-string v4, "LinkConfig"

    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3f

    const-string v3, "Unable to parse LinkEvalConfigMetadata."

    invoke-static {v3, v1}, Llho;->r(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3f
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/libraries/lens/lenslite/api/LinkConfig;->linkModelDownloadEnabled()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_41

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v3, v0, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_40

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_40
    iget-object v3, v0, Lnwn;->b:Lnws;

    check-cast v3, Lkwa;

    iget v4, v3, Lkwa;->a:I

    const/high16 v5, 0x4000000

    or-int/2addr v4, v5

    iput v4, v3, Lkwa;->a:I

    iput-boolean v1, v3, Lkwa;->D:Z

    :cond_41
    invoke-virtual {p0}, Lcom/google/android/libraries/lens/lenslite/api/LinkConfig;->serializedPipelineConfig()Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_43

    invoke-static {v1}, Lnvt;->t(Ljava/nio/ByteBuffer;)Lnvt;

    move-result-object v1

    iget-object v3, v0, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_42

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_42
    iget-object v3, v0, Lnwn;->b:Lnws;

    check-cast v3, Lkwa;

    iget v4, v3, Lkwa;->a:I

    const/high16 v5, 0x8000000

    or-int/2addr v4, v5

    iput v4, v3, Lkwa;->a:I

    iput-object v1, v3, Lkwa;->E:Lnvt;

    :cond_43
    invoke-virtual {p0}, Lcom/google/android/libraries/lens/lenslite/api/LinkConfig;->stopPipelineOnPause()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_45

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v3, v0, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_44

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_44
    iget-object v3, v0, Lnwn;->b:Lnws;

    check-cast v3, Lkwa;

    iget v4, v3, Lkwa;->b:I

    or-int/2addr v2, v4

    iput v2, v3, Lkwa;->b:I

    iput-boolean v1, v3, Lkwa;->J:Z

    :cond_45
    invoke-virtual {p0}, Lcom/google/android/libraries/lens/lenslite/api/LinkConfig;->lightweightSuggestionsModeEnabled()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_47

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, v0, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_46

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_46
    iget-object v2, v0, Lnwn;->b:Lnws;

    check-cast v2, Lkwa;

    iget v3, v2, Lkwa;->a:I

    const/high16 v4, 0x10000000

    or-int/2addr v3, v4

    iput v3, v2, Lkwa;->a:I

    iput-boolean v1, v2, Lkwa;->F:Z

    :cond_47
    invoke-virtual {p0}, Lcom/google/android/libraries/lens/lenslite/api/LinkConfig;->mobileRaidParams()Lkwe;

    move-result-object v1

    if-eqz v1, :cond_49

    iget-object v2, v0, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_48

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_48
    iget-object v2, v0, Lnwn;->b:Lnws;

    check-cast v2, Lkwa;

    iput-object v1, v2, Lkwa;->G:Lkwe;

    iget v1, v2, Lkwa;->a:I

    const/high16 v3, 0x20000000

    or-int/2addr v1, v3

    iput v1, v2, Lkwa;->a:I

    :cond_49
    invoke-virtual {p0}, Lcom/google/android/libraries/lens/lenslite/api/LinkConfig;->embedderModeEnabled()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_4b

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, v0, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_4a

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_4a
    iget-object v2, v0, Lnwn;->b:Lnws;

    check-cast v2, Lkwa;

    iget v3, v2, Lkwa;->a:I

    const/high16 v4, 0x40000000    # 2.0f

    or-int/2addr v3, v4

    iput v3, v2, Lkwa;->a:I

    iput-boolean v1, v2, Lkwa;->H:Z

    :cond_4b
    invoke-virtual {p0}, Lcom/google/android/libraries/lens/lenslite/api/LinkConfig;->waitForVkpStartEnabled()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_4d

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, v0, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_4c

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_4c
    iget-object v2, v0, Lnwn;->b:Lnws;

    check-cast v2, Lkwa;

    iget v3, v2, Lkwa;->a:I

    const/high16 v4, -0x80000000

    or-int/2addr v3, v4

    iput v3, v2, Lkwa;->a:I

    iput-boolean v1, v2, Lkwa;->I:Z

    :cond_4d
    invoke-virtual {v0}, Lnwn;->i()Lnws;

    move-result-object v0

    check-cast v0, Lkwa;

    invoke-virtual {v0}, Lnve;->J()[B

    move-result-object v0

    return-object v0
.end method

.method public abstract triggerMode()Ljava/lang/Integer;
.end method

.method public abstract trivialFeatureEnabledBits()Ljava/lang/Long;
.end method

.method public abstract waitForVkpStartEnabled()Ljava/lang/Boolean;
.end method

.method public abstract wifiConnectionEnabled()Ljava/lang/Boolean;
.end method

.method public abstract wifiScanEnabled()Ljava/lang/Boolean;
.end method
