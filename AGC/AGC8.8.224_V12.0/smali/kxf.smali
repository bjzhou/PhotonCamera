.class public final synthetic Lkxf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final synthetic a:Ljava/util/concurrent/Executor;

.field public final synthetic b:Ljava/lang/Object;

.field private final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lfwx;Ljava/util/concurrent/Executor;I)V
    .locals 0

    iput p3, p0, Lkxf;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkxf;->b:Ljava/lang/Object;

    iput-object p2, p0, Lkxf;->a:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lnnb;I)V
    .locals 0

    iput p3, p0, Lkxf;->c:I

    iput-object p1, p0, Lkxf;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lkxf;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkxh;Ljava/util/concurrent/Executor;I)V
    .locals 0

    iput p3, p0, Lkxf;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkxf;->b:Ljava/lang/Object;

    iput-object p2, p0, Lkxf;->a:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 4

    iget v0, p0, Lkxf;->c:I

    packed-switch v0, :pswitch_data_0

    :try_start_0
    iget-object v0, p0, Lkxf;->a:Ljava/util/concurrent/Executor;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lkxf;->b:Ljava/lang/Object;

    iget-object v1, p0, Lkxf;->a:Ljava/util/concurrent/Executor;

    new-instance v2, Ldqf;

    const/4 v3, 0x5

    invoke-direct {v2, v1, p1, v3}, Ldqf;-><init>(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;I)V

    check-cast v0, Lfwx;

    invoke-virtual {v0, v2}, Lfwx;->a(Lfwu;)Lnou;

    move-result-object p1

    invoke-interface {p1}, Lnou;->isCancelled()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/util/concurrent/RejectedExecutionException;

    const-string v0, "Queue already closed."

    invoke-direct {p1, v0}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    iget-object v0, p0, Lkxf;->b:Ljava/lang/Object;

    iget-object v1, p0, Lkxf;->a:Ljava/util/concurrent/Executor;

    new-instance v2, Lkcw;

    check-cast v0, Lkxh;

    const/16 v3, 0x10

    invoke-direct {v2, v0, p1, v3}, Lkcw;-><init>(Lkxh;Ljava/lang/Runnable;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :goto_0
    :try_start_1
    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lkxf;->b:Ljava/lang/Object;

    check-cast v0, Lnnb;

    invoke-virtual {v0, p1}, Lnnb;->a(Ljava/lang/Throwable;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
