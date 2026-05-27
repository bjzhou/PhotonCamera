.class public final synthetic Lfib;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lchk;I)V
    .locals 0

    iput p2, p0, Lfib;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfib;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lfeu;I)V
    .locals 0

    iput p2, p0, Lfib;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfib;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lfid;I)V
    .locals 0

    iput p2, p0, Lfib;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfib;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lfio;I)V
    .locals 0

    iput p2, p0, Lfib;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfib;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lfll;I)V
    .locals 0

    iput p2, p0, Lfib;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfib;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lfmb;I)V
    .locals 0

    iput p2, p0, Lfib;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfib;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lfmt;I[B)V
    .locals 0

    iput p2, p0, Lfib;->b:I

    iput-object p1, p0, Lfib;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lfmt;I[C)V
    .locals 0

    iput p2, p0, Lfib;->b:I

    iput-object p1, p0, Lfib;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lfnb;I[B)V
    .locals 0

    iput p2, p0, Lfib;->b:I

    iput-object p1, p0, Lfib;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lfng;I)V
    .locals 0

    iput p2, p0, Lfib;->b:I

    iput-object p1, p0, Lfib;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lgxb;I[B[B)V
    .locals 0

    iput p2, p0, Lfib;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfib;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljwb;I)V
    .locals 0

    iput p2, p0, Lfib;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfib;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Loiw;I)V
    .locals 0

    iput p2, p0, Lfib;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfib;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    iget v0, p0, Lfib;->b:I

    const v1, 0x7f14014a

    const v2, 0x7f14014e

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lfib;->a:Ljava/lang/Object;

    check-cast v0, Lfmt;

    iget-object v0, v0, Lfmt;->a:Ljava/lang/Object;

    check-cast v0, Lfng;

    invoke-virtual {v0}, Lfng;->x()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lfib;->a:Ljava/lang/Object;

    check-cast v0, Lfmt;

    iget-object v0, v0, Lfmt;->a:Ljava/lang/Object;

    check-cast v0, Lfng;

    invoke-virtual {v0}, Lfng;->B()V

    return-void

    :pswitch_1
    iget-object v0, p0, Lfib;->a:Ljava/lang/Object;

    check-cast v0, Lfng;

    iget-object v0, v0, Lfng;->J:Leg;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lff;->dismiss()V

    :cond_0
    iget-object v0, p0, Lfib;->a:Ljava/lang/Object;

    check-cast v0, Lfng;

    iget-object v0, v0, Lfng;->K:Leg;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lff;->dismiss()V

    :cond_1
    return-void

    :pswitch_2
    iget-object v0, p0, Lfib;->a:Ljava/lang/Object;

    check-cast v0, Lfnb;

    iget-object v0, v0, Lfnb;->a:Ljava/lang/Object;

    check-cast v0, Lfng;

    invoke-virtual {v0}, Lfng;->C()V

    iget-object v0, p0, Lfib;->a:Ljava/lang/Object;

    check-cast v0, Lfnb;

    iget-object v0, v0, Lfnb;->a:Ljava/lang/Object;

    check-cast v0, Lfng;

    invoke-virtual {v0}, Lfng;->w()V

    return-void

    :pswitch_3
    iget-object v0, p0, Lfib;->a:Ljava/lang/Object;

    check-cast v0, Lfng;

    iget-object v0, v0, Lfng;->A:Lhvz;

    invoke-virtual {v0}, Lhvu;->a()V

    return-void

    :pswitch_4
    iget-object v0, p0, Lfib;->a:Ljava/lang/Object;

    check-cast v0, Lfng;

    iget-object v0, v0, Lfng;->A:Lhvz;

    invoke-virtual {v0}, Lhvu;->c()V

    return-void

    :pswitch_5
    new-instance v0, Lmgv;

    iget-object v5, p0, Lfib;->a:Ljava/lang/Object;

    check-cast v5, Lfng;

    iget-object v5, v5, Lfng;->s:Lcgy;

    invoke-interface {v5}, Lcgy;->s()Landroid/content/Context;

    move-result-object v5

    iget-object v7, p0, Lfib;->a:Ljava/lang/Object;

    check-cast v7, Lfng;

    iget v7, v7, Lfng;->F:I

    invoke-direct {v0, v5, v7}, Lmgv;-><init>(Landroid/content/Context;I)V

    new-instance v5, Lcdc;

    const/16 v7, 0xb

    invoke-direct {v5, p0, v7, v3}, Lcdc;-><init>(Lfib;I[C)V

    invoke-virtual {v0, v2, v5}, Lmgv;->q(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance v2, Lfmx;

    invoke-direct {v2, v4}, Lfmx;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lmgv;->n(ILandroid/content/DialogInterface$OnClickListener;)V

    const v1, 0x7f1403b0

    invoke-virtual {v0, v1}, Lmgv;->l(I)V

    invoke-virtual {v0, v6}, Lmgv;->k(Z)V

    iget-object v1, p0, Lfib;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Lef;->b()Leg;

    move-result-object v0

    check-cast v1, Lfng;

    iput-object v0, v1, Lfng;->K:Leg;

    iget-object v0, p0, Lfib;->a:Ljava/lang/Object;

    check-cast v0, Lfng;

    iget-object v0, v0, Lfng;->K:Leg;

    invoke-virtual {v0}, Leg;->show()V

    return-void

    :pswitch_6
    new-instance v0, Lmgv;

    iget-object v4, p0, Lfib;->a:Ljava/lang/Object;

    check-cast v4, Lfng;

    iget-object v4, v4, Lfng;->s:Lcgy;

    invoke-interface {v4}, Lcgy;->s()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lfib;->a:Ljava/lang/Object;

    check-cast v5, Lfng;

    iget v5, v5, Lfng;->F:I

    invoke-direct {v0, v4, v5}, Lmgv;-><init>(Landroid/content/Context;I)V

    new-instance v4, Lcdc;

    const/16 v5, 0xa

    invoke-direct {v4, p0, v5, v3}, Lcdc;-><init>(Lfib;I[B)V

    invoke-virtual {v0, v2, v4}, Lmgv;->q(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance v2, Lfmx;

    invoke-direct {v2, v6}, Lfmx;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lmgv;->n(ILandroid/content/DialogInterface$OnClickListener;)V

    iget-object v1, p0, Lfib;->a:Ljava/lang/Object;

    check-cast v1, Lfng;

    iget-object v1, v1, Lfng;->D:Ljwb;

    invoke-interface {v1}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lika;->e:Lika;

    if-ne v1, v2, :cond_2

    const v1, 0x7f1400ef

    invoke-virtual {v0, v1}, Lmgv;->l(I)V

    goto :goto_0

    :cond_2
    const v1, 0x7f1400ee

    invoke-virtual {v0, v1}, Lmgv;->l(I)V

    :goto_0
    invoke-virtual {v0, v6}, Lmgv;->k(Z)V

    iget-object v1, p0, Lfib;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Lef;->b()Leg;

    move-result-object v0

    check-cast v1, Lfng;

    iput-object v0, v1, Lfng;->J:Leg;

    iget-object v0, p0, Lfib;->a:Ljava/lang/Object;

    check-cast v0, Lfng;

    iget-object v0, v0, Lfng;->J:Leg;

    invoke-virtual {v0}, Leg;->show()V

    return-void

    :pswitch_7
    iget-object v0, p0, Lfib;->a:Ljava/lang/Object;

    check-cast v0, Lfng;

    iget-boolean v1, v0, Lfng;->l:Z

    if-nez v1, :cond_3

    iget-object v0, v0, Lfng;->A:Lhvz;

    invoke-virtual {v0}, Lhvu;->cl()V

    :cond_3
    return-void

    :pswitch_8
    iget-object v0, p0, Lfib;->a:Ljava/lang/Object;

    check-cast v0, Lchk;

    invoke-virtual {v0}, Lchk;->k()V

    return-void

    :pswitch_9
    iget-object v0, p0, Lfib;->a:Ljava/lang/Object;

    check-cast v0, Lfmb;

    iget-object v1, v0, Lfmb;->b:Landroid/os/Handler;

    iget-object v0, v0, Lfmb;->a:Lfeu;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lfib;

    const/16 v3, 0x9

    invoke-direct {v2, v0, v3}, Lfib;-><init>(Lfeu;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_a
    iget-object v0, p0, Lfib;->a:Ljava/lang/Object;

    check-cast v0, Lfeu;

    iget-boolean v1, v0, Lfeu;->o:Z

    if-eqz v1, :cond_4

    goto/16 :goto_3

    :cond_4
    iget-object v1, v0, Lfeu;->l:Ldhi;

    sget-object v2, Ldho;->bW:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->l(Ldhj;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v0, Lfeu;->a:Liff;

    invoke-interface {v1}, Liff;->b()Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_5
    iput-boolean v6, v0, Lfeu;->o:Z

    iget-object v1, v0, Lfeu;->k:Ljuh;

    iget-object v2, v0, Lfeu;->i:Liec;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lfcz;

    const/16 v5, 0x8

    invoke-direct {v3, v2, v5}, Lfcz;-><init>(Liec;I)V

    invoke-virtual {v1, v3}, Ljuh;->c(Ljava/lang/Runnable;)V

    iget-object v1, v0, Lfeu;->i:Liec;

    invoke-interface {v1}, Liec;->e()V

    iget-object v1, v0, Lfeu;->u:Ldfb;

    invoke-virtual {v1, v4}, Ldfb;->c(Z)V

    iget-object v1, v0, Lfeu;->d:Libj;

    invoke-interface {v1, v4}, Libj;->v(Z)V

    iget-object v1, v0, Lfeu;->t:Lhrq;

    invoke-virtual {v1, v6}, Lhrq;->b(Z)V

    iget-object v1, v0, Lfeu;->t:Lhrq;

    invoke-virtual {v1, v6}, Lhrq;->d(Z)V

    iget-object v1, v0, Lfeu;->h:Lgeh;

    invoke-interface {v1}, Lgeh;->m()V

    iget-object v1, v0, Lfeu;->g:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->startLongShot()V

    iget-object v8, v0, Lfeu;->w:Llij;

    iget-object v1, v8, Llij;->d:Ljava/lang/Object;

    iget-object v2, v8, Llij;->f:Ljava/lang/Object;

    invoke-interface {v2}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, v8, Llij;->c:Ljava/lang/Object;

    check-cast v2, Lfey;

    invoke-virtual {v2}, Lfey;->k()Lgkr;

    move-result-object v2

    if-nez v2, :cond_6

    goto :goto_1

    :cond_6
    iget-object v3, v2, Lgkr;->c:Ljava/lang/Object;

    check-cast v3, Lklw;

    invoke-virtual {v3}, Lklw;->J()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v2, v2, Lgkr;->d:Ljava/lang/Object;

    invoke-interface {v2}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfwl;

    sget-object v3, Lfwl;->d:Lfwl;

    if-eq v2, v3, :cond_7

    sget-object v3, Lfwl;->b:Lfwl;

    if-ne v2, v3, :cond_8

    :cond_7
    iget-object v2, v8, Llij;->a:Ljava/lang/Object;

    iget-object v3, v8, Llij;->g:Ljava/lang/Object;

    invoke-interface {v2, v3}, Lell;->d(Lelk;)Lkad;

    new-instance v2, Leym;

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v7, v2

    invoke-direct/range {v7 .. v13}, Leym;-><init>(Llij;I[B[B[B[B)V

    goto :goto_2

    :cond_8
    :goto_1
    sget-object v2, Lcgk;->p:Lcgk;

    :goto_2
    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lfeu;->a:Liff;

    invoke-interface {v1}, Liff;->O()V

    iget-object v1, v0, Lfeu;->c:Lhxb;

    invoke-interface {v1}, Lhxb;->f()V

    iget-object v1, v0, Lfeu;->j:Lgft;

    const-class v2, Lfeu;

    invoke-interface {v1, v2}, Lgft;->a(Ljava/lang/Class;)V

    iget-object v1, v0, Lfeu;->b:Litm;

    invoke-interface {v1, v6}, Litm;->q(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, v0, Lfeu;->n:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v3, :cond_9

    iget-object v3, v0, Lfeu;->n:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v3, v4}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_9
    iget-object v5, v0, Lfeu;->e:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v6, Lepm;

    const/4 v3, 0x3

    invoke-direct {v6, v0, v1, v2, v3}, Lepm;-><init>(Lfeu;JI)V

    const-wide/16 v7, 0x1

    const-wide/16 v9, 0x1

    sget-object v11, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v5 .. v11}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    iput-object v1, v0, Lfeu;->n:Ljava/util/concurrent/ScheduledFuture;

    iget-boolean v1, v0, Lfeu;->q:Z

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lfeu;->a()V

    return-void

    :cond_a
    :goto_3
    return-void

    :pswitch_b
    iget-object v0, p0, Lfib;->a:Ljava/lang/Object;

    check-cast v0, Lfll;

    iget-boolean v1, v0, Lfll;->g:Z

    if-nez v1, :cond_c

    iput-boolean v6, v0, Lfll;->g:Z

    iget-object v1, v0, Lfll;->a:Ljvk;

    invoke-virtual {v1, v5}, Ljvk;->bn(Ljava/lang/Object;)V

    iget-object v1, v0, Lfll;->e:Lkad;

    if-eqz v1, :cond_b

    invoke-interface {v1}, Lkad;->close()V

    :cond_b
    iget-object v0, v0, Lfll;->f:Lkad;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lkad;->close()V

    :cond_c
    return-void

    :pswitch_c
    iget-object v0, p0, Lfib;->a:Ljava/lang/Object;

    check-cast v0, Lgxb;

    iget-object v0, v0, Lgxb;->b:Ljava/lang/Object;

    invoke-interface {v0, v7}, Ljwb;->bn(Ljava/lang/Object;)V

    return-void

    :pswitch_d
    iget-object v0, p0, Lfib;->a:Ljava/lang/Object;

    invoke-interface {v0, v5}, Ljwb;->bn(Ljava/lang/Object;)V

    return-void

    :pswitch_e
    iget-object v0, p0, Lfib;->a:Ljava/lang/Object;

    invoke-interface {v0, v7}, Ljwb;->bn(Ljava/lang/Object;)V

    return-void

    :pswitch_f
    iget-object v0, p0, Lfib;->a:Ljava/lang/Object;

    :try_start_0
    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfhg;

    invoke-interface {v0}, Lfhg;->c()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lfiv;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->c()Lnaz;

    move-result-object v1

    const-string v2, "Prewarm of microvideo encoder failed... will try again later!"

    const/16 v3, 0x920

    invoke-static {v1, v2, v3, v0}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    return-void

    :pswitch_10
    iget-object v0, p0, Lfib;->a:Ljava/lang/Object;

    check-cast v0, Lfio;

    invoke-virtual {v0}, Lfio;->f()V

    return-void

    :pswitch_11
    iget-object v0, p0, Lfib;->a:Ljava/lang/Object;

    check-cast v0, Lfio;

    invoke-virtual {v0}, Lfio;->f()V

    iget-object v1, v0, Lfio;->b:Lkxy;

    if-eqz v1, :cond_d

    iput-object v3, v0, Lfio;->b:Lkxy;

    invoke-interface {v1}, Lkxy;->close()V

    :cond_d
    iget-object v1, v0, Lfio;->c:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->e()V

    iput-object v3, v0, Lfio;->c:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    :cond_e
    return-void

    :pswitch_12
    iget-object v0, p0, Lfib;->a:Ljava/lang/Object;

    check-cast v0, Lfid;

    iget-boolean v1, v0, Lfid;->s:Z

    if-nez v1, :cond_f

    iget-object v1, v0, Lfid;->l:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    :cond_f
    iput-boolean v6, v0, Lfid;->s:Z

    iget-object v1, v0, Lfid;->c:Lfhm;

    invoke-virtual {v1, v6}, Lfhm;->b(Z)V

    invoke-virtual {v0}, Lfid;->g()V

    return-void

    :pswitch_13
    iget-object v0, p0, Lfib;->a:Ljava/lang/Object;

    check-cast v0, Lfid;

    invoke-virtual {v0}, Lfid;->g()V

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
