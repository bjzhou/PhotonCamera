.class public Landroid/support/v7/widget/StaggeredGridLayoutManager;
.super Lly;

# interfaces
.implements Lmj;


# instance fields
.field private E:Z

.field private F:Lnb;

.field private final G:Landroid/graphics/Rect;

.field private final H:Lmy;

.field private I:Z

.field private J:[I

.field private final K:Ljava/lang/Runnable;

.field a:[Lnc;

.field public b:Llp;

.field c:Llp;

.field public d:Z

.field e:Z

.field f:I

.field g:I

.field h:Lakw;

.field private i:I

.field private j:I

.field private k:I

.field private final l:Lkv;

.field private m:Ljava/util/BitSet;

.field private n:I

.field private o:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    invoke-direct {p0}, Lly;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:I

    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    new-instance v0, Lakw;

    invoke-direct {v0}, Lakw;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Lakw;

    const/4 v0, 0x2

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->n:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->G:Landroid/graphics/Rect;

    new-instance v0, Lmy;

    invoke-direct {v0, p0}, Lmy;-><init>(Landroid/support/v7/widget/StaggeredGridLayoutManager;)V

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->H:Lmy;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->I:Z

    new-instance v2, Lnk;

    invoke-direct {v2, p0, v0}, Lnk;-><init>(Landroid/support/v7/widget/StaggeredGridLayoutManager;I)V

    iput-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->K:Ljava/lang/Runnable;

    invoke-static {p1, p2, p3, p4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->at(Landroid/content/Context;Landroid/util/AttributeSet;II)Llx;

    move-result-object p1

    iget p2, p1, Llx;->a:I

    if-eqz p2, :cond_1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid orientation."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 p3, 0x0

    invoke-virtual {p0, p3}, Lly;->N(Ljava/lang/String;)V

    iget p4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    if-eq p2, p4, :cond_2

    iput p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    iget-object p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Llp;

    iget-object p4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Llp;

    iput-object p4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Llp;

    iput-object p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Llp;

    invoke-virtual {p0}, Lly;->aP()V

    :cond_2
    iget p2, p1, Llx;->b:I

    invoke-virtual {p0, p3}, Lly;->N(Ljava/lang/String;)V

    iget p3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-eq p2, p3, :cond_4

    iget-object p3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Lakw;

    invoke-virtual {p3}, Lakw;->b()V

    invoke-virtual {p0}, Lly;->aP()V

    iput p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    new-instance p3, Ljava/util/BitSet;

    invoke-direct {p3, p2}, Ljava/util/BitSet;-><init>(I)V

    iput-object p3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Ljava/util/BitSet;

    iget p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    new-array p2, p2, [Lnc;

    iput-object p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Lnc;

    :goto_1
    iget p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v1, p2, :cond_3

    iget-object p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Lnc;

    new-instance p3, Lnc;

    invoke-direct {p3, p0, v1}, Lnc;-><init>(Landroid/support/v7/widget/StaggeredGridLayoutManager;I)V

    aput-object p3, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lly;->aP()V

    :cond_4
    iget-boolean p1, p1, Llx;->c:Z

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->G(Z)V

    new-instance p1, Lkv;

    invoke-direct {p1}, Lkv;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Lkv;

    iget p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    invoke-static {p0, p1}, Llp;->q(Lly;I)Llp;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Llp;

    iget p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    sub-int/2addr v0, p1

    invoke-static {p0, v0}, Llp;->q(Lly;I)Llp;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Llp;

    return-void
.end method

.method private final O(I)I
    .locals 3

    invoke-virtual {p0}, Lly;->aj()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-boolean p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    if-eqz p1, :cond_0

    return v2

    :cond_0
    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c()I

    move-result v0

    if-lt p1, v0, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    :goto_0
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    if-eq p1, v0, :cond_3

    return v1

    :cond_3
    return v2
.end method

.method private final P(Lml;)I
    .locals 6

    invoke-virtual {p0}, Lly;->aj()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Llp;

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->I:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->r(Z)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->I:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->I:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Let;->e(Lml;Llp;Landroid/view/View;Landroid/view/View;Lly;Z)I

    move-result p1

    return p1
.end method

.method private final T(Lml;)I
    .locals 7

    invoke-virtual {p0}, Lly;->aj()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Llp;

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->I:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->r(Z)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->I:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->I:Z

    iget-boolean v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v6}, Let;->f(Lml;Llp;Landroid/view/View;Landroid/view/View;Lly;ZZ)I

    move-result p1

    return p1
.end method

.method private final U(Lml;)I
    .locals 6

    invoke-virtual {p0}, Lly;->aj()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Llp;

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->I:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->r(Z)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->I:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->I:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Let;->g(Lml;Llp;Landroid/view/View;Landroid/view/View;Lly;Z)I

    move-result p1

    return p1
.end method

.method private final Y(Lmd;Lkv;Lml;)I
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Ljava/util/BitSet;

    iget v4, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v4, v6}, Ljava/util/BitSet;->set(IIZ)V

    iget-object v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Lkv;

    iget-boolean v3, v3, Lkv;->i:Z

    if-eqz v3, :cond_1

    iget v3, v2, Lkv;->e:I

    if-ne v3, v6, :cond_0

    const v3, 0x7fffffff

    goto :goto_0

    :cond_0
    const/high16 v3, -0x80000000

    goto :goto_0

    :cond_1
    iget v3, v2, Lkv;->e:I

    if-ne v3, v6, :cond_2

    iget v3, v2, Lkv;->g:I

    iget v8, v2, Lkv;->b:I

    add-int/2addr v3, v8

    goto :goto_0

    :cond_2
    iget v3, v2, Lkv;->f:I

    iget v8, v2, Lkv;->b:I

    sub-int/2addr v3, v8

    :goto_0
    iget v8, v2, Lkv;->e:I

    const/4 v9, 0x0

    :goto_1
    iget v10, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v9, v10, :cond_4

    iget-object v10, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Lnc;

    aget-object v10, v10, v9

    iget-object v10, v10, Lnc;->a:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_3

    iget-object v10, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Lnc;

    aget-object v10, v10, v9

    invoke-direct {v0, v10, v8, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bB(Lnc;II)V

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_4
    iget-boolean v8, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    if-eqz v8, :cond_5

    iget-object v8, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Llp;

    invoke-virtual {v8}, Llp;->f()I

    move-result v8

    goto :goto_2

    :cond_5
    iget-object v8, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Llp;

    invoke-virtual {v8}, Llp;->j()I

    move-result v8

    :goto_2
    const/4 v9, 0x0

    :goto_3
    invoke-virtual/range {p2 .. p3}, Lkv;->a(Lml;)Z

    move-result v10

    const/4 v11, -0x1

    if-eqz v10, :cond_22

    iget-object v10, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Lkv;

    iget-boolean v10, v10, Lkv;->i:Z

    if-nez v10, :cond_6

    iget-object v10, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Ljava/util/BitSet;

    invoke-virtual {v10}, Ljava/util/BitSet;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_22

    :cond_6
    iget v9, v2, Lkv;->c:I

    invoke-virtual {v1, v9}, Lmd;->b(I)Landroid/view/View;

    move-result-object v9

    iget v10, v2, Lkv;->c:I

    iget v12, v2, Lkv;->d:I

    add-int/2addr v10, v12

    iput v10, v2, Lkv;->c:I

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lmz;

    invoke-virtual {v10}, Llz;->a()I

    move-result v12

    iget-object v13, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Lakw;

    iget-object v13, v13, Lakw;->b:Ljava/lang/Object;

    if-eqz v13, :cond_8

    check-cast v13, [I

    array-length v14, v13

    if-lt v12, v14, :cond_7

    const/4 v13, -0x1

    goto :goto_4

    :cond_7
    aget v13, v13, v12

    goto :goto_4

    :cond_8
    const/4 v13, -0x1

    :goto_4
    if-ne v13, v11, :cond_9

    const/4 v14, 0x1

    goto :goto_5

    :cond_9
    const/4 v14, 0x0

    :goto_5
    if-eqz v14, :cond_12

    iget-boolean v13, v10, Lmz;->b:Z

    iget v13, v2, Lkv;->e:I

    invoke-direct {v0, v13}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bC(I)Z

    move-result v13

    if-eqz v13, :cond_a

    iget v13, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    add-int/2addr v13, v11

    const/4 v15, -0x1

    const/16 v16, -0x1

    goto :goto_6

    :cond_a
    iget v13, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    move v15, v13

    const/4 v13, 0x0

    const/16 v16, 0x1

    :goto_6
    iget v4, v2, Lkv;->e:I

    const/16 v17, 0x0

    if-ne v4, v6, :cond_e

    iget-object v4, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Llp;

    invoke-virtual {v4}, Llp;->j()I

    move-result v4

    const v11, 0x7fffffff

    :goto_7
    if-eq v13, v15, :cond_d

    iget-object v7, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Lnc;

    aget-object v7, v7, v13

    invoke-virtual {v7, v4}, Lnc;->d(I)I

    move-result v5

    if-ge v5, v11, :cond_b

    move/from16 v18, v5

    goto :goto_8

    :cond_b
    move/from16 v18, v11

    :goto_8
    if-ge v5, v11, :cond_c

    move-object/from16 v17, v7

    :cond_c
    add-int v13, v13, v16

    move/from16 v11, v18

    const/4 v5, 0x0

    goto :goto_7

    :cond_d
    move-object/from16 v4, v17

    goto :goto_b

    :cond_e
    iget-object v4, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Llp;

    invoke-virtual {v4}, Llp;->f()I

    move-result v4

    const/high16 v5, -0x80000000

    :goto_9
    if-eq v13, v15, :cond_11

    iget-object v7, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Lnc;

    aget-object v7, v7, v13

    invoke-virtual {v7, v4}, Lnc;->f(I)I

    move-result v11

    if-le v11, v5, :cond_f

    move/from16 v18, v11

    goto :goto_a

    :cond_f
    move/from16 v18, v5

    :goto_a
    if-le v11, v5, :cond_10

    move-object/from16 v17, v7

    :cond_10
    add-int v13, v13, v16

    move/from16 v5, v18

    goto :goto_9

    :cond_11
    move-object/from16 v4, v17

    :goto_b
    iget-object v5, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Lakw;

    invoke-virtual {v5, v12}, Lakw;->c(I)V

    iget-object v5, v5, Lakw;->b:Ljava/lang/Object;

    iget v7, v4, Lnc;->e:I

    check-cast v5, [I

    aput v7, v5, v12

    goto :goto_c

    :cond_12
    iget-object v4, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Lnc;

    aget-object v4, v4, v13

    :goto_c
    iput-object v4, v10, Lmz;->a:Lnc;

    iget v5, v2, Lkv;->e:I

    if-ne v5, v6, :cond_13

    invoke-virtual {v0, v9}, Lly;->az(Landroid/view/View;)V

    goto :goto_d

    :cond_13
    const/4 v5, 0x0

    invoke-virtual {v0, v9, v5}, Lly;->aA(Landroid/view/View;I)V

    :goto_d
    iget-boolean v5, v10, Lmz;->b:Z

    iget v5, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    if-ne v5, v6, :cond_14

    iget v5, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:I

    iget v7, v0, Lly;->y:I

    iget v11, v10, Lmz;->width:I

    const/4 v12, 0x0

    invoke-static {v5, v7, v12, v11, v12}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ak(IIIIZ)I

    move-result v5

    iget v7, v0, Lly;->B:I

    iget v11, v0, Lly;->z:I

    invoke-virtual/range {p0 .. p0}, Lly;->as()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lly;->ap()I

    move-result v13

    add-int/2addr v12, v13

    iget v13, v10, Lmz;->height:I

    invoke-static {v7, v11, v12, v13, v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ak(IIIIZ)I

    move-result v7

    invoke-direct {v0, v9, v5, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bD(Landroid/view/View;II)V

    goto :goto_e

    :cond_14
    iget v5, v0, Lly;->A:I

    iget v7, v0, Lly;->y:I

    invoke-virtual/range {p0 .. p0}, Lly;->aq()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lly;->ar()I

    move-result v12

    add-int/2addr v11, v12

    iget v12, v10, Lmz;->width:I

    invoke-static {v5, v7, v11, v12, v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ak(IIIIZ)I

    move-result v5

    iget v7, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:I

    iget v11, v0, Lly;->z:I

    iget v12, v10, Lmz;->height:I

    const/4 v13, 0x0

    invoke-static {v7, v11, v13, v12, v13}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ak(IIIIZ)I

    move-result v7

    invoke-direct {v0, v9, v5, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bD(Landroid/view/View;II)V

    :goto_e
    iget v5, v2, Lkv;->e:I

    if-ne v5, v6, :cond_16

    iget-boolean v5, v10, Lmz;->b:Z

    invoke-virtual {v4, v8}, Lnc;->d(I)I

    move-result v5

    iget-object v7, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Llp;

    invoke-virtual {v7, v9}, Llp;->b(Landroid/view/View;)I

    move-result v7

    add-int/2addr v7, v5

    if-eqz v14, :cond_15

    iget-boolean v11, v10, Lmz;->b:Z

    goto :goto_f

    :cond_15
    goto :goto_f

    :cond_16
    iget-boolean v5, v10, Lmz;->b:Z

    invoke-virtual {v4, v8}, Lnc;->f(I)I

    move-result v7

    iget-object v5, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Llp;

    invoke-virtual {v5, v9}, Llp;->b(Landroid/view/View;)I

    move-result v5

    sub-int v5, v7, v5

    if-eqz v14, :cond_17

    iget-boolean v11, v10, Lmz;->b:Z

    goto :goto_f

    :cond_17
    :goto_f
    iget-boolean v11, v10, Lmz;->b:Z

    iget v11, v2, Lkv;->e:I

    if-ne v11, v6, :cond_1b

    iget-object v11, v10, Lmz;->a:Lnc;

    invoke-static {v9}, Lnc;->n(Landroid/view/View;)Lmz;

    move-result-object v12

    iput-object v11, v12, Lmz;->a:Lnc;

    iget-object v13, v11, Lnc;->a:Ljava/util/ArrayList;

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v13, -0x80000000

    iput v13, v11, Lnc;->c:I

    iget-object v14, v11, Lnc;->a:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ne v14, v6, :cond_18

    iput v13, v11, Lnc;->b:I

    :cond_18
    invoke-virtual {v12}, Llz;->c()Z

    move-result v13

    if-nez v13, :cond_1a

    invoke-virtual {v12}, Llz;->b()Z

    move-result v12

    if-eqz v12, :cond_19

    goto :goto_10

    :cond_19
    const/high16 v13, -0x80000000

    goto :goto_11

    :cond_1a
    :goto_10
    iget v12, v11, Lnc;->d:I

    iget-object v13, v11, Lnc;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v13, v13, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Llp;

    invoke-virtual {v13, v9}, Llp;->b(Landroid/view/View;)I

    move-result v13

    add-int/2addr v12, v13

    iput v12, v11, Lnc;->d:I

    const/high16 v13, -0x80000000

    goto :goto_11

    :cond_1b
    iget-object v11, v10, Lmz;->a:Lnc;

    invoke-static {v9}, Lnc;->n(Landroid/view/View;)Lmz;

    move-result-object v12

    iput-object v11, v12, Lmz;->a:Lnc;

    iget-object v13, v11, Lnc;->a:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v13, v14, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/high16 v13, -0x80000000

    iput v13, v11, Lnc;->b:I

    iget-object v14, v11, Lnc;->a:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ne v14, v6, :cond_1c

    iput v13, v11, Lnc;->c:I

    :cond_1c
    invoke-virtual {v12}, Llz;->c()Z

    move-result v14

    if-nez v14, :cond_1d

    invoke-virtual {v12}, Llz;->b()Z

    move-result v12

    if-eqz v12, :cond_1e

    :cond_1d
    iget v12, v11, Lnc;->d:I

    iget-object v14, v11, Lnc;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v14, v14, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Llp;

    invoke-virtual {v14, v9}, Llp;->b(Landroid/view/View;)I

    move-result v14

    add-int/2addr v12, v14

    iput v12, v11, Lnc;->d:I

    :cond_1e
    :goto_11
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->L()Z

    move-result v11

    if-eqz v11, :cond_1f

    iget v11, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    if-ne v11, v6, :cond_1f

    iget-boolean v11, v10, Lmz;->b:Z

    iget-object v11, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Llp;

    invoke-virtual {v11}, Llp;->f()I

    move-result v11

    iget v12, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    const/4 v14, -0x1

    add-int/2addr v12, v14

    iget v14, v4, Lnc;->e:I

    sub-int/2addr v12, v14

    iget v14, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:I

    mul-int v12, v12, v14

    sub-int/2addr v11, v12

    iget-object v12, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Llp;

    invoke-virtual {v12, v9}, Llp;->b(Landroid/view/View;)I

    move-result v12

    sub-int v12, v11, v12

    goto :goto_12

    :cond_1f
    iget-boolean v11, v10, Lmz;->b:Z

    iget v11, v4, Lnc;->e:I

    iget v12, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:I

    mul-int v11, v11, v12

    iget-object v12, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Llp;

    invoke-virtual {v12}, Llp;->j()I

    move-result v12

    add-int/2addr v12, v11

    iget-object v11, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Llp;

    invoke-virtual {v11, v9}, Llp;->b(Landroid/view/View;)I

    move-result v11

    add-int/2addr v11, v12

    :goto_12
    iget v14, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    if-ne v14, v6, :cond_20

    invoke-static {v9, v12, v5, v11, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bj(Landroid/view/View;IIII)V

    goto :goto_13

    :cond_20
    invoke-static {v9, v5, v12, v7, v11}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bj(Landroid/view/View;IIII)V

    :goto_13
    iget-boolean v5, v10, Lmz;->b:Z

    iget-object v5, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Lkv;

    iget v5, v5, Lkv;->e:I

    invoke-direct {v0, v4, v5, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bB(Lnc;II)V

    iget-object v5, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Lkv;

    invoke-direct {v0, v1, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bv(Lmd;Lkv;)V

    iget-object v5, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Lkv;

    iget-boolean v5, v5, Lkv;->h:Z

    if-eqz v5, :cond_21

    invoke-virtual {v9}, Landroid/view/View;->hasFocusable()Z

    move-result v5

    if-eqz v5, :cond_21

    iget-boolean v5, v10, Lmz;->b:Z

    iget-object v5, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Ljava/util/BitSet;

    iget v4, v4, Lnc;->e:I

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v7}, Ljava/util/BitSet;->set(IZ)V

    goto :goto_14

    :cond_21
    :goto_14
    const/4 v5, 0x0

    const/4 v9, 0x1

    goto/16 :goto_3

    :cond_22
    if-nez v9, :cond_23

    iget-object v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Lkv;

    invoke-direct {v0, v1, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bv(Lmd;Lkv;)V

    :cond_23
    iget-object v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Lkv;

    iget v1, v1, Lkv;->e:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_24

    iget-object v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Llp;

    invoke-virtual {v1}, Llp;->j()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ad(I)I

    move-result v1

    iget-object v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Llp;

    invoke-virtual {v3}, Llp;->j()I

    move-result v3

    sub-int/2addr v3, v1

    goto :goto_15

    :cond_24
    iget-object v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Llp;

    invoke-virtual {v1}, Llp;->f()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->Z(I)I

    move-result v1

    iget-object v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Llp;

    invoke-virtual {v3}, Llp;->f()I

    move-result v3

    sub-int v3, v1, v3

    :goto_15
    if-lez v3, :cond_25

    iget v1, v2, Lkv;->b:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1

    :cond_25
    const/4 v1, 0x0

    return v1
.end method

.method private final Z(I)I
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Lnc;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lnc;->d(I)I

    move-result v0

    const/4 v1, 0x1

    :goto_0
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Lnc;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lnc;->d(I)I

    move-result v2

    if-le v2, v0, :cond_0

    move v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private final ad(I)I
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Lnc;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lnc;->f(I)I

    move-result v0

    const/4 v1, 0x1

    :goto_0
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Lnc;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lnc;->f(I)I

    move-result v2

    if-ge v2, v0, :cond_0

    move v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private final ae(Lmd;Lml;Z)V
    .locals 2

    const/high16 v0, -0x80000000

    invoke-direct {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->Z(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Llp;

    invoke-virtual {v0}, Llp;->f()I

    move-result v0

    sub-int/2addr v0, v1

    if-lez v0, :cond_1

    neg-int v1, v0

    invoke-virtual {p0, v1, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k(ILmd;Lml;)I

    move-result p1

    neg-int p1, p1

    if-eqz p3, :cond_1

    sub-int/2addr v0, p1

    if-lez v0, :cond_1

    iget-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Llp;

    invoke-virtual {p1, v0}, Llp;->n(I)V

    :cond_1
    return-void
.end method

.method private final af(Lmd;Lml;Z)V
    .locals 2

    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ad(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Llp;

    invoke-virtual {v0}, Llp;->j()I

    move-result v0

    sub-int/2addr v1, v0

    if-lez v1, :cond_1

    invoke-virtual {p0, v1, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k(ILmd;Lml;)I

    move-result p1

    sub-int/2addr v1, p1

    if-eqz p3, :cond_1

    if-lez v1, :cond_1

    iget-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Llp;

    neg-int p2, v1

    invoke-virtual {p1, p2}, Llp;->n(I)V

    :cond_1
    return-void
.end method

.method private final bA(ILml;)V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Lkv;

    const/4 v1, 0x0

    iput v1, v0, Lkv;->b:I

    iput p1, v0, Lkv;->c:I

    invoke-virtual {p0}, Lly;->aX()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget p2, p2, Lml;->a:I

    const/4 v0, -0x1

    if-eq p2, v0, :cond_2

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    if-lt p2, p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    if-ne v0, p1, :cond_1

    iget-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Llp;

    invoke-virtual {p1}, Llp;->k()I

    move-result p1

    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    iget-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Llp;

    invoke-virtual {p1}, Llp;->k()I

    move-result p1

    move p2, p1

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    const/4 p2, 0x0

    :goto_1
    iget-object v0, p0, Lly;->q:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_3

    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView;->i:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Lkv;

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Llp;

    invoke-virtual {v3}, Llp;->j()I

    move-result v3

    sub-int/2addr v3, p2

    iput v3, v0, Lkv;->f:I

    iget-object p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Lkv;

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Llp;

    invoke-virtual {v0}, Llp;->f()I

    move-result v0

    add-int/2addr v0, p1

    iput v0, p2, Lkv;->g:I

    goto :goto_2

    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Lkv;

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Llp;

    invoke-virtual {v3}, Llp;->e()I

    move-result v3

    add-int/2addr v3, p1

    iput v3, v0, Lkv;->g:I

    iget-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Lkv;

    neg-int p2, p2

    iput p2, p1, Lkv;->f:I

    :goto_2
    iget-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Lkv;

    iput-boolean v1, p1, Lkv;->h:Z

    iput-boolean v2, p1, Lkv;->a:Z

    iget-object p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Llp;

    invoke-virtual {p2}, Llp;->h()I

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Llp;

    invoke-virtual {p2}, Llp;->e()I

    move-result p2

    if-nez p2, :cond_4

    const/4 v1, 0x1

    goto :goto_3

    :cond_4
    :goto_3
    iput-boolean v1, p1, Lkv;->i:Z

    return-void
.end method

.method private final bB(Lnc;II)V
    .locals 3

    iget v0, p1, Lnc;->d:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne p2, v1, :cond_0

    invoke-virtual {p1}, Lnc;->e()I

    move-result p2

    add-int/2addr p2, v0

    if-gt p2, p3, :cond_1

    iget-object p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Ljava/util/BitSet;

    iget p1, p1, Lnc;->e:I

    invoke-virtual {p2, p1, v2}, Ljava/util/BitSet;->set(IZ)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lnc;->c()I

    move-result p2

    sub-int/2addr p2, v0

    if-lt p2, p3, :cond_1

    iget-object p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Ljava/util/BitSet;

    iget p1, p1, Lnc;->e:I

    invoke-virtual {p2, p1, v2}, Ljava/util/BitSet;->set(IZ)V

    return-void

    :cond_1
    return-void
.end method

.method private final bC(I)Z
    .locals 4

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_2

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    if-eq p1, v0, :cond_1

    return v3

    :cond_1
    return v2

    :cond_2
    if-eq p1, v1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    const/4 p1, 0x1

    :goto_1
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    if-eq p1, v0, :cond_4

    const/4 p1, 0x0

    goto :goto_2

    :cond_4
    const/4 p1, 0x1

    :goto_2
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->L()Z

    move-result v0

    if-ne p1, v0, :cond_5

    return v3

    :cond_5
    return v2
.end method

.method private final bD(Landroid/view/View;II)V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->G:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lly;->aB(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lmz;

    iget v1, v0, Lmz;->leftMargin:I

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->G:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v2, v0, Lmz;->rightMargin:I

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->G:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    invoke-static {p2, v1, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bE(III)I

    move-result p2

    iget v1, v0, Lmz;->topMargin:I

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->G:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget v2, v0, Lmz;->bottomMargin:I

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->G:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    invoke-static {p3, v1, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bE(III)I

    move-result p3

    invoke-virtual {p0, p1, p2, p3, v0}, Lly;->aZ(Landroid/view/View;IILlz;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    :cond_0
    return-void
.end method

.method private static final bE(III)I
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    return p0

    :cond_1
    :goto_0
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_3

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v1, v2, :cond_2

    goto :goto_1

    :cond_2
    return p0

    :cond_3
    :goto_1
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    sub-int/2addr p0, p1

    sub-int/2addr p0, p2

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method

.method private final bt(III)V
    .locals 7

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c()I

    move-result v0

    :goto_0
    add-int v1, p1, p2

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Lakw;

    iget-object v3, v2, Lakw;->b:Ljava/lang/Object;

    const/4 v4, -0x1

    if-nez v3, :cond_1

    goto/16 :goto_6

    :cond_1
    check-cast v3, [I

    array-length v3, v3

    if-ge p1, v3, :cond_a

    iget-object v3, v2, Lakw;->a:Ljava/lang/Object;

    if-nez v3, :cond_2

    const/4 v3, -0x1

    goto :goto_5

    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, v4

    :goto_1
    if-ltz v3, :cond_4

    iget-object v5, v2, Lakw;->a:Ljava/lang/Object;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lna;

    iget v6, v5, Lna;->a:I

    if-ne v6, p1, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_5

    iget-object v3, v2, Lakw;->a:Ljava/lang/Object;

    invoke-interface {v3, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_5
    iget-object v3, v2, Lakw;->a:Ljava/lang/Object;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v3, :cond_7

    iget-object v6, v2, Lakw;->a:Ljava/lang/Object;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lna;

    iget v6, v6, Lna;->a:I

    if-lt v6, p1, :cond_6

    goto :goto_4

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_7
    const/4 v5, -0x1

    :goto_4
    if-eq v5, v4, :cond_8

    iget-object v3, v2, Lakw;->a:Ljava/lang/Object;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lna;

    iget-object v6, v2, Lakw;->a:Ljava/lang/Object;

    invoke-interface {v6, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget v3, v3, Lna;->a:I

    goto :goto_5

    :cond_8
    const/4 v3, -0x1

    :goto_5
    if-ne v3, v4, :cond_9

    iget-object v3, v2, Lakw;->b:Ljava/lang/Object;

    check-cast v3, [I

    array-length v5, v3

    invoke-static {v3, p1, v5, v4}, Ljava/util/Arrays;->fill([IIII)V

    iget-object v2, v2, Lakw;->b:Ljava/lang/Object;

    check-cast v2, [I

    array-length v2, v2

    goto :goto_6

    :cond_9
    add-int/lit8 v3, v3, 0x1

    iget-object v5, v2, Lakw;->b:Ljava/lang/Object;

    check-cast v5, [I

    array-length v5, v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v2, v2, Lakw;->b:Ljava/lang/Object;

    check-cast v2, [I

    invoke-static {v2, p1, v3, v4}, Ljava/util/Arrays;->fill([IIII)V

    :cond_a
    :goto_6
    packed-switch p3, :pswitch_data_0

    goto/16 :goto_a

    :pswitch_0
    iget-object p3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Lakw;

    iget-object v2, p3, Lakw;->b:Ljava/lang/Object;

    if-eqz v2, :cond_e

    check-cast v2, [I

    array-length v2, v2

    if-ge p1, v2, :cond_e

    invoke-virtual {p3, v1}, Lakw;->c(I)V

    iget-object v2, p3, Lakw;->b:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, [I

    array-length v3, v3

    sub-int/2addr v3, p1

    sub-int/2addr v3, p2

    invoke-static {v2, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p3, Lakw;->b:Ljava/lang/Object;

    check-cast v2, [I

    array-length v3, v2

    sub-int v5, v3, p2

    invoke-static {v2, v5, v3, v4}, Ljava/util/Arrays;->fill([IIII)V

    iget-object v2, p3, Lakw;->a:Ljava/lang/Object;

    if-eqz v2, :cond_e

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, v4

    :goto_7
    if-ltz v2, :cond_e

    iget-object v3, p3, Lakw;->a:Ljava/lang/Object;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lna;

    iget v4, v3, Lna;->a:I

    if-ge v4, p1, :cond_b

    goto :goto_8

    :cond_b
    if-ge v4, v1, :cond_c

    iget-object v3, p3, Lakw;->a:Ljava/lang/Object;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_8

    :cond_c
    sub-int/2addr v4, p2

    iput v4, v3, Lna;->a:I

    :goto_8
    add-int/lit8 v2, v2, -0x1

    goto :goto_7

    :pswitch_1
    iget-object p3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Lakw;

    iget-object v2, p3, Lakw;->b:Ljava/lang/Object;

    if-eqz v2, :cond_e

    check-cast v2, [I

    array-length v2, v2

    if-ge p1, v2, :cond_e

    invoke-virtual {p3, v1}, Lakw;->c(I)V

    iget-object v2, p3, Lakw;->b:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, [I

    array-length v3, v3

    sub-int/2addr v3, p1

    sub-int/2addr v3, p2

    invoke-static {v2, p1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p3, Lakw;->b:Ljava/lang/Object;

    check-cast v2, [I

    invoke-static {v2, p1, v1, v4}, Ljava/util/Arrays;->fill([IIII)V

    iget-object v2, p3, Lakw;->a:Ljava/lang/Object;

    if-eqz v2, :cond_e

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, v4

    :goto_9
    if-ltz v2, :cond_e

    iget-object v3, p3, Lakw;->a:Ljava/lang/Object;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lna;

    iget v4, v3, Lna;->a:I

    if-lt v4, p1, :cond_d

    add-int/2addr v4, p2

    iput v4, v3, Lna;->a:I

    :cond_d
    add-int/lit8 v2, v2, -0x1

    goto :goto_9

    :cond_e
    :goto_a
    if-gt v1, v0, :cond_f

    return-void

    :cond_f
    iget-boolean p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    if-eqz p2, :cond_10

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c()I

    move-result p2

    goto :goto_b

    :cond_10
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i()I

    move-result p2

    :goto_b
    if-gt p1, p2, :cond_11

    invoke-virtual {p0}, Lly;->aP()V

    :cond_11
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final bu(Lmd;Lml;Z)V
    .locals 11

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->H:Lmy;

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->F:Lnb;

    const/4 v2, -0x1

    if-nez v1, :cond_0

    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:I

    if-eq v1, v2, :cond_1

    :cond_0
    invoke-virtual {p2}, Lml;->a()I

    move-result v1

    if-eqz v1, :cond_41

    :cond_1
    iget-boolean v1, v0, Lmy;->e:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:I

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->F:Lnb;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    :goto_0
    const/high16 v5, -0x80000000

    if-eqz v1, :cond_22

    invoke-virtual {v0}, Lmy;->a()V

    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->F:Lnb;

    if-eqz v6, :cond_9

    iget v7, v6, Lnb;->c:I

    if-lez v7, :cond_7

    iget v8, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ne v7, v8, :cond_6

    const/4 v6, 0x0

    :goto_1
    iget v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v6, v7, :cond_7

    iget-object v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Lnc;

    aget-object v7, v7, v6

    invoke-virtual {v7}, Lnc;->j()V

    iget-object v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->F:Lnb;

    iget-object v8, v7, Lnb;->d:[I

    aget v8, v8, v6

    if-eq v8, v5, :cond_5

    iget-boolean v7, v7, Lnb;->i:Z

    if-eqz v7, :cond_4

    iget-object v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Llp;

    invoke-virtual {v7}, Llp;->f()I

    move-result v7

    add-int/2addr v8, v7

    goto :goto_2

    :cond_4
    iget-object v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Llp;

    invoke-virtual {v7}, Llp;->j()I

    move-result v7

    add-int/2addr v8, v7

    goto :goto_2

    :cond_5
    :goto_2
    iget-object v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Lnc;

    aget-object v7, v7, v6

    invoke-virtual {v7, v8}, Lnc;->l(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {v6}, Lnb;->b()V

    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->F:Lnb;

    iget v7, v6, Lnb;->b:I

    iput v7, v6, Lnb;->a:I

    :cond_7
    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->F:Lnb;

    iget-boolean v7, v6, Lnb;->j:Z

    iput-boolean v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->E:Z

    iget-boolean v6, v6, Lnb;->h:Z

    invoke-virtual {p0, v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->G(Z)V

    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->by()V

    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->F:Lnb;

    iget v7, v6, Lnb;->a:I

    if-eq v7, v2, :cond_8

    iput v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:I

    iget-boolean v7, v6, Lnb;->i:Z

    iput-boolean v7, v0, Lmy;->c:Z

    goto :goto_3

    :cond_8
    iget-boolean v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    iput-boolean v7, v0, Lmy;->c:Z

    :goto_3
    iget v7, v6, Lnb;->e:I

    if-le v7, v4, :cond_a

    iget-object v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Lakw;

    iget-object v8, v6, Lnb;->f:[I

    iput-object v8, v7, Lakw;->b:Ljava/lang/Object;

    iget-object v6, v6, Lnb;->g:Ljava/util/List;

    iput-object v6, v7, Lakw;->a:Ljava/lang/Object;

    goto :goto_4

    :cond_9
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->by()V

    iget-boolean v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    iput-boolean v6, v0, Lmy;->c:Z

    :cond_a
    :goto_4
    iget-boolean v6, p2, Lml;->g:Z

    if-nez v6, :cond_1c

    iget v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:I

    if-ne v6, v2, :cond_b

    goto/16 :goto_c

    :cond_b
    if-ltz v6, :cond_1b

    invoke-virtual {p2}, Lml;->a()I

    move-result v7

    if-lt v6, v7, :cond_c

    goto/16 :goto_b

    :cond_c
    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->F:Lnb;

    if-eqz v6, :cond_e

    iget v7, v6, Lnb;->a:I

    if-eq v7, v2, :cond_e

    iget v6, v6, Lnb;->c:I

    if-gtz v6, :cond_d

    goto :goto_5

    :cond_d
    iput v5, v0, Lmy;->b:I

    iget v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:I

    iput v6, v0, Lmy;->a:I

    goto/16 :goto_10

    :cond_e
    :goto_5
    iget v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:I

    invoke-virtual {p0, v6}, Lly;->M(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_16

    iget-boolean v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    if-eqz v7, :cond_f

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i()I

    move-result v7

    goto :goto_6

    :cond_f
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c()I

    move-result v7

    :goto_6
    iput v7, v0, Lmy;->a:I

    iget v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-eq v7, v5, :cond_11

    iget-boolean v7, v0, Lmy;->c:Z

    if-eqz v7, :cond_10

    iget-object v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Llp;

    invoke-virtual {v7}, Llp;->f()I

    move-result v7

    iget v8, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Llp;

    invoke-virtual {v8, v6}, Llp;->a(Landroid/view/View;)I

    move-result v6

    sub-int/2addr v7, v6

    iput v7, v0, Lmy;->b:I

    goto/16 :goto_10

    :cond_10
    iget-object v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Llp;

    invoke-virtual {v7}, Llp;->j()I

    move-result v7

    iget v8, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    add-int/2addr v7, v8

    iget-object v8, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Llp;

    invoke-virtual {v8, v6}, Llp;->d(Landroid/view/View;)I

    move-result v6

    sub-int/2addr v7, v6

    iput v7, v0, Lmy;->b:I

    goto/16 :goto_10

    :cond_11
    iget-object v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Llp;

    invoke-virtual {v7, v6}, Llp;->b(Landroid/view/View;)I

    move-result v7

    iget-object v8, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Llp;

    invoke-virtual {v8}, Llp;->k()I

    move-result v8

    if-le v7, v8, :cond_13

    iget-boolean v6, v0, Lmy;->c:Z

    if-eqz v6, :cond_12

    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Llp;

    invoke-virtual {v6}, Llp;->f()I

    move-result v6

    goto :goto_7

    :cond_12
    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Llp;

    invoke-virtual {v6}, Llp;->j()I

    move-result v6

    :goto_7
    iput v6, v0, Lmy;->b:I

    goto/16 :goto_10

    :cond_13
    iget-object v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Llp;

    invoke-virtual {v7, v6}, Llp;->d(Landroid/view/View;)I

    move-result v7

    iget-object v8, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Llp;

    invoke-virtual {v8}, Llp;->j()I

    move-result v8

    sub-int/2addr v7, v8

    if-gez v7, :cond_14

    neg-int v6, v7

    iput v6, v0, Lmy;->b:I

    goto/16 :goto_10

    :cond_14
    iget-object v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Llp;

    invoke-virtual {v7}, Llp;->f()I

    move-result v7

    iget-object v8, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Llp;

    invoke-virtual {v8, v6}, Llp;->a(Landroid/view/View;)I

    move-result v6

    sub-int/2addr v7, v6

    if-gez v7, :cond_15

    iput v7, v0, Lmy;->b:I

    goto/16 :goto_10

    :cond_15
    iput v5, v0, Lmy;->b:I

    goto/16 :goto_10

    :cond_16
    iget v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:I

    iput v6, v0, Lmy;->a:I

    iget v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ne v7, v5, :cond_19

    invoke-direct {p0, v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->O(I)I

    move-result v6

    if-ne v6, v4, :cond_17

    const/4 v6, 0x1

    goto :goto_8

    :cond_17
    const/4 v6, 0x0

    :goto_8
    iput-boolean v6, v0, Lmy;->c:Z

    if-eqz v6, :cond_18

    iget-object v6, v0, Lmy;->g:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Llp;

    invoke-virtual {v6}, Llp;->f()I

    move-result v6

    goto :goto_9

    :cond_18
    iget-object v6, v0, Lmy;->g:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Llp;

    invoke-virtual {v6}, Llp;->j()I

    move-result v6

    :goto_9
    iput v6, v0, Lmy;->b:I

    goto :goto_a

    :cond_19
    iget-boolean v6, v0, Lmy;->c:Z

    if-eqz v6, :cond_1a

    iget-object v6, v0, Lmy;->g:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Llp;

    invoke-virtual {v6}, Llp;->f()I

    move-result v6

    sub-int/2addr v6, v7

    iput v6, v0, Lmy;->b:I

    goto :goto_a

    :cond_1a
    iget-object v6, v0, Lmy;->g:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Llp;

    invoke-virtual {v6}, Llp;->j()I

    move-result v6

    add-int/2addr v6, v7

    iput v6, v0, Lmy;->b:I

    :goto_a
    iput-boolean v4, v0, Lmy;->d:Z

    goto :goto_10

    :cond_1b
    :goto_b
    iput v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:I

    iput v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    :cond_1c
    :goto_c
    iget-boolean v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Z

    if-eqz v6, :cond_1f

    invoke-virtual {p2}, Lml;->a()I

    move-result v6

    invoke-virtual {p0}, Lly;->aj()I

    move-result v7

    add-int/2addr v7, v2

    :goto_d
    if-ltz v7, :cond_1e

    invoke-virtual {p0, v7}, Lly;->av(I)Landroid/view/View;

    move-result-object v8

    invoke-static {v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->be(Landroid/view/View;)I

    move-result v8

    if-ltz v8, :cond_1d

    if-ge v8, v6, :cond_1d

    goto :goto_f

    :cond_1d
    add-int/lit8 v7, v7, -0x1

    goto :goto_d

    :cond_1e
    const/4 v8, 0x0

    goto :goto_f

    :cond_1f
    invoke-virtual {p2}, Lml;->a()I

    move-result v6

    invoke-virtual {p0}, Lly;->aj()I

    move-result v7

    const/4 v8, 0x0

    :goto_e
    if-ge v8, v7, :cond_21

    invoke-virtual {p0, v8}, Lly;->av(I)Landroid/view/View;

    move-result-object v9

    invoke-static {v9}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->be(Landroid/view/View;)I

    move-result v9

    if-ltz v9, :cond_20

    if-ge v9, v6, :cond_20

    move v8, v9

    goto :goto_f

    :cond_20
    add-int/lit8 v8, v8, 0x1

    goto :goto_e

    :cond_21
    const/4 v8, 0x0

    :goto_f
    iput v8, v0, Lmy;->a:I

    iput v5, v0, Lmy;->b:I

    :goto_10
    iput-boolean v4, v0, Lmy;->e:Z

    :cond_22
    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->F:Lnb;

    if-nez v6, :cond_24

    iget v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:I

    if-ne v6, v2, :cond_24

    iget-boolean v6, v0, Lmy;->c:Z

    iget-boolean v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Z

    if-ne v6, v7, :cond_23

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->L()Z

    move-result v6

    iget-boolean v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->E:Z

    if-eq v6, v7, :cond_24

    :cond_23
    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Lakw;

    invoke-virtual {v6}, Lakw;->b()V

    iput-boolean v4, v0, Lmy;->d:Z

    :cond_24
    invoke-virtual {p0}, Lly;->aj()I

    move-result v6

    if-lez v6, :cond_33

    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->F:Lnb;

    if-eqz v6, :cond_25

    iget v6, v6, Lnb;->c:I

    if-gtz v6, :cond_33

    :cond_25
    iget-boolean v6, v0, Lmy;->d:Z

    if-eqz v6, :cond_27

    const/4 v1, 0x0

    :goto_11
    iget v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v1, v6, :cond_33

    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Lnc;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Lnc;->j()V

    iget v6, v0, Lmy;->b:I

    if-eq v6, v5, :cond_26

    iget-object v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Lnc;

    aget-object v7, v7, v1

    invoke-virtual {v7, v6}, Lnc;->l(I)V

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_27
    if-nez v1, :cond_29

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->H:Lmy;

    iget-object v1, v1, Lmy;->f:[I

    if-nez v1, :cond_28

    const/4 v1, 0x0

    goto :goto_13

    :cond_28
    const/4 v1, 0x0

    :goto_12
    iget v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v1, v6, :cond_33

    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Lnc;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Lnc;->j()V

    iget-object v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->H:Lmy;

    iget-object v7, v7, Lmy;->f:[I

    aget v7, v7, v1

    invoke-virtual {v6, v7}, Lnc;->l(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_29
    const/4 v1, 0x0

    :goto_13
    iget v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v1, v6, :cond_30

    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Lnc;

    aget-object v6, v6, v1

    iget-boolean v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    iget v8, v0, Lmy;->b:I

    if-eqz v7, :cond_2a

    invoke-virtual {v6, v5}, Lnc;->d(I)I

    move-result v9

    goto :goto_14

    :cond_2a
    invoke-virtual {v6, v5}, Lnc;->f(I)I

    move-result v9

    :goto_14
    invoke-virtual {v6}, Lnc;->j()V

    if-ne v9, v5, :cond_2b

    goto :goto_15

    :cond_2b
    if-eqz v7, :cond_2c

    iget-object v10, v6, Lnc;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v10, v10, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Llp;

    invoke-virtual {v10}, Llp;->f()I

    move-result v10

    if-lt v9, v10, :cond_2f

    :cond_2c
    if-nez v7, :cond_2d

    iget-object v7, v6, Lnc;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Llp;

    invoke-virtual {v7}, Llp;->j()I

    move-result v7

    if-gt v9, v7, :cond_2f

    :cond_2d
    if-eq v8, v5, :cond_2e

    add-int/2addr v9, v8

    :cond_2e
    iput v9, v6, Lnc;->c:I

    iput v9, v6, Lnc;->b:I

    :cond_2f
    :goto_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_30
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->H:Lmy;

    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Lnc;

    array-length v7, v6

    iget-object v8, v1, Lmy;->f:[I

    if-eqz v8, :cond_32

    array-length v8, v8

    if-ge v8, v7, :cond_31

    goto :goto_16

    :cond_31
    const/4 v8, 0x0

    goto :goto_17

    :cond_32
    :goto_16
    iget-object v8, v1, Lmy;->g:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Lnc;

    array-length v8, v8

    new-array v8, v8, [I

    iput-object v8, v1, Lmy;->f:[I

    const/4 v8, 0x0

    :goto_17
    if-ge v8, v7, :cond_33

    iget-object v9, v1, Lmy;->f:[I

    aget-object v10, v6, v8

    invoke-virtual {v10, v5}, Lnc;->f(I)I

    move-result v10

    aput v10, v9, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_17

    :cond_33
    invoke-virtual {p0, p1}, Lly;->aC(Lmd;)V

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Lkv;

    iput-boolean v3, v1, Lkv;->a:Z

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Llp;

    invoke-virtual {v1}, Llp;->k()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->H(I)V

    iget v1, v0, Lmy;->a:I

    invoke-direct {p0, v1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bA(ILml;)V

    iget-boolean v1, v0, Lmy;->c:Z

    if-eqz v1, :cond_34

    invoke-direct {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bz(I)V

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Lkv;

    invoke-direct {p0, p1, v1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->Y(Lmd;Lkv;Lml;)I

    invoke-direct {p0, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bz(I)V

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Lkv;

    iget v6, v0, Lmy;->a:I

    iget v7, v1, Lkv;->d:I

    add-int/2addr v6, v7

    iput v6, v1, Lkv;->c:I

    invoke-direct {p0, p1, v1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->Y(Lmd;Lkv;Lml;)I

    goto :goto_18

    :cond_34
    invoke-direct {p0, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bz(I)V

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Lkv;

    invoke-direct {p0, p1, v1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->Y(Lmd;Lkv;Lml;)I

    invoke-direct {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bz(I)V

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Lkv;

    iget v6, v0, Lmy;->a:I

    iget v7, v1, Lkv;->d:I

    add-int/2addr v6, v7

    iput v6, v1, Lkv;->c:I

    invoke-direct {p0, p1, v1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->Y(Lmd;Lkv;Lml;)I

    :goto_18
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Llp;

    invoke-virtual {v1}, Llp;->h()I

    move-result v1

    const/high16 v6, 0x40000000    # 2.0f

    if-ne v1, v6, :cond_35

    goto/16 :goto_1c

    :cond_35
    invoke-virtual {p0}, Lly;->aj()I

    move-result v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_19
    if-ge v7, v1, :cond_37

    invoke-virtual {p0, v7}, Lly;->av(I)Landroid/view/View;

    move-result-object v8

    iget-object v9, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Llp;

    invoke-virtual {v9, v8}, Llp;->b(Landroid/view/View;)I

    move-result v9

    int-to-float v9, v9

    cmpg-float v10, v9, v6

    if-ltz v10, :cond_36

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lmz;

    invoke-static {v6, v9}, Ljava/lang/Math;->max(FF)F

    move-result v6

    :cond_36
    add-int/lit8 v7, v7, 0x1

    goto :goto_19

    :cond_37
    iget v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:I

    iget v8, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    int-to-float v8, v8

    mul-float v6, v6, v8

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iget-object v8, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Llp;

    invoke-virtual {v8}, Llp;->h()I

    move-result v8

    if-ne v8, v5, :cond_38

    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Llp;

    invoke-virtual {v5}, Llp;->k()I

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    :cond_38
    invoke-virtual {p0, v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->H(I)V

    iget v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:I

    if-eq v5, v7, :cond_3b

    const/4 v5, 0x0

    :goto_1a
    if-ge v5, v1, :cond_3b

    invoke-virtual {p0, v5}, Lly;->av(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lmz;

    iget-boolean v9, v8, Lmz;->b:Z

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->L()Z

    move-result v9

    if-eqz v9, :cond_39

    iget v9, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    if-ne v9, v4, :cond_39

    iget v9, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    add-int/2addr v9, v2

    iget-object v8, v8, Lmz;->a:Lnc;

    iget v8, v8, Lnc;->e:I

    sub-int/2addr v9, v8

    neg-int v8, v9

    iget v9, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:I

    mul-int v9, v9, v8

    mul-int v8, v8, v7

    sub-int/2addr v9, v8

    invoke-virtual {v6, v9}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_1b

    :cond_39
    iget-object v8, v8, Lmz;->a:Lnc;

    iget v8, v8, Lnc;->e:I

    iget v9, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:I

    mul-int v9, v9, v8

    mul-int v8, v8, v7

    iget v10, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    if-ne v10, v4, :cond_3a

    sub-int/2addr v9, v8

    invoke-virtual {v6, v9}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_1b

    :cond_3a
    sub-int/2addr v9, v8

    invoke-virtual {v6, v9}, Landroid/view/View;->offsetTopAndBottom(I)V

    :goto_1b
    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    :cond_3b
    :goto_1c
    invoke-virtual {p0}, Lly;->aj()I

    move-result v1

    if-lez v1, :cond_3d

    iget-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    if-eqz v1, :cond_3c

    invoke-direct {p0, p1, p2, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ae(Lmd;Lml;Z)V

    invoke-direct {p0, p1, p2, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->af(Lmd;Lml;Z)V

    goto :goto_1d

    :cond_3c
    invoke-direct {p0, p1, p2, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->af(Lmd;Lml;Z)V

    invoke-direct {p0, p1, p2, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ae(Lmd;Lml;Z)V

    :cond_3d
    :goto_1d
    if-eqz p3, :cond_3e

    iget-boolean p3, p2, Lml;->g:Z

    if-nez p3, :cond_3e

    iget p3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->n:I

    if-eqz p3, :cond_3e

    invoke-virtual {p0}, Lly;->aj()I

    move-result p3

    if-lez p3, :cond_3e

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u()Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_3e

    iget-object p3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->K:Ljava/lang/Runnable;

    invoke-virtual {p0, p3}, Lly;->bm(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->I()Z

    move-result p3

    if-eqz p3, :cond_3e

    goto :goto_1e

    :cond_3e
    const/4 v4, 0x0

    :goto_1e
    iget-boolean p3, p2, Lml;->g:Z

    if-eqz p3, :cond_3f

    iget-object p3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->H:Lmy;

    invoke-virtual {p3}, Lmy;->a()V

    :cond_3f
    iget-boolean p3, v0, Lmy;->c:Z

    iput-boolean p3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Z

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->L()Z

    move-result p3

    iput-boolean p3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->E:Z

    if-eqz v4, :cond_40

    iget-object p3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->H:Lmy;

    invoke-virtual {p3}, Lmy;->a()V

    invoke-direct {p0, p1, p2, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bu(Lmd;Lml;Z)V

    :cond_40
    return-void

    :cond_41
    invoke-virtual {p0, p1}, Lly;->aK(Lmd;)V

    invoke-virtual {v0}, Lmy;->a()V

    return-void
.end method

.method private final bv(Lmd;Lkv;)V
    .locals 4

    iget-boolean v0, p2, Lkv;->a:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p2, Lkv;->i:Z

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget v0, p2, Lkv;->b:I

    const/4 v1, -0x1

    if-nez v0, :cond_2

    iget v0, p2, Lkv;->e:I

    if-ne v0, v1, :cond_1

    iget p2, p2, Lkv;->g:I

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bw(Lmd;I)V

    return-void

    :cond_1
    iget p2, p2, Lkv;->f:I

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bx(Lmd;I)V

    return-void

    :cond_2
    iget v0, p2, Lkv;->e:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_6

    iget v0, p2, Lkv;->f:I

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Lnc;

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Lnc;->f(I)I

    move-result v1

    :goto_0
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v3, v2, :cond_4

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Lnc;

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Lnc;->f(I)I

    move-result v2

    if-le v2, v1, :cond_3

    move v1, v2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    sub-int/2addr v0, v1

    if-gez v0, :cond_5

    iget p2, p2, Lkv;->g:I

    goto :goto_1

    :cond_5
    iget v1, p2, Lkv;->g:I

    iget p2, p2, Lkv;->b:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    sub-int p2, v1, p2

    :goto_1
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bw(Lmd;I)V

    return-void

    :cond_6
    iget v0, p2, Lkv;->g:I

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Lnc;

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Lnc;->d(I)I

    move-result v1

    :goto_2
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v3, v2, :cond_8

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Lnc;

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Lnc;->d(I)I

    move-result v2

    if-ge v2, v1, :cond_7

    move v1, v2

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_8
    iget v0, p2, Lkv;->g:I

    sub-int/2addr v1, v0

    if-gez v1, :cond_9

    iget p2, p2, Lkv;->f:I

    goto :goto_3

    :cond_9
    iget v0, p2, Lkv;->f:I

    iget p2, p2, Lkv;->b:I

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    add-int/2addr p2, v0

    :goto_3
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bx(Lmd;I)V

    return-void

    :cond_a
    :goto_4
    return-void
.end method

.method private final bw(Lmd;I)V
    .locals 8

    invoke-virtual {p0}, Lly;->aj()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_4

    invoke-virtual {p0, v0}, Lly;->av(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Llp;

    invoke-virtual {v2, v1}, Llp;->d(Landroid/view/View;)I

    move-result v2

    if-lt v2, p2, :cond_4

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Llp;

    invoke-virtual {v2, v1}, Llp;->m(Landroid/view/View;)I

    move-result v2

    if-lt v2, p2, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lmz;

    iget-boolean v3, v2, Lmz;->b:Z

    iget-object v3, v2, Lmz;->a:Lnc;

    iget-object v3, v3, Lnc;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    return-void

    :cond_0
    iget-object v2, v2, Lmz;->a:Lnc;

    iget-object v3, v2, Lnc;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v5, v2, Lnc;->a:Ljava/util/ArrayList;

    add-int/lit8 v6, v3, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-static {v5}, Lnc;->n(Landroid/view/View;)Lmz;

    move-result-object v6

    const/4 v7, 0x0

    iput-object v7, v6, Lmz;->a:Lnc;

    invoke-virtual {v6}, Llz;->c()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v6}, Llz;->b()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    iget v6, v2, Lnc;->d:I

    iget-object v7, v2, Lnc;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Llp;

    invoke-virtual {v7, v5}, Llp;->b(Landroid/view/View;)I

    move-result v5

    sub-int/2addr v6, v5

    iput v6, v2, Lnc;->d:I

    :cond_2
    const/high16 v5, -0x80000000

    if-ne v3, v4, :cond_3

    iput v5, v2, Lnc;->b:I

    :cond_3
    iput v5, v2, Lnc;->c:I

    invoke-virtual {p0, v1, p1}, Lly;->aM(Landroid/view/View;Lmd;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private final bx(Lmd;I)V
    .locals 6

    :goto_0
    invoke-virtual {p0}, Lly;->aj()I

    move-result v0

    if-lez v0, :cond_4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lly;->av(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Llp;

    invoke-virtual {v2, v1}, Llp;->a(Landroid/view/View;)I

    move-result v2

    if-gt v2, p2, :cond_4

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Llp;

    invoke-virtual {v2, v1}, Llp;->l(Landroid/view/View;)I

    move-result v2

    if-gt v2, p2, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lmz;

    iget-boolean v3, v2, Lmz;->b:Z

    iget-object v3, v2, Lmz;->a:Lnc;

    iget-object v3, v3, Lnc;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    return-void

    :cond_0
    iget-object v2, v2, Lmz;->a:Lnc;

    iget-object v3, v2, Lnc;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lnc;->n(Landroid/view/View;)Lmz;

    move-result-object v3

    const/4 v4, 0x0

    iput-object v4, v3, Lmz;->a:Lnc;

    iget-object v4, v2, Lnc;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/high16 v5, -0x80000000

    if-nez v4, :cond_1

    iput v5, v2, Lnc;->c:I

    :cond_1
    invoke-virtual {v3}, Llz;->c()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Llz;->b()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget v3, v2, Lnc;->d:I

    iget-object v4, v2, Lnc;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Llp;

    invoke-virtual {v4, v0}, Llp;->b(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v3, v0

    iput v3, v2, Lnc;->d:I

    :cond_3
    iput v5, v2, Lnc;->b:I

    invoke-virtual {p0, v1, p1}, Lly;->aM(Landroid/view/View;Lmd;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method private final by()V
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->L()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:Z

    xor-int/2addr v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    return-void

    :cond_1
    :goto_1
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:Z

    goto :goto_0
.end method

.method private final bz(I)V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Lkv;

    iput p1, v0, Lkv;->e:I

    iget-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq p1, v3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    if-ne v1, p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, -0x1

    :goto_1
    iput v2, v0, Lkv;->d:I

    return-void
.end method


# virtual methods
.method public final A(Lml;)I
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->T(Lml;)I

    move-result p1

    return p1
.end method

.method public final B(Lml;)I
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->U(Lml;)I

    move-result p1

    return p1
.end method

.method public final C(Lml;)I
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->P(Lml;)I

    move-result p1

    return p1
.end method

.method public final D(Lml;)I
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->T(Lml;)I

    move-result p1

    return p1
.end method

.method public final E(Lml;)I
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->U(Lml;)I

    move-result p1

    return p1
.end method

.method final F(ILml;)V
    .locals 4

    const/4 v0, 0x1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i()I

    move-result v1

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c()I

    move-result v1

    const/4 v2, -0x1

    :goto_0
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Lkv;

    iput-boolean v0, v3, Lkv;->a:Z

    invoke-direct {p0, v1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bA(ILml;)V

    invoke-direct {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bz(I)V

    iget-object p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Lkv;

    iget v0, p2, Lkv;->d:I

    add-int/2addr v1, v0

    iput v1, p2, Lkv;->c:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iput p1, p2, Lkv;->b:I

    return-void
.end method

.method public final G(Z)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lly;->N(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->F:Lnb;

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lnb;->h:Z

    if-eq v1, p1, :cond_0

    iput-boolean p1, v0, Lnb;->h:Z

    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:Z

    invoke-virtual {p0}, Lly;->aP()V

    return-void
.end method

.method final H(I)V
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    div-int v0, p1, v0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:I

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Llp;

    invoke-virtual {v0}, Llp;->h()I

    move-result v0

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    return-void
.end method

.method public final I()Z
    .locals 2

    invoke-virtual {p0}, Lly;->aj()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->n:I

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lly;->t:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c()I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i()I

    :goto_0
    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Lakw;

    invoke-virtual {v0}, Lakw;->b()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lly;->s:Z

    invoke-virtual {p0}, Lly;->aP()V

    return v0

    :cond_2
    return v1

    :cond_3
    :goto_1
    return v1
.end method

.method public final J(I)Landroid/graphics/PointF;
    .locals 3

    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->O(I)I

    move-result p1

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    const/4 v2, 0x0

    if-nez v1, :cond_1

    int-to-float p1, p1

    iput p1, v0, Landroid/graphics/PointF;->x:F

    iput v2, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0

    :cond_1
    iput v2, v0, Landroid/graphics/PointF;->x:F

    int-to-float p1, p1

    iput p1, v0, Landroid/graphics/PointF;->y:F

    :goto_0
    return-object v0
.end method

.method public final K()Landroid/os/Parcelable;
    .locals 5

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->F:Lnb;

    if-eqz v0, :cond_0

    new-instance v1, Lnb;

    invoke-direct {v1, v0}, Lnb;-><init>(Lnb;)V

    return-object v1

    :cond_0
    new-instance v0, Lnb;

    invoke-direct {v0}, Lnb;-><init>()V

    iget-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:Z

    iput-boolean v1, v0, Lnb;->h:Z

    iget-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Z

    iput-boolean v1, v0, Lnb;->i:Z

    iget-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->E:Z

    iput-boolean v1, v0, Lnb;->j:Z

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Lakw;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v3, v1, Lakw;->b:Ljava/lang/Object;

    if-eqz v3, :cond_1

    check-cast v3, [I

    iput-object v3, v0, Lnb;->f:[I

    iget-object v3, v0, Lnb;->f:[I

    array-length v3, v3

    iput v3, v0, Lnb;->e:I

    iget-object v1, v1, Lakw;->a:Ljava/lang/Object;

    iput-object v1, v0, Lnb;->g:Ljava/util/List;

    goto :goto_0

    :cond_1
    iput v2, v0, Lnb;->e:I

    :goto_0
    invoke-virtual {p0}, Lly;->aj()I

    move-result v1

    const/4 v3, -0x1

    if-lez v1, :cond_7

    iget-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i()I

    move-result v1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c()I

    move-result v1

    :goto_1
    iput v1, v0, Lnb;->a:I

    iget-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l(Z)Landroid/view/View;

    move-result-object v1

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->r(Z)Landroid/view/View;

    move-result-object v1

    :goto_2
    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->be(Landroid/view/View;)I

    move-result v3

    :goto_3
    iput v3, v0, Lnb;->b:I

    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    iput v1, v0, Lnb;->c:I

    new-array v1, v1, [I

    iput-object v1, v0, Lnb;->d:[I

    :goto_4
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v2, v1, :cond_8

    iget-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Z

    const/high16 v3, -0x80000000

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Lnc;

    aget-object v1, v1, v2

    invoke-virtual {v1, v3}, Lnc;->d(I)I

    move-result v1

    if-eq v1, v3, :cond_6

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Llp;

    invoke-virtual {v3}, Llp;->f()I

    move-result v3

    sub-int/2addr v1, v3

    goto :goto_5

    :cond_5
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Lnc;

    aget-object v1, v1, v2

    invoke-virtual {v1, v3}, Lnc;->f(I)I

    move-result v1

    if-eq v1, v3, :cond_6

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Llp;

    invoke-virtual {v3}, Llp;->j()I

    move-result v3

    sub-int/2addr v1, v3

    :cond_6
    :goto_5
    iget-object v3, v0, Lnb;->d:[I

    aput v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_7
    iput v3, v0, Lnb;->a:I

    iput v3, v0, Lnb;->b:I

    iput v2, v0, Lnb;->c:I

    :cond_8
    return-object v0
.end method

.method final L()Z
    .locals 2

    invoke-virtual {p0}, Lly;->am()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final N(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->F:Lnb;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lly;->N(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final Q(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    invoke-super {p0, p1}, Lly;->Q(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0}, Lly;->aj()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->r(Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l(Z)Landroid/view/View;

    move-result-object v0

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->be(Landroid/view/View;)I

    move-result v1

    invoke-static {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->be(Landroid/view/View;)I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    return-void

    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    return-void

    :cond_2
    :goto_0
    return-void

    :cond_3
    return-void
.end method

.method public final R(Landroid/os/Parcelable;)V
    .locals 2

    instance-of v0, p1, Lnb;

    if-eqz v0, :cond_1

    check-cast p1, Lnb;

    iput-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->F:Lnb;

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lnb;->a()V

    iget-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->F:Lnb;

    invoke-virtual {p1}, Lnb;->b()V

    :cond_0
    invoke-virtual {p0}, Lly;->aP()V

    :cond_1
    return-void
.end method

.method public final S(I)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->F:Lnb;

    if-eqz v0, :cond_0

    iget v1, v0, Lnb;->a:I

    if-eq v1, p1, :cond_0

    invoke-virtual {v0}, Lnb;->a()V

    :cond_0
    iput p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:I

    const/high16 p1, -0x80000000

    iput p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    invoke-virtual {p0}, Lly;->aP()V

    return-void
.end method

.method public final V()Z
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final W()Z
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final X()Z
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->n:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final aF(I)V
    .locals 2

    invoke-super {p0, p1}, Lly;->aF(I)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Lnc;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lnc;->k(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final aG(I)V
    .locals 2

    invoke-super {p0, p1}, Lly;->aG(I)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Lnc;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lnc;->k(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final aJ(I)V
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->I()Z

    :cond_0
    return-void
.end method

.method public final ab(IILml;Lkr;)V
    .locals 4

    const/4 v0, 0x1

    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    if-ne v0, v1, :cond_0

    move p1, p2

    :cond_0
    invoke-virtual {p0}, Lly;->aj()I

    move-result p2

    if-eqz p2, :cond_8

    if-nez p1, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-virtual {p0, p1, p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->F(ILml;)V

    iget-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->J:[I

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    array-length p1, p1

    if-ge p1, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    iget p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    new-array p1, p1, [I

    iput-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->J:[I

    const/4 p1, 0x0

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge p1, v1, :cond_6

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Lkv;

    iget v2, v1, Lkv;->d:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    iget v1, v1, Lkv;->f:I

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Lnc;

    aget-object v2, v2, p1

    invoke-virtual {v2, v1}, Lnc;->f(I)I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_2

    :cond_4
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Lnc;

    aget-object v2, v2, p1

    iget v1, v1, Lkv;->g:I

    invoke-virtual {v2, v1}, Lnc;->d(I)I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Lkv;

    iget v2, v2, Lkv;->g:I

    sub-int/2addr v1, v2

    :goto_2
    if-ltz v1, :cond_5

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->J:[I

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_6
    iget-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->J:[I

    invoke-static {p1, p2, v0}, Ljava/util/Arrays;->sort([III)V

    :goto_3
    if-ge p2, v0, :cond_7

    iget-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Lkv;

    invoke-virtual {p1, p3}, Lkv;->a(Lml;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Lkv;

    iget p1, p1, Lkv;->c:I

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->J:[I

    aget v1, v1, p2

    invoke-virtual {p4, p1, v1}, Lkr;->a(II)V

    iget-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Lkv;

    iget v1, p1, Lkv;->c:I

    iget v2, p1, Lkv;->d:I

    add-int/2addr v1, v2

    iput v1, p1, Lkv;->c:I

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_7
    return-void

    :cond_8
    :goto_4
    return-void
.end method

.method public final ag(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->K:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lly;->bm(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Lnc;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lnc;->j()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public final ah(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 1

    new-instance v0, Lmk;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lmk;-><init>(Landroid/content/Context;)V

    iput p2, v0, Lmk;->b:I

    invoke-virtual {p0, v0}, Lly;->aV(Lmk;)V

    return-void
.end method

.method public final bk()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Lakw;

    invoke-virtual {v0}, Lakw;->b()V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Lnc;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lnc;->j()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method final c()I
    .locals 2

    invoke-virtual {p0}, Lly;->aj()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, v1}, Lly;->av(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->be(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public final d(ILmd;Lml;)I
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k(ILmd;Lml;)I

    move-result p1

    return p1
.end method

.method public final e(ILmd;Lml;)I
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k(ILmd;Lml;)I

    move-result p1

    return p1
.end method

.method public final f()Llz;
    .locals 3

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    const/4 v1, -0x2

    const/4 v2, -0x1

    if-nez v0, :cond_0

    new-instance v0, Lmz;

    invoke-direct {v0, v1, v2}, Lmz;-><init>(II)V

    return-object v0

    :cond_0
    new-instance v0, Lmz;

    invoke-direct {v0, v2, v1}, Lmz;-><init>(II)V

    return-object v0
.end method

.method public final g(Landroid/view/ViewGroup$LayoutParams;)Llz;
    .locals 1

    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Lmz;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Lmz;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    :cond_0
    new-instance v0, Lmz;

    invoke-direct {v0, p1}, Lmz;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public final h(Landroid/content/Context;Landroid/util/AttributeSet;)Llz;
    .locals 1

    new-instance v0, Lmz;

    invoke-direct {v0, p1, p2}, Lmz;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method final i()I
    .locals 1

    invoke-virtual {p0}, Lly;->aj()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lly;->av(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->be(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public final j(Landroid/view/View;ILmd;Lml;)Landroid/view/View;
    .locals 8

    invoke-virtual {p0}, Lly;->aj()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0, p1}, Lly;->au(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->by()V

    const/high16 v0, -0x80000000

    const/4 v2, -0x1

    const/4 v3, 0x1

    sparse-switch p2, :sswitch_data_0

    const/high16 p2, -0x80000000

    goto :goto_2

    :sswitch_0
    iget p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    if-ne p2, v3, :cond_3

    goto :goto_1

    :sswitch_1
    iget p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    if-nez p2, :cond_3

    goto :goto_1

    :sswitch_2
    iget p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    if-ne p2, v3, :cond_3

    goto :goto_0

    :sswitch_3
    iget p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    if-nez p2, :cond_3

    :cond_2
    :goto_0
    const/4 p2, -0x1

    goto :goto_2

    :cond_3
    const/high16 p2, -0x80000000

    goto :goto_2

    :sswitch_4
    iget p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    if-ne p2, v3, :cond_4

    :goto_1
    const/4 p2, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->L()Z

    move-result p2

    if-eqz p2, :cond_5

    const/4 p2, -0x1

    goto :goto_2

    :cond_5
    const/4 p2, 0x1

    goto :goto_2

    :sswitch_5
    iget p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    if-ne p2, v3, :cond_6

    const/4 p2, -0x1

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->L()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    :goto_2
    if-ne p2, v0, :cond_7

    return-object v1

    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lmz;

    iget-boolean v4, v0, Lmz;->b:Z

    iget-object v0, v0, Lmz;->a:Lnc;

    if-ne p2, v3, :cond_8

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i()I

    move-result v4

    goto :goto_3

    :cond_8
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c()I

    move-result v4

    :goto_3
    invoke-direct {p0, v4, p4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bA(ILml;)V

    invoke-direct {p0, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bz(I)V

    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Lkv;

    iget v6, v5, Lkv;->d:I

    add-int/2addr v6, v4

    iput v6, v5, Lkv;->c:I

    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Llp;

    invoke-virtual {v6}, Llp;->k()I

    move-result v6

    int-to-float v6, v6

    const v7, 0x3eaaaaab

    mul-float v6, v6, v7

    float-to-int v6, v6

    iput v6, v5, Lkv;->b:I

    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Lkv;

    iput-boolean v3, v5, Lkv;->h:Z

    const/4 v6, 0x0

    iput-boolean v6, v5, Lkv;->a:Z

    invoke-direct {p0, p3, v5, p4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->Y(Lmd;Lkv;Lml;)I

    iget-boolean p3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    iput-boolean p3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Z

    invoke-virtual {v0, v4, p2}, Lnc;->g(II)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_a

    if-ne p3, p1, :cond_9

    goto :goto_4

    :cond_9
    return-object p3

    :cond_a
    :goto_4
    invoke-direct {p0, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bC(I)Z

    move-result p3

    if-eqz p3, :cond_d

    iget p3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    add-int/2addr p3, v2

    :goto_5
    if-ltz p3, :cond_10

    iget-object p4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Lnc;

    aget-object p4, p4, p3

    invoke-virtual {p4, v4, p2}, Lnc;->g(II)Landroid/view/View;

    move-result-object p4

    if-eqz p4, :cond_c

    if-ne p4, p1, :cond_b

    goto :goto_6

    :cond_b
    return-object p4

    :cond_c
    :goto_6
    add-int/lit8 p3, p3, -0x1

    goto :goto_5

    :cond_d
    const/4 p3, 0x0

    :goto_7
    iget p4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge p3, p4, :cond_10

    iget-object p4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Lnc;

    aget-object p4, p4, p3

    invoke-virtual {p4, v4, p2}, Lnc;->g(II)Landroid/view/View;

    move-result-object p4

    if-eqz p4, :cond_f

    if-ne p4, p1, :cond_e

    goto :goto_8

    :cond_e
    return-object p4

    :cond_f
    :goto_8
    add-int/lit8 p3, p3, 0x1

    goto :goto_7

    :cond_10
    iget-boolean p3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:Z

    xor-int/2addr p3, v3

    if-eq p2, v2, :cond_11

    const/4 p4, 0x0

    goto :goto_9

    :cond_11
    const/4 p4, 0x1

    :goto_9
    if-ne p3, p4, :cond_12

    goto :goto_a

    :cond_12
    const/4 v3, 0x0

    :goto_a
    if-eqz v3, :cond_13

    invoke-virtual {v0}, Lnc;->a()I

    move-result p3

    goto :goto_b

    :cond_13
    invoke-virtual {v0}, Lnc;->b()I

    move-result p3

    :goto_b
    invoke-virtual {p0, p3}, Lly;->M(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_15

    if-ne p3, p1, :cond_14

    goto :goto_c

    :cond_14
    return-object p3

    :cond_15
    :goto_c
    invoke-direct {p0, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bC(I)Z

    move-result p2

    if-eqz p2, :cond_19

    iget p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    add-int/2addr p2, v2

    :goto_d
    if-ltz p2, :cond_1d

    iget p3, v0, Lnc;->e:I

    if-ne p2, p3, :cond_16

    goto :goto_f

    :cond_16
    if-eqz v3, :cond_17

    iget-object p3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Lnc;

    aget-object p3, p3, p2

    invoke-virtual {p3}, Lnc;->a()I

    move-result p3

    goto :goto_e

    :cond_17
    iget-object p3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Lnc;

    aget-object p3, p3, p2

    invoke-virtual {p3}, Lnc;->b()I

    move-result p3

    :goto_e
    invoke-virtual {p0, p3}, Lly;->M(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_18

    if-eq p3, p1, :cond_18

    return-object p3

    :cond_18
    :goto_f
    add-int/lit8 p2, p2, -0x1

    goto :goto_d

    :cond_19
    :goto_10
    iget p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v6, p2, :cond_1d

    if-eqz v3, :cond_1a

    iget-object p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Lnc;

    aget-object p2, p2, v6

    invoke-virtual {p2}, Lnc;->a()I

    move-result p2

    goto :goto_11

    :cond_1a
    iget-object p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Lnc;

    aget-object p2, p2, v6

    invoke-virtual {p2}, Lnc;->b()I

    move-result p2

    :goto_11
    invoke-virtual {p0, p2}, Lly;->M(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_1c

    if-ne p2, p1, :cond_1b

    goto :goto_12

    :cond_1b
    return-object p2

    :cond_1c
    :goto_12
    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    :cond_1d
    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_4
        0x11 -> :sswitch_3
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_0
    .end sparse-switch
.end method

.method final k(ILmd;Lml;)I
    .locals 2

    invoke-virtual {p0}, Lly;->aj()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1, p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->F(ILml;)V

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Lkv;

    invoke-direct {p0, p2, v0, p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->Y(Lmd;Lkv;Lml;)I

    move-result p3

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Lkv;

    iget v0, v0, Lkv;->b:I

    if-ge v0, p3, :cond_1

    goto :goto_0

    :cond_1
    if-gez p1, :cond_2

    neg-int p1, p3

    goto :goto_0

    :cond_2
    move p1, p3

    :goto_0
    iget-object p3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Llp;

    neg-int v0, p1

    invoke-virtual {p3, v0}, Llp;->n(I)V

    iget-boolean p3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    iput-boolean p3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Z

    iget-object p3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Lkv;

    iput v1, p3, Lkv;->b:I

    invoke-direct {p0, p2, p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bv(Lmd;Lkv;)V

    return p1

    :cond_3
    :goto_1
    return v1
.end method

.method final l(Z)Landroid/view/View;
    .locals 7

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Llp;

    invoke-virtual {v0}, Llp;->j()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Llp;

    invoke-virtual {v1}, Llp;->f()I

    move-result v1

    invoke-virtual {p0}, Lly;->aj()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    :goto_0
    if-ltz v2, :cond_3

    invoke-virtual {p0, v2}, Lly;->av(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Llp;

    invoke-virtual {v5, v4}, Llp;->d(Landroid/view/View;)I

    move-result v5

    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Llp;

    invoke-virtual {v6, v4}, Llp;->a(Landroid/view/View;)I

    move-result v6

    if-le v6, v0, :cond_2

    if-ge v5, v1, :cond_2

    if-le v6, v1, :cond_1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    if-nez v3, :cond_2

    move-object v3, v4

    goto :goto_2

    :cond_1
    :goto_1
    return-object v4

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_3
    return-object v3
.end method

.method public final o(Lmd;Lml;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bu(Lmd;Lml;Z)V

    return-void
.end method

.method public final p(Lml;)V
    .locals 0

    const/4 p1, -0x1

    iput p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:I

    const/high16 p1, -0x80000000

    iput p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->F:Lnb;

    iget-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->H:Lmy;

    invoke-virtual {p1}, Lmy;->a()V

    return-void
.end method

.method public final q(Landroid/graphics/Rect;II)V
    .locals 4

    invoke-virtual {p0}, Lly;->aq()I

    move-result v0

    invoke-virtual {p0}, Lly;->ar()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lly;->as()I

    move-result v1

    invoke-virtual {p0}, Lly;->ap()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    add-int/2addr p1, v1

    invoke-virtual {p0}, Lly;->an()I

    move-result v1

    invoke-static {p3, p1, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ai(III)I

    move-result p1

    iget p3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:I

    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    mul-int p3, p3, v1

    add-int/2addr p3, v0

    invoke-virtual {p0}, Lly;->ao()I

    move-result v0

    invoke-static {p2, p3, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ai(III)I

    move-result p2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    add-int/2addr p1, v0

    invoke-virtual {p0}, Lly;->ao()I

    move-result v0

    invoke-static {p2, p1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ai(III)I

    move-result p2

    iget p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:I

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    mul-int p1, p1, v0

    add-int/2addr p1, v1

    invoke-virtual {p0}, Lly;->an()I

    move-result v0

    invoke-static {p3, p1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ai(III)I

    move-result p1

    :goto_0
    invoke-virtual {p0, p2, p1}, Lly;->aS(II)V

    return-void
.end method

.method final r(Z)Landroid/view/View;
    .locals 8

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Llp;

    invoke-virtual {v0}, Llp;->j()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Llp;

    invoke-virtual {v1}, Llp;->f()I

    move-result v1

    invoke-virtual {p0}, Lly;->aj()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    invoke-virtual {p0, v3}, Lly;->av(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Llp;

    invoke-virtual {v6, v5}, Llp;->d(Landroid/view/View;)I

    move-result v6

    iget-object v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Llp;

    invoke-virtual {v7, v5}, Llp;->a(Landroid/view/View;)I

    move-result v7

    if-le v7, v0, :cond_2

    if-ge v6, v1, :cond_2

    if-ge v6, v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    if-nez v4, :cond_2

    move-object v4, v5

    goto :goto_2

    :cond_1
    :goto_1
    return-object v5

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v4
.end method

.method public final s(Llz;)Z
    .locals 0

    instance-of p1, p1, Lmz;

    return p1
.end method

.method public final t()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->F:Lnb;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final u()Landroid/view/View;
    .locals 13

    invoke-virtual {p0}, Lly;->aj()I

    move-result v0

    const/4 v1, -0x1

    add-int/2addr v0, v1

    new-instance v2, Ljava/util/BitSet;

    iget v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    invoke-direct {v2, v3}, Ljava/util/BitSet;-><init>(I)V

    iget v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v3, v5}, Ljava/util/BitSet;->set(IIZ)V

    iget v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    if-ne v3, v5, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->L()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, -0x1

    :goto_0
    iget-boolean v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    if-eqz v6, :cond_1

    const/4 v6, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    move v6, v0

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v6, :cond_2

    const/4 v7, 0x1

    goto :goto_2

    :cond_2
    const/4 v7, -0x1

    :goto_2
    if-eq v0, v6, :cond_f

    invoke-virtual {p0, v0}, Lly;->av(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lmz;

    iget-object v10, v9, Lmz;->a:Lnc;

    iget v10, v10, Lnc;->e:I

    invoke-virtual {v2, v10}, Ljava/util/BitSet;->get(I)Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, v9, Lmz;->a:Lnc;

    iget-boolean v11, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    if-eqz v11, :cond_3

    invoke-virtual {v10}, Lnc;->c()I

    move-result v11

    iget-object v12, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Llp;

    invoke-virtual {v12}, Llp;->f()I

    move-result v12

    if-ge v11, v12, :cond_4

    iget-object v0, v10, Lnc;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lnc;->n(Landroid/view/View;)Lmz;

    move-result-object v0

    iget-boolean v0, v0, Lmz;->b:Z

    goto :goto_3

    :cond_3
    invoke-virtual {v10}, Lnc;->e()I

    move-result v11

    iget-object v12, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Llp;

    invoke-virtual {v12}, Llp;->j()I

    move-result v12

    if-le v11, v12, :cond_4

    iget-object v0, v10, Lnc;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lnc;->n(Landroid/view/View;)Lmz;

    move-result-object v0

    iget-boolean v0, v0, Lmz;->b:Z

    :goto_3
    return-object v8

    :cond_4
    iget-object v10, v9, Lmz;->a:Lnc;

    iget v10, v10, Lnc;->e:I

    invoke-virtual {v2, v10}, Ljava/util/BitSet;->clear(I)V

    :cond_5
    iget-boolean v10, v9, Lmz;->b:Z

    add-int/2addr v0, v7

    if-eq v0, v6, :cond_e

    invoke-virtual {p0, v0}, Lly;->av(I)Landroid/view/View;

    move-result-object v10

    iget-boolean v11, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    if-eqz v11, :cond_8

    iget-object v11, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Llp;

    invoke-virtual {v11, v8}, Llp;->a(Landroid/view/View;)I

    move-result v11

    iget-object v12, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Llp;

    invoke-virtual {v12, v10}, Llp;->a(Landroid/view/View;)I

    move-result v12

    if-ge v11, v12, :cond_6

    return-object v8

    :cond_6
    if-ne v11, v12, :cond_7

    goto :goto_5

    :cond_7
    :goto_4
    goto :goto_2

    :cond_8
    iget-object v11, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Llp;

    invoke-virtual {v11, v8}, Llp;->d(Landroid/view/View;)I

    move-result v11

    iget-object v12, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Llp;

    invoke-virtual {v12, v10}, Llp;->d(Landroid/view/View;)I

    move-result v12

    if-le v11, v12, :cond_9

    return-object v8

    :cond_9
    if-eq v11, v12, :cond_a

    goto :goto_8

    :cond_a
    :goto_5
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lmz;

    iget-object v9, v9, Lmz;->a:Lnc;

    iget v9, v9, Lnc;->e:I

    iget-object v10, v10, Lmz;->a:Lnc;

    iget v10, v10, Lnc;->e:I

    sub-int/2addr v9, v10

    if-ltz v9, :cond_b

    const/4 v9, 0x0

    goto :goto_6

    :cond_b
    const/4 v9, 0x1

    :goto_6
    if-ltz v3, :cond_c

    const/4 v10, 0x0

    goto :goto_7

    :cond_c
    const/4 v10, 0x1

    :goto_7
    if-ne v9, v10, :cond_d

    goto :goto_4

    :cond_d
    return-object v8

    :cond_e
    :goto_8
    goto/16 :goto_2

    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public final v(II)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bt(III)V

    return-void
.end method

.method public final w()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Lakw;

    invoke-virtual {v0}, Lakw;->b()V

    invoke-virtual {p0}, Lly;->aP()V

    return-void
.end method

.method public final x(II)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bt(III)V

    return-void
.end method

.method public final y(II)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bt(III)V

    return-void
.end method

.method public final z(Lml;)I
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->P(Lml;)I

    move-result p1

    return p1
.end method
