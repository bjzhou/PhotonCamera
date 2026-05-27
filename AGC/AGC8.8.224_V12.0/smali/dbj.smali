.class public final Ldbj;
.super Ljava/lang/Object;

# interfaces
.implements Ldbz;


# instance fields
.field public final a:Lcvr;

.field private final b:Ljuh;

.field private final c:Ldde;

.field private final d:Ldby;

.field private final e:Lfbz;

.field private final f:Lkaq;

.field private final g:Ldbt;


# direct methods
.method public constructor <init>(Ldby;Ljuh;Ldde;Lcvr;Lfbz;Lkaq;Ldbt;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldbj;->d:Ldby;

    iput-object p2, p0, Ldbj;->b:Ljuh;

    iput-object p3, p0, Ldbj;->c:Ldde;

    iput-object p4, p0, Ldbj;->a:Lcvr;

    iput-object p5, p0, Ldbj;->e:Lfbz;

    iput-object p7, p0, Ldbj;->g:Ldbt;

    const-string p1, "CamUnavailableHndlr"

    invoke-interface {p6, p1}, Lkaq;->a(Ljava/lang/String;)Lkaq;

    move-result-object p1

    iput-object p1, p0, Ldbj;->f:Lkaq;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Ldbj;->c:Ldde;

    invoke-interface {v0}, Ldde;->i()V

    return-void
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Ldbj;->c:Ldde;

    invoke-interface {v0}, Ldde;->j()V

    iget-object v0, p0, Ldbj;->c:Ldde;

    invoke-interface {v0}, Ldde;->c()Lnou;

    move-result-object v0

    new-instance v1, Lcmc;

    const/16 v2, 0x8

    invoke-direct {v1, p0, v2}, Lcmc;-><init>(Ldbj;I)V

    iget-object v2, p0, Ldbj;->b:Ljuh;

    invoke-static {v0, v1, v2}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Ldbj;->c:Ldde;

    invoke-interface {v0}, Ldde;->k()V

    iget-object v0, p0, Ldbj;->c:Ldde;

    invoke-interface {v0}, Ldde;->d()Lnou;

    move-result-object v0

    new-instance v1, Lcmc;

    const/4 v2, 0x7

    invoke-direct {v1, p0, v2}, Lcmc;-><init>(Ldbj;I)V

    iget-object v2, p0, Ldbj;->b:Ljuh;

    invoke-static {v0, v1, v2}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final d(Ldcx;III)V
    .locals 7

    iget-object v0, p0, Ldbj;->f:Lkaq;

    invoke-virtual {p1}, Ldcx;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkaq;->b(Ljava/lang/String;)V

    iget-object v0, p0, Ldbj;->a:Lcvr;

    invoke-virtual {v0}, Lcvr;->i()Z

    move-result v0

    invoke-static {p1, p2, p3, v0}, Lbze;->ad(Ldcx;IIZ)I

    move-result v3

    const/4 p1, 0x4

    if-ne v3, p1, :cond_0

    iget-object p1, p0, Ldbj;->d:Ldby;

    invoke-interface {p1, p4}, Ldby;->a(I)Leg;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    if-ne v3, p1, :cond_1

    iget-object p1, p0, Ldbj;->d:Ldby;

    invoke-interface {p1, p4}, Ldby;->c(I)Leg;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Ldbj;->d:Ldby;

    invoke-interface {p1, p4}, Ldby;->b(I)Leg;

    move-result-object p1

    :goto_0
    iget-object p2, p0, Ldbj;->g:Ldbt;

    invoke-virtual {p2, p1}, Ldbt;->b(Leg;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Ldbj;->f:Lkaq;

    invoke-static {p4}, Ldcb;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {v3}, Lmoz;->L(I)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Showing hardware help dialog for unavailability of any cameras due to reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " at stage "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lkaq;->b(Ljava/lang/String;)V

    iget-object v1, p0, Ldbj;->e:Lfbz;

    const/4 v2, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v4, p4

    invoke-interface/range {v1 .. v6}, Lfbz;->W(IIILklv;I)V

    :cond_2
    return-void
.end method
