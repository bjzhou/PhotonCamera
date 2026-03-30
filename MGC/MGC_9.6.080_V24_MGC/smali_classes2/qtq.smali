.class public final Lqtq;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:[S

.field public final b:[S

.field public final c:I

.field public d:J


# direct methods
.method public constructor <init>(Ljava/util/Random;)V
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    or-int/2addr p1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    new-array v1, v0, [S

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-wide v0, p0, Lqtq;->d:J

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0xb

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
    const v1, 0x2

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

    :goto_6
    and-int/2addr p1, v0

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

    :goto_7
    if-lez v0, :cond_0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    :goto_8
    iput p1, p0, Lqtq;->c:I

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_9
    const v0, -0x2020203

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_a
    invoke-static {v0}, La;->au(Z)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x1010101

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const-wide/16 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_d
    new-array v0, v0, [S

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_10
    const/16 v0, 0x100

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v0, 0x1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_12
    iput-object v0, p0, Lqtq;->b:[S

    nop

    nop

    nop

    goto/32 :goto_16

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

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_18

    nop

    :goto_15
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p1}, Ljava/util/Random;->nextInt()I

    move-result p1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_17
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_19
    iput-object v1, p0, Lqtq;->a:[S

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop
.end method
