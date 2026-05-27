.class public final synthetic Lguy;
.super Ljava/lang/Object;

# interfaces
.implements Lkai;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lguz;I)V
    .locals 0

    iput p2, p0, Lguy;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lguy;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lgvi;I)V
    .locals 0

    iput p2, p0, Lguy;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lguy;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhal;I)V
    .locals 0

    iput p2, p0, Lguy;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lguy;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhcq;I)V
    .locals 0

    iput p2, p0, Lguy;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lguy;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhdf;I)V
    .locals 0

    iput p2, p0, Lguy;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lguy;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhey;I)V
    .locals 0

    iput p2, p0, Lguy;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lguy;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhfq;I)V
    .locals 0

    iput p2, p0, Lguy;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lguy;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhij;I)V
    .locals 0

    iput p2, p0, Lguy;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lguy;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhmb;I)V
    .locals 0

    iput p2, p0, Lguy;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lguy;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lken;I)V
    .locals 0

    iput p2, p0, Lguy;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lguy;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final bn(Ljava/lang/Object;)V
    .locals 6

    iget v0, p0, Lguy;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lguy;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    monitor-enter v0

    goto/16 :goto_1

    :pswitch_0
    iget-object v0, p0, Lguy;->a:Ljava/lang/Object;

    check-cast p1, Lklv;

    check-cast v0, Lhij;

    invoke-virtual {v0}, Lhij;->j()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, v0, Lhij;->b:Lgeh;

    invoke-interface {p1}, Lgeh;->a()Landroid/view/View;

    move-result-object p1

    iget-object v4, v0, Lhij;->a:Landroid/content/Context;

    const v5, 0x7f140566

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lifx;

    invoke-direct {v5, v4}, Lifx;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Lifx;->r(Landroid/view/View;)V

    invoke-interface {v5}, Lify;->i()V

    invoke-interface {v5}, Lifz;->k()V

    new-instance p1, Lfeo;

    invoke-direct {p1, v0, v2}, Lfeo;-><init>(Lhij;I)V

    invoke-interface {v5, p1}, Liga;->d(Ljava/util/function/Supplier;)V

    new-instance p1, Lhfi;

    const/16 v4, 0x11

    invoke-direct {p1, v0, v4}, Lhfi;-><init>(Lhij;I)V

    iget-object v4, v0, Lhij;->c:Ljuh;

    invoke-interface {v5, p1, v4}, Liga;->g(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    const/16 p1, 0x12c

    iput p1, v5, Lifx;->d:I

    invoke-interface {v5}, Liga;->l()V

    const/16 p1, 0x1388

    iput p1, v5, Lifx;->e:I

    iput-boolean v1, v5, Lifx;->f:Z

    iput-boolean v3, v5, Lifx;->h:Z

    iget-object p1, v0, Lhij;->d:Lell;

    iput-object p1, v5, Lifx;->i:Lell;

    iput v2, v5, Lifx;->m:I

    invoke-interface {v5}, Liga;->a()Lkad;

    move-result-object p1

    iput-object p1, v0, Lhij;->g:Lkad;

    return-void

    :pswitch_1
    iget-object v0, p0, Lguy;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lhft;->d:Lhft;

    check-cast v0, Lhey;

    invoke-virtual {v0, p1}, Lhey;->j(Lhft;)V

    return-void

    :cond_1
    sget-object p1, Lhft;->d:Lhft;

    check-cast v0, Lhey;

    invoke-virtual {v0, p1}, Lhey;->k(Lhft;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lguy;->a:Ljava/lang/Object;

    check-cast p1, Lika;

    check-cast v0, Lhfq;

    invoke-virtual {v0}, Lhfq;->j()V

    return-void

    :pswitch_3
    iget-object v0, p0, Lguy;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/2addr p1, v3

    sget-object v1, Lhde;->e:Lhde;

    check-cast v0, Lhdf;

    invoke-virtual {v0, v1, p1}, Lhdf;->b(Lhde;Z)V

    return-void

    :pswitch_4
    iget-object v0, p0, Lguy;->a:Ljava/lang/Object;

    check-cast p1, Lika;

    invoke-static {}, Ljuh;->a()V

    check-cast v0, Lhcq;

    iget-object v2, v0, Lhcq;->o:Lika;

    invoke-virtual {v2, p1}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iput-object p1, v0, Lhcq;->o:Lika;

    new-instance p1, Lhch;

    invoke-direct {p1, v0, v1}, Lhch;-><init>(Lhcq;I)V

    invoke-virtual {v0, p1}, Lhcq;->h(Lhco;)V

    :cond_2
    return-void

    :pswitch_5
    iget-object v0, p0, Lguy;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    new-instance v1, Lhch;

    invoke-direct {v1, p1, v2}, Lhch;-><init>(Ljava/lang/Boolean;I)V

    check-cast v0, Lhcq;

    invoke-virtual {v0, v1}, Lhcq;->h(Lhco;)V

    return-void

    :pswitch_6
    iget-object v0, p0, Lguy;->a:Ljava/lang/Object;

    check-cast p1, Lgyu;

    new-instance v1, Lhch;

    const/4 v2, 0x3

    invoke-direct {v1, p1, v2}, Lhch;-><init>(Lgyu;I)V

    check-cast v0, Lhcq;

    invoke-virtual {v0, v1}, Lhcq;->h(Lhco;)V

    return-void

    :pswitch_7
    iget-object v0, p0, Lguy;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    check-cast v0, Lhal;

    invoke-virtual {v0}, Lhal;->c()V

    return-void

    :pswitch_8
    iget-object v0, p0, Lguy;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    check-cast v0, Lhal;

    invoke-virtual {v0}, Lhal;->c()V

    return-void

    :pswitch_9
    iget-object v0, p0, Lguy;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    check-cast v0, Lhal;

    invoke-virtual {v0}, Lhal;->c()V

    return-void

    :pswitch_a
    iget-object v0, p0, Lguy;->a:Ljava/lang/Object;

    check-cast p1, Lhxi;

    check-cast v0, Lhal;

    invoke-virtual {v0}, Lhal;->c()V

    return-void

    :pswitch_b
    iget-object v0, p0, Lguy;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    check-cast v0, Lhal;

    invoke-virtual {v0}, Lhal;->c()V

    return-void

    :pswitch_c
    iget-object v0, p0, Lguy;->a:Ljava/lang/Object;

    check-cast p1, Ldbw;

    iget-object p1, p1, Ldbw;->c:Lfuz;

    invoke-virtual {p1}, Lklw;->k()Lklv;

    move-result-object p1

    sget-object v2, Lklv;->a:Lklv;

    if-ne p1, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    :goto_0
    check-cast v0, Lgvi;

    iput-boolean v1, v0, Lgvi;->b:Z

    invoke-virtual {v0}, Lgvi;->c()V

    return-void

    :pswitch_d
    iget-object v0, p0, Lguy;->a:Ljava/lang/Object;

    check-cast p1, Lika;

    check-cast v0, Lgvi;

    invoke-virtual {v0}, Lgvi;->c()V

    return-void

    :pswitch_e
    iget-object v0, p0, Lguy;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    check-cast v0, Lgvi;

    invoke-virtual {v0}, Lgvi;->c()V

    return-void

    :pswitch_f
    iget-object v0, p0, Lguy;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    check-cast v0, Lgvi;

    invoke-virtual {v0}, Lgvi;->c()V

    return-void

    :pswitch_10
    iget-object v0, p0, Lguy;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    check-cast v0, Lgvi;

    invoke-virtual {v0}, Lgvi;->c()V

    return-void

    :pswitch_11
    iget-object v0, p0, Lguy;->a:Ljava/lang/Object;

    check-cast p1, Ldbw;

    move-object v1, v0

    check-cast v1, Lguz;

    iget-object v1, v1, Lguz;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, Ldbw;->b()Z

    move-result p1

    move-object v2, v0

    check-cast v2, Lguz;

    iput-boolean p1, v2, Lguz;->d:Z

    move-object p1, v0

    check-cast p1, Lguz;

    iput-boolean v3, p1, Lguz;->c:Z

    move-object p1, v0

    check-cast p1, Lguz;

    iget-object p1, p1, Lguz;->e:Landroid/os/Handler;

    move-object v2, v0

    check-cast v2, Lguz;

    iget-object v2, v2, Lguz;->k:Ljava/lang/Runnable;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_4

    move-object p1, v0

    check-cast p1, Lguz;

    iget-object p1, p1, Lguz;->e:Landroid/os/Handler;

    move-object v2, v0

    check-cast v2, Lguz;

    iget-object v2, v2, Lguz;->k:Ljava/lang/Runnable;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_4
    move-object p1, v0

    check-cast p1, Lguz;

    iget-object p1, p1, Lguz;->a:Lika;

    check-cast v0, Lguz;

    invoke-virtual {v0, p1}, Lguz;->b(Lika;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :pswitch_12
    iget-object v0, p0, Lguy;->a:Ljava/lang/Object;

    check-cast p1, Lfwn;

    invoke-static {p1}, Lgmf;->b(Lfwn;)Ljava/util/Set;

    move-result-object p1

    invoke-static {v0, p1}, Lgmf;->c(Lken;Ljava/util/Set;)V

    return-void

    :pswitch_13
    iget-object v0, p0, Lguy;->a:Ljava/lang/Object;

    check-cast p1, Lika;

    move-object v1, v0

    check-cast v1, Lguz;

    iget-object v1, v1, Lguz;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    move-object v2, v0

    check-cast v2, Lguz;

    iput-object p1, v2, Lguz;->a:Lika;

    check-cast v0, Lguz;

    invoke-virtual {v0, p1}, Lguz;->b(Lika;)V

    monitor-exit v1

    return-void

    :catchall_1
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :goto_1
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    move-object p1, v0

    check-cast p1, Lhmb;

    iget-boolean p1, p1, Lhmb;->b:Z

    if-eqz p1, :cond_5

    move-object p1, v0

    check-cast p1, Lhmb;

    invoke-virtual {p1}, Lhmb;->d()V

    :cond_5
    monitor-exit v0

    return-void

    :catchall_2
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p1

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
