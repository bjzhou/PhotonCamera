.class public final Lcow;
.super Ljava/lang/Object;

# interfaces
.implements Lnoj;


# instance fields
.field final synthetic a:Lkbf;

.field final synthetic b:Lnou;

.field public final synthetic c:Lcox;

.field final synthetic d:I


# direct methods
.method public constructor <init>(Lcox;ILkbf;Lnou;)V
    .locals 0

    iput-object p1, p0, Lcow;->c:Lcox;

    iput p2, p0, Lcow;->d:I

    iput-object p3, p0, Lcow;->a:Lkbf;

    iput-object p4, p0, Lcow;->b:Lnou;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 6

    iget-object v0, p0, Lcow;->c:Lcox;

    iget-object v0, v0, Lcox;->t:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcow;->c:Lcox;

    const/4 v2, 0x0

    iput-object v2, v1, Lcox;->n:Lcpk;

    iget-object v1, p0, Lcow;->b:Lnou;

    invoke-interface {v1}, Lnou;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcox;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->b()Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    invoke-interface {v1, p1}, Lnah;->h(Ljava/lang/Throwable;)Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const/16 v2, 0x18b

    invoke-interface {v1, v2}, Lnah;->G(I)Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const-string v2, "Failed to create capture session."

    invoke-interface {v1, v2}, Lnah;->o(Ljava/lang/String;)V

    iget-object v1, p0, Lcow;->c:Lcox;

    iget-object v1, v1, Lcox;->o:Lcrz;

    sget-object v2, Lcrx;->f:Lcrx;

    invoke-virtual {v1, v2}, Lcrz;->a(Lcrx;)V

    iget-object v1, p0, Lcow;->c:Lcox;

    iget-object v1, v1, Lcox;->r:Ldbb;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x3

    iput v2, v1, Ldbb;->h:I

    :cond_0
    instance-of v1, p1, Ldnt;

    if-eqz v1, :cond_2

    check-cast p1, Ldnt;

    iget-wide v1, p1, Ldnt;->c:J

    iget-object v3, p0, Lcow;->c:Lcox;

    iget-object v3, v3, Lcox;->v:Lcvr;

    invoke-virtual {v3}, Lcvr;->g()J

    move-result-wide v3

    iget-object v5, p1, Ldnt;->a:Lkbo;

    invoke-static {v5}, Lkbo;->e(Lkbo;)Z

    move-result v5

    if-eqz v5, :cond_1

    cmp-long v5, v1, v3

    if-gez v5, :cond_1

    iget-object v1, p0, Lcow;->c:Lcox;

    iget-object v1, v1, Lcox;->v:Lcvr;

    invoke-virtual {v1}, Lcvr;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcow;->c:Lcox;

    iget-object v1, v1, Lcox;->x:Lfvx;

    invoke-virtual {v1}, Lfvx;->a()Lika;

    move-result-object v1

    sget-object v2, Lika;->f:Lika;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcow;->c:Lcox;

    iget-object v1, v1, Lcox;->x:Lfvx;

    invoke-virtual {v1}, Lfvx;->a()Lika;

    move-result-object v1

    sget-object v2, Lika;->t:Lika;

    if-eq v1, v2, :cond_1

    iget-object p1, p0, Lcow;->c:Lcox;

    iget-object v1, p1, Lcox;->i:Ldde;

    iget-object p1, p1, Lcox;->c:Ldbf;

    invoke-virtual {p1}, Ldbf;->d()Lklv;

    move-result-object p1

    invoke-interface {v1, p1}, Ldde;->h(Lklv;)V

    iget-object p1, p0, Lcow;->c:Lcox;

    iget-object p1, p1, Lcox;->b:Ljuh;

    new-instance v1, Lclr;

    const/16 v2, 0xa

    invoke-direct {v1, p0, v2}, Lclr;-><init>(Lcow;I)V

    invoke-virtual {p1, v1}, Ljuh;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcow;->c:Lcox;

    iget-object v1, v1, Lcox;->h:Ldns;

    invoke-interface {v1, p1}, Ldns;->f(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    iget-object p1, p0, Lcow;->a:Lkbf;

    invoke-interface {p1}, Lkbf;->a()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final synthetic b(Ljava/lang/Object;)V
    .locals 5

    check-cast p1, Lcpk;

    iget-object v0, p0, Lcow;->c:Lcox;

    iget-object v0, v0, Lcox;->t:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p1, Lcpk;->t:I

    iget-object v2, p0, Lcow;->c:Lcox;

    iget v3, v2, Lcox;->s:I

    if-eq v1, v3, :cond_0

    sget-object v1, Lcox;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->c()Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const/16 v2, 0x18e

    invoke-interface {v1, v2}, Lnah;->G(I)Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const-string v2, "Capture session %d doesn\'t match expected session %d"

    iget p1, p1, Lcpk;->t:I

    iget-object v3, p0, Lcow;->c:Lcox;

    iget v3, v3, Lcox;->s:I

    invoke-interface {v1, v2, p1, v3}, Lnah;->s(Ljava/lang/String;II)V

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, v2, Lcox;->o:Lcrz;

    iget-object v1, v1, Lcrz;->g:Ljwb;

    check-cast v1, Ljvk;

    iget-object v1, v1, Ljvk;->d:Ljava/lang/Object;

    sget-object v2, Lcrx;->b:Lcrx;

    if-eq v1, v2, :cond_1

    sget-object p1, Lcox;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const/16 v1, 0x18d

    invoke-interface {p1, v1}, Lnah;->G(I)Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const-string v1, "Expecting %s but got %s"

    sget-object v2, Lcrx;->b:Lcrx;

    iget-object v3, p0, Lcow;->c:Lcox;

    iget-object v3, v3, Lcox;->o:Lcrz;

    iget-object v3, v3, Lcrz;->g:Ljwb;

    check-cast v3, Ljvk;

    iget-object v3, v3, Ljvk;->d:Ljava/lang/Object;

    invoke-interface {p1, v1, v2, v3}, Lnah;->z(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :cond_1
    iget v1, p0, Lcow;->d:I

    const/4 v2, 0x7

    const/4 v3, 0x2

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcow;->c:Lcox;

    iget-object v2, v1, Lcox;->w:Ldfa;

    iget-object v1, v1, Lcox;->c:Ldbf;

    invoke-virtual {v1}, Ldbf;->d()Lklv;

    move-result-object v1

    sget-object v4, Lklv;->b:Lklv;

    if-ne v1, v4, :cond_2

    sget-object v1, Lklv;->a:Lklv;

    goto :goto_0

    :cond_2
    sget-object v1, Lklv;->b:Lklv;

    :goto_0
    const/4 v4, 0x3

    invoke-virtual {v2, v1, v3, v4}, Ldfa;->a(Lklv;II)V

    :cond_3
    iget-object v1, p0, Lcow;->c:Lcox;

    iput-object p1, v1, Lcox;->n:Lcpk;

    iget-object p1, v1, Lcox;->n:Lcpk;

    if-eqz p1, :cond_4

    iget-object v1, v1, Lcox;->d:Ljava/util/List;

    iget-object p1, p1, Lcpk;->f:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_4
    iget-object p1, p0, Lcow;->c:Lcox;

    iget-object v1, p1, Lcox;->n:Lcpk;

    iget-object v2, p1, Lcox;->u:Lcuo;

    iput-object v2, v1, Lcpk;->A:Lcuo;

    iget-object p1, p1, Lcox;->d:Ljava/util/List;

    invoke-static {p1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p1

    sget-object v1, Lcot;->c:Lcot;

    invoke-interface {p1, v1}, Lj$/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    iget-object p1, p0, Lcow;->c:Lcox;

    iget-object p1, p1, Lcox;->o:Lcrz;

    sget-object v1, Lcrx;->c:Lcrx;

    invoke-virtual {p1, v1}, Lcrz;->a(Lcrx;)V

    iget-object p1, p0, Lcow;->c:Lcox;

    iget-object p1, p1, Lcox;->g:Lhkj;

    sget-object v1, Lhki;->b:Lhki;

    invoke-virtual {p1, v1}, Lhkh;->h(Ljava/lang/Enum;)V

    iget-object p1, p0, Lcow;->c:Lcox;

    iget-object v1, p1, Lcox;->r:Ldbb;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput v3, v1, Ldbb;->h:I

    iget-object p1, p1, Lcox;->g:Lhkj;

    sget-object v2, Lhki;->a:Lhki;

    sget-object v3, Lhki;->b:Lhki;

    invoke-virtual {p1, v2, v3}, Lhkj;->c(Lhki;Lhki;)I

    move-result p1

    invoke-virtual {v1, p1}, Ldbb;->c(I)V

    iget-object p1, p0, Lcow;->c:Lcox;

    iget-object v1, p1, Lcox;->y:Lbkc;

    invoke-static {v1}, Lcdg;->r(Lbkc;)Z

    move-result v1

    iput-boolean v1, p1, Lcox;->p:Z

    iget-object p1, p0, Lcow;->c:Lcox;

    iget-boolean v1, p1, Lcox;->q:Z

    if-nez v1, :cond_5

    iget-boolean v1, p1, Lcox;->p:Z

    if-eqz v1, :cond_7

    :cond_5
    iget-object p1, p1, Lcox;->o:Lcrz;

    iget-object p1, p1, Lcrz;->i:Ljwb;

    check-cast p1, Ljvk;

    iget-object p1, p1, Ljvk;->d:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcow;->c:Lcox;

    iget-object p1, p1, Lcox;->y:Lbkc;

    invoke-virtual {p1}, Lbkc;->e()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-static {p1}, Lcdg;->f(Landroid/content/Intent;)V

    :cond_6
    iget-object p1, p0, Lcow;->c:Lcox;

    iget-object p1, p1, Lcox;->b:Ljuh;

    new-instance v1, Lclr;

    const/16 v2, 0x9

    invoke-direct {v1, p0, v2}, Lclr;-><init>(Lcow;I)V

    invoke-virtual {p1, v1}, Ljuh;->execute(Ljava/lang/Runnable;)V

    :cond_7
    iget-object p1, p0, Lcow;->a:Lkbf;

    invoke-interface {p1}, Lkbf;->a()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
