.class public Ljvq;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:Lsdb;


# instance fields
.field private final b:Ljwb;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_1
    const v1, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    const/4 v4, 0x0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    aput-object v0, v1, v3

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    const-string v0, "jvq"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_11

    nop

    nop

    :goto_8
    goto/32 :goto_6

    nop

    nop

    :goto_9
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_a
    const/16 v3, 0xa7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_c
    sput-object v0, Ljvq;->a:Lsdb;

    nop

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

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_e
    new-array v1, v1, [Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_f
    check-cast v0, Lsdb;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_12
    invoke-static {v3, v4, v1}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_13
    const v0, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljwb;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Ljvq;->b:Ljwb;

    nop

    nop

    goto/32 :goto_1

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lpsf;)V
    .locals 22

    goto/32 :goto_1a

    nop

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

    nop

    :catchall_0
    move-exception v0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_e

    nop

    nop

    nop

    nop

    :cond_0
    :try_start_0
    sget-object v6, Lrsa;->a:Lrsa;

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    const v1, 0xc

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_10

    nop

    :goto_4
    goto/16 :goto_e

    nop

    nop

    nop

    :goto_5
    :try_start_2
    invoke-virtual {v6}, Lrss;->h()Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_6

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Lrss;->c()Ljava/lang/Object;

    invoke-interface/range {p1 .. p1}, Lpsf;->a()J

    move-result-wide v15

    nop

    invoke-virtual {v6}, Lrss;->c()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    check-cast v4, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    nop

    nop

    nop

    invoke-static/range {p1 .. p1}, Lkav;->g(Lpsf;)Ljava/io/FileInputStream;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lqel; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    nop

    invoke-static {v6}, Lj$/nio/channels/DesugarChannels;->convertMaybeLegacyFileChannelFromLibrary(Ljava/nio/channels/FileChannel;)Ljava/nio/channels/FileChannel;

    move-result-object v11

    nop

    sget-object v12, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    nop

    const-wide/16 v13, 0x0

    nop

    nop

    invoke-virtual/range {v11 .. v16}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v6

    nop

    nop

    nop

    nop

    const-string v8, "stbl"

    nop

    nop

    nop

    filled-new-array {v3, v2, v8, v1}, [Ljava/lang/String;

    move-result-object v8

    nop

    nop

    nop

    nop

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    nop

    nop

    new-instance v9, Lqat;

    nop

    invoke-direct {v9, v6, v8}, Lqat;-><init>(Ljava/nio/ByteBuffer;Ljava/util/List;)V

    new-instance v6, Lqek;

    nop

    nop

    nop

    iget-object v8, v9, Lqat;->a:Ljava/lang/Object;

    nop

    nop

    check-cast v8, Ljava/nio/ByteBuffer;

    nop

    nop

    nop

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    nop

    nop

    nop

    nop

    nop

    iget-object v11, v9, Lqat;->a:Ljava/lang/Object;

    nop

    nop

    check-cast v11, Ljava/nio/ByteBuffer;

    nop

    nop

    nop

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->limit()I

    move-result v11

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v6, v8, v11}, Lqek;-><init>(II)V

    new-instance v8, Lqat;

    nop

    nop

    nop

    nop

    sget-object v11, Lrsa;->a:Lrsa;

    nop

    invoke-direct {v8, v11}, Lqat;-><init>(Lrss;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    :try_start_4
    invoke-virtual {v9, v6}, Lqat;->a(Lqek;)Ljava/util/List;

    move-result-object v6

    nop

    invoke-virtual {v9, v8, v6}, Lqat;->d(Lqat;Ljava/util/List;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    :try_start_5
    invoke-virtual {v8, v3}, Lqat;->e(Ljava/lang/String;)Lqat;

    move-result-object v6

    nop

    nop

    nop

    invoke-virtual {v6, v2}, Lqat;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    nop

    nop

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    nop

    nop

    if-lt v6, v10, :cond_11

    nop

    nop

    nop

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    nop

    nop

    nop

    nop

    const/16 v9, 0xa

    nop

    nop

    nop

    nop

    if-gt v6, v9, :cond_11

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v8, v3}, Lqat;->e(Ljava/lang/String;)Lqat;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6, v0}, Lqat;->e(Ljava/lang/String;)Lqat;

    move-result-object v6

    nop

    sget-object v9, Lqdq;->c:Lqei;

    nop

    nop

    nop

    nop

    invoke-virtual {v6, v9}, Lqat;->b(Lqei;)Lqej;

    move-result-object v6

    nop

    nop

    nop

    invoke-virtual {v6}, Lqej;->a()I

    move-result v6

    nop

    nop

    nop

    nop

    if-eqz v6, :cond_10

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    nop

    nop

    const/4 v9, 0x0

    nop

    nop

    move-object v10, v9

    nop

    nop

    nop

    nop

    nop

    move-object v11, v10

    nop

    move v9, v7

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    nop

    if-eqz v12, :cond_3

    nop

    nop

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    nop

    nop

    nop

    nop

    nop

    check-cast v12, Lqat;

    nop

    nop

    const-string v13, "tkhd"

    nop

    nop

    invoke-virtual {v12, v13}, Lqat;->e(Ljava/lang/String;)Lqat;

    move-result-object v13

    nop

    nop

    nop

    sget-object v14, Lqdq;->a:Lqei;

    nop

    nop

    nop

    invoke-virtual {v13, v14}, Lqat;->b(Lqei;)Lqej;

    move-result-object v14

    nop

    nop

    invoke-virtual {v14}, Lqej;->a()I

    move-result v14

    nop

    nop

    nop

    nop

    nop

    sget-object v15, Lqdq;->b:Lqei;

    nop

    nop

    invoke-virtual {v13, v15}, Lqat;->b(Lqei;)Lqej;

    move-result-object v13

    nop

    invoke-virtual {v12, v1}, Lqat;->e(Ljava/lang/String;)Lqat;

    move-result-object v12

    nop

    nop

    nop

    nop

    nop

    const-string v15, "mdhd"

    nop

    invoke-virtual {v12, v15}, Lqat;->e(Ljava/lang/String;)Lqat;

    move-result-object v12

    nop

    nop

    nop

    nop

    if-eq v14, v4, :cond_1

    nop

    nop

    nop

    nop

    invoke-virtual {v13}, Lqej;->a()I

    move-result v12

    nop

    nop

    nop

    nop

    nop

    invoke-static {v9, v12}, Ljava/lang/Math;->max(II)I

    move-result v9

    nop

    goto :goto_6

    nop

    :cond_1
    sget-object v7, Lqdq;->f:Lqei;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v12, v7}, Lqat;->b(Lqei;)Lqej;

    move-result-object v11

    nop

    nop

    sget-object v7, Lqdq;->e:Lqei;

    nop

    nop

    nop

    nop

    invoke-virtual {v12, v7}, Lqat;->b(Lqei;)Lqej;

    move-result-object v7

    nop

    nop

    invoke-virtual {v7}, Lqej;->a()I

    move-result v7

    nop

    if-eqz v7, :cond_2

    nop

    nop

    nop

    nop

    move-object v10, v13

    nop

    nop

    nop

    nop

    goto/16 :goto_6

    nop

    nop

    nop

    nop

    :cond_2
    new-instance v0, Lqel;

    nop

    nop

    nop

    nop

    const-string v1, "Media time scale is 0."

    nop

    invoke-direct {v0, v1}, Lqel;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    nop

    nop

    :cond_3
    if-eqz v10, :cond_f

    nop

    if-eqz v7, :cond_f

    nop

    nop

    nop

    if-eqz v11, :cond_f

    nop

    invoke-virtual {v8, v3}, Lqat;->e(Ljava/lang/String;)Lqat;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v0}, Lqat;->e(Ljava/lang/String;)Lqat;

    move-result-object v0

    nop

    nop

    nop

    sget-object v1, Lqdq;->d:Lqei;

    nop

    nop

    invoke-virtual {v0, v1}, Lqat;->b(Lqei;)Lqej;

    move-result-object v0

    nop

    invoke-virtual {v0}, Lqej;->a()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    if-gt v1, v9, :cond_4

    nop

    const-string v1, "Not fixing video since entire video length %d is shorter than the high-res track %d (video units)"

    nop

    invoke-virtual {v0}, Lqej;->a()I

    move-result v0

    nop

    nop

    nop

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    nop

    nop

    nop

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    sget v0, Lryb;->d:I

    nop

    nop

    nop

    sget-object v0, Lsbh;->a:Lryb;

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_7

    nop

    nop

    nop

    :cond_4
    invoke-virtual {v0}, Lqej;->a()I

    move-result v1

    nop

    nop

    invoke-static {v6, v1}, Lqdq;->a(II)J

    move-result-wide v1

    nop

    nop

    invoke-virtual {v10}, Lqej;->a()I

    move-result v3

    nop

    nop

    nop

    nop

    invoke-static {v6, v3}, Lqdq;->a(II)J

    move-result-wide v3

    nop

    nop

    nop

    invoke-virtual {v11}, Lqej;->a()I

    move-result v8

    nop

    nop

    invoke-static {v7, v8}, Lqdq;->a(II)J

    move-result-wide v12

    nop

    nop

    nop

    nop

    invoke-static {v6, v9}, Lqdq;->a(II)J

    move-result-wide v14

    nop

    nop

    nop

    nop

    nop

    const-wide/16 v16, 0x0

    nop

    nop

    cmp-long v8, v1, v16

    nop

    nop

    nop

    nop

    if-eqz v8, :cond_e

    nop

    cmp-long v8, v3, v16

    nop

    nop

    if-eqz v8, :cond_e

    nop

    cmp-long v8, v12, v16

    nop

    nop

    nop

    if-eqz v8, :cond_e

    nop

    cmp-long v8, v14, v16

    nop

    nop

    if-eqz v8, :cond_e

    nop

    cmp-long v8, v1, v3

    nop

    nop

    nop

    nop

    if-nez v8, :cond_d

    nop

    sub-long v16, v3, v12

    nop

    nop

    nop

    nop

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(J)J

    move-result-wide v16

    nop

    nop

    nop

    nop

    nop

    invoke-static {v3, v4, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v18

    nop

    nop

    const-wide/16 v20, 0x8

    nop

    div-long v18, v18, v20

    nop

    nop

    cmp-long v8, v16, v18

    nop

    nop

    nop

    nop

    if-gtz v8, :cond_c

    nop

    nop

    nop

    long-to-double v3, v14

    nop

    nop

    nop

    nop

    long-to-double v12, v12

    nop

    const-wide/high16 v16, 0x3fd0000000000000L    # 0.25

    nop

    nop

    nop

    mul-double v12, v12, v16

    nop

    nop

    nop

    cmpg-double v3, v3, v12

    nop

    nop

    if-ltz v3, :cond_b

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lqej;->a()I

    move-result v1

    nop

    nop

    nop

    invoke-static {v6, v1}, Lqdq;->a(II)J

    move-result-wide v1

    nop

    nop

    nop

    invoke-static {v6, v9}, Lqdq;->a(II)J

    move-result-wide v3

    nop

    nop

    int-to-long v6, v7

    nop

    nop

    nop

    mul-long/2addr v6, v3

    nop

    nop

    nop

    nop

    const-wide/32 v12, 0xf4240

    nop

    nop

    nop

    div-long/2addr v6, v12

    nop

    nop

    nop

    nop

    long-to-int v6, v6

    nop

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    nop

    nop

    const-string v8, "Fixing video length from %d us to %d us"

    nop

    nop

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    nop

    nop

    nop

    nop

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    invoke-static {v7, v8, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    new-instance v1, Lqdp;

    nop

    nop

    iget v0, v0, Lqej;->a:I

    nop

    nop

    nop

    int-to-long v2, v0

    nop

    nop

    invoke-direct {v1, v2, v3, v9}, Lqdp;-><init>(JI)V

    new-instance v0, Lqdp;

    nop

    nop

    nop

    iget v2, v10, Lqej;->a:I

    nop

    nop

    nop

    nop

    nop

    int-to-long v2, v2

    nop

    nop

    nop

    nop

    invoke-direct {v0, v2, v3, v9}, Lqdp;-><init>(JI)V

    new-instance v2, Lqdp;

    nop

    nop

    nop

    iget v3, v11, Lqej;->a:I

    nop

    int-to-long v3, v3

    nop

    nop

    nop

    invoke-direct {v2, v3, v4, v6}, Lqdp;-><init>(JI)V

    invoke-static {v1, v0, v2}, Lryb;->n(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lryb;

    move-result-object v0

    nop

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    :goto_7
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    nop

    nop

    if-nez v1, :cond_6

    nop

    nop

    nop

    nop

    nop

    invoke-interface/range {p1 .. p1}, Lpsf;->e()Ljava/io/FileOutputStream;

    move-result-object v1

    nop

    nop

    nop
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lqel; {:try_start_6 .. :try_end_6} :catch_0

    :try_start_7
    invoke-virtual {v0}, Lryb;->t()Lscq;

    move-result-object v0

    nop

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_8

    nop

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    check-cast v2, Lqdp;

    nop

    nop

    invoke-static {v1}, Lpuq;->X(Ljava/io/FileOutputStream;)Ljava/nio/channels/FileChannel;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    iget-wide v4, v2, Lqdp;->a:J

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    const/4 v3, 0x4

    nop

    nop

    nop

    nop

    nop

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    iget v2, v2, Lqdp;->b:I

    nop

    nop

    nop

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-static {v1}, Lpuq;->X(Ljava/io/FileOutputStream;)Ljava/nio/channels/FileChannel;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const-string v0, "mvhd"

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_a
    move-object v2, v0

    nop

    :try_start_8
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_b
    throw v1

    nop

    nop

    nop

    nop

    nop
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :try_start_9
    invoke-virtual {v4}, Landroid/media/MediaExtractor;->release()V

    throw v0

    nop

    nop
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Lqel; {:try_start_9 .. :try_end_9} :catch_0

    :catch_0
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/16 :goto_15

    nop

    :goto_d
    :try_start_a
    new-instance v4, Landroid/media/MediaExtractor;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v4}, Landroid/media/MediaExtractor;-><init>()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catch Lqel; {:try_start_a .. :try_end_a} :catch_0

    :try_start_b
    invoke-static/range {p1 .. p1}, Lkav;->g(Lpsf;)Ljava/io/FileInputStream;

    move-result-object v5

    nop

    nop
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    invoke-virtual {v5}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v6

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v6}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;)V

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v6

    nop

    nop

    nop

    nop

    const/4 v7, 0x0

    nop

    nop

    nop

    move v8, v7

    nop

    nop

    move v9, v8

    nop

    nop

    nop

    nop

    :cond_5
    const/4 v10, 0x2

    nop

    nop

    nop

    nop

    nop

    if-ge v8, v6, :cond_0

    nop

    nop

    invoke-virtual {v4, v8}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v11

    nop

    const-string v12, "mime"

    nop

    invoke-virtual {v11, v12}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    nop

    nop

    nop

    nop

    nop

    invoke-static {v11}, Lpuq;->ad(Ljava/lang/String;)Z

    move-result v12

    nop

    nop

    nop

    if-eqz v12, :cond_a

    nop

    nop

    nop

    nop

    add-int/lit8 v9, v9, 0x1

    nop

    nop

    nop

    nop

    if-ne v9, v10, :cond_a

    nop

    nop

    nop

    add-int/lit8 v8, v8, 0x1

    nop

    nop

    nop

    nop

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    invoke-static {v6}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v6

    nop

    nop
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :try_start_d
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :goto_e
    :try_start_e
    invoke-virtual {v4}, Landroid/media/MediaExtractor;->release()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0
    .catch Lqel; {:try_start_e .. :try_end_e} :catch_0

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_2a

    nop

    nop

    :goto_10
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_11
    move-object v1, v0

    nop

    :try_start_f
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_12
    move-object v1, v0

    nop

    nop

    nop

    nop

    :try_start_10
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_13
    move-object v2, v0

    nop

    nop

    nop

    :try_start_11
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_14
    throw v1

    nop

    nop
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_0
    .catch Lqel; {:try_start_11 .. :try_end_11} :catch_0

    :cond_6
    :goto_15
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const-string v1, "mdia"

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const-string v3, "moov"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_18
    move-object/from16 v4, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_19
    invoke-static {v2, v3, v1, v0}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const v0, 0x1b

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

    :goto_1b
    goto/16 :goto_31

    nop

    nop

    nop

    nop

    nop

    :catchall_2
    move-exception v0

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_1c
    sget-object v1, Ljvq;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_1d
    sget-object v2, Lcom/google/android/libraries/performance/primes/transmitter/clearcut/itlF/rqoPuzOSTbBmB;->cDGkKRuRAIgXHf:Ljava/lang/String;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v1}, Lscs;->b()Lsdo;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_1f
    sget-object v5, Ljwb;->a:Ljwb;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_20
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_21
    const/16 v3, 0xa89

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_22
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_23
    if-lez v0, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_7
    goto/32 :goto_f

    nop

    :goto_24
    move-object v2, v0

    nop

    nop

    nop

    :try_start_12
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const-string v2, "trak"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_26
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/16 :goto_8

    nop

    nop

    nop

    :cond_8
    :try_start_13
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_0
    .catch Lqel; {:try_start_13 .. :try_end_13} :catch_0

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_28
    if-ne v4, v5, :cond_9

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_29
    return-void

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v4, v4, Ljvq;->b:Ljwb;

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

    :goto_2c
    goto/16 :goto_14

    nop

    nop

    nop

    nop

    :catchall_3
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_2d
    goto/16 :goto_5

    nop

    :cond_a
    :try_start_14
    const-string v12, "application/motionphoto-highres"

    nop

    nop

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    nop

    nop

    nop

    nop

    add-int/lit8 v8, v8, 0x1

    nop

    if-eqz v11, :cond_5

    nop

    nop

    nop

    nop

    nop

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    nop

    nop

    nop

    nop

    invoke-static {v6}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v6

    nop

    nop
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    :try_start_15
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_2e
    goto/16 :goto_b

    nop

    nop

    nop

    :catchall_4
    move-exception v0

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_2f
    return-void

    nop

    nop

    :catchall_5
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_30
    move-object v1, v0

    nop

    nop

    nop

    nop

    nop

    :try_start_16
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_31
    throw v2

    nop

    nop
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_0
    .catch Lqel; {:try_start_16 .. :try_end_16} :catch_0

    :cond_b
    :try_start_17
    new-instance v0, Lqel;

    nop

    nop

    nop

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    nop

    nop

    const-string v4, "Target length too short: %d to %d?"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    nop

    nop

    nop

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    nop

    invoke-static {v3, v4, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0, v1}, Lqel;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    nop

    nop

    nop

    :cond_c
    new-instance v0, Lqel;

    nop

    nop

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    nop

    nop

    nop

    const-string v2, "Track and media lengths of the high-res track substantially different: %d vs %d"

    nop

    nop

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    nop

    nop

    nop

    nop

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    nop

    nop

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    invoke-direct {v0, v1}, Lqel;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    nop

    nop

    :cond_d
    new-instance v0, Lqel;

    nop

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    nop

    const-string v7, "Video length %d, but longest (high-res) track is %d"

    nop

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    nop

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    nop

    nop

    nop

    nop

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    invoke-static {v6, v7, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    invoke-direct {v0, v1}, Lqel;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    nop

    nop

    nop

    :cond_e
    new-instance v0, Lqel;

    nop

    nop

    nop

    nop

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    nop

    nop

    const-string v7, "Zero video lengths? %d %d %d %d"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    nop

    nop

    nop

    nop

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    nop

    nop

    nop

    nop

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    nop

    nop

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    nop

    nop

    nop

    nop

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    invoke-static {v6, v7, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0, v1}, Lqel;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    nop

    nop

    nop

    nop

    :cond_f
    new-instance v0, Lqel;

    nop

    nop

    nop

    nop

    nop

    const-string v1, "Track "

    nop

    nop

    const-string v2, " not found."

    nop

    invoke-static {v4, v1, v2}, La;->br(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0, v1}, Lqel;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    nop

    nop

    nop

    nop

    :cond_10
    new-instance v0, Lqel;

    nop

    nop

    const-string v1, "Video time scale is 0."

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0, v1}, Lqel;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    nop

    nop

    nop

    :cond_11
    new-instance v0, Lqel;

    nop

    nop

    nop

    nop

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    nop

    nop

    nop

    const-string v3, "This file has %d trak boxes"

    nop

    nop

    nop

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    nop

    nop

    nop

    nop

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    nop

    nop

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    invoke-direct {v0, v1}, Lqel;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    nop

    nop

    nop

    nop

    :catch_1
    move-exception v0

    nop

    nop

    nop

    new-instance v1, Lqel;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1, v0}, Lqel;-><init>(Ljava/lang/Exception;)V

    throw v1

    nop

    nop

    nop

    nop

    nop
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    :catchall_6
    move-exception v0

    nop

    goto/32 :goto_12

    nop

    nop
.end method
