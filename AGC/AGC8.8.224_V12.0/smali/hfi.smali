.class public final synthetic Lhfi;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcoi;I[B)V
    .locals 0

    iput p2, p0, Lhfi;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhfi;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhey;I)V
    .locals 0

    iput p2, p0, Lhfi;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhfi;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhfq;I)V
    .locals 0

    iput p2, p0, Lhfi;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhfi;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhfs;I)V
    .locals 0

    iput p2, p0, Lhfi;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhfi;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhgn;I)V
    .locals 0

    iput p2, p0, Lhfi;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhfi;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhgw;I)V
    .locals 0

    iput p2, p0, Lhfi;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhfi;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhha;I)V
    .locals 0

    iput p2, p0, Lhfi;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhfi;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhhh;I)V
    .locals 0

    iput p2, p0, Lhfi;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhfi;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhhr;I)V
    .locals 0

    iput p2, p0, Lhfi;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhfi;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhig;I)V
    .locals 0

    iput p2, p0, Lhfi;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhfi;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhij;I)V
    .locals 0

    iput p2, p0, Lhfi;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhfi;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhim;I)V
    .locals 0

    iput p2, p0, Lhfi;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhfi;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhjb;I)V
    .locals 0

    iput p2, p0, Lhfi;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhfi;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhls;I)V
    .locals 0

    iput p2, p0, Lhfi;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhfi;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, Lhfi;->b:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lhfi;->a:Ljava/lang/Object;

    check-cast v0, Lhls;

    iget-object v2, v0, Lhls;->d:Lfbz;

    invoke-interface {v2, v1}, Lfbz;->aj(I)V

    iget-object v1, v0, Lhls;->b:Landroid/content/Context;

    iget-object v2, v0, Lhls;->e:Ldhi;

    invoke-static {v1, v2}, Lhlq;->a(Landroid/content/Context;Ldhi;)Landroid/content/Intent;

    move-result-object v1

    iget-object v0, v0, Lhls;->c:Lgus;

    invoke-interface {v0, v1}, Lgus;->g(Landroid/content/Intent;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lhfi;->a:Ljava/lang/Object;

    check-cast v0, Lhjb;

    invoke-virtual {v0}, Lhjb;->a()V

    return-void

    :pswitch_1
    iget-object v0, p0, Lhfi;->a:Ljava/lang/Object;

    check-cast v0, Lhim;

    invoke-virtual {v0}, Lhim;->e()V

    return-void

    :pswitch_2
    iget-object v0, p0, Lhfi;->a:Ljava/lang/Object;

    check-cast v0, Lhij;

    iput-boolean v2, v0, Lhij;->e:Z

    return-void

    :pswitch_3
    iget-object v0, p0, Lhfi;->a:Ljava/lang/Object;

    check-cast v0, Lhij;

    iput-boolean v2, v0, Lhij;->f:Z

    return-void

    :pswitch_4
    iget-object v0, p0, Lhfi;->a:Ljava/lang/Object;

    check-cast v0, Lhig;

    iput-boolean v2, v0, Lhig;->f:Z

    iget-boolean v1, v0, Lhig;->e:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lhig;->e()V

    :cond_0
    return-void

    :pswitch_5
    iget-object v0, p0, Lhfi;->a:Ljava/lang/Object;

    check-cast v0, Lhig;

    invoke-virtual {v0}, Lhig;->j()Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    iget-object v2, v0, Lhig;->d:Lgeh;

    invoke-interface {v2}, Lgeh;->a()Landroid/view/View;

    move-result-object v2

    iget-object v4, v0, Lhig;->a:Landroid/content/Context;

    const v5, 0x7f140566

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lifx;

    invoke-direct {v5, v4}, Lifx;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Lifx;->r(Landroid/view/View;)V

    invoke-interface {v5}, Lify;->i()V

    invoke-interface {v5}, Lifz;->k()V

    new-instance v2, Lfeo;

    invoke-direct {v2, v0, v1}, Lfeo;-><init>(Lhig;I)V

    invoke-interface {v5, v2}, Liga;->d(Ljava/util/function/Supplier;)V

    new-instance v1, Lhfi;

    const/16 v2, 0xd

    invoke-direct {v1, v0, v2}, Lhfi;-><init>(Lhig;I)V

    iget-object v2, v0, Lhig;->b:Ljuh;

    invoke-interface {v5, v1, v2}, Liga;->g(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    const/16 v1, 0x12c

    iput v1, v5, Lifx;->d:I

    invoke-interface {v5}, Liga;->l()V

    const/16 v1, 0x1388

    iput v1, v5, Lifx;->e:I

    iput-boolean v3, v5, Lifx;->f:Z

    iput-boolean v3, v5, Lifx;->h:Z

    iget-object v1, v0, Lhig;->c:Lell;

    iput-object v1, v5, Lifx;->i:Lell;

    const/4 v1, 0x4

    iput v1, v5, Lifx;->m:I

    invoke-interface {v5}, Liga;->a()Lkad;

    move-result-object v1

    iput-object v1, v0, Lhig;->g:Lkad;

    return-void

    :pswitch_6
    iget-object v0, p0, Lhfi;->a:Ljava/lang/Object;

    check-cast v0, Lhig;

    iput-boolean v2, v0, Lhig;->e:Z

    return-void

    :pswitch_7
    iget-object v0, p0, Lhfi;->a:Ljava/lang/Object;

    check-cast v0, Lcoi;

    iget-object v1, v0, Lcoi;->a:Ljava/lang/Object;

    check-cast v1, Lhhr;

    iget-object v1, v1, Lhhr;->f:Lkbc;

    const-string v3, "SEController#warmupModel"

    invoke-interface {v1, v3}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v1, v0, Lcoi;->a:Ljava/lang/Object;

    check-cast v1, Lhhr;

    iget-object v1, v1, Lhhr;->i:Lj$/nio/file/Path;

    invoke-static {v1, v2}, Lcom/google/babelfish/device/avenh/l2l/speechenhancer2/jni/SpeechEnhancerJniWrapperRealtime;->modelWarmup(Lj$/nio/file/Path;Z)V

    iget-object v0, v0, Lcoi;->a:Ljava/lang/Object;

    check-cast v0, Lhhr;

    iget-object v0, v0, Lhhr;->f:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    return-void

    :pswitch_8
    iget-object v0, p0, Lhfi;->a:Ljava/lang/Object;

    check-cast v0, Lhhr;

    iget-object v0, v0, Lhhr;->l:Ljew;

    iget-object v0, v0, Ljew;->a:Ljava/lang/Object;

    invoke-interface {v0}, Lmon;->a()V

    return-void

    :pswitch_9
    iget-object v0, p0, Lhfi;->a:Ljava/lang/Object;

    check-cast v0, Lhhr;

    invoke-virtual {v0}, Lhhr;->c()V

    iget-object v1, v0, Lhhr;->f:Lkbc;

    const-string v2, "SEController#initLibrary"

    invoke-interface {v1, v2}, Lkbc;->a(Ljava/lang/String;)Lkbf;

    move-result-object v1

    iget-object v2, v0, Lhhr;->c:Lnow;

    new-instance v4, Lmom;

    invoke-direct {v4, v3}, Lmom;-><init>(I)V

    invoke-interface {v2, v4}, Lnow;->b(Ljava/util/concurrent/Callable;)Lnou;

    move-result-object v2

    new-instance v3, Lcoi;

    const/4 v4, 0x6

    invoke-direct {v3, v0, v1, v4}, Lcoi;-><init>(Lhhr;Lkbf;I)V

    sget-object v0, Lnnv;->a:Lnnv;

    invoke-static {v2, v3, v0}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    return-void

    :pswitch_a
    iget-object v0, p0, Lhfi;->a:Ljava/lang/Object;

    check-cast v0, Lhhr;

    iget-object v0, v0, Lhhr;->l:Ljew;

    iget-object v0, v0, Ljew;->a:Ljava/lang/Object;

    invoke-interface {v0}, Lmon;->g()V

    return-void

    :pswitch_b
    iget-object v0, p0, Lhfi;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lhhh;

    iget-object v1, v1, Lhhh;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    move-object v2, v0

    check-cast v2, Lhhh;

    iget-boolean v2, v2, Lhhh;->d:Z

    if-nez v2, :cond_2

    check-cast v0, Lhhh;

    invoke-virtual {v0}, Lhhh;->g()Landroid/media/SoundPool;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/SoundPool;->autoResume()V

    :cond_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_c
    iget-object v0, p0, Lhfi;->a:Ljava/lang/Object;

    check-cast v0, Lhha;

    invoke-virtual {v0}, Lhha;->h()V

    return-void

    :pswitch_d
    iget-object v0, p0, Lhfi;->a:Ljava/lang/Object;

    check-cast v0, Lhgw;

    iget-object v1, v0, Lhgw;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v2, v0, Lhgw;->n:Landroid/view/View;

    iget-object v4, v0, Lhgw;->l:Liko;

    iget-object v5, v0, Lhgw;->e:Lmrl;

    invoke-interface {v5}, Lmrl;->a()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lhyt;

    iget-object v5, v5, Lhyt;->a:Lhys;

    iget-object v5, v5, Lhys;->i:Lhyn;

    invoke-virtual {v0, v4, v5}, Lhgw;->j(Liko;Lhyn;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lhgw;->m(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v0, v0, Lhgw;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    return-void

    :pswitch_e
    iget-object v0, p0, Lhfi;->a:Ljava/lang/Object;

    check-cast v0, Lhfs;

    iget-object v0, v0, Lhfs;->b:Lnph;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnph;->e(Ljava/lang/Object;)Z

    return-void

    :pswitch_f
    iget-object v0, p0, Lhfi;->a:Ljava/lang/Object;

    invoke-interface {v0}, Lhfh;->k()V

    return-void

    :pswitch_10
    iget-object v0, p0, Lhfi;->a:Ljava/lang/Object;

    invoke-interface {v0}, Lhgn;->f()V

    return-void

    :pswitch_11
    iget-object v0, p0, Lhfi;->a:Ljava/lang/Object;

    invoke-interface {v0}, Lhgn;->g()V

    return-void

    :pswitch_12
    iget-object v0, p0, Lhfi;->a:Ljava/lang/Object;

    check-cast v0, Lhey;

    invoke-virtual {v0, v3}, Lhey;->g(Z)V

    return-void

    :pswitch_13
    iget-object v0, p0, Lhfi;->a:Ljava/lang/Object;

    check-cast v0, Lhfq;

    invoke-virtual {v0}, Lhfq;->j()V

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
