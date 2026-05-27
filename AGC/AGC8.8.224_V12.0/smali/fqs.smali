.class public final synthetic Lfqs;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field private final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Ldlk;JLj$/time/Instant;Ljava/lang/String;I)V
    .locals 0

    iput p6, p0, Lfqs;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfqs;->b:Ljava/lang/Object;

    iput-wide p2, p0, Lfqs;->a:J

    iput-object p4, p0, Lfqs;->d:Ljava/lang/Object;

    iput-object p5, p0, Lfqs;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lfrc;Lgxy;Lnom;JI[B[B)V
    .locals 0

    iput p6, p0, Lfqs;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfqs;->b:Ljava/lang/Object;

    iput-object p2, p0, Lfqs;->c:Ljava/lang/Object;

    iput-object p3, p0, Lfqs;->d:Ljava/lang/Object;

    iput-wide p4, p0, Lfqs;->a:J

    return-void
.end method

.method public synthetic constructor <init>(Lgku;Ljava/util/Set;Lkou;JI)V
    .locals 0

    iput p6, p0, Lfqs;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfqs;->b:Ljava/lang/Object;

    iput-object p2, p0, Lfqs;->c:Ljava/lang/Object;

    iput-object p3, p0, Lfqs;->d:Ljava/lang/Object;

    iput-wide p4, p0, Lfqs;->a:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Lnox;JLjava/util/concurrent/TimeUnit;I)V
    .locals 0

    iput p6, p0, Lfqs;->e:I

    iput-object p1, p0, Lfqs;->d:Ljava/lang/Object;

    iput-object p2, p0, Lfqs;->b:Ljava/lang/Object;

    iput-wide p3, p0, Lfqs;->a:J

    iput-object p5, p0, Lfqs;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkjz;Lkfj;JLjava/util/List;I)V
    .locals 0

    iput p6, p0, Lfqs;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfqs;->d:Ljava/lang/Object;

    iput-object p2, p0, Lfqs;->b:Ljava/lang/Object;

    iput-wide p3, p0, Lfqs;->a:J

    iput-object p5, p0, Lfqs;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget v0, p0, Lfqs;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lfqs;->d:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lfqs;->b:Ljava/lang/Object;

    iget-wide v1, p0, Lfqs;->a:J

    iget-object v3, p0, Lfqs;->c:Ljava/lang/Object;

    check-cast v3, Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p0, v1, v2, v3}, Lnox;->d(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lnpa;

    move-result-object v0

    invoke-static {v0}, Llpm;->a(Lnou;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lfqs;->d:Ljava/lang/Object;

    iget-object v1, p0, Lfqs;->b:Ljava/lang/Object;

    iget-wide v2, p0, Lfqs;->a:J

    iget-object v4, p0, Lfqs;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    move-object v5, v0

    check-cast v5, Lkjz;

    iget-object v5, v5, Lkjz;->h:Ljava/util/Deque;

    invoke-interface {v5}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkkf;

    invoke-interface {v6}, Lkkf;->d()Lkfj;

    move-result-object v7

    if-ne v7, v1, :cond_0

    invoke-interface {v6}, Lkkf;->c()Lkeg;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-wide v7, v7, Lkeg;->c:J

    cmp-long v9, v7, v2

    if-nez v9, :cond_0

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    check-cast v0, Lkjz;

    iget-object v0, v0, Lkjz;->f:Lkaq;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received onBufferLost from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for frame "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " but was unable to find a matching request to abort."

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkaq;->i(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkkf;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lkkf;->k(Lkpb;)V

    goto :goto_1

    :cond_3
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :pswitch_1
    iget-object v0, p0, Lfqs;->b:Ljava/lang/Object;

    iget-object v1, p0, Lfqs;->c:Ljava/lang/Object;

    iget-object v2, p0, Lfqs;->d:Ljava/lang/Object;

    iget-wide v3, p0, Lfqs;->a:J

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v5

    invoke-interface {v2}, Lkou;->g()Ljava/util/Map;

    move-result-object v6

    check-cast v6, Lmyz;

    iget v6, v6, Lmyz;->c:I

    invoke-interface {v2}, Lkou;->e()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_4

    sget v1, Lmvv;->d:I

    sget-object v1, Lmyu;->a:Lmvv;

    check-cast v0, Lgku;

    invoke-virtual {v0, v1}, Lgku;->p(Ljava/util/List;)V

    return-void

    :cond_4
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Lkou;->g()Ljava/util/Map;

    move-result-object v2

    check-cast v2, Lmwa;

    invoke-virtual {v2}, Lmwa;->r()Lmwn;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v9, 0x0

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lkoq;

    invoke-interface {v11}, Lkoq;->e()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_5

    sget v1, Lmvv;->d:I

    sget-object v1, Lmyu;->a:Lmvv;

    check-cast v0, Lgku;

    invoke-virtual {v0, v1}, Lgku;->p(Ljava/util/List;)V

    return-void

    :cond_5
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lkoq;

    sget-object v12, Liuz;->c:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v10, v12}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    new-instance v12, Lgkt;

    invoke-direct {v12, v7, v11, v10}, Lgkt;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_7

    const/4 v10, 0x1

    if-ne v5, v6, :cond_6

    invoke-interface {v1, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    const/4 v9, 0x1

    goto :goto_3

    :cond_6
    const/4 v9, 0x1

    :cond_7
    :goto_3
    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    if-eqz v9, :cond_9

    move-object v2, v0

    check-cast v2, Lgku;

    invoke-virtual {v2, v7, v1, v3, v4}, Lgku;->o(Ljava/lang/String;Ljava/util/Set;J)V

    :cond_9
    check-cast v0, Lgku;

    invoke-virtual {v0, v8}, Lgku;->p(Ljava/util/List;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lfqs;->b:Ljava/lang/Object;

    iget-wide v1, p0, Lfqs;->a:J

    iget-object v3, p0, Lfqs;->d:Ljava/lang/Object;

    iget-object v4, p0, Lfqs;->c:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    check-cast v3, Lj$/time/Instant;

    check-cast v0, Ldlk;

    invoke-virtual {v0, v1, v2, v3, v4}, Ldlk;->l(JLj$/time/Instant;Ljava/lang/String;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lfqs;->b:Ljava/lang/Object;

    iget-object v1, p0, Lfqs;->c:Ljava/lang/Object;

    iget-object v2, p0, Lfqs;->d:Ljava/lang/Object;

    iget-wide v3, p0, Lfqs;->a:J

    check-cast v2, Lnom;

    check-cast v1, Lgxy;

    check-cast v0, Lfrc;

    invoke-virtual {v0, v1, v2, v3, v4}, Lfrc;->n(Lgxy;Lnom;J)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
