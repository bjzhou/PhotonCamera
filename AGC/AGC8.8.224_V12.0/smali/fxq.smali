.class public final Lfxq;
.super Ljava/lang/Object;

# interfaces
.implements Lfxw;
.implements Lkad;


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Lgrf;

.field public final c:Lgui;

.field public final d:Lkbc;

.field public final e:Ljew;

.field private final f:Lgvb;

.field private final g:Ljwb;

.field private final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final i:Lfwx;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Ljew;Lgui;Lgvb;Lkbc;[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p6, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p7, 0x0

    invoke-direct {p6, p7}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p6, p0, Lfxq;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lfxq;->a:Ljava/util/concurrent/Executor;

    new-instance p1, Ljvk;

    const/4 p6, 0x2

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p7

    invoke-direct {p1, p7}, Ljvk;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lfxq;->g:Ljwb;

    iput-object p2, p0, Lfxq;->e:Ljew;

    iput-object p3, p0, Lfxq;->c:Lgui;

    iput-object p4, p0, Lfxq;->f:Lgvb;

    iput-object p5, p0, Lfxq;->d:Lkbc;

    new-instance p1, Lgrd;

    invoke-direct {p1}, Lgrd;-><init>()V

    iput-object p1, p0, Lfxq;->b:Lgrf;

    new-instance p1, Lfwx;

    invoke-direct {p1, p6}, Lfwx;-><init>(I)V

    iput-object p1, p0, Lfxq;->i:Lfwx;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Lnou;
    .locals 0

    check-cast p1, Lgqr;

    invoke-virtual {p0, p1}, Lfxq;->b(Lgqr;)Lnou;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lgqr;)Lnou;
    .locals 3

    iget-object v0, p1, Lgqr;->a:Lkpb;

    invoke-interface {v0}, Lkpb;->a()I

    move-result v0

    const/16 v1, 0x23

    if-eq v0, v1, :cond_0

    iget-object p1, p1, Lgqr;->a:Lkpb;

    invoke-interface {p1}, Lkpb;->close()V

    new-instance p1, Lkdf;

    const-string v0, "Only YUV_420_888 images are supported"

    invoke-direct {p1, v0}, Lkdf;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lnsy;->A(Ljava/lang/Throwable;)Lnou;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lfxq;->f:Lgvb;

    iget-object v1, p1, Lgqr;->g:Lklv;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, v1}, Lgvb;->h(Lklv;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lfxq;->f:Lgvb;

    iget-object v1, p1, Lgqr;->a:Lkpb;

    iget-object v2, p1, Lgqr;->b:Lkab;

    invoke-interface {v0, v1, v2}, Lgvb;->d(Lkpb;Lkab;)V

    :cond_1
    iget-object v0, p0, Lfxq;->i:Lfwx;

    new-instance v1, Ldqf;

    const/4 v2, 0x4

    invoke-direct {v1, p0, p1, v2}, Ldqf;-><init>(Lfxq;Lgqr;I)V

    invoke-virtual {v0, v1}, Lfwx;->a(Lfwu;)Lnou;

    move-result-object p1

    return-object p1
.end method

.method public final close()V
    .locals 3

    iget-object v0, p0, Lfxq;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfxq;->i:Lfwx;

    invoke-virtual {v0}, Lfwx;->close()V

    iget-object v0, p0, Lfxq;->g:Ljwb;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljwb;->bn(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
