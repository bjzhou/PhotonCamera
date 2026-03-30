.class final Lqkk;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:J

.field public final c:I

.field public final d:I

.field public e:J


# direct methods
.method public constructor <init>(Landroid/media/AudioFormat;)V
    .locals 4

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-wide/32 v2, 0x3b9aca00

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x20

    nop

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

    :goto_3
    int-to-long v0, v0

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

    :goto_4
    iput p1, p0, Lqkk;->c:I

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    const-wide/16 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v0

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

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_9

    nop

    nop

    :goto_c
    goto/32 :goto_a

    nop

    nop

    :goto_d
    iput-wide v2, p0, Lqkk;->b:J

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_e
    new-instance p1, Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_10
    iput v0, p0, Lqkk;->d:I

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_11
    invoke-static {p1}, Lqkk;->a(Landroid/media/AudioFormat;)I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_12
    iput-object p1, p0, Lqkk;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_14
    iput-wide v0, p0, Lqkk;->e:J

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p1}, Landroid/media/AudioFormat;->getChannelCount()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_17
    div-long/2addr v2, v0

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

    :goto_18
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop
.end method

.method public static a(Landroid/media/AudioFormat;)I
    .locals 4

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x5

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

    :goto_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_2
    if-ne v0, v3, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v2, 0x4

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

    :goto_4
    return v2

    nop

    nop

    :goto_5
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_6
    const/16 v2, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_7
    return v1

    nop

    :goto_8
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_9
    const-string v1, "Bad audio format "

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-ne v0, v2, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v3, 0x3

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-eq v0, v2, :cond_2

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

    :cond_2
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_11
    if-ne v0, v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v1, 0x5

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_13
    if-ne v0, v2, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/16 :goto_5

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_b

    nop

    nop

    :goto_16
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_17
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_8

    nop

    nop

    :goto_1a
    goto/32 :goto_10

    nop

    nop

    :goto_1b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1c
    const/4 v1, 0x2

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    throw v0

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_4

    nop

    nop

    :goto_1f
    if-lez v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_19

    nop

    :goto_20
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop
.end method
