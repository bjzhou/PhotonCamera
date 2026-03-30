.class public final Lekm;
.super Lekn;
.source "PG"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# instance fields
.field public final a:Lekk;

.field public b:Landroid/animation/Animator$AnimatorListener;

.field public c:Ljava/util/ArrayList;

.field public final d:Landroid/graphics/drawable/Drawable$Callback;

.field private final f:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, v0}, Lekm;-><init>(Landroid/content/Context;)V

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

    nop

    :goto_2
    const/4 v0, 0x0

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
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v1, 0x1

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
    return-void

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_f

    nop

    nop

    :goto_4
    invoke-direct {v0, p0, v1}, Lemw;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_6
    const/4 v0, 0x0

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

    :goto_7
    invoke-direct {p1}, Lekk;-><init>()V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_8
    new-instance v0, Lemw;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_9
    const v0, 0x9

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput-object p1, p0, Lekm;->f:Landroid/content/Context;

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

    :goto_b
    new-instance p1, Lekk;

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
    iput-object p1, p0, Lekm;->a:Lekk;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_e
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {p0}, Lekn;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_12
    iput-object v0, p0, Lekm;->c:Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_13
    const v1, 0x2

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_14
    iput-object v0, p0, Lekm;->d:Landroid/graphics/drawable/Drawable$Callback;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_15
    iput-object v0, p0, Lekm;->b:Landroid/animation/Animator$AnimatorListener;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    :goto_1
    goto/32 :goto_3

    nop

    nop

    :goto_2
    if-nez p0, :cond_0

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

    :cond_0
    goto/32 :goto_0

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
    iget-object p0, p0, Lekm;->e:Landroid/graphics/drawable/Drawable;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final canApplyTheme()Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lekm;->e:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    :goto_5
    if-nez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    const/4 p0, 0x0

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

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 1

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lekm;->a:Lekk;

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
    iget-object p1, p1, Lekk;->c:Landroid/animation/AnimatorSet;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_2
    iget-object v0, v0, Lekk;->b:Lekv;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-nez v0, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_4
    if-nez p1, :cond_1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    :goto_6
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    iget-object p1, p0, Lekm;->a:Lekk;

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

    :goto_8
    iget-object v0, p0, Lekm;->e:Landroid/graphics/drawable/Drawable;

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

    :goto_9
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/32 :goto_5

    nop

    nop

    :goto_a
    invoke-virtual {v0, p1}, Lekv;->draw(Landroid/graphics/Canvas;)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Lekm;->invalidateSelf()V

    :goto_c
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop
.end method

.method public final getAlpha()I
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lekk;->b:Lekv;

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
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result p0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

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

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lekm;->a:Lekk;

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

    :goto_4
    return p0

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Lekv;->getAlpha()I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_6
    iget-object v0, p0, Lekm;->e:Landroid/graphics/drawable/Drawable;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return p0

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final getChangingConfigurations()I
    .locals 1

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    :goto_1
    iget p0, p0, Lekk;->a:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    :goto_3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result p0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lekm;->a:Lekk;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    invoke-super {p0}, Lekn;->getChangingConfigurations()I

    move-result v0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Lekm;->e:Landroid/graphics/drawable/Drawable;

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
.end method

.method public final getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_6

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

    :goto_1
    iget-object p0, p0, Lekk;->b:Lekv;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lekv;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lekm;->e:Landroid/graphics/drawable/Drawable;

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

    :goto_4
    return-object p0

    nop

    nop

    nop

    nop

    :goto_5
    return-object p0

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Lekm;->a:Lekk;

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

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    :goto_1
    iget-object p0, p0, Lekm;->e:Landroid/graphics/drawable/Drawable;

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

    :goto_3
    new-instance v0, Lekl;

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

    nop

    :goto_4
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    return-object v0

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_2

    nop

    nop

    :goto_7
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_8
    invoke-direct {v0, p0}, Lekl;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    goto/32 :goto_5

    nop

    nop

    nop
.end method

