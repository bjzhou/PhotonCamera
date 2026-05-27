.class public final Liiy;
.super Ljava/lang/Object;

# interfaces
.implements Lijk;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lhzo;

.field public final c:Ldhi;

.field public final d:Loiw;

.field public final e:Loiw;

.field public final f:Ljuh;

.field public final g:Lkbc;

.field public final h:Lezx;

.field public final i:Lhsl;

.field public j:Lcom/google/android/apps/camera/ui/mars/MarsSwitch;

.field private final k:Lika;

.field private final l:Lgzn;

.field private final m:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lika;Lhzo;Lgzn;Ldhi;Loiw;Loiw;Ljuh;Ljava/util/concurrent/Executor;Lkbc;Lezx;Lhsl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liiy;->a:Landroid/content/Context;

    iput-object p2, p0, Liiy;->k:Lika;

    iput-object p3, p0, Liiy;->b:Lhzo;

    iput-object p4, p0, Liiy;->l:Lgzn;

    iput-object p5, p0, Liiy;->c:Ldhi;

    iput-object p6, p0, Liiy;->e:Loiw;

    iput-object p7, p0, Liiy;->d:Loiw;

    iput-object p8, p0, Liiy;->f:Ljuh;

    iput-object p9, p0, Liiy;->m:Ljava/util/concurrent/Executor;

    iput-object p10, p0, Liiy;->g:Lkbc;

    iput-object p11, p0, Liiy;->h:Lezx;

    iput-object p12, p0, Liiy;->i:Lhsl;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Liiy;->l:Lgzn;

    sget-object v1, Lgzd;->at:Lgzr;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lgzn;->e(Lgzb;Ljava/lang/Object;)V

    iget-object v0, p0, Liiy;->c:Ldhi;

    sget-object v1, Ldho;->bL:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Liiy;->k:Lika;

    sget-object v1, Lika;->h:Lika;

    if-eq v0, v1, :cond_1

    sget-object v1, Lika;->i:Lika;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Liiy;->m:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Liiy;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lhzo;->a(Ljava/util/concurrent/Executor;Landroid/content/Context;)Lnou;

    move-result-object v0

    new-instance v1, Lcmc;

    const/16 v2, 0x14

    invoke-direct {v1, p0, v2}, Lcmc;-><init>(Liiy;I)V

    iget-object v2, p0, Liiy;->m:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method
