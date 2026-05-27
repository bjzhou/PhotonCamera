.class public final Lgrr;
.super Lgrn;

# interfaces
.implements Lhiv;


# instance fields
.field public final a:Lcom/google/android/apps/camera/progressoverlay/ProgressOverlay;

.field public b:Z

.field public final c:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field public final d:Lhiu;

.field public final e:Lhiw;

.field public final f:Lhiw;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/progressoverlay/ProgressOverlay;)V
    .locals 4

    invoke-direct {p0}, Lgrn;-><init>()V

    invoke-static {}, Ljuh;->a()V

    iput-object p1, p0, Lgrr;->a:Lcom/google/android/apps/camera/progressoverlay/ProgressOverlay;

    iget-object p1, p1, Lcom/google/android/apps/camera/progressoverlay/ProgressOverlay;->a:Landroid/graphics/drawable/AnimatedVectorDrawable;

    iput-object p1, p0, Lgrr;->c:Landroid/graphics/drawable/AnimatedVectorDrawable;

    new-instance v0, Lgro;

    invoke-direct {v0, p0}, Lgro;-><init>(Lgrr;)V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lgrr;->b:Z

    new-instance v0, Lgri;

    invoke-direct {v0, p0}, Lgri;-><init>(Lgrr;)V

    new-instance v1, Lhiw;

    new-array v2, p1, [Lhis;

    invoke-direct {v1, v0, v2}, Lhiw;-><init>(Lhis;[Lhis;)V

    iput-object v1, p0, Lgrr;->e:Lhiw;

    new-instance v0, Lgrj;

    invoke-direct {v0, p0}, Lgrj;-><init>(Lgrr;)V

    new-instance v2, Lhiw;

    new-array v3, p1, [Lhis;

    invoke-direct {v2, v0, v3}, Lhiw;-><init>(Lhis;[Lhis;)V

    iput-object v2, p0, Lgrr;->f:Lhiw;

    new-instance v0, Lhiu;

    invoke-direct {v0, v1, p1}, Lhiu;-><init>(Lhiw;Z)V

    iput-object v0, p0, Lgrr;->d:Lhiu;

    invoke-virtual {v0}, Lhiu;->f()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lgrr;->d:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lgrr;->d:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Lgrn;

    invoke-virtual {v0}, Lgrn;->a()V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lgrr;->d:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lgrr;->d:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Lgrn;

    invoke-virtual {v0}, Lgrn;->b()V

    return-void
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lgrr;->d:Lhiu;

    invoke-virtual {v0}, Lhiu;->b()V

    iget-object v0, p0, Lgrr;->e:Lhiw;

    invoke-virtual {v0}, Lhiw;->e()V

    iget-object v0, p0, Lgrr;->f:Lhiw;

    invoke-virtual {v0}, Lhiw;->e()V

    return-void
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Lgrr;->d:Lhiu;

    invoke-virtual {v0}, Lhiu;->c()V

    return-void
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Lgrr;->d:Lhiu;

    invoke-virtual {v0}, Lhiu;->d()V

    return-void
.end method

.method public final h()V
    .locals 0

    invoke-static {p0}, Ljcb;->l(Lhiv;)V

    return-void
.end method
