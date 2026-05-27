.class public final Lhrq;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final e:Ldol;

.field public final f:Lmqp;

.field public final g:Lcdi;

.field private final h:Logd;

.field private final i:Licj;

.field private final j:I

.field private final k:I

.field private final l:Landroidx/wear/ambient/AmbientDelegate;


# direct methods
.method public constructor <init>(Lcdi;Landroidx/wear/ambient/AmbientDelegate;Landroid/content/Context;Ldol;Logd;Lmqp;Ljuh;Licj;[B[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p9, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p10, 0x0

    invoke-direct {p9, p10}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p9, p0, Lhrq;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p9, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-direct {p9, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p9, p0, Lhrq;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p9, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p9, p10}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p9, p0, Lhrq;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p9, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p9, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p9, p0, Lhrq;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lhrq;->g:Lcdi;

    iput-object p2, p0, Lhrq;->l:Landroidx/wear/ambient/AmbientDelegate;

    iput-object p4, p0, Lhrq;->e:Ldol;

    iput-object p5, p0, Lhrq;->h:Logd;

    iput-object p6, p0, Lhrq;->f:Lmqp;

    iput-object p8, p0, Lhrq;->i:Licj;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p5, 0x7f0c001c

    invoke-virtual {p2, p5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lhrq;->j:I

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0c0021

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lhrq;->k:I

    new-array p2, v0, [Ljvs;

    invoke-interface {p4}, Ldol;->b()Ljvs;

    move-result-object p3

    aput-object p3, p2, p10

    invoke-static {p2}, Llyh;->E([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p6}, Lmqp;->g()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p6}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lire;

    invoke-interface {p3}, Lire;->a()Ljvs;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p1}, Lcdi;->i()Ljuf;

    move-result-object p1

    invoke-static {p2}, Ljvw;->a(Ljava/util/Collection;)Ljvs;

    move-result-object p2

    new-instance p3, Lhml;

    const/16 p4, 0xb

    invoke-direct {p3, p0, p4}, Lhml;-><init>(Lhrq;I)V

    invoke-interface {p2, p3, p7}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljuf;->d(Lkad;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    iget-object v0, p0, Lhrq;->h:Logd;

    invoke-interface {v0}, Logd;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldww;

    invoke-interface {v0}, Ldww;->n()Ljvs;

    move-result-object v0

    check-cast v0, Ljvk;

    iget-object v0, v0, Ljvk;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lhrq;->j:I

    iget v1, p0, Lhrq;->k:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    iget v0, p0, Lhrq;->j:I

    :goto_0
    return v0
.end method

.method public final b(Z)V
    .locals 2

    iget-object v0, p0, Lhrq;->f:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhrq;->f:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lire;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lire;->d(ZZ)V

    :cond_0
    iget-object v0, p0, Lhrq;->e:Ldol;

    invoke-interface {v0, p1}, Ldol;->j(Z)V

    invoke-virtual {p0}, Lhrq;->c()V

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lhrq;->i:Licj;

    iget-object v1, v0, Licj;->c:Lell;

    iget-object v0, v0, Licj;->h:Licf;

    invoke-interface {v1, v0}, Lell;->g(Lelk;)V

    return-void
.end method

.method public final d(Z)V
    .locals 1

    iget-object v0, p0, Lhrq;->f:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhrq;->f:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lire;

    invoke-interface {v0, p1}, Lire;->h(Z)V

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Lhrq;->f:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhrq;->f:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lire;

    invoke-interface {v0, v1, v1}, Lire;->i(ZZ)V

    :cond_0
    iget-object v0, p0, Lhrq;->e:Ldol;

    invoke-interface {v0, v1, v1}, Ldol;->p(ZZ)V

    return-void
.end method

.method public final f()Lccv;
    .locals 5

    iget-object v0, p0, Lhrq;->f:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhrq;->f:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lire;

    invoke-interface {v0}, Lire;->c()Ljvs;

    move-result-object v2

    check-cast v2, Ljvk;

    iget-object v2, v2, Ljvk;->d:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    xor-int/2addr v2, v1

    invoke-interface {v0, v1, v2}, Lire;->i(ZZ)V

    invoke-virtual {p0}, Lhrq;->a()I

    move-result v3

    invoke-interface {v0, v3}, Lire;->j(I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    iget-object v0, p0, Lhrq;->e:Ldol;

    invoke-interface {v0}, Ldol;->c()Ljvs;

    move-result-object v0

    check-cast v0, Ljvk;

    iget-object v0, v0, Ljvk;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/2addr v0, v1

    iget-object v3, p0, Lhrq;->l:Landroidx/wear/ambient/AmbientDelegate;

    iget-object v4, v3, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    if-eqz v4, :cond_1

    check-cast v4, Lccv;

    invoke-virtual {v4}, Lccv;->close()V

    const/4 v4, 0x0

    iput-object v4, v3, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    :cond_1
    and-int/2addr v0, v2

    if-eqz v0, :cond_2

    iget-object v2, v3, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ldol;->m(Z)V

    :cond_2
    iget-object v2, v3, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    invoke-interface {v2, v1, v0}, Ldol;->p(ZZ)V

    iget-object v0, v3, Landroidx/wear/ambient/AmbientDelegate;->c:Ljava/lang/Object;

    check-cast v0, Lccw;

    invoke-virtual {v0}, Lccw;->a()Lccv;

    move-result-object v0

    iput-object v0, v3, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    iget-object v0, v3, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    iget-object v1, p0, Lhrq;->e:Ldol;

    invoke-virtual {p0}, Lhrq;->a()I

    move-result v2

    invoke-interface {v1, v2}, Ldol;->q(I)V

    check-cast v0, Lccv;

    return-object v0
.end method
