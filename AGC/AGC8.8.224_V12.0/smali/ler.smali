.class public final Ller;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public b:Lnou;

.field public c:Lnou;

.field public d:Z

.field private e:Lnou;

.field private f:Lnou;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ller;->e:Lnou;

    iput-object p1, p0, Ller;->a:Ljava/util/concurrent/Executor;

    invoke-static {v0}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object p1

    iput-object p1, p0, Ller;->b:Lnou;

    invoke-static {v0}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object p1

    iput-object p1, p0, Ller;->c:Lnou;

    invoke-static {v0}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object p1

    iput-object p1, p0, Ller;->f:Lnou;

    const/4 p1, 0x1

    iput-boolean p1, p0, Ller;->d:Z

    return-void
.end method


# virtual methods
.method public final a()Llen;
    .locals 10

    iget-object v0, p0, Ller;->e:Lnou;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lnoo;->q(Lnou;)Lnoo;

    move-result-object v0

    sget-object v1, Lhop;->o:Lhop;

    iget-object v2, p0, Ller;->a:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Lnnf;->i(Lnou;Lmqi;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v4

    new-instance v0, Lleo;

    iget-object v5, p0, Ller;->f:Lnou;

    iget-object v6, p0, Ller;->b:Lnou;

    iget-object v7, p0, Ller;->c:Lnou;

    iget-boolean v8, p0, Ller;->d:Z

    iget-object v9, p0, Ller;->a:Ljava/util/concurrent/Executor;

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lleo;-><init>(Lnou;Lnou;Lnou;Lnou;ZLjava/util/concurrent/Executor;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output not properly specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(I)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object p1

    iput-object p1, p0, Ller;->f:Lnou;

    return-void
.end method

.method public final c(Ljava/io/FileDescriptor;)V
    .locals 0

    invoke-static {p1}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object p1

    iput-object p1, p0, Ller;->e:Lnou;

    return-void
.end method
