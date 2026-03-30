.class final Lrnp;
.super Lrnm;
.source "PG"


# instance fields
.field final synthetic a:Lrnm;

.field final synthetic b:Lrnv;

.field final synthetic c:Lpic;


# direct methods
.method public constructor <init>(Lrnv;Lpic;Lpic;Lrnm;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p3, p0, Lrnp;->c:Lpic;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    iput-object p4, p0, Lrnp;->a:Lrnm;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lrnp;->b:Lrnv;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0, p2}, Lrnm;-><init>(Lpic;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 6

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_1

    nop

    :goto_3
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_6
    monitor-enter v0

    nop

    nop

    nop

    :try_start_0
    iget-object v1, p0, Lrnp;->b:Lrnv;

    nop

    iget-object v2, p0, Lrnp;->c:Lpic;

    nop

    nop

    nop

    nop

    iget-object v3, v1, Lrnv;->d:Ljava/util/Set;

    nop

    nop

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v3, v2, Lpic;->a:Ljava/lang/Object;

    nop

    new-instance v4, Lrno;

    nop

    invoke-direct {v4, v1, v2}, Lrno;-><init>(Lrnv;Lpic;)V

    check-cast v3, Loqy;

    nop

    nop

    nop

    invoke-virtual {v3, v4}, Loqy;->h(Loqt;)V

    iget-object v1, p0, Lrnp;->b:Lrnv;

    nop

    nop

    nop

    nop

    nop

    iget-object v1, v1, Lrnv;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    iget-object v1, p0, Lrnp;->b:Lrnv;

    nop

    nop

    nop

    nop

    nop

    iget-object p0, p0, Lrnp;->a:Lrnm;

    nop

    nop

    iget-object v2, v1, Lrnv;->l:Landroid/os/IInterface;

    nop

    nop

    nop

    nop

    if-nez v2, :cond_2

    nop

    iget-boolean v2, v1, Lrnv;->f:Z

    nop

    nop

    nop

    if-nez v2, :cond_2

    nop

    nop

    nop

    nop

    nop

    iget-object v2, v1, Lrnv;->c:Ljava/util/List;

    nop

    nop

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, Lrnu;

    nop

    nop

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    invoke-direct {p0, v1, v2}, Lrnu;-><init>(Ljava/lang/Object;I)V

    iput-object p0, v1, Lrnv;->k:Landroid/content/ServiceConnection;

    nop

    nop

    nop

    const/4 p0, 0x1

    nop

    iput-boolean p0, v1, Lrnv;->f:Z

    nop

    nop

    nop

    nop

    nop

    iget-object v3, v1, Lrnv;->a:Landroid/content/Context;

    nop

    nop

    iget-object v4, v1, Lrnv;->g:Landroid/content/Intent;

    nop

    nop

    iget-object v5, v1, Lrnv;->k:Landroid/content/ServiceConnection;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v4, v5, p0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    if-nez p0, :cond_4

    nop

    iput-boolean v2, v1, Lrnv;->f:Z

    nop

    nop

    nop

    nop

    nop

    iget-object p0, v1, Lrnv;->c:Ljava/util/List;

    nop

    nop

    nop

    nop

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    if-eqz v2, :cond_1

    nop

    nop

    nop

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    check-cast v2, Lrnm;

    nop

    nop

    nop

    new-instance v3, Lrnw;

    nop

    invoke-direct {v3}, Lrnw;-><init>()V

    invoke-virtual {v2, v3}, Lrnm;->b(Ljava/lang/Exception;)V

    goto :goto_7

    nop

    :cond_1
    iget-object p0, v1, Lrnv;->c:Ljava/util/List;

    nop

    nop

    nop

    invoke-interface {p0}, Ljava/util/List;->clear()V

    goto :goto_8

    nop

    :cond_2
    iget-boolean v2, v1, Lrnv;->f:Z

    nop

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_3

    nop

    nop

    nop

    nop

    nop

    iget-object v1, v1, Lrnv;->c:Ljava/util/List;

    nop

    nop

    nop

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    nop

    nop

    nop

    nop

    :cond_3
    invoke-virtual {p0}, Lrnm;->run()V

    :cond_4
    :goto_8
    monitor-exit v0

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Lrnp;->b:Lrnv;

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_c
    iget-object v0, v0, Lrnv;->e:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_3

    nop

    :goto_e
    const v1, 0x1b

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop
.end method
