.class public final Ljol;
.super Ljava/lang/Object;

# interfaces
.implements Ljou;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field private final c:Ljava/util/concurrent/Executor;

.field private final synthetic d:I


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Ljoj;Ljox;I)V
    .locals 0

    iput p4, p0, Ljol;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljol;->c:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Ljol;->b:Ljava/lang/Object;

    iput-object p3, p0, Ljol;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Ljom;I)V
    .locals 0

    iput p3, p0, Ljol;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p3, Ljava/lang/Object;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Ljol;->a:Ljava/lang/Object;

    iput-object p1, p0, Ljol;->c:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Ljol;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Ljon;I)V
    .locals 0

    iput p3, p0, Ljol;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p3, Ljava/lang/Object;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Ljol;->a:Ljava/lang/Object;

    iput-object p1, p0, Ljol;->c:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Ljol;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Ljoo;I)V
    .locals 0

    iput p3, p0, Ljol;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p3, Ljava/lang/Object;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Ljol;->a:Ljava/lang/Object;

    iput-object p1, p0, Ljol;->c:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Ljol;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Ljop;I)V
    .locals 0

    iput p3, p0, Ljol;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p3, Ljava/lang/Object;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Ljol;->a:Ljava/lang/Object;

    iput-object p1, p0, Ljol;->c:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Ljol;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljot;)V
    .locals 4

    iget v0, p0, Ljol;->d:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Ljot;->e()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Ljol;->a:Ljava/lang/Object;

    monitor-enter v0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Ljot;->e()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, p1

    check-cast v0, Ljox;

    iget-boolean v0, v0, Ljox;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Ljol;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Ljol;->b:Ljava/lang/Object;

    if-nez v2, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Ljol;->c:Ljava/util/concurrent/Executor;

    new-instance v2, Lioi;

    const/16 v3, 0x14

    invoke-direct {v2, p0, p1, v3, v1}, Lioi;-><init>(Ljol;Ljot;I[S)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    return-void

    :pswitch_1
    iget-object v0, p0, Ljol;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_2
    iget-object v2, p0, Ljol;->b:Ljava/lang/Object;

    if-nez v2, :cond_2

    monitor-exit v0

    return-void

    :cond_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v0, p0, Ljol;->c:Ljava/util/concurrent/Executor;

    new-instance v2, Lioi;

    const/16 v3, 0x13

    invoke-direct {v2, p0, p1, v3, v1}, Lioi;-><init>(Ljol;Ljot;I[C)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :pswitch_2
    iget-object v0, p0, Ljol;->c:Ljava/util/concurrent/Executor;

    new-instance v2, Lioi;

    const/16 v3, 0x12

    invoke-direct {v2, p0, p1, v3, v1}, Lioi;-><init>(Ljol;Ljot;I[B)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_3
    check-cast p1, Ljox;

    iget-boolean p1, p1, Ljox;->c:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Ljol;->a:Ljava/lang/Object;

    monitor-enter p1

    :try_start_4
    iget-object v0, p0, Ljol;->b:Ljava/lang/Object;

    if-nez v0, :cond_3

    monitor-exit p1

    return-void

    :cond_3
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    iget-object p1, p0, Ljol;->c:Ljava/util/concurrent/Executor;

    new-instance v0, Liwu;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Liwu;-><init>(Ljol;I)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :cond_4
    return-void

    :goto_0
    :try_start_6
    iget-object v2, p0, Ljol;->b:Ljava/lang/Object;

    if-nez v2, :cond_5

    monitor-exit v0

    return-void

    :cond_5
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    iget-object v0, p0, Ljol;->c:Ljava/util/concurrent/Executor;

    new-instance v2, Ljoq;

    const/4 v3, 0x1

    invoke-direct {v2, p0, p1, v3, v1}, Ljoq;-><init>(Ljol;Ljot;I[B)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_3
    move-exception p1

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw p1

    :cond_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
