.class public final Ljtq;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:S

.field private d:I

.field private e:I

.field private f:I

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

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
.end method


# virtual methods
.method public final a()Ljtr;
    .locals 12

    goto/32 :goto_12

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

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_3
    return-object v0

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    iget-boolean v11, p0, Ljtq;->k:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget v2, p0, Ljtq;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-boolean v9, p0, Ljtq;->i:Z

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_a
    const/16 v1, 0xfff

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    goto/32 :goto_1a

    nop

    nop

    :goto_e
    iget-boolean v8, p0, Ljtq;->h:Z

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

    :goto_f
    iget-boolean v7, p0, Ljtq;->g:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget v4, p0, Ljtq;->e:I

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct/range {v1 .. v11}, Ljtr;-><init>(IIILjava/lang/String;IZZZZZ)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_12
    const v0, 0x1b

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_13
    iget-boolean v10, p0, Ljtq;->j:Z

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

    :goto_14
    iget v6, p0, Ljtq;->f:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_15
    iget v3, p0, Ljtq;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_16
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_17
    if-eq v0, v1, :cond_2

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_2
    goto/32 :goto_1c

    nop

    nop

    :goto_18
    new-instance v0, Ljtr;

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

    :goto_19
    move-object v1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1a
    throw p0

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v0, p0, Ljtq;->b:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v5, p0, Ljtq;->b:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1e
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1f
    iget-short v0, p0, Ljtq;->c:S

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop
.end method

.method public final b(Z)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    or-int/lit8 p1, p1, 0x40

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    iput-short p1, p0, Ljtq;->c:S

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

    :goto_2
    return-void

    nop

    :goto_3
    iput-boolean p1, p0, Ljtq;->g:Z

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
    iget-short p1, p0, Ljtq;->c:S

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

    :goto_5
    int-to-short p1, p1

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
.end method

.method public final c(Z)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-boolean p1, p0, Ljtq;->h:Z

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    iput-short p1, p0, Ljtq;->c:S

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2
    int-to-short p1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    or-int/lit16 p1, p1, 0x80

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-short p1, p0, Ljtq;->c:S

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop
.end method

.method public final d(Z)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    int-to-short p1, p1

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    iput-boolean p1, p0, Ljtq;->i:Z

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    iput-short p1, p0, Ljtq;->c:S

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    iget-short p1, p0, Ljtq;->c:S

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5
    or-int/lit16 p1, p1, 0x100

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final e(Z)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iput-boolean p1, p0, Ljtq;->k:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    int-to-short p1, p1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    or-int/lit16 p1, p1, 0x400

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    iget-short p1, p0, Ljtq;->c:S

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    :goto_5
    iput-short p1, p0, Ljtq;->c:S

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop
.end method

.method public final f(Z)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    iget-short p1, p0, Ljtq;->c:S

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    iput-short p1, p0, Ljtq;->c:S

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

    :goto_3
    int-to-short p1, p1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    iput-boolean p1, p0, Ljtq;->j:Z

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    or-int/lit16 p1, p1, 0x200

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method public final g(I)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    iget-short p1, p0, Ljtq;->c:S

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    int-to-short p1, p1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-short p1, p0, Ljtq;->c:S

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    iput p1, p0, Ljtq;->d:I

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

    nop

    nop

    :goto_4
    or-int/lit8 p1, p1, 0x2

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop
.end method

.method public final h(I)V
    .locals 0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    or-int/lit8 p1, p1, 0x4

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
    iput-short p1, p0, Ljtq;->c:S

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    iget-short p1, p0, Ljtq;->c:S

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

    :goto_4
    int-to-short p1, p1

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

    :goto_5
    iput p1, p0, Ljtq;->e:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public final i(I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    or-int/lit8 p1, p1, 0x8

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    iput p1, p0, Ljtq;->f:I

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    iput-short p1, p0, Ljtq;->c:S

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-short p1, p0, Ljtq;->c:S

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    int-to-short p1, p1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method
