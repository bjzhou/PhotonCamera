.class public final Leis;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field final a:Landroid/graphics/RectF;

.field public final b:Landroid/graphics/Paint;

.field final c:Landroid/graphics/Paint;

.field public final d:Landroid/graphics/Paint;

.field public e:F

.field public f:F

.field public g:F

.field h:F

.field i:[I

.field j:I

.field k:F

.field l:F

.field m:F

.field final n:F

.field o:F

.field p:I

.field q:I


# direct methods
.method public constructor <init>()V
    .locals 4

    goto/32 :goto_d

    nop

    nop

    :goto_0
    goto/32 :goto_9

    nop

    :goto_1
    goto/32 :goto_20

    nop

    nop

    :goto_2
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_4
    new-instance v2, Landroid/graphics/Paint;

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

    :goto_5
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object v0, p0, Leis;->a:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_7
    const/high16 v3, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_28

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

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_b
    sget-object p0, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_c
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput v3, p0, Leis;->h:F

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_f
    iput v3, p0, Leis;->e:F

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_11
    invoke-virtual {v2, p0}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_12
    iput-object v2, p0, Leis;->d:Landroid/graphics/Paint;

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

    :goto_13
    new-instance v1, Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_16

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

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

    :goto_16
    invoke-virtual {v1, p0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_17
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    goto/32 :goto_6

    nop

    nop

    :goto_18
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const v1, 0xb

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_1c
    const/high16 v3, 0x40a00000    # 5.0f

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1d
    const/16 v3, 0xff

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1f
    new-instance v0, Landroid/graphics/Paint;

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_21
    iput v3, p0, Leis;->f:F

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_22
    iput v3, p0, Leis;->p:I

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iput-object v0, p0, Leis;->b:Landroid/graphics/Paint;

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

    :goto_24
    new-instance v0, Landroid/graphics/RectF;

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_25
    iput-object v1, p0, Leis;->c:Landroid/graphics/Paint;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_26
    iput v3, p0, Leis;->g:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_23

    nop

    nop

    :goto_2b
    iput v3, p0, Leis;->n:F

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()I
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    array-length p0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    iget v0, p0, Leis;->j:I

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    return v0

    nop

    nop

    nop

    :goto_4
    rem-int/2addr v0, p0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_5
    iget-object p0, p0, Leis;->i:[I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method final b()I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    iget p0, p0, Leis;->j:I

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Leis;->i:[I

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

    :goto_2
    return p0

    nop

    nop

    nop

    :goto_3
    aget p0, v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method final c()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    iput v0, p0, Leis;->k:F

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
    const/4 v0, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput v0, p0, Leis;->e:F

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3
    iput v0, p0, Leis;->l:F

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

    :goto_4
    iput v0, p0, Leis;->g:F

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput v0, p0, Leis;->m:F

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_7
    iput v0, p0, Leis;->f:F

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
.end method

.method public final d(I)V
    .locals 1

    goto/32 :goto_1

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
    iput p1, p0, Leis;->j:I

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Leis;->i:[I

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    aget p1, v0, p1

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
    iput p1, p0, Leis;->q:I

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e([I)V
    .locals 0

    goto/32 :goto_2

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

    nop

    nop

    :goto_1
    const/4 p1, 0x0

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

    :goto_2
    iput-object p1, p0, Leis;->i:[I

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1}, Leis;->d(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final f()V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Leis;->g:F

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    iput v0, p0, Leis;->k:F

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput v0, p0, Leis;->l:F

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
    iget v0, p0, Leis;->f:F

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    iget v0, p0, Leis;->e:F

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput v0, p0, Leis;->m:F

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method
