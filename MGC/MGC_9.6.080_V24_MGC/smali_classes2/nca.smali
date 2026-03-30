.class public abstract Lnca;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field protected final c:Ldso;

.field protected final d:Landroid/content/Context;

.field protected final e:Lprb;

.field protected final f:Landroid/content/res/Resources;

.field protected final g:Lnne;

.field protected final h:Landroid/graphics/RectF;

.field public i:Lnbh;

.field public j:Landroid/util/Size;

.field public k:Landroid/util/Size;

.field protected final l:Z

.field protected final m:Lhoh;


# direct methods
.method private final 166277962e993c138a6b1f0c9b571cc0m()F
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

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

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_4
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_6
    invoke-virtual {v0, v1}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object v0

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

    nop

    :goto_7
    iget-object p0, p0, Lnca;->m:Lhoh;

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

    :goto_8
    const v0, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

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

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lnca;->m:Lhoh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {p0, v0}, Lhmd;->a(Lhoh;I)Lhmc;

    move-result-object p0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    sget-object v1, Lhmd;->a:Lhmo;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_10
    iget p0, p0, Lhmc;->d:F

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0x15

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_12
    check-cast v0, Ljava/lang/Integer;

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
.end method

.method private final 33f5b80483094659737b73d90f80a8a4m(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 5

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    iget v1, v1, Landroid/graphics/RectF;->left:F

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_1
    const v0, 0x20

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_2
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_e

    nop

    nop

    :goto_4
    iget-object v2, p0, Lnca;->h:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_5
    iget-object v1, p0, Lnca;->h:Landroid/graphics/RectF;

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_6
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    goto/32 :goto_5

    nop

    nop

    :goto_7
    invoke-static {v1, p1}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_2

    nop

    :goto_9
    iget v4, p1, Landroid/graphics/RectF;->right:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-object v0

    nop

    :goto_c
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v1, p0, Lnca;->h:Landroid/graphics/RectF;

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

    :goto_e
    new-instance v0, Landroid/graphics/RectF;

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

    :goto_f
    iget-object v1, p0, Lnca;->h:Landroid/graphics/RectF;

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

    nop

    nop

    :goto_10
    iget-object v3, p0, Lnca;->h:Landroid/graphics/RectF;

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_11
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_12
    iget v2, v2, Landroid/graphics/RectF;->top:F

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_13
    iget v3, p1, Landroid/graphics/RectF;->top:F

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-eqz v1, :cond_1

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_3

    nop

    :goto_16
    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_17
    iget-object p0, p0, Lnca;->h:Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-eqz v1, :cond_2

    nop

    goto/32 :goto_22

    nop

    nop

    :cond_2
    goto/32 :goto_21

    nop

    nop

    :goto_19
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1a
    invoke-virtual {v1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1b
    iget v3, v3, Landroid/graphics/RectF;->right:F

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1c
    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_1d
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_1f
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_20
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_21
    goto :goto_1d

    nop

    :goto_22
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

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

    :goto_24
    iget v2, p1, Landroid/graphics/RectF;->left:F

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

    :goto_25
    const v1, 0x9

    nop

    nop

    goto/32 :goto_a

    nop

    nop
.end method

.method public constructor <init>(Lnbr;Ldso;Landroid/content/Context;Lprb;)V
    .locals 1

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1, p2}, Lhoh;->p(Lhmn;)Z

    move-result p1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p1, Lnbr;->g:Lnbh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    iput-object v0, p0, Lnca;->g:Lnne;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p3, p0, Lnca;->d:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_4
    iget-object v0, p1, Lnbr;->b:Landroid/util/Size;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p1, Lnbr;->d:Landroid/util/Size;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_6
    iput-object v0, p0, Lnca;->i:Lnbh;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_7
    sget-object p2, Lhmq;->bP:Lhmn;

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

    :goto_8
    iput-object p2, p0, Lnca;->c:Ldso;

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

    :goto_9
    iput-boolean p1, p0, Lnca;->l:Z

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

    :goto_a
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_b
    iput-object p1, p0, Lnca;->h:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_c
    check-cast p1, Lfwm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_d
    iput-object v0, p0, Lnca;->j:Landroid/util/Size;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_e
    move-object p1, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_f
    iput-object p4, p0, Lnca;->e:Lprb;

    nop

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

    :goto_10
    invoke-interface {p1}, Lfwm;->b()Lhoh;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iput-object p2, p0, Lnca;->f:Landroid/content/res/Resources;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    nop

    nop

    nop

    :goto_13
    iget-object p1, p1, Lnbr;->f:Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_14
    iput-object v0, p0, Lnca;->k:Landroid/util/Size;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_15
    iput-object p1, p0, Lnca;->m:Lhoh;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v0, p1, Lnbr;->h:Lnne;

    nop

    goto/32 :goto_2

    nop

    nop
.end method


# virtual methods
.method public abstract A(Landroid/view/View;)V
.end method

.method public abstract B(Landroid/view/View;)V
.end method

.method public abstract C(Landroid/view/View;)V
.end method

.method public abstract D()V
.end method

.method public abstract E(Landroid/view/View;)V
.end method

.method public abstract F(Landroid/view/View;)V
.end method

.method public abstract G(Landroid/view/View;)V
.end method

.method public H(Landroid/view/View;)V
    .locals 3

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v2, p0, Lnca;->c:Ldso;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1}, Lnca;->A(Landroid/view/View;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x4

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v2, p0, Lnca;->c:Ldso;

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

    :goto_6
    invoke-virtual {v2, v0, v1}, Ldso;->v(IF)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_7
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_9

    nop

    :goto_9
    goto/32 :goto_16

    nop

    nop

    :goto_a
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v2, v0, v1}, Ldso;->u(IF)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_c
    cmpl-float v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_e
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_f
    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result v0

    nop

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
    invoke-virtual {v2, v0, v1}, Ldso;->w(IF)V

    :goto_11
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-boolean v0, p0, Lnca;->l:Z

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

    nop

    :goto_15
    return-void

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v2, p0, Lnca;->c:Ldso;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_18
    const v1, 0x1b

    nop

    goto/32 :goto_12

    nop

    nop

    nop
