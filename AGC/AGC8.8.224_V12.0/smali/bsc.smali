.class public final Lbsc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I

.field private final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lbsf;Lbzq;I)V
    .locals 0

    iput p3, p0, Lbsc;->b:I

    iput-object p1, p0, Lbsc;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lbsc;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljul;Ljava/lang/Runnable;I)V
    .locals 0

    iput p3, p0, Lbsc;->b:I

    iput-object p1, p0, Lbsc;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lbsc;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljuo;Ljava/util/concurrent/Future;I)V
    .locals 0

    iput p3, p0, Lbsc;->b:I

    iput-object p1, p0, Lbsc;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lbsc;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lbsc;->b:I

    packed-switch v0, :pswitch_data_0

    :try_start_0
    iget-object v0, p0, Lbsc;->c:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    goto/16 :goto_2

    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lbsc;->c:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lbsc;->a:Ljava/lang/Object;

    check-cast v1, Ljul;

    iget-object v1, v1, Ljul;->b:Ljuh;

    new-instance v2, Ljum;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Ljum;-><init>(Ljava/lang/Throwable;I)V

    invoke-virtual {v1, v2}, Ljuh;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lbsc;->c:Ljava/lang/Object;

    invoke-interface {v0}, Lbzq;->a()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_2
    iget-object v1, p0, Lbsc;->a:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    iget-object v2, p0, Lbsc;->a:Ljava/lang/Object;

    check-cast v2, Lbsf;

    iget-object v2, v2, Lbsf;->a:Lbse;

    iget-object v3, p0, Lbsc;->c:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lbse;->d(Lbzq;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lbsc;->a:Ljava/lang/Object;

    iget-object v3, p0, Lbsc;->c:Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    check-cast v2, Lbsf;

    iget-object v2, v2, Lbsf;->g:Lbsj;

    invoke-interface {v3, v2}, Lbzq;->d(Lbsj;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_5
    new-instance v3, Lbrl;

    invoke-direct {v3, v2}, Lbrl;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :cond_0
    :goto_0
    iget-object v2, p0, Lbsc;->a:Ljava/lang/Object;

    check-cast v2, Lbsf;

    invoke-virtual {v2}, Lbsf;->c()V

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    return-void

    :catchall_2
    move-exception v2

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v2

    :catchall_3
    move-exception v1

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v1

    :pswitch_2
    iget-object v0, p0, Lbsc;->c:Ljava/lang/Object;

    invoke-interface {v0}, Lbzq;->a()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_9
    iget-object v1, p0, Lbsc;->a:Ljava/lang/Object;

    monitor-enter v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    :try_start_a
    iget-object v2, p0, Lbsc;->a:Ljava/lang/Object;

    check-cast v2, Lbsf;

    iget-object v2, v2, Lbsf;->a:Lbse;

    iget-object v3, p0, Lbsc;->c:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lbse;->d(Lbzq;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lbsc;->a:Ljava/lang/Object;

    check-cast v2, Lbsf;

    iget-object v2, v2, Lbsf;->i:Lbsh;

    invoke-virtual {v2}, Lbsh;->d()V

    iget-object v2, p0, Lbsc;->a:Ljava/lang/Object;

    iget-object v3, p0, Lbsc;->c:Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :try_start_b
    move-object v4, v2

    check-cast v4, Lbsf;

    iget-object v4, v4, Lbsf;->i:Lbsh;

    check-cast v2, Lbsf;

    iget v2, v2, Lbsf;->k:I

    invoke-interface {v3, v4, v2}, Lbzq;->e(Lbsn;I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :try_start_c
    iget-object v2, p0, Lbsc;->a:Ljava/lang/Object;

    iget-object v3, p0, Lbsc;->c:Ljava/lang/Object;

    check-cast v2, Lbsf;

    invoke-virtual {v2, v3}, Lbsf;->g(Lbzq;)V

    goto :goto_1

    :catchall_4
    move-exception v2

    new-instance v3, Lbrl;

    invoke-direct {v3, v2}, Lbrl;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :cond_1
    :goto_1
    iget-object v2, p0, Lbsc;->a:Ljava/lang/Object;

    check-cast v2, Lbsf;

    invoke-virtual {v2}, Lbsf;->c()V

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :try_start_d
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    return-void

    :catchall_5
    move-exception v2

    :try_start_e
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    :try_start_f
    throw v2

    :catchall_6
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    throw v1

    :goto_2
    :try_start_10
    invoke-static {v0}, Lnsy;->J(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    :try_end_10
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    return-void

    :catchall_7
    move-exception v0

    iget-object v1, p0, Lbsc;->a:Ljava/lang/Object;

    check-cast v1, Ljuo;

    iget-object v1, v1, Ljuo;->a:Ljuh;

    new-instance v2, Ljum;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v2, v0, v3, v4}, Ljum;-><init>(Ljava/lang/Throwable;I[B)V

    invoke-virtual {v1, v2}, Ljuh;->execute(Ljava/lang/Runnable;)V

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lbsc;->a:Ljava/lang/Object;

    check-cast v1, Ljuo;

    iget-object v1, v1, Ljuo;->a:Ljuh;

    new-instance v2, Ljum;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Ljum;-><init>(Ljava/util/concurrent/ExecutionException;I)V

    invoke-virtual {v1, v2}, Ljuh;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
