.class public Lcom/google/mediapipe/framework/Packet;
.super Ljava/lang/Object;


# instance fields
.field public a:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/mediapipe/framework/Packet;->a:J

    return-void
.end method

.method public static create(J)Lcom/google/mediapipe/framework/Packet;
    .locals 1

    new-instance v0, Lcom/google/mediapipe/framework/Packet;

    invoke-direct {v0, p0, p1}, Lcom/google/mediapipe/framework/Packet;-><init>(J)V

    return-object v0
.end method

.method private native nativeGetTimestamp(J)J
.end method

.method private native nativeReleasePacket(J)V
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, Lcom/google/mediapipe/framework/Packet;->a:J

    invoke-direct {p0, v0, v1}, Lcom/google/mediapipe/framework/Packet;->nativeGetTimestamp(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNativeHandle()J
    .locals 2

    iget-wide v0, p0, Lcom/google/mediapipe/framework/Packet;->a:J

    return-wide v0
.end method

.method public native nativeCopyPacket(J)J
.end method

.method public release()V
    .locals 5

    iget-wide v0, p0, Lcom/google/mediapipe/framework/Packet;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/google/mediapipe/framework/Packet;->nativeReleasePacket(J)V

    iput-wide v2, p0, Lcom/google/mediapipe/framework/Packet;->a:J

    :cond_0
    return-void
.end method
