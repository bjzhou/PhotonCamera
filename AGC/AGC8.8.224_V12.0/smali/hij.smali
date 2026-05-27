.class public final Lhij;
.super Ljava/lang/Object;

# interfaces
.implements Lhil;
.implements Lgen;


# static fields
.field private static final h:Lnak;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lgeh;

.field public final c:Ljuh;

.field public final d:Lell;

.field public e:Z

.field public f:Z

.field public g:Lkad;

.field private final i:Lgzm;

.field private final j:Lgzn;

.field private final k:Ljvs;

.field private l:Lkad;

.field private m:Lkad;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/speechenhancer/ui/SpeechEnhancerSimpleTooltipController"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lhij;->h:Lnak;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lgeh;Ljuh;Lell;Lgzm;Lgzn;Ljvs;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lhij;->e:Z

    iput-boolean v0, p0, Lhij;->f:Z

    iput-object p1, p0, Lhij;->a:Landroid/content/Context;

    iput-object p2, p0, Lhij;->b:Lgeh;

    iput-object p3, p0, Lhij;->c:Ljuh;

    iput-object p4, p0, Lhij;->d:Lell;

    iput-object p5, p0, Lhij;->i:Lgzm;

    iput-object p6, p0, Lhij;->j:Lgzn;

    iput-object p7, p0, Lhij;->k:Ljvs;

    return-void
.end method

.method private final l()Z
    .locals 2

    iget-object v0, p0, Lhij;->i:Lgzm;

    sget-object v1, Lgzd;->I:Lgzr;

    invoke-interface {v0, v1}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lhij;->e:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lhij;->m:Lkad;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkad;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lhij;->m:Lkad;

    :cond_0
    return-void
.end method

.method public final synthetic b()V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 3

    sget-object v0, Lklv;->a:Lklv;

    iget-object v1, p0, Lhij;->k:Ljvs;

    check-cast v1, Ljvk;

    iget-object v1, v1, Ljvk;->d:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lklv;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lhij;->b:Lgeh;

    sget-object v1, Lgec;->y:Lgec;

    invoke-interface {v0, v1}, Lgeh;->A(Lgec;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lhij;->b:Lgeh;

    invoke-interface {v0}, Lgeh;->G()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lhij;->i:Lgzm;

    sget-object v1, Lgzd;->I:Lgzr;

    invoke-interface {v0, v1}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lhij;->f:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lhij;->b:Lgeh;

    sget-object v1, Lgec;->y:Lgec;

    sget-object v2, Lgej;->Y:Lgej;

    invoke-interface {v0, v1, v2}, Lgeh;->d(Lgec;Lgej;)Lmqp;

    move-result-object v0

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v0, Lhij;->h:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "Anchor view is absent!"

    const/16 v2, 0xe4b

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return-void

    :cond_1
    iget-object v1, p0, Lhij;->a:Landroid/content/Context;

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

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Lhfi;-><init>(Lhij;I)V

    iget-object v1, p0, Lhij;->c:Ljuh;

    invoke-interface {v2, v0, v1}, Liga;->g(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    const/16 v0, 0x12c

    iput v0, v2, Lifx;->d:I

    invoke-interface {v2}, Liga;->l()V

    const/16 v0, 0x1388

    iput v0, v2, Lifx;->e:I

    const/4 v0, 0x0

    iput-boolean v0, v2, Lifx;->f:Z

    iput-boolean v0, v2, Lifx;->h:Z

    iget-object v0, p0, Lhij;->d:Lell;

    iput-object v0, v2, Lifx;->i:Lell;

    const/4 v0, 0x4

    iput v0, v2, Lifx;->m:I

    invoke-interface {v2}, Liga;->a()Lkad;

    move-result-object v0

    iput-object v0, p0, Lhij;->m:Lkad;

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

    iget-object v0, p0, Lhij;->j:Lgzn;

    sget-object v1, Lgzd;->I:Lgzr;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lgzn;->e(Lgzb;Ljava/lang/Object;)V

    return-void
.end method

.method public final f()V
    .locals 0

    return-void
.end method

.method public final g()V
    .locals 3

    iget-object v0, p0, Lhij;->b:Lgeh;

    invoke-interface {v0, p0}, Lgeh;->g(Lgen;)V

    invoke-direct {p0}, Lhij;->l()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lhij;->k:Ljvs;

    new-instance v1, Lguy;

    const/16 v2, 0x13

    invoke-direct {v1, p0, v2}, Lguy;-><init>(Lhij;I)V

    iget-object v2, p0, Lhij;->c:Ljuh;

    invoke-interface {v0, v1, v2}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v0

    iput-object v0, p0, Lhij;->l:Lkad;

    :cond_0
    return-void
.end method

.method public final h()V
    .locals 2

    iget-object v0, p0, Lhij;->b:Lgeh;

    invoke-interface {v0, p0}, Lgeh;->n(Lgen;)V

    iget-object v0, p0, Lhij;->l:Lkad;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkad;->close()V

    iput-object v1, p0, Lhij;->l:Lkad;

    :cond_0
    iget-object v0, p0, Lhij;->g:Lkad;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lkad;->close()V

    iput-object v1, p0, Lhij;->g:Lkad;

    :cond_1
    return-void
.end method

.method public final i()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final j()Z
    .locals 2

    sget-object v0, Lklv;->a:Lklv;

    iget-object v1, p0, Lhij;->k:Ljvs;

    check-cast v1, Ljvk;

    iget-object v1, v1, Ljvk;->d:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lklv;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhij;->b:Lgeh;

    invoke-interface {v0}, Lgeh;->G()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lhij;->l()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final k()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
