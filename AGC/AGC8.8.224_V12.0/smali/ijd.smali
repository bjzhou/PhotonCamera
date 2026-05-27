.class public final Lijd;
.super Ljava/lang/Object;

# interfaces
.implements Lgen;


# instance fields
.field public final synthetic a:Lije;


# direct methods
.method public constructor <init>(Lije;)V
    .locals 0

    iput-object p1, p0, Lijd;->a:Lije;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lijd;->a:Lije;

    iget-object v0, v0, Lije;->a:Loiw;

    check-cast v0, Lihj;

    invoke-virtual {v0}, Lihj;->a()Lihg;

    move-result-object v0

    iget-object v0, v0, Lihg;->c:Ljava/lang/Object;

    new-instance v1, Lhqn;

    check-cast v0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;

    const/16 v2, 0x13

    invoke-direct {v1, p0, v0, v2}, Lhqn;-><init>(Lijd;Lcom/google/android/apps/camera/ui/views/MainActivityLayout;I)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lijd;->a:Lije;

    iget-object v0, v0, Lije;->e:Ljwb;

    invoke-interface {v0}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lgyu;->d:Lgyu;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lijd;->a:Lije;

    iget-object v0, v0, Lije;->j:Logd;

    invoke-interface {v0}, Logd;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lclc;

    invoke-virtual {v0}, Lclc;->c()V

    return-void

    :cond_0
    iget-object v0, p0, Lijd;->a:Lije;

    iget-object v0, v0, Lije;->j:Logd;

    invoke-interface {v0}, Logd;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lclc;

    invoke-virtual {v0}, Lclc;->a()V

    return-void
.end method

.method public final synthetic b()V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lijd;->a:Lije;

    iget-object v0, v0, Lije;->a:Loiw;

    check-cast v0, Lihj;

    invoke-virtual {v0}, Lihj;->a()Lihg;

    move-result-object v0

    iget-object v0, v0, Lihg;->c:Ljava/lang/Object;

    iget-object v1, p0, Lijd;->a:Lije;

    iget-object v1, v1, Lije;->z:Ljvd;

    check-cast v0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->s(Ljvd;)V

    return-void
.end method

.method public final synthetic d()V
    .locals 0

    return-void
.end method
