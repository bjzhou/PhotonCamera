.class public final Lmzc;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Landroid/graphics/RectF;

.field public b:Lj$/util/Optional;

.field private c:Lmzf;

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:F

.field private i:F

.field private j:F

.field private k:B

.field private l:I


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lmzd;)V
    .locals 1

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_0
    iput-object v0, p0, Lmzc;->f:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1
    iget v0, p1, Lmzd;->g:F

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_2
    iget v0, p1, Lmzd;->i:F

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_3
    iget v0, p1, Lmzd;->k:I

    nop

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

    :goto_4
    iget-object v0, p1, Lmzd;->e:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput v0, p0, Lmzc;->d:I

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_7
    iget v0, p1, Lmzd;->h:F

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

    :goto_8
    iget-object v0, p1, Lmzd;->d:Landroid/graphics/RectF;

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_9
    iget-object p1, p1, Lmzd;->j:Lj$/util/Optional;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_a
    iput v0, p0, Lmzc;->e:I

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput v0, p0, Lmzc;->h:F

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

    :goto_c
    iput-object v0, p0, Lmzc;->b:Lj$/util/Optional;

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

    :goto_d
    iput v0, p0, Lmzc;->i:F

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_e
    iget-object v0, p1, Lmzd;->f:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_f
    iget v0, p1, Lmzd;->b:I

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

    :goto_10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_11
    iput-object v0, p0, Lmzc;->a:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_12
    iget-object v0, p1, Lmzd;->a:Lmzf;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_13
    iput-object v0, p0, Lmzc;->g:Ljava/lang/String;

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

    :goto_14
    const/16 p1, 0x1f

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iput-byte p1, p0, Lmzc;->k:B

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_16
    iget v0, p1, Lmzd;->c:I

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

    :goto_17
    iput-object p1, p0, Lmzc;->b:Lj$/util/Optional;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iput-object v0, p0, Lmzc;->c:Lmzf;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_19
    iput v0, p0, Lmzc;->l:I

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1a
    return-void

    nop

    nop

    nop

    nop

    :goto_1b
    iput v0, p0, Lmzc;->j:F

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop
.end method

.method public constructor <init>([B)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object p1

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
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lmzc;->b:Lj$/util/Optional;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method


# virtual methods
.method public final a()Lmzd;
    .locals 14

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_0
    if-nez v3, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget v12, p0, Lmzc;->j:F

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_2
    iget v9, p0, Lmzc;->l:I

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_3
    if-nez v8, :cond_1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v8, p0, Lmzc;->g:Ljava/lang/String;

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

    :goto_5
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_11

    nop

    :goto_6
    iget v5, p0, Lmzc;->e:I

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct/range {v2 .. v13}, Lmzd;-><init>(Lmzf;IILandroid/graphics/RectF;Ljava/lang/String;Ljava/lang/String;IFFFLj$/util/Optional;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget v10, p0, Lmzc;->h:F

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_b
    if-nez v7, :cond_3

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_4

    nop

    nop

    :goto_c
    iget-object v6, p0, Lmzc;->a:Landroid/graphics/RectF;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_d
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v13, p0, Lmzc;->b:Lj$/util/Optional;

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_f
    const/16 v1, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_10
    const v1, 0x11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1c

    nop

    nop

    :goto_13
    move-object v2, v0

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

    :goto_14
    new-instance p0, Ljava/lang/IllegalStateException;

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

    :goto_15
    iget-object v3, p0, Lmzc;->c:Lmzf;

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

    :goto_16
    iget-object v7, p0, Lmzc;->f:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-nez v9, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_18
    new-instance v0, Lmzd;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_19
    iget v11, p0, Lmzc;->i:F

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1a
    if-nez v6, :cond_5

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

    :cond_5
    goto/32 :goto_16

    nop

    nop

    :goto_1b
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_1c
    iget-byte v0, p0, Lmzc;->k:B

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1d
    throw p0

    nop

    nop

    :goto_1e
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_20
    goto/32 :goto_12

    nop

    nop

    :goto_21
    const v0, 0x15

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

    :goto_22
    iget v4, p0, Lmzc;->d:I

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

    :goto_23
    if-eq v0, v1, :cond_6

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_15

    nop

    nop

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
    throw p0

    nop

    nop

    :goto_1
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 p0, 0x0

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

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput p1, p0, Lmzc;->l:I

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public final c(I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    int-to-byte p1, p1

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
    iget-byte p1, p0, Lmzc;->k:B

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    iput p1, p0, Lmzc;->d:I

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
    return-void

    nop

    nop

    nop

    :goto_4
    iput-byte p1, p0, Lmzc;->k:B

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    or-int/lit8 p1, p1, 0x1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lmzc;->f:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    iput-object p1, p0, Lmzc;->g:Ljava/lang/String;

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

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final f(F)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    iget-byte p1, p0, Lmzc;->k:B

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    iput-byte p1, p0, Lmzc;->k:B

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    or-int/lit8 p1, p1, 0x4

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

    :goto_4
    iput p1, p0, Lmzc;->h:F

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    int-to-byte p1, p1

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
.end method

.method public final g(F)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iput p1, p0, Lmzc;->i:F

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    or-int/lit8 p1, p1, 0x8

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    iget-byte p1, p0, Lmzc;->k:B

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

    :goto_3
    iput-byte p1, p0, Lmzc;->k:B

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
    int-to-byte p1, p1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop
.end method

.method public final h(I)V
    .locals 0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-byte p1, p0, Lmzc;->k:B

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

    :goto_1
    or-int/lit8 p1, p1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    iput-byte p1, p0, Lmzc;->k:B

    nop

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

    :goto_4
    int-to-byte p1, p1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    iput p1, p0, Lmzc;->e:I

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final i(F)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    iget-byte p1, p0, Lmzc;->k:B

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2
    iput-byte p1, p0, Lmzc;->k:B

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput p1, p0, Lmzc;->j:F

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

    :goto_4
    int-to-byte p1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_5
    or-int/lit8 p1, p1, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method public final j(Lmzf;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lmzc;->c:Lmzf;

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
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop
.end method
