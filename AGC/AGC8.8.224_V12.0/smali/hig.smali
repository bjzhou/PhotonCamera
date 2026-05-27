.class public final Lhig;
.super Ljava/lang/Object;

# interfaces
.implements Lhil;
.implements Lgen;


# static fields
.field private static final h:Lnak;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljuh;

.field public final c:Lell;

.field public final d:Lgeh;

.field public e:Z

.field public f:Z

.field public g:Lkad;

.field private final i:Ljvs;

.field private final j:Ljwb;

.field private final k:Lgzm;

.field private final l:Lgzn;

.field private final m:Lcrm;

.field private final n:Lhii;

.field private o:Lkad;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/speechenhancer/ui/SpeechEnhancerFaceDrivenTooltipController"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lhig;->h:Lnak;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljuh;Lell;Lgeh;Lgzm;Lgzn;Ljvs;Ljwb;Lcrm;Lhii;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lhig;->e:Z

    iput-boolean v0, p0, Lhig;->f:Z

    iput-object p1, p0, Lhig;->a:Landroid/content/Context;

    iput-object p2, p0, Lhig;->b:Ljuh;

    iput-object p3, p0, Lhig;->c:Lell;

    iput-object p4, p0, Lhig;->d:Lgeh;

    iput-object p5, p0, Lhig;->k:Lgzm;

    iput-object p6, p0, Lhig;->l:Lgzn;

    iput-object p7, p0, Lhig;->i:Ljvs;

    iput-object p8, p0, Lhig;->j:Ljwb;

    iput-object p9, p0, Lhig;->m:Lcrm;

    iput-object p10, p0, Lhig;->n:Lhii;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lhig;->o:Lkad;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkad;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lhig;->o:Lkad;

    :cond_0
    return-void
.end method

.method public final synthetic b()V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 3

    sget-object v0, Lklv;->b:Lklv;

    iget-object v1, p0, Lhig;->i:Ljvs;

    check-cast v1, Ljvk;

    iget-object v1, v1, Ljvk;->d:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lklv;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lhig;->d:Lgeh;

    sget-object v1, Lgec;->x:Lgec;

    invoke-interface {v0, v1}, Lgeh;->A(Lgec;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lhig;->d:Lgeh;

    invoke-interface {v0}, Lgeh;->G()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lhig;->k:Lgzm;

    sget-object v1, Lgzd;->J:Lgzr;

    invoke-interface {v0, v1}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lhig;->f:Z

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lhig;->j:Ljwb;

    invoke-interface {v0}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lhig;->n:Lhii;

    iget-object v1, p0, Lhig;->d:Lgeh;

    invoke-virtual {v0, v1}, Lgea;->m(Lgeh;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lhig;->m:Lcrm;

    invoke-virtual {v0}, Ljwh;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgyt;

    sget-object v1, Lgyt;->a:Lgyt;

    invoke-virtual {v0, v1}, Lgyt;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lhig;->d:Lgeh;

    sget-object v1, Lgec;->x:Lgec;

    sget-object v2, Lgej;->Y:Lgej;

    invoke-interface {v0, v1, v2}, Lgeh;->d(Lgec;Lgej;)Lmqp;

    move-result-object v0

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v0, Lhig;->h:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "Anchor view is absent!"

    const/16 v2, 0xe46

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return-void

    :cond_1
    iget-object v1, p0, Lhig;->a:Landroid/content/Context;

    const v2, 0x7f14045e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lifx;

    invoke-direct {v2, v1}, Lifx;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v2, v0}, Lifx;->q(Landroid/view/View;)V

    invoke-interface {v2}, Lify;->i()V

    invoke-interface {v2}, Lifz;->k()V

    new-instance v0, Lhfi;

    const/16 v1, 0xf

    invoke-direct {v0, p0, v1}, Lhfi;-><init>(Lhig;I)V

    iget-object v1, p0, Lhig;->b:Ljuh;

    invoke-interface {v2, v0, v1}, Liga;->g(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    const/16 v0, 0x12c

    iput v0, v2, Lifx;->d:I

    invoke-interface {v2}, Liga;->l()V

    const/16 v0, 0x1388

    iput v0, v2, Lifx;->e:I

    const/4 v0, 0x0

    iput-boolean v0, v2, Lifx;->f:Z

    iput-boolean v0, v2, Lifx;->h:Z

    invoke-interface {v2}, Liga;->p()V

    iget-object v0, p0, Lhig;->c:Lell;

    iput-object v0, v2, Lifx;->i:Lell;

    const/4 v0, 0x4

    iput v0, v2, Lifx;->m:I

    invoke-interface {v2}, Liga;->a()Lkad;

    move-result-object v0

    iput-object v0, p0, Lhig;->o:Lkad;

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public final synthetic d()V
    .locals 0

    return-void
.end method

.method public final e()V
    .locals 3

    iget-object v0, p0, Lhig;->l:Lgzn;

    sget-object v1, Lgzd;->J:Lgzr;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lgzn;->e(Lgzb;Ljava/lang/Object;)V

    return-void
.end method

.method public final f()V
    .locals 3

    iget-object v0, p0, Lhig;->b:Ljuh;

    new-instance v1, Lhfi;

    const/16 v2, 0xe

    invoke-direct {v1, p0, v2}, Lhfi;-><init>(Lhig;I)V

    invoke-virtual {v0, v1}, Ljuh;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Lhig;->d:Lgeh;

    invoke-interface {v0, p0}, Lgeh;->g(Lgen;)V

    return-void
.end method

.method public final h()V
    .locals 1

    iget-object v0, p0, Lhig;->d:Lgeh;

    invoke-interface {v0, p0}, Lgeh;->n(Lgen;)V

    iget-object v0, p0, Lhig;->g:Lkad;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkad;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lhig;->g:Lkad;

    :cond_0
    return-void
.end method

.method public final i()Z
    .locals 1

    invoke-virtual {p0}, Lhig;->j()Z

    move-result v0

    return v0
.end method

.method public final j()Z
    .locals 2

    sget-object v0, Lklv;->b:Lklv;

    iget-object v1, p0, Lhig;->i:Ljvs;

    check-cast v1, Ljvk;

    iget-object v1, v1, Ljvk;->d:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lklv;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhig;->d:Lgeh;

    invoke-interface {v0}, Lgeh;->G()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lhig;->k:Lgzm;

    sget-object v1, Lgzd;->J:Lgzr;

    invoke-interface {v0, v1}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lhig;->e:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lhig;->j:Ljwb;

    invoke-interface {v0}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhig;->m:Lcrm;

    invoke-virtual {v0}, Ljwh;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgyt;

    sget-object v1, Lgyt;->a:Lgyt;

    invoke-virtual {v0, v1}, Lgyt;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public final k()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
