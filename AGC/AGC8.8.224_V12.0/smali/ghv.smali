.class public final Lghv;
.super Ljava/lang/Object;

# interfaces
.implements Lfvb;


# static fields
.field private static final a:Lnak;


# instance fields
.field private final b:Lnou;

.field private final c:Lken;

.field private final d:Lmqp;

.field private final e:Lmqp;

.field private final f:Lcea;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/pixelcamerakit/advice/PckAdviceFrameRetrievalCommand"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lghv;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Lnou;Lken;Lmqp;Lmqp;Lcea;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lghv;->b:Lnou;

    iput-object p2, p0, Lghv;->c:Lken;

    iput-object p3, p0, Lghv;->d:Lmqp;

    iput-object p4, p0, Lghv;->e:Lmqp;

    iput-object p5, p0, Lghv;->f:Lcea;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    iget-object v0, p0, Lghv;->d:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lghv;->e:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lghv;->d:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkgq;

    iget-object v0, v0, Lkgq;->c:Lmwn;

    iget-object v1, p0, Lghv;->e:Lmqp;

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lghv;->d:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkgq;

    iget-object v1, p0, Lghv;->e:Lmqp;

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkfj;

    :try_start_0
    iget-object v2, p0, Lghv;->c:Lken;

    invoke-interface {v2, v0}, Lken;->q(Lkgq;)Lkeb;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {v0}, Lkfg;->y(Lkeb;)V

    invoke-interface {v0, v1}, Lkeb;->d(Lkfj;)Lkpb;

    move-result-object v1

    iget-object v2, p0, Lghv;->b:Lnou;

    invoke-static {v2}, Ljvd;->r(Lnou;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lceh;

    if-eqz v1, :cond_3

    if-eqz v2, :cond_2

    invoke-static {v1}, Lgqr;->a(Lkpb;)Lgqq;

    move-result-object v1

    invoke-interface {v0}, Lkeb;->c()Lkou;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {v3}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    iput-object v3, v1, Lgqq;->d:Lnou;

    iget-object v3, p0, Lghv;->f:Lcea;

    invoke-virtual {v3}, Lcea;->c()Ljvs;

    move-result-object v3

    invoke-interface {v3}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lkab;->b(I)Lkab;

    move-result-object v3

    iput-object v3, v1, Lgqq;->c:Lkab;

    invoke-virtual {v1}, Lgqq;->a()Lgqr;

    move-result-object v1

    invoke-interface {v2, v1}, Lceh;->g(Lgqr;)V

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Lkpb;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :goto_1
    :try_start_2
    invoke-interface {v0}, Lkeb;->close()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    invoke-interface {v0}, Lkeb;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_4
    const-class v2, Ljava/lang/Throwable;

    const-string v3, "addSuppressed"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Throwable;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v7

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    :goto_2
    :try_start_5
    throw v1
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception v0

    sget-object v1, Lghv;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->c()Lnaz;

    move-result-object v1

    const-string v2, "Unable to retrieve frame"

    const/16 v3, 0xa6e

    invoke-static {v1, v2, v3, v0}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    return-void

    :cond_4
    :goto_3
    return-void
.end method
