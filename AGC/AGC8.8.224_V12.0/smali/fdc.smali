.class public final Lfdc;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lcom/google/android/apps/camera/ui/widget/ReviewImageView;

.field public final b:Landroid/widget/ImageView;

.field public c:Z

.field public d:Z

.field public e:I

.field public f:I

.field public g:I

.field private final h:Lgft;

.field private final i:Lgxi;

.field private final j:Landroid/widget/FrameLayout;

.field private final k:Ljvs;

.field private final l:Lgxm;


# direct methods
.method public constructor <init>(Lcgy;Landroid/content/res/Resources;Lgft;Lgxi;Ljvs;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xb2

    iput v0, p0, Lfdc;->g:I

    new-instance v0, Lfdb;

    invoke-direct {v0, p0}, Lfdb;-><init>(Lfdc;)V

    iput-object v0, p0, Lfdc;->l:Lgxm;

    iput-object p3, p0, Lfdc;->h:Lgft;

    iput-object p4, p0, Lfdc;->i:Lgxi;

    invoke-interface {p1}, Lcgy;->g()Lcha;

    move-result-object p1

    check-cast p1, Lcie;

    iget-object p1, p1, Lcie;->f:Lcom/google/android/apps/camera/ui/views/MainActivityLayout;

    const p3, 0x7f0b0239

    invoke-virtual {p1, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/FrameLayout;

    iput-object p3, p0, Lfdc;->j:Landroid/widget/FrameLayout;

    new-instance p3, Lcom/google/android/apps/camera/ui/widget/ReviewImageView;

    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-direct {p3, p4}, Lcom/google/android/apps/camera/ui/widget/ReviewImageView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lfdc;->a:Lcom/google/android/apps/camera/ui/widget/ReviewImageView;

    new-instance p3, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lfdc;->b:Landroid/widget/ImageView;

    iput-object p5, p0, Lfdc;->k:Ljvs;

    const p1, 0x7f0803db

    const/4 p4, 0x0

    invoke-virtual {p2, p1, p4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 p1, 0x8

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method static bridge synthetic f(Lfdc;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lfdc;->c:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-virtual {p0}, Lfdc;->c()V

    iget-object v0, p0, Lfdc;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v0, p0, Lfdc;->i:Lgxi;

    iget-object v1, p0, Lfdc;->l:Lgxm;

    invoke-virtual {v0, v1}, Lgxi;->h(Lgxm;)V

    return-void
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lfdc;->a:Lcom/google/android/apps/camera/ui/widget/ReviewImageView;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/widget/ReviewImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lfdc;->j:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lfdc;->a:Lcom/google/android/apps/camera/ui/widget/ReviewImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    :cond_0
    iget-object v0, p0, Lfdc;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lfdc;->j:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lfdc;->b:Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    :cond_1
    iget-object v0, p0, Lfdc;->i:Lgxi;

    iget-object v1, p0, Lfdc;->l:Lgxm;

    invoke-virtual {v0, v1}, Lgxi;->h(Lgxm;)V

    iget-object v0, p0, Lfdc;->i:Lgxi;

    iget-object v1, p0, Lfdc;->l:Lgxm;

    invoke-virtual {v0, v1}, Lgxi;->a(Lgxm;)V

    return-void
.end method

.method public final c()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lfdc;->d:Z

    iget-object v1, p0, Lfdc;->b:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lfdc;->a:Lcom/google/android/apps/camera/ui/widget/ReviewImageView;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/ui/widget/ReviewImageView;->a()V

    iput-boolean v0, p0, Lfdc;->c:Z

    return-void
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lfdc;->d:Z

    iget-object v0, p0, Lfdc;->h:Lgft;

    invoke-interface {v0}, Lgft;->f()Lkab;

    move-result-object v0

    iget v0, v0, Lkab;->e:I

    iput v0, p0, Lfdc;->e:I

    iget-object v0, p0, Lfdc;->k:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lfdc;->f:I

    return-void
.end method

.method public final e(I)V
    .locals 2

    iput p1, p0, Lfdc;->g:I

    iget-object v0, p0, Lfdc;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lfdc;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    return-void
.end method
