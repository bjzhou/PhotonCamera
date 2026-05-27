.class public final Lhql;
.super Ljava/lang/Object;

# interfaces
.implements Lelk;


# instance fields
.field public final a:Landroid/view/ViewGroup;

.field public final b:Ljava/lang/Runnable;

.field public c:Ljava/lang/Runnable;

.field public d:Ljava/lang/Runnable;

.field private final e:Lj$/time/Duration;

.field private final f:Landroid/view/View;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:I

.field private final j:Z

.field private final k:Lgeh;

.field private final l:Lfbz;

.field private m:Ljava/util/Date;

.field private n:Liko;

.field private o:Lcom/google/android/apps/camera/toast/ToastView;

.field private final p:I


# direct methods
.method public constructor <init>(Lj$/time/Duration;Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Runnable;IZLgeh;Lfbz;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lhck;->c:Lhck;

    iput-object v0, p0, Lhql;->d:Ljava/lang/Runnable;

    sget-object v0, Liko;->a:Liko;

    iput-object v0, p0, Lhql;->n:Liko;

    iput-object p1, p0, Lhql;->e:Lj$/time/Duration;

    iput-object p2, p0, Lhql;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, Lhql;->f:Landroid/view/View;

    const/4 p1, 0x0

    iput-object p1, p0, Lhql;->g:Ljava/lang/String;

    iput-object p1, p0, Lhql;->h:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Lhql;->i:I

    iput-object p4, p0, Lhql;->b:Ljava/lang/Runnable;

    iput p5, p0, Lhql;->p:I

    iput-boolean p6, p0, Lhql;->j:Z

    iput-object p7, p0, Lhql;->k:Lgeh;

    iput-object p8, p0, Lhql;->l:Lfbz;

    return-void
.end method

.method private static r(Lcom/google/android/apps/camera/toast/ToastView;Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0b03a7

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/toast/ToastView;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v1, v1, v1, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViewsInLayout()V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 4

    iget-object v0, p0, Lhql;->e:Lj$/time/Duration;

    invoke-virtual {v0}, Lj$/time/Duration;->toMillis()J

    move-result-wide v0

    sget-object v2, Lcom/google/android/apps/camera/toast/ToastView;->d:Lj$/time/Duration;

    invoke-virtual {v2}, Lj$/time/Duration;->toMillis()J

    move-result-wide v2

    add-long/2addr v0, v2

    sget-object v2, Lcom/google/android/apps/camera/toast/ToastView;->e:Lj$/time/Duration;

    invoke-virtual {v2}, Lj$/time/Duration;->toMillis()J

    move-result-wide v2

    add-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public final b()Lelm;
    .locals 1

    iget-boolean v0, p0, Lhql;->j:Z

    if-eqz v0, :cond_0

    sget-object v0, Lelm;->e:Lelm;

    goto :goto_0

    :cond_0
    sget-object v0, Lelm;->d:Lelm;

    :goto_0
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

    iget-object v0, p0, Lhql;->m:Ljava/util/Date;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lhql;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lhql;

    iget v1, p1, Lhql;->i:I

    iget-boolean v1, p0, Lhql;->j:Z

    iget-boolean v3, p1, Lhql;->j:Z

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lhql;->e:Lj$/time/Duration;

    iget-object v3, p1, Lhql;->e:Lj$/time/Duration;

    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lhql;->a:Landroid/view/ViewGroup;

    iget-object v3, p1, Lhql;->a:Landroid/view/ViewGroup;

    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p1, Lhql;->g:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v1, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p1, Lhql;->h:Ljava/lang/String;

    invoke-static {v1, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lhql;->p:I

    iget p1, p1, Lhql;->p:I

    if-ne v1, p1, :cond_2

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
    .locals 1

    iget-object v0, p0, Lhql;->o:Lcom/google/android/apps/camera/toast/ToastView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/toast/ToastView;->f()V

    :cond_0
    return-void
.end method

.method public final synthetic h()V
    .locals 0

    return-void
.end method

.method public final hashCode()I
    .locals 4

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lhql;->e:Lj$/time/Duration;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    iget-object v3, p0, Lhql;->a:Landroid/view/ViewGroup;

    aput-object v3, v0, v1

    const/4 v1, 0x2

    const/4 v3, 0x0

    aput-object v3, v0, v1

    const/4 v1, 0x3

    aput-object v3, v0, v1

    const/4 v1, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget v1, p0, Lhql;->p:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lhql;->j:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-static {v0}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final i(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lhql;->m:Ljava/util/Date;

    return-void
.end method

.method public final j()V
    .locals 3

    iget-boolean v0, p0, Lhql;->j:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lhql;->f:Landroid/view/View;

    if-nez v0, :cond_1

    iget-object v0, p0, Lhql;->k:Lgeh;

    invoke-interface {v0}, Lgeh;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhql;->c:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    iget-object v0, p0, Lhql;->k:Lgeh;

    new-instance v1, Lhqj;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lhqj;-><init>(Lhql;I)V

    invoke-interface {v0, v1}, Lgeh;->g(Lgen;)V

    invoke-static {p0}, Lcom/google/android/apps/camera/toast/EducationToastView;->a(Lhql;)Lcom/google/android/apps/camera/toast/EducationToastView;

    move-result-object v0

    iput-object v0, p0, Lhql;->o:Lcom/google/android/apps/camera/toast/ToastView;

    iget-object v1, p0, Lhql;->n:Liko;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/toast/ToastView;->d(Liko;)V

    iget-object v0, p0, Lhql;->o:Lcom/google/android/apps/camera/toast/ToastView;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/toast/ToastView;->h()V

    iget-object v0, p0, Lhql;->l:Lfbz;

    invoke-interface {v0}, Lfbz;->az()V

    return-void

    :cond_1
    invoke-static {p0}, Lcom/google/android/apps/camera/toast/EducationToastView;->a(Lhql;)Lcom/google/android/apps/camera/toast/EducationToastView;

    move-result-object v1

    iput-object v1, p0, Lhql;->o:Lcom/google/android/apps/camera/toast/ToastView;

    invoke-static {v1, v0}, Lhql;->r(Lcom/google/android/apps/camera/toast/ToastView;Landroid/view/View;)V

    iget-object v0, p0, Lhql;->o:Lcom/google/android/apps/camera/toast/ToastView;

    iget-object v1, p0, Lhql;->n:Liko;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/toast/ToastView;->d(Liko;)V

    iget-object v0, p0, Lhql;->o:Lcom/google/android/apps/camera/toast/ToastView;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/toast/ToastView;->h()V

    return-void

    :cond_2
    sget-object v0, Lcom/google/android/apps/camera/toast/ToastView;->d:Lj$/time/Duration;

    iget-object v0, p0, Lhql;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0106

    invoke-static {v1, v2, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v1, 0x7f0b03ab

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/toast/ToastView;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/camera/toast/ToastView;->b(Lhql;)V

    iput-object v0, p0, Lhql;->o:Lcom/google/android/apps/camera/toast/ToastView;

    iget-object v1, p0, Lhql;->f:Landroid/view/View;

    if-eqz v1, :cond_3

    invoke-static {v0, v1}, Lhql;->r(Lcom/google/android/apps/camera/toast/ToastView;Landroid/view/View;)V

    :cond_3
    iget-object v0, p0, Lhql;->o:Lcom/google/android/apps/camera/toast/ToastView;

    iget-object v1, p0, Lhql;->n:Liko;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/toast/ToastView;->d(Liko;)V

    iget-object v0, p0, Lhql;->o:Lcom/google/android/apps/camera/toast/ToastView;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/toast/ToastView;->h()V

    return-void
.end method

.method public final synthetic k()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic l()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final m()Z
    .locals 1

    const/4 v0, 0x0

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

    iget v0, p0, Lhql;->p:I

    return v0
.end method

.method public final q(IZZLiko;Lhyn;)V
    .locals 0

    iput-object p4, p0, Lhql;->n:Liko;

    iget-object p1, p0, Lhql;->o:Lcom/google/android/apps/camera/toast/ToastView;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p4}, Lcom/google/android/apps/camera/toast/ToastView;->d(Liko;)V

    :cond_0
    return-void
.end method
