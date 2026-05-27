.class public final Licg;
.super Ljava/lang/Object;

# interfaces
.implements Licf;


# instance fields
.field private final a:I

.field private final b:Z

.field private final c:Landroid/content/Context;

.field private final d:Z

.field private final e:Landroid/view/View$OnClickListener;

.field private final f:Lice;

.field private final g:I

.field private h:I

.field private i:Ljava/util/Date;

.field private j:Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;

.field private k:Ljava/util/Date;

.field private l:Ljava/lang/String;

.field private m:Lhyn;

.field private final n:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IIZLandroid/view/View$OnClickListener;Lice;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Licg;->c:Landroid/content/Context;

    iput-object p2, p0, Licg;->l:Ljava/lang/String;

    iput p3, p0, Licg;->a:I

    iput p4, p0, Licg;->n:I

    iput-boolean p5, p0, Licg;->b:Z

    iput-object p6, p0, Licg;->e:Landroid/view/View$OnClickListener;

    iput-object p7, p0, Licg;->f:Lice;

    iput-boolean p8, p0, Licg;->d:Z

    iput p9, p0, Licg;->g:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Licg;->a:I

    add-int/lit16 v0, v0, 0x1f4

    return v0
.end method

.method public final b()Lelm;
    .locals 1

    sget-object v0, Lelm;->a:Lelm;

    return-object v0
.end method