.method public final getIntrinsicHeight()I
    .locals 1

    goto/32 :goto_5

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

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

    :cond_0
    goto/32 :goto_8

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
    iget-object p0, p0, Lekm;->a:Lekk;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lekv;->getIntrinsicHeight()I

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

    nop

    :goto_4
    iget-object p0, p0, Lekk;->b:Lekv;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lekm;->e:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

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

.method public final getIntrinsicWidth()I
    .locals 1

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

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

    :goto_1
    iget-object p0, p0, Lekk;->b:Lekv;

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
    return p0

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lekm;->a:Lekk;

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
    return p0

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Lekv;->getIntrinsicWidth()I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_7
    iget-object v0, p0, Lekm;->e:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_8
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final getOpacity()I
    .locals 1

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lekv;->getOpacity()I

    move-result p0

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

    :goto_3
    iget-object p0, p0, Lekk;->b:Lekv;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result p0

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    iget-object p0, p0, Lekm;->a:Lekk;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_6
    if-nez v0, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return p0

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Lekm;->e:Landroid/graphics/drawable/Drawable;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method

.method public final inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    const/4 v0, 0x0

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
    invoke-virtual {p0, p1, p2, p3, v0}, Lekm;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 7

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v5, p0, Lekm;->a:Lekk;

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v4, p0, Lekm;->a:Lekk;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v5, v5, Lekv;->b:Lekt;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_59

    nop

    nop

    :goto_4
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_5
    invoke-static {p1, p4, p3, v0}, Ldsw;->K(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_6
    sget-object v0, Lekg;->e:[I

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
    const v0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Lekm;->a:Lekk;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p0, p0, Lekk;->d:Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p1, p0, Lekk;->c:Landroid/animation/AnimatorSet;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v5, p0, Lekm;->a:Lekk;

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-nez v4, :cond_0

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v5, v3}, Lyo;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

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

    :goto_f
    if-ne v0, v2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v5, p0, Lekm;->a:Lekk;

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v3, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_12
    invoke-virtual {v5, v4, v3}, Lyo;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_16

    nop

    nop

    :goto_13
    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    goto/32 :goto_14

    nop

    nop

    :goto_14
    return-void

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_57

    nop

    nop

    :goto_16
    goto/16 :goto_29

    nop

    nop

    :goto_17
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v5, v5, Lekt;->b:Leks;

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_19
    invoke-virtual {v4, v5}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v5, v5, Lekk;->b:Lekv;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-eqz p1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_1c
    iget-object v5, p0, Lekm;->f:Landroid/content/Context;

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_1d
    iget-object v4, v4, Lekk;->b:Lekv;

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_1e
    iput-object v3, v4, Lekk;->b:Lekv;

    nop

    :goto_1f
    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_21
    iget-object v5, p0, Lekm;->a:Lekk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iput-boolean v4, v3, Lekv;->c:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_23
    invoke-static {v5, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v4

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v0, p0, Lekm;->e:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_26
    sget-object v0, Lekg;->f:[I

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_27
    invoke-direct {v6}, Lwu;-><init>()V

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_28
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_3f

    nop

    nop

    :goto_2a
    invoke-static {p1, v3, p4}, Lekv;->b(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Lekv;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_2b
    iget-object v5, v5, Leks;->l:Lwu;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :cond_3
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_2f
    iget-object v5, v5, Lekk;->e:Lwu;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_30
    iget-object p1, p0, Lekk;->c:Landroid/animation/AnimatorSet;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_32
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v4, v5}, Lekv;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :goto_34
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto :goto_40

    nop

    :goto_36
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_37
    return-void

    nop

    :goto_38
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_39
    if-nez v3, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :cond_4
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iput-object v6, v5, Lekk;->d:Ljava/util/ArrayList;

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

    :goto_3b
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_3c
    const-string v3, "animated-vector"

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_3d
    if-lez v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    :cond_5
    goto/32 :goto_46

    nop

    :goto_3e
    invoke-virtual {v3, v4}, Lekv;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :goto_40
    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_41
    const-string v3, "target"

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_42
    const-string p1, "Context can\'t be null when inflating animators"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_43
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_44
    iput-object v6, v5, Lekk;->e:Lwu;

    nop

    nop

    nop

    nop

    nop

    :goto_45
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_15

    nop

    nop

    :goto_47
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_48
    new-instance v6, Lwu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_49
    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    new-instance v6, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_4b
    if-lt v3, v1, :cond_6

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    :cond_6
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_4d
    if-eqz v6, :cond_7

    nop

    goto/32 :goto_45

    nop

    nop

    :cond_7
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    iget-object v4, p0, Lekm;->a:Lekk;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    const/4 v5, 0x0

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    iget-object v5, p0, Lekm;->a:Lekk;

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

    :goto_51
    add-int/2addr v1, v2

    nop

    nop

    nop

    :goto_52
    goto/32 :goto_f

    nop

    nop

    :goto_53
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    if-nez v5, :cond_8

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    iput-object p1, p0, Lekk;->c:Landroid/animation/AnimatorSet;

    nop

    :goto_56
    goto/32 :goto_30

    nop

    nop

    :goto_57
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_58
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_59
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    const v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_5b
    new-instance p1, Landroid/animation/AnimatorSet;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    if-nez v0, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    :cond_9
    goto/32 :goto_6a

    nop

    nop

    :goto_5d
    if-nez v4, :cond_a

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :cond_a
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    iget-object v4, p0, Lekm;->d:Landroid/graphics/drawable/Drawable$Callback;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_5f
    iget-object v5, v5, Lekk;->d:Ljava/util/ArrayList;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    const/4 v3, 0x3

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_61
    invoke-virtual {p1, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_62
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_63
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_64
    goto/16 :goto_52

    nop

    :goto_65
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    if-ne v0, v3, :cond_b

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :cond_b
    :goto_68
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_69
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    if-eq v0, v3, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    :cond_c
    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    iget-object v6, v5, Lekk;->d:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    if-nez v3, :cond_d

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :cond_d
    goto/32 :goto_6

    nop

    nop

    :goto_6e
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop
.end method

.method public final isAutoMirrored()Z
    .locals 1

    goto/32 :goto_5

    nop

    nop

    :goto_0
    iget-object p0, p0, Lekk;->b:Lekv;

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
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lekm;->a:Lekk;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lekv;->isAutoMirrored()Z

    move-result p0

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
    iget-object v0, p0, Lekm;->e:Landroid/graphics/drawable/Drawable;

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

    :goto_6
    return p0

    nop

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    :goto_8
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isAutoMirrored()Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop
.end method

.method public final isRunning()Z
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lekm;->a:Lekk;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lekk;->c:Landroid/animation/AnimatorSet;

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

    nop

    :goto_2
    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p0

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_4
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->isRunning()Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lekm;->e:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_6
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-nez v0, :cond_0

    nop

    goto/32 :goto_9

    nop

    :cond_0
    goto/32 :goto_2

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

    :goto_9
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final isStateful()Z
    .locals 1

    goto/32 :goto_8

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lekv;->isStateful()Z

    move-result p0

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
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    :goto_4
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lekk;->b:Lekv;

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

    nop

    nop

    :goto_7
    iget-object p0, p0, Lekm;->a:Lekk;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Lekm;->e:Landroid/graphics/drawable/Drawable;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-nez v0, :cond_0

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

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lekm;->e:Landroid/graphics/drawable/Drawable;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    :goto_4
    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method protected final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object v0, p0, Lekm;->e:Landroid/graphics/drawable/Drawable;

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
    iget-object p0, p0, Lekk;->b:Lekv;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1}, Lekv;->setBounds(Landroid/graphics/Rect;)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    if-nez v0, :cond_0

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

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lekm;->a:Lekk;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method

.method protected final onLevelChange(I)Z
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object v0, p0, Lekm;->e:Landroid/graphics/drawable/Drawable;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lekm;->a:Lekk;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lekk;->b:Lekv;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return p0

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0, p1}, Lekv;->setLevel(I)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    return p0

    nop

    nop

    nop

    :goto_7
    if-nez v0, :cond_0

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
    goto/32 :goto_8

    nop

    nop

    :goto_8
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method

.method protected final onStateChange([I)Z
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lekm;->a:Lekk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3
    iget-object v0, p0, Lekm;->e:Landroid/graphics/drawable/Drawable;

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
    if-nez v0, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    :goto_5
    iget-object p0, p0, Lekk;->b:Lekv;

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

    :goto_6
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

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

    :goto_7
    return p0

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0, p1}, Lekn;->setState([I)Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop
.end method

.method public final setAlpha(I)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    goto/32 :goto_3

    nop

    nop

    :goto_3
    iget-object p0, p0, Lekm;->a:Lekk;

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

    :goto_4
    iget-object v0, p0, Lekm;->e:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto/32 :goto_1

    nop

    nop

    :goto_6
    iget-object p0, p0, Lekk;->b:Lekv;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0, p1}, Lekv;->setAlpha(I)V

    goto/32 :goto_8

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
.end method

.method public final setAutoMirrored(Z)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lekm;->a:Lekk;

    nop

    goto/32 :goto_4

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
    invoke-virtual {p0, p1}, Lekv;->setAutoMirrored(Z)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lekk;->b:Lekv;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lekm;->e:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

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

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    :goto_3
    iget-object p0, p0, Lekm;->a:Lekk;

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
    iget-object p0, p0, Lekk;->b:Lekv;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0, p1}, Lekv;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    :goto_8
    iget-object v0, p0, Lekm;->e:Landroid/graphics/drawable/Drawable;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public final setTint(I)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1}, Lekv;->setTint(I)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lekm;->e:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    :goto_5
    if-nez v0, :cond_0

    nop

    goto/32 :goto_1

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

    nop

    :goto_6
    iget-object p0, p0, Lekm;->a:Lekk;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lekk;->b:Lekv;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    goto/32 :goto_4

    nop

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

    :goto_1
    goto/32 :goto_3

    nop

    nop

    :goto_2
    iget-object p0, p0, Lekk;->b:Lekv;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lekm;->a:Lekk;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lekm;->e:Landroid/graphics/drawable/Drawable;

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

    :goto_5
    return-void

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    if-nez v0, :cond_0

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

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0, p1}, Lekv;->setTintList(Landroid/content/res/ColorStateList;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method

.method public final setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lekk;->b:Lekv;

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

    :goto_1
    invoke-virtual {p0, p1}, Lekv;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lekm;->e:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lekm;->a:Lekk;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    :goto_7
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final setVisible(ZZ)Z
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-super {p0, p1, p2}, Lekn;->setVisible(ZZ)Z

    move-result p0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0, p1, p2}, Lekv;->setVisible(ZZ)Z

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lekm;->e:Landroid/graphics/drawable/Drawable;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lekm;->a:Lekk;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_4
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_5
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_6
    return p0

    nop

    nop

    :goto_7
    goto/32 :goto_3

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

    nop

    :goto_9
    iget-object v0, v0, Lekk;->b:Lekv;

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final start()V
    .locals 1

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_d

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
    iget-object v0, p0, Lekm;->a:Lekk;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto/32 :goto_e

    nop

    nop

    :goto_8
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    iget-object v0, v0, Lekk;->c:Landroid/animation/AnimatorSet;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_a
    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_b
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Lekm;->e:Landroid/graphics/drawable/Drawable;

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

    :goto_d
    iget-object v0, p0, Lekm;->a:Lekk;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0}, Lekm;->invalidateSelf()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v0, v0, Lekk;->c:Landroid/animation/AnimatorSet;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop
.end method

.method public final stop()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lekk;->c:Landroid/animation/AnimatorSet;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->end()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lekm;->e:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    :goto_5
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lekm;->a:Lekk;

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

    :goto_7
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_5

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

    :goto_8
    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

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

    :goto_9
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method
