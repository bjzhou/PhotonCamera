.class public final Lfll;
.super Ljava/lang/Object;

# interfaces
.implements Ljvs;
.implements Lkad;


# instance fields
.field public final a:Ljvk;

.field public final b:Ljava/util/concurrent/Executor;

.field public c:Ljvs;

.field public d:Ljvs;

.field public e:Lkad;

.field public f:Lkad;

.field public g:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    sget-object v0, Ljuh;->b:Ljuh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lfll;->g:Z

    new-instance v1, Ljvk;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v2}, Ljvk;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lfll;->a:Ljvk;

    iput-object v0, p0, Lfll;->b:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final a(Lkai;Ljava/util/concurrent/Executor;)Lkad;
    .locals 1

    iget-object v0, p0, Lfll;->a:Ljvk;

    invoke-virtual {v0, p1, p2}, Ljvk;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic bm()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lfll;->c()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lfll;->a:Ljvk;

    iget-object v0, v0, Ljvk;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public final close()V
    .locals 3

    iget-object v0, p0, Lfll;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lfib;

    const/16 v2, 0x8

    invoke-direct {v1, p0, v2}, Lfib;-><init>(Lfll;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final d(Ljvs;)V
    .locals 3

    iget-object v0, p0, Lfll;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Levy;

    const/16 v2, 0x10

    invoke-direct {v1, p0, p1, v2}, Levy;-><init>(Lfll;Ljvs;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final e()V
    .locals 5

    iget-boolean v0, p0, Lfll;->g:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lfll;->c:Ljvs;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    iget-object v3, p0, Lfll;->d:Ljvs;

    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    const/4 v3, 0x1

    :goto_1
    iget-object v4, p0, Lfll;->a:Ljvk;

    if-eqz v0, :cond_4

    if-eqz v3, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljvk;->bn(Ljava/lang/Object;)V

    :cond_5
    return-void
.end method
