.class public final Lglj;
.super Ljava/lang/Object;

# interfaces
.implements Lglm;


# instance fields
.field public final a:Ljwb;

.field private final b:Ljwb;

.field private final c:Ljwb;

.field private final d:Ljwb;

.field private final e:Ljwb;


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljvk;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v2}, Ljvk;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lglj;->b:Ljwb;

    new-instance v0, Ljvk;

    invoke-direct {v0, v2}, Ljvk;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lglj;->c:Ljwb;

    new-instance v0, Ljvk;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Ljvk;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lglj;->d:Ljwb;

    new-instance v1, Ljvk;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v1, v2}, Ljvk;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lglj;->e:Ljwb;

    new-instance v3, Ljvk;

    move-object v4, v0

    check-cast v4, Ljvk;

    iget-object v0, v0, Ljvk;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move-object v4, v1

    check-cast v4, Ljvk;

    iget-object v1, v1, Ljvk;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-static {v1, v2}, Lmvv;->m(Ljava/lang/Object;Ljava/lang/Object;)Lmvv;

    move-result-object v1

    invoke-static {v0, v1}, Lgll;->a(ILmvv;)Lgll;

    move-result-object v0

    invoke-direct {v3, v0}, Ljvk;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lglj;->a:Ljwb;

    return-void
.end method


# virtual methods
.method public final a()Ljwb;
    .locals 1

    iget-object v0, p0, Lglj;->c:Ljwb;

    return-object v0
.end method

.method public final b()Ljwb;
    .locals 1

    iget-object v0, p0, Lglj;->a:Ljwb;

    return-object v0
.end method

.method public final c()Lnjm;
    .locals 4

    sget-object v0, Lnjm;->c:Lnjm;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    iget-object v1, p0, Lglj;->a:Ljwb;

    check-cast v1, Ljvk;

    iget-object v1, v1, Ljvk;->d:Ljava/lang/Object;

    check-cast v1, Lgll;

    iget-object v1, v1, Lgll;->b:Lmvv;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lmvv;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, v0, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v2, v0, Lnwn;->b:Lnws;

    check-cast v2, Lnjm;

    iget v3, v2, Lnjm;->a:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Lnjm;->a:I

    iput v1, v2, Lnjm;->b:F

    invoke-virtual {v0}, Lnwn;->i()Lnws;

    move-result-object v0

    check-cast v0, Lnjm;

    return-object v0
.end method

.method public final d(Lgll;)Ljava/util/Set;
    .locals 2

    sget-object v0, Liuz;->a:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v1, p1, Lgll;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lkfg;->u(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkfa;

    move-result-object v0

    sget-object v1, Liuz;->b:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object p1, p1, Lgll;->b:Lmvv;

    invoke-static {p1}, Lnsy;->Y(Ljava/util/Collection;)[F

    move-result-object p1

    invoke-static {v1, p1}, Lkfg;->u(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkfa;

    move-result-object p1

    invoke-static {v0, p1}, Lmwn;->I(Ljava/lang/Object;Ljava/lang/Object;)Lmwn;

    move-result-object p1

    return-object p1
.end method

.method public final e(Z)V
    .locals 1

    iget-object v0, p0, Lglj;->b:Ljwb;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p1}, Ljwb;->bn(Ljava/lang/Object;)V

    return-void
.end method

.method public final f(I)V
    .locals 1

    iget-object v0, p0, Lglj;->d:Ljwb;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object p1, p0, Lglj;->c:Ljwb;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljwb;->bn(Ljava/lang/Object;)V

    return-void
.end method

.method public final g(F)V
    .locals 3

    iget-object v0, p0, Lglj;->e:Ljwb;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object v0, p0, Lglj;->b:Ljwb;

    check-cast v0, Ljvk;

    iget-object v0, v0, Ljvk;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    invoke-virtual {p0, v1}, Lglj;->f(I)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Lglj;->f(I)V

    :goto_0
    iget-object p1, p0, Lglj;->c:Ljwb;

    check-cast p1, Ljvk;

    iget-object p1, p1, Ljvk;->d:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eq p1, v1, :cond_1

    iget-object p1, p0, Lglj;->c:Ljwb;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljwb;->bn(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final h(Lcdi;)V
    .locals 3

    invoke-virtual {p1}, Lcdi;->i()Ljuf;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljvs;

    const/4 v1, 0x0

    iget-object v2, p0, Lglj;->d:Ljwb;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lglj;->e:Ljwb;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljvw;->b([Ljvs;)Ljvs;

    move-result-object v0

    new-instance v1, Lgdl;

    const/16 v2, 0x14

    invoke-direct {v1, p0, v2}, Lgdl;-><init>(Lglj;I)V

    sget-object v2, Lnnv;->a:Lnnv;

    invoke-interface {v0, v1, v2}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljuf;->d(Lkad;)V

    return-void
.end method
