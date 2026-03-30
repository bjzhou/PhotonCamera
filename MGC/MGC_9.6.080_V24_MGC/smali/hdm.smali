.class public final Lhdm;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field final a:I

.field b:I

.field c:I

.field d:I

.field e:J


# direct methods
.method public constructor <init>(I)V
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

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput p1, p0, Lhdm;->a:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    goto/32 :goto_2

    nop

    nop

    :goto_0
    iget v3, p1, Lhdm;->a:I

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
    iget-wide p0, p1, Lhdm;->e:J

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

    :goto_2
    const v0, 0x11

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_3
    if-eqz p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_5
    if-eqz v1, :cond_1

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_1
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return v0

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget v3, p1, Lhdm;->b:I

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_9
    if-eq v1, v3, :cond_2

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1f

    nop

    nop

    :goto_a
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-eq v1, v3, :cond_3

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget v1, p0, Lhdm;->c:I

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-eq p1, p0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_4
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_5

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :cond_5
    goto/32 :goto_21

    nop

    :goto_f
    iget v3, p1, Lhdm;->d:I

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_10
    cmp-long p0, v3, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_11
    instance-of v1, p1, Lhdm;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_12
    return v2

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_14
    return v0

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-wide v3, p0, Lhdm;->e:J

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

    :goto_18
    iget v1, p0, Lhdm;->a:I

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_19
    if-eq v1, v3, :cond_6

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_17

    nop

    nop

    :goto_1a
    if-eq v1, v3, :cond_7

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1b
    const v1, 0x6

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v2, 0x0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget v3, p1, Lhdm;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1e
    check-cast p1, Lhdm;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget v1, p0, Lhdm;->d:I

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_20
    const/4 v0, 0x1

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

    :goto_21
    goto/32 :goto_25

    nop

    nop

    :goto_22
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_23
    iget v1, p0, Lhdm;->b:I

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_24
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop
.end method
