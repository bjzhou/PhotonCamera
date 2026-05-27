.class public Lmdw;
.super Ljava/lang/Object;


# instance fields
.field private final a:J

.field public final b:Lmdu;

.field public c:J

.field private final d:J

.field private final e:J

.field private final f:Llzz;


# direct methods
.method public constructor <init>(Lmdx;)V
    .locals 13

    invoke-static {}, Lnwh;->a()Lnwh;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lnwh;->a:Lnwh;

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v1, p1, Lmdx;->b:I

    const/4 v2, 0x5

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    iget-object v1, p1, Lmdx;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lmdv;

    invoke-direct {v0}, Lmdv;-><init>()V

    iput-object v0, p0, Lmdw;->b:Lmdu;

    goto :goto_0

    :cond_1
    iget v1, p1, Lmdx;->b:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    iget-object v1, p1, Lmdx;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/google/android/libraries/vision/visionkit/pipeline/NativePipelineImpl;

    invoke-direct {v1, p0, p0, v0}, Lcom/google/android/libraries/vision/visionkit/pipeline/NativePipelineImpl;-><init>(Lmdw;Lmdw;Lnwh;)V

    iput-object v1, p0, Lmdw;->b:Lmdu;

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/google/android/libraries/vision/visionkit/pipeline/NativePipelineImpl;

    invoke-direct {v1, p0, p0, v0, v3}, Lcom/google/android/libraries/vision/visionkit/pipeline/NativePipelineImpl;-><init>(Lmdw;Lmdw;Lnwh;[B)V

    iput-object v1, p0, Lmdw;->b:Lmdu;

    :goto_0
    iget v0, p1, Lmdx;->a:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_3

    new-instance v0, Llzz;

    iget v1, p1, Lmdx;->f:I

    invoke-direct {v0, v3}, Llzz;-><init>([B)V

    iput-object v0, p0, Lmdw;->f:Llzz;

    goto :goto_1

    :cond_3
    new-instance v0, Llzz;

    invoke-direct {v0, v3}, Llzz;-><init>([B)V

    iput-object v0, p0, Lmdw;->f:Llzz;

    :goto_1
    iget-object v0, p0, Lmdw;->b:Lmdu;

    invoke-interface {v0}, Lmdu;->initializeFrameManager()J

    move-result-wide v0

    iput-wide v0, p0, Lmdw;->a:J

    iget-object v2, p0, Lmdw;->b:Lmdu;

    invoke-interface {v2, v0, v1}, Lmdu;->initializeFrameBufferReleaseCallback(J)J

    move-result-wide v5

    iput-wide v5, p0, Lmdw;->d:J

    iget-object v0, p0, Lmdw;->b:Lmdu;

    invoke-interface {v0}, Lmdu;->initializeResultsCallback()J

    move-result-wide v7

    iput-wide v7, p0, Lmdw;->e:J

    iget-object v3, p0, Lmdw;->b:Lmdu;

    invoke-virtual {p1}, Lnve;->J()[B

    move-result-object v4

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    invoke-interface/range {v3 .. v12}, Lmdu;->initialize([BJJJJ)J

    move-result-wide v0

    iput-wide v0, p0, Lmdw;->c:J

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 1

    iget-object v0, p0, Lmdw;->f:Llzz;

    invoke-virtual {v0, p1, p2}, Llzz;->b(J)V

    return-void
.end method

.method public b(Lmdz;)V
    .locals 3

    sget-object v0, Llug;->a:Llug;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Llug;->e(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Pipeline received results: "

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1, v1}, Llug;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final declared-synchronized c()V
    .locals 14

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lmdw;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-object v4, p0, Lmdw;->b:Lmdu;

    invoke-interface {v4, v0, v1}, Lmdu;->stop(J)Z

    iget-object v5, p0, Lmdw;->b:Lmdu;

    iget-wide v6, p0, Lmdw;->c:J

    iget-wide v8, p0, Lmdw;->a:J

    iget-wide v10, p0, Lmdw;->d:J

    iget-wide v12, p0, Lmdw;->e:J

    invoke-interface/range {v5 .. v13}, Lmdu;->close(JJJJ)V

    iput-wide v2, p0, Lmdw;->c:J

    iget-object v0, p0, Lmdw;->b:Lmdu;

    invoke-interface {v0}, Lmdu;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
