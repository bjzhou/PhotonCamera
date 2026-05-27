.class public final Lkzj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Ljava/lang/Object;

.field private final synthetic c:I


# direct methods
.method public constructor <init>(Lkyu;Lkzd;I)V
    .locals 0

    iput p3, p0, Lkzj;->c:I

    iput-object p1, p0, Lkzj;->a:Ljava/lang/Object;

    iput-object p2, p0, Lkzj;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Llaa;Ljava/util/concurrent/Callable;I)V
    .locals 0

    iput p3, p0, Lkzj;->c:I

    iput-object p1, p0, Lkzj;->a:Ljava/lang/Object;

    iput-object p2, p0, Lkzj;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Llaa;Lkyo;I)V
    .locals 0

    iput p3, p0, Lkzj;->c:I

    iput-object p1, p0, Lkzj;->b:Ljava/lang/Object;

    iput-object p2, p0, Lkzj;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget v0, p0, Lkzj;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lkzj;->b:Ljava/lang/Object;

    check-cast v0, Llaa;

    iget-object v0, v0, Llaa;->a:Ljava/lang/Object;

    if-eqz v0, :cond_1

    return-void

    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lkzj;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lkyu;

    iget-object v1, v1, Lkyu;->d:Lkyt;

    iget-object v2, p0, Lkzj;->b:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lkyu;

    iget-object v3, v3, Lkyu;->e:Ljava/util/concurrent/Executor;

    check-cast v0, Lkyu;

    iget-object v0, v0, Lkyu;->a:Llaa;

    invoke-interface {v1, v2, v3, v0}, Lkyt;->a(Ljava/lang/Object;Ljava/util/concurrent/Executor;Llaa;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lkzj;->b:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    invoke-static {v0}, Lkzd;->a(Ljava/lang/Throwable;)Lkzd;

    move-result-object v0

    iget-object v1, p0, Lkzj;->b:Ljava/lang/Object;

    :try_start_1
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

    aput-object v1, v3, v7

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :cond_0
    :goto_0
    iget-object v1, p0, Lkzj;->a:Ljava/lang/Object;

    check-cast v1, Lkyu;

    invoke-virtual {v1, v0}, Lkyu;->a(Ljava/lang/Throwable;)V

    return-void

    :pswitch_1
    :try_start_2
    iget-object v0, p0, Lkzj;->a:Ljava/lang/Object;

    iget-object v1, p0, Lkzj;->b:Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Llaa;

    invoke-virtual {v0, v1}, Llaa;->l(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception v0

    iget-object v1, p0, Lkzj;->a:Ljava/lang/Object;

    invoke-static {v0}, Lkzd;->a(Ljava/lang/Throwable;)Lkzd;

    move-result-object v0

    check-cast v1, Llaa;

    invoke-virtual {v1, v0}, Llaa;->m(Lkzd;)V

    return-void

    :cond_1
    iget-object v0, p0, Lkzj;->b:Ljava/lang/Object;

    check-cast v0, Llaa;

    iget-object v0, v0, Llaa;->b:Lkzd;

    invoke-static {v0}, Lmrp;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lkzj;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lkzj;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lkzj;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "finallyHandleException["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lkzj;->a:Ljava/lang/Object;

    check-cast v0, Lkyu;

    iget-object v0, v0, Lkyu;->d:Lkyt;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lkzj;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
