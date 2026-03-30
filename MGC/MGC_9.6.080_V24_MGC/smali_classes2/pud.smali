.class final Lpud;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field final a:[B

.field final b:I

.field final c:I

.field final d:I


# direct methods
.method public constructor <init>([BIII)V
    .locals 4

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_0
    if-le p4, v2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_2
    iput p2, p0, Lpud;->d:I

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

    :goto_3
    goto/16 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_5
    if-gtz p4, :cond_1

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

    :cond_1
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v0, v1}, Lrrf;->m(ZLjava/lang/Object;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_7
    iput p4, p0, Lpud;->c:I

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_8
    const v1, 0x11

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_1d

    nop

    :cond_2
    goto/32 :goto_1c

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_b
    goto :goto_f

    nop

    :goto_c
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput-object p1, p0, Lpud;->a:[B

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_e
    move v2, v1

    nop

    nop

    :goto_f
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_10
    invoke-static {v2, v3}, Lrrf;->m(ZLjava/lang/Object;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_11
    move v2, v1

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_15

    nop

    nop

    :goto_13
    const v0, 0xc

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_1d

    nop

    nop

    :goto_15
    const-string v3, "offset must be >= 0"

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_16
    array-length v2, p1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_17
    move v2, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_18
    move v2, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_19
    const-string v3, "length must be > 0"

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_1a
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_1b
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    :goto_1c
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const-string v1, "length exceeds data length"

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iput p3, p0, Lpud;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_20
    move v0, v1

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_1e

    nop

    nop

    :goto_22
    if-gez p3, :cond_3

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_3
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_23
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

    :goto_24
    goto :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_20

    nop

    nop

    :goto_26
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-static {v2, v3}, Lrrf;->m(ZLjava/lang/Object;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method final a()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget p0, p0, Lpud;->c:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int/lit8 p0, p0, 0x2

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
    return p0

    nop
.end method
