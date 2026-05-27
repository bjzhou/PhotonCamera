.class public final Lgap;
.super Ljava/lang/Object;

# interfaces
.implements Lgab;


# instance fields
.field public final a:Lnou;

.field public final b:Lkaq;

.field public final c:Ljvx;

.field public final d:Ljvk;

.field public final e:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final f:Lgzm;

.field public final g:Lcvr;

.field private final h:Lfvd;

.field private final i:Lccn;

.field private final j:Lkbc;


# direct methods
.method public constructor <init>(Lfvd;Lnou;Lkap;Lccn;Lgzm;Logd;ZLkbc;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljvk;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v2}, Ljvk;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lgap;->d:Ljvk;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lgap;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Lgap;->h:Lfvd;

    const-string v0, "PictureTakerImpl"

    invoke-interface {p3, v0}, Lkap;->a(Ljava/lang/String;)Lkaq;

    move-result-object p3

    iput-object p3, p0, Lgap;->b:Lkaq;

    iput-object p4, p0, Lgap;->i:Lccn;

    iput-object p2, p0, Lgap;->a:Lnou;

    iput-object p5, p0, Lgap;->f:Lgzm;

    iput-object p8, p0, Lgap;->j:Lkbc;

    invoke-static {p6}, Lcvr;->M(Logd;)Lcvr;

    move-result-object p3

    iput-object p3, p0, Lgap;->g:Lcvr;

    new-instance p3, Ljvx;

    new-instance p4, Llpo;

    const/4 p5, 0x1

    invoke-direct {p4, p0, p1, p7, p5}, Llpo;-><init>(Lgap;Lfvd;ZI)V

    invoke-direct {p3, p4}, Ljvx;-><init>(Lmrl;)V

    iput-object p3, p0, Lgap;->c:Ljvx;

    new-instance p1, Lfzr;

    const/16 p3, 0x8

    invoke-direct {p1, p0, p3}, Lfzr;-><init>(Lgap;I)V

    sget-object p3, Lnnv;->a:Lnnv;

    invoke-interface {p2, p1, p3}, Lnou;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public final a()Ljvs;
    .locals 1

    iget-object v0, p0, Lgap;->c:Ljvx;

    invoke-static {v0}, Ljvm;->c(Ljvs;)Ljvs;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljvs;
    .locals 1

    iget-object v0, p0, Lgap;->d:Ljvk;

    return-object v0
.end method

.method public final c(Lgkr;)Lnou;
    .locals 11

    iget-object v0, p0, Lgap;->h:Lfvd;

    invoke-virtual {v0}, Lfvd;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgap;->b:Lkaq;

    const-string v1, "Take picture was invoked, but the executor is shutting down!"

    invoke-interface {v0, v1}, Lkaq;->d(Ljava/lang/String;)V

    iget-object v0, p1, Lgkr;->b:Ljava/lang/Object;

    invoke-interface {v0}, Lfzz;->f()V

    iget-object p1, p1, Lgkr;->c:Ljava/lang/Object;

    new-instance v0, Lkdf;

    const-string v1, "Invoked when executor shutting down."

    invoke-direct {v0, v1}, Lkdf;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lgxl;->w(Ljava/lang/Throwable;)V

    invoke-static {}, Lnsy;->z()Lnou;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v0

    iget-object v1, p0, Lgap;->d:Ljvk;

    iget-object v2, p0, Lgap;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljvk;->bn(Ljava/lang/Object;)V

    iget-object v1, p0, Lgap;->c:Ljvx;

    invoke-virtual {v1}, Ljvx;->c()V

    new-instance v4, Lgan;

    invoke-direct {v4, p0, v0}, Lgan;-><init>(Lgap;Lnph;)V

    iget-object v1, p0, Lgap;->h:Lfvd;

    new-instance v10, Lgao;

    iget-object v6, p0, Lgap;->i:Lccn;

    iget-object v7, p0, Lgap;->j:Lkbc;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v10

    move-object v3, p0

    move-object v5, p1

    invoke-direct/range {v2 .. v9}, Lgao;-><init>(Lgap;Lgal;Lgkr;Lccn;Lkbc;[B[B)V

    invoke-virtual {v1, v10}, Lfvd;->b(Lfvb;)V

    return-object v0
.end method
