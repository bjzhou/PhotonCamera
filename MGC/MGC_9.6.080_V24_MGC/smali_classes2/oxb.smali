.class public final Loxb;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Z

.field public c:B

.field public d:Lolx;

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>()V
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

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Loxc;
    .locals 8

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-boolean v6, p0, Loxb;->b:Z

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    iget v5, p0, Loxb;->f:I

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_3
    if-eq v0, v1, :cond_0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_4
    invoke-direct/range {v2 .. v7}, Loxc;-><init>(ILjava/lang/String;IZLolx;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_5
    move-object v2, v0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v1, 0x7

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_12

    nop

    :goto_9
    throw p0

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_b
    iget-byte v0, p0, Loxb;->c:B

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_d
    if-nez v4, :cond_2

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_e
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    goto/32 :goto_9

    nop

    nop

    :goto_f
    iget-object v7, p0, Loxb;->d:Lolx;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_10
    return-object v0

    nop

    :goto_11
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_a

    nop

    nop

    :goto_13
    goto/32 :goto_b

    nop

    nop

    :goto_14
    const v0, 0x16

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_15
    const v1, 0x1b

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget v3, p0, Loxb;->e:I

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_17
    new-instance v0, Loxc;

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_18
    goto/32 :goto_13

    nop

    :goto_19
    iget-object v4, p0, Loxb;->a:Ljava/lang/String;

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_1a
    if-nez v7, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_3
    goto/32 :goto_17

    nop

    nop

    nop
.end method

.method public final b(I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    int-to-byte p1, p1

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

    nop

    :goto_1
    iput p1, p0, Loxb;->f:I

    nop

    nop

    goto/32 :goto_5

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

    nop

    :goto_3
    or-int/lit8 p1, p1, 0x2

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

    :goto_4
    iput-byte p1, p0, Loxb;->c:B

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_5
    iget-byte p1, p0, Loxb;->c:B

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c(I)V
    .locals 0

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    iput-byte p1, p0, Loxb;->c:B

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

    :goto_2
    or-int/lit8 p1, p1, 0x1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    int-to-byte p1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    iget-byte p1, p0, Loxb;->c:B

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

    :goto_5
    iput p1, p0, Loxb;->e:I

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

    nop
.end method