.method public final synthetic c()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lfcr;->f()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Ljava/lang/Runnable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final e()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Licg;->k:Ljava/util/Date;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Licg;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Licg;

    iget v1, p0, Licg;->a:I

    iget v3, p1, Licg;->a:I

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Licg;->b:Z

    iget-boolean v3, p1, Licg;->b:Z

    if-ne v1, v3, :cond_2

    iget v1, p0, Licg;->n:I

    iget v3, p1, Licg;->n:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Licg;->l:Ljava/lang/String;

    iget-object v3, p1, Licg;->l:Ljava/lang/String;

    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Licg;->e:Landroid/view/View$OnClickListener;

    iget-object v3, p1, Licg;->e:Landroid/view/View$OnClickListener;

    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Licg;->f:Lice;

    iget-object v3, p1, Licg;->f:Lice;

    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Licg;->i:Ljava/util/Date;

    if-eqz v1, :cond_2

    iget-object v3, p1, Licg;->i:Ljava/util/Date;

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    iget-object p1, p1, Licg;->i:Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-nez p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final f(Ljava/lang/Runnable;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Unsupported Operation delayedHide(Runnable) in: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final g()V
    .locals 6

    iget-object v0, p0, Licg;->j:Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;

    iget-object v1, v0, Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;->h:Ljdc;

    iget-object v1, v1, Ljdc;->a:Ljava/lang/Object;

    check-cast v1, Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->end()V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;->setVisibility(I)V

    iget-boolean v1, v0, Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;->c:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;->a()V

    :cond_0
    iget-object v1, v0, Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;->d:Lice;

    if-eqz v1, :cond_1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;->f:J

    sub-long/2addr v2, v4

    invoke-interface {v1, v2, v3}, Lice;->a(J)V

    :cond_1
    return-void
.end method

.method public final h()V
    .locals 2

    iget-object v0, p0, Licg;->j:Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;->a()V

    iget-object v0, p0, Licg;->j:Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;

    iget-object v1, v0, Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;->h:Ljdc;

    iget-object v1, v1, Ljdc;->b:Ljava/lang/Object;

    check-cast v1, Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;->h:Ljdc;

    iget-object v0, v0, Ljdc;->b:Ljava/lang/Object;

    check-cast v0, Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->reverse()V

    :cond_0
    iget-object v0, p0, Licg;->j:Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;

    iget v1, p0, Licg;->a:I

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;->c(I)V

    return-void
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Licg;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Licg;->n:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Licg;->b:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    iget-object v2, p0, Licg;->l:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Licg;->e:Landroid/view/View$OnClickListener;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Licg;->f:Lice;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Licg;->i:Ljava/util/Date;

    aput-object v2, v0, v1

    invoke-static {v0}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final i(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Licg;->k:Ljava/util/Date;

    return-void
.end method

.method public final j()V
    .locals 8

    iget v0, p0, Licg;->g:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    iget v1, p0, Licg;->h:I

    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    add-int/2addr v1, v2

    iput v1, p0, Licg;->h:I

    :cond_1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Licg;->i:Ljava/util/Date;

    iget-object v0, p0, Licg;->c:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f0b0263

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;

    iput-object v0, p0, Licg;->j:Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;

    iget-object v1, p0, Licg;->l:Ljava/lang/String;

    iget v3, p0, Licg;->a:I

    iget-boolean v4, p0, Licg;->b:Z

    iget-object v5, p0, Licg;->e:Landroid/view/View$OnClickListener;

    iget-object v6, p0, Licg;->f:Lice;

    iput v3, v0, Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;->b:I

    iput-boolean v4, v0, Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;->c:Z

    iput-object v6, v0, Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;->d:Lice;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v5}, Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lhxc;

    const/16 v3, 0x14

    invoke-direct {v1, v0, v3}, Lhxc;-><init>(Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;I)V

    iput-object v1, v0, Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;->g:Ljava/lang/Runnable;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    new-instance v3, Lhcl;

    const/4 v4, 0x6

    invoke-direct {v3, v0, v4}, Lhcl;-><init>(Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;I)V

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    const/16 v3, 0xc8

    invoke-static {v3, v1}, Likd;->b(ILandroid/view/animation/Interpolator;)Likd;

    move-result-object v1

    const-string v4, "alpha"

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0, v4, v5, v6}, Likd;->c(Ljava/lang/Object;Ljava/lang/String;FF)V

    iput v3, v1, Likd;->a:I

    const-string v3, "scaleX"

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-virtual {v1, v0, v3, v7, v6}, Likd;->c(Ljava/lang/Object;Ljava/lang/String;FF)V

    const-string v3, "scaleY"

    invoke-virtual {v1, v0, v3, v7, v6}, Likd;->c(Ljava/lang/Object;Ljava/lang/String;FF)V

    iget-object v3, v0, Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;->h:Ljdc;

    invoke-virtual {v1}, Likd;->a()Landroid/animation/AnimatorSet;

    move-result-object v1

    iput-object v1, v3, Ljdc;->a:Ljava/lang/Object;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    const/16 v3, 0x1f4

    invoke-static {v3, v1}, Likd;->b(ILandroid/view/animation/Interpolator;)Likd;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v6, v5}, Likd;->c(Ljava/lang/Object;Ljava/lang/String;FF)V

    iget-object v0, v0, Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;->h:Ljdc;

    invoke-virtual {v1}, Likd;->a()Landroid/animation/AnimatorSet;

    move-result-object v1

    iput-object v1, v0, Ljdc;->b:Ljava/lang/Object;

    iget-object v0, p0, Licg;->j:Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;

    iget-object v1, p0, Licg;->m:Lhyn;

    iput-object v1, v0, Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;->e:Lhyn;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;->getLineCount()I

    move-result v1

    if-le v1, v2, :cond_2

    iget-object v1, v0, Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;->a:Landroid/content/Context;

    const v2, 0x7f0802f1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;->a:Landroid/content/Context;

    const v2, 0x7f0802f0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v0, Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070550

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, v0, Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070552

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, v0, Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070551

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, v0, Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07054f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;->setPaddingRelative(IIII)V

    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;->b()V

    iget-object v1, v0, Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;->h:Ljdc;

    iget-object v1, v1, Ljdc;->a:Ljava/lang/Object;

    check-cast v1, Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;->setVisibility(I)V

    const v1, 0x8000

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;->sendAccessibilityEvent(I)V

    iget-boolean v1, v0, Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;->c:Z

    if-nez v1, :cond_3

    iget v1, v0, Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;->b:I

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;->c(I)V

    :cond_3
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;->f:J

    return-void
.end method

.method public final synthetic k()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final l()Z
    .locals 1

    iget-boolean v0, p0, Licg;->d:Z

    return v0
.end method

.method public final m()Z
    .locals 1

    iget-boolean v0, p0, Licg;->b:Z

    return v0
.end method

.method public final synthetic n()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic o()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final p()I
    .locals 1

    iget v0, p0, Licg;->n:I

    return v0
.end method

.method public final q(IZZLiko;Lhyn;)V
    .locals 0

    iput-object p5, p0, Licg;->m:Lhyn;

    return-void
.end method

.method public final r()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Licg;->i:Ljava/util/Date;

    return-object v0
.end method

.method public final s(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Licg;->l:Ljava/lang/String;

    iget-object v0, p0, Licg;->j:Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
