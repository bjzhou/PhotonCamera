.class public final Lcom/google/mediapipe/framework/GraphGlSyncToken;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/mediapipe/framework/GlSyncToken;


# instance fields
.field private a:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/mediapipe/framework/GraphGlSyncToken;->a:J

    return-void
.end method

.method private static native nativeRelease(J)V
.end method

.method private static native nativeWaitOnCpu(J)V
.end method

.method private static native nativeWaitOnGpu(J)V
.end method


# virtual methods
.method public final nativeToken()J
    .locals 2

    iget-wide v0, p0, Lcom/google/mediapipe/framework/GraphGlSyncToken;->a:J

    return-wide v0
.end method

.method public final release()V
    .locals 5

    iget-wide v0, p0, Lcom/google/mediapipe/framework/GraphGlSyncToken;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {v0, v1}, Lcom/google/mediapipe/framework/GraphGlSyncToken;->nativeRelease(J)V

    iput-wide v2, p0, Lcom/google/mediapipe/framework/GraphGlSyncToken;->a:J

    :cond_0
    return-void
.end method

.method public final waitOnCpu()V
    .locals 5

    iget-wide v0, p0, Lcom/google/mediapipe/framework/GraphGlSyncToken;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {v0, v1}, Lcom/google/mediapipe/framework/GraphGlSyncToken;->nativeWaitOnCpu(J)V

    :cond_0
    return-void
.end method

.method public final waitOnGpu()V
    .locals 5

    iget-wide v0, p0, Lcom/google/mediapipe/framework/GraphGlSyncToken;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {v0, v1}, Lcom/google/mediapipe/framework/GraphGlSyncToken;->nativeWaitOnGpu(J)V

    :cond_0
    return-void
.end method