.end method

.method public abstract I(I)V
.end method

.method public abstract J(Landroid/view/View;)V
.end method

.method public abstract K(Landroid/view/View;)V
.end method

.method public abstract L(Landroid/view/View;)V
.end method

.method public abstract M()Z
.end method

.method public O(Landroid/view/View;)V
    .locals 7

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lnca;->k:Landroid/util/Size;

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

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0xc

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

    :goto_7
    invoke-virtual/range {v1 .. v6}, Lnca;->V(IIIII)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v5, 0x0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_f

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_13

    nop

    nop

    :goto_e
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_10
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_12
    const v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_13
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_14
    move-object v1, p0

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
.end method

.method protected final P(Landroid/graphics/RectF;)I
    .locals 4

    goto/32 :goto_b

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

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

    :goto_3
    if-ltz v0, :cond_0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    :goto_6
    if-eqz v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_2
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/high16 v3, 0x40000000    # 2.0f

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

    :goto_8
    return p0

    nop

    nop

    :goto_9
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_a
    div-float/2addr v2, v3

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_b
    const v0, 0x1f

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_d
    sub-float/2addr v0, p0

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

    :goto_e
    iget-object v0, p0, Lnca;->h:Landroid/graphics/RectF;

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

    :goto_f
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_11
    iget v0, v0, Landroid/graphics/RectF;->right:F

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return p0

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_14
    invoke-direct {p0}, Lnca;->166277962e993c138a6b1f0c9b571cc0m()F

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_15
    add-float/2addr v1, v2

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_16
    invoke-direct {p0, p1}, Lnca;->33f5b80483094659737b73d90f80a8a4m(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_17
    iget p0, p1, Landroid/graphics/RectF;->left:F

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

    :goto_18
    add-float/2addr v0, p0

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_19
    iget v1, p1, Landroid/graphics/RectF;->left:F

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

    :goto_1a
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    add-int v0, v0, v1

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

    :goto_1c
    float-to-int p0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1d
    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    cmpg-float v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method

.method protected final Q(Landroid/graphics/RectF;)I
    .locals 4

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-float/2addr v1, v2

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_2
    sub-float/2addr p1, v0

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_3
    iget-object v0, p0, Lnca;->h:Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_5
    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    div-float/2addr v2, v3

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

    :goto_9
    sub-float/2addr v0, p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_a
    float-to-int p0, p1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_b
    iget p1, p1, Landroid/graphics/RectF;->right:F

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_c
    if-gtz v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1b

    nop

    :goto_e
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_f
    const v0, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_10
    const/4 p0, 0x0

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_11
    invoke-direct {p0}, Lnca;->166277962e993c138a6b1f0c9b571cc0m()F

    move-result p0

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_12
    const/high16 v3, 0x40000000    # 2.0f

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_13
    if-eqz v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_14
    cmpl-float v0, v0, v1

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

    :goto_15
    iget v1, p1, Landroid/graphics/RectF;->left:F

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

    nop

    nop

    :goto_16
    iget v0, v0, Landroid/graphics/RectF;->left:F

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-direct {p0, p1}, Lnca;->33f5b80483094659737b73d90f80a8a4m(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

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

    nop

    :goto_19
    const v1, 0x10

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1a
    return p0

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1c
    return p0

    nop

    nop

    :goto_1d
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1e
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop
.end method

.method public final R(F)I
    .locals 1

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    float-to-int p0, p0

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

    :goto_1
    return p0

    nop

    nop

    :goto_2
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3
    int-to-float p0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    mul-float/2addr p0, p1

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
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return p0

    nop

    nop

    nop

    :goto_7
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Lnca;->k:Landroid/util/Size;

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

    :goto_9
    invoke-virtual {p0, v0}, Lnca;->b(Landroid/util/Size;)I

    move-result p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method protected final S(IIII)V
    .locals 11

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v9, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    :goto_2
    goto/32 :goto_11

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

    :goto_4
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v4, 0x6

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_6
    move v5, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_7
    move v2, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual/range {v0 .. v5}, Ldso;->j(IIIII)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_a
    move v1, p1

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

    nop

    nop

    :goto_b
    goto/32 :goto_2

    nop

    :goto_c
    iget-object v5, p0, Lnca;->c:Ldso;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_e
    const v0, 0xb

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual/range {v5 .. v10}, Ldso;->j(IIIII)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_10
    move v10, p4

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v0, p0, Lnca;->c:Ldso;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    move v8, p2

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_13
    move v7, v9

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v1, 0xa

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_15
    move v3, p2

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_17
    move v6, p1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop
.end method

.method protected final T(IIII)V
    .locals 11

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual/range {v0 .. v5}, Ldso;->j(IIIII)V

    goto/32 :goto_10

    nop

    nop

    :goto_1
    move v5, p3

    nop

    goto/32 :goto_0

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
    goto/32 :goto_15

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_5
    const/4 v7, 0x4

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_3

    nop

    nop

    :goto_7
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual/range {v5 .. v10}, Ldso;->j(IIIII)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    move v8, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_a
    const/4 v4, 0x3

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_c
    const/4 v9, 0x4

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Lnca;->c:Ldso;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_f
    const v1, 0x3

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v5, p0, Lnca;->c:Ldso;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_11
    move v1, p1

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

    nop

    :goto_12
    move v3, p2

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_13
    const/4 v2, 0x3

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_14
    const v0, 0x13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_15
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_16
    move v10, p4

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_17
    move v6, p1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final U(IIIII)V
    .locals 6

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lnca;->c:Ldso;

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

    :goto_1
    iget-object v0, p0, Lnca;->c:Ldso;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p3, p1, p2}, Ldso;->l(II)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_4
    invoke-virtual {p0, p1, p4, p2, p2}, Lnca;->S(IIII)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    :goto_6
    move v3, p4

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_13

    nop

    nop

    :goto_a
    iget-object p3, p0, Lnca;->c:Ldso;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0, p1, p3}, Ldso;->k(II)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_d
    move v5, p5

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_e
    move v1, p1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual/range {v0 .. v5}, Ldso;->j(IIIII)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0x6

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0x16

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_14
    const/4 p2, 0x0

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

    :goto_15
    const/4 v2, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v4, 0x3

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop
.end method

