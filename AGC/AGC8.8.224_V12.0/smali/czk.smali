.class public final Lczk;
.super Ljava/lang/Object;

# interfaces
.implements Lgen;


# static fields
.field private static final e:Lnak;


# instance fields
.field public final a:Lgeh;

.field public final b:Lgzn;

.field public final c:Lgzm;

.field public d:I

.field private final f:Lell;

.field private final g:Landroid/content/Context;

.field private h:Lkad;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/camcorder/ui/hdrvideo/HdrTooltipController"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lczk;->e:Lnak;

    return-void
.end method

.method public constructor <init>(Lgeh;Lell;Landroid/content/Context;Lgzm;Lgzn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lczk;->a:Lgeh;

    iput-object p2, p0, Lczk;->f:Lell;

    iput-object p3, p0, Lczk;->g:Landroid/content/Context;

    iput-object p4, p0, Lczk;->c:Lgzm;

    iput-object p5, p0, Lczk;->b:Lgzn;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lczk;->h:Lkad;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkad;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lczk;->h:Lkad;

    :cond_0
    return-void
.end method

.method public final synthetic b()V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 4

    iget v0, p0, Lczk;->d:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lczk;->c:Lgzm;

    sget-object v1, Lgzd;->O:Lgzr;

    invoke-interface {v0, v1}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lczk;->a:Lgeh;

    sget-object v1, Lgec;->t:Lgec;

    sget-object v2, Lgej;->I:Lgej;

    invoke-interface {v0, v1, v2}, Lgeh;->d(Lgec;Lgej;)Lmqp;

    move-result-object v0

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v0, Lczk;->e:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "Attempting to show HDR video tooltip but anchor view is not present"

    const/16 v2, 0x31a

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return-void

    :cond_0
    new-instance v1, Lifx;

    iget-object v2, p0, Lczk;->g:Landroid/content/Context;

    const v3, 0x7f1401fe

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lifx;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Lifx;->r(Landroid/view/View;)V

    invoke-interface {v1}, Lify;->i()V

    invoke-interface {v1}, Lifz;->k()V

    const/16 v0, 0x12c

    iput v0, v1, Lifx;->d:I

    invoke-interface {v1}, Liga;->l()V

    const/16 v0, 0x1388

    iput v0, v1, Lifx;->e:I

    const/4 v0, 0x0

    iput-boolean v0, v1, Lifx;->f:Z

    iput-boolean v0, v1, Lifx;->h:Z

    invoke-interface {v1}, Liga;->p()V

    iget-object v0, p0, Lczk;->f:Lell;

    iput-object v0, v1, Lifx;->i:Lell;

    const/4 v0, 0x4

    iput v0, v1, Lifx;->m:I

    new-instance v0, Lctw;

    const/16 v2, 0x12

    invoke-direct {v0, p0, v2}, Lctw;-><init>(Lczk;I)V

    iget-object v2, p0, Lczk;->g:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Liga;->g(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    invoke-interface {v1}, Liga;->a()Lkad;

    move-result-object v0

    iput-object v0, p0, Lczk;->h:Lkad;

    :cond_1
    return-void
.end method

.method public final synthetic d()V
    .locals 0

    return-void
.end method
