.class public abstract Lfsy;
.super Lftb;
.source "PG"


# instance fields
.field private c:Landroid/graphics/drawable/Animatable;


# direct methods
.method private final 1a36313b7ed15ba14e0acb4da569b8b7m(Ljava/lang/Object;)V
    .locals 1

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    instance-of v0, p1, Landroid/graphics/drawable/Animatable;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p1}, Landroid/graphics/drawable/Animatable;->start()V

    goto/32 :goto_4

    nop

    nop

    :goto_2
    check-cast p1, Landroid/graphics/drawable/Animatable;

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

    nop

    :goto_3
    iput-object p1, p0, Lfsy;->c:Landroid/graphics/drawable/Animatable;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

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

    nop

    nop

    :goto_6
    const/4 p1, 0x0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_7
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    :goto_9
    iput-object p1, p0, Lfsy;->c:Landroid/graphics/drawable/Animatable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0, p1}, Lfsy;->l(Ljava/lang/Object;)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Lftb;-><init>(Landroid/view/View;)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method


# virtual methods
.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lftb;->b:Landroidx/wear/ambient/AmbientDelegate;

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

    :goto_2
    const/4 v0, 0x0

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    invoke-direct {p0, v0}, Lfsy;->1a36313b7ed15ba14e0acb4da569b8b7m(Ljava/lang/Object;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0}, Landroidx/wear/ambient/AmbientDelegate;->U()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0, p1}, Lfsy;->m(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Lfsy;->c:Landroid/graphics/drawable/Animatable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_9
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Lfsy;->1a36313b7ed15ba14e0acb4da569b8b7m(Ljava/lang/Object;)V

    goto/32 :goto_1

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
.end method

.method public final d(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Lfsy;->m(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, v0}, Lfsy;->1a36313b7ed15ba14e0acb4da569b8b7m(Ljava/lang/Object;)V

    goto/32 :goto_0

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x0

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

.method public final e(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Lfsy;->m(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, v0}, Lfsy;->1a36313b7ed15ba14e0acb4da569b8b7m(Ljava/lang/Object;)V

    goto/32 :goto_1

    nop

    nop
.end method

.method public final h()V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    :goto_0
    if-nez p0, :cond_0

    nop

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

    nop

    nop

    :goto_1
    invoke-interface {p0}, Landroid/graphics/drawable/Animatable;->start()V

    :goto_2
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lfsy;->c:Landroid/graphics/drawable/Animatable;

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

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public final i()V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    if-nez p0, :cond_0

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

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lfsy;->c:Landroid/graphics/drawable/Animatable;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    invoke-interface {p0}, Landroid/graphics/drawable/Animatable;->stop()V

    :goto_4
    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method protected abstract l(Ljava/lang/Object;)V
.end method

.method public final m(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    check-cast p0, Landroid/widget/ImageView;

    nop

    nop

    goto/32 :goto_0

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
    iget-object p0, p0, Lfsy;->a:Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method
