.class public Lcom/google/ar/core/RecordingConfig;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field nativeHandle:J

.field private final nativeSymbolTableHandle:J

.field private final session:Lcom/google/ar/core/Session;


# direct methods
.method protected constructor <init>()V
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_2
    iput-wide v0, p0, Lcom/google/ar/core/RecordingConfig;->nativeSymbolTableHandle:J

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

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_4
    iput-object v0, p0, Lcom/google/ar/core/RecordingConfig;->session:Lcom/google/ar/core/Session;

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

    :goto_5
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_6
    const v1, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const-wide/16 v0, 0x0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0xc

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_c
    iput-wide v0, p0, Lcom/google/ar/core/RecordingConfig;->nativeHandle:J

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_8

    nop

    nop

    :goto_e
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop
.end method

.method public constructor <init>(Lcom/google/ar/core/Session;)V
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lcom/google/ar/core/RecordingConfig;->session:Lcom/google/ar/core/Session;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-wide v0, p1, Lcom/google/ar/core/Session;->nativeSymbolTableHandle:J

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x6

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

    nop

    nop

    :goto_5
    iput-wide v0, p0, Lcom/google/ar/core/RecordingConfig;->nativeSymbolTableHandle:J

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_8
    const v0, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_a
    iget-wide v0, p1, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1

    nop

    :goto_c
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput-wide v0, p0, Lcom/google/ar/core/RecordingConfig;->nativeHandle:J

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

    :goto_e
    goto/32 :goto_c

    nop

    :goto_f
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {v0, v1}, Lcom/google/ar/core/RecordingConfig;->nativeCreateRecordingConfig(J)J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_d

    nop

    nop
.end method

.method private native nativeAddTrack(JJJ)V
.end method

.method private static native nativeCreateRecordingConfig(J)J
.end method

.method private static native nativeDestroyRecordingConfig(JJ)V
.end method

.method private native nativeGetAutoStopOnPause(JJ)Z
.end method

.method private native nativeGetMp4DatasetFilePath(JJ)Ljava/lang/String;
.end method

.method private native nativeGetMp4DatasetUri(JJ)Ljava/lang/String;
.end method

.method private native nativeGetRecordingRotation(JJ)I
.end method

.method private native nativeSetAutoStopOnPause(JJZ)V
.end method

.method private native nativeSetMp4DatasetFilePath(JJLjava/lang/String;)V
.end method

.method private native nativeSetMp4DatasetUri(JJLjava/lang/String;)V
.end method

.method private native nativeSetRecordingRotation(JJI)V
.end method


# virtual methods
.method public addTrack(Lcom/google/ar/core/Track;)Lcom/google/ar/core/RecordingConfig;
    .locals 8

    goto/32 :goto_7

    nop

    nop

    :goto_0
    return-object p0

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
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lcom/google/ar/core/RecordingConfig;->session:Lcom/google/ar/core/Session;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct/range {v1 .. v7}, Lcom/google/ar/core/RecordingConfig;->nativeAddTrack(JJJ)V

    goto/32 :goto_0

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x1a

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-wide v4, p0, Lcom/google/ar/core/RecordingConfig;->nativeHandle:J

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_a
    iget-wide v6, p1, Lcom/google/ar/core/Track;->nativeHandle:J

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_b
    const v1, 0x1d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-wide v2, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_d
    move-object v1, p0

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_f
    add-int v0, v0, v1

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

    nop

    nop
.end method

.method protected finalize()V
    .locals 6

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    iput-wide v2, p0, Lcom/google/ar/core/RecordingConfig;->nativeHandle:J

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    cmp-long v4, v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x8

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_11

    nop

    nop

    :goto_7
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    goto/32 :goto_a

    nop

    nop

    :goto_8
    iget-wide v4, p0, Lcom/google/ar/core/RecordingConfig;->nativeSymbolTableHandle:J

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_9
    invoke-static {v4, v5, v0, v1}, Lcom/google/ar/core/RecordingConfig;->nativeDestroyRecordingConfig(JJ)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-wide v0, p0, Lcom/google/ar/core/RecordingConfig;->nativeHandle:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_d
    const v1, 0x15

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_f
    const-wide/16 v2, 0x0

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_10
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_12
    if-nez v4, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop
.end method

