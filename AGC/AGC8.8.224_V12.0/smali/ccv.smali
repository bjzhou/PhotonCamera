.class public final Lccv;
.super Ljava/lang/Object;

# interfaces
.implements Lkad;


# instance fields
.field public final a:Ljwb;

.field private final b:Lkad;

.field private c:Z


# direct methods
.method public constructor <init>(Ldol;Ldww;Ldqx;Ldja;[B[B[B[B)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p5, Ljvk;

    sget-object p6, Lccu;->a:Lccu;

    invoke-direct {p5, p6}, Ljvk;-><init>(Ljava/lang/Object;)V

    iput-object p5, p0, Lccv;->a:Ljwb;

    sget-object p6, Lccu;->a:Lccu;

    invoke-interface {p1}, Ldol;->c()Ljvs;

    move-result-object p7

    check-cast p7, Ljvk;

    iget-object p7, p7, Ljvk;->d:Ljava/lang/Object;

    check-cast p7, Ljava/lang/Boolean;

    invoke-virtual {p7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p7

    if-eqz p7, :cond_0

    invoke-interface {p2}, Ldww;->n()Ljvs;

    move-result-object p7

    check-cast p7, Ljvk;

    iget-object p7, p7, Ljvk;->d:Ljava/lang/Object;

    check-cast p7, Ljava/lang/Boolean;

    invoke-virtual {p7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p7

    if-eqz p7, :cond_0

    sget-object p6, Lccu;->d:Lccu;

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ldol;->c()Ljvs;

    move-result-object p7

    check-cast p7, Ljvk;

    iget-object p7, p7, Ljvk;->d:Ljava/lang/Object;

    check-cast p7, Ljava/lang/Boolean;

    invoke-virtual {p7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p7

    if-eqz p7, :cond_1

    sget-object p6, Lccu;->b:Lccu;

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Ldww;->n()Ljvs;

    move-result-object p7

    check-cast p7, Ljvk;

    iget-object p7, p7, Ljvk;->d:Ljava/lang/Object;

    check-cast p7, Ljava/lang/Boolean;

    invoke-virtual {p7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p7

    if-eqz p7, :cond_2

    sget-object p6, Lccu;->c:Lccu;

    :cond_2
    :goto_0
    sget-object p7, Lccu;->a:Lccu;

    invoke-virtual {p6, p7}, Lccu;->equals(Ljava/lang/Object;)Z

    move-result p7

    if-nez p7, :cond_3

    invoke-virtual {p6}, Lccu;->name()Ljava/lang/String;

    invoke-interface {p5, p6}, Ljwb;->bn(Ljava/lang/Object;)V

    :cond_3
    new-instance p5, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    invoke-direct {p5, p0}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;-><init>(Lccv;)V

    invoke-interface {p1, p5}, Ldol;->s(Landroidx/wear/ambient/AmbientModeSupport$AmbientController;)V

    new-instance p1, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    invoke-direct {p1, p0}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;-><init>(Lccv;)V

    invoke-interface {p2, p1}, Ldww;->C(Landroidx/wear/ambient/AmbientModeSupport$AmbientController;)V

    iget-object p1, p4, Ldja;->a:Ljava/lang/Object;

    new-instance p2, Lkjm;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p2

    move-object v1, p0

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lkjm;-><init>(Lccv;Ldqx;I[B[B)V

    sget-object p3, Lnnv;->a:Lnnv;

    invoke-interface {p1, p2, p3}, Ljwb;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object p1

    iput-object p1, p0, Lccv;->b:Lkad;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-boolean v0, p0, Lccv;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccv;->c:Z

    iget-object v0, p0, Lccv;->b:Lkad;

    invoke-interface {v0}, Lkad;->close()V

    return-void
.end method
