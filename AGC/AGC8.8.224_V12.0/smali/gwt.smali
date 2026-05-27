.class final Lgwt;
.super Ljava/lang/Object;

# interfaces
.implements Lgxw;


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Lgxl;

.field final synthetic c:Lgwu;


# direct methods
.method public constructor <init>(Lgwu;Ljava/io/File;Lgxl;)V
    .locals 0

    iput-object p1, p0, Lgwt;->c:Lgwu;

    iput-object p2, p0, Lgwt;->a:Ljava/io/File;

    iput-object p3, p0, Lgwt;->b:Lgxl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lgwt;->c:Lgwu;

    iget-object v0, v0, Lgwu;->c:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lgwt;->a:Ljava/io/File;

    new-instance v2, Lgot;

    const/16 v3, 0x10

    invoke-direct {v2, v1, v3}, Lgot;-><init>(Ljava/io/File;I)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final synthetic b()V
    .locals 0

    return-void
.end method

.method public final synthetic c(Lfce;)V
    .locals 0

    return-void
.end method

.method public final d(Landroid/graphics/Bitmap;)V
    .locals 5

    iget-object v0, p0, Lgwt;->c:Lgwu;

    iget-object v0, v0, Lgwu;->b:Ldhi;

    sget-object v1, Ldho;->bv:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lgwt;->c:Lgwu;

    iget-object v0, v0, Lgwu;->c:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lgwt;->a:Ljava/io/File;

    iget-object v2, p0, Lgwt;->b:Lgxl;

    new-instance v3, Lgwr;

    const/4 v4, 0x2

    invoke-direct {v3, p1, v1, v2, v4}, Lgwr;-><init>(Landroid/graphics/Bitmap;Ljava/io/File;Lgxl;I)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final synthetic e()V
    .locals 0

    return-void
.end method

.method public final synthetic f(Lmqp;)V
    .locals 0

    return-void
.end method

.method public final g(IILjava/lang/Throwable;)V
    .locals 1

    iget-object p1, p0, Lgwt;->c:Lgwu;

    iget-object p1, p1, Lgwu;->c:Ljava/util/concurrent/Executor;

    iget-object p2, p0, Lgwt;->a:Ljava/io/File;

    new-instance p3, Lgot;

    const/16 v0, 0x11

    invoke-direct {p3, p2, v0}, Lgot;-><init>(Ljava/io/File;I)V

    invoke-interface {p1, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final synthetic h(IILjava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final synthetic i(II)V
    .locals 0

    return-void
.end method

.method public final synthetic j(II)V
    .locals 0

    return-void
.end method
