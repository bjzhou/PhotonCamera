.class public Lcom/google/android/libraries/vision/visionkit/pipeline/NativePipelineImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lmdu;


# instance fields
.field private a:Lnwh;

.field private b:Lmdw;

.field private c:Lmdw;


# direct methods
.method public constructor <init>(Lmdw;Lmdw;Lnwh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/NativePipelineImpl;->b:Lmdw;

    iput-object p2, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/NativePipelineImpl;->c:Lmdw;

    iput-object p3, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/NativePipelineImpl;->a:Lnwh;

    return-void
.end method

.method public constructor <init>(Lmdw;Lmdw;Lnwh;[B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/libraries/vision/visionkit/pipeline/NativePipelineImpl;-><init>(Lmdw;Lmdw;Lnwh;)V

    const-string p1, "camerapipeline"

    invoke-static {p1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/NativePipelineImpl;->a:Lnwh;

    iput-object v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/NativePipelineImpl;->b:Lmdw;

    iput-object v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/NativePipelineImpl;->c:Lmdw;

    return-void
.end method

.method public native close(JJJJ)V
.end method

.method public native disableSubpipeline(JLjava/lang/String;)Z
.end method

.method public native enableSubpipeline(JLjava/lang/String;)Z
.end method

.method public native initialize([BJJJJ)J
.end method

.method public native initializeFrameBufferReleaseCallback(J)J
.end method

.method public native initializeFrameManager()J
.end method

.method public native initializeResultsCallback()J
.end method

.method public onReleaseAtTimestampUs(J)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/NativePipelineImpl;->b:Lmdw;

    invoke-virtual {v0, p1, p2}, Lmdw;->a(J)V

    return-void
.end method

.method public onResult([B)V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/NativePipelineImpl;->a:Lnwh;

    sget-object v2, Lmdz;->f:Lmdz;

    array-length v3, p1

    invoke-static {v2, p1, v0, v3, v1}, Lnws;->Q(Lnws;[BIILnwh;)Lnws;

    move-result-object p1

    invoke-static {p1}, Lnws;->ae(Lnws;)V

    check-cast p1, Lmdz;

    iget-object v1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/NativePipelineImpl;->c:Lmdw;

    invoke-virtual {v1, p1}, Lmdw;->b(Lmdz;)V
    :try_end_0
    .catch Lnxd; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    sget-object v1, Llug;->a:Llug;

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Llug;->e(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Llug;->b:Ljava/lang/String;

    const-string v3, "Error in result from JNI layer"

    invoke-virtual {v1, v3, v0}, Llug;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public native receiveYuvFrame(JJLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIIII)Z
.end method

.method public native resetSchedulingOptimizerOptions(J[B)V
.end method

.method public native start(J)V
.end method

.method public native stop(J)Z
.end method

.method public native waitUntilIdle(J)V
.end method
