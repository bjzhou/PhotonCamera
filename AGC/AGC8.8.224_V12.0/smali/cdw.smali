.class public final synthetic Lcdw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;I)V
    .locals 0

    iput p2, p0, Lcdw;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcdw;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcds;I)V
    .locals 0

    iput p2, p0, Lcdw;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcdw;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcek;I)V
    .locals 0

    iput p2, p0, Lcdw;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcdw;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcey;I)V
    .locals 0

    iput p2, p0, Lcdw;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcdw;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcfp;I)V
    .locals 0

    iput p2, p0, Lcdw;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcdw;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcga;I)V
    .locals 0

    iput p2, p0, Lcdw;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcdw;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcik;I)V
    .locals 0

    iput p2, p0, Lcdw;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcdw;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcjh;I)V
    .locals 0

    iput p2, p0, Lcdw;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcdw;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcjr;I)V
    .locals 0

    iput p2, p0, Lcdw;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcdw;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lckb;I)V
    .locals 0

    iput p2, p0, Lcdw;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcdw;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lckk;I)V
    .locals 0

    iput p2, p0, Lcdw;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcdw;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lckv;I)V
    .locals 0

    iput p2, p0, Lcdw;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcdw;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lfdu;I)V
    .locals 0

    iput p2, p0, Lcdw;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcdw;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lfdy;I[B)V
    .locals 0

    iput p2, p0, Lcdw;->b:I

    iput-object p1, p0, Lcdw;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljvk;I)V
    .locals 0

    iput p2, p0, Lcdw;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcdw;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lkad;I)V
    .locals 0

    iput p2, p0, Lcdw;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcdw;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, Lcdw;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcdw;->a:Ljava/lang/Object;

    check-cast v0, Lckv;

    iget-object v3, v0, Lckv;->n:Lkef;

    if-nez v3, :cond_a

    const/4 v1, 0x1

    goto/16 :goto_4

    :pswitch_0
    iget-object v0, p0, Lcdw;->a:Ljava/lang/Object;

    check-cast v0, Lckv;

    iget-boolean v1, v0, Lckv;->p:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v2, v0, Lckv;->p:Z

    iget-object v1, v0, Lckv;->n:Lkef;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lkef;->close()V

    iput-object v2, v0, Lckv;->n:Lkef;

    :cond_1
    iget-object v1, v0, Lckv;->m:Lcom/google/android/apps/camera/autotimer/analysis/jni/BaseCurator;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/google/android/apps/camera/autotimer/analysis/jni/BaseCurator;->close()V

    iput-object v2, v0, Lckv;->m:Lcom/google/android/apps/camera/autotimer/analysis/jni/BaseCurator;

    :cond_2
    iget-object v0, v0, Lckv;->o:Lkad;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lkad;->close()V

    return-void

    :cond_3
    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcdw;->a:Ljava/lang/Object;

    check-cast v0, Lfdn;

    invoke-virtual {v0}, Lfdn;->d()V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcdw;->a:Ljava/lang/Object;

    check-cast v0, Lckk;

    invoke-virtual {v0}, Lckk;->e()V

    return-void

    :pswitch_3
    iget-object v0, p0, Lcdw;->a:Ljava/lang/Object;

    check-cast v0, Lckb;

    invoke-virtual {v0}, Lckb;->b()V

    return-void

    :pswitch_4
    iget-object v0, p0, Lcdw;->a:Ljava/lang/Object;

    invoke-interface {v0}, Lkad;->close()V

    return-void

    :pswitch_5
    iget-object v0, p0, Lcdw;->a:Ljava/lang/Object;

    check-cast v0, Lcjr;

    invoke-virtual {v0}, Lcjr;->close()V

    return-void

    :pswitch_6
    iget-object v0, p0, Lcdw;->a:Ljava/lang/Object;

    invoke-static {}, Ljuh;->d()Z

    move-result v3

    invoke-static {v3}, Llkj;->x(Z)V

    move-object v3, v0

    check-cast v3, Lcjh;

    iget-object v4, v3, Lcjh;->d:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    invoke-static {v4}, Llkj;->x(Z)V

    :try_start_0
    move-object v4, v0

    check-cast v4, Lcjh;

    iget-object v4, v4, Lcjh;->c:Ljava/lang/ThreadLocal;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :goto_1
    add-int/2addr v1, v2

    const/16 v4, 0x10

    if-le v1, v4, :cond_4

    sget-object v0, Lcjh;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v1, 0xcc

    invoke-interface {v0, v1}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v1, "MainThreadExecutor detected possible infinite loop."

    invoke-interface {v0, v1}, Lnah;->o(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    move-object v4, v0

    check-cast v4, Lcjh;

    iget-object v4, v4, Lcjh;->b:Ljava/util/concurrent/BlockingQueue;

    move-object v5, v0

    check-cast v5, Lcjh;

    iget-object v5, v5, Lcjh;->d:Ljava/util/ArrayList;

    invoke-interface {v4, v5}, Ljava/util/concurrent/BlockingQueue;->drainTo(Ljava/util/Collection;)I

    move-result v4

    if-eqz v4, :cond_6

    move-object v4, v0

    check-cast v4, Lcjh;

    iget-object v4, v4, Lcjh;->d:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Runnable;

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    goto :goto_2

    :cond_5
    move-object v4, v0

    check-cast v4, Lcjh;

    iget-object v4, v4, Lcjh;->d:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_6
    :goto_3
    iget-object v0, v3, Lcjh;->c:Ljava/lang/ThreadLocal;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, v3, Lcjh;->c:Ljava/lang/ThreadLocal;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    throw v0

    :pswitch_7
    iget-object v0, p0, Lcdw;->a:Ljava/lang/Object;

    check-cast v0, Lfdy;

    iget-object v0, v0, Lfdy;->a:Ljava/lang/Object;

    check-cast v0, Ljuf;

    invoke-virtual {v0}, Ljuf;->close()V

    return-void

    :pswitch_8
    iget-object v0, p0, Lcdw;->a:Ljava/lang/Object;

    invoke-interface {v0}, Lcik;->bl()Lnou;

    return-void

    :pswitch_9
    iget-object v0, p0, Lcdw;->a:Ljava/lang/Object;

    check-cast v0, Lcga;

    iget-object v0, v0, Lcga;->d:Lcgn;

    if-eqz v0, :cond_7

    invoke-virtual {v0, v1}, Lcgn;->setVisibility(I)V

    :cond_7
    return-void

    :pswitch_a
    iget-object v0, p0, Lcdw;->a:Ljava/lang/Object;

    check-cast v0, Lcga;

    iget-object v1, v0, Lcga;->d:Lcgn;

    if-eqz v1, :cond_8

    iget-object v0, v0, Lcga;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_8
    return-void

    :pswitch_b
    iget-object v0, p0, Lcdw;->a:Ljava/lang/Object;

    check-cast v0, Lcga;

    iget-object v1, v0, Lcga;->d:Lcgn;

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcga;->a()Lcgc;

    move-result-object v0

    iget-object v1, v1, Lcgn;->a:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Lcgc;->a(Landroid/view/SurfaceView;)V

    :cond_9
    return-void

    :pswitch_c
    iget-object v0, p0, Lcdw;->a:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    check-cast v0, Ljvk;

    invoke-virtual {v0, v1}, Ljvk;->bn(Ljava/lang/Object;)V

    return-void

    :pswitch_d
    iget-object v0, p0, Lcdw;->a:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    check-cast v0, Ljvk;

    invoke-virtual {v0, v1}, Ljvk;->bn(Ljava/lang/Object;)V

    return-void

    :pswitch_e
    iget-object v0, p0, Lcdw;->a:Ljava/lang/Object;

    check-cast v0, Lcfp;

    invoke-virtual {v0}, Lcfp;->g()V

    return-void

    :pswitch_f
    iget-object v0, p0, Lcdw;->a:Ljava/lang/Object;

    check-cast v0, Lcey;

    iget-object v0, v0, Lcey;->a:Lcew;

    invoke-interface {v0}, Lcew;->b()V

    return-void

    :pswitch_10
    iget-object v0, p0, Lcdw;->a:Ljava/lang/Object;

    check-cast v0, Lcek;

    invoke-virtual {v0}, Lcek;->k()V

    return-void

    :pswitch_11
    iget-object v0, p0, Lcdw;->a:Ljava/lang/Object;

    check-cast v0, Lcek;

    invoke-virtual {v0}, Lcek;->k()V

    return-void

    :pswitch_12
    iget-object v0, p0, Lcdw;->a:Ljava/lang/Object;

    check-cast v0, Lcds;

    invoke-virtual {v0}, Lcds;->e()V

    return-void

    :pswitch_13
    iget-object v0, p0, Lcdw;->a:Ljava/lang/Object;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_a
    :goto_4
    const-string v3, "Already started"

    invoke-static {v1, v3}, Lmoz;->q(ZLjava/lang/Object;)V

    iget-boolean v1, v0, Lckv;->p:Z

    xor-int/2addr v1, v2

    const-string v3, "Cannot be started when closed"

    invoke-static {v1, v3}, Lmoz;->q(ZLjava/lang/Object;)V

    iget-object v1, v0, Lckv;->m:Lcom/google/android/apps/camera/autotimer/analysis/jni/BaseCurator;

    if-nez v1, :cond_b

    iget-object v1, v0, Lckv;->e:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/camera/autotimer/analysis/jni/BaseCurator;

    iput-object v1, v0, Lckv;->m:Lcom/google/android/apps/camera/autotimer/analysis/jni/BaseCurator;

    :cond_b
    iget-object v1, v0, Lckv;->h:Ljvs;

    new-instance v3, Lckj;

    const/4 v4, 0x3

    invoke-direct {v3, v0, v4}, Lckj;-><init>(Lckv;I)V

    iget-object v4, v0, Lckv;->f:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v3, v4}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v1

    iput-object v1, v0, Lckv;->o:Lkad;

    iget-object v1, v0, Lckv;->g:Lken;

    iget-object v3, v0, Lckv;->k:Lkfj;

    invoke-interface {v1, v3}, Lken;->s(Lkfj;)Lkgq;

    move-result-object v1

    iget-object v3, v0, Lckv;->g:Lken;

    invoke-interface {v3, v1, v2}, Lken;->r(Lkgq;I)Lkef;

    move-result-object v1

    iput-object v1, v0, Lckv;->n:Lkef;

    iget-object v1, v0, Lckv;->n:Lkef;

    new-instance v3, Ldsp;

    invoke-direct {v3, v0, v2}, Ldsp;-><init>(Lckv;I)V

    invoke-interface {v1, v3}, Lkef;->k(Lkee;)V

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
