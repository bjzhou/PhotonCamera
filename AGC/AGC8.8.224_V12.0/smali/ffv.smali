.class public final Lffv;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lnak;


# instance fields
.field private final b:Lfgj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/microvideo/SafeMp4FixApplier"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lffv;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Lfgj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lffv;->b:Lfgj;

    return-void
.end method


# virtual methods
.method public final a(Lkph;)V
    .locals 25

    const-string v0, "mvhd"

    const-string v1, "mdia"

    const-string v2, "trak"

    const-string v3, "moov"

    move-object/from16 v4, p0

    iget-object v5, v4, Lffv;->b:Lfgj;

    sget-object v6, Lfgj;->a:Lfgj;

    if-ne v5, v6, :cond_11

    :try_start_0
    new-instance v5, Landroid/media/MediaExtractor;

    invoke-direct {v5}, Landroid/media/MediaExtractor;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lkxu; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-static/range {p1 .. p1}, Lflb;->d(Lkph;)Ljava/io/FileInputStream;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    const/4 v7, 0x1

    const/4 v8, 0x0

    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;)V

    invoke-virtual {v5}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    const/4 v12, 0x2

    if-ge v10, v9, :cond_2

    invoke-virtual {v5, v10}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v13

    const-string v14, "mime"

    invoke-virtual {v13, v14}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lllj;->q(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    add-int/lit8 v11, v11, 0x1

    if-ne v11, v12, :cond_0

    add-int/2addr v10, v7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v9}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    goto :goto_1

    :cond_0
    :try_start_4
    const-string v14, "application/motionphoto-highres"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    add-int/2addr v10, v7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v9}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    :goto_1
    :try_start_6
    invoke-virtual {v5}, Landroid/media/MediaExtractor;->release()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lkxu; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_2
    :try_start_7
    sget-object v9, Lmpx;->a:Lmpx;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :try_start_8
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    goto :goto_1

    :goto_2
    :try_start_9
    invoke-virtual {v9}, Lmqp;->g()Z

    move-result v5

    if-nez v5, :cond_3

    return-void

    :cond_3
    invoke-virtual {v9}, Lmqp;->c()Ljava/lang/Object;

    invoke-interface/range {p1 .. p1}, Lkph;->a()J

    move-result-wide v17

    invoke-virtual {v9}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static/range {p1 .. p1}, Lflb;->d(Lkph;)Ljava/io/FileInputStream;

    move-result-object v6
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Lkxu; {:try_start_9 .. :try_end_9} :catch_2

    :try_start_a
    invoke-virtual {v6}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v9

    invoke-static {v9}, Lj$/nio/channels/DesugarChannels;->convertMaybeLegacyFileChannelFromLibrary(Ljava/nio/channels/FileChannel;)Ljava/nio/channels/FileChannel;

    move-result-object v13

    sget-object v14, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v15, 0x0

    invoke-virtual/range {v13 .. v18}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v9

    const/4 v10, 0x4

    new-array v11, v10, [Ljava/lang/String;

    aput-object v3, v11, v8

    aput-object v2, v11, v7

    const-string v13, "stbl"

    aput-object v13, v11, v12

    const/4 v13, 0x3

    aput-object v1, v11, v13

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    new-instance v14, Lloi;

    invoke-direct {v14, v9, v11}, Lloi;-><init>(Ljava/nio/ByteBuffer;Ljava/util/List;)V

    new-instance v9, Lkxt;

    iget-object v11, v14, Lloi;->b:Ljava/lang/Object;

    check-cast v11, Ljava/nio/ByteBuffer;

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->position()I

    move-result v11

    iget-object v15, v14, Lloi;->b:Ljava/lang/Object;

    check-cast v15, Ljava/nio/ByteBuffer;

    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->limit()I

    move-result v15

    invoke-direct {v9, v11, v15}, Lkxt;-><init>(II)V

    new-instance v11, Lloi;

    sget-object v15, Lmpx;->a:Lmpx;

    invoke-direct {v11, v15}, Lloi;-><init>(Lmqp;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    invoke-virtual {v14, v9}, Lloi;->c(Lkxt;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v14, v11, v9}, Lloi;->q(Lloi;Ljava/util/List;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    invoke-virtual {v11, v3}, Lloi;->r(Ljava/lang/String;)Lloi;

    move-result-object v9

    invoke-virtual {v9, v2}, Lloi;->g(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    if-lt v9, v12, :cond_10

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    const/16 v14, 0xa

    if-gt v9, v14, :cond_10

    invoke-virtual {v11, v3}, Lloi;->r(Ljava/lang/String;)Lloi;

    move-result-object v9

    invoke-virtual {v9, v0}, Lloi;->r(Ljava/lang/String;)Lloi;

    move-result-object v9

    sget-object v14, Lkwz;->c:Lkxr;

    invoke-virtual {v9, v14}, Lloi;->f(Lkxr;)Lkxs;

    move-result-object v9

    invoke-virtual {v9}, Lkxs;->a()I

    move-result v9

    if-eqz v9, :cond_f

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v14, 0x0

    move-object v15, v14

    const/4 v10, 0x0

    const/4 v13, 0x0

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v7, v18

    check-cast v7, Lloi;

    const-string v8, "tkhd"

    invoke-virtual {v7, v8}, Lloi;->r(Ljava/lang/String;)Lloi;

    move-result-object v8

    sget-object v12, Lkwz;->a:Lkxr;

    invoke-virtual {v8, v12}, Lloi;->f(Lkxr;)Lkxs;

    move-result-object v12

    invoke-virtual {v12}, Lkxs;->a()I

    move-result v12

    move-object/from16 v19, v2

    sget-object v2, Lkwz;->b:Lkxr;

    invoke-virtual {v8, v2}, Lloi;->f(Lkxr;)Lkxs;

    move-result-object v2

    invoke-virtual {v7, v1}, Lloi;->r(Ljava/lang/String;)Lloi;

    move-result-object v7

    const-string v8, "mdhd"

    invoke-virtual {v7, v8}, Lloi;->r(Ljava/lang/String;)Lloi;

    move-result-object v7

    if-eq v12, v5, :cond_4

    invoke-virtual {v2}, Lkxs;->a()I

    move-result v2

    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    move-result v10

    move-object/from16 v2, v19

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v12, 0x2

    goto :goto_3

    :cond_4
    sget-object v8, Lkwz;->f:Lkxr;

    invoke-virtual {v7, v8}, Lloi;->f(Lkxr;)Lkxs;

    move-result-object v15

    sget-object v8, Lkwz;->e:Lkxr;

    invoke-virtual {v7, v8}, Lloi;->f(Lkxr;)Lkxs;

    move-result-object v7

    invoke-virtual {v7}, Lkxs;->a()I

    move-result v13

    if-eqz v13, :cond_5

    move-object v14, v2

    move-object/from16 v2, v19

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v12, 0x2

    goto :goto_3

    :cond_5
    new-instance v0, Lkxu;

    const-string v1, "Media time scale is 0."

    invoke-direct {v0, v1}, Lkxu;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    if-eqz v14, :cond_e

    if-eqz v13, :cond_e

    if-eqz v15, :cond_e

    invoke-virtual {v11, v3}, Lloi;->r(Ljava/lang/String;)Lloi;

    move-result-object v1

    invoke-virtual {v1, v0}, Lloi;->r(Ljava/lang/String;)Lloi;

    move-result-object v0

    sget-object v1, Lkwz;->d:Lkxr;

    invoke-virtual {v0, v1}, Lloi;->f(Lkxr;)Lkxs;

    move-result-object v0

    invoke-virtual {v0}, Lkxs;->a()I

    move-result v1

    if-gt v1, v10, :cond_7

    const-string v1, "Not fixing video since entire video length %d is shorter than the high-res track %d (video units)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lkxs;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    sget v0, Lmvv;->d:I

    sget-object v0, Lmyu;->a:Lmvv;

    goto/16 :goto_4

    :cond_7
    invoke-virtual {v0}, Lkxs;->a()I

    move-result v1

    invoke-static {v9, v1}, Lkwz;->a(II)J

    move-result-wide v1

    invoke-virtual {v14}, Lkxs;->a()I

    move-result v3

    invoke-static {v9, v3}, Lkwz;->a(II)J

    move-result-wide v7

    invoke-virtual {v15}, Lkxs;->a()I

    move-result v3

    invoke-static {v13, v3}, Lkwz;->a(II)J

    move-result-wide v11

    invoke-static {v9, v10}, Lkwz;->a(II)J

    move-result-wide v3

    const-wide/16 v19, 0x0

    cmp-long v5, v1, v19

    if-eqz v5, :cond_d

    cmp-long v5, v7, v19

    if-eqz v5, :cond_d

    cmp-long v5, v11, v19

    if-eqz v5, :cond_d

    cmp-long v5, v3, v19

    if-eqz v5, :cond_d

    cmp-long v5, v1, v7

    if-nez v5, :cond_c

    sub-long v19, v7, v11

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->abs(J)J

    move-result-wide v19

    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v21

    const-wide/16 v23, 0x8

    div-long v21, v21, v23
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    cmp-long v5, v19, v21

    if-gtz v5, :cond_b

    long-to-double v7, v3

    long-to-double v11, v11

    const-wide/high16 v19, 0x3fd0000000000000L    # 0.25

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v19

    cmpg-double v5, v7, v11

    if-ltz v5, :cond_a

    :try_start_d
    invoke-virtual {v0}, Lkxs;->a()I

    move-result v1

    invoke-static {v9, v1}, Lkwz;->a(II)J

    move-result-wide v1

    invoke-static {v9, v10}, Lkwz;->a(II)J

    move-result-wide v3

    int-to-long v7, v13

    mul-long v7, v7, v3

    const-wide/32 v11, 0xf4240

    div-long/2addr v7, v11

    long-to-int v5, v7

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "Fixing video length from %d us to %d us"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v9, v2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v9, v2

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    new-instance v1, Lkwy;

    iget v0, v0, Lkxs;->a:I

    int-to-long v2, v0

    invoke-direct {v1, v2, v3, v10}, Lkwy;-><init>(JI)V

    new-instance v0, Lkwy;

    iget v2, v14, Lkxs;->a:I

    int-to-long v2, v2

    invoke-direct {v0, v2, v3, v10}, Lkwy;-><init>(JI)V

    new-instance v2, Lkwy;

    iget v3, v15, Lkxs;->a:I

    int-to-long v3, v3

    invoke-direct {v2, v3, v4, v5}, Lkwy;-><init>(JI)V

    invoke-static {v1, v0, v2}, Lmvv;->n(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmvv;

    move-result-object v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :goto_4
    :try_start_e
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-interface/range {p1 .. p1}, Lkph;->e()Ljava/io/FileOutputStream;

    move-result-object v1
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3
    .catch Lkxu; {:try_start_e .. :try_end_e} :catch_2

    :try_start_f
    invoke-virtual {v0}, Lmvv;->s()Lnad;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkwy;

    invoke-static {v1}, Llpm;->r(Ljava/io/FileOutputStream;)Ljava/nio/channels/FileChannel;

    move-result-object v3

    iget-wide v4, v2, Lkwy;->a:J

    invoke-virtual {v3, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    iget v2, v2, Lkwy;->b:I

    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-static {v1}, Llpm;->r(Ljava/io/FileOutputStream;)Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_5

    :cond_8
    :try_start_10
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_3
    .catch Lkxu; {:try_start_10 .. :try_end_10} :catch_2

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    :try_start_11
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v1, v0

    :try_start_12
    invoke-static {v2, v1}, Llpm;->s(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_6
    throw v2
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_3
    .catch Lkxu; {:try_start_12 .. :try_end_12} :catch_2

    :cond_9
    return-void

    :cond_a
    :try_start_13
    new-instance v0, Lkxu;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "Target length too short: %d to %d?"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v8, v2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v8, v2

    invoke-static {v5, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lkxu;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    new-instance v0, Lkxu;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "Track and media lengths of the high-res track substantially different: %d vs %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lkxu;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    new-instance v0, Lkxu;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "Video length %d, but longest (high-res) track is %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v5, v2

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v5, v2

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lkxu;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    new-instance v0, Lkxu;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "Zero video lengths? %d %d %d %d"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v10, v2

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v10, v2

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v10, v2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v10, v2

    invoke-static {v5, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lkxu;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    new-instance v0, Lkxu;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Track "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " not found."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lkxu;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    new-instance v0, Lkxu;

    const-string v1, "Video time scale is 0."

    invoke-direct {v0, v1}, Lkxu;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    new-instance v0, Lkxu;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "This file has %d trak boxes"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v1, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lkxu;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    new-instance v1, Lkxu;

    invoke-direct {v1, v0}, Lkxu;-><init>(Ljava/lang/Exception;)V

    throw v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    :catchall_2
    move-exception v0

    move-object v1, v0

    :try_start_14
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object v2, v0

    :try_start_15
    invoke-static {v1, v2}, Llpm;->s(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_7
    throw v1
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_3
    .catch Lkxu; {:try_start_15 .. :try_end_15} :catch_2

    :catchall_4
    move-exception v0

    move-object v1, v0

    :try_start_16
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    goto :goto_8

    :catchall_5
    move-exception v0

    move-object v2, v0

    :try_start_17
    const-class v0, Ljava/lang/Throwable;

    const-string v3, "addSuppressed"

    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Throwable;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    invoke-virtual {v0, v3, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v7

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_1
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    goto :goto_8

    :catch_1
    move-exception v0

    :goto_8
    :try_start_18
    throw v1
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_6

    :catchall_6
    move-exception v0

    :try_start_19
    invoke-virtual {v5}, Landroid/media/MediaExtractor;->release()V

    throw v0
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_3
    .catch Lkxu; {:try_start_19 .. :try_end_19} :catch_2

    :catch_2
    move-exception v0

    goto :goto_9

    :catch_3
    move-exception v0

    :goto_9
    sget-object v1, Lffv;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->b()Lnaz;

    move-result-object v1

    const-string v2, "Couldn\'t apply MP4 fix"

    const/16 v3, 0x8ae

    invoke-static {v1, v2, v3, v0}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    return-void

    :cond_11
    return-void
.end method
