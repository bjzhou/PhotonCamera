.class public final Lcci;
.super Ljava/lang/Object;

# interfaces
.implements Lcbz;
.implements Lkai;


# instance fields
.field public final a:Ldww;

.field public b:Likz;

.field public c:Likz;

.field public d:Lnph;

.field private final e:Ljuh;

.field private final f:Ljuf;

.field private volatile g:Z

.field private final h:Ljub;


# direct methods
.method public constructor <init>(Ljuh;Ldww;Ljvs;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljuf;

    invoke-direct {v0}, Ljuf;-><init>()V

    iput-object v0, p0, Lcci;->f:Ljuf;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcci;->g:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcci;->b:Likz;

    iput-object v1, p0, Lcci;->c:Likz;

    new-instance v1, Lcch;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcch;-><init>(Lcci;I)V

    iput-object v1, p0, Lcci;->h:Ljub;

    iput-object p1, p0, Lcci;->e:Ljuh;

    iput-object p2, p0, Lcci;->a:Ldww;

    invoke-interface {p3, p0, p1}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljuf;->d(Lkad;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcci;->g:Z

    return-void
.end method

.method public final bridge synthetic bn(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Lgxb;

    iget-boolean v0, p0, Lcci;->g:Z

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcci;->b:Likz;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcci;->c:Likz;

    if-nez v0, :cond_1

    iget-object v0, p1, Lgxb;->b:Ljava/lang/Object;

    check-cast v0, Lftt;

    iget-object v0, v0, Lftt;->b:Lgry;

    sget-object v1, Lgry;->b:Lgry;

    if-eq v0, v1, :cond_1

    iget-object v0, p1, Lgxb;->a:Ljava/lang/Object;

    check-cast v0, Lftt;

    iget-object v0, v0, Lftt;->b:Lgry;

    sget-object v1, Lgry;->b:Lgry;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcci;->a:Ldww;

    invoke-interface {v0}, Ldww;->B()Likz;

    move-result-object v0

    iput-object v0, p0, Lcci;->b:Likz;

    new-instance v1, Lcbp;

    const/4 v2, 0x7

    invoke-direct {v1, p0, v2}, Lcbp;-><init>(Lcci;I)V

    invoke-interface {v0, v1}, Likz;->b(Liky;)V

    iget-object v0, p0, Lcci;->b:Likz;

    if-eqz v0, :cond_1

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v0

    iput-object v0, p0, Lcci;->d:Lnph;

    iget-object v0, p0, Lcci;->b:Likz;

    invoke-interface {v0}, Likz;->a()Lnou;

    move-result-object v0

    iget-object v1, p0, Lcci;->d:Lnph;

    iget-object v2, p0, Lcci;->h:Ljub;

    iget-object v3, p0, Lcci;->e:Ljuh;

    invoke-static {v0, v1, v2, v3}, Ljvd;->u(Lnou;Lnou;Ljub;Ljava/util/concurrent/Executor;)V

    :cond_1
    iget-object v0, p0, Lcci;->d:Lnph;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lgxb;->b:Ljava/lang/Object;

    check-cast v0, Lftt;

    iget-object v0, v0, Lftt;->b:Lgry;

    sget-object v1, Lgry;->b:Lgry;

    if-ne v0, v1, :cond_4

    iget-object v0, p1, Lgxb;->a:Ljava/lang/Object;

    check-cast v0, Lftt;

    iget-object v0, v0, Lftt;->b:Lgry;

    invoke-virtual {v0}, Lgry;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p1, p1, Lgxb;->a:Ljava/lang/Object;

    check-cast p1, Lftt;

    iget-object p1, p1, Lftt;->b:Lgry;

    sget-object v0, Lgry;->c:Lgry;

    const/4 v1, 0x1

    if-eq p1, v0, :cond_3

    sget-object v0, Lgry;->e:Lgry;

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    :goto_0
    iget-object p1, p0, Lcci;->d:Lnph;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnph;->e(Ljava/lang/Object;)Z

    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method public final c(Lhrc;)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcci;->g:Z

    return-void
.end method

.method public final close()V
    .locals 1

    iget-object v0, p0, Lcci;->f:Ljuf;

    invoke-virtual {v0}, Ljuf;->close()V

    return-void
.end method
