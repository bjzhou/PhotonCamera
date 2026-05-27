.class public final Lict;
.super Landroid/widget/BaseAdapter;


# instance fields
.field public final a:Ljava/util/List;

.field protected b:I

.field private c:Lics;

.field private d:I

.field private e:I

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lict;->a:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lict;->b:I

    iput v0, p0, Lict;->d:I

    iput v0, p0, Lict;->e:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lict;->f:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    invoke-direct {p0}, Lict;-><init>()V

    iget-object v0, p0, Lict;->a:Ljava/util/List;

    new-instance v8, Lida;

    sget-object v2, Lgyb;->a:Lgyb;

    const v1, 0x7f14013e

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0802e8

    const v1, 0x7f14013d

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object v1, v8

    move-object v5, v6

    invoke-direct/range {v1 .. v7}, Lida;-><init>(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[B)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lict;->a:Ljava/util/List;

    new-instance v8, Lida;

    sget-object v2, Lgyb;->b:Lgyb;

    const v1, 0x7f14028b

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f08035b

    const v1, 0x7f140284

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v1, 0x7f140289

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lida;-><init>(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[B)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ldhi;)V
    .locals 9

    invoke-direct {p0}, Lict;-><init>()V

    iget-object v0, p0, Lict;->a:Ljava/util/List;

    new-instance v8, Lida;

    sget-object v2, Ldav;->a:Ldav;

    const v1, 0x7f1404f1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f08038a

    const v1, 0x7f1404dc

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object v1, v8

    move-object v5, v6

    invoke-direct/range {v1 .. v7}, Lida;-><init>(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[B)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Ldgu;->V:Ldhj;

    invoke-interface {p2, v0}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lict;->a:Ljava/util/List;

    new-instance v8, Lida;

    sget-object v2, Ldav;->b:Ldav;

    const v1, 0x7f1404f2

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f080387

    const v1, 0x7f1404dd

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object v1, v8

    move-object v5, v6

    invoke-direct/range {v1 .. v7}, Lida;-><init>(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[B)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v0, Ldgu;->W:Ldhj;

    invoke-interface {p2, v0}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lict;->a:Ljava/util/List;

    new-instance v8, Lida;

    sget-object v2, Ldav;->c:Ldav;

    const v1, 0x7f1404f0

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f080386

    const v1, 0x7f1404db

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object v1, v8

    move-object v5, v6

    invoke-direct/range {v1 .. v7}, Lida;-><init>(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[B)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    sget-object v0, Ldgu;->X:Ldhj;

    invoke-interface {p2, v0}, Ldhi;->l(Ldhj;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lict;->a:Ljava/util/List;

    new-instance v7, Lida;

    sget-object v1, Ldav;->d:Ldav;

    const v0, 0x7f1404f3

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f080389

    const v0, 0x7f1404de

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, v7

    move-object v4, v5

    invoke-direct/range {v0 .. v6}, Lida;-><init>(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[B)V

    invoke-interface {p2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method


# virtual methods
.method public final a(Lics;Z)V
    .locals 0

    iput-object p1, p0, Lict;->c:Lics;

    iput-boolean p2, p0, Lict;->f:Z

    return-void
.end method

.method final b(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lict;->d(I)Lida;

    move-result-object v0

    iget-boolean v0, v0, Lida;->f:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lict;->f:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iput p1, p0, Lict;->b:I

    iget-object p1, p0, Lict;->c:Lics;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lict;->e()Lida;

    move-result-object v0

    invoke-interface {p1, v0}, Lics;->a(Lida;)V

    :cond_2
    invoke-static {}, Ljuh;->a()V

    invoke-virtual {p0}, Lict;->notifyDataSetChanged()V

    return-void
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lict;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lida;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Lida;->a:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result p1

    invoke-virtual {p0, p1}, Lict;->b(I)V

    :cond_1
    return-void
.end method

.method public final d(I)Lida;
    .locals 1

    iget-object v0, p0, Lict;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lida;

    return-object p1
.end method

.method public final e()Lida;
    .locals 2

    iget-object v0, p0, Lict;->a:Ljava/util/List;

    iget v1, p0, Lict;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lida;

    return-object v0
.end method

.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lict;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lict;->d(I)Lida;

    move-result-object p1

    return-object p1
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez p2, :cond_0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0e0064

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Ldqx;

    invoke-direct {v1, p2}, Ldqx;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldqx;

    :goto_0
    invoke-virtual {p0, p1}, Lict;->d(I)Lida;

    move-result-object v2

    if-eqz v1, :cond_9

    iget-object v3, v1, Ldqx;->d:Ljava/lang/Object;

    if-eqz v3, :cond_4

    iget v3, p0, Lict;->d:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    iget-object v3, v1, Ldqx;->a:Ljava/lang/Object;

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v3

    iput v3, p0, Lict;->d:I

    :cond_1
    iget v3, p0, Lict;->e:I

    if-ne v3, v4, :cond_2

    iget-object v3, v1, Ldqx;->e:Ljava/lang/Object;

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v3

    iput v3, p0, Lict;->e:I

    :cond_2
    iget v3, p0, Lict;->b:I

    if-ne v3, p1, :cond_3

    const p1, 0x7f0803e7

    invoke-static {v0, p1}, Labt;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f07043c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const v0, 0x7f040192

    invoke-static {p3, v0}, Lkwp;->l(Landroid/view/View;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setTint(I)V

    const v0, 0x7f04016e

    invoke-static {p3, v0}, Lkwp;->l(Landroid/view/View;I)I

    move-result p3

    iget-object v0, v1, Ldqx;->c:Ljava/lang/Object;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v0, v1, Ldqx;->a:Ljava/lang/Object;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, v1, Ldqx;->e:Ljava/lang/Object;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p3, v1, Ldqx;->d:Ljava/lang/Object;

    check-cast p3, Landroid/view/ViewGroup;

    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_3
    iget-object p1, v1, Ldqx;->d:Ljava/lang/Object;

    check-cast p1, Landroid/view/ViewGroup;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    iget-object p1, v1, Ldqx;->c:Ljava/lang/Object;

    iget p3, p0, Lict;->d:I

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object p1, v1, Ldqx;->a:Ljava/lang/Object;

    iget p3, p0, Lict;->d:I

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, v1, Ldqx;->e:Ljava/lang/Object;

    iget p3, p0, Lict;->e:I

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_4
    :goto_1
    iget-object p1, v1, Ldqx;->c:Ljava/lang/Object;

    iget p3, v2, Lida;->c:I

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, v1, Ldqx;->b:Ljava/lang/Object;

    if-eqz p1, :cond_5

    iget p3, v2, Lida;->c:I

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_5
    iget-object p1, v1, Ldqx;->a:Ljava/lang/Object;

    iget-object p3, v2, Lida;->b:Ljava/lang/String;

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, v1, Ldqx;->e:Ljava/lang/Object;

    if-eqz p1, :cond_7

    iget-boolean p3, v2, Lida;->f:Z

    if-eqz p3, :cond_6

    iget-object p3, v2, Lida;->d:Ljava/lang/String;

    goto :goto_2

    :cond_6
    iget-object p3, v2, Lida;->e:Ljava/lang/String;

    :goto_2
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    iget-boolean p1, v2, Lida;->f:Z

    if-eqz p1, :cond_8

    iget-object p1, v1, Ldqx;->a:Ljava/lang/Object;

    check-cast p1, Landroid/widget/TextView;

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object p1, v1, Ldqx;->e:Ljava/lang/Object;

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x3f4ccccd    # 0.8f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object p1, v1, Ldqx;->c:Ljava/lang/Object;

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_3

    :cond_8
    iget-object p1, v1, Ldqx;->a:Ljava/lang/Object;

    check-cast p1, Landroid/widget/TextView;

    const p3, 0x3e99999a    # 0.3f

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object p1, v1, Ldqx;->e:Ljava/lang/Object;

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object p1, v1, Ldqx;->c:Ljava/lang/Object;

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_9
    :goto_3
    return-object p2
.end method
