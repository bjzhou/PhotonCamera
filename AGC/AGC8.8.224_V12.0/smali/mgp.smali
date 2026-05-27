.class public final Lmgp;
.super Lik;


# static fields
.field private static final e:I

.field private static final f:[I

.field private static final g:[I

.field private static final h:[[I

.field private static final i:I


# instance fields
.field b:Landroid/content/res/ColorStateList;

.field final c:Landroid/content/res/ColorStateList;

.field public d:[I

.field private final j:Ljava/util/LinkedHashSet;

.field private k:Landroid/content/res/ColorStateList;

.field private l:Z

.field private final m:Z

.field private final n:Z

.field private final o:Ljava/lang/CharSequence;

.field private p:Landroid/graphics/drawable/Drawable;

.field private q:Landroid/graphics/drawable/Drawable;

.field private r:Z

.field private final s:Landroid/graphics/PorterDuff$Mode;

.field private t:I

.field private u:Z

.field private v:Ljava/lang/CharSequence;

.field private w:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private final x:Lati;

.field private final y:Latc;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const v0, 0x7f1507cb

    sput v0, Lmgp;->e:I

    const v0, 0x7f0405fb

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lmgp;->f:[I

    const v0, 0x7f0405fa

    filled-new-array {v0}, [I

    move-result-object v1

    sput-object v1, Lmgp;->g:[I

    const/4 v1, 0x5

    new-array v1, v1, [[I

    const v2, 0x101009e

    filled-new-array {v2, v0}, [I

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v1, v3

    const v0, 0x10100a0

    filled-new-array {v2, v0}, [I

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const v3, -0x10100a0

    filled-new-array {v2, v3}, [I

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    const v2, -0x101009e

    filled-new-array {v2, v0}, [I

    move-result-object v0

    const/4 v4, 0x3

    aput-object v0, v1, v4

    const/4 v0, 0x4

    filled-new-array {v2, v3}, [I

    move-result-object v2

    aput-object v2, v1, v0

    sput-object v1, Lmgp;->h:[[I

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "drawable"

    const-string v2, "android"

    const-string v3, "btn_check_material_anim"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lmgp;->i:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 12

    sget v6, Lmgp;->e:I

    const v7, 0x7f040106

    invoke-static {p1, p2, v7, v6}, Lmls;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lik;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lmgp;->j:Ljava/util/LinkedHashSet;

    invoke-virtual {p0}, Lmgp;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lati;

    invoke-direct {v0, p1}, Lati;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const v2, 0x7f0802c1

    invoke-static {v1, v2, p1}, Lach;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v1, v0, Lati;->d:Landroid/graphics/drawable/Drawable$Callback;

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    new-instance v1, Latg;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    invoke-direct {v1, v2}, Latg;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    iput-object p1, v0, Lati;->e:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lmgp;->x:Lati;

    new-instance p1, Lmgm;

    invoke-direct {p1, p0}, Lmgm;-><init>(Lmgp;)V

    iput-object p1, p0, Lmgp;->y:Latc;

    invoke-virtual {p0}, Lmgp;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0}, Lahh;->a(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmgp;->p:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lmgp;->b:Landroid/content/res/ColorStateList;

    const/4 v8, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lik;->getButtonTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-super {p0}, Lik;->getButtonTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v8

    :goto_0
    iput-object v0, p0, Lmgp;->b:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lik;->a:Lim;

    const/4 v9, 0x1

    if-eqz v0, :cond_2

    iput-boolean v9, v0, Lim;->b:Z

    invoke-virtual {v0}, Lim;->a()V

    :cond_2
    sget-object v10, Lmgq;->a:[I

    const v3, 0x7f040106

    const/4 v11, 0x0

    new-array v5, v11, [I

    invoke-static {p1, p2, v7, v6}, Lmie;->b(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    move-object v0, p1

    move-object v1, p2

    move-object v2, v10

    move v4, v6

    invoke-static/range {v0 .. v5}, Lmie;->c(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V

    invoke-static {p1, p2, v10, v7, v6}, Landroidx/wear/ambient/AmbientDelegate;->D(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/wear/ambient/AmbientDelegate;

    move-result-object p2

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Landroidx/wear/ambient/AmbientDelegate;->u(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmgp;->q:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lmgp;->p:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    invoke-static {p1}, Lmie;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2, v11, v11}, Landroidx/wear/ambient/AmbientDelegate;->s(II)I

    move-result v0

    invoke-virtual {p2, v9, v11}, Landroidx/wear/ambient/AmbientDelegate;->s(II)I

    move-result v1

    sget v2, Lmgp;->i:I

    if-ne v0, v2, :cond_3

    if-nez v1, :cond_3

    invoke-super {p0, v8}, Lik;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0802c0

    invoke-static {p1, v0}, Lfs;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmgp;->p:Landroid/graphics/drawable/Drawable;

    iput-boolean v9, p0, Lmgp;->r:Z

    iget-object v0, p0, Lmgp;->q:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    const v0, 0x7f0802c2

    invoke-static {p1, v0}, Lfs;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmgp;->q:Landroid/graphics/drawable/Drawable;

    :cond_3
    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Landroidx/wear/ambient/AmbientDelegate;->A(I)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p2, v0, v11}, Landroidx/wear/ambient/AmbientDelegate;->s(II)I

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {p1, v1}, Labx;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    if-nez p1, :cond_5

    :cond_4
    invoke-virtual {p2, v0}, Landroidx/wear/ambient/AmbientDelegate;->t(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    :cond_5
    iput-object p1, p0, Lmgp;->c:Landroid/content/res/ColorStateList;

    const/4 p1, 0x4

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroidx/wear/ambient/AmbientDelegate;->p(II)I

    move-result p1

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p1, v0}, Lljr;->B(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    iput-object p1, p0, Lmgp;->s:Landroid/graphics/PorterDuff$Mode;

    const/16 p1, 0xa

    invoke-virtual {p2, p1, v11}, Landroidx/wear/ambient/AmbientDelegate;->z(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lmgp;->l:Z

    const/4 p1, 0x6

    invoke-virtual {p2, p1, v9}, Landroidx/wear/ambient/AmbientDelegate;->z(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lmgp;->m:Z

    const/16 p1, 0x9

    invoke-virtual {p2, p1, v11}, Landroidx/wear/ambient/AmbientDelegate;->z(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lmgp;->n:Z

    const/16 p1, 0x8

    invoke-virtual {p2, p1}, Landroidx/wear/ambient/AmbientDelegate;->w(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lmgp;->o:Ljava/lang/CharSequence;

    const/4 p1, 0x7

    invoke-virtual {p2, p1}, Landroidx/wear/ambient/AmbientDelegate;->A(I)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p2, p1, v11}, Landroidx/wear/ambient/AmbientDelegate;->p(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lmgp;->a(I)V

    :cond_6
    invoke-virtual {p2}, Landroidx/wear/ambient/AmbientDelegate;->y()V

    invoke-direct {p0}, Lmgp;->b()V

    return-void
.end method

.method private final b()V
    .locals 8

    iget-object v0, p0, Lmgp;->p:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lmgp;->b:Landroid/content/res/ColorStateList;

    invoke-static {p0}, Lahg;->b(Landroid/widget/CompoundButton;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lljr;->E(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmgp;->p:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lmgp;->q:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lmgp;->c:Landroid/content/res/ColorStateList;

    iget-object v2, p0, Lmgp;->s:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1, v2}, Lljr;->E(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmgp;->q:Landroid/graphics/drawable/Drawable;

    iget-boolean v0, p0, Lmgp;->r:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lmgp;->x:Lati;

    if-eqz v0, :cond_8

    iget-object v2, p0, Lmgp;->y:Latc;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, v0, Lati;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    check-cast v3, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v2}, Latc;->a()Landroid/graphics/drawable/Animatable2$AnimationCallback;

    move-result-object v4

    invoke-static {v3, v4}, Lath;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_2
    iget-object v3, v0, Lati;->c:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v2, v0, Lati;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v0, Lati;->b:Landroid/animation/Animator$AnimatorListener;

    if-eqz v2, :cond_3

    iget-object v3, v0, Lati;->a:Latf;

    iget-object v3, v3, Latf;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 v2, 0x0

    iput-object v2, v0, Lati;->b:Landroid/animation/Animator$AnimatorListener;

    :cond_3
    :goto_0
    iget-object v0, p0, Lmgp;->x:Lati;

    iget-object v2, p0, Lmgp;->y:Latc;

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    iget-object v3, v0, Lati;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_5

    check-cast v3, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v2}, Latc;->a()Landroid/graphics/drawable/Animatable2$AnimationCallback;

    move-result-object v0

    invoke-static {v3, v0}, Lath;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    iget-object v3, v0, Lati;->c:Ljava/util/ArrayList;

    if-nez v3, :cond_6

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lati;->c:Ljava/util/ArrayList;

    :cond_6
    iget-object v3, v0, Lati;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, v0, Lati;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lati;->b:Landroid/animation/Animator$AnimatorListener;

    if-nez v2, :cond_7

    new-instance v2, Late;

    invoke-direct {v2, v0}, Late;-><init>(Lati;)V

    iput-object v2, v0, Lati;->b:Landroid/animation/Animator$AnimatorListener;

    :cond_7
    iget-object v2, v0, Lati;->a:Latf;

    iget-object v2, v2, Latf;->c:Landroid/animation/AnimatorSet;

    iget-object v0, v0, Lati;->b:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_8
    :goto_1
    iget-object v0, p0, Lmgp;->p:Landroid/graphics/drawable/Drawable;

    instance-of v2, v0, Landroid/graphics/drawable/AnimatedStateListDrawable;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lmgp;->x:Lati;

    if-eqz v2, :cond_9

    check-cast v0, Landroid/graphics/drawable/AnimatedStateListDrawable;

    const v3, 0x7f0b00c9

    const v4, 0x7f0b03d6

    invoke-virtual {v0, v3, v4, v2, v1}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addTransition(IILandroid/graphics/drawable/Drawable;Z)V

    iget-object v0, p0, Lmgp;->p:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/AnimatedStateListDrawable;

    iget-object v2, p0, Lmgp;->x:Lati;

    const v3, 0x7f0b01a0

    invoke-virtual {v0, v3, v4, v2, v1}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addTransition(IILandroid/graphics/drawable/Drawable;Z)V

    :cond_9
    :goto_2
    iget-object v0, p0, Lmgp;->p:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    iget-object v2, p0, Lmgp;->b:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_a

    invoke-static {v0, v2}, Lacv;->g(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_a
    iget-object v0, p0, Lmgp;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    iget-object v2, p0, Lmgp;->c:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_b

    invoke-static {v0, v2}, Lacv;->g(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_b
    iget-object v0, p0, Lmgp;->p:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lmgp;->q:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_c

    move-object v0, v2

    goto/16 :goto_5

    :cond_c
    if-eqz v2, :cond_11

    new-instance v3, Landroid/graphics/drawable/LayerDrawable;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    aput-object v0, v4, v1

    const/4 v1, 0x1

    aput-object v2, v4, v1

    invoke-direct {v3, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_10

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    if-ne v4, v5, :cond_d

    goto :goto_3

    :cond_d
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    if-gt v4, v5, :cond_e

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    if-gt v4, v5, :cond_e

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    goto :goto_4

    :cond_e
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v2

    div-float/2addr v5, v6

    cmpl-float v2, v4, v5

    if-ltz v2, :cond_f

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v2, v0

    div-float/2addr v2, v4

    float-to-int v2, v2

    goto :goto_4

    :cond_f
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v0, v2

    mul-float v4, v4, v0

    float-to-int v0, v4

    goto :goto_4

    :cond_10
    :goto_3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    move v7, v2

    move v2, v0

    move v0, v7

    :goto_4
    invoke-virtual {v3, v1, v0, v2}, Landroid/graphics/drawable/LayerDrawable;->setLayerSize(III)V

    const/16 v0, 0x11

    invoke-virtual {v3, v1, v0}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    move-object v0, v3

    :cond_11
    :goto_5
    invoke-super {p0, v0}, Lik;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lmgp;->refreshDrawableState()V

    return-void
.end method

.method private final c()V
    .locals 2

    iget-object v0, p0, Lmgp;->v:Ljava/lang/CharSequence;

    if-nez v0, :cond_2

    iget v0, p0, Lmgp;->t:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lmgp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f140328

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lmgp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f14032a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lmgp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f140329

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-super {p0, v0}, Lik;->setStateDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    iget v0, p0, Lmgp;->t:I

    if-eq v0, p1, :cond_5

    iput p1, p0, Lmgp;->t:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-super {p0, p1}, Lik;->setChecked(Z)V

    invoke-virtual {p0}, Lmgp;->refreshDrawableState()V

    invoke-direct {p0}, Lmgp;->c()V

    iget-boolean p1, p0, Lmgp;->u:Z

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iput-boolean v1, p0, Lmgp;->u:Z

    iget-object p1, p0, Lmgp;->j:Ljava/util/LinkedHashSet;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmgn;

    invoke-interface {v1}, Lmgn;->a()V

    goto :goto_1

    :cond_2
    iget p1, p0, Lmgp;->t:I

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    iget-object p1, p0, Lmgp;->w:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lmgp;->isChecked()Z

    move-result v1

    invoke-interface {p1, p0, v1}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    :cond_3
    invoke-virtual {p0}, Lmgp;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v1, Landroid/view/autofill/AutofillManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/autofill/AutofillManager;

    if-eqz p1, :cond_4

    invoke-virtual {p1, p0}, Landroid/view/autofill/AutofillManager;->notifyValueChanged(Landroid/view/View;)V

    :cond_4
    iput-boolean v0, p0, Lmgp;->u:Z

    :cond_5
    return-void
.end method

.method public final getButtonDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lmgp;->p:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getButtonTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lmgp;->b:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public final isChecked()Z
    .locals 2

    iget v0, p0, Lmgp;->t:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final onAttachedToWindow()V
    .locals 8

    invoke-super {p0}, Lik;->onAttachedToWindow()V

    iget-boolean v0, p0, Lmgp;->l:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmgp;->b:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_1

    iget-object v0, p0, Lmgp;->c:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmgp;->l:Z

    iget-object v0, p0, Lmgp;->k:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    sget-object v0, Lmgp;->h:[[I

    array-length v1, v0

    const v1, 0x7f04015e

    invoke-static {p0, v1}, Lkwp;->l(Landroid/view/View;I)I

    move-result v1

    const v2, 0x7f040161

    invoke-static {p0, v2}, Lkwp;->l(Landroid/view/View;I)I

    move-result v2

    const v3, 0x7f0401ae

    invoke-static {p0, v3}, Lkwp;->l(Landroid/view/View;I)I

    move-result v3

    const v4, 0x7f040181

    invoke-static {p0, v4}, Lkwp;->l(Landroid/view/View;I)I

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v3, v2, v5}, Lkwp;->n(IIF)I

    move-result v2

    invoke-static {v3, v1, v5}, Lkwp;->n(IIF)I

    move-result v1

    const v5, 0x3f0a3d71    # 0.54f

    invoke-static {v3, v4, v5}, Lkwp;->n(IIF)I

    move-result v5

    const v6, 0x3ec28f5c    # 0.38f

    invoke-static {v3, v4, v6}, Lkwp;->n(IIF)I

    move-result v7

    invoke-static {v3, v4, v6}, Lkwp;->n(IIF)I

    move-result v3

    filled-new-array {v2, v1, v5, v7, v3}, [I

    move-result-object v1

    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v2, p0, Lmgp;->k:Landroid/content/res/ColorStateList;

    :cond_0
    iget-object v0, p0, Lmgp;->k:Landroid/content/res/ColorStateList;

    invoke-static {p0, v0}, Lahg;->c(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V

    :cond_1
    return-void
.end method

.method protected final onCreateDrawableState(I)[I
    .locals 3

    const/4 v0, 0x2

    add-int/2addr p1, v0

    invoke-super {p0, p1}, Lik;->onCreateDrawableState(I)[I

    move-result-object p1

    iget v1, p0, Lmgp;->t:I

    if-ne v1, v0, :cond_0

    sget-object v0, Lmgp;->f:[I

    invoke-static {p1, v0}, Lmgp;->mergeDrawableStates([I[I)[I

    :cond_0
    iget-boolean v0, p0, Lmgp;->n:Z

    if-eqz v0, :cond_1

    sget-object v0, Lmgp;->g:[I

    invoke-static {p1, v0}, Lmgp;->mergeDrawableStates([I[I)[I

    :cond_1
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    const v2, 0x10100a0

    if-ge v0, v1, :cond_4

    aget v1, p1, v0

    if-ne v1, v2, :cond_2

    move-object v1, p1

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    aput v2, v1, v0

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v1, 0x1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    aput v2, v0, v1

    move-object v1, v0

    :goto_1
    iput-object v1, p0, Lmgp;->d:[I

    return-object p1
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    iget-boolean v0, p0, Lmgp;->m:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lmgp;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lahh;->a(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lljr;->C(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x1

    if-eq v2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    invoke-virtual {p0}, Lmgp;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    div-int/lit8 v1, v1, 0x2

    mul-int v1, v1, v2

    int-to-float v2, v1

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-super {p0, p1}, Lik;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-virtual {p0}, Lmgp;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0}, Lmgp;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v2, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v1

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v1

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v2, v3, v4, p1}, Lacv;->e(Landroid/graphics/drawable/Drawable;IIII)V

    :cond_1
    return-void

    :cond_2
    invoke-super {p0, p1}, Lik;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    invoke-super {p0, p1}, Lik;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lmgp;->n:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmgp;->o:Ljava/lang/CharSequence;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Lmgo;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lik;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Lmgo;

    invoke-virtual {p1}, Lmgo;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lik;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget p1, p1, Lmgo;->a:I

    invoke-virtual {p0, p1}, Lmgp;->a(I)V

    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Lik;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lmgo;

    invoke-direct {v1, v0}, Lmgo;-><init>(Landroid/os/Parcelable;)V

    iget v0, p0, Lmgp;->t:I

    iput v0, v1, Lmgo;->a:I

    return-object v1
.end method

.method public final setButtonDrawable(I)V
    .locals 1

    invoke-virtual {p0}, Lmgp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lfs;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lik;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lmgp;->p:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lmgp;->r:Z

    invoke-direct {p0}, Lmgp;->b()V

    return-void
.end method

.method public final setButtonTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lmgp;->b:Landroid/content/res/ColorStateList;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lmgp;->b:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Lmgp;->b()V

    return-void
.end method

.method public final setButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Lik;->a:Lim;

    if-eqz v0, :cond_0

    iput-object p1, v0, Lim;->a:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lim;->c:Z

    invoke-virtual {v0}, Lim;->a()V

    :cond_0
    invoke-direct {p0}, Lmgp;->b()V

    return-void
.end method

.method public final setChecked(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lmgp;->a(I)V

    return-void
.end method

.method public final setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    iput-object p1, p0, Lmgp;->w:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method public final setStateDescription(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lmgp;->v:Ljava/lang/CharSequence;

    if-nez p1, :cond_0

    invoke-direct {p0}, Lmgp;->c()V

    return-void

    :cond_0
    invoke-super {p0, p1}, Lik;->setStateDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final toggle()V
    .locals 1

    invoke-virtual {p0}, Lmgp;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lmgp;->a(I)V

    return-void
.end method
