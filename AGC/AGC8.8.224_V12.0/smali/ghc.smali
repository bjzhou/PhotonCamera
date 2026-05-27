.class public final synthetic Lghc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lckd;I)V
    .locals 0

    iput p2, p0, Lghc;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lghc;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lghd;I)V
    .locals 0

    iput p2, p0, Lghc;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lghc;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lghe;I)V
    .locals 0

    iput p2, p0, Lghc;->b:I

    iput-object p1, p0, Lghc;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lghu;I)V
    .locals 0

    iput p2, p0, Lghc;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lghc;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lglz;I)V
    .locals 0

    iput p2, p0, Lghc;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lghc;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lgob;I)V
    .locals 0

    iput p2, p0, Lghc;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lghc;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lgop;I)V
    .locals 0

    iput p2, p0, Lghc;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lghc;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lgor;I)V
    .locals 0

    iput p2, p0, Lghc;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lghc;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljvk;I)V
    .locals 0

    iput p2, p0, Lghc;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lghc;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget v0, p0, Lghc;->b:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lghc;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lgor;

    iget-object v2, v1, Lgor;->h:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    goto/16 :goto_0

    :pswitch_0
    iget-object v0, p0, Lghc;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lgor;

    iget-object v2, v1, Lgor;->h:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    move-object v2, v0

    check-cast v2, Lgor;

    iget-boolean v2, v2, Lgor;->g:Z

    if-eqz v2, :cond_0

    check-cast v0, Lgor;

    iget-object v0, v0, Lgor;->f:Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitRelightingProcessorInterface;

    invoke-virtual {v0}, Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitRelightingProcessorInterface;->reload()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, v1, Lgor;->h:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, v1, Lgor;->h:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :pswitch_1
    iget-object v0, p0, Lghc;->a:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lgop;

    iget-object v2, v2, Lgop;->h:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    move-object v3, v0

    check-cast v3, Lgop;

    iget-boolean v3, v3, Lgop;->k:Z

    if-eqz v3, :cond_1

    sget-object v0, Lgop;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v1, 0xc44

    invoke-interface {v0, v1}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v1, "init() called on an already initialized PortraitController."

    invoke-interface {v0, v1}, Lnah;->o(Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :cond_1
    move-object v3, v0

    check-cast v3, Lgop;

    iget-object v3, v3, Lgop;->g:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    move-object v4, v0

    check-cast v4, Lgop;

    iget-object v4, v4, Lgop;->l:Lgpc;

    if-eqz v4, :cond_4

    move-object v5, v0

    check-cast v5, Lgop;

    iget-object v5, v5, Lgop;->m:Lgpb;

    if-eqz v5, :cond_4

    invoke-interface {v4}, Lgpc;->a()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-nez v8, :cond_2

    sget-object v4, Lgop;->a:Lnak;

    invoke-virtual {v4}, Lnaf;->c()Lnaz;

    move-result-object v4

    check-cast v4, Lnah;

    const/16 v5, 0xc43

    invoke-interface {v4, v5}, Lnah;->G(I)Lnaz;

    move-result-object v4

    check-cast v4, Lnah;

    const-string v5, "Expected portrait segmenter to be initialized, but it wasn\'t. Initializing again."

    invoke-interface {v4, v5}, Lnah;->o(Ljava/lang/String;)V

    move-object v4, v0

    check-cast v4, Lgop;

    iget-object v4, v4, Lgop;->l:Lgpc;

    invoke-interface {v4}, Lgpc;->b()V

    :cond_2
    move-object v4, v0

    check-cast v4, Lgop;

    iget-object v4, v4, Lgop;->m:Lgpb;

    invoke-interface {v4}, Lgpb;->a()J

    move-result-wide v4

    cmp-long v8, v4, v6

    if-nez v8, :cond_3

    move-object v4, v0

    check-cast v4, Lgop;

    iget-object v4, v4, Lgop;->f:Ldhi;

    sget-object v5, Ldib;->E:Ldhj;

    invoke-interface {v4, v5}, Ldhi;->l(Ldhj;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lgop;->a:Lnak;

    invoke-virtual {v4}, Lnaf;->c()Lnaz;

    move-result-object v4

    check-cast v4, Lnah;

    const/16 v5, 0xc42

    invoke-interface {v4, v5}, Lnah;->G(I)Lnaz;

    move-result-object v4

    check-cast v4, Lnah;

    const-string v5, "Expected portrait relighting processor to be initialized, but it wasn\'t. Initializing again."

    invoke-interface {v4, v5}, Lnah;->o(Ljava/lang/String;)V

    move-object v4, v0

    check-cast v4, Lgop;

    iget-object v4, v4, Lgop;->m:Lgpb;

    invoke-interface {v4}, Lgpb;->d()V

    :cond_3
    check-cast v0, Lgop;

    iput-boolean v1, v0, Lgop;->k:Z

    :cond_4
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    return-void

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0

    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :pswitch_2
    iget-object v0, p0, Lghc;->a:Ljava/lang/Object;

    check-cast v0, Lckd;

    invoke-virtual {v0}, Lckd;->b()V

    return-void

    :pswitch_3
    iget-object v0, p0, Lghc;->a:Ljava/lang/Object;

    check-cast v0, Lgob;

    iget-object v0, v0, Lgob;->a:Lflf;

    sget-object v1, Lika;->g:Lika;

    invoke-interface {v0, v1}, Lflf;->b(Lika;)Z

    return-void

    :pswitch_4
    iget-object v0, p0, Lghc;->a:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lglz;

    iget-object v3, v2, Lglz;->c:Lkaq;

    const-string v4, "Closing one camera."

    invoke-interface {v3, v4}, Lkaq;->f(Ljava/lang/String;)V

    iget-object v3, v2, Lglz;->d:Ljve;

    iget-object v4, v2, Lglz;->a:Ljuf;

    const-string v5, "Low Priority OneCameraLifetime"

    invoke-static {v3, v4, v5}, Ljvh;->a(Ljve;Lkad;Ljava/lang/String;)V

    iget-object v3, v2, Lglz;->d:Ljve;

    iget-object v4, v2, Lglz;->b:Ljuf;

    const-string v5, "Critical Path OneCameraLifetime"

    invoke-static {v3, v4, v5}, Ljvh;->a(Ljve;Lkad;Ljava/lang/String;)V

    monitor-enter v0

    :try_start_6
    move-object v3, v0

    check-cast v3, Lglz;

    iget-object v3, v3, Lglz;->e:Lnou;

    if-eqz v3, :cond_5

    invoke-interface {v3, v1}, Lnou;->cancel(Z)Z

    :cond_5
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    iget-object v0, v2, Lglz;->c:Lkaq;

    const-string v1, "OneCamera closed."

    invoke-interface {v0, v1}, Lkaq;->f(Ljava/lang/String;)V

    return-void

    :catchall_3
    move-exception v1

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v1

    :pswitch_5
    iget-object v0, p0, Lghc;->a:Ljava/lang/Object;

    sget-object v1, Lgje;->a:[B

    check-cast v0, Ljvk;

    invoke-virtual {v0, v1}, Ljvk;->bn(Ljava/lang/Object;)V

    return-void

    :pswitch_6
    iget-object v0, p0, Lghc;->a:Ljava/lang/Object;

    check-cast v0, Lghu;

    iget-object v0, v0, Lghu;->a:Lgvu;

    invoke-interface {v0}, Lgvu;->a()Lnou;

    move-result-object v0

    new-instance v1, Lghr;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lghr;-><init>(I)V

    sget-object v2, Lnnv;->a:Lnnv;

    invoke-static {v0, v1, v2}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    return-void

    :pswitch_7
    iget-object v0, p0, Lghc;->a:Ljava/lang/Object;

    check-cast v0, Lghe;

    iget-object v0, v0, Lghe;->b:Ljvs;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    iget-object v0, p0, Lghc;->a:Ljava/lang/Object;

    check-cast v0, Lghe;

    invoke-virtual {v0}, Lghe;->c()V

    iget-object v0, p0, Lghc;->a:Ljava/lang/Object;

    check-cast v0, Lghe;

    iget-object v0, v0, Lghe;->i:Lnph;

    if-eqz v0, :cond_6

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnph;->e(Ljava/lang/Object;)Z

    :cond_6
    return-void

    :pswitch_8
    iget-object v0, p0, Lghc;->a:Ljava/lang/Object;

    check-cast v0, Lghd;

    iget-object v1, v0, Lghd;->d:Lghe;

    iget-object v1, v1, Lghe;->a:Lmqp;

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhrd;

    sget-object v2, Lhrc;->a:Lhrc;

    invoke-interface {v1, v2}, Lhrd;->j(Lhrc;)V

    iget-object v0, v0, Lghd;->d:Lghe;

    iget-object v0, v0, Lghe;->c:Lken;

    invoke-static {}, Lbze;->n()Lkfh;

    move-result-object v1

    invoke-interface {v0, v1}, Lken;->k(Lkfh;)V

    return-void

    :pswitch_9
    iget-object v0, p0, Lghc;->a:Ljava/lang/Object;

    check-cast v0, Lghd;

    iget-object v0, v0, Lghd;->d:Lghe;

    iget-object v0, v0, Lghe;->c:Lken;

    invoke-static {}, Lbze;->m()Lkfh;

    move-result-object v1

    invoke-interface {v0, v1}, Lken;->k(Lkfh;)V

    return-void

    :pswitch_a
    iget-object v0, p0, Lghc;->a:Ljava/lang/Object;

    check-cast v0, Lghd;

    iget-object v0, v0, Lghd;->d:Lghe;

    iget-object v0, v0, Lghe;->a:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhrd;

    sget-object v1, Lhrc;->a:Lhrc;

    invoke-interface {v0, v1}, Lhrd;->j(Lhrc;)V

    return-void

    :pswitch_b
    iget-object v0, p0, Lghc;->a:Ljava/lang/Object;

    check-cast v0, Lghd;

    iget-object v1, v0, Lghd;->d:Lghe;

    iget-object v1, v1, Lghe;->a:Lmqp;

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhrd;

    sget-object v2, Lhrc;->a:Lhrc;

    invoke-interface {v1, v2}, Lhrd;->j(Lhrc;)V

    iget-object v0, v0, Lghd;->d:Lghe;

    iget-object v0, v0, Lghe;->c:Lken;

    invoke-static {}, Lbze;->l()Lkfh;

    move-result-object v1

    invoke-interface {v0, v1}, Lken;->k(Lkfh;)V

    return-void

    :pswitch_c
    iget-object v0, p0, Lghc;->a:Ljava/lang/Object;

    check-cast v0, Lghd;

    iget-object v0, v0, Lghd;->d:Lghe;

    iget-object v0, v0, Lghe;->a:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhrd;

    sget-object v1, Lhrc;->a:Lhrc;

    invoke-interface {v0, v1}, Lhrd;->j(Lhrc;)V

    return-void

    :goto_0
    :try_start_8
    move-object v2, v0

    check-cast v2, Lgor;

    iget-boolean v2, v2, Lgor;->g:Z

    if-eqz v2, :cond_7

    check-cast v0, Lgor;

    iget-object v0, v0, Lgor;->f:Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitRelightingProcessorInterface;

    invoke-virtual {v0}, Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitRelightingProcessorInterface;->unload()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :cond_7
    iget-object v0, v1, Lgor;->h:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_4
    move-exception v0

    iget-object v1, v1, Lgor;->h:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
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