.method protected final V(IIIII)V
    .locals 7

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual/range {v0 .. v5}, Ldso;->j(IIIII)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2
    move v2, p1

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

    nop

    :goto_3
    goto/32 :goto_8

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v1, p1, p3}, Ldso;->k(II)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    :goto_9
    iget-object v1, p0, Lnca;->c:Ldso;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_a
    move v6, p5

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v1, p0, Lnca;->c:Ldso;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_c
    move v2, v4

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Lnca;->c:Ldso;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_f
    iget-object v1, p0, Lnca;->c:Ldso;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual/range {v1 .. v6}, Ldso;->j(IIIII)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v4, 0x0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    move v1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_14
    const/4 v3, 0x3

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

    :goto_15
    const/4 v4, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_16
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_3

    nop

    :goto_17
    const/4 v5, 0x3

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const v1, 0x1b

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_19
    const v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    move v5, p4

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1b
    invoke-virtual {v1, p1, p2}, Ldso;->l(II)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final W(IIIII)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, v0}, Ldso;->l(II)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p2, p1, v0}, Ldso;->k(II)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1, v0, p4, p5}, Lnca;->T(IIII)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x0

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
    invoke-virtual {p0, p1, v0, p2, p3}, Lnca;->S(IIII)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lnca;->c:Ldso;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    iget-object p2, p0, Lnca;->c:Ldso;

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
.end method

