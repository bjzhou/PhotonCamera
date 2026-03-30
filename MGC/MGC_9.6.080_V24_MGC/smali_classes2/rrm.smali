.class public final Lrrm;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Z

.field public b:Lj$/time/Duration;

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:Lj$/time/Duration;

.field public i:B

.field private j:I


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

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Lrrn;
    .locals 11

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    move-object v1, v0

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1
    iget v6, p0, Lrrm;->d:I

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_3
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lrrm;->h:Lj$/time/Duration;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    if-eq v0, v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    :cond_1
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_6
    new-instance v0, Lrrn;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_7
    iget-object v10, p0, Lrrm;->h:Lj$/time/Duration;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    const v0, 0x1a

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct/range {v1 .. v10}, Lrrn;-><init>(IZLj$/time/Duration;IIIIILj$/time/Duration;)V

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_a
    iget v7, p0, Lrrm;->e:I

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :cond_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/16 v1, 0x7f

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    goto/32 :goto_14

    nop

    nop

    :goto_e
    iget-object v0, p0, Lrrm;->b:Lj$/time/Duration;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_f
    iget v8, p0, Lrrm;->f:I

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-byte v0, p0, Lrrm;->i:B

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

    nop

    :goto_11
    goto/32 :goto_15

    nop

    :goto_12
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_14
    throw p0

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_16
    add-int v0, v0, v1

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

    nop

    :goto_17
    const v1, 0x1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget v9, p0, Lrrm;->g:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_19
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1a
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_11

    nop

    :goto_1b
    iget-boolean v3, p0, Lrrm;->a:Z

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_1c
    iget v2, p0, Lrrm;->j:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v4, p0, Lrrm;->b:Lj$/time/Duration;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1e
    iget v5, p0, Lrrm;->c:I

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

    :goto_1f
    return-object v0

    nop

    :goto_20
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b(I)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    int-to-byte p1, p1

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

    :goto_1
    iget-byte p1, p0, Lrrm;->i:B

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
    iput-byte p1, p0, Lrrm;->i:B

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput p1, p0, Lrrm;->j:I

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_5
    or-int/lit8 p1, p1, 0x1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method
