.class final Lppa;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field private final a:I

.field private final b:[B

.field private c:J

.field private d:J

.field private e:I

.field private f:J

.field private g:J

.field private h:I

.field private final i:Lpic;

.field private final j:Lnar;


# direct methods
.method private final declared-synchronized 23ce148e54b083367f51e25c7971761em(I)V
    .locals 3

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    throw p1

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_3
    const v0, 0xb

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lppa;->i:Lpic;

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lppa;->b:[B

    nop

    nop

    nop

    nop

    nop

    const/16 v2, 0x68

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1, p1, p1, v2}, Lpic;->o([BIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

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

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0xc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_a
    goto/32 :goto_c

    nop

    nop

    :goto_b
    goto/32 :goto_1

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
.end method

.method private final declared-synchronized 33f5b80483094659737b73d90f80a8a4m()V
    .locals 8

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_1
    return-void

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x16

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    goto/32 :goto_7

    nop

    nop

    :goto_6
    goto/32 :goto_a

    nop

    nop

    :goto_7
    goto/32 :goto_c

    nop

    nop

    :goto_8
    const v1, 0x1d

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    throw v0

    nop

    nop

    :goto_a
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

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

    :goto_c
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    iget-object v0, p0, Lppa;->i:Lpic;

    nop

    iget-object v1, p0, Lppa;->b:[B

    nop

    iget v2, p0, Lppa;->a:I

    nop

    nop

    const/4 v3, 0x0

    nop

    invoke-virtual {v0, v1, v3, v3, v2}, Lpic;->o([BIII)V

    const-wide/16 v0, 0x0

    nop

    nop

    nop

    nop

    iput-wide v0, p0, Lppa;->c:J

    nop

    nop

    iput-wide v0, p0, Lppa;->d:J

    nop

    nop

    nop

    nop

    iput v3, p0, Lppa;->e:I

    nop

    nop

    nop

    iput-wide v0, p0, Lppa;->f:J

    nop

    nop

    nop

    nop

    nop

    iput-wide v0, p0, Lppa;->g:J

    nop

    nop

    nop

    nop

    iput v3, p0, Lppa;->h:I

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget v2, p0, Lppa;->a:I

    nop

    nop

    if-ge v3, v2, :cond_5

    nop

    nop

    nop

    iget-object v2, p0, Lppa;->b:[B

    nop

    nop

    nop

    nop

    invoke-static {v2, v3}, Lpuq;->bg([BI)J

    move-result-wide v4

    nop

    nop

    nop

    nop

    iget-wide v6, p0, Lppa;->d:J

    nop

    cmp-long v2, v4, v6

    nop

    nop

    nop

    nop

    nop

    if-lez v2, :cond_2

    nop

    nop

    nop

    iput-wide v4, p0, Lppa;->d:J

    nop

    nop

    nop

    iput v3, p0, Lppa;->e:I

    nop

    nop

    :cond_2
    cmp-long v2, v4, v0

    nop

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_4

    nop

    nop

    nop

    nop

    nop

    iget-wide v6, p0, Lppa;->g:J

    nop

    nop

    nop

    nop

    cmp-long v2, v6, v0

    nop

    if-eqz v2, :cond_3

    nop

    nop

    cmp-long v2, v4, v6

    nop

    nop

    if-gez v2, :cond_4

    nop

    nop

    nop

    nop

    :cond_3
    iput-wide v4, p0, Lppa;->g:J

    nop

    nop

    nop

    nop

    nop

    iput v3, p0, Lppa;->h:I

    nop

    :cond_4
    add-int/lit8 v3, v3, 0x68

    nop

    goto :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_5
    iget-wide v2, p0, Lppa;->d:J

    nop

    nop

    nop

    cmp-long v2, v2, v0

    nop

    nop

    nop

    if-lez v2, :cond_6

    nop

    nop

    nop

    nop

    nop

    iget-object v2, p0, Lppa;->b:[B

    nop

    nop

    nop

    iget v3, p0, Lppa;->e:I

    nop

    nop

    invoke-static {v2, v3}, Lpuq;->bh([BI)J

    move-result-wide v2

    nop

    nop

    iput-wide v2, p0, Lppa;->c:J

    nop

    nop

    nop

    :cond_6
    iget-wide v2, p0, Lppa;->g:J

    nop

    nop

    nop

    cmp-long v0, v2, v0

    nop

    nop

    nop

    nop

    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lppa;->b:[B

    nop

    iget v1, p0, Lppa;->h:I

    nop

    nop

    nop

    invoke-static {v0, v1}, Lpuq;->bh([BI)J

    move-result-wide v0

    nop

    nop

    nop

    nop

    iput-wide v0, p0, Lppa;->f:J

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_e
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_f
    monitor-exit p0

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

.method public constructor <init>(Lpic;)V
    .locals 3

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p1, Lpic;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_2
    mul-int/lit8 v0, v0, 0x68

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0xb

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_5
    invoke-direct {p1, v1, v0}, Lnar;-><init>(Lpcl;I)V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_9
    new-array p1, v0, [B

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_a
    invoke-direct {v1, v2}, Lppg;-><init>(I)V

    goto/32 :goto_16

    nop

    nop

    :goto_b
    iput v0, p0, Lppa;->a:I

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p1}, Landroid/hardware/HardwareBuffer;->getLayers()I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_d
    iget-object v1, p1, Lpic;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_e
    iput-object p1, p0, Lppa;->j:Lnar;

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

    :goto_f
    mul-int/2addr v0, p1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_10
    new-instance v1, Lppg;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_11
    div-int/lit8 v0, v0, 0x68

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_12
    const/4 v2, 0x1

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

    :goto_13
    check-cast v1, Landroid/hardware/HardwareBuffer;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_14
    iget-object p1, p1, Lpic;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_0

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

    nop

    :cond_0
    goto/32 :goto_17

    nop

    :goto_16
    div-int/lit8 v0, v0, 0x68

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_8

    nop

    :goto_18
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1a
    add-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1b
    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iput-object p1, p0, Lppa;->i:Lpic;

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

    :goto_1d
    iput-object p1, p0, Lppa;->b:[B

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    check-cast p1, Landroid/hardware/HardwareBuffer;

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

    :goto_1f
    mul-int/2addr v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_20
    const v0, 0x2

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_21
    check-cast v0, Landroid/hardware/HardwareBuffer;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_22
    new-instance p1, Lnar;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop
.end method

.method private final declared-synchronized da190e616797844b591057d0190e7728m()V
    .locals 10

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-wide v0, p0, Lppa;->d:J

    nop

    nop

    nop

    const-wide/16 v2, 0x0

    nop

    nop

    nop

    cmp-long v0, v0, v2

    nop

    nop

    if-eqz v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    iget-wide v0, p0, Lppa;->g:J

    nop

    nop

    cmp-long v0, v0, v2

    nop

    nop

    nop

    nop

    if-nez v0, :cond_0

    nop

    goto/16 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_0
    iget v0, p0, Lppa;->e:I

    nop

    nop

    invoke-direct {p0, v0}, Lppa;->23ce148e54b083367f51e25c7971761em(I)V

    iget-object v0, p0, Lppa;->b:[B

    nop

    nop

    nop

    nop

    nop

    iget v1, p0, Lppa;->e:I

    nop

    nop

    nop

    nop

    invoke-static {v0, v1}, Lpuq;->bg([BI)J

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    iget-wide v4, p0, Lppa;->d:J

    nop

    nop

    nop

    nop

    cmp-long v0, v0, v4

    nop

    nop

    nop

    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p0}, Lppa;->33f5b80483094659737b73d90f80a8a4m()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_2
    monitor-exit p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    :cond_1
    :try_start_1
    iget v0, p0, Lppa;->e:I

    nop

    nop

    add-int/lit8 v0, v0, 0x68

    nop

    nop

    nop

    nop

    nop

    iget v1, p0, Lppa;->a:I

    nop

    nop

    nop

    const-wide/16 v6, 0x1

    nop

    add-long/2addr v4, v6

    nop

    nop

    rem-int/2addr v0, v1

    nop

    nop

    :goto_4
    invoke-direct {p0, v0}, Lppa;->23ce148e54b083367f51e25c7971761em(I)V

    iget-object v1, p0, Lppa;->b:[B

    nop

    invoke-static {v1, v0}, Lpuq;->bg([BI)J

    move-result-wide v8

    nop

    nop

    nop

    cmp-long v1, v8, v4

    nop

    nop

    nop

    nop

    nop

    if-nez v1, :cond_2

    nop

    nop

    nop

    nop

    iput v0, p0, Lppa;->e:I

    nop

    nop

    iput-wide v4, p0, Lppa;->d:J

    nop

    iget-object v1, p0, Lppa;->b:[B

    nop

    nop

    nop

    nop

    invoke-static {v1, v0}, Lpuq;->bh([BI)J

    move-result-wide v8

    nop

    nop

    nop

    iput-wide v8, p0, Lppa;->c:J

    nop

    nop

    add-int/lit8 v0, v0, 0x68

    nop

    nop

    iget v1, p0, Lppa;->a:I

    nop

    nop

    nop

    add-long/2addr v4, v6

    nop

    nop

    nop

    nop

    nop

    rem-int/2addr v0, v1

    nop

    nop

    nop

    nop

    goto :goto_4

    nop

    nop

    nop

    nop

    :cond_2
    cmp-long v1, v8, v2

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_4

    nop

    nop

    nop

    nop

    iget-wide v1, p0, Lppa;->g:J

    nop

    nop

    nop

    nop

    nop

    cmp-long v1, v8, v1

    nop

    nop

    nop

    nop

    if-lez v1, :cond_4

    nop

    nop

    nop

    nop

    nop

    iput v0, p0, Lppa;->h:I

    nop

    nop

    iput-wide v8, p0, Lppa;->g:J

    nop

    nop

    iget-object v1, p0, Lppa;->b:[B

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1, v0}, Lpuq;->bh([BI)J

    move-result-wide v0

    nop

    nop

    nop

    iput-wide v0, p0, Lppa;->f:J

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_5
    monitor-exit p0

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

    :goto_6
    return-void

    nop

    nop

    nop

    :cond_3
    :goto_7
    :try_start_2
    invoke-direct {p0}, Lppa;->33f5b80483094659737b73d90f80a8a4m()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    monitor-exit p0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_9
    monitor-exit p0

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

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_5

    nop

    nop

    :goto_c
    const v0, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_d
    if-lez v0, :cond_5

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_5
    goto/32 :goto_f

    nop

    :goto_e
    goto/32 :goto_10

    nop

    nop

    :goto_f
    goto/32 :goto_13

    nop

    nop

    :goto_10
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_11
    return-void

    nop

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

    :try_start_3
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_12
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized a(JJLjava/util/List;)V
    .locals 9

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v5, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1
    move-wide v2, v7

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-interface {p5}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lppa;->da190e616797844b591057d0190e7728m()V

    iget-wide v0, p0, Lppa;->c:J

    nop

    nop

    nop

    nop

    nop

    cmp-long v0, p1, v0

    nop

    nop

    if-gtz v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    iget-wide v0, p0, Lppa;->f:J

    nop

    nop

    cmp-long v2, p3, v0

    nop

    nop

    nop

    nop

    nop

    if-gez v2, :cond_1

    nop

    nop

    goto/16 :goto_11

    nop

    :cond_1
    iget-wide v2, p0, Lppa;->g:J

    nop

    nop

    nop

    nop

    iget v4, p0, Lppa;->h:I

    nop

    nop

    nop

    :goto_4
    cmp-long v5, v0, p1

    nop

    nop

    if-ltz v5, :cond_2

    nop

    nop

    nop

    nop

    cmp-long v0, v0, p3

    nop

    nop

    nop

    nop

    if-gtz v0, :cond_2

    nop

    iget-object v0, p0, Lppa;->j:Lnar;

    nop

    nop

    nop

    invoke-virtual {v0}, Lnar;->E()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    check-cast v0, Lppf;

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lppa;->b:[B

    nop

    invoke-static {v1, v4}, Lpuq;->bf([BI)I

    move-result v5

    nop

    nop

    iput v5, v0, Lppf;->a:I

    nop

    nop

    nop

    add-int/lit8 v5, v4, 0x4

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1, v5}, Lpuq;->bf([BI)I

    move-result v5

    nop

    nop

    iput v5, v0, Lppf;->b:I

    nop

    nop

    add-int/lit8 v5, v4, 0x8

    nop

    nop

    invoke-static {v1, v5}, Lpuq;->bf([BI)I

    move-result v5

    nop

    nop

    nop

    nop

    nop

    iput v5, v0, Lppf;->c:I

    nop

    nop

    invoke-static {v1, v4}, Lpuq;->bg([BI)J

    move-result-wide v5

    nop

    nop

    nop

    nop

    nop

    iput-wide v5, v0, Lppf;->d:J

    nop

    invoke-static {v1, v4}, Lpuq;->bh([BI)J

    move-result-wide v5

    nop

    nop

    nop

    nop

    iput-wide v5, v0, Lppf;->e:J

    nop

    nop

    nop

    nop

    nop

    add-int/lit8 v5, v4, 0x18

    nop

    nop

    invoke-static {v1, v5}, Lpuq;->be([BI)F

    move-result v5

    nop

    nop

    nop

    iput v5, v0, Lppf;->f:F

    nop

    add-int/lit8 v5, v4, 0x1c

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1, v5}, Lpuq;->be([BI)F

    move-result v5

    nop

    iput v5, v0, Lppf;->g:F

    nop

    add-int/lit8 v5, v4, 0x20

    nop

    nop

    invoke-static {v1, v5}, Lpuq;->be([BI)F

    move-result v1

    nop

    nop

    iput v1, v0, Lppf;->h:F

    nop

    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v4, v4, 0x68

    nop

    nop

    nop

    iget v0, p0, Lppa;->a:I

    nop

    nop

    if-lt v4, v0, :cond_3

    nop

    nop

    nop

    nop

    const/4 v0, 0x0

    nop

    move v4, v0

    nop

    :cond_3
    iget-object v0, p0, Lppa;->b:[B

    nop

    nop

    invoke-static {v0, v4}, Lpuq;->bg([BI)J

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    const-wide/16 v5, 0x0

    nop

    nop

    nop

    nop

    nop

    cmp-long v5, v0, v5

    nop

    if-eqz v5, :cond_5

    nop

    cmp-long v2, v0, v2

    nop

    nop

    nop

    if-ltz v2, :cond_5

    nop

    nop

    nop

    iget-object v2, p0, Lppa;->b:[B

    nop

    nop

    nop

    nop

    invoke-static {v2, v4}, Lpuq;->bh([BI)J

    move-result-wide v2

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_c

    nop

    nop

    :goto_b
    const v1, 0x1f

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

    :goto_c
    goto/32 :goto_7

    nop

    nop

    :goto_d
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_6

    nop

    :goto_e
    cmp-long v5, v2, p3

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_f
    move-wide v0, v2

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

    :goto_10
    goto/16 :goto_4

    nop

    :cond_5
    :goto_11
    goto/32 :goto_14

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

    :goto_13
    move-wide v7, v0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_14
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop
.end method

.method final declared-synchronized b(Ljava/util/List;)V
    .locals 3

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_1
    monitor-enter p0

    nop

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    if-eqz v1, :cond_1

    nop

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    check-cast v1, Lppf;

    nop

    iget-object v2, p0, Lppa;->j:Lnar;

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v1}, Lnar;->F(Ljava/lang/Object;)V

    goto :goto_2

    nop

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1

    nop

    nop

    :goto_5
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

    :goto_6
    monitor-exit p0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_7
    const v1, 0x7

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

    :goto_8
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x5

    nop

    goto/32 :goto_7

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

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_4

    nop

    nop
.end method
