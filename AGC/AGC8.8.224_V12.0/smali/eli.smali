.class public final synthetic Leli;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lchh;I)V
    .locals 0

    iput p2, p0, Leli;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leli;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/apps/camera/keepalive/ProcessGcService;I)V
    .locals 0

    iput p2, p0, Leli;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leli;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lelj;I)V
    .locals 0

    iput p2, p0, Leli;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leli;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lenc;I)V
    .locals 0

    iput p2, p0, Leli;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leli;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lenn;I)V
    .locals 0

    iput p2, p0, Leli;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leli;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Leop;I)V
    .locals 0

    iput p2, p0, Leli;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leli;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lepb;I)V
    .locals 0

    iput p2, p0, Leli;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leli;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lepd;I)V
    .locals 0

    iput p2, p0, Leli;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leli;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lepk;I)V
    .locals 0

    iput p2, p0, Leli;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leli;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lepx;I)V
    .locals 0

    iput p2, p0, Leli;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leli;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lert;I)V
    .locals 0

    iput p2, p0, Leli;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leli;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/FileOutputStream;I)V
    .locals 0

    iput p2, p0, Leli;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leli;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Runnable;I)V
    .locals 0

    iput p2, p0, Leli;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leli;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    iput p2, p0, Leli;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leli;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lkpb;I)V
    .locals 0

    iput p2, p0, Leli;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leli;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Logd;I)V
    .locals 0

    iput p2, p0, Leli;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leli;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 19

    move-object/from16 v1, p0

    iget v0, v1, Leli;->b:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    packed-switch v0, :pswitch_data_0

    iget-object v0, v1, Leli;->a:Ljava/lang/Object;

    check-cast v0, Lert;

    iget-object v0, v0, Lert;->Q:Logd;

    invoke-interface {v0}, Logd;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lipk;

    invoke-interface {v0}, Lipk;->f()V

    return-void

    :pswitch_0
    iget-object v0, v1, Leli;->a:Ljava/lang/Object;

    invoke-interface {v0}, Lchh;->g()V

    return-void

    :pswitch_1
    iget-object v0, v1, Leli;->a:Ljava/lang/Object;

    invoke-interface {v0}, Logd;->get()Ljava/lang/Object;

    return-void

    :pswitch_2
    iget-object v0, v1, Leli;->a:Ljava/lang/Object;

    invoke-interface {v0}, Lkpb;->close()V

    return-void

    :pswitch_3
    iget-object v0, v1, Leli;->a:Ljava/lang/Object;

    check-cast v0, Lepx;

    iget-object v0, v0, Lepx;->c:Lcmo;

    sget-object v2, Lika;->l:Lika;

    invoke-interface {v0, v2}, Lcmo;->f(Lika;)V

    return-void

    :pswitch_4
    iget-object v0, v1, Leli;->a:Ljava/lang/Object;

    check-cast v0, Lepx;

    iget-object v2, v0, Lepx;->b:Ljwb;

    invoke-interface {v2}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leqg;

    sget-object v3, Leqg;->c:Leqg;

    invoke-virtual {v2, v3}, Leqg;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lepx;->b:Ljwb;

    sget-object v3, Leqg;->c:Leqg;

    invoke-interface {v2, v3}, Ljwb;->bn(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, v0, Lepx;->a:Lflf;

    sget-object v2, Lika;->l:Lika;

    invoke-interface {v0, v2}, Lflf;->b(Lika;)Z

    return-void

    :pswitch_5
    iget-object v0, v1, Leli;->a:Ljava/lang/Object;

    if-eqz v0, :cond_1

    check-cast v0, Lepd;

    invoke-virtual {v0}, Lepd;->d()V

    :cond_1
    return-void

    :pswitch_6
    iget-object v0, v1, Leli;->a:Ljava/lang/Object;

    sget-object v2, Lepo;->a:Lnak;

    invoke-virtual {v2}, Lnaf;->c()Lnaz;

    move-result-object v2

    check-cast v2, Lnah;

    const/16 v3, 0x6f5

    invoke-interface {v2, v3}, Lnah;->G(I)Lnaz;

    move-result-object v2

    check-cast v2, Lnah;

    const-string v3, "onPslDone: %s not executed"

    invoke-interface {v2, v3, v0}, Lnah;->r(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :pswitch_7
    iget-object v0, v1, Leli;->a:Ljava/lang/Object;

    check-cast v0, Lepk;

    iput-boolean v3, v0, Lepk;->f:Z

    return-void

    :pswitch_8
    iget-object v2, v1, Leli;->a:Ljava/lang/Object;

    :try_start_0
    move-object v0, v2

    check-cast v0, Lepk;

    iget-object v0, v0, Lepk;->c:Lnph;

    invoke-virtual {v0}, Lnph;->isDone()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v2

    check-cast v0, Lepk;

    iget-boolean v0, v0, Lepk;->f:Z

    if-nez v0, :cond_2

    move-object v0, v2

    check-cast v0, Lepk;

    iget-object v0, v0, Lepk;->g:Lepl;

    iget-object v0, v0, Lepl;->e:Lkbc;

    move-object v3, v2

    check-cast v3, Lepk;

    iget v3, v3, Lepk;->d:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MotionBlur#task-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lkbc;->a(Ljava/lang/String;)Lkbf;

    move-result-object v0

    move-object v3, v2

    check-cast v3, Lepk;

    iput-object v0, v3, Lepk;->e:Lkbf;

    move-object v0, v2

    check-cast v0, Lepk;

    iget-object v0, v0, Lepk;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    move-object v0, v2

    check-cast v0, Lepk;

    iget-object v0, v0, Lepk;->c:Lnph;

    invoke-virtual {v0, v4}, Lnph;->e(Ljava/lang/Object;)Z

    return-void

    :cond_2
    sget-object v0, Lepl;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v3, 0x6e3

    invoke-interface {v0, v3}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v3, "Cannot execute, already done %s"

    move-object v4, v2

    check-cast v4, Lepk;

    iget v4, v4, Lepk;->d:I

    invoke-interface {v0, v3, v4}, Lnah;->p(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    check-cast v2, Lepk;

    invoke-virtual {v2}, Lepk;->e()V

    iget-object v3, v2, Lepk;->c:Lnph;

    invoke-virtual {v3, v0}, Lnph;->a(Ljava/lang/Throwable;)Z

    iget-object v2, v2, Lepk;->a:Lnph;

    invoke-virtual {v2, v0}, Lnph;->a(Ljava/lang/Throwable;)Z

    return-void

    :pswitch_9
    iget-object v0, v1, Leli;->a:Ljava/lang/Object;

    check-cast v0, Lepk;

    invoke-virtual {v0, v3}, Lepk;->c(Z)V

    return-void

    :pswitch_a
    iget-object v0, v1, Leli;->a:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    :pswitch_b
    iget-object v0, v1, Leli;->a:Ljava/lang/Object;

    check-cast v0, Lepb;

    iget-object v0, v0, Lepb;->e:Ljvk;

    invoke-virtual {v0, v4}, Ljvk;->bn(Ljava/lang/Object;)V

    return-void

    :pswitch_c
    iget-object v0, v1, Leli;->a:Ljava/lang/Object;

    :try_start_1
    move-object v2, v0

    check-cast v2, Lepb;

    iget-object v2, v2, Lepb;->j:Lkbc;

    const-string v3, "MotionBlur#initialize"

    invoke-interface {v2, v3}, Lkbc;->e(Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, Lepb;

    iget-object v2, v2, Lepb;->g:Lklj;

    invoke-interface {v2}, Lklj;->g()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3, v3}, Lkaf;->h(II)Lkaf;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkll;

    move-object v6, v0

    check-cast v6, Lepb;

    iget-object v6, v6, Lepb;->g:Lklj;

    invoke-interface {v6, v5}, Lklj;->a(Lkll;)Lkli;

    move-result-object v5

    invoke-static {v3, v5}, Lepb;->i(Lkaf;Lkli;)Lkaf;

    move-result-object v3

    invoke-interface {v5}, Lkli;->M()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Lkli;->D()Z

    move-result v6

    if-eqz v6, :cond_3

    check-cast v5, Lklh;

    iget-object v5, v5, Lklh;->b:Lmwn;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkll;

    move-object v7, v0

    check-cast v7, Lepb;

    iget-object v7, v7, Lepb;->g:Lklj;

    invoke-interface {v7, v6}, Lklj;->a(Lkll;)Lkli;

    move-result-object v6

    invoke-static {v3, v6}, Lepb;->i(Lkaf;Lkli;)Lkaf;

    move-result-object v3

    goto :goto_0

    :cond_4
    move-object v2, v0

    check-cast v2, Lepb;

    iget-object v2, v2, Lepb;->k:Lgpc;

    invoke-interface {v2}, Lgpc;->a()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-nez v2, :cond_5

    move-object v2, v0

    check-cast v2, Lepb;

    iget-object v2, v2, Lepb;->j:Lkbc;

    const-string v5, "PortraitSegmenter#init"

    invoke-interface {v2, v5}, Lkbc;->e(Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, Lepb;

    iget-object v2, v2, Lepb;->k:Lgpc;

    invoke-interface {v2}, Lgpc;->b()V

    move-object v2, v0

    check-cast v2, Lepb;

    iget-object v2, v2, Lepb;->j:Lkbc;

    invoke-interface {v2}, Lkbc;->f()V

    :cond_5
    move-object v2, v0

    check-cast v2, Lepb;

    iget-object v2, v2, Lepb;->f:Ldhi;

    sget-object v5, Ldhx;->i:Ldhj;

    invoke-interface {v2, v5}, Ldhi;->l(Ldhj;)Z

    move-result v15

    move-object v2, v0

    check-cast v2, Lepb;

    iget-object v2, v2, Lepb;->s:Lgkr;

    iget-object v5, v2, Lgkr;->d:Ljava/lang/Object;

    iget-object v2, v2, Lgkr;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    check-cast v5, Landroid/content/Context;

    invoke-static {v5, v2}, Lilt;->a(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v16

    move-object v2, v0

    check-cast v2, Lepb;

    iget-object v2, v2, Lepb;->s:Lgkr;

    iget-object v5, v2, Lgkr;->d:Ljava/lang/Object;

    iget-object v2, v2, Lgkr;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    check-cast v5, Landroid/content/Context;

    invoke-static {v5, v2}, Lilt;->a(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v17

    move-object v2, v0

    check-cast v2, Lepb;

    iget-object v2, v2, Lepb;->s:Lgkr;

    iget-object v5, v2, Lgkr;->d:Ljava/lang/Object;

    iget-object v2, v2, Lgkr;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    check-cast v5, Landroid/content/Context;

    invoke-static {v5, v2}, Lilt;->a(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v18

    move-object v2, v0

    check-cast v2, Lepb;

    iget-object v6, v2, Lepb;->c:Leph;

    iget v7, v3, Lkaf;->a:I

    iget v8, v3, Lkaf;->b:I

    move-object v2, v0

    check-cast v2, Lepb;

    iget-object v9, v2, Lepb;->h:Lnqk;

    move-object v2, v0

    check-cast v2, Lepb;

    iget-object v2, v2, Lepb;->l:Lmqp;

    invoke-virtual {v2}, Lmqp;->g()Z

    move-result v2

    if-eqz v2, :cond_6

    move-object v2, v0

    check-cast v2, Lepb;

    iget-object v2, v2, Lepb;->l:Lmqp;

    invoke-virtual {v2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    move-object v10, v2

    goto :goto_1

    :cond_6
    const-string v2, ""

    move-object v10, v2

    :goto_1
    move-object v2, v0

    check-cast v2, Lepb;

    iget-object v2, v2, Lepb;->k:Lgpc;

    invoke-interface {v2}, Lgpc;->a()J

    move-result-wide v11

    move-object v2, v0

    check-cast v2, Lepb;

    iget-object v13, v2, Lepb;->d:Lnrm;

    move-object v2, v0

    check-cast v2, Lepb;

    iget-object v14, v2, Lepb;->r:Lcom/google/googlex/gcam/lasagna/LasagnaCallbacks;

    invoke-virtual/range {v6 .. v18}, Leph;->d(IILnqk;Ljava/lang/String;JLcom/google/googlex/gcam/clientallocator/InterleavedU8ClientAllocator;Lcom/google/googlex/gcam/lasagna/LasagnaCallbacks;Z[B[B[B)V

    move-object v2, v0

    check-cast v2, Lepb;

    iget-object v2, v2, Lepb;->j:Lkbc;

    invoke-interface {v2}, Lkbc;->f()V

    move-object v2, v0

    check-cast v2, Lepb;

    iget-object v2, v2, Lepb;->c:Leph;

    invoke-virtual {v2}, Leph;->e()V

    check-cast v0, Lepb;

    iget-object v0, v0, Lepb;->e:Ljvk;

    invoke-virtual {v0, v4}, Ljvk;->bn(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-object v2, Lepb;->a:Lnak;

    invoke-virtual {v2}, Lnaf;->b()Lnaz;

    move-result-object v2

    const-string v3, "Error initializing processor."

    const/16 v4, 0x6b9

    invoke-static {v2, v3, v4, v0}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    return-void

    :pswitch_d
    iget-object v3, v1, Leli;->a:Ljava/lang/Object;

    monitor-enter v3

    :try_start_2
    move-object v0, v3

    check-cast v0, Leop;

    iput-object v2, v0, Leop;->f:Lept;

    monitor-exit v3

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :pswitch_e
    iget-object v0, v1, Leli;->a:Ljava/lang/Object;

    sget-object v2, Lnbk;->a:Lnbc;

    check-cast v0, Lenn;

    iget-object v2, v0, Lenn;->d:Lldf;

    invoke-virtual {v2}, Lldf;->close()V

    iget-object v2, v0, Lenn;->f:Lldc;

    invoke-virtual {v2}, Llbk;->close()V

    iget-object v2, v0, Lenn;->c:Llbd;

    invoke-interface {v2}, Llbd;->close()V

    iget-object v2, v0, Lenn;->e:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    iget-object v0, v0, Lenn;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void

    :pswitch_f
    iget-object v0, v1, Leli;->a:Ljava/lang/Object;

    sget-object v2, Lenn;->a:Lnak;

    :try_start_3
    sget-object v2, Lnbk;->a:Lnbc;

    check-cast v0, Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    return-void

    :catch_1
    move-exception v0

    sget-object v2, Lenn;->a:Lnak;

    invoke-virtual {v2}, Lnaf;->b()Lnaz;

    move-result-object v2

    sget-object v3, Lnbk;->a:Lnbc;

    const-string v4, "KeplerEncoder"

    invoke-interface {v2, v3, v4}, Lnaz;->g(Lnbc;Ljava/lang/Object;)Lnaz;

    move-result-object v2

    const-string v3, "Could not close file."

    const/16 v4, 0x671

    invoke-static {v2, v3, v4, v0}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    return-void

    :pswitch_10
    iget-object v0, v1, Leli;->a:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/google/android/apps/camera/keepalive/ProcessGcService;

    iget-object v3, v2, Lcom/google/android/apps/camera/keepalive/ProcessGcService;->c:Lend;

    invoke-virtual {v3}, Lend;->c()Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/google/android/apps/camera/keepalive/ProcessGcService;->a(I)V

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lgxb;->o(Landroid/content/Context;)V

    return-void

    :cond_7
    const/16 v0, 0x4d2

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void

    :pswitch_11
    iget-object v0, v1, Leli;->a:Ljava/lang/Object;

    check-cast v0, Lenc;

    iput-object v2, v0, Lenc;->b:Ljava/lang/Runnable;

    invoke-static {}, Ljuh;->a()V

    iget-object v0, v0, Lenc;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_8

    return-void

    :cond_8
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_12
    iget-object v0, v1, Leli;->a:Ljava/lang/Object;

    sget-object v3, Lelj;->a:Ljava/lang/Object;

    monitor-enter v3

    :try_start_4
    move-object v4, v0

    check-cast v4, Lelj;

    iget-object v4, v4, Lelj;->l:Lelk;

    if-eqz v4, :cond_9

    invoke-interface {v4}, Lelk;->d()Ljava/lang/Runnable;

    move-result-object v2

    move-object v4, v0

    check-cast v4, Lelj;

    iget-object v4, v4, Lelj;->l:Lelk;

    check-cast v0, Lelj;

    invoke-virtual {v0, v4}, Lelj;->g(Lelk;)V

    goto :goto_2

    :cond_9
    :goto_2
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v2, :cond_a

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :cond_a
    return-void

    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :pswitch_13
    iget-object v0, v1, Leli;->a:Ljava/lang/Object;

    sget-object v2, Lelj;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_6
    move-object v3, v0

    check-cast v3, Lelj;

    iget-object v4, v3, Lelj;->l:Lelk;

    if-eqz v4, :cond_b

    move-object v3, v0

    check-cast v3, Lelj;

    iget v5, v3, Lelj;->n:I

    move-object v3, v0

    check-cast v3, Lelj;

    iget-boolean v6, v3, Lelj;->h:Z

    move-object v3, v0

    check-cast v3, Lelj;

    iget-boolean v7, v3, Lelj;->i:Z

    move-object v3, v0

    check-cast v3, Lelj;

    iget-object v8, v3, Lelj;->j:Liko;

    check-cast v0, Lelj;

    iget-object v9, v0, Lelj;->k:Lhyn;

    invoke-interface/range {v4 .. v9}, Lelk;->q(IZZLiko;Lhyn;)V

    :cond_b
    monitor-exit v2

    return-void

    :catchall_3
    move-exception v0

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3

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
