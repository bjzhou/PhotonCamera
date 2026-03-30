.class public final Lfqs;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lfjr;


# static fields
.field public static final a:Lfjo;

.field public static final b:Lfjo;


# instance fields
.field private final c:Lfqq;

.field private final d:Lfmf;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    goto/32 :goto_19

    nop

    nop

    :goto_0
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_7

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

    :goto_3
    const/4 v0, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_4
    const-wide/16 v0, -0x1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x1f

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {v1, v2, v3}, Lfqn;-><init>(I[B)V

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_9
    new-instance v1, Lfqn;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {v1, v2}, Lfqn;-><init>(I)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_c
    new-instance v2, Lfjo;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_10
    invoke-direct {v2, v3, v0, v1}, Lfjo;-><init>(Ljava/lang/String;Ljava/lang/Object;Lfjn;)V

    goto/32 :goto_1a

    nop

    nop

    :goto_11
    const-string v3, "com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.TargetFrame"

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_12
    const-string v3, "com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.FrameOption"

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_13
    new-instance v2, Lfjo;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_14
    sput-object v2, Lfqs;->a:Lfjo;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_15
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_16
    const-string v1, "TD1A.220804.031"

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_18
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_19
    const v0, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1a
    sput-object v2, Lfqs;->b:Lfjo;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_1b
    const-string v0, "TP1A"

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1c
    new-instance v1, Lfqn;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_1d
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    return-void

    nop

    nop

    :goto_1f
    goto/32 :goto_17

    nop

    nop

    :goto_20
    invoke-direct {v2, v3, v0, v1}, Lfjo;-><init>(Ljava/lang/String;Ljava/lang/Object;Lfjn;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop
.end method

.method public constructor <init>(Lfmf;Lfqq;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    iput-object p2, p0, Lfqs;->c:Lfqq;

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

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lfqs;->d:Lfmf;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/Object;IILfjp;)Lflx;
    .locals 17

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_1
    new-instance v14, Landroid/media/MediaMetadataRetriever;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v12, v13, v1}, Lmf;->e(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/16 v1, 0x12

    nop

    :try_start_0
    invoke-virtual {v14, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    nop

    const/16 v6, 0x13

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v14, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    nop

    nop

    nop

    nop

    const/16 v7, 0x18

    nop

    invoke-virtual {v14, v7}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v7

    nop

    nop

    nop

    nop

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    nop

    nop

    const/16 v8, 0x5a

    nop

    if-eq v7, v8, :cond_0

    nop

    nop

    nop

    const/16 v8, 0x10e

    nop

    nop

    nop

    if-eq v7, v8, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto :goto_5

    nop

    nop

    :cond_0
    move/from16 v16, v6

    nop

    move v6, v1

    nop

    nop

    nop

    nop

    nop

    move/from16 v1, v16

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v4, v1, v6, v2, v3}, Lfpu;->a(IIII)F

    move-result v2

    nop

    nop

    nop

    nop

    nop

    int-to-float v1, v1

    nop

    nop

    mul-float/2addr v1, v2

    nop

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v10

    nop

    nop

    nop

    nop

    nop

    int-to-float v1, v6

    nop

    nop

    nop

    nop

    nop

    mul-float/2addr v2, v1

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v11

    nop

    nop

    move-object v6, v14

    nop

    nop

    nop

    nop

    nop

    move-wide v7, v12

    nop

    nop

    move v9, v5

    nop

    nop

    nop

    nop

    invoke-virtual/range {v6 .. v11}, Landroid/media/MediaMetadataRetriever;->getScaledFrameAtTime(JIII)Landroid/graphics/Bitmap;

    move-result-object v15

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    :goto_6
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-ltz v5, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_9
    if-eqz v8, :cond_3

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-eqz v15, :cond_4

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_4
    :try_start_1
    invoke-virtual {v14, v12, v13, v5}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object v15

    nop

    nop

    nop

    :goto_b
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    nop

    nop

    nop

    const-string v2, "Pixel"

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v4, v6}, Lfjp;->b(Lfjo;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-nez v6, :cond_5

    nop

    nop

    goto/32 :goto_3b

    nop

    :cond_5
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-eqz v5, :cond_6

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :cond_6
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const-string v1, "Requested frame must be non-negative, or DEFAULT_FRAME, given: "

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_10
    move/from16 v3, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_11
    if-ne v4, v1, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    move-object/from16 v1, p1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    sget-object v6, Lfpu;->f:Lfjo;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_14
    if-eqz v5, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_43

    nop

    nop

    nop

    :goto_15
    add-int/lit8 v7, v7, 0x1

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_16
    check-cast v5, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_17
    check-cast v5, Ljava/lang/Long;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_18
    cmp-long v5, v12, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v4, v5}, Lfjp;->b(Lfjo;)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_1a
    sget-object v5, Lfqs;->a:Lfjo;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const-wide/16 v5, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v4, v5}, Lfjp;->b(Lfjo;)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    move/from16 v2, p2

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    move-object/from16 v0, p0

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

    :goto_1f
    return-object v0

    nop

    nop

    nop

    :goto_20
    :try_start_2
    new-instance v0, Lfqr;

    nop

    nop

    nop

    invoke-direct {v0}, Lfqr;-><init>()V

    throw v0

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-direct {v14}, Landroid/media/MediaMetadataRetriever;-><init>()V

    :try_start_3
    iget-object v6, v0, Lfqs;->c:Lfqq;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v6, v14, v1}, Lfqq;->b(Landroid/media/MediaMetadataRetriever;Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    nop

    nop

    nop

    nop

    nop

    sget-object v6, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    nop

    nop

    nop

    const/4 v15, 0x0

    nop

    nop

    nop

    if-eqz v6, :cond_c

    nop

    nop

    sget-object v6, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    nop

    nop

    nop

    nop

    const-string v7, ".+_cheets|cheets_.+"

    nop

    nop

    invoke-virtual {v6, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    nop

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const v1, 0xe

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_24
    const/16 v6, 0xc

    nop

    nop

    nop

    nop

    :try_start_4
    invoke-virtual {v14, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    nop

    const-string v7, "video/webm"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    nop

    nop

    if-nez v6, :cond_9

    nop

    nop

    nop

    goto/16 :goto_3b

    nop

    :cond_9
    new-instance v6, Landroid/media/MediaExtractor;

    nop

    nop

    nop

    invoke-direct {v6}, Landroid/media/MediaExtractor;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    iget-object v7, v0, Lfqs;->c:Lfqq;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v7, v6, v1}, Lfqq;->a(Landroid/media/MediaExtractor;Ljava/lang/Object;)V

    invoke-virtual {v6}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v1

    nop

    nop

    const/4 v7, 0x0

    nop

    :goto_25
    if-ge v7, v1, :cond_b

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6, v7}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v8

    nop

    nop

    nop

    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    sget-object v9, Lcom/google/android/apps/camera/jni/gyro/xfsr/FACWQLkhP;->XhQnKpL:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v8, v9}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    nop

    const-string v9, "video/x-vnd.on2.vp8"

    nop

    nop

    nop

    nop

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_26
    if-eqz v4, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :cond_a
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_27
    check-cast v4, Lfpu;

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_28
    const v0, 0x14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_2e

    nop

    :goto_2a
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    const-wide/16 v5, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_2c
    invoke-virtual {v14}, Landroid/media/MediaMetadataRetriever;->release()V

    goto/32 :goto_2d

    nop

    nop

    :goto_2d
    throw v0

    nop

    :goto_2e
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2f
    move-object/from16 v4, p4

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_30
    sget-object v5, Lfqs;->b:Lfjo;

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_31
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_32
    invoke-virtual {v14}, Landroid/media/MediaMetadataRetriever;->release()V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget-object v0, v0, Lfqs;->d:Lfmf;

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_34
    const/4 v5, 0x2

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_35
    invoke-static {v15, v0}, Lfqg;->g(Landroid/graphics/Bitmap;Lfmf;)Lfqg;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    sget-object v4, Lfpu;->e:Lfpu;

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_38
    goto/16 :goto_25

    nop

    nop

    :goto_39
    :try_start_6
    invoke-virtual {v6}, Landroid/media/MediaExtractor;->release()V

    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    sget-object v1, Lcom/google/android/apps/camera/backup/iI/oRSsAde;->kcJeGzOX:Ljava/lang/String;

    nop

    nop

    nop

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    nop

    :cond_b
    :goto_3a
    invoke-virtual {v6}, Landroid/media/MediaExtractor;->release()V

    goto :goto_3b

    nop

    nop

    nop

    :catchall_2
    move-object v6, v15

    nop

    :catchall_3
    if-eqz v6, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto :goto_3a

    nop

    nop

    nop

    nop

    :cond_c
    :goto_3b
    const/high16 v1, -0x80000000

    nop

    nop

    if-eq v2, v1, :cond_1

    nop

    if-eq v3, v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    sget-object v1, Lfpu;->d:Lfpu;

    nop

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    if-nez v15, :cond_d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    cmp-long v5, v12, v5

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

    :goto_3e
    if-lez v0, :cond_e

    nop

    goto/32 :goto_2a

    nop

    nop

    :cond_e
    goto/32 :goto_29

    nop

    :goto_3f
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    nop

    :goto_40
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    throw v0

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_43
    goto :goto_42

    nop

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_21

    nop

    nop

    :goto_45
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b(Ljava/lang/Object;Lfjp;)Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method
