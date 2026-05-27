.class public final synthetic Lkcu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Ljava/util/Collection;I)V
    .locals 0

    iput p2, p0, Lkcu;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkcu;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljuf;I)V
    .locals 0

    iput p2, p0, Lkcu;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkcu;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljyv;I)V
    .locals 0

    iput p2, p0, Lkcu;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkcu;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lkad;I)V
    .locals 0

    iput p2, p0, Lkcu;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkcu;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lkbw;I)V
    .locals 0

    iput p2, p0, Lkcu;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkcu;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lkcx;I)V
    .locals 0

    iput p2, p0, Lkcu;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkcu;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lkfs;I)V
    .locals 0

    iput p2, p0, Lkcu;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkcu;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lkhh;I)V
    .locals 0

    iput p2, p0, Lkcu;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkcu;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lkib;I)V
    .locals 0

    iput p2, p0, Lkcu;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkcu;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lkio;I)V
    .locals 0

    iput p2, p0, Lkcu;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkcu;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkjz;I)V
    .locals 0

    iput p2, p0, Lkcu;->b:I

    iput-object p1, p0, Lkcu;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkmz;I)V
    .locals 0

    iput p2, p0, Lkcu;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkcu;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lkpf;I)V
    .locals 0

    iput p2, p0, Lkcu;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkcu;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lkpx;I)V
    .locals 0

    iput p2, p0, Lkcu;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkcu;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lktu;I)V
    .locals 0

    iput p2, p0, Lkcu;->b:I

    iput-object p1, p0, Lkcu;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkue;I)V
    .locals 0

    iput p2, p0, Lkcu;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkcu;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget v0, p0, Lkcu;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lkcu;->a:Ljava/lang/Object;

    check-cast v0, Lkxi;

    invoke-virtual {v0}, Lkxi;->j()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lkcu;->a:Ljava/lang/Object;

    check-cast v0, Lkue;

    invoke-virtual {v0}, Lkue;->h()V

    return-void

    :pswitch_1
    iget-object v0, p0, Lkcu;->a:Ljava/lang/Object;

    check-cast v0, Lktu;

    invoke-virtual {v0}, Lktu;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lkcu;->a:Ljava/lang/Object;

    check-cast v0, Lktu;

    invoke-virtual {v0, v3}, Lktu;->cancel(Z)Z

    iget-object v0, p0, Lkcu;->a:Ljava/lang/Object;

    check-cast v0, Lktu;

    const/16 v1, 0xf

    invoke-virtual {v0, v1, v1}, Lktu;->a(II)V

    :cond_0
    return-void

    :pswitch_2
    iget-object v0, p0, Lkcu;->a:Ljava/lang/Object;

    check-cast v0, Lkpx;

    invoke-virtual {v0}, Lkpx;->f()V

    return-void

    :pswitch_3
    iget-object v0, p0, Lkcu;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lkmz;

    iget-object v2, v1, Lkmz;->c:Lkna;

    iget-object v4, v2, Lkna;->a:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    move-object v2, v0

    check-cast v2, Lkmz;

    iget-object v2, v2, Lkmz;->c:Lkna;

    iget-object v2, v2, Lkna;->c:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    check-cast v0, Lkmz;

    iget-object v0, v0, Lkmz;->c:Lkna;

    invoke-virtual {v0}, Lkna;->d()V

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v1, Lkmz;->c:Lkna;

    invoke-virtual {v0}, Lkna;->e()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :pswitch_4
    iget-object v0, p0, Lkcu;->a:Ljava/lang/Object;

    :goto_0
    move-object v4, v0

    check-cast v4, Lkjz;

    iget-object v5, v4, Lkjz;->i:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkkf;

    if-nez v5, :cond_2

    if-eqz v2, :cond_1

    invoke-virtual {v4}, Lkjz;->a()V

    :cond_1
    return-void

    :cond_2
    monitor-enter v0

    :try_start_2
    move-object v4, v0

    check-cast v4, Lkjz;

    iget-boolean v4, v4, Lkjz;->j:Z

    if-eqz v4, :cond_3

    invoke-interface {v5, v1}, Lkkf;->k(Lkpb;)V

    monitor-exit v0

    goto :goto_0

    :cond_3
    move-object v2, v0

    check-cast v2, Lkjz;

    iget-object v2, v2, Lkjz;->h:Ljava/util/Deque;

    invoke-interface {v2, v5}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    const/4 v2, 0x1

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :pswitch_5
    iget-object v0, p0, Lkcu;->a:Ljava/lang/Object;

    check-cast v0, Lkjz;

    invoke-virtual {v0}, Lkjz;->a()V

    return-void

    :pswitch_6
    iget-object v0, p0, Lkcu;->a:Ljava/lang/Object;

    invoke-interface {v0}, Lkad;->close()V

    return-void

    :pswitch_7
    iget-object v0, p0, Lkcu;->a:Ljava/lang/Object;

    check-cast v0, Lkib;

    iget-object v0, v0, Lkib;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkfg;

    invoke-virtual {v2, v1}, Lkfg;->bi(Lkkp;)V

    goto :goto_1

    :cond_4
    return-void

    :pswitch_8
    iget-object v0, p0, Lkcu;->a:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkib;

    iget-object v2, v2, Lkib;->d:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkfg;

    invoke-virtual {v3, v1}, Lkfg;->bi(Lkkp;)V

    goto :goto_2

    :cond_6
    return-void

    :pswitch_9
    iget-object v0, p0, Lkcu;->a:Ljava/lang/Object;

    check-cast v0, Ljuf;

    invoke-virtual {v0}, Ljuf;->close()V

    return-void

    :pswitch_a
    iget-object v0, p0, Lkcu;->a:Ljava/lang/Object;

    check-cast v0, Lkio;

    iget-object v1, v0, Lkio;->d:Lkjn;

    invoke-virtual {v1}, Lkjn;->g()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Lkio;->j:Lkin;

    if-eqz v1, :cond_7

    iget-object v2, v0, Lkio;->h:Lkjc;

    iget-object v3, v0, Lkio;->i:Landroid/os/Handler;

    invoke-virtual {v0, v2, v3}, Lkio;->a(Lkjc;Landroid/os/Handler;)Lkiq;

    move-result-object v0

    invoke-virtual {v1, v0}, Lkin;->e(Lkiq;)V

    :cond_7
    return-void

    :pswitch_b
    iget-object v0, p0, Lkcu;->a:Ljava/lang/Object;

    invoke-interface {v0}, Lkad;->close()V

    return-void

    :pswitch_c
    iget-object v0, p0, Lkcu;->a:Ljava/lang/Object;

    sget-object v1, Lkhh;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    move-object v4, v0

    check-cast v4, Lkhh;

    iget-boolean v4, v4, Lkhh;->d:Z

    if-nez v4, :cond_8

    move-object v2, v0

    check-cast v2, Lkhh;

    iput-boolean v3, v2, Lkhh;->b:Z

    const/4 v2, 0x1

    goto :goto_3

    :cond_8
    :goto_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v2, :cond_9

    check-cast v0, Lkhh;

    invoke-virtual {v0}, Lkhh;->b()V

    :cond_9
    return-void

    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :pswitch_d
    iget-object v0, p0, Lkcu;->a:Ljava/lang/Object;

    sget-object v1, Lkhh;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    move-object v2, v0

    check-cast v2, Lkhh;

    iput-boolean v3, v2, Lkhh;->c:Z

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    check-cast v0, Lkhh;

    invoke-virtual {v0}, Lkhh;->b()V

    return-void

    :catchall_3
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0

    :pswitch_e
    iget-object v0, p0, Lkcu;->a:Ljava/lang/Object;

    sget-object v1, Lkhh;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    move-object v2, v0

    check-cast v2, Lkhh;

    iput-boolean v3, v2, Lkhh;->b:Z

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    check-cast v0, Lkhh;

    invoke-virtual {v0}, Lkhh;->b()V

    return-void

    :catchall_4
    move-exception v0

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v0

    :pswitch_f
    iget-object v0, p0, Lkcu;->a:Ljava/lang/Object;

    :goto_4
    monitor-enter v0

    :try_start_9
    move-object v1, v0

    check-cast v1, Lkfs;

    iget-object v1, v1, Lkfs;->c:Lkea;

    move-object v4, v0

    check-cast v4, Lkfs;

    iget-boolean v4, v4, Lkfs;->e:Z

    move-object v5, v0

    check-cast v5, Lkfs;

    iput-boolean v2, v5, Lkfs;->d:Z

    move-object v5, v0

    check-cast v5, Lkfs;

    iput-boolean v2, v5, Lkfs;->e:Z

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_12

    if-eqz v4, :cond_b

    :try_start_a
    move-object v5, v0

    check-cast v5, Lkfs;

    iget-object v5, v5, Lkfs;->a:Lkgh;

    monitor-enter v5
    :try_end_a
    .catch Lkdf; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_0

    :try_start_b
    iget-object v6, v5, Lkgh;->c:Lkte;

    iget-object v7, v5, Lkgh;->a:Lkht;

    invoke-virtual {v6, v1, v7}, Lkte;->g(Lkea;Lkea;)Lkea;

    move-result-object v1

    iget-object v6, v5, Lkgh;->a:Lkht;

    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    monitor-exit v5

    goto/16 :goto_9

    :cond_a
    monitor-exit v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_a

    :try_start_c
    iget-object v6, v5, Lkgh;->b:Lkhf;

    invoke-virtual {v6}, Lkhf;->a()Lkhd;

    move-result-object v6
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    :try_start_d
    invoke-virtual {v6, v1}, Lkhd;->l(Lkea;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    :try_start_e
    invoke-virtual {v6}, Lkhd;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    :try_start_f
    monitor-enter v5
    :try_end_f
    .catch Lkdf; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_f} :catch_0

    :try_start_10
    invoke-static {v1}, Lkhs;->b(Lkea;)Lkhs;

    move-result-object v1

    iget-object v6, v5, Lkgh;->a:Lkht;

    iget-object v7, v6, Lkht;->a:Ljava/lang/Boolean;

    iput-object v7, v1, Lkhs;->f:Ljava/lang/Boolean;

    iget-object v7, v6, Lkht;->b:Ljava/lang/Boolean;

    iput-object v7, v1, Lkhs;->g:Ljava/lang/Boolean;

    iget-object v6, v6, Lkht;->c:Ljava/lang/Boolean;

    iput-object v6, v1, Lkhs;->h:Ljava/lang/Boolean;

    invoke-virtual {v1}, Lkhs;->d()Lkht;

    move-result-object v1

    invoke-virtual {v5, v1}, Lkgh;->c(Lkht;)V

    monitor-exit v5

    goto/16 :goto_9

    :catchall_5
    move-exception v1

    monitor-exit v5
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    :goto_5
    :try_start_11
    throw v1
    :try_end_11
    .catch Lkdf; {:try_start_11 .. :try_end_11} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_11} :catch_0

    :catchall_6
    move-exception v7

    :try_start_12
    invoke-virtual {v6}, Lkhd;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    goto :goto_6

    :catchall_7
    move-exception v6

    :try_start_13
    invoke-static {v7, v6}, Lklg;->g(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_6
    throw v7
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    :catchall_8
    move-exception v6

    :try_start_14
    monitor-enter v5
    :try_end_14
    .catch Lkdf; {:try_start_14 .. :try_end_14} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_14} :catch_0

    :try_start_15
    invoke-static {v1}, Lkhs;->b(Lkea;)Lkhs;

    move-result-object v1

    iget-object v7, v5, Lkgh;->a:Lkht;

    iget-object v8, v7, Lkht;->a:Ljava/lang/Boolean;

    iput-object v8, v1, Lkhs;->f:Ljava/lang/Boolean;

    iget-object v8, v7, Lkht;->b:Ljava/lang/Boolean;

    iput-object v8, v1, Lkhs;->g:Ljava/lang/Boolean;

    iget-object v7, v7, Lkht;->c:Ljava/lang/Boolean;

    iput-object v7, v1, Lkhs;->h:Ljava/lang/Boolean;

    invoke-virtual {v1}, Lkhs;->d()Lkht;

    move-result-object v1

    invoke-virtual {v5, v1}, Lkgh;->c(Lkht;)V

    monitor-exit v5
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    :try_start_16
    throw v6
    :try_end_16
    .catch Lkdf; {:try_start_16 .. :try_end_16} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_16} :catch_0

    :catchall_9
    move-exception v1

    :try_start_17
    monitor-exit v5
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_9

    goto :goto_5

    :catchall_a
    move-exception v1

    :try_start_18
    monitor-exit v5
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_a

    :try_start_19
    throw v1

    :cond_b
    move-object v5, v0

    check-cast v5, Lkfs;

    iget-object v5, v5, Lkfs;->a:Lkgh;

    monitor-enter v5
    :try_end_19
    .catch Lkdf; {:try_start_19 .. :try_end_19} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_19 .. :try_end_19} :catch_0

    :try_start_1a
    iget-object v6, v5, Lkgh;->c:Lkte;

    iget-object v7, v5, Lkgh;->a:Lkht;

    invoke-virtual {v6, v1, v7}, Lkte;->g(Lkea;Lkea;)Lkea;

    move-result-object v1

    iget-object v6, v5, Lkgh;->a:Lkht;

    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    monitor-exit v5

    goto/16 :goto_9

    :cond_c
    monitor-exit v5
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_10

    :try_start_1b
    iget-object v6, v5, Lkgh;->b:Lkhf;

    invoke-virtual {v6}, Lkhf;->a()Lkhd;

    move-result-object v6
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_e

    :try_start_1c
    invoke-virtual {v6, v1, v3}, Lkhd;->e(Lkea;Z)Lnou;
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_c

    :try_start_1d
    invoke-virtual {v6}, Lkhd;->close()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_e

    :try_start_1e
    monitor-enter v5
    :try_end_1e
    .catch Lkdf; {:try_start_1e .. :try_end_1e} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_1e} :catch_0

    :try_start_1f
    invoke-static {v1}, Lkhs;->b(Lkea;)Lkhs;

    move-result-object v6

    iget-object v7, v5, Lkgh;->a:Lkht;

    invoke-virtual {v5, v7, v1}, Lkgh;->e(Lkht;Lkea;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, v6, Lkhs;->f:Ljava/lang/Boolean;

    iget-object v7, v5, Lkgh;->a:Lkht;

    invoke-virtual {v5, v7, v1}, Lkgh;->d(Lkht;Lkea;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, v6, Lkhs;->g:Ljava/lang/Boolean;

    iget-object v7, v5, Lkgh;->a:Lkht;

    invoke-virtual {v5, v7, v1}, Lkgh;->f(Lkht;Lkea;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v6, Lkhs;->h:Ljava/lang/Boolean;

    invoke-virtual {v6}, Lkhs;->d()Lkht;

    move-result-object v1

    invoke-virtual {v5, v1}, Lkgh;->c(Lkht;)V

    monitor-exit v5

    goto/16 :goto_9

    :catchall_b
    move-exception v1

    monitor-exit v5
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_b

    :goto_7
    :try_start_20
    throw v1
    :try_end_20
    .catch Lkdf; {:try_start_20 .. :try_end_20} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_20} :catch_0

    :catchall_c
    move-exception v7

    :try_start_21
    invoke-virtual {v6}, Lkhd;->close()V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_d

    goto :goto_8

    :catchall_d
    move-exception v6

    :try_start_22
    invoke-static {v7, v6}, Lklg;->g(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_8
    throw v7
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_e

    :catchall_e
    move-exception v6

    :try_start_23
    monitor-enter v5
    :try_end_23
    .catch Lkdf; {:try_start_23 .. :try_end_23} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_23} :catch_0

    :try_start_24
    invoke-static {v1}, Lkhs;->b(Lkea;)Lkhs;

    move-result-object v7

    iget-object v8, v5, Lkgh;->a:Lkht;

    invoke-virtual {v5, v8, v1}, Lkgh;->e(Lkht;Lkea;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iput-object v8, v7, Lkhs;->f:Ljava/lang/Boolean;

    iget-object v8, v5, Lkgh;->a:Lkht;

    invoke-virtual {v5, v8, v1}, Lkgh;->d(Lkht;Lkea;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iput-object v8, v7, Lkhs;->g:Ljava/lang/Boolean;

    iget-object v8, v5, Lkgh;->a:Lkht;

    invoke-virtual {v5, v8, v1}, Lkgh;->f(Lkht;Lkea;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v7, Lkhs;->h:Ljava/lang/Boolean;

    invoke-virtual {v7}, Lkhs;->d()Lkht;

    move-result-object v1

    invoke-virtual {v5, v1}, Lkgh;->c(Lkht;)V

    monitor-exit v5
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_f

    :try_start_25
    throw v6
    :try_end_25
    .catch Lkdf; {:try_start_25 .. :try_end_25} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_25 .. :try_end_25} :catch_0

    :catchall_f
    move-exception v1

    :try_start_26
    monitor-exit v5
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_f

    goto :goto_7

    :catchall_10
    move-exception v1

    :try_start_27
    monitor-exit v5
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_10

    :try_start_28
    throw v1
    :try_end_28
    .catch Lkdf; {:try_start_28 .. :try_end_28} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_28 .. :try_end_28} :catch_0

    :catch_0
    move-exception v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    move-object v5, v0

    check-cast v5, Lkfs;

    iget-object v5, v5, Lkfs;->b:Lkaq;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Interrupted when updating 3a with locksRetained="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4, v1}, Lkaq;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    :catch_1
    move-exception v1

    move-object v5, v0

    check-cast v5, Lkfs;

    iget-object v5, v5, Lkfs;->b:Lkaq;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FrameServer was closed when updating 3a with locksRetained="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4, v1}, Lkaq;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_9
    monitor-enter v0

    :try_start_29
    move-object v1, v0

    check-cast v1, Lkfs;

    iget-boolean v1, v1, Lkfs;->d:Z

    if-nez v1, :cond_d

    move-object v1, v0

    check-cast v1, Lkfs;

    iput-boolean v2, v1, Lkfs;->f:Z

    monitor-exit v0

    return-void

    :cond_d
    monitor-exit v0

    goto/16 :goto_4

    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_11

    throw v1

    :catchall_12
    move-exception v1

    :try_start_2a
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_12

    throw v1

    :pswitch_10
    iget-object v0, p0, Lkcu;->a:Ljava/lang/Object;

    sget-object v1, Lkbo;->l:Lkbo;

    check-cast v0, Lkcx;

    invoke-virtual {v0, v1}, Lkcx;->g(Lkbo;)V

    return-void

    :pswitch_11
    iget-object v0, p0, Lkcu;->a:Ljava/lang/Object;

    invoke-interface {v0}, Lkbw;->a()V

    return-void

    :pswitch_12
    iget-object v0, p0, Lkcu;->a:Ljava/lang/Object;

    :try_start_2b
    check-cast v0, Ljyv;

    iget-object v0, v0, Ljyv;->c:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_2b
    .catch Ljava/lang/RuntimeException; {:try_start_2b .. :try_end_2b} :catch_2

    return-void

    :catch_2
    move-exception v0

    const-string v1, "VideoEncoder"

    const-string v2, "MediaCodec could not stop."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :pswitch_13
    iget-object v0, p0, Lkcu;->a:Ljava/lang/Object;

    sget-object v1, Lkbo;->j:Lkbo;

    invoke-interface {v0, v1}, Lkbw;->c(Lkbo;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
