.class public final Lerh;
.super Ljava/lang/Object;

# interfaces
.implements Lcik;


# instance fields
.field public final a:Lnou;

.field private final b:Loiw;

.field private final c:Loiw;

.field private final d:Loiw;

.field private final e:Loiw;

.field private final f:Loiw;

.field private final g:Logd;

.field private final h:Ljuh;

.field private final i:Ljava/util/concurrent/Executor;

.field private final j:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final k:Lkbc;

.field private final l:Lkaq;

.field private final m:Lhsl;

.field private n:Lnou;

.field private final o:Lkgd;

.field private final p:Lcvr;


# direct methods
.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;Loiw;Logd;Ljuh;Ljava/util/concurrent/Executor;Lnou;Lkap;Lkgd;Lcvr;Lkbc;Lhsl;[B[B[B)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lerh;->b:Loiw;

    move-object v1, p2

    iput-object v1, v0, Lerh;->c:Loiw;

    move-object v1, p6

    iput-object v1, v0, Lerh;->g:Logd;

    move-object v1, p7

    iput-object v1, v0, Lerh;->h:Ljuh;

    move-object v1, p8

    iput-object v1, v0, Lerh;->i:Ljava/util/concurrent/Executor;

    move-object v1, p9

    iput-object v1, v0, Lerh;->a:Lnou;

    move-object v1, p11

    iput-object v1, v0, Lerh;->o:Lkgd;

    move-object v1, p12

    iput-object v1, v0, Lerh;->p:Lcvr;

    move-object/from16 v1, p13

    iput-object v1, v0, Lerh;->k:Lkbc;

    move-object/from16 v1, p14

    iput-object v1, v0, Lerh;->m:Lhsl;

    move-object v1, p3

    iput-object v1, v0, Lerh;->d:Loiw;

    move-object v1, p4

    iput-object v1, v0, Lerh;->e:Loiw;

    move-object v1, p5

    iput-object v1, v0, Lerh;->f:Loiw;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, v0, Lerh;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v1, "ActivityUiStartup"

    move-object v2, p10

    invoke-interface {p10, v1}, Lkap;->a(Ljava/lang/String;)Lkaq;

    move-result-object v1

    iput-object v1, v0, Lerh;->l:Lkaq;

    return-void
.end method


# virtual methods
.method public final bl()Lnou;
    .locals 4

    iget-object v0, p0, Lerh;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lerh;->n:Lnou;

    return-object v0

    :cond_0
    iget-object v0, p0, Lerh;->k:Lkbc;

    const-string v1, "ActivityUiStartup"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lerh;->h:Ljuh;

    iget-object v1, p0, Lerh;->g:Logd;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Leli;

    const/16 v3, 0x12

    invoke-direct {v2, v1, v3}, Leli;-><init>(Logd;I)V

    invoke-virtual {v0, v2}, Ljuh;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lerh;->m:Lhsl;

    invoke-interface {v0}, Lhsl;->c()Lnou;

    new-instance v0, Ldom;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Ldom;-><init>(Lerh;I)V

    iget-object v1, p0, Lerh;->i:Ljava/util/concurrent/Executor;

    invoke-static {v1}, Lcij;->a(Ljava/util/concurrent/Executor;)Lcij;

    move-result-object v1

    iget-object v2, p0, Lerh;->o:Lkgd;

    iput-object v2, v1, Lcij;->d:Lkgd;

    iget-object v2, p0, Lerh;->k:Lkbc;

    iput-object v2, v1, Lcij;->b:Lkbc;

    iget-object v2, p0, Lerh;->l:Lkaq;

    iput-object v2, v1, Lcij;->c:Lkaq;

    iget-object v2, p0, Lerh;->b:Loiw;

    invoke-static {v2}, Lcvr;->x(Loiw;)Loiw;

    move-result-object v2

    const-string v3, "ActivityStartup"

    invoke-virtual {v1, v2, v3}, Lcij;->c(Loiw;Ljava/lang/String;)V

    iget-object v2, p0, Lerh;->d:Loiw;

    invoke-static {v2}, Lcvr;->w(Loiw;)Loiw;

    move-result-object v2

    const-string v3, "WiringStartup"

    invoke-virtual {v1, v2, v3}, Lcij;->d(Loiw;Ljava/lang/String;)V

    iget-object v2, p0, Lerh;->c:Loiw;

    invoke-static {v2}, Lcvr;->x(Loiw;)Loiw;

    move-result-object v2

    const-string v3, "CameraActivityController"

    invoke-virtual {v1, v2, v3}, Lcij;->c(Loiw;Ljava/lang/String;)V

    const-string v2, "Interactivity"

    invoke-virtual {v1, v0, v2}, Lcij;->c(Loiw;Ljava/lang/String;)V

    iget-object v0, p0, Lerh;->p:Lcvr;

    iget-object v2, p0, Lerh;->e:Loiw;

    invoke-virtual {v0, v2}, Lcvr;->y(Loiw;)Loiw;

    move-result-object v0

    const-string v2, "ShotStartup"

    invoke-virtual {v1, v0, v2}, Lcij;->d(Loiw;Ljava/lang/String;)V

    iget-object v0, p0, Lerh;->p:Lcvr;

    iget-object v2, p0, Lerh;->f:Loiw;

    invoke-virtual {v0, v2}, Lcvr;->y(Loiw;)Loiw;

    move-result-object v0

    const-string v2, "SmartsStartup"

    invoke-virtual {v1, v0, v2}, Lcij;->d(Loiw;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcij;->b()Lnou;

    move-result-object v0

    iput-object v0, p0, Lerh;->n:Lnou;

    iget-object v0, p0, Lerh;->k:Lkbc;

    invoke-interface {v0}, Lkbc;->h()V

    iget-object v0, p0, Lerh;->k:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    iget-object v0, p0, Lerh;->n:Lnou;

    return-object v0
.end method

.method public final synthetic c()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Ldez;->d(Lcik;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
