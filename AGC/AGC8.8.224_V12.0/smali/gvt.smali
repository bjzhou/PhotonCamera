.class public final Lgvt;
.super Ljava/lang/Object;

# interfaces
.implements Lgvv;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:I

.field private final j:I

.field private final k:Like;

.field private final l:Like;

.field private final m:Like;

.field private final n:Like;

.field private final o:Landroid/view/View;

.field private final p:Lcom/google/android/apps/camera/ui/views/GradientBar;

.field private final q:Landroid/graphics/drawable/GradientDrawable;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/bottombar/BottomBarController;Licb;Lcom/google/android/apps/camera/ui/views/GradientBar;Ldja;Ldhi;[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljuh;->a()V

    iget-object p4, p4, Ldja;->a:Ljava/lang/Object;

    check-cast p4, Ljew;

    const p6, 0x7f0b0053

    invoke-virtual {p4, p6}, Ljew;->f(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/view/View;

    iput-object p4, p0, Lgvt;->o:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p6

    sget-object p7, Ldho;->aE:Ldhj;

    invoke-interface {p5, p7}, Ldhi;->l(Ldhj;)Z

    move-result p7

    const/16 p8, 0xff

    if-eqz p7, :cond_0

    sget-object p7, Ldho;->i:Ldhk;

    invoke-interface {p5, p7}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object p5

    invoke-virtual {p5}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Integer;

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p5

    invoke-static {p5, p8}, Lacp;->d(II)I

    move-result p5

    iput p5, p0, Lgvt;->a:I

    goto :goto_0

    :cond_0
    sget-object p7, Ldho;->h:Ldhk;

    invoke-interface {p5, p7}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object p7

    invoke-virtual {p7}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Ljava/lang/Integer;

    invoke-virtual {p7}, Ljava/lang/Integer;->intValue()I

    move-result p7

    invoke-static {p7, p8}, Lacp;->d(II)I

    move-result p7

    iput p7, p0, Lgvt;->a:I

    sget-object p7, Ldho;->h:Ldhk;

    invoke-interface {p5, p7}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object p5

    invoke-virtual {p5}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Integer;

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p5

    const/16 p7, 0xcc

    invoke-static {p5, p7}, Lacp;->d(II)I

    :goto_0
    const p5, 0x7f06069f

    const/4 p7, 0x0

    invoke-virtual {p6, p5, p7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p5

    iput p5, p0, Lgvt;->b:I

    const p5, 0x7f06091c

    invoke-virtual {p6, p5, p7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p5

    iput p5, p0, Lgvt;->c:I

    const p5, 0x7f0401a5

    invoke-static {p4, p5}, Lkwp;->l(Landroid/view/View;I)I

    move-result p5

    iput p5, p0, Lgvt;->d:I

    const p5, 0x7f040178

    invoke-static {p4, p5}, Lkwp;->l(Landroid/view/View;I)I

    move-result p5

    iput p5, p0, Lgvt;->f:I

    const p5, 0x7f040181

    invoke-static {p4, p5}, Lkwp;->l(Landroid/view/View;I)I

    move-result p4

    iput p4, p0, Lgvt;->h:I

    const p4, 0x7f060743

    invoke-virtual {p6, p4, p7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p4

    iput p4, p0, Lgvt;->e:I

    const p4, 0x7f060746

    invoke-virtual {p6, p4, p7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p4

    iput p4, p0, Lgvt;->g:I

    const p4, 0x7f060747

    invoke-virtual {p6, p4, p7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p4

    iput p4, p0, Lgvt;->i:I

    invoke-virtual {p3}, Lcom/google/android/apps/camera/ui/views/GradientBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    check-cast p4, Landroid/graphics/drawable/GradientDrawable;

    iput-object p4, p0, Lgvt;->q:Landroid/graphics/drawable/GradientDrawable;

    new-instance p4, Libm;

    const/4 p5, 0x3

    invoke-direct {p4, p3, p5}, Libm;-><init>(Lcom/google/android/apps/camera/ui/views/GradientBar;I)V

    iput-object p4, p0, Lgvt;->k:Like;

    invoke-interface {p2}, Licb;->a()Like;

    move-result-object p4

    iput-object p4, p0, Lgvt;->l:Like;

    invoke-interface {p2}, Licb;->c()Like;

    move-result-object p4

    iput-object p4, p0, Lgvt;->m:Like;

    invoke-interface {p2}, Licb;->d()Like;

    move-result-object p2

    iput-object p2, p0, Lgvt;->n:Like;

    iput-object p3, p0, Lgvt;->p:Lcom/google/android/apps/camera/ui/views/GradientBar;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->getBottomBarAreaPixels()I

    move-result p1

    iput p1, p0, Lgvt;->j:I

    return-void
.end method

.method private final f(Z)I
    .locals 0

    if-eqz p1, :cond_0

    iget p1, p0, Lgvt;->c:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lgvt;->a:I

    :goto_0
    return p1
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lgvt;->j:I

    return v0
.end method

.method public final b(Z)Landroid/animation/Animator;
    .locals 4

    invoke-direct {p0, p1}, Lgvt;->f(Z)I

    move-result p1

    new-instance v0, Lakf;

    invoke-direct {v0}, Lakf;-><init>()V

    const/16 v1, 0x14d

    invoke-static {v1, v0}, Likd;->b(ILandroid/view/animation/Interpolator;)Likd;

    move-result-object v0

    iget-object v1, p0, Lgvt;->o:Landroid/view/View;

    iget v2, p0, Lgvt;->b:I

    const-string v3, "backgroundColor"

    invoke-virtual {v0, v1, v3, p1, v2}, Likd;->d(Ljava/lang/Object;Ljava/lang/String;II)V

    iget-object p1, p0, Lgvt;->l:Like;

    iget v1, p0, Lgvt;->e:I

    iget v2, p0, Lgvt;->d:I

    const-string v3, "color"

    invoke-virtual {v0, p1, v3, v1, v2}, Likd;->d(Ljava/lang/Object;Ljava/lang/String;II)V

    iget-object p1, p0, Lgvt;->m:Like;

    iget v1, p0, Lgvt;->g:I

    iget v2, p0, Lgvt;->f:I

    invoke-virtual {v0, p1, v3, v1, v2}, Likd;->d(Ljava/lang/Object;Ljava/lang/String;II)V

    iget-object p1, p0, Lgvt;->n:Like;

    iget v1, p0, Lgvt;->i:I

    iget v2, p0, Lgvt;->h:I

    invoke-virtual {v0, p1, v3, v1, v2}, Likd;->d(Ljava/lang/Object;Ljava/lang/String;II)V

    invoke-virtual {v0}, Likd;->a()Landroid/animation/AnimatorSet;

    move-result-object p1

    return-object p1
.end method

.method public final c(Z)Landroid/animation/Animator;
    .locals 4

    invoke-direct {p0, p1}, Lgvt;->f(Z)I

    move-result p1

    new-instance v0, Lakf;

    invoke-direct {v0}, Lakf;-><init>()V

    const/16 v1, 0x3e8

    invoke-static {v1, v0}, Likd;->b(ILandroid/view/animation/Interpolator;)Likd;

    move-result-object v0

    iget-object v1, p0, Lgvt;->o:Landroid/view/View;

    iget v2, p0, Lgvt;->b:I

    const-string v3, "backgroundColor"

    invoke-virtual {v0, v1, v3, v2, p1}, Likd;->d(Ljava/lang/Object;Ljava/lang/String;II)V

    iget-object p1, p0, Lgvt;->l:Like;

    iget v1, p0, Lgvt;->d:I

    iget v2, p0, Lgvt;->e:I

    const-string v3, "color"

    invoke-virtual {v0, p1, v3, v1, v2}, Likd;->d(Ljava/lang/Object;Ljava/lang/String;II)V

    iget-object p1, p0, Lgvt;->m:Like;

    iget v1, p0, Lgvt;->f:I

    iget v2, p0, Lgvt;->g:I

    invoke-virtual {v0, p1, v3, v1, v2}, Likd;->d(Ljava/lang/Object;Ljava/lang/String;II)V

    iget-object p1, p0, Lgvt;->n:Like;

    iget v1, p0, Lgvt;->h:I

    iget v2, p0, Lgvt;->i:I

    invoke-virtual {v0, p1, v3, v1, v2}, Likd;->d(Ljava/lang/Object;Ljava/lang/String;II)V

    invoke-virtual {v0}, Likd;->a()Landroid/animation/AnimatorSet;

    move-result-object p1

    return-object p1
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lgvt;->l:Like;

    iget v1, p0, Lgvt;->d:I

    invoke-interface {v0, v1}, Like;->setColor(I)V

    iget-object v0, p0, Lgvt;->m:Like;

    iget v1, p0, Lgvt;->f:I

    invoke-interface {v0, v1}, Like;->setColor(I)V

    iget-object v0, p0, Lgvt;->n:Like;

    iget v1, p0, Lgvt;->h:I

    invoke-interface {v0, v1}, Like;->setColor(I)V

    iget-object v0, p0, Lgvt;->o:Landroid/view/View;

    iget v1, p0, Lgvt;->b:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lgvt;->p:Lcom/google/android/apps/camera/ui/views/GradientBar;

    iget-object v1, p0, Lgvt;->q:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/ui/views/GradientBar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final e(Z)V
    .locals 2

    invoke-direct {p0, p1}, Lgvt;->f(Z)I

    move-result p1

    iget-object v0, p0, Lgvt;->l:Like;

    iget v1, p0, Lgvt;->e:I

    invoke-interface {v0, v1}, Like;->setColor(I)V

    iget-object v0, p0, Lgvt;->m:Like;

    iget v1, p0, Lgvt;->g:I

    invoke-interface {v0, v1}, Like;->setColor(I)V

    iget-object v0, p0, Lgvt;->n:Like;

    iget v1, p0, Lgvt;->i:I

    invoke-interface {v0, v1}, Like;->setColor(I)V

    iget-object v0, p0, Lgvt;->o:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p1, p0, Lgvt;->k:Like;

    check-cast p1, Libm;

    iget-object p1, p1, Libm;->a:Landroid/view/View;

    check-cast p1, Lcom/google/android/apps/camera/ui/views/GradientBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/ui/views/GradientBar;->setBackgroundColor(I)V

    return-void
.end method
