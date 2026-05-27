.class final Lhp;
.super Lhf;

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Lhj;


# instance fields
.field final a:Llm;

.field final b:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field c:Landroid/view/View;

.field d:Landroid/view/ViewTreeObserver;

.field private final e:Landroid/content/Context;

.field private final f:Lgw;

.field private final h:Lgt;

.field private final i:Z

.field private final j:I

.field private final k:I

.field private final l:Landroid/view/View$OnAttachStateChangeListener;

.field private m:Landroid/widget/PopupWindow$OnDismissListener;

.field private n:Landroid/view/View;

.field private o:Lhi;

.field private p:Z

.field private q:Z

.field private r:I

.field private s:I

.field private t:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lgw;Landroid/view/View;IZ)V
    .locals 4

    invoke-direct {p0}, Lhf;-><init>()V

    new-instance v0, Lho;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lho;-><init>(Lhp;I)V

    iput-object v0, p0, Lhp;->b:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    new-instance v0, Lgo;

    const/4 v2, 0x2

    invoke-direct {v0, p0, v2}, Lgo;-><init>(Lhp;I)V

    iput-object v0, p0, Lhp;->l:Landroid/view/View$OnAttachStateChangeListener;

    iput v1, p0, Lhp;->s:I

    iput-object p1, p0, Lhp;->e:Landroid/content/Context;

    iput-object p2, p0, Lhp;->f:Lgw;

    iput-boolean p5, p0, Lhp;->i:Z

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    new-instance v1, Lgt;

    const v3, 0x7f0e0013

    invoke-direct {v1, p2, v0, p5, v3}, Lgt;-><init>(Lgw;Landroid/view/LayoutInflater;ZI)V

    iput-object v1, p0, Lhp;->h:Lgt;

    iput p4, p0, Lhp;->k:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    invoke-virtual {p5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/2addr v0, v2

    const v1, 0x7f070017

    invoke-virtual {p5, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p5

    invoke-static {v0, p5}, Ljava/lang/Math;->max(II)I

    move-result p5

    iput p5, p0, Lhp;->j:I

    iput-object p3, p0, Lhp;->n:Landroid/view/View;

    new-instance p3, Llm;

    invoke-direct {p3, p1, p4}, Llm;-><init>(Landroid/content/Context;I)V

    iput-object p3, p0, Lhp;->a:Llm;

    invoke-virtual {p2, p0, p1}, Lgw;->h(Lhj;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final aX()Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lhp;->a:Llm;

    iget-object v0, v0, Llg;->e:Lkm;

    return-object v0
.end method

.method public final c(Lgw;Z)V
    .locals 1

    iget-object v0, p0, Lhp;->f:Lgw;

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lhp;->k()V

    iget-object v0, p0, Lhp;->o:Lhi;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lhi;->a(Lgw;Z)V

    :cond_1
    return-void
.end method

.method public final d(Lhi;)V
    .locals 0

    iput-object p1, p0, Lhp;->o:Lhi;

    return-void
.end method

.method public final e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final f(Lhq;)Z
    .locals 8

    invoke-virtual {p1}, Lgw;->hasVisibleItems()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    new-instance v0, Lhh;

    iget-object v3, p0, Lhp;->e:Landroid/content/Context;

    iget-object v5, p0, Lhp;->c:Landroid/view/View;

    iget-boolean v6, p0, Lhp;->i:Z

    iget v7, p0, Lhp;->k:I

    move-object v2, v0

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lhh;-><init>(Landroid/content/Context;Lgw;Landroid/view/View;ZI)V

    iget-object v2, p0, Lhp;->o:Lhi;

    invoke-virtual {v0, v2}, Lhh;->e(Lhi;)V

    invoke-static {p1}, Lhf;->w(Lgw;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lhh;->d(Z)V

    iget-object v2, p0, Lhp;->m:Landroid/widget/PopupWindow$OnDismissListener;

    iput-object v2, v0, Lhh;->c:Landroid/widget/PopupWindow$OnDismissListener;

    const/4 v2, 0x0

    iput-object v2, p0, Lhp;->m:Landroid/widget/PopupWindow$OnDismissListener;

    iget-object v2, p0, Lhp;->f:Lgw;

    invoke-virtual {v2, v1}, Lgw;->i(Z)V

    iget-object v2, p0, Lhp;->a:Llm;

    iget v3, v2, Llg;->g:I

    invoke-virtual {v2}, Llg;->b()I

    move-result v2

    iget v4, p0, Lhp;->s:I

    iget-object v5, p0, Lhp;->n:Landroid/view/View;

    invoke-static {v5}, Lafc;->c(Landroid/view/View;)I

    move-result v5

    invoke-static {v4, v5}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v4

    and-int/lit8 v4, v4, 0x7

    const/4 v5, 0x5

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lhp;->n:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    :cond_0
    invoke-virtual {v0}, Lhh;->g()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    iget-object v4, v0, Lhh;->a:Landroid/view/View;

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v3, v2, v5, v5}, Lhh;->f(IIZZ)V

    :goto_0
    iget-object v0, p0, Lhp;->o:Lhi;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Lhi;->b(Lgw;)Z

    :cond_3
    return v5

    :cond_4
    :goto_1
    return v1
.end method

.method public final i()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lhp;->q:Z

    iget-object v0, p0, Lhp;->h:Lgt;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lgt;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public final j(Lgw;)V
    .locals 0

    return-void
.end method

.method public final k()V
    .locals 1

    invoke-virtual {p0}, Lhp;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhp;->a:Llm;

    invoke-virtual {v0}, Llg;->k()V

    :cond_0
    return-void
.end method

.method public final l(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lhp;->n:Landroid/view/View;

    return-void
.end method

.method public final m(Z)V
    .locals 1

    iget-object v0, p0, Lhp;->h:Lgt;

    iput-boolean p1, v0, Lgt;->b:Z

    return-void
.end method

.method public final n(I)V
    .locals 0

    iput p1, p0, Lhp;->s:I

    return-void
.end method

.method public final o(I)V
    .locals 1

    iget-object v0, p0, Lhp;->a:Llm;

    iput p1, v0, Llg;->g:I

    return-void
.end method

.method public final onDismiss()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lhp;->p:Z

    iget-object v0, p0, Lhp;->f:Lgw;

    invoke-virtual {v0}, Lgw;->close()V

    iget-object v0, p0, Lhp;->d:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lhp;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lhp;->d:Landroid/view/ViewTreeObserver;

    :cond_0
    iget-object v0, p0, Lhp;->d:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Lhp;->b:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lhp;->d:Landroid/view/ViewTreeObserver;

    :cond_1
    iget-object v0, p0, Lhp;->c:Landroid/view/View;

    iget-object v1, p0, Lhp;->l:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v0, p0, Lhp;->m:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    :cond_2
    return-void
.end method

.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    const/16 p1, 0x52

    if-ne p2, p1, :cond_0

    invoke-virtual {p0}, Lhp;->k()V

    return p3

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final p(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    iput-object p1, p0, Lhp;->m:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public final q(Z)V
    .locals 0

    iput-boolean p1, p0, Lhp;->t:Z

    return-void
.end method

.method public final r(I)V
    .locals 1

    iget-object v0, p0, Lhp;->a:Llm;

    invoke-virtual {v0, p1}, Llg;->j(I)V

    return-void
.end method

.method public final s()V
    .locals 5

    invoke-virtual {p0}, Lhp;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lhp;->p:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lhp;->n:Landroid/view/View;

    if-eqz v0, :cond_5

    iput-object v0, p0, Lhp;->c:Landroid/view/View;

    iget-object v0, p0, Lhp;->a:Llm;

    invoke-virtual {v0, p0}, Llg;->v(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v0, p0, Lhp;->a:Llm;

    iput-object p0, v0, Llg;->m:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0}, Llg;->y()V

    iget-object v0, p0, Lhp;->c:Landroid/view/View;

    iget-object v1, p0, Lhp;->d:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    iput-object v2, p0, Lhp;->d:Landroid/view/ViewTreeObserver;

    if-nez v1, :cond_1

    iget-object v1, p0, Lhp;->b:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v2, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    iget-object v1, p0, Lhp;->l:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v1, p0, Lhp;->a:Llm;

    iput-object v0, v1, Llg;->l:Landroid/view/View;

    iget v0, p0, Lhp;->s:I

    iput v0, v1, Llg;->j:I

    iget-boolean v0, p0, Lhp;->q:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lhp;->h:Lgt;

    iget-object v1, p0, Lhp;->e:Landroid/content/Context;

    iget v2, p0, Lhp;->j:I

    invoke-static {v0, v1, v2}, Lhp;->x(Landroid/widget/ListAdapter;Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lhp;->r:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lhp;->q:Z

    :cond_2
    iget-object v0, p0, Lhp;->a:Llm;

    iget v1, p0, Lhp;->r:I

    invoke-virtual {v0, v1}, Llg;->r(I)V

    iget-object v0, p0, Lhp;->a:Llm;

    invoke-virtual {v0}, Llg;->x()V

    iget-object v0, p0, Lhp;->a:Llm;

    iget-object v1, p0, Lhf;->g:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Llg;->t(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lhp;->a:Llm;

    invoke-virtual {v0}, Llg;->s()V

    iget-object v0, p0, Lhp;->a:Llm;

    iget-object v0, v0, Llg;->e:Lkm;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-boolean v1, p0, Lhp;->t:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lhp;->f:Lgw;

    iget-object v1, v1, Lgw;->e:Ljava/lang/CharSequence;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lhp;->e:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0e0012

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const v2, 0x1020016

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_3

    iget-object v4, p0, Lhp;->f:Lgw;

    iget-object v4, v4, Lgw;->e:Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    :cond_4
    iget-object v0, p0, Lhp;->a:Llm;

    iget-object v1, p0, Lhp;->h:Lgt;

    invoke-virtual {v0, v1}, Llg;->e(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lhp;->a:Llm;

    invoke-virtual {v0}, Llg;->s()V

    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "StandardMenuPopup cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final u()Z
    .locals 1

    iget-boolean v0, p0, Lhp;->p:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lhp;->a:Llm;

    invoke-virtual {v0}, Llg;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
