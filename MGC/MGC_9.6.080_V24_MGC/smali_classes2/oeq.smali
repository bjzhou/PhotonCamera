.class public final Loeq;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:J


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method public constructor <init>(J)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    iput-wide p1, p0, Loeq;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop
.end method

.method public constructor <init>(Liyk;IIZLjava/lang/String;)V
    .locals 9

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move v2, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_4
    move v1, p2

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
    const v1, 0xe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_6
    const/high16 v3, 0x3f000000    # 0.5f

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
    const-string v8, ""

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

    :goto_a
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v5, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_c
    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_d
    iput-wide p1, p0, Loeq;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_e
    move v4, p4

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static/range {v0 .. v8}, Lcom/google/android/apps/camera/jni/eis/EisNative;->createHandle(IIIFZILjava/lang/String;ILjava/lang/String;)J

    move-result-wide p1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_9

    nop

    :goto_12
    move-object v6, p5

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_13
    iget v0, p1, Liyk;->l:I

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_a

    nop
.end method

.method public constructor <init>(Liyk;IIZLjava/lang/String;ILjava/lang/String;)V
    .locals 9

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, v0, Liyk;->l:I

    nop

    nop

    nop

    nop

    goto/32 :goto_17

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
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_3
    move v2, p3

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

    :goto_4
    invoke-static/range {v0 .. v8}, Lcom/google/android/apps/camera/jni/eis/EisNative;->createHandle(IIIFZILjava/lang/String;ILjava/lang/String;)J

    move-result-wide v0

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5
    move-object v2, p0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    iput-wide v0, v2, Loeq;->a:J

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

    :goto_7
    const v1, 0x16

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_8
    move v1, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_9
    const/4 v5, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_a
    move-object v6, p5

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_f
    move-object/from16 v8, p7

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

    :goto_10
    const v0, 0x15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_11
    move v7, p6

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_12
    move v4, p4

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_14
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_16
    move-object v0, p1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/high16 v3, 0x3f000000    # 0.5f

    nop

    goto/32 :goto_9

    nop

    nop
.end method

