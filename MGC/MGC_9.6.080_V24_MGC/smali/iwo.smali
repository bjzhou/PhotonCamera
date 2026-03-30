.class public Liwo;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lsdb;


# instance fields
.field public final b:Landroid/view/Surface;

.field public final c:Landroid/media/MediaExtractor;

.field public d:Landroid/media/MediaFormat;

.field public e:J

.field public f:Z

.field public g:[Ljava/nio/ByteBuffer;

.field public h:Landroid/media/MediaCodec;

.field private final i:Landroid/media/MediaCodec$BufferInfo;

.field private j:J

.field private k:J

.field private l:Z

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v0, "iwo"

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
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sput-object v0, Liwo;->a:Lsdb;

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
.end method

.method public constructor <init>(Landroid/view/Surface;)V
    .locals 5

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Liwo;->c:Landroid/media/MediaExtractor;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2
    const-wide/16 v1, 0x0

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
    iput-wide v1, p0, Liwo;->k:J

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_4
    iput-wide v1, p0, Liwo;->e:J

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_5
    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_6
    iput-object v0, p0, Liwo;->h:Landroid/media/MediaCodec;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_7
    const v1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_8
    iput-object v0, p0, Liwo;->d:Landroid/media/MediaFormat;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_b
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

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

    nop

    :goto_c
    iput-boolean v1, p0, Liwo;->l:Z

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

    nop

    :goto_d
    iput-object v0, p0, Liwo;->i:Landroid/media/MediaCodec$BufferInfo;

    nop

    nop

    goto/32 :goto_18

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

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_f
    goto/32 :goto_a

    nop

    nop

    :goto_10
    goto/32 :goto_15

    nop

    nop

    :goto_11
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_12
    iput-boolean v1, p0, Liwo;->m:Z

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_13
    invoke-direct {p1}, Landroid/media/MediaExtractor;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iput-boolean v1, p0, Liwo;->f:Z

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_10

    nop

    :goto_17
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_18
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_19
    iput-object v0, p0, Liwo;->g:[Ljava/nio/ByteBuffer;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iput-wide v3, p0, Liwo;->j:J

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1b
    const v0, 0xb

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iput-object p1, p0, Liwo;->b:Landroid/view/Surface;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1d
    new-instance p1, Landroid/media/MediaExtractor;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const-wide/16 v3, -0x1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop
.end method

.method public static b(Landroid/media/MediaExtractor;Ljava/lang/String;)Landroid/media/MediaFormat;
    .locals 5

    goto/32 :goto_20

    nop

    nop

    :goto_0
    sget-object p0, Liwo;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_d

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    :catch_0
    goto/32 :goto_0

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lt v2, v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    nop

    :goto_6
    check-cast p0, Lscz;

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_7
    invoke-interface {p0, v1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_8
    invoke-interface {p0, v1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/16 v1, 0x7c9

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_a
    if-nez v3, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v2, -0x1

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_29

    nop

    nop

    :goto_e
    add-int/lit8 v2, v2, 0x1

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_11
    invoke-interface {p0, v1, p1}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_13
    invoke-interface {p0, v1, p1}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p0, v2}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v3

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_16
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_b

    nop

    nop

    :goto_17
    invoke-virtual {p0, v2}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const-string v1, "No video track found in %s"

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_19
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_f

    nop

    :goto_1a
    invoke-virtual {v3, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p0, v2}, Landroid/media/MediaExtractor;->selectTrack(I)V

    goto/32 :goto_17

    nop

    nop

    :goto_1c
    const v1, 0x1b

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_1d
    const/16 v1, 0x7c8

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1e
    return-object v0

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const v0, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_21
    sget-object p0, Liwo;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_22
    const-string v4, "video/"

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const-string v1, "Could not open video file %s"

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_24
    return-object v0

    nop

    nop

    :goto_25
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_26
    const-string v4, "mime"

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_27
    const/4 v2, 0x0

    nop

    nop

    :goto_28
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_29
    if-ltz v2, :cond_3

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    :cond_3
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p0}, Lscs;->b()Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {p0}, Lscs;->b()Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2c
    check-cast p0, Lscz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_2d
    goto :goto_28

    nop

    nop

    :goto_2e
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_10

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized a()F
    .locals 4

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_0
    const-wide/16 v2, 0x0

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    :goto_2
    throw v0

    nop

    nop

    :goto_3
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_4
    const/high16 p0, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    return p0

    nop

    nop

    :goto_6
    :try_start_0
    iget-wide v2, p0, Liwo;->k:J

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    monitor-exit p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_8
    monitor-enter p0

    nop

    nop

    nop

    :try_start_1
    iget-wide v0, p0, Liwo;->e:J

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_9
    long-to-float v0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-eqz v2, :cond_1

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

    :cond_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x10

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_c
    long-to-float v2, v2

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x5

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_f
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_10
    return v2

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :try_start_2
    monitor-exit p0

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_11
    cmp-long v2, v0, v2

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

    nop

    :goto_12
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_8

    nop

    nop

    :goto_14
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

    nop

    nop

    :goto_15
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_16
    div-float/2addr v2, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop
.end method

.method public final declared-synchronized c()Z
    .locals 13

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    :goto_1
    :try_start_0
    iget-wide v0, p0, Liwo;->k:J

    nop

    nop

    nop

    nop

    nop

    const-wide/16 v3, 0x1

    nop

    nop

    add-long/2addr v0, v3

    nop

    nop

    nop

    nop

    nop

    iget-wide v3, p0, Liwo;->e:J

    nop

    nop

    nop

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    nop

    nop

    nop

    iput-wide v0, p0, Liwo;->j:J

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x19

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

    :goto_3
    rem-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_17

    nop

    :cond_0
    goto/32 :goto_16

    nop

    :goto_5
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_7
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_8
    move v1, v0

    nop

    nop

    :cond_1
    :goto_9
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v0, 0x0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return v2

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_c
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_17

    nop

    :goto_e
    monitor-enter p0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_f
    throw v0

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_d

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_12
    if-eqz v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_2
    :try_start_2
    iget-boolean v3, p0, Liwo;->m:Z

    nop

    nop

    nop

    if-nez v3, :cond_9

    nop

    nop

    nop

    nop

    iget-boolean v3, p0, Liwo;->l:Z

    nop

    const-wide/16 v4, 0x3e8

    nop

    nop

    if-eqz v3, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto :goto_13

    nop

    nop

    nop

    :cond_3
    iget-object v3, p0, Liwo;->h:Landroid/media/MediaCodec;

    nop

    nop

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v7

    nop

    nop

    nop

    if-ltz v7, :cond_5

    nop

    iget-object v3, p0, Liwo;->g:[Ljava/nio/ByteBuffer;

    nop

    nop

    nop

    nop

    aget-object v3, v3, v7

    nop

    nop

    nop

    nop

    nop

    iget-object v6, p0, Liwo;->c:Landroid/media/MediaExtractor;

    nop

    nop

    nop

    invoke-virtual {v6, v3, v0}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v9

    nop

    if-gez v9, :cond_4

    nop

    nop

    nop

    iget-object v6, p0, Liwo;->h:Landroid/media/MediaCodec;

    nop

    nop

    nop

    nop

    const-wide/16 v10, 0x0

    nop

    nop

    const/4 v12, 0x4

    nop

    nop

    nop

    const/4 v8, 0x0

    nop

    nop

    const/4 v9, 0x0

    nop

    nop

    nop

    invoke-virtual/range {v6 .. v12}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    iput-boolean v2, p0, Liwo;->l:Z

    nop

    nop

    nop

    nop

    nop

    goto :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_4
    iput-boolean v0, p0, Liwo;->l:Z

    nop

    nop

    nop

    iget-object v3, p0, Liwo;->c:Landroid/media/MediaExtractor;

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v10

    nop

    nop

    nop

    nop

    iget-object v6, p0, Liwo;->h:Landroid/media/MediaCodec;

    nop

    nop

    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    nop

    const/4 v12, 0x0

    nop

    invoke-virtual/range {v6 .. v12}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    iget-object v3, p0, Liwo;->c:Landroid/media/MediaExtractor;

    nop

    nop

    nop

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->advance()Z

    :cond_5
    :goto_13
    iget-object v3, p0, Liwo;->h:Landroid/media/MediaCodec;

    nop

    nop

    nop

    iget-object v6, p0, Liwo;->i:Landroid/media/MediaCodec$BufferInfo;

    nop

    invoke-virtual {v3, v6, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v3

    nop

    if-ltz v3, :cond_1

    nop

    iget-object v4, p0, Liwo;->i:Landroid/media/MediaCodec$BufferInfo;

    nop

    nop

    iget-wide v4, v4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    nop

    nop

    nop

    iput-wide v4, p0, Liwo;->k:J

    nop

    nop

    nop

    nop

    iget-object v4, p0, Liwo;->i:Landroid/media/MediaCodec$BufferInfo;

    nop

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->flags:I

    nop

    nop

    nop

    nop

    nop

    and-int/lit8 v4, v4, 0x4

    nop

    nop

    if-lez v4, :cond_7

    nop

    nop

    iget-object v1, p0, Liwo;->i:Landroid/media/MediaCodec$BufferInfo;

    nop

    nop

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    nop

    nop

    nop

    nop

    if-lez v1, :cond_6

    nop

    nop

    nop

    iget-wide v4, p0, Liwo;->k:J

    nop

    nop

    const-wide/16 v6, 0x0

    nop

    cmp-long v1, v4, v6

    nop

    nop

    nop

    if-lez v1, :cond_6

    nop

    nop

    nop

    iget-wide v6, p0, Liwo;->e:J

    nop

    nop

    cmp-long v1, v4, v6

    nop

    nop

    nop

    if-gez v1, :cond_6

    nop

    nop

    nop

    nop

    nop

    move v1, v2

    nop

    goto :goto_14

    nop

    :cond_6
    move v1, v0

    nop

    nop

    nop

    nop

    :goto_14
    iput-boolean v2, p0, Liwo;->m:Z

    nop

    iget-wide v4, p0, Liwo;->e:J

    nop

    nop

    nop

    nop

    iput-wide v4, p0, Liwo;->k:J

    nop

    nop

    nop

    goto :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_7
    iget-wide v4, p0, Liwo;->k:J

    nop

    nop

    nop

    nop

    iget-wide v6, p0, Liwo;->j:J

    nop

    nop

    nop

    nop

    nop

    cmp-long v4, v4, v6

    nop

    nop

    if-ltz v4, :cond_8

    nop

    nop

    nop

    move v1, v2

    nop

    nop

    nop

    nop

    nop

    :cond_8
    :goto_15
    iget-object v2, p0, Liwo;->h:Landroid/media/MediaCodec;

    nop

    nop

    invoke-virtual {v2, v3, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_10

    nop

    :goto_17
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_18
    goto/16 :goto_9

    nop

    :cond_9
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop
.end method
