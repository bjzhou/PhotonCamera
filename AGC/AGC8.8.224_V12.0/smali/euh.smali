.class public final Leuh;
.super Lftk;


# instance fields
.field public final synthetic a:Leuj;


# direct methods
.method public constructor <init>(Leuj;)V
    .locals 0

    iput-object p1, p0, Leuh;->a:Leuj;

    invoke-direct {p0}, Lftk;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Leuh;->a:Leuj;

    iget-object v0, v0, Leuj;->e:Ljuh;

    new-instance v1, Lett;

    const/16 v2, 0xd

    invoke-direct {v1, p0, v2}, Lett;-><init>(Leuh;I)V

    invoke-virtual {v0, v1}, Ljuh;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Leuh;->a:Leuj;

    iget-object v0, v0, Leuj;->e:Ljuh;

    new-instance v1, Lett;

    const/16 v2, 0xc

    invoke-direct {v1, p0, v2}, Lett;-><init>(Leuh;I)V

    invoke-virtual {v0, v1}, Ljuh;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final d(F)V
    .locals 3

    iget-object v0, p0, Leuh;->a:Leuj;

    iget-object v0, v0, Leuj;->e:Ljuh;

    new-instance v1, Leug;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p1, v2}, Leug;-><init>(Leuh;FI)V

    invoke-virtual {v0, v1}, Ljuh;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final e(FI)V
    .locals 2

    iget-object p2, p0, Leuh;->a:Leuj;

    iget-object p2, p2, Leuj;->e:Ljuh;

    new-instance v0, Leug;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Leug;-><init>(Leuh;FI)V

    invoke-virtual {p2, v0}, Ljuh;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final f(FJ)V
    .locals 8

    iget-object v0, p0, Leuh;->a:Leuj;

    iget-object v0, v0, Leuj;->e:Ljuh;

    new-instance v7, Lhpi;

    const/4 v6, 0x1

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, Lhpi;-><init>(Leuh;FJI)V

    invoke-virtual {v0, v7}, Ljuh;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final g(F)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Leuh;->a:Leuj;

    iget-object v0, v0, Leuj;->s:Ldfo;

    sget-object v1, Ldfl;->d:Ldfl;

    invoke-virtual {v0, v1}, Ldfo;->f(Ldfn;)V

    :cond_0
    iget-object v0, p0, Leuh;->a:Leuj;

    iget-object v0, v0, Leuj;->t:Lfcv;

    invoke-virtual {v0, p1}, Lfcv;->b(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_1

    iget-object p1, p0, Leuh;->a:Leuj;

    iget-object p1, p1, Leuj;->s:Ldfo;

    invoke-virtual {p1}, Ldfo;->e()V

    :cond_1
    return-void
.end method