.method public getAutoStopOnPause()Z
    .locals 4

    goto/32 :goto_3

    nop

    nop

    :goto_0
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/RecordingConfig;->nativeGetAutoStopOnPause(JJ)Z

    move-result p0

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

    :goto_2
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_b

    nop

    :goto_3
    const v0, 0x1d

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    const v1, 0x1e

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lcom/google/ar/core/RecordingConfig;->session:Lcom/google/ar/core/Session;

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

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_7
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_8
    return p0

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_0

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_b
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-wide v2, p0, Lcom/google/ar/core/RecordingConfig;->nativeHandle:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public getMp4DatasetFilePath()Ljava/lang/String;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lcom/google/ar/core/RecordingConfig;->session:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_7
    iget-wide v2, p0, Lcom/google/ar/core/RecordingConfig;->nativeHandle:J

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x15

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_4

    nop

    :goto_a
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/RecordingConfig;->nativeGetMp4DatasetFilePath(JJ)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_a

    nop

    nop
.end method

.method public getMp4DatasetUri()Landroid/net/Uri;
    .locals 4

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    :goto_1
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0xf

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_4
    iget-object v0, p0, Lcom/google/ar/core/RecordingConfig;->session:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 p0, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_8
    if-eqz p0, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/RecordingConfig;->nativeGetMp4DatasetUri(JJ)Ljava/lang/String;

    move-result-object p0

    nop

    nop

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

    :goto_a
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_4

    nop

    nop

    :goto_c
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-object p0

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_10
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_1
    goto/32 :goto_a

    nop

    :goto_11
    const v1, 0x15

    nop

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

    :goto_12
    iget-wide v2, p0, Lcom/google/ar/core/RecordingConfig;->nativeHandle:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop
.end method

.method public getRecordingRotation()I
    .locals 4

    goto/32 :goto_3

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_3
    const v0, 0xd

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/RecordingConfig;->nativeGetRecordingRotation(JJ)I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_6

    nop

    :goto_a
    iget-wide v2, p0, Lcom/google/ar/core/RecordingConfig;->nativeHandle:J

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

    :goto_b
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lcom/google/ar/core/RecordingConfig;->session:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop
.end method

.method public setAutoStopOnPause(Z)Lcom/google/ar/core/RecordingConfig;
    .locals 7

    goto/32 :goto_e

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_2
    const v1, 0x7

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    move-object v1, p0

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

    :goto_4
    move v6, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct/range {v1 .. v6}, Lcom/google/ar/core/RecordingConfig;->nativeSetAutoStopOnPause(JJZ)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-wide v2, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

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

    :goto_7
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_f

    nop

    nop

    :goto_9
    iget-wide v4, p0, Lcom/google/ar/core/RecordingConfig;->nativeHandle:J

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_b
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_d

    nop

    nop

    :goto_d
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x1d

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_f
    iget-object v0, p0, Lcom/google/ar/core/RecordingConfig;->session:Lcom/google/ar/core/Session;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method

.method public setMp4DatasetFilePath(Ljava/lang/String;)Lcom/google/ar/core/RecordingConfig;
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    move-object v6, p1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_5
    const v0, 0x1a

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-wide v4, p0, Lcom/google/ar/core/RecordingConfig;->nativeHandle:J

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct/range {v1 .. v6}, Lcom/google/ar/core/RecordingConfig;->nativeSetMp4DatasetFilePath(JJLjava/lang/String;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Lcom/google/ar/core/RecordingConfig;->session:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_9
    move-object v1, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_e

    nop

    :goto_b
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_d
    return-object p0

    nop

    :goto_e
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-wide v2, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public setMp4DatasetUri(Landroid/net/Uri;)Lcom/google/ar/core/RecordingConfig;
    .locals 7

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x15

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    const v1, 0x2

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    move-object v1, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_6
    invoke-direct/range {v1 .. v6}, Lcom/google/ar/core/RecordingConfig;->nativeSetMp4DatasetUri(JJLjava/lang/String;)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_7
    iget-wide v2, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    iget-wide v4, p0, Lcom/google/ar/core/RecordingConfig;->nativeHandle:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_e

    nop

    :goto_b
    return-object p0

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_c

    nop

    :goto_e
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_f
    iget-object v0, p0, Lcom/google/ar/core/RecordingConfig;->session:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop
.end method

.method public setRecordingRotation(I)Lcom/google/ar/core/RecordingConfig;
    .locals 7

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move v6, p1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-wide v2, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_b

    nop

    nop

    :goto_4
    move-object v1, p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    :goto_6
    goto/32 :goto_c

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_8
    add-int v0, v0, v1

    nop

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

    :goto_9
    iget-wide v4, p0, Lcom/google/ar/core/RecordingConfig;->nativeHandle:J

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Lcom/google/ar/core/RecordingConfig;->session:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_d
    invoke-direct/range {v1 .. v6}, Lcom/google/ar/core/RecordingConfig;->nativeSetRecordingRotation(JJI)V

    goto/32 :goto_2

    nop

    nop

    :goto_e
    const v0, 0x17

    nop

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

    :goto_f
    const v1, 0x6

    nop

    nop

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
.end method
