.class public final Llsy;
.super Llsh;


# instance fields
.field private final a:Lnxy;


# direct methods
.method public constructor <init>(Lnxy;)V
    .locals 0

    invoke-direct {p0}, Llsh;-><init>()V

    iput-object p1, p0, Llsy;->a:Lnxy;

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/IOException;Llhe;)Lnou;
    .locals 3

    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lnxd;

    if-nez v0, :cond_0

    invoke-static {p1}, Lnsy;->A(Ljava/lang/Throwable;)Lnou;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Llsy;->a:Lnxy;

    invoke-static {v0}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v0

    iget-object p2, p2, Llhe;->a:Ljava/lang/Object;

    new-instance v1, Lcmq;

    check-cast p2, Llsr;

    const/16 v2, 0xf

    invoke-direct {v1, p2, v2}, Lcmq;-><init>(Llsr;I)V

    invoke-static {v1}, Lmny;->b(Lnno;)Lnno;

    move-result-object v1

    iget-object p2, p2, Llsr;->c:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p2}, Lnnf;->j(Lnou;Lnno;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object p2

    new-instance v0, Llsx;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Llsx;-><init>(Ljava/io/IOException;I)V

    sget-object p1, Lnnv;->a:Lnnv;

    const-class v1, Ljava/io/IOException;

    invoke-static {p2, v1, v0, p1}, Lnml;->j(Lnou;Ljava/lang/Class;Lnno;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object p1

    return-object p1
.end method
