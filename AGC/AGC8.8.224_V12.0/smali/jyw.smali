.class public final synthetic Ljyw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Ljyy;

.field public final synthetic b:Z

.field public final synthetic c:J

.field private final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Ljyy;ZJI)V
    .locals 0

    iput p5, p0, Ljyw;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljyw;->a:Ljyy;

    iput-boolean p2, p0, Ljyw;->b:Z

    iput-wide p3, p0, Ljyw;->c:J

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 9

    iget v0, p0, Ljyw;->d:I

    const/4 v1, 0x5

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ljyw;->a:Ljyy;

    iget-boolean v5, p0, Ljyw;->b:Z

    iget-wide v6, p0, Ljyw;->c:J

    iget-object v0, v0, Ljyy;->d:Ljyb;

    if-eqz v0, :cond_a

    if-eqz v5, :cond_9

    move-object v5, v0

    check-cast v5, Ljyv;

    iput-boolean v3, v5, Ljyv;->r:Z

    iget-object v3, v5, Ljyv;->a:Ljava/lang/Object;

    monitor-enter v3

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Ljyw;->a:Ljyy;

    iget-boolean v5, p0, Ljyw;->b:Z

    iget-wide v6, p0, Ljyw;->c:J

    iget-object v8, v0, Ljyy;->e:Ljyf;

    if-eqz v8, :cond_5

    if-eqz v5, :cond_3

    move-object v5, v8

    check-cast v5, Ljyi;

    iput-boolean v3, v5, Ljyi;->y:Z

    iget-object v3, v5, Ljyi;->e:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    move-object v5, v8

    check-cast v5, Ljyi;

    iget v5, v5, Ljyi;->P:I

    if-eq v5, v2, :cond_0

    if-ne v5, v1, :cond_2

    :cond_0
    move-object v1, v8

    check-cast v1, Ljyi;

    iget-boolean v1, v1, Ljyi;->A:Z

    if-eqz v1, :cond_1

    move-object v1, v8

    check-cast v1, Ljyi;

    iget-object v1, v1, Ljyi;->c:Lnow;

    new-instance v2, Lbdj;

    move-object v5, v8

    check-cast v5, Ljyi;

    const/16 v6, 0xf

    invoke-direct {v2, v5, v6}, Lbdj;-><init>(Ljyi;I)V

    invoke-interface {v1, v2}, Lnow;->b(Ljava/util/concurrent/Callable;)Lnou;

    :cond_1
    invoke-static {}, Ljyi;->c()J

    move-result-wide v1

    check-cast v8, Ljyi;

    invoke-virtual {v8, v1, v2}, Ljyi;->b(J)V

    :cond_2
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    invoke-interface {v8, v6, v7}, Ljyf;->b(J)V

    :goto_0
    iget-object v1, v0, Ljyy;->k:Ljye;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljye;->c()V

    :cond_4
    iget-object v0, v0, Ljyy;->e:Ljyf;

    invoke-interface {v0}, Ljyf;->a()V

    :cond_5
    return-object v4

    :goto_1
    :try_start_1
    move-object v5, v0

    check-cast v5, Ljyv;

    iget v5, v5, Ljyv;->x:I

    if-eq v5, v2, :cond_6

    if-ne v5, v1, :cond_8

    :cond_6
    move-object v1, v0

    check-cast v1, Ljyv;

    iget-boolean v1, v1, Ljyv;->s:Z

    if-eqz v1, :cond_7

    move-object v1, v0

    check-cast v1, Ljyv;

    iget-object v1, v1, Ljyv;->j:Landroid/os/Handler;

    new-instance v2, Ljum;

    move-object v5, v0

    check-cast v5, Ljyv;

    const/16 v6, 0x14

    invoke-direct {v2, v5, v6}, Ljum;-><init>(Ljyv;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v5, 0x3e8

    mul-long v1, v1, v5

    check-cast v0, Ljyv;

    invoke-virtual {v0, v1, v2}, Ljyv;->a(J)V

    :cond_8
    monitor-exit v3

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :cond_9
    invoke-interface {v0, v6, v7}, Ljyb;->a(J)V

    :cond_a
    :goto_2
    return-object v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
