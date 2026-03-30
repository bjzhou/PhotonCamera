.class public Lcom/google/ar/core/ArCoreNativeInterop;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method private constructor <init>()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop
.end method

.method public static frameFromNativeHandle(Lcom/google/ar/core/Session;J)Lcom/google/ar/core/Frame;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, p0, p1, p2}, Lcom/google/ar/core/Frame;-><init>(Lcom/google/ar/core/Session;J)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    :goto_2
    new-instance v0, Lcom/google/ar/core/Frame;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static getNativeHandle(Lcom/google/ar/core/Frame;)J
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    iget-wide v0, p0, Lcom/google/ar/core/Frame;->nativeHandle:J

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    return-wide v0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

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

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_8
    const v0, 0x1e

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

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    const v1, 0x1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop
.end method

.method public static getNativeHandle(Lcom/google/ar/core/Session;)J
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_3

    nop

    :goto_2
    goto/32 :goto_a

    nop

    nop

    :goto_3
    goto/32 :goto_4

    nop

    nop

    :goto_4
    iget-wide v0, p0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x19

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_7
    const v1, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0, v0, v1}, Lcom/google/ar/core/Session;->nativeGetSessionNativeHandle(J)J

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_9
    return-wide v0

    nop

    :goto_a
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop
.end method

.method public static getNativeHandle(Lcom/google/ar/core/TrackableBase;)J
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-wide v0

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    :goto_8
    iget-wide v0, p0, Lcom/google/ar/core/TrackableBase;->nativeHandle:J

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static getSymbolTable(Lcom/google/ar/core/Session;)J
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_9

    nop

    :goto_3
    const v0, 0x4

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_5
    return-wide v0

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x17

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_8
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-wide v0, p0, Lcom/google/ar/core/Session;->nativeSymbolTableHandle:J

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method

.method public static releaseOwnershipNativeHandle(Lcom/google/ar/core/Frame;)J
    .locals 4

    goto/32 :goto_a

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_1
    return-wide v0

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    :goto_3
    iput-wide v2, p0, Lcom/google/ar/core/Frame;->nativeHandle:J

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const-wide/16 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    :goto_6
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_8
    const v1, 0x14

    nop

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

    :goto_9
    rem-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-wide v0, p0, Lcom/google/ar/core/Frame;->nativeHandle:J

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop
.end method

.method public static releaseOwnershipNativeHandle(Lcom/google/ar/core/Session;)J
    .locals 7

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_0
    iput-wide v4, p0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-wide v0, p0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_4
    cmp-long v6, v2, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_5
    invoke-virtual {p0, v0, v1}, Lcom/google/ar/core/Session;->nativeReleaseSessionOwnership(J)J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_6
    if-nez v6, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    :goto_7
    const v1, 0xd

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-wide v0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x17

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_11

    nop

    nop

    :goto_c
    invoke-virtual {p0, v2, v3}, Lcom/google/ar/core/Session;->nativeDestroySessionWrapper(J)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const-wide/16 v4, 0x0

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

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_9

    nop

    :goto_11
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-wide v2, p0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static releaseOwnershipNativeHandle(Lcom/google/ar/core/TrackableBase;)J
    .locals 4

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    iput-wide v2, p0, Lcom/google/ar/core/TrackableBase;->nativeHandle:J

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_3
    const v1, 0x1f

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_c

    nop

    nop

    :goto_5
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_7
    iget-wide v0, p0, Lcom/google/ar/core/TrackableBase;->nativeHandle:J

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_8
    const-wide/16 v2, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x15

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_b
    return-wide v0

    nop

    nop

    :goto_c
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop
.end method

.method public static sessionFromNativeHandle(JJ)Lcom/google/ar/core/Session;
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1, p2, p3}, Lcom/google/ar/core/Session;->nativeCreateSessionWrapperFromHandle(JJ)J

    move-result-wide p0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {}, Lcom/google/ar/core/Session;->loadDynamicSymbolsAfterSessionCreate()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v0, Lcom/google/ar/core/Session;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const-string v0, "arcore_sdk_jni"

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {v0, p0, p1}, Lcom/google/ar/core/Session;-><init>(J)V

    goto/32 :goto_2

    nop

    nop

    :goto_6
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public static trackableFromNativeHandle(Ljava/lang/Class;Lcom/google/ar/core/Session;J)Lcom/google/ar/core/Trackable;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1, p2, p3}, Lcom/google/ar/core/Session;->createTrackable(J)Lcom/google/ar/core/Trackable;

    move-result-object p1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    :goto_2
    invoke-virtual {p0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

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

    nop

    :goto_3
    check-cast p0, Lcom/google/ar/core/Trackable;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method
