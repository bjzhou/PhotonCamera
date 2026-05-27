.class public final synthetic Lgxg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 0

    iput p2, p0, Lgxg;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgxg;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lgxy;I)V
    .locals 0

    iput p2, p0, Lgxg;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgxg;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhfs;I)V
    .locals 0

    iput p2, p0, Lgxg;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgxg;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhgf;I)V
    .locals 0

    iput p2, p0, Lgxg;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgxg;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhgj;I)V
    .locals 0

    iput p2, p0, Lgxg;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgxg;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhgm;I)V
    .locals 0

    iput p2, p0, Lgxg;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgxg;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhgw;I)V
    .locals 0

    iput p2, p0, Lgxg;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgxg;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Liko;I)V
    .locals 0

    iput p2, p0, Lgxg;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgxg;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;I)V
    .locals 0

    iput p2, p0, Lgxg;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgxg;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lmqp;I)V
    .locals 0

    iput p2, p0, Lgxg;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgxg;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lmvq;I)V
    .locals 0

    iput p2, p0, Lgxg;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgxg;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget v0, p0, Lgxg;->b:I

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lgxg;->a:Ljava/lang/Object;

    check-cast p1, Lhgj;

    iget-object v1, p1, Lhgj;->c:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-virtual {p1, v0}, Lhgj;->setEnabled(Z)V

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto/16 :goto_0

    :pswitch_0
    iget-object v0, p0, Lgxg;->a:Ljava/lang/Object;

    check-cast p1, Landroid/animation/Animator;

    check-cast v0, Lmvq;

    invoke-virtual {v0, p1}, Lmvq;->g(Ljava/lang/Object;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lgxg;->a:Ljava/lang/Object;

    check-cast p1, Landroid/animation/Animator;

    check-cast v0, Lhgw;

    iget-object p1, v0, Lhgw;->m:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :pswitch_2
    iget-object v0, p0, Lgxg;->a:Ljava/lang/Object;

    check-cast p1, Landroid/animation/Animator;

    check-cast v0, Lhgw;

    invoke-virtual {v0}, Lhgw;->k()V

    return-void

    :pswitch_3
    iget-object v0, p0, Lgxg;->a:Ljava/lang/Object;

    check-cast p1, Landroid/animation/Animator;

    check-cast v0, Lhgm;

    invoke-virtual {v0, v1}, Lhgm;->setVisibility(I)V

    return-void

    :pswitch_4
    iget-object v0, p0, Lgxg;->a:Ljava/lang/Object;

    check-cast p1, Landroid/animation/Animator;

    check-cast v0, Lhgm;

    invoke-virtual {v0, v3}, Lhgm;->f(Z)V

    return-void

    :pswitch_5
    iget-object v0, p0, Lgxg;->a:Ljava/lang/Object;

    check-cast p1, Lhgj;

    check-cast v0, Lmqp;

    invoke-virtual {v0}, Lmqp;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/ColorFilter;

    invoke-virtual {p1, v0}, Lhgj;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void

    :pswitch_6
    iget-object v0, p0, Lgxg;->a:Ljava/lang/Object;

    check-cast p1, Landroid/animation/Animator;

    check-cast v0, Lhgm;

    invoke-virtual {v0, v2}, Lhgm;->f(Z)V

    return-void

    :pswitch_7
    iget-object v0, p0, Lgxg;->a:Ljava/lang/Object;

    check-cast p1, Landroid/animation/Animator;

    check-cast v0, Lhgm;

    invoke-virtual {v0, v3}, Lhgm;->setVisibility(I)V

    invoke-virtual {v0, v3}, Lhgm;->f(Z)V

    invoke-virtual {v0, v3}, Lhgm;->e(I)V

    invoke-virtual {v0, v3, v3, v3, v3}, Lhgm;->setPadding(IIII)V

    return-void

    :pswitch_8
    iget-object v0, p0, Lgxg;->a:Ljava/lang/Object;

    check-cast p1, Landroid/animation/Animator;

    check-cast v0, Lhgm;

    invoke-virtual {v0, v2}, Lhgm;->f(Z)V

    sget-object p1, Lmpx;->a:Lmpx;

    invoke-virtual {v0, p1}, Lhgm;->g(Lmqp;)V

    return-void

    :pswitch_9
    iget-object v0, p0, Lgxg;->a:Ljava/lang/Object;

    check-cast p1, Lhgj;

    check-cast v0, Liko;

    invoke-static {p1, v0}, Ljvd;->I(Landroid/view/View;Liko;)V

    return-void

    :pswitch_a
    iget-object v0, p0, Lgxg;->a:Ljava/lang/Object;

    check-cast p1, Landroid/animation/Animator;

    check-cast v0, Lhgm;

    invoke-virtual {v0, v3}, Lhgm;->setVisibility(I)V

    invoke-virtual {v0, v3}, Lhgm;->f(Z)V

    sget-object p1, Lhgj;->a:Landroid/graphics/ColorMatrixColorFilter;

    invoke-static {p1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object p1

    invoke-virtual {v0, p1}, Lhgm;->g(Lmqp;)V

    invoke-virtual {v0}, Lhgm;->getChildCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Lhgm;->e(I)V

    const p1, 0x7f07067b

    invoke-virtual {v0, p1}, Lhgm;->a(I)I

    move-result p1

    const v1, 0x7f070673

    invoke-virtual {v0, v1}, Lhgm;->a(I)I

    move-result v1

    invoke-virtual {v0, v3, p1, v3, v1}, Lhgm;->setPadding(IIII)V

    return-void

    :pswitch_b
    iget-object v0, p0, Lgxg;->a:Ljava/lang/Object;

    check-cast p1, Landroid/animation/Animator;

    check-cast v0, Lhgj;

    invoke-virtual {v0, v1}, Lhgj;->setVisibility(I)V

    return-void

    :pswitch_c
    iget-object v0, p0, Lgxg;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    check-cast v0, Lhgf;

    iget-object v0, v0, Lhgf;->c:Lgzi;

    invoke-virtual {v0, p1, v3}, Lgzi;->l(Ljava/lang/String;Z)V

    return-void

    :pswitch_d
    iget-object v0, p0, Lgxg;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    check-cast v0, Lhgf;

    iget-object v0, v0, Lhgf;->c:Lgzi;

    invoke-virtual {v0, p1, v2}, Lgzi;->l(Ljava/lang/String;Z)V

    return-void

    :pswitch_e
    iget-object v0, p0, Lgxg;->a:Ljava/lang/Object;

    check-cast p1, Landroid/animation/Animator;

    check-cast v0, Lhfs;

    iget-object p1, v0, Lhfs;->g:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, v0, Lhfs;->g:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, v0, Lhfs;->g:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iget-object v1, v0, Lhfs;->g:Landroid/view/View;

    invoke-virtual {v1, p1, p1}, Landroid/view/View;->measure(II)V

    :cond_1
    iget-object p1, v0, Lhfs;->g:Landroid/view/View;

    iget-object v1, v0, Lhfs;->h:Liko;

    invoke-static {v1}, Ljvd;->D(Liko;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setRotation(F)V

    iget-object p1, v0, Lhfs;->g:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotX(F)V

    iget-object p1, v0, Lhfs;->g:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotY(F)V

    iget-object p1, v0, Lhfs;->h:Liko;

    sget-object v1, Liko;->b:Liko;

    invoke-virtual {p1, v1}, Liko;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, v0, Lhfs;->g:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v0, v0, Lhfs;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v1, v0

    neg-int v0, v1

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void

    :cond_2
    iget-object p1, v0, Lhfs;->g:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void

    :pswitch_f
    iget-object v0, p0, Lgxg;->a:Ljava/lang/Object;

    check-cast p1, Landroid/animation/Animator;

    check-cast v0, Lhfs;

    iget-object p1, v0, Lhfs;->g:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :pswitch_10
    iget-object v0, p0, Lgxg;->a:Ljava/lang/Object;

    check-cast p1, Lgxm;

    check-cast v0, Lgxy;

    invoke-interface {p1, v0}, Lgxm;->l(Lgxy;)V

    return-void

    :pswitch_11
    iget-object v0, p0, Lgxg;->a:Ljava/lang/Object;

    check-cast p1, Lgxm;

    check-cast v0, Lgxy;

    invoke-interface {p1, v0}, Lgxm;->r(Lgxy;)V

    return-void

    :pswitch_12
    iget-object v0, p0, Lgxg;->a:Ljava/lang/Object;

    check-cast p1, Lgxm;

    check-cast v0, Lgxy;

    invoke-interface {p1, v0}, Lgxm;->j(Lgxy;)V

    return-void

    :pswitch_13
    iget-object v0, p0, Lgxg;->a:Ljava/lang/Object;

    check-cast p1, Lgxm;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-interface {p1, v0}, Lgxm;->n(Landroid/graphics/Bitmap;)V

    return-void

    :cond_3
    sget-object v0, Lhgj;->a:Landroid/graphics/ColorMatrixColorFilter;

    :goto_0
    invoke-virtual {p1, v0}, Lhgj;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 1

    iget v0, p0, Lgxg;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1

    :pswitch_0
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1

    :pswitch_3
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1

    :pswitch_4
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1

    :pswitch_5
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1

    :pswitch_6
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1

    :pswitch_7
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1

    :pswitch_8
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1

    :pswitch_9
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1

    :pswitch_a
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1

    :pswitch_b
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1

    :pswitch_c
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1

    :pswitch_d
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1

    :pswitch_e
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1

    :pswitch_f
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1

    :pswitch_10
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1

    :pswitch_11
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1

    :pswitch_12
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1

    :pswitch_13
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
