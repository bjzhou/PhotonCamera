.class public Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
.super Lmii;

# interfaces
.implements Lmgy;
.implements Lmko;
.implements Laah;


# instance fields
.field public a:I

.field public b:Z

.field public final c:Landroid/graphics/Rect;

.field private e:Landroid/content/res/ColorStateList;

.field private f:Landroid/graphics/PorterDuff$Mode;

.field private g:Landroid/content/res/ColorStateList;

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private final l:Landroid/graphics/Rect;

.field private final m:Lir;

.field private final n:Lmgz;

.field private o:Lmhq;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f0402b0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    move/from16 v8, p3

    const v9, 0x7f1505b8

    move-object/from16 v1, p1

    invoke-static {v1, v7, v8, v9}, Lmls;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v7, v8}, Lmii;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->c:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->l:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v10

    sget-object v3, Lmht;->b:[I

    const v5, 0x7f1505b8

    const/4 v11, 0x0

    new-array v6, v11, [I

    move-object v1, v10

    move-object/from16 v2, p2

    move/from16 v4, p3

    invoke-static/range {v1 .. v6}, Lmie;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v10, v1, v2}, Lljr;->s(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->e:Landroid/content/res/ColorStateList;

    const/4 v3, 0x2

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lljr;->B(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v5

    iput-object v5, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->f:Landroid/graphics/PorterDuff$Mode;

    const/16 v5, 0xc

    invoke-static {v10, v1, v5}, Lljr;->s(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v5

    iput-object v5, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->g:Landroid/content/res/ColorStateList;

    const/4 v5, 0x7

    invoke-virtual {v1, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->i:I

    const/4 v4, 0x6

    invoke-virtual {v1, v4, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->j:I

    const/4 v4, 0x3

    invoke-virtual {v1, v4, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->h:I

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    const/16 v12, 0x9

    invoke-virtual {v1, v12, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v12

    const/16 v13, 0xb

    invoke-virtual {v1, v13, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    const/16 v13, 0x10

    invoke-virtual {v1, v13, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    iput-boolean v13, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b:Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0704d5

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    const/16 v14, 0xa

    invoke-virtual {v1, v14, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    iput v14, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->k:I

    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->i()Lmhq;

    move-result-object v15

    iget v6, v15, Lmhq;->z:I

    if-eq v6, v14, :cond_0

    iput v14, v15, Lmhq;->z:I

    invoke-virtual {v15}, Lmhq;->i()V

    :cond_0
    const/16 v6, 0xf

    invoke-static {v10, v1, v6}, Lmey;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lmey;

    move-result-object v6

    const/16 v14, 0x8

    invoke-static {v10, v1, v14}, Lmey;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lmey;

    move-result-object v14

    sget-object v15, Lmkf;->a:Lmjw;

    invoke-static {v10, v7, v8, v9, v15}, Lmkf;->b(Landroid/content/Context;Landroid/util/AttributeSet;IILmjw;)Lmke;

    move-result-object v9

    invoke-virtual {v9}, Lmke;->a()Lmkf;

    move-result-object v9

    const/4 v10, 0x5

    invoke-virtual {v1, v10, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    invoke-virtual {v1, v11, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    invoke-virtual {v0, v15}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setEnabled(Z)V

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v1, Lir;

    invoke-direct {v1, v0}, Lir;-><init>(Landroid/widget/ImageView;)V

    iput-object v1, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->m:Lir;

    invoke-virtual {v1, v7, v8}, Lir;->c(Landroid/util/AttributeSet;I)V

    new-instance v1, Lmgz;

    invoke-direct {v1, v0}, Lmgz;-><init>(Lmgy;)V

    iput-object v1, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->n:Lmgz;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->i()Lmhq;

    move-result-object v1

    invoke-virtual {v1, v9}, Lmhq;->h(Lmkf;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->i()Lmhq;

    move-result-object v1

    iget-object v7, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->e:Landroid/content/res/ColorStateList;

    iget-object v8, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->f:Landroid/graphics/PorterDuff$Mode;

    iget-object v9, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->g:Landroid/content/res/ColorStateList;

    iget v15, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->h:I

    check-cast v1, Lmhs;

    iget-object v11, v1, Lmhs;->l:Lmkf;

    invoke-static {v11}, Labf;->c(Ljava/lang/Object;)V

    new-instance v3, Lmhr;

    invoke-direct {v3, v11}, Lmhr;-><init>(Lmkf;)V

    iput-object v3, v1, Lmhs;->m:Lmka;

    iget-object v3, v1, Lmhs;->m:Lmka;

    invoke-virtual {v3, v7}, Lmka;->setTintList(Landroid/content/res/ColorStateList;)V

    if-eqz v8, :cond_1

    iget-object v3, v1, Lmhs;->m:Lmka;

    invoke-virtual {v3, v8}, Lmka;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_1
    iget-object v3, v1, Lmhs;->m:Lmka;

    iget-object v8, v1, Lmhs;->B:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v8}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v3, v8}, Lmka;->g(Landroid/content/Context;)V

    if-lez v15, :cond_3

    iget-object v3, v1, Lmhs;->B:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v8, Lmhb;

    iget-object v11, v1, Lmhs;->l:Lmkf;

    invoke-static {v11}, Labf;->c(Ljava/lang/Object;)V

    invoke-direct {v8, v11}, Lmhb;-><init>(Lmkf;)V

    const v11, 0x7f0600a5

    invoke-static {v3, v11}, Labu;->a(Landroid/content/Context;I)I

    move-result v11

    const v2, 0x7f0600a4

    invoke-static {v3, v2}, Labu;->a(Landroid/content/Context;I)I

    move-result v2

    const v0, 0x7f0600a2

    invoke-static {v3, v0}, Labu;->a(Landroid/content/Context;I)I

    move-result v0

    move/from16 v16, v10

    const v10, 0x7f0600a3

    invoke-static {v3, v10}, Labu;->a(Landroid/content/Context;I)I

    move-result v3

    iput v11, v8, Lmhb;->c:I

    iput v2, v8, Lmhb;->d:I

    iput v0, v8, Lmhb;->e:I

    iput v3, v8, Lmhb;->f:I

    iget v0, v8, Lmhb;->b:F

    int-to-float v2, v15

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_2

    iput v2, v8, Lmhb;->b:F

    iget-object v0, v8, Lmhb;->a:Landroid/graphics/Paint;

    const v3, 0x3faaa993    # 1.3333f

    mul-float v2, v2, v3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v0, 0x1

    iput-boolean v0, v8, Lmhb;->g:Z

    invoke-virtual {v8}, Lmhb;->invalidateSelf()V

    :cond_2
    invoke-virtual {v8, v7}, Lmhb;->b(Landroid/content/res/ColorStateList;)V

    iput-object v8, v1, Lmhs;->o:Lmhb;

    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    iget-object v3, v1, Lmhs;->o:Lmhb;

    invoke-static {v3}, Labf;->c(Ljava/lang/Object;)V

    const/4 v7, 0x0

    aput-object v3, v2, v7

    iget-object v3, v1, Lmhs;->m:Lmka;

    invoke-static {v3}, Labf;->c(Ljava/lang/Object;)V

    const/4 v7, 0x1

    aput-object v3, v2, v7

    invoke-direct {v0, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    move-object v2, v0

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    move/from16 v16, v10

    const/4 v0, 0x0

    iput-object v0, v1, Lmhs;->o:Lmhb;

    iget-object v2, v1, Lmhs;->m:Lmka;

    :goto_0
    new-instance v3, Landroid/graphics/drawable/RippleDrawable;

    invoke-static {v9}, Lmjt;->b(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-direct {v3, v7, v2, v0}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v3, v1, Lmhs;->n:Landroid/graphics/drawable/Drawable;

    iget-object v0, v1, Lmhs;->n:Landroid/graphics/drawable/Drawable;

    iput-object v0, v1, Lmhs;->p:Landroid/graphics/drawable/Drawable;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->i()Lmhq;

    move-result-object v0

    iput v13, v0, Lmhq;->u:I

    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->i()Lmhq;

    move-result-object v0

    iget v1, v0, Lmhq;->r:F

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_4

    iput v4, v0, Lmhq;->r:F

    iget v1, v0, Lmhq;->s:F

    iget v2, v0, Lmhq;->t:F

    invoke-virtual {v0, v4, v1, v2}, Lmhq;->f(FFF)V

    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->i()Lmhq;

    move-result-object v0

    iget v1, v0, Lmhq;->s:F

    cmpl-float v1, v1, v12

    if-eqz v1, :cond_5

    iput v12, v0, Lmhq;->s:F

    iget v1, v0, Lmhq;->r:F

    iget v2, v0, Lmhq;->t:F

    invoke-virtual {v0, v1, v12, v2}, Lmhq;->f(FFF)V

    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->i()Lmhq;

    move-result-object v0

    iget v1, v0, Lmhq;->t:F

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_6

    iput v5, v0, Lmhq;->t:F

    iget v1, v0, Lmhq;->r:F

    iget v2, v0, Lmhq;->s:F

    invoke-virtual {v0, v1, v2, v5}, Lmhq;->f(FFF)V

    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->i()Lmhq;

    move-result-object v0

    iput-object v6, v0, Lmhq;->w:Lmey;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->i()Lmhq;

    move-result-object v0

    iput-object v14, v0, Lmhq;->x:Lmey;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->i()Lmhq;

    move-result-object v0

    move/from16 v1, v16

    iput-boolean v1, v0, Lmhq;->q:Z

    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method public static synthetic d(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Lmii;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private final h(I)I
    .locals 1

    iget v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->j:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const p1, 0x7f0700e0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1

    :pswitch_1
    const p1, 0x7f0700df

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1

    :pswitch_2
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/16 v0, 0x1d6

    if-ge p1, v0, :cond_1

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->h(I)I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->h(I)I

    move-result p1

    :goto_0
    return p1

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final i()Lmhq;
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->o:Lmhq;

    if-nez v0, :cond_0

    new-instance v0, Lmhs;

    new-instance v1, Landroidx/wear/ambient/AmbientMode$AmbientController;

    invoke-direct {v1, p0}, Landroidx/wear/ambient/AmbientMode$AmbientController;-><init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, v2}, Lmhs;-><init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Landroidx/wear/ambient/AmbientMode$AmbientController;[B[B)V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->o:Lmhq;

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->o:Lmhq;

    return-object v0
.end method


# virtual methods
.method public final a()Laai;
    .locals 1

    new-instance v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$Behavior;

    invoke-direct {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$Behavior;-><init>()V

    return-object v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->i:I

    invoke-direct {p0, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->h(I)I

    move-result v0

    return v0
.end method

.method public final c(Lmkf;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->i()Lmhq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmhq;->h(Lmkf;)V

    return-void
.end method

.method protected final drawableStateChanged()V
    .locals 0

    invoke-super {p0}, Lmii;->drawableStateChanged()V

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->i()Lmhq;

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getDrawableState()[I

    return-void
.end method

.method final e()V
    .locals 7

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->i()Lmhq;

    move-result-object v6

    iget-object v0, v6, Lmhq;->B:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget v0, v6, Lmhq;->A:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_0
    iget v0, v6, Lmhq;->A:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    :cond_1
    return-void

    :cond_2
    :goto_0
    iget-object v0, v6, Lmhq;->v:Landroid/animation/Animator;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_3
    invoke-virtual {v6}, Lmhq;->m()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v6, Lmhq;->x:Lmey;

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1, v1, v1}, Lmhq;->b(Lmey;FFF)Landroid/animation/AnimatorSet;

    move-result-object v0

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    const v3, 0x3ecccccd    # 0.4f

    sget v4, Lmhq;->d:I

    sget v5, Lmhq;->e:I

    move-object v0, v6

    move v2, v3

    invoke-virtual/range {v0 .. v5}, Lmhq;->c(FFFII)Landroid/animation/AnimatorSet;

    move-result-object v0

    :goto_1
    new-instance v1, Lmhh;

    invoke-direct {v1, v6}, Lmhh;-><init>(Lmhq;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_5
    iget-object v0, v6, Lmhq;->B:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmii;->g(IZ)V

    return-void
.end method

.method final f()V
    .locals 7

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->i()Lmhq;

    move-result-object v6

    iget-object v0, v6, Lmhq;->B:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget v0, v6, Lmhq;->A:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_0
    iget v0, v6, Lmhq;->A:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    :cond_1
    return-void

    :cond_2
    :goto_0
    iget-object v0, v6, Lmhq;->v:Landroid/animation/Animator;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_3
    iget-object v0, v6, Lmhq;->w:Lmey;

    invoke-virtual {v6}, Lmhq;->m()Z

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_7

    iget-object v1, v6, Lmhq;->B:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v6, Lmhq;->B:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setAlpha(F)V

    iget-object v1, v6, Lmhq;->B:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-nez v0, :cond_4

    const v3, 0x3ecccccd    # 0.4f

    goto :goto_1

    :cond_4
    :goto_1
    invoke-virtual {v1, v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setScaleY(F)V

    iget-object v0, v6, Lmhq;->B:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0, v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setScaleX(F)V

    invoke-virtual {v6, v3}, Lmhq;->g(F)V

    :cond_5
    iget-object v0, v6, Lmhq;->w:Lmey;

    if-eqz v0, :cond_6

    invoke-virtual {v6, v0, v2, v2, v2}, Lmhq;->b(Lmey;FFF)Landroid/animation/AnimatorSet;

    move-result-object v0

    goto :goto_2

    :cond_6
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    sget v4, Lmhq;->b:I

    sget v5, Lmhq;->c:I

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Lmhq;->c(FFFII)Landroid/animation/AnimatorSet;

    move-result-object v0

    :goto_2
    new-instance v1, Lmhi;

    invoke-direct {v1, v6}, Lmhi;-><init>(Lmhq;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_7
    iget-object v0, v6, Lmhq;->B:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lmii;->g(IZ)V

    iget-object v0, v6, Lmhq;->B:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setAlpha(F)V

    iget-object v0, v6, Lmhq;->B:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setScaleY(F)V

    iget-object v0, v6, Lmhq;->B:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setScaleX(F)V

    invoke-virtual {v6, v2}, Lmhq;->g(F)V

    return-void
.end method

.method public final getBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->e:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public final getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->f:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public final jumpDrawablesToCurrentState()V
    .locals 0

    invoke-super {p0}, Lmii;->jumpDrawablesToCurrentState()V

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->i()Lmhq;

    return-void
.end method

.method protected final onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Lmii;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->i()Lmhq;

    move-result-object v0

    iget-object v1, v0, Lmhq;->m:Lmka;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lmhq;->B:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-static {v0, v1}, Lmjy;->i(Landroid/view/View;Lmka;)V

    :cond_0
    return-void
.end method

.method protected final onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Lmii;->onDetachedFromWindow()V

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->i()Lmhq;

    move-result-object v0

    iget-object v1, v0, Lmhq;->B:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    iget-object v0, v0, Lmhq;->C:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    return-void
.end method

.method protected final onMeasure(II)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b()I

    move-result v0

    iget v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->k:I

    sub-int v1, v0, v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->a:I

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->i()Lmhq;

    move-result-object v1

    invoke-virtual {v1}, Lmhq;->j()V

    invoke-static {v0, p1}, Landroid/view/View;->resolveSize(II)I

    move-result p1

    invoke-static {v0, p2}, Landroid/view/View;->resolveSize(II)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->c:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr p2, p1

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->c:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr p2, v0

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->c:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->c:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, v0

    invoke-virtual {p0, p2, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setMeasuredDimension(II)V

    return-void
.end method

.method protected final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    instance-of v0, p1, Lmkv;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lmii;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Lmkv;

    iget-object v0, p1, Lahx;->d:Landroid/os/Parcelable;

    invoke-super {p0, v0}, Lmii;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->n:Lmgz;

    iget-object p1, p1, Lmkv;->a:Lxf;

    const-string v1, "expandableWidgetHelper"

    invoke-virtual {p1, v1}, Lxf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    invoke-static {p1}, Labf;->c(Ljava/lang/Object;)V

    const-string v1, "expanded"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lmgz;->b:Z

    const-string v1, "expandedComponentIdHint"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v0, Lmgz;->c:I

    iget-boolean p1, v0, Lmgz;->b:Z

    if-eqz p1, :cond_1

    iget-object p1, v0, Lmgz;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of v1, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v1, :cond_1

    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iget-object v0, v0, Lmgz;->a:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->b(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method protected final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    invoke-super {p0}, Lmii;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_0
    new-instance v1, Lmkv;

    invoke-direct {v1, v0}, Lmkv;-><init>(Landroid/os/Parcelable;)V

    iget-object v0, v1, Lmkv;->a:Lxf;

    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->n:Lmgz;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iget-boolean v4, v2, Lmgz;->b:Z

    const-string v5, "expanded"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget v2, v2, Lmgz;->c:I

    const-string v4, "expandedComponentIdHint"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "expandableWidgetHelper"

    invoke-virtual {v0, v2, v3}, Lxf;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->l:Landroid/graphics/Rect;

    invoke-static {p0}, Lafe;->f(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->c:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->c:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->c:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->c:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->l:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_0

    return v3

    :cond_0
    invoke-super {p0, p1}, Lmii;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final setBackgroundColor(I)V
    .locals 0

    return-void
.end method

.method public final setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public final setBackgroundResource(I)V
    .locals 0

    return-void
.end method

.method public final setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->e:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->e:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->i()Lmhq;

    move-result-object v0

    iget-object v1, v0, Lmhq;->m:Lmka;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lmka;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    iget-object v0, v0, Lmhq;->o:Lmhb;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lmhb;->b(Landroid/content/res/ColorStateList;)V

    :cond_1
    return-void
.end method

.method public final setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->f:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->f:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->i()Lmhq;

    move-result-object v0

    iget-object v0, v0, Lmhq;->m:Lmka;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lmka;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public final setElevation(F)V
    .locals 1

    invoke-super {p0, p1}, Lmii;->setElevation(F)V

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->i()Lmhq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmhq;->k(F)V

    return-void
.end method

.method public final setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p1, :cond_0

    invoke-super {p0, p1}, Lmii;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->i()Lmhq;

    move-result-object p1

    invoke-virtual {p1}, Lmhq;->i()V

    :cond_0
    return-void
.end method

.method public final setImageResource(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->m:Lir;

    invoke-virtual {v0, p1}, Lir;->e(I)V

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    return-void
.end method

.method public final setScaleX(F)V
    .locals 0

    invoke-super {p0, p1}, Lmii;->setScaleX(F)V

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->i()Lmhq;

    return-void
.end method

.method public final setScaleY(F)V
    .locals 0

    invoke-super {p0, p1}, Lmii;->setScaleY(F)V

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->i()Lmhq;

    return-void
.end method

.method public final setTranslationX(F)V
    .locals 0

    invoke-super {p0, p1}, Lmii;->setTranslationX(F)V

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->i()Lmhq;

    return-void
.end method

.method public final setTranslationY(F)V
    .locals 0

    invoke-super {p0, p1}, Lmii;->setTranslationY(F)V

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->i()Lmhq;

    return-void
.end method

.method public final setTranslationZ(F)V
    .locals 0

    invoke-super {p0, p1}, Lmii;->setTranslationZ(F)V

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->i()Lmhq;

    return-void
.end method