.method protected final X()Z
    .locals 3

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

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

    :goto_1
    const v0, 0x7

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

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

    :goto_3
    iget-object v0, p0, Lnca;->m:Lhoh;

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_5
    return p0

    nop

    nop

    :goto_6
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v1, v2}, Lhoh;->p(Lhmn;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_8
    const v1, 0x15

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_6

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_b
    iget-object p0, p0, Lnca;->g:Lnne;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v1, p0, Lnca;->m:Lhoh;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0, v0, v1}, Lnne;->a(ZZ)Z

    move-result p0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_e
    sget-object v2, Lhmq;->bR:Lhmn;

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

    nop

    :goto_f
    invoke-virtual {v0, v1}, Lhoh;->p(Lhmn;)Z

    move-result v0

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

    :goto_10
    goto/32 :goto_a

    nop

    :goto_11
    sget-object v1, Lhmq;->bQ:Lhmn;

    nop

    goto/32 :goto_f

    nop

    nop
.end method

.method protected final Y()Z
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p0

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

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lnca;->d:Landroid/content/Context;

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

    :goto_3
    check-cast p0, Landroid/app/Activity;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method protected b(Landroid/util/Size;)I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    :goto_1
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p0

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
.end method

.method public h(Landroid/util/Size;Landroid/util/Size;)Landroid/graphics/Rect;
    .locals 5

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_3b

    nop

    :goto_1
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_2
    double-to-int p1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p0

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-object p2

    nop

    :goto_5
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_6
    int-to-float v2, p0

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_7
    int-to-float v0, v0

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p0

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_a
    mul-float/2addr p0, v2

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_b
    div-float/2addr v1, v2

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_c
    if-ltz p2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_1a

    nop

    nop

    :goto_d
    if-lez v0, :cond_1

    nop

    goto/32 :goto_1f

    nop

    :cond_1
    goto/32 :goto_1e

    nop

    :goto_e
    int-to-float v1, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_f
    add-int/2addr v0, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_10
    int-to-float v2, v2

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_11
    goto/16 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_36

    nop

    nop

    :goto_13
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v0

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

    nop

    :goto_14
    int-to-float v2, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v1

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_16
    add-int/2addr p0, v3

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const v1, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_19
    double-to-int p1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    div-float/2addr p0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1d
    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_5

    nop

    :goto_1f
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_20
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_21
    div-float/2addr v1, v2

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    float-to-int p0, p0

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_48

    nop

    nop

    :goto_24
    sub-int/2addr p1, p0

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_25
    int-to-float v1, v1

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_26
    int-to-float v0, v0

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_27
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-direct {p2, v3, p1, p0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/32 :goto_4

    nop

    nop

    :goto_29
    int-to-float p0, p0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    float-to-int v0, v0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2c
    div-float/2addr p0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2d
    int-to-float v3, v3

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2e
    div-float/2addr v3, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_2f
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_30
    const v0, 0xc

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_31
    mul-float/2addr v0, v2

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    int-to-double p1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_33
    move v3, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_35
    sub-int/2addr p1, v0

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_36
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_37
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_38
    int-to-float p0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_39
    int-to-float p2, p2

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_3a
    move p1, v4

    nop

    :goto_3b
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    move v4, v3

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    div-double/2addr p1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_3e
    cmpg-float p2, v1, v3

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    div-float/2addr v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_40
    int-to-float v1, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_41
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_42
    if-ltz p0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_44
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    int-to-float v1, v1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_46
    int-to-float v2, v0

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

    :goto_47
    div-double/2addr p1, v1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_48
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    cmpg-float p0, p0, v1

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_4b
    new-instance p2, Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    int-to-double p1, p1

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop
.end method

.method public n()V
    .locals 0

    goto/32 :goto_0

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
.end method

.method public abstract o(Landroid/view/View;)V
.end method

.method public abstract p(Landroid/view/View;)V
.end method

.method public abstract q(Landroid/view/View;)V
.end method

.method public abstract r(Landroid/view/View;)V
.end method

.method public abstract s(I)V
.end method

.method public abstract t(Landroid/view/View;)V
.end method

.method public abstract u(Landroid/view/View;)V
.end method

.method public abstract v(I)V
.end method

.method public abstract w(Landroid/view/View;)V
.end method

.method public abstract x(Landroid/view/View;)V
.end method

.method public abstract y(Landroid/view/View;)V
.end method

.method public abstract z(Landroid/view/View;)V
.end method
