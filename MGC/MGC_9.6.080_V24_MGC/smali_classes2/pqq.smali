.class public final Lpqq;
.super Lpqr;
.source "PG"


# instance fields
.field public a:D

.field public b:D

.field public c:D

.field public d:D

.field public e:D

.field public f:[D


# direct methods
.method public constructor <init>(D)V
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-wide p1, p0, Lpqq;->c:D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    iput-wide p1, p0, Lpqq;->d:D

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Lpqr;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

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

    :goto_4
    const/4 v0, 0x4

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    iput-object v0, p0, Lpqq;->f:[D

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

    :goto_6
    new-array v0, v0, [D

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x12

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

    :goto_8
    iput-wide p1, p0, Lpqq;->b:D

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0xb

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_a
    iput-wide p1, p0, Lpqq;->e:D

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_11

    nop

    :goto_c
    iput-wide v0, p0, Lpqq;->a:D

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

    :goto_d
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_12

    nop

    :goto_f
    return-void

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_10

    nop

    :goto_12
    goto/32 :goto_2

    nop

    nop

    :goto_13
    add-int v0, v0, v1

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
.end method


# virtual methods
.method public final a()Lpqr;
    .locals 5

    goto/32 :goto_7

    nop

    nop

    :goto_0
    iget-object p0, p0, Lpqq;->f:[D

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-wide v1, p0, Lpqq;->e:D

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_2
    iget-wide v3, p0, Lpqq;->d:D

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_3
    iput-wide v3, v0, Lpqq;->a:D

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_5
    iget-wide v3, p0, Lpqq;->a:D

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

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_12

    nop

    nop

    :goto_9
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_a
    iput-wide v3, v0, Lpqq;->b:D

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-wide v3, p0, Lpqq;->b:D

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
    iput-wide v1, v0, Lpqq;->e:D

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_d
    iput-wide v3, v0, Lpqq;->d:D

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_9

    nop

    nop

    :goto_f
    iput-object p0, v0, Lpqq;->f:[D

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
    add-int v0, v0, v1

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

    :goto_11
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-wide v3, p0, Lpqq;->c:D

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

    :goto_14
    invoke-direct {v0, v1, v2}, Lpqq;-><init>(D)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_15
    const v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_16
    new-instance v0, Lpqq;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_17
    iput-wide v3, v0, Lpqq;->c:D

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method
