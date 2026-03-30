.class public abstract Lnzc;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "PG"

# interfaces
.implements Landroid/widget/Checkable;


# static fields
.field static final i:[I

.field static final j:[I

.field static final k:[I

.field private static final s:[I


# instance fields
.field protected l:Landroid/content/res/ColorStateList;

.field protected m:Landroid/content/res/ColorStateList;

.field public n:Landroid/graphics/drawable/Drawable;

.field protected o:Landroid/widget/ImageView;

.field protected p:Z

.field protected q:Z

.field protected r:Z

.field private t:Landroid/content/res/ColorStateList;

.field private u:Landroid/content/res/ColorStateList;

.field private final v:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_d

    nop

    nop

    :goto_0
    filled-new-array {v1, v0}, [I

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_11

    nop

    nop

    :goto_5
    filled-new-array {v0}, [I

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_6
    filled-new-array {v1, v0}, [I

    move-result-object v0

    nop

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

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_8
    filled-new-array {v0}, [I

    move-result-object v0

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_9
    sput-object v0, Lnzc;->j:[I

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x10100a0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_b
    sput-object v0, Lnzc;->i:[I

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

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x20

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_3

    nop

    :goto_f
    const v1, 0x5

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_11
    const v0, -0x101009e

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_12
    const v1, 0x101009e

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_13
    const v0, -0x10100a0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_14
    sput-object v1, Lnzc;->k:[I

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_15
    sput-object v0, Lnzc;->s:[I

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

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
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-direct {p0, p1, v0}, Lnzc;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    const v0, 0x7f0407af

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
    invoke-direct {p0, p1, p2, v0}, Lnzc;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-boolean p2, p0, Lnzc;->p:Z

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
    new-instance p2, Ljava/util/HashSet;

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

    :goto_2
    invoke-static {p0, p1}, Ldwd;->h(Landroid/view/View;Ldvd;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p3, p0, Lnzc;->l:Landroid/content/res/ColorStateList;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_4
    iput-object p2, p0, Lnzc;->v:Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_5
    const/4 p2, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p1}, Lnzk;-><init>()V

    goto/32 :goto_a

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
    invoke-direct {p1, p0}, Lnzb;-><init>(Lnzc;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_9
    const p3, 0x7f040184

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/32 :goto_b

    nop

    nop

    :goto_b
    new-instance p1, Lnzb;

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
    new-instance p1, Lnzk;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {p1, p3}, Lolx;->aB(Landroid/content/Context;I)I

    move-result p1

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

    :goto_e
    invoke-static {p1, p1}, Lnzc;->g(II)Landroid/content/res/ColorStateList;

    move-result-object p1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_10
    iput-object p1, p0, Lnzc;->m:Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_11
    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_12
    const/4 p3, 0x0

    nop

    goto/32 :goto_3

    nop

    nop
.end method

.method public static g(II)Landroid/content/res/ColorStateList;
    .locals 4

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

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

    nop

    :goto_2
    filled-new-array {v1, v2, v3}, [[I

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_e

    nop

    nop

    :goto_4
    new-instance v0, Landroid/content/res/ColorStateList;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    sget-object v1, Lnzc;->j:[I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_d

    nop

    :goto_7
    invoke-direct {v0, v1, p0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    goto/32 :goto_a

    nop

    nop

    :goto_8
    const v1, 0x1a

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_9
    sget-object v2, Lnzc;->k:[I

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_a
    return-object v0

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_c
    const v0, 0x19

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_b

    nop

    :goto_e
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_f
    sget-object v3, Lnzc;->i:[I

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    filled-new-array {p1, p0, p1}, [I

    move-result-object p0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop
.end method

.method private static m(Landroid/content/res/ColorStateList;)I
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

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

    :goto_2
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_3
    return v0

    nop

    :goto_4
    goto/32 :goto_a

    nop

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

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_6
    const v1, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

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

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_b

    nop

    nop

    :goto_a
    sget-object v1, Lnzc;->k:[I

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_b
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x18

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_d
    if-eqz p0, :cond_1

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

    :cond_1
    goto/32 :goto_3

    nop

    nop

    :goto_e
    goto/32 :goto_9

    nop

    :goto_f
    rem-int v0, v0, v1

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

    nop

    nop
.end method

.method private static n(Landroid/content/res/ColorStateList;)I
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x9

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    goto/32 :goto_f

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_2
    rem-int v0, v0, v1

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
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_6
    sget-object v1, Lnzc;->j:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_8
    if-eqz p0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_9
    return v0

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_f

    nop

    :goto_c
    const v0, 0x8

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0, v1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final h()Ljava/lang/String;
    .locals 1

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-boolean p0, p0, Lnzc;->q:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    const-class p0, Landroid/widget/Button;

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

    nop

    :goto_2
    return-object p0

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    const-class p0, Landroid/widget/CompoundButton;

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    goto :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    :goto_8
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_9
    if-ne v0, p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop
.end method

.method protected i(Landroid/content/res/ColorStateList;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lnzc;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

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
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :goto_5
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Lnzc;->refreshDrawableState()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final isChecked()Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-boolean p0, p0, Lnzc;->p:Z

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
.end method

.method protected final j(Landroid/util/AttributeSet;I)V
    .locals 8

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lnzc;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1
    const/4 p2, 0x4

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    nop

    nop

    const/16 v1, 0x8

    nop

    nop

    nop

    const/4 v2, 0x3

    nop

    nop

    nop

    nop

    nop

    const/16 v3, 0x9

    nop

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    const/4 v5, 0x1

    nop

    if-nez v0, :cond_1

    nop

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    nop

    nop

    nop

    if-nez v0, :cond_1

    nop

    nop

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    nop

    if-nez v0, :cond_1

    nop

    nop

    nop

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    nop

    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    goto :goto_2

    nop

    nop

    nop

    nop

    :cond_0
    move v0, v4

    nop

    nop

    nop

    nop

    goto :goto_3

    nop

    nop

    nop

    :cond_1
    :goto_2
    move v0, v5

    nop

    :goto_3
    const/16 v6, 0xc

    nop

    nop

    nop

    nop

    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    nop

    nop

    nop

    nop

    nop

    if-eqz v7, :cond_2

    nop

    invoke-virtual {p1, v6, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    nop

    invoke-virtual {p0, v6}, Lnzc;->l(I)V

    :cond_2
    const/4 v6, 0x7

    nop

    nop

    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v7

    nop

    if-eqz v7, :cond_3

    nop

    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    nop

    iput-object v6, p0, Lnzc;->t:Landroid/content/res/ColorStateList;

    nop

    nop

    goto :goto_4

    nop

    nop

    nop

    nop

    :cond_3
    const/16 v6, 0xb

    nop

    nop

    nop

    invoke-virtual {p1, v6, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    nop

    if-eqz v6, :cond_4

    nop

    nop

    nop

    nop

    iget-object v6, p0, Lnzc;->l:Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    nop

    iput-object v6, p0, Lnzc;->t:Landroid/content/res/ColorStateList;

    nop

    nop

    :cond_4
    :goto_4
    const/4 v6, 0x6

    nop

    nop

    nop

    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v7

    nop

    nop

    if-eqz v7, :cond_5

    nop

    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    nop

    iput-object v6, p0, Lnzc;->u:Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    nop

    nop

    goto :goto_5

    nop

    :cond_5
    iget-object v6, p0, Lnzc;->m:Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    nop

    nop

    iput-object v6, p0, Lnzc;->u:Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-eqz v0, :cond_8

    nop

    iget-object v0, p0, Lnzc;->t:Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0}, Lnzc;->m(Landroid/content/res/ColorStateList;)I

    move-result v0

    nop

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    nop

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lnzc;->t:Landroid/content/res/ColorStateList;

    nop

    nop

    invoke-static {v0}, Lnzc;->n(Landroid/content/res/ColorStateList;)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    nop

    if-nez p2, :cond_7

    nop

    if-nez v0, :cond_6

    nop

    nop

    nop

    const/4 p2, 0x0

    nop

    goto :goto_6

    nop

    :cond_6
    move p2, v4

    nop

    nop

    nop

    nop

    :cond_7
    invoke-static {p2, v0}, Lnzc;->g(II)Landroid/content/res/ColorStateList;

    move-result-object p2

    nop

    nop

    :goto_6
    iput-object p2, p0, Lnzc;->t:Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    nop

    nop

    iget-object p2, p0, Lnzc;->u:Landroid/content/res/ColorStateList;

    nop

    nop

    invoke-static {p2}, Lnzc;->m(Landroid/content/res/ColorStateList;)I

    move-result p2

    nop

    nop

    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    nop

    nop

    iget-object v0, p0, Lnzc;->u:Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    nop

    invoke-static {v0}, Lnzc;->n(Landroid/content/res/ColorStateList;)I

    move-result v0

    nop

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    nop

    invoke-static {p2, v0}, Lnzc;->g(II)Landroid/content/res/ColorStateList;

    move-result-object p2

    nop

    nop

    nop

    iput-object p2, p0, Lnzc;->u:Landroid/content/res/ColorStateList;

    nop

    :cond_8
    iget-object p2, p0, Lnzc;->t:Landroid/content/res/ColorStateList;

    nop

    if-nez p2, :cond_9

    nop

    nop

    const/16 p2, 0xd

    nop

    nop

    invoke-virtual {p1, p2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    nop

    nop

    nop

    if-eqz p2, :cond_a

    nop

    nop

    nop

    :cond_9
    iget-object p2, p0, Lnzc;->t:Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lnzc;->o:Landroid/widget/ImageView;

    nop

    nop

    nop

    nop

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_a
    const/4 p2, 0x5

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    nop

    iput-object p2, p0, Lnzc;->n:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    iget-object p2, p0, Lnzc;->u:Landroid/content/res/ColorStateList;

    nop

    nop

    invoke-virtual {p0, p2}, Lnzc;->i(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Lnzc;->getContext()Landroid/content/Context;

    move-result-object p2

    nop

    nop

    nop

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    nop

    nop

    const v0, 0x7f0708f5

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    nop

    nop

    nop

    nop

    nop

    int-to-float p2, p2

    nop

    nop

    nop

    const/16 v0, 0xa

    nop

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    nop

    nop

    nop

    float-to-int p2, p2

    nop

    nop

    invoke-virtual {p0}, Lnzc;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    nop

    nop

    instance-of v1, v0, Landroid/graphics/drawable/LayerDrawable;

    nop

    if-eqz v1, :cond_b

    nop

    nop

    nop

    nop

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    nop

    nop

    nop

    const/high16 v1, 0x1020000

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    nop

    nop

    nop

    :cond_b
    iget-object v1, p0, Lnzc;->n:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    nop

    instance-of v2, v1, Landroid/graphics/drawable/GradientDrawable;

    nop

    nop

    nop

    if-eqz v2, :cond_c

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    nop

    nop

    nop

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    nop

    nop

    nop

    nop

    int-to-float p2, p2

    nop

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    goto :goto_7

    nop

    nop

    nop

    nop

    :cond_c
    instance-of v1, v0, Landroid/graphics/drawable/GradientDrawable;

    nop

    if-eqz v1, :cond_d

    nop

    nop

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    nop

    nop

    nop

    nop

    int-to-float p2, p2

    nop

    nop

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    :cond_d
    :goto_7
    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    nop

    invoke-virtual {p0, p2}, Lnzc;->setEnabled(Z)V

    const/4 p2, 0x2

    nop

    nop

    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    nop

    nop

    nop

    invoke-virtual {p0, p2}, Lnzc;->k(Z)V

    invoke-virtual {p1, v5, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    nop

    invoke-virtual {p0, p2}, Lnzc;->setChecked(Z)V

    const/16 p2, 0xf

    nop

    nop

    nop

    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    nop

    nop

    nop

    nop

    nop

    iput-boolean p2, p0, Lnzc;->r:Z

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v5}, Lnzc;->setClipToOutline(Z)V

    new-instance p2, Lnza;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p2, p0}, Lnza;-><init>(Lnzc;)V

    invoke-virtual {p0, p2}, Lnzc;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_c
    const v1, 0x20

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0xd

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_12

    nop

    nop

    :goto_f
    if-lez v0, :cond_e

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_e
    goto/32 :goto_11

    nop

    :goto_10
    const v2, 0x7f150604

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_13
    sget-object v1, Lnyy;->a:[I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_18
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop
.end method

.method public final k(Z)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-virtual {p0}, Lnzc;->refreshDrawableState()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-boolean p1, p0, Lnzc;->q:Z

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    or-int/2addr p1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    instance-of v0, v0, Lnzd;

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

    :goto_5
    invoke-virtual {p0}, Lnzc;->getParent()Landroid/view/ViewParent;

    move-result-object v0

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

.method public abstract l(I)V
.end method

.method protected onAttachedToWindow()V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    :goto_0
    instance-of v0, v0, Lnzd;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    invoke-virtual {p0, v0}, Lnzc;->k(Z)V

    :goto_3
    goto/32 :goto_1

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lnzc;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->onAttachedToWindow()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v0, 0x1

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

    :goto_7
    if-nez v0, :cond_0

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop
.end method

.method public final onCreateDrawableState(I)[I
    .locals 7

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int/lit8 v3, p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-object p1

    nop

    :goto_5
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const p0, 0x7f040650

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_7
    iget-boolean v0, p0, Lnzc;->p:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_8
    const v0, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-nez v0, :cond_0

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_32

    nop

    :goto_b
    add-int/lit8 v4, v4, 0x1

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

    :goto_c
    goto :goto_2

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_e
    add-int/lit8 p1, p1, 0x2

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_f
    add-int/lit8 v3, p0, -0x1

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

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

    :goto_11
    aget v5, p1, v4

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_12
    invoke-static {p0, v1}, Ldtz;->c(II)I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto :goto_1a

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_15
    const/high16 v1, -0x1000000

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_16
    invoke-static {p1, v0}, Lnzc;->mergeDrawableStates([I[I)[I

    :goto_17
    goto/32 :goto_20

    nop

    nop

    :goto_18
    sget-object v0, Lnzc;->s:[I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_19
    const p0, -0x7f040650

    nop

    :goto_1a
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onCreateDrawableState(I)[I

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1c
    cmpl-double p0, v1, v5

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_1d
    add-int/lit8 v4, v4, -0x1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/16 :goto_31

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_20
    iget-object p0, p0, Lnzc;->u:Landroid/content/res/ColorStateList;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_21
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_22
    move p0, v0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_23
    new-array v3, v3, [I

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_24
    move-object p1, v3

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-gez v4, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_11

    nop

    nop

    :goto_27
    aput p0, p1, v4

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_28
    array-length p0, p1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_29
    if-eqz v5, :cond_3

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :cond_3
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    if-gez p0, :cond_4

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_4
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    const v1, 0x6

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-static {p1, v0, v3, v0, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/32 :goto_24

    nop

    nop

    :goto_2d
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_2e
    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_2f
    if-eq v4, v3, :cond_5

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_30
    move v4, v3

    nop

    nop

    :goto_31
    goto/32 :goto_26

    nop

    nop

    :goto_32
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_34
    if-eqz p0, :cond_6

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_22

    nop

    nop

    :goto_35
    invoke-static {p0}, Ldtz;->a(I)D

    move-result-wide v1

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final onLayout(ZIIII)V
    .locals 0

    goto/32 :goto_5

    nop

    nop

    :goto_0
    const/4 p1, 0x0

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
    iget-object p0, p0, Lnzc;->n:Landroid/graphics/drawable/Drawable;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1, p1, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    sub-int/2addr p5, p3

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    invoke-super/range {p0 .. p5}, Landroidx/constraintlayout/widget/ConstraintLayout;->onLayout(ZIIII)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    :goto_7
    if-nez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_8
    sub-int/2addr p4, p2

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method

.method public final performClick()Z
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->performClick()Z

    move-result p0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lnzc;->isEnabled()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

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

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-boolean v0, p0, Lnzc;->q:Z

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lnzc;->toggle()V

    :goto_5
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    :goto_7
    iget-boolean v0, p0, Lnzc;->r:Z

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return p0

    nop

    nop

    nop

    nop

    :goto_9
    if-nez v0, :cond_2

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_0
    if-nez p1, :cond_0

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

    :cond_0
    goto/32 :goto_5

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Lnzc;->i(Landroid/content/res/ColorStateList;)V

    goto/32 :goto_2

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

    :goto_3
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

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

    :goto_5
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p1, p0, Lnzc;->u:Landroid/content/res/ColorStateList;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_9
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_a
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_6

    nop

    nop

    :goto_b
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_c

    nop

    :goto_c
    goto/32 :goto_3

    nop

    :goto_d
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :goto_f
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_11
    const v0, 0x1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final setBackgroundColor(I)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lnzc;->refreshDrawableState()V

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
    invoke-virtual {p0, p1}, Lnzc;->i(Landroid/content/res/ColorStateList;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

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
    iput-object p1, p0, Lnzc;->u:Landroid/content/res/ColorStateList;

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public setChecked(Z)V
    .locals 1

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_0
    iget-boolean v0, p0, Lnzc;->p:Z

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1
    if-nez p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_4
    iput-boolean p1, p0, Lnzc;->p:Z

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lnzc;->v:Ljava/util/Set;

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_6
    check-cast p1, Lnzk;

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

    :goto_7
    goto :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_d

    nop

    nop

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Lnzc;->refreshDrawableState()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-ne p1, v0, :cond_1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    :goto_e
    invoke-static {p0}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_f
    iget-boolean v0, p0, Lnzc;->q:Z

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final toggle()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-boolean v0, p0, Lnzc;->p:Z

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    xor-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, v0}, Lnzc;->setChecked(Z)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method
