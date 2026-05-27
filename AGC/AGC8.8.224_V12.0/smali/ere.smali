.class public final Lere;
.super Ljava/lang/Object;

# interfaces
.implements Lcik;


# instance fields
.field private final a:Ljux;

.field private final b:Loiw;

.field private final c:Loiw;

.field private final d:Loiw;

.field private final e:Loiw;

.field private final f:Loiw;

.field private final g:Loiw;

.field private final h:Loiw;

.field private final i:Ljava/util/concurrent/Executor;

.field private final j:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final k:Lkbc;

.field private final l:Lkaq;

.field private m:Lnou;

.field private final n:Lkgd;


# direct methods
.method public constructor <init>(Ljux;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Ljava/util/concurrent/Executor;Lkap;Lkgd;Lkbc;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lere;->a:Ljux;

    iput-object p2, p0, Lere;->b:Loiw;

    iput-object p3, p0, Lere;->c:Loiw;

    iput-object p4, p0, Lere;->d:Loiw;

    iput-object p6, p0, Lere;->f:Loiw;

    iput-object p5, p0, Lere;->e:Loiw;

    iput-object p7, p0, Lere;->g:Loiw;

    iput-object p8, p0, Lere;->h:Loiw;

    iput-object p9, p0, Lere;->i:Ljava/util/concurrent/Executor;

    iput-object p11, p0, Lere;->n:Lkgd;

    iput-object p12, p0, Lere;->k:Lkbc;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lere;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string p1, "ActivityStartup"

    invoke-interface {p10, p1}, Lkap;->a(Ljava/lang/String;)Lkaq;

    move-result-object p1

    iput-object p1, p0, Lere;->l:Lkaq;

    return-void
.end method


# virtual methods
.method public final bl()Lnou;
    .locals 3

    iget-object v0, p0, Lere;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lere;->m:Lnou;

    return-object v0

    :cond_0
    iget-object v0, p0, Lere;->k:Lkbc;

    const-string v1, "ActivityStartup"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lere;->a:Ljux;

    invoke-virtual {v0}, Ljux;->a()V

    iget-object v0, p0, Lere;->e:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    iget-object v0, p0, Lere;->i:Ljava/util/concurrent/Executor;

    invoke-static {v0}, Lcij;->a(Ljava/util/concurrent/Executor;)Lcij;

    move-result-object v0

    iget-object v1, p0, Lere;->n:Lkgd;

    iput-object v1, v0, Lcij;->d:Lkgd;

    iget-object v1, p0, Lere;->k:Lkbc;

    iput-object v1, v0, Lcij;->b:Lkbc;

    iget-object v1, p0, Lere;->l:Lkaq;

    iput-object v1, v0, Lcij;->c:Lkaq;

    iget-object v1, p0, Lere;->b:Loiw;

    const-string v2, "ErrorHandlerStartup"

    invoke-virtual {v0, v1, v2}, Lcij;->c(Loiw;Ljava/lang/String;)V

    iget-object v1, p0, Lere;->c:Loiw;

    const-string v2, "WaitForHalUpdate"

    invoke-virtual {v0, v1, v2}, Lcij;->c(Loiw;Ljava/lang/String;)V

    iget-object v1, p0, Lere;->e:Loiw;

    const-string v2, "PermissionsStartup"

    invoke-virtual {v0, v1, v2}, Lcij;->c(Loiw;Ljava/lang/String;)V

    iget-object v1, p0, Lere;->d:Loiw;

    const-string v2, "WaitForCameraDevices"

    invoke-virtual {v0, v1, v2}, Lcij;->c(Loiw;Ljava/lang/String;)V

    iget-object v1, p0, Lere;->f:Loiw;

    const-string v2, "CameraPolicyChecker"

    invoke-virtual {v0, v1, v2}, Lcij;->c(Loiw;Ljava/lang/String;)V

    iget-object v1, p0, Lere;->g:Loiw;

    const-string v2, "CriticalPath"

    invoke-virtual {v0, v1, v2}, Lcij;->c(Loiw;Ljava/lang/String;)V

    iget-object v1, p0, Lere;->h:Loiw;

    invoke-static {v1}, Lcvr;->w(Loiw;)Loiw;

    move-result-object v1

    const-string v2, "ActivityBehaviors"

    invoke-virtual {v0, v1, v2}, Lcij;->d(Loiw;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcij;->b()Lnou;

    move-result-object v0

    iput-object v0, p0, Lere;->m:Lnou;

    iget-object v0, p0, Lere;->k:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    iget-object v0, p0, Lere;->m:Lnou;

    return-object v0
.end method

.method public final synthetic c()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Ldez;->d(Lcik;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
