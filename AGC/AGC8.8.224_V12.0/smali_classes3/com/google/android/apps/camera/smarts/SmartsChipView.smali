.class public Lcom/google/android/apps/camera/smarts/SmartsChipView;
.super Landroid/widget/LinearLayout;


# instance fields
.field public a:Landroid/widget/FrameLayout;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/FrameLayout;

.field public d:Z

.field public e:Z

.field public f:Ljava/lang/Runnable;

.field public g:Ljava/lang/Runnable;

.field public h:Ljava/lang/CharSequence;

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Ljuf;

.field public m:I

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/widget/ImageView;

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/apps/camera/smarts/SmartsChipView;->d:Z

    iput-boolean p1, p0, Lcom/google/android/apps/camera/smarts/SmartsChipView;->e:Z

    const-string p1, ""

    iput-object p1, p0, Lcom/google/android/apps/camera/smarts/SmartsChipView;->h:Ljava/lang/CharSequence;

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/apps/camera/smarts/SmartsChipView;->m:I

    iput-boolean p1, p0, Lcom/google/android/apps/camera/smarts/SmartsChipView;->i:Z

    iput-boolean p1, p0, Lcom/google/android/apps/camera/smarts/SmartsChipView;->j:Z

    new-instance p1, Ljuf;

    invoke-direct {p1}, Ljuf;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/camera/smarts/SmartsChipView;->l:Ljuf;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/apps/camera/smarts/SmartsChipView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-nez p1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/camera/smarts/SmartsChipView;->t:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lhcg;

    invoke-direct {v1, p0, p1}, Lhcg;-><init>(Lcom/google/android/apps/camera/smarts/SmartsChipView;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public final b()V
    .locals 1

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/camera/smarts/SmartsChipView;->h:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/camera/smarts/SmartsChipView;->e:Z

    iput-boolean v0, p0, Lcom/google/android/apps/camera/smarts/SmartsChipView;->d:Z

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/smarts/SmartsChipView;->a(I)V

    iget-object v0, p0, Lcom/google/android/apps/camera/smarts/SmartsChipView;->g:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/camera/smarts/SmartsChipView;->f:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/camera/smarts/SmartsChipView;->l:Ljuf;

    invoke-virtual {v0}, Ljuf;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/camera/smarts/SmartsChipView;->f:Ljava/lang/Runnable;

    return-void
.end method

.method public final c(Ljwb;Lhdu;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/apps/camera/smarts/SmartsChipView;->l:Ljuf;

    new-instance v1, Lglh;

    const/4 v2, 0x4

    invoke-direct {v1, p0, p2, v2}, Lglh;-><init>(Lcom/google/android/apps/camera/smarts/SmartsChipView;Lhdu;I)V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/smarts/SmartsChipView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Labw;->a(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Ljwb;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljuf;->d(Lkad;)V

    return-void
.end method

.method public final d(Lhdu;)V
    .locals 9

    invoke-interface {p1}, Lhdu;->s()Z

    move-result v0

    const-string v1, ""

    const/16 v2, 0x8

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lhcr;

    iget-object v0, v0, Lhcr;->b:Lheb;

    iget-object v3, v0, Lheb;->c:Ljava/lang/String;

    iget-object v4, v0, Lheb;->d:Landroid/graphics/drawable/Drawable;

    iget-object v5, v0, Lheb;->e:Ljava/lang/Runnable;

    iget-object v6, v0, Lheb;->h:Ljava/lang/Runnable;

    const/4 v7, 0x0

    if-eqz v3, :cond_0

    iget-object v8, p0, Lcom/google/android/apps/camera/smarts/SmartsChipView;->b:Landroid/widget/TextView;

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/google/android/apps/camera/smarts/SmartsChipView;->b:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/google/android/apps/camera/smarts/SmartsChipView;->b:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    if-eqz v4, :cond_1

    iget-object v3, p0, Lcom/google/android/apps/camera/smarts/SmartsChipView;->n:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/google/android/apps/camera/smarts/SmartsChipView;->n:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/google/android/apps/camera/smarts/SmartsChipView;->n:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    const/4 v3, 0x1

    if-eqz v5, :cond_2

    iget-object v4, p0, Lcom/google/android/apps/camera/smarts/SmartsChipView;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->setClickable(Z)V

    new-instance v4, Lgfm;

    const/4 v8, 0x3

    invoke-direct {v4, p1, v5, v8}, Lgfm;-><init>(Lhdu;Ljava/lang/Runnable;I)V

    new-instance v5, Lclb;

    const/4 v8, 0x7

    invoke-direct {v5, p0, v8}, Lclb;-><init>(Lcom/google/android/apps/camera/smarts/SmartsChipView;I)V

    iget-object v8, p0, Lcom/google/android/apps/camera/smarts/SmartsChipView;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v8, v4}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v8, p0, Lcom/google/android/apps/camera/smarts/SmartsChipView;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v8, v5}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v8, p0, Lcom/google/android/apps/camera/smarts/SmartsChipView;->b:Landroid/widget/TextView;

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/google/android/apps/camera/smarts/SmartsChipView;->b:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_2

    :cond_2
    iget-object v4, p0, Lcom/google/android/apps/camera/smarts/SmartsChipView;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->setClickable(Z)V

    :goto_2
    if-eqz v6, :cond_3

    iget-object v4, p0, Lcom/google/android/apps/camera/smarts/SmartsChipView;->o:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v4, p0, Lcom/google/android/apps/camera/smarts/SmartsChipView;->o:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v4, p0, Lcom/google/android/apps/camera/smarts/SmartsChipView;->o:Landroid/widget/ImageView;

    new-instance v5, Lhzi;

    invoke-direct {v5, p0, p1, v6, v3}, Lhzi;-><init>(Lcom/google/android/apps/camera/smarts/SmartsChipView;Lhdu;Ljava/lang/Runnable;I)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/google/android/apps/camera/smarts/SmartsChipView;->o:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/google/android/apps/camera/smarts/SmartsChipView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f14014b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/google/android/apps/camera/smarts/SmartsChipView;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/apps/camera/smarts/SmartsChipView;->b:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/apps/camera/smarts/SmartsChipView;->b:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v5

    invoke-virtual {p1, v3, v4, v7, v5}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lcom/google/android/apps/camera/smarts/SmartsChipView;->o:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/google/android/apps/camera/smarts/SmartsChipView;->o:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/google/android/apps/camera/smarts/SmartsChipView;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/apps/camera/smarts/SmartsChipView;->b:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v4

    iget v5, p0, Lcom/google/android/apps/camera/smarts/SmartsChipView;->s:I

    iget-object v6, p0, Lcom/google/android/apps/camera/smarts/SmartsChipView;->b:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v6

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    :goto_3
    iget-object p1, p0, Lcom/google/android/apps/camera/smarts/SmartsChipView;->a:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/google/android/apps/camera/smarts/SmartsChipView;->a:Landroid/widget/FrameLayout;

    iget-object v0, v0, Lheb;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_4
    iget-object p1, p0, Lcom/google/android/apps/camera/smarts/SmartsChipView;->a:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/google/android/apps/camera/smarts/SmartsChipView;->a:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_4
    iget-object p1, p0, Lcom/google/android/apps/camera/smarts/SmartsChipView;->b:Landroid/widget/TextView;

    iget v0, p0, Lcom/google/android/apps/camera/smarts/SmartsChipView;->p:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    iget-object p1, p0, Lcom/google/android/apps/camera/smarts/SmartsChipView;->c:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/google/android/apps/camera/smarts/SmartsChipView;->c:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final e(Lhbp;)V
    .locals 11

    iget-object v0, p1, Lhbp;->a:Lhdu;

    iget-boolean v1, p1, Lhbp;->b:Z

    iget-boolean v2, p1, Lhbp;->d:Z

    iput-boolean v2, p0, Lcom/google/android/apps/camera/smarts/SmartsChipView;->j:Z

    iget-boolean v2, p1, Lhbp;->e:Z

    iput-boolean v2, p0, Lcom/google/android/apps/camera/smarts/SmartsChipView;->k:Z

    iget v2, p1, Lhbp;->f:I

    iput v2, p0, Lcom/google/android/apps/camera/smarts/SmartsChipView;->m:I

    iget-boolean p1, p1, Lhbp;->c:Z

    iput-boolean p1, p0, Lcom/google/android/apps/camera/smarts/SmartsChipView;->i:Z

    check-cast v0, Lhcr;

    iget-object p1, v0, Lhcr;->e:Lgft;

    invoke-interface {p1}, Lgft;->f()Lkab;

    move-result-object p1

    iget p1, p1, Lkab;->e:I

    invoke-static {p1}, Liko;->a(I)Liko;

    move-result-object p1

    invoke-static {p1}, Liko;->e(Liko;)Z

    move-result p1

    iget-object v2, v0, Lhcr;->e:Lgft;

    invoke-interface {v2}, Lgft;->f()Lkab;

    move-result-object v2

    iget v2, v2, Lkab;->e:I

    invoke-static {v2}, Liko;->a(I)Liko;

    move-result-object v2

    sget-object v3, Liko;->c:Liko;

    invoke-virtual {v2, v3}, Liko;->equals(Ljava/lang/Object;)Z

    move-result v2

    iget-object v3, v0, Lhcr;->e:Lgft;

    invoke-interface {v3}, Lgft;->f()Lkab;

    move-result-object v3

    iget v3, v3, Lkab;->e:I

    invoke-static {v3}, Liko;->a(I)Liko;

    move-result-object v3

    sget-object v4, Liko;->b:Liko;

    invoke-virtual {v3, v4}, Liko;->equals(Ljava/lang/Object;)Z

    move-result v3

    iget-boolean v4, p0, Lcom/google/android/apps/camera/smarts/SmartsChipView;->k:Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v4, :cond_2

    iget v4, p0, Lcom/google/android/apps/camera/smarts/SmartsChipView;->m:I

    if-eqz v4, :cond_1

    if-eq v4, v7, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    throw v5

    :cond_2
    const/4 v4, 0x1

    :goto_0
    iget-object v8, v0, Lhcr;->g:Ldja;

    iget-object v9, v0, Lhcr;->i:Ligo;

    if-eqz v2, :cond_4

    iget-object v10, v8, Ldja;->b:Ljava/lang/Object;

    check-cast v10, Ljvk;

    iget-object v10, v10, Ljvk;->d:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-nez v10, :cond_3

    goto :goto_1

    :cond_3
    const/4 v5, 0x1

    goto :goto_3

    :cond_4
    :goto_1
    if-eqz p1, :cond_6

    iget v10, p0, Lcom/google/android/apps/camera/smarts/SmartsChipView;->m:I

    if-eqz v10, :cond_5

    const/4 v5, 0x4

    if-eq v10, v5, :cond_3

    goto :goto_2

    :cond_5
    throw v5

    :cond_6
    :goto_2
    if-eqz v3, :cond_7

    iget-object v5, v9, Ligo;->b:Ljava/lang/Object;

    check-cast v5, Ljvk;

    iget-object v5, v5, Ljvk;->d:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v5, 0x1

    goto :goto_3

    :cond_7
    const/4 v5, 0x0

    :goto_3
    if-eqz v2, :cond_9

    iget-object v2, v8, Ldja;->a:Ljava/lang/Object;

    check-cast v2, Ljvk;

    iget-object v2, v2, Ljvk;->d:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_4

    :cond_8
    const/4 v2, 0x1

    goto :goto_5

    :cond_9
    :goto_4
    if-eqz p1, :cond_a

    if-eqz v4, :cond_a

    iget-boolean v2, p0, Lcom/google/android/apps/camera/smarts/SmartsChipView;->i:Z

    if-nez v2, :cond_8

    :cond_a
    if-eqz p1, :cond_b

    iget-boolean v2, p0, Lcom/google/android/apps/camera/smarts/SmartsChipView;->j:Z

    if-nez v2, :cond_8

    :cond_b
    if-eqz v3, :cond_c

    iget-object v2, v9, Ligo;->a:Ljava/lang/Object;

    check-cast v2, Ljvk;

    iget-object v2, v2, Ljvk;->d:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v2, 0x1

    goto :goto_5

    :cond_c
    const/4 v2, 0x0

    :goto_5
    iget v3, p0, Lcom/google/android/apps/camera/smarts/SmartsChipView;->q:I

    if-eqz p1, :cond_d

    if-eqz v4, :cond_d

    iget-boolean v4, p0, Lcom/google/android/apps/camera/smarts/SmartsChipView;->i:Z

    if-eqz v4, :cond_d

    iget-boolean v4, p0, Lcom/google/android/apps/camera/smarts/SmartsChipView;->j:Z

    if-eqz v4, :cond_d

    iget p1, p0, Lcom/google/android/apps/camera/smarts/SmartsChipView;->r:I

    add-int/2addr v3, p1

    goto :goto_6

    :cond_d
    if-eqz p1, :cond_e

    iget-boolean p1, p0, Lcom/google/android/apps/camera/smarts/SmartsChipView;->j:Z

    if-eqz p1, :cond_e

    iget v3, p0, Lcom/google/android/apps/camera/smarts/SmartsChipView;->r:I

    :cond_e
    :goto_6
    if-nez v5, :cond_f

    if-nez v2, :cond_f

    const/4 v3, 0x0

    :cond_f
    if-nez v1, :cond_10

    iget-boolean p1, v0, Lhcr;->f:Z

    if-eqz p1, :cond_10

    goto :goto_7

    :cond_10
    const/4 v7, 0x0

    :goto_7
    int-to-float p1, v3

    invoke-virtual {p0}, Lcom/google/android/apps/camera/smarts/SmartsChipView;->getTranslationY()F

    move-result v1

    cmpl-float v1, p1, v1

    if-nez v1, :cond_11

    goto :goto_8

    :cond_11
    if-eqz v7, :cond_12

    invoke-virtual {p0}, Lcom/google/android/apps/camera/smarts/SmartsChipView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget v1, p0, Lcom/google/android/apps/camera/smarts/SmartsChipView;->t:I

    int-to-long v1, v1

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_8

    :cond_12
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/smarts/SmartsChipView;->setTranslationY(F)V

    :goto_8
    iget-boolean p1, v0, Lhcr;->f:Z

    if-eqz p1, :cond_15

    const/16 p1, 0x8

    if-eqz v5, :cond_14

    invoke-virtual {p0}, Lcom/google/android/apps/camera/smarts/SmartsChipView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_9

    :cond_13
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/smarts/SmartsChipView;->a(I)V

    return-void

    :cond_14
    :goto_9
    if-nez v5, :cond_15

    invoke-virtual {p0}, Lcom/google/android/apps/camera/smarts/SmartsChipView;->getVisibility()I

    move-result v0

    if-ne v0, p1, :cond_15

    invoke-virtual {p0, v6}, Lcom/google/android/apps/camera/smarts/SmartsChipView;->a(I)V

    return-void

    :cond_15
    return-void
.end method

.method public final onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0b0326

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/smarts/SmartsChipView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/google/android/apps/camera/smarts/SmartsChipView;->a:Landroid/widget/FrameLayout;

    const v0, 0x7f0b0328

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/smarts/SmartsChipView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/apps/camera/smarts/SmartsChipView;->n:Landroid/widget/ImageView;

    const v0, 0x7f0b0329

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/smarts/SmartsChipView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/camera/smarts/SmartsChipView;->b:Landroid/widget/TextView;

    const v0, 0x7f0b0327

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/smarts/SmartsChipView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/apps/camera/smarts/SmartsChipView;->o:Landroid/widget/ImageView;

    const v0, 0x7f0b0324

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/smarts/SmartsChipView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/google/android/apps/camera/smarts/SmartsChipView;->c:Landroid/widget/FrameLayout;

    const v0, 0x7f0b0325

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/smarts/SmartsChipView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/google/android/apps/camera/smarts/SmartsChipView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070662

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/camera/smarts/SmartsChipView;->q:I

    const/high16 v0, 0x42600000    # 56.0f

    invoke-static {v0}, Likp;->b(F)I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcom/google/android/apps/camera/smarts/SmartsChipView;->r:I

    invoke-virtual {p0}, Lcom/google/android/apps/camera/smarts/SmartsChipView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/camera/smarts/SmartsChipView;->t:I

    invoke-virtual {p0}, Lcom/google/android/apps/camera/smarts/SmartsChipView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070651

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    invoke-virtual {p0}, Lcom/google/android/apps/camera/smarts/SmartsChipView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070652

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/camera/smarts/SmartsChipView;->p:I

    invoke-virtual {p0}, Lcom/google/android/apps/camera/smarts/SmartsChipView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070655

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/camera/smarts/SmartsChipView;->s:I

    new-instance v0, Lhce;

    invoke-direct {v0, p0}, Lhce;-><init>(Lcom/google/android/apps/camera/smarts/SmartsChipView;)V

    iget-object v1, p0, Lcom/google/android/apps/camera/smarts/SmartsChipView;->a:Landroid/widget/FrameLayout;

    new-instance v2, Lhcf;

    invoke-direct {v2, p0, v0}, Lhcf;-><init>(Lcom/google/android/apps/camera/smarts/SmartsChipView;Landroid/view/View$AccessibilityDelegate;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    iget-object v1, p0, Lcom/google/android/apps/camera/smarts/SmartsChipView;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    iget-object v0, p0, Lcom/google/android/apps/camera/smarts/SmartsChipView;->b:Landroid/widget/TextView;

    new-instance v1, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v1}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method
