.class public final Ljko;
.super Ljava/lang/Object;

# interfaces
.implements Lnoj;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Ljava/lang/Object;

.field private final synthetic c:I


# direct methods
.method public constructor <init>(Lcmv;Ljkc;I)V
    .locals 0

    iput p3, p0, Ljko;->c:I

    iput-object p1, p0, Ljko;->a:Ljava/lang/Object;

    iput-object p2, p0, Ljko;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljkp;Ljkc;I)V
    .locals 0

    iput p3, p0, Ljko;->c:I

    iput-object p1, p0, Ljko;->b:Ljava/lang/Object;

    iput-object p2, p0, Ljko;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 4

    iget v0, p0, Ljko;->c:I

    const/16 v1, 0x8

    const-string v2, "Failed to get results"

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcmv;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const/16 v3, 0x12c

    invoke-static {v0, v2, v3, p1}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    iget-object v0, p0, Ljko;->b:Ljava/lang/Object;

    invoke-static {p1}, Lmrp;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljkc;->a(ILjava/lang/String;)V

    return-void

    :pswitch_0
    const-string v0, "ExampleIterator"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Ljko;->a:Ljava/lang/Object;

    invoke-static {p1}, Lmrp;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljkc;->a(ILjava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 2

    iget p1, p0, Ljko;->c:I

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Ljko;->a:Ljava/lang/Object;

    check-cast p1, Lcmv;

    iget-object p1, p1, Lcmv;->b:Ljava/util/Deque;

    monitor-enter p1

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Ljko;->b:Ljava/lang/Object;

    check-cast p1, Ljkp;

    iget-object p1, p1, Ljkp;->a:Ljava/util/Deque;

    monitor-enter p1

    :try_start_0
    iget-object v1, p0, Ljko;->b:Ljava/lang/Object;

    check-cast v1, Ljkp;

    iget-object v1, v1, Ljkp;->a:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljko;->a:Ljava/lang/Object;

    invoke-interface {v1, v0, v0}, Ljkc;->b([B[B)V

    monitor-exit p1

    return-void

    :cond_0
    iget-object v0, p0, Ljko;->b:Ljava/lang/Object;

    check-cast v0, Ljkp;

    iget-object v0, v0, Ljkp;->a:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmqq;

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Ljko;->a:Ljava/lang/Object;

    iget-object v1, v0, Lmqq;->b:Ljava/lang/Object;

    check-cast v1, [B

    iget-object v0, v0, Lmqq;->a:Ljava/lang/Object;

    check-cast v0, Lntr;

    invoke-virtual {v0}, Lnve;->J()[B

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljkc;->b([B[B)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :goto_0
    :try_start_2
    iget-object v1, p0, Ljko;->a:Ljava/lang/Object;

    check-cast v1, Lcmv;

    iget-object v1, v1, Lcmv;->b:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Ljko;->b:Ljava/lang/Object;

    invoke-interface {v1, v0, v0}, Ljkc;->b([B[B)V

    monitor-exit p1

    return-void

    :cond_1
    iget-object v0, p0, Ljko;->a:Ljava/lang/Object;

    check-cast v0, Lcmv;

    iget-object v0, v0, Lcmv;->b:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmqq;

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object p1, v0, Lmqq;->a:Ljava/lang/Object;

    iget-object v1, p0, Ljko;->b:Ljava/lang/Object;

    iget-object v0, v0, Lmqq;->b:Ljava/lang/Object;

    check-cast v0, [B

    check-cast p1, Lcnk;

    invoke-virtual {p1}, Lnve;->J()[B

    move-result-object p1

    invoke-interface {v1, v0, p1}, Ljkc;->b([B[B)V

    return-void

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
