.class public final Lnpb;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field private final a:Lnpa;

.field private final b:Lnpa;

.field private final c:Lnpa;

.field private final d:Lnpa;

.field private e:F

.field private f:F

.field private g:F

.field private h:F


# direct methods
.method public constructor <init>(I)V
    .locals 1

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Lnpa;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    new-instance v0, Lnpa;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object v0, p0, Lnpb;->b:Lnpa;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0, p1}, Lnpa;-><init>(I)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput v0, p0, Lnpb;->f:F

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

    nop

    :goto_5
    iput-object v0, p0, Lnpb;->a:Lnpa;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_6
    iput-object v0, p0, Lnpb;->c:Lnpa;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_7
    invoke-direct {v0, p1}, Lnpa;-><init>(I)V

    goto/32 :goto_5

    nop

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

    nop

    :goto_9
    const/4 v0, 0x0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_a
    iput v0, p0, Lnpb;->e:F

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_b
    invoke-direct {v0, p1}, Lnpa;-><init>(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_c
    new-instance v0, Lnpa;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_d
    iput-object v0, p0, Lnpb;->d:Lnpa;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_e
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_f
    iput v0, p0, Lnpb;->h:F

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput v0, p0, Lnpb;->g:F

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {v0, p1}, Lnpa;-><init>(I)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    new-instance v0, Lnpa;

    nop

    goto/32 :goto_11

    nop

    nop
.end method


# virtual methods
.method public final a()Landroid/graphics/RectF;
    .locals 6

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const v0, 0x6

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1
    iget v1, p0, Lnpb;->e:F

    nop

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

    :goto_2
    iget p0, p0, Lnpb;->h:F

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

    :goto_3
    iget v5, p0, Lnpb;->f:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    sub-float v3, v5, p0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    new-instance v0, Landroid/graphics/RectF;

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

    :goto_6
    invoke-direct {v0, v4, v3, v1, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_e

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_9
    sub-float v4, v1, v2

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_a
    add-float/2addr v1, v2

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

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

    :goto_c
    iget v2, p0, Lnpb;->g:F

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

    :goto_d
    goto/32 :goto_15

    nop

    nop

    :goto_e
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_10
    div-float/2addr v2, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_11
    div-float/2addr p0, v3

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

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_13
    const/high16 v3, 0x40000000    # 2.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_14
    return-object v0

    nop

    nop

    :goto_15
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    add-float/2addr v5, p0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b(Landroid/graphics/RectF;)V
    .locals 2

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_0
    iget v0, v0, Lnpa;->a:F

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lnpb;->a:Lnpa;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_3
    iget-object v0, p0, Lnpb;->d:Lnpa;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lnpb;->b:Lnpa;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Lnpb;->b:Lnpa;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0, v1}, Lnpa;->a(F)V

    goto/32 :goto_16

    nop

    nop

    :goto_8
    iput v0, p0, Lnpb;->g:F

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget v0, v0, Lnpa;->a:F

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_a
    iget-object p1, p0, Lnpb;->d:Lnpa;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_b
    iget p1, p1, Lnpa;->a:F

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_c
    iput v0, p0, Lnpb;->f:F

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0, v1}, Lnpa;->a(F)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_e
    const v0, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_f
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

    :goto_10
    iput p1, p0, Lnpb;->h:F

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

    :goto_11
    if-lez v0, :cond_0

    nop

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

    :goto_12
    iget-object v0, p0, Lnpb;->a:Lnpa;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_21

    nop

    nop

    :goto_15
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v0, p0, Lnpb;->c:Lnpa;

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

    :goto_17
    invoke-virtual {v0, p1}, Lnpa;->a(F)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const v1, 0xf

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iput v0, p0, Lnpb;->e:F

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1b
    iget-object v0, p0, Lnpb;->c:Lnpa;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_15

    nop

    :goto_1e
    iget v0, v0, Lnpa;->a:F

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v0, v1}, Lnpa;->a(F)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_20
    return-void

    nop

    :goto_21
    goto/32 :goto_1d

    nop

    nop
.end method

.method public final c()V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Lnpa;->b()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Lnpa;->b()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lnpb;->c:Lnpa;

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

    :goto_3
    return-void

    nop

    :goto_4
    iget-object v0, p0, Lnpb;->a:Lnpa;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Lnpa;->b()V

    goto/32 :goto_8

    nop

    nop

    :goto_6
    iget-object p0, p0, Lnpb;->c:Lnpa;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lnpa;->b()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Lnpb;->a:Lnpa;

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
.end method