.method public constructor <init>([C)V
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    const-wide/16 v0, 0x0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x20

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-wide v0, p0, Loeq;->a:J

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_8
    const v1, 0x7

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_6

    nop

    nop

    :goto_b
    goto/32 :goto_a

    nop

    :goto_c
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method

.method public static n()Loeq;
    .locals 4

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x18

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_3
    invoke-direct {v0, v1}, Loeq;-><init>([C)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x1a

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

    :goto_5
    const-wide/16 v1, 0x11

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_6
    new-instance v0, Loeq;

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_7
    const/4 v1, 0x0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_b
    return-object v0

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v3, 0x1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {v3, v0, v1, v2}, Lrrf;->p(ZLjava/lang/String;J)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const-string v0, "permitsPerSecond must be > 0: %s"

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x10

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

    :goto_1
    goto/32 :goto_7

    nop

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    :goto_3
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

    :goto_4
    rem-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    const-wide/16 v0, 0x0

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_6
    return-void

    nop

    :goto_7
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_9
    iput-wide v0, p0, Loeq;->a:J

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

    :goto_a
    goto/32 :goto_2

    nop

    nop

    :goto_b
    const v1, 0x17

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method public final b()V
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    iput-wide v0, p0, Loeq;->a:J

    nop

    goto/32 :goto_7

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

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_2
    const v0, 0xb

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x10

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

    :goto_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_a

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
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_8

    nop

    nop

    :goto_a
    goto/32 :goto_4

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
.end method

.method public final c(J)Z
    .locals 6

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return p0

    nop

    nop

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
    iget-wide v4, p0, Loeq;->a:J

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return v1

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x6

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_a
    iget-wide v0, p0, Loeq;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_8

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
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_1
    goto/32 :goto_b

    nop

    :goto_10
    sub-long/2addr v2, v4

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

    :goto_11
    const/4 v1, 0x1

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

    nop

    :goto_12
    cmp-long v0, v0, v2

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_13
    cmp-long p0, v2, p1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_14
    const v1, 0x1d

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-gtz p0, :cond_2

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

    :cond_2
    goto/32 :goto_0

    nop

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_17
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_18
    const-wide/16 v2, 0x0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d(J)Z
    .locals 4

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_1
    cmp-long v0, v0, v2

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_4
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_5
    goto/32 :goto_7

    nop

    nop

    :goto_6
    goto/32 :goto_f

    nop

    :goto_7
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-wide p1, p0, Loeq;->a:J

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x7

    nop

    nop

    goto/32 :goto_c

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

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_b
    iget-wide v0, p0, Loeq;->a:J

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

    nop

    nop

    :goto_c
    const v1, 0x1e

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

    nop

    :goto_d
    if-gez v0, :cond_1

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

    nop

    nop

    nop

    :goto_e
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
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

    nop

    :goto_11
    sub-long v0, p1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_12
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_13
    const-wide/32 v2, 0x3819369

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public final declared-synchronized e()I
    .locals 4

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2
    add-int v0, v0, v1

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
    const v1, 0x1d

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    throw v0

    nop

    :goto_5
    goto/32 :goto_c

    nop

    nop

    :goto_6
    monitor-exit p0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_a
    monitor-enter p0

    nop

    nop

    :try_start_0
    iget-wide v0, p0, Loeq;->a:J

    nop

    nop

    nop

    nop

    nop

    const-wide/16 v2, 0x0

    nop

    cmp-long v2, v0, v2

    nop

    nop

    nop

    if-eqz v2, :cond_1

    nop

    nop

    nop

    invoke-static {v0, v1}, Lcom/google/android/apps/camera/jni/eis/EisNative;->getNumStrips(J)I

    move-result v0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_b
    return v0

    nop

    nop

    nop

    nop

    nop

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    nop

    const-string v1, "getNumStrips() called on a released EisNativeWrapper."

    nop

    nop

    nop

    nop

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_4

    nop

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

    nop
.end method

.method public final declared-synchronized f()V
    .locals 5

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    const v1, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_3

    nop

    :goto_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6
    throw v0

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    nop

    const-string v1, "release() called on a released EisNativeWrapper."

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    monitor-exit p0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_9
    monitor-enter p0

    nop

    nop

    nop

    :try_start_1
    iget-wide v0, p0, Loeq;->a:J

    nop

    nop

    nop

    nop

    nop

    const-wide/16 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    cmp-long v4, v0, v2

    nop

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_1

    nop

    nop

    invoke-static {v0, v1}, Lcom/google/android/apps/camera/jni/eis/EisNative;->releaseHandle(J)V

    iput-wide v2, p0, Loeq;->a:J

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_b
    monitor-exit p0

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

    :goto_c
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

    nop
.end method

.method public final declared-synchronized g(II)V
    .locals 4

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_3

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    nop

    :cond_0
    :try_start_0
    new-instance p1, Ljava/lang/IllegalStateException;

    nop

    const-string p2, "setActiveArraySize() called on a released EisNativeWrapper."

    nop

    nop

    nop

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_2

    nop

    :goto_6
    throw p1

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    monitor-enter p0

    nop

    nop

    :try_start_1
    iget-wide v0, p0, Loeq;->a:J

    nop

    nop

    nop

    nop

    nop

    const-wide/16 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    cmp-long v2, v0, v2

    nop

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_0

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/apps/camera/jni/eis/EisNative;->setActiveArraySize(JII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0xe

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_a
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_4

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

    goto/32 :goto_5

    nop

    nop

    :goto_c
    const v0, 0x1f

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized h(II)V
    .locals 4

    goto/32 :goto_4

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-wide v0, p0, Loeq;->a:J

    nop

    nop

    const-wide/16 v2, 0x0

    nop

    nop

    nop

    cmp-long v2, v0, v2

    nop

    nop

    nop

    if-eqz v2, :cond_1

    nop

    nop

    nop

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/apps/camera/jni/eis/EisNative;->setCropWindowSize(JII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    throw p1

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0xa

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

    :goto_5
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_6
    monitor-exit p0

    nop

    nop

    goto/32 :goto_b

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

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_8
    const v1, 0xb

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    :goto_a
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    const-string p2, "setCropWindowSize() called on a released EisNativeWrapper."

    nop

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_2

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized i(JJJJJJJJIIZZFFFFFFIII[F)Z
    .locals 34

    goto/32 :goto_8

    nop

    nop

    :goto_0
    move-object/from16 v1, p0

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

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_6

    nop

    nop

    :goto_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    throw v0

    nop

    :goto_6
    goto/32 :goto_7

    nop

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_8
    const v0, 0x19

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_9
    return v0

    nop

    nop

    nop

    nop

    nop

    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    nop

    const-string v2, "getTransformBetweenFrames() called on a released EisNativeWrapper."

    nop

    nop

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x11

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    :goto_c
    monitor-exit p0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    iget-wide v2, v1, Loeq;->a:J

    nop

    const-wide/16 v4, 0x0

    nop

    nop

    nop

    nop

    cmp-long v0, v2, v4

    nop

    nop

    if-eqz v0, :cond_0

    nop

    move-wide/from16 v4, p1

    nop

    nop

    nop

    move-wide/from16 v6, p3

    nop

    nop

    nop

    move-wide/from16 v8, p5

    nop

    nop

    nop

    nop

    move-wide/from16 v10, p7

    nop

    nop

    move-wide/from16 v12, p9

    nop

    nop

    move-wide/from16 v14, p11

    nop

    nop

    move-wide/from16 v16, p13

    nop

    nop

    move-wide/from16 v18, p15

    nop

    move/from16 v20, p17

    nop

    nop

    nop

    nop

    nop

    move/from16 v21, p18

    nop

    move/from16 v22, p19

    nop

    nop

    nop

    move/from16 v23, p20

    nop

    nop

    nop

    move/from16 v24, p21

    nop

    nop

    nop

    move/from16 v25, p22

    nop

    nop

    nop

    nop

    move/from16 v26, p23

    nop

    nop

    nop

    move/from16 v27, p24

    nop

    nop

    nop

    move/from16 v28, p25

    nop

    nop

    move/from16 v29, p26

    nop

    nop

    nop

    nop

    move/from16 v30, p27

    nop

    move/from16 v31, p28

    nop

    nop

    move/from16 v32, p29

    nop

    nop

    move-object/from16 v33, p30

    nop

    nop

    nop

    invoke-static/range {v2 .. v33}, Lcom/google/android/apps/camera/jni/eis/EisNative;->getTransformBetweenFrames(JJJJJJJJJIIZZFFFFFFIII[F)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_c

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized j(FFFJ)V
    .locals 7

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x17

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1
    throw p1

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3
    monitor-enter p0

    nop

    :try_start_0
    iget-wide v0, p0, Loeq;->a:J

    nop

    nop

    nop

    nop

    const-wide/16 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    cmp-long v2, v0, v2

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_1

    nop

    nop

    nop

    nop

    move v2, p1

    nop

    move v3, p2

    nop

    nop

    nop

    nop

    nop

    move v4, p3

    nop

    nop

    move-wide v5, p4

    nop

    nop

    nop

    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/camera/jni/eis/EisNative;->processGyro(JFFFJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

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

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_6
    add-int v0, v0, v1

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

    :goto_7
    goto/32 :goto_b

    nop

    :goto_8
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    nop

    const-string p2, "processGyro() called on a released EisNativeWrapper."

    nop

    nop

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1

    nop

    nop

    :goto_a
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_3

    nop

    nop

    :goto_c
    const v1, 0xd

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

.method public final declared-synchronized k(FFJI)V
    .locals 7

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x19

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

    :goto_2
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-wide v0, p0, Loeq;->a:J

    nop

    nop

    nop

    nop

    nop

    const-wide/16 v2, 0x0

    nop

    nop

    nop

    cmp-long v2, v0, v2

    nop

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_1

    nop

    nop

    move v2, p1

    nop

    nop

    nop

    nop

    nop

    move v3, p2

    nop

    nop

    move-wide v4, p3

    nop

    nop

    move v6, p5

    nop

    nop

    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/camera/jni/eis/EisNative;->processLensOffset(JFFJI)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_4
    goto/32 :goto_9

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    nop

    nop

    const-string p2, "processLensOffset() called on a released EisNativeWrapper."

    nop

    nop

    nop

    nop

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    monitor-exit p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_8

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

    :goto_9
    goto/32 :goto_c

    nop

    nop

    :goto_a
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

    :goto_b
    const v0, 0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_5

    nop

    nop
.end method

.method public final declared-synchronized l()V
    .locals 4

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x10

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop

    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    const-string v1, "setStabilizationStrength() called on a released EisNativeWrapper."

    nop

    nop

    nop

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_6

    nop

    nop

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

    :goto_5
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6
    throw v0

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x1e

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
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_a
    add-int v0, v0, v1

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

    :goto_b
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    iget-wide v0, p0, Loeq;->a:J

    nop

    nop

    nop

    nop

    nop

    const-wide/16 v2, 0x0

    nop

    nop

    cmp-long v2, v0, v2

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_0

    nop

    nop

    nop

    const/high16 v2, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/camera/jni/eis/EisNative;->setStabilizationStrength(JF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1

    nop

    nop

    :goto_c
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_4

    nop
.end method

.method public final declared-synchronized m(IIJJJJFF[FIZ)J
    .locals 26

    goto/32 :goto_9

    nop

    nop

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

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0xc

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    throw v0

    nop

    nop

    :goto_3
    goto/32 :goto_6

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

    goto/32 :goto_d

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_5
    move-object/from16 v1, p0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_d

    nop

    :goto_7
    add-int v0, v0, v1

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

    :goto_8
    monitor-enter p0

    nop

    nop

    nop

    :try_start_0
    iget-wide v2, v1, Loeq;->a:J

    nop

    nop

    nop

    const-wide/16 v4, 0x0

    nop

    nop

    nop

    cmp-long v0, v2, v4

    nop

    nop

    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    const/16 v21, 0x0

    nop

    const/16 v22, 0x0

    nop

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    const/high16 v16, 0x3f800000    # 1.0f

    nop

    nop

    nop

    const/16 v18, 0x1

    nop

    nop

    nop

    nop

    const-wide/16 v19, 0x0

    nop

    nop

    nop

    nop

    nop

    move/from16 v5, p1

    nop

    move/from16 v6, p2

    nop

    nop

    move-wide/from16 v7, p3

    nop

    nop

    nop

    nop

    move-wide/from16 v9, p5

    nop

    move-wide/from16 v11, p7

    nop

    nop

    nop

    move-wide/from16 v13, p9

    nop

    nop

    nop

    move/from16 v15, p11

    nop

    move/from16 v17, p12

    nop

    nop

    nop

    nop

    move-object/from16 v23, p13

    nop

    move/from16 v24, p14

    nop

    nop

    move/from16 v25, p15

    nop

    nop

    nop

    nop

    invoke-static/range {v2 .. v25}, Lcom/google/android/apps/camera/jni/eis/EisNative;->processFrame(J[BIIJJJJFFFZJ[F[F[FIZ)J

    move-result-wide v2

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    const v0, 0xe

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    return-wide v2

    nop

    nop

    nop

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    nop

    const-string v2, "processFrame() called on a released EisNativeWrapper."

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_b
    monitor-exit p0

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

    :goto_c
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop
.end method
