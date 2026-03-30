.class final Lrnq;
.super Lrnm;
.source "PG"


# instance fields
.field final synthetic a:Lrnv;


# direct methods
.method public constructor <init>(Lrnv;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lrnq;->a:Lrnv;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    invoke-direct {p0}, Lrnm;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop
.end method


# virtual methods
.method public final a()V
    .locals 7

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, v0, Lrnv;->e:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_4

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_6
    throw p0

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Lrnq;->a:Lrnv;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_a
    const v0, 0x19

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_b
    monitor-enter v0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v1, p0, Lrnq;->a:Lrnv;

    nop

    nop

    nop

    nop

    nop

    iget-object v1, v1, Lrnv;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    nop

    nop

    if-lez v1, :cond_1

    nop

    nop

    iget-object v1, p0, Lrnq;->a:Lrnv;

    nop

    nop

    iget-object v1, v1, Lrnv;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    nop

    if-lez v1, :cond_1

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    :cond_1
    iget-object v1, p0, Lrnq;->a:Lrnv;

    nop

    nop

    iget-object v2, v1, Lrnv;->l:Landroid/os/IInterface;

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_2

    nop

    nop

    nop

    iget-object v2, v1, Lrnv;->a:Landroid/content/Context;

    nop

    iget-object v1, v1, Lrnv;->k:Landroid/content/ServiceConnection;

    nop

    invoke-virtual {v2, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v1, p0, Lrnq;->a:Lrnv;

    nop

    nop

    nop

    nop

    invoke-static {v1}, Lrnv;->d(Lrnv;)V

    iget-object v1, p0, Lrnq;->a:Lrnv;

    nop

    nop

    nop

    nop

    nop

    const/4 v2, 0x0

    nop

    iput-object v2, v1, Lrnv;->l:Landroid/os/IInterface;

    nop

    nop

    nop

    nop

    iput-object v2, v1, Lrnv;->k:Landroid/content/ServiceConnection;

    nop

    nop

    :cond_2
    iget-object p0, p0, Lrnq;->a:Lrnv;

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    const/16 v5, 0x19c

    nop

    nop

    nop

    invoke-static {v5, p0, v3}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    nop

    nop

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

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method
