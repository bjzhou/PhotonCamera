.class public final Libm;
.super Ljava/lang/Object;

# interfaces
.implements Like;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/ui/views/GradientBar;I)V
    .locals 0

    iput p2, p0, Libm;->b:I

    iput-object p1, p0, Libm;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Libo;I)V
    .locals 0

    iput p2, p0, Libm;->b:I

    iput-object p1, p0, Libm;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final setColor(I)V
    .locals 2

    iget v0, p0, Libm;->b:I

    packed-switch v0, :pswitch_data_0

    const/4 p1, 0x0

    throw p1

    :pswitch_0
    iget-object v0, p0, Libm;->a:Landroid/view/View;

    check-cast v0, Libo;

    iget-object v0, v0, Libo;->m:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    :cond_0
    iget-object v0, p0, Libm;->a:Landroid/view/View;

    check-cast v0, Libo;

    iput p1, v0, Libo;->i:I

    iget-object p1, v0, Libo;->b:Lmtc;

    invoke-interface {p1}, Lmtc;->g()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Libm;->a:Landroid/view/View;

    check-cast v1, Libo;

    iget-object v1, v1, Libo;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Libm;->a:Landroid/view/View;

    check-cast v1, Libo;

    iget v1, v1, Libo;->h:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Libm;->a:Landroid/view/View;

    check-cast v1, Libo;

    iget v1, v1, Libo;->i:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_2
    return-void

    :pswitch_1
    iget-object v0, p0, Libm;->a:Landroid/view/View;

    check-cast v0, Libo;

    iput p1, v0, Libo;->j:I

    iget-object v0, v0, Libo;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object p1, p0, Libm;->a:Landroid/view/View;

    check-cast p1, Libo;

    invoke-virtual {p1}, Libo;->invalidate()V

    return-void

    :pswitch_2
    iget-object v0, p0, Libm;->a:Landroid/view/View;

    check-cast v0, Libo;

    iget-object v0, v0, Libo;->m:Landroid/animation/Animator;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    :cond_3
    iget-object v0, p0, Libm;->a:Landroid/view/View;

    check-cast v0, Libo;

    iput p1, v0, Libo;->h:I

    iget-object v0, v0, Libo;->g:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
