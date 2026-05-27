.class public final Lepg;
.super Ljava/lang/Object;

# interfaces
.implements Leqi;
.implements Lkad;


# instance fields
.field public final a:Ljwb;

.field public b:Lcom/google/android/apps/camera/ui/modeslider/ModeSliderUi;

.field public final c:Liab;

.field private final d:Lian;

.field private final e:Ljava/util/Set;

.field private final f:Ljuf;

.field private final g:Lcdi;


# direct methods
.method public constructor <init>(Ljwb;Lian;Ljava/util/Set;Liab;Lcdi;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljuf;

    invoke-direct {v0}, Ljuf;-><init>()V

    iput-object v0, p0, Lepg;->f:Ljuf;

    iput-object p1, p0, Lepg;->a:Ljwb;

    iput-object p2, p0, Lepg;->d:Lian;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lepg;->e:Ljava/util/Set;

    iput-object p4, p0, Lepg;->c:Liab;

    iput-object p5, p0, Lepg;->g:Lcdi;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lepg;->b:Lcom/google/android/apps/camera/ui/modeslider/ModeSliderUi;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/ui/modeslider/ModeSliderUi;->b()Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->d()V

    return-void

    :cond_0
    iget-object p1, p0, Lepg;->b:Lcom/google/android/apps/camera/ui/modeslider/ModeSliderUi;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/ui/modeslider/ModeSliderUi;->b()Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->c()V

    return-void
.end method

.method public final b(Liko;)V
    .locals 1

    iget-object v0, p0, Lepg;->b:Lcom/google/android/apps/camera/ui/modeslider/ModeSliderUi;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/ui/modeslider/ModeSliderUi;->c(Liko;)V

    return-void
.end method

.method public final c(Landroid/view/ViewStub;)V
    .locals 3

    iget-object v0, p0, Lepg;->b:Lcom/google/android/apps/camera/ui/modeslider/ModeSliderUi;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0b01c4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/apps/camera/ui/modeslider/ModeSliderUi;

    iput-object p1, p0, Lepg;->b:Lcom/google/android/apps/camera/ui/modeslider/ModeSliderUi;

    :cond_0
    iget-object p1, p0, Lepg;->d:Lian;

    iget-object v0, p0, Lepg;->b:Lcom/google/android/apps/camera/ui/modeslider/ModeSliderUi;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/modeslider/ModeSliderUi;->b()Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;

    move-result-object v1

    iget-object v2, p0, Lepg;->e:Ljava/util/Set;

    iput-object v0, p1, Lian;->d:Landroid/view/View;

    iput-object v1, p1, Lian;->e:Liaq;

    iput-object v2, p1, Lian;->f:Ljava/util/Set;

    iget-object p1, p0, Lepg;->b:Lcom/google/android/apps/camera/ui/modeslider/ModeSliderUi;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/ui/modeslider/ModeSliderUi;->b()Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;

    move-result-object p1

    iget-object v0, p0, Lepg;->c:Liab;

    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->i(Liab;)V

    new-instance v0, Lepf;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lepf;-><init>(Lepg;I)V

    iput-object v0, p1, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->a:Liap;

    iget-object p1, p0, Lepg;->d:Lian;

    invoke-virtual {p1}, Liad;->f()V

    iget-object p1, p0, Lepg;->f:Ljuf;

    iget-object v0, p0, Lepg;->a:Ljwb;

    new-instance v1, Ldsk;

    const/16 v2, 0x8

    invoke-direct {v1, p0, v2}, Ldsk;-><init>(Lepg;I)V

    sget-object v2, Lnnv;->a:Lnnv;

    invoke-interface {v0, v1, v2}, Ljwb;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljuf;->d(Lkad;)V

    iget-object p1, p0, Lepg;->g:Lcdi;

    invoke-virtual {p1}, Lcdi;->i()Ljuf;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljuf;->d(Lkad;)V

    return-void
.end method

.method public final close()V
    .locals 1

    invoke-virtual {p0}, Lepg;->d()V

    iget-object v0, p0, Lepg;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lepg;->f:Ljuf;

    invoke-virtual {v0}, Ljuf;->close()V

    return-void
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lepg;->b:Lcom/google/android/apps/camera/ui/modeslider/ModeSliderUi;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/ui/modeslider/ModeSliderUi;->setAlpha(F)V

    iget-object v0, p0, Lepg;->d:Lian;

    invoke-virtual {v0}, Liad;->a()V

    return-void
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Lepg;->b:Lcom/google/android/apps/camera/ui/modeslider/ModeSliderUi;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/ui/modeslider/ModeSliderUi;->setAlpha(F)V

    iget-object v0, p0, Lepg;->d:Lian;

    invoke-virtual {v0}, Liad;->b()V

    return-void
.end method
