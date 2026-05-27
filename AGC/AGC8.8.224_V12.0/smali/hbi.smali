.class public final synthetic Lhbi;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lhba;I)V
    .locals 0

    iput p2, p0, Lhbi;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhbi;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhbj;I)V
    .locals 0

    iput p2, p0, Lhbi;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhbi;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhcp;I)V
    .locals 0

    iput p2, p0, Lhbi;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhbi;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhcq;I)V
    .locals 0

    iput p2, p0, Lhbi;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhbi;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhcv;I)V
    .locals 0

    iput p2, p0, Lhbi;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhbi;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhdi;I)V
    .locals 0

    iput p2, p0, Lhbi;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhbi;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhdk;I)V
    .locals 0

    iput p2, p0, Lhbi;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhbi;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhdn;I)V
    .locals 0

    iput p2, p0, Lhbi;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhbi;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhec;I)V
    .locals 0

    iput p2, p0, Lhbi;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhbi;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhej;I)V
    .locals 0

    iput p2, p0, Lhbi;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhbi;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhel;I)V
    .locals 0

    iput p2, p0, Lhbi;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhbi;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhey;I)V
    .locals 0

    iput p2, p0, Lhbi;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhbi;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhfq;I)V
    .locals 0

    iput p2, p0, Lhbi;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhbi;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    iget v0, p0, Lhbi;->b:I

    const/4 v1, 0x0

    const/16 v2, 0x9

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lhbi;->a:Ljava/lang/Object;

    check-cast v0, Lhfq;

    invoke-virtual {v0}, Lhfq;->f()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lhbi;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lhey;

    iget-object v3, v1, Lhey;->s:Lcdi;

    invoke-virtual {v3}, Lcdi;->i()Ljuf;

    move-result-object v3

    iget-object v4, v1, Lhey;->c:Loiw;

    invoke-interface {v4}, Loiw;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lhfq;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lhey;->r:Ljava/lang/String;

    new-instance v6, Lhex;

    invoke-direct {v6, v1, v5}, Lhex;-><init>(Lhey;I)V

    invoke-virtual {v1, v6}, Lhey;->a(Lhfv;)V

    iget-object v5, v1, Lhey;->k:Lfak;

    invoke-virtual {v5, v4}, Lfak;->e(Lfaz;)V

    iget-object v5, v1, Lhey;->k:Lfak;

    invoke-virtual {v5, v0}, Lfak;->e(Lfaz;)V

    iget-object v0, v1, Lhey;->g:Lchj;

    iget-object v5, v1, Lhey;->e:Lhel;

    invoke-interface {v0, v5}, Lchj;->c(Lchb;)V

    iget-object v0, v1, Lhey;->h:Lgxi;

    iget-object v5, v1, Lhey;->e:Lhel;

    invoke-virtual {v0, v5}, Lgxi;->a(Lgxm;)V

    new-instance v0, Lhbq;

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lhbq;-><init>(Lhey;I)V

    invoke-virtual {v3, v0}, Ljuf;->d(Lkad;)V

    iget-object v0, v1, Lhey;->i:Ljvs;

    new-instance v5, Lguy;

    const/16 v6, 0x11

    invoke-direct {v5, v4, v6}, Lguy;-><init>(Lhfq;I)V

    iget-object v6, v1, Lhey;->l:Ljuh;

    invoke-interface {v0, v5, v6}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljuf;->d(Lkad;)V

    iget-object v0, v1, Lhey;->d:Lhfs;

    new-instance v3, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    invoke-direct {v3, v1}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;-><init>(Lhey;)V

    iput-object v3, v0, Lhfs;->j:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    iget-object v0, v0, Lhfs;->c:Lhgn;

    invoke-interface {v0, v3}, Lhgn;->i(Landroidx/wear/ambient/AmbientModeSupport$AmbientController;)V

    iget-object v0, v1, Lhey;->d:Lhfs;

    new-instance v3, Landroid/view/GestureDetector;

    iget-object v12, v0, Lhfs;->a:Lei;

    new-instance v13, Lhfr;

    iget-object v7, v0, Lhfs;->j:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v5, v13

    move-object v6, v0

    invoke-direct/range {v5 .. v11}, Lhfr;-><init>(Lhfs;Landroidx/wear/ambient/AmbientModeSupport$AmbientController;[B[B[B[B)V

    invoke-direct {v3, v12, v13}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iget-object v0, v0, Lhfs;->d:Lhet;

    new-instance v5, Lclb;

    const/16 v6, 0x8

    invoke-direct {v5, v3, v6}, Lclb;-><init>(Landroid/view/GestureDetector;I)V

    invoke-interface {v0, v5}, Lhet;->f(Landroid/view/View$OnTouchListener;)V

    iget-object v0, v1, Lhey;->s:Lcdi;

    invoke-virtual {v0}, Lcdi;->i()Ljuf;

    move-result-object v0

    iget-object v3, v1, Lhey;->m:Lgzm;

    sget-object v5, Lgzd;->at:Lgzr;

    invoke-interface {v3, v5}, Lgzm;->a(Lgzb;)Ljvs;

    move-result-object v3

    new-instance v5, Lguy;

    const/16 v6, 0x12

    invoke-direct {v5, v1, v6}, Lguy;-><init>(Lhey;I)V

    invoke-static {}, Ljvd;->l()Ljava/util/concurrent/Executor;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljuf;->d(Lkad;)V

    iget-object v0, v1, Lhey;->s:Lcdi;

    invoke-virtual {v0}, Lcdi;->i()Ljuf;

    move-result-object v0

    new-instance v3, Lhev;

    invoke-direct {v3, v1}, Lhev;-><init>(Lhey;)V

    iget-object v5, v1, Lhey;->j:Lcom/google/android/apps/camera/bottombar/BottomBar;

    sget-object v6, Lcom/google/android/apps/camera/bottombar/BottomBar$SideButtonPosition;->CENTER_RIGHT:Lcom/google/android/apps/camera/bottombar/BottomBar$SideButtonPosition;

    invoke-virtual {v5, v6, v3}, Lcom/google/android/apps/camera/bottombar/BottomBar;->addOnContentVisibilityChangedListener(Lcom/google/android/apps/camera/bottombar/BottomBar$SideButtonPosition;Lcom/google/android/apps/camera/bottombar/BottomBar$OnContentVisibilityChangedListener;)V

    new-instance v5, Lgss;

    invoke-direct {v5, v1, v3, v2}, Lgss;-><init>(Lhey;Lcom/google/android/apps/camera/bottombar/BottomBar$OnContentVisibilityChangedListener;I)V

    invoke-virtual {v0, v5}, Ljuf;->d(Lkad;)V

    iget-object v0, v1, Lhey;->l:Ljuh;

    new-instance v1, Lhbi;

    const/16 v2, 0x14

    invoke-direct {v1, v4, v2}, Lhbi;-><init>(Lhfq;I)V

    invoke-virtual {v0, v1}, Ljuh;->c(Ljava/lang/Runnable;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lhbi;->a:Ljava/lang/Object;

    invoke-interface {v0}, Lhfh;->o()V

    return-void

    :pswitch_2
    iget-object v0, p0, Lhbi;->a:Ljava/lang/Object;

    invoke-interface {v0}, Lhfh;->m()V

    return-void

    :pswitch_3
    iget-object v0, p0, Lhbi;->a:Ljava/lang/Object;

    check-cast v0, Lhel;

    iget-object v2, v0, Lhel;->f:Lgxy;

    iget-object v3, v0, Lhel;->c:Landroid/os/Handler;

    iget-object v4, v0, Lhel;->d:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v3

    if-eqz v2, :cond_4

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    iput-object v1, v0, Lhel;->f:Lgxy;

    iget-object v1, v0, Lhel;->a:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhfh;

    iget-object v3, v0, Lhel;->b:Lhfb;

    iget-object v4, v3, Lhfb;->c:Lchj;

    invoke-interface {v4, v2}, Lchj;->e(Lgxy;)Lchd;

    move-result-object v2

    invoke-virtual {v3, v2}, Lhfb;->i(Lchd;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Lhel;->c()V

    invoke-interface {v1}, Lhfh;->j()V

    return-void

    :cond_1
    iget-object v2, v0, Lhel;->e:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    iget-object v3, v0, Lhel;->e:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->isDestroyed()Z

    move-result v3

    if-nez v2, :cond_3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lhel;->c()V

    invoke-interface {v1}, Lhfh;->cj()V

    return-void

    :cond_3
    :goto_0
    invoke-virtual {v0}, Lhel;->c()V

    return-void

    :cond_4
    :goto_1
    invoke-virtual {v0}, Lhel;->c()V

    return-void

    :pswitch_4
    iget-object v0, p0, Lhbi;->a:Ljava/lang/Object;

    invoke-interface {v0}, Lhej;->close()V

    return-void

    :pswitch_5
    iget-object v0, p0, Lhbi;->a:Ljava/lang/Object;

    invoke-interface {v0}, Lhec;->a()V

    return-void

    :pswitch_6
    iget-object v0, p0, Lhbi;->a:Ljava/lang/Object;

    check-cast v0, Lhdn;

    iget-object v1, v0, Lhdn;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, v0, Lhdn;->c:Lhec;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lhec;->a()V

    :cond_5
    return-void

    :pswitch_7
    iget-object v0, p0, Lhbi;->a:Ljava/lang/Object;

    check-cast v0, Lhdi;

    iget-object v0, v0, Lhdi;->b:Lcom/google/android/apps/camera/smarts/SmartsUiGleamingView;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/smarts/SmartsUiGleamingView;->a()V

    return-void

    :pswitch_8
    iget-object v0, p0, Lhbi;->a:Ljava/lang/Object;

    check-cast v0, Lhdi;

    iget-object v0, v0, Lhdi;->b:Lcom/google/android/apps/camera/smarts/SmartsUiGleamingView;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/smarts/SmartsUiGleamingView;->a()V

    return-void

    :pswitch_9
    iget-object v0, p0, Lhbi;->a:Ljava/lang/Object;

    check-cast v0, Lhcv;

    iget-object v1, v0, Lhcv;->c:Ljava/util/concurrent/Executor;

    new-instance v3, Lhbi;

    invoke-direct {v3, v0, v2}, Lhbi;-><init>(Lhcv;I)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_a
    iget-object v0, p0, Lhbi;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lhcv;

    iget-object v1, v1, Lhcv;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    move-object v2, v0

    check-cast v2, Lhcv;

    iget v2, v2, Lhcv;->e:I

    add-int/lit8 v2, v2, -0x1

    check-cast v0, Lhcv;

    iput v2, v0, Lhcv;->e:I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_b
    iget-object v0, p0, Lhbi;->a:Ljava/lang/Object;

    check-cast v0, Lhcp;

    iget-object v0, v0, Lhcp;->a:Lhcq;

    iget v1, v0, Lhcq;->s:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lhcq;->s:I

    invoke-virtual {v0}, Lhcq;->i()V

    return-void

    :pswitch_c
    iget-object v0, p0, Lhbi;->a:Ljava/lang/Object;

    check-cast v0, Lhcp;

    iget-object v1, v0, Lhcp;->a:Lhcq;

    invoke-static {}, Ljuh;->a()V

    sget-object v2, Lhci;->d:Lhci;

    invoke-virtual {v1, v2}, Lhcq;->h(Lhco;)V

    iget-object v0, v0, Lhcp;->a:Lhcq;

    iget v1, v0, Lhcq;->s:I

    add-int/2addr v1, v3

    iput v1, v0, Lhcq;->s:I

    invoke-virtual {v0}, Lhcq;->i()V

    return-void

    :pswitch_d
    iget-object v0, p0, Lhbi;->a:Ljava/lang/Object;

    check-cast v0, Lhcq;

    iget v1, v0, Lhcq;->u:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lhcq;->u:I

    return-void

    :pswitch_e
    iget-object v0, p0, Lhbi;->a:Ljava/lang/Object;

    check-cast v0, Lhcq;

    iget-object v1, v0, Lhcq;->b:Ljuh;

    new-instance v2, Lhbi;

    const/4 v3, 0x6

    invoke-direct {v2, v0, v3}, Lhbi;-><init>(Lhcq;I)V

    invoke-virtual {v1, v2}, Ljuh;->c(Ljava/lang/Runnable;)V

    return-void

    :pswitch_f
    iget-object v0, p0, Lhbi;->a:Ljava/lang/Object;

    check-cast v0, Lhcq;

    iget-object v0, v0, Lhcq;->b:Ljuh;

    new-instance v1, Lhck;

    invoke-direct {v1, v5}, Lhck;-><init>(I)V

    invoke-virtual {v0, v1}, Ljuh;->c(Ljava/lang/Runnable;)V

    return-void

    :pswitch_10
    iget-object v0, p0, Lhbi;->a:Ljava/lang/Object;

    invoke-static {}, Ljuh;->a()V

    check-cast v0, Lhdk;

    iget-object v1, v0, Lhdk;->f:Ljava/lang/Object;

    const-string v2, "SmartUiWirer#wire"

    invoke-interface {v1, v2}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v1, v0, Lhdk;->h:Ljava/lang/Object;

    check-cast v1, Ljew;

    const v2, 0x7f0b032e

    invoke-virtual {v1, v2}, Ljew;->f(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/camera/uiutils/ReplaceableView;

    iget-object v2, v0, Lhdk;->h:Ljava/lang/Object;

    check-cast v2, Ljew;

    const v6, 0x7f0b032d

    invoke-virtual {v2, v6}, Ljew;->f(I)Ljava/lang/Object;

    move-result-object v2

    iget-object v6, v0, Lhdk;->h:Ljava/lang/Object;

    check-cast v6, Ljew;

    const v7, 0x7f0b032c

    invoke-virtual {v6, v7}, Ljew;->f(I)Ljava/lang/Object;

    move-result-object v6

    iget-object v7, v0, Lhdk;->a:Ljava/lang/Object;

    iget-object v8, v0, Lhdk;->d:Ljava/lang/Object;

    iget-object v9, v0, Lhdk;->g:Ljava/lang/Object;

    invoke-static {}, Ljuh;->a()V

    move-object v10, v7

    check-cast v10, Lhcq;

    iput-object v8, v10, Lhcq;->y:Lgft;

    check-cast v2, Landroid/view/View;

    iput-object v2, v10, Lhcq;->w:Landroid/view/View;

    check-cast v6, Landroid/view/View;

    iput-object v6, v10, Lhcq;->x:Landroid/view/View;

    iget-object v2, v10, Lhcq;->x:Landroid/view/View;

    new-instance v6, Lhcl;

    invoke-direct {v6, v10, v5}, Lhcl;-><init>(Lhcq;I)V

    invoke-virtual {v2, v6}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :try_start_1
    move-object v2, v7

    check-cast v2, Lhcq;

    iget-object v2, v2, Lhcq;->k:Lhdi;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/uiutils/ReplaceableView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    invoke-virtual {v1}, Lcom/google/android/apps/camera/uiutils/ReplaceableView;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    const v12, 0x7f0e00f7

    invoke-virtual {v6, v12, v11, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/google/android/apps/camera/uiutils/ReplaceableView;->a(Landroid/view/View;)V

    check-cast v5, Landroid/widget/FrameLayout;

    const v1, 0x7f0b032a

    invoke-virtual {v5, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/camera/smarts/SmartsChipView;

    iput-object v1, v2, Lhdi;->a:Lcom/google/android/apps/camera/smarts/SmartsChipView;

    const v1, 0x7f0b0170

    invoke-virtual {v5, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/camera/smarts/SmartsUiGleamingView;

    iput-object v1, v2, Lhdi;->b:Lcom/google/android/apps/camera/smarts/SmartsUiGleamingView;

    iput-object v8, v2, Lhdi;->c:Lgft;

    iput-object v9, v2, Lhdi;->d:Lell;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v2, Lhdi;->e:Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v1, v10, Lhcq;->n:Lnph;

    invoke-virtual {v1, v4}, Lnph;->e(Ljava/lang/Object;)Z

    new-instance v1, Lhcp;

    invoke-direct {v1, v10}, Lhcp;-><init>(Lhcq;)V

    iget-object v2, v10, Lhcq;->d:Lgxi;

    invoke-virtual {v2, v1}, Lgxi;->a(Lgxm;)V

    iget-object v2, v10, Lhcq;->m:Ljuf;

    new-instance v4, Lgss;

    const/4 v5, 0x7

    invoke-direct {v4, v10, v1, v5}, Lgss;-><init>(Lhcq;Lhcp;I)V

    invoke-virtual {v2, v4}, Ljuf;->d(Lkad;)V

    iget-object v1, v10, Lhcq;->m:Ljuf;

    iget-object v2, v10, Lhcq;->C:Lhsh;

    invoke-virtual {v2, v7}, Lhsh;->b(Lhbv;)Lkad;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljuf;->d(Lkad;)V

    iget-object v1, v10, Lhcq;->m:Ljuf;

    iget-object v2, v10, Lhcq;->h:Ljwb;

    new-instance v4, Lguy;

    const/16 v5, 0xf

    invoke-direct {v4, v10, v5}, Lguy;-><init>(Lhcq;I)V

    invoke-static {}, Ljvd;->l()Ljava/util/concurrent/Executor;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljwb;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljuf;->d(Lkad;)V

    iget-object v1, v0, Lhdk;->b:Ljava/lang/Object;

    iget-object v2, v0, Lhdk;->c:Ljava/lang/Object;

    iget-object v4, v0, Lhdk;->e:Ljava/lang/Object;

    invoke-static {}, Ljuh;->a()V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lbdj;

    check-cast v4, Ligx;

    const/16 v6, 0xc

    invoke-direct {v5, v4, v6}, Lbdj;-><init>(Ligx;I)V

    check-cast v1, Lhcz;

    iput-object v5, v1, Lhcz;->h:Ljava/util/concurrent/Callable;

    check-cast v2, Ldbf;

    iput-object v2, v1, Lhcz;->g:Ldbf;

    iput-boolean v3, v1, Lhcz;->k:Z

    iget-object v1, v0, Lhdk;->f:Ljava/lang/Object;

    const-string v2, "addObserver"

    invoke-interface {v1, v2}, Lkbc;->g(Ljava/lang/String;)V

    iget-object v0, v0, Lhdk;->f:Ljava/lang/Object;

    invoke-interface {v0}, Lkbc;->f()V

    return-void

    :catchall_1
    move-exception v0

    iget-object v1, v10, Lhcq;->n:Lnph;

    invoke-virtual {v1, v4}, Lnph;->e(Ljava/lang/Object;)Z

    throw v0

    :pswitch_11
    iget-object v0, p0, Lhbi;->a:Ljava/lang/Object;

    check-cast v0, Lhbj;

    iget-object v0, v0, Lhbj;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkns;

    iget-object v2, v0, Lkns;->b:Ljava/lang/Object;

    if-nez v2, :cond_6

    new-instance v2, Lmgv;

    iget-object v3, v0, Lkns;->a:Ljava/lang/Object;

    check-cast v3, Landroid/content/Context;

    const v4, 0x7f1503e4

    invoke-direct {v2, v3, v4}, Lmgv;-><init>(Landroid/content/Context;I)V

    const v3, 0x7f14023a

    invoke-virtual {v2, v3}, Lmgv;->s(I)V

    const v3, 0x7f140239

    invoke-virtual {v2, v3}, Lmgv;->l(I)V

    iget-object v3, v2, Lef;->a:Leb;

    iput-object v1, v3, Leb;->r:Landroid/view/View;

    const v1, 0x7f0e0062

    iput v1, v3, Leb;->q:I

    invoke-virtual {v2, v5}, Lmgv;->k(Z)V

    invoke-virtual {v2}, Lef;->b()Leg;

    move-result-object v1

    iput-object v1, v0, Lkns;->b:Ljava/lang/Object;

    :cond_6
    iget-object v0, v0, Lkns;->b:Ljava/lang/Object;

    check-cast v0, Leg;

    invoke-virtual {v0}, Leg;->show()V

    return-void

    :pswitch_12
    iget-object v0, p0, Lhbi;->a:Ljava/lang/Object;

    check-cast v0, Lhba;

    iget-object v1, v0, Lhba;->t:Llhm;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Llhm;->c(I)V

    new-instance v1, Landroid/content/Intent;

    iget-object v2, v0, Lhba;->b:Landroid/content/Context;

    const-class v3, Lcom/google/android/apps/camera/sideline/SidelineInstallerService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, v0, Lhba;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void

    :pswitch_13
    iget-object v0, p0, Lhbi;->a:Ljava/lang/Object;

    check-cast v0, Lhbj;

    iget-object v0, v0, Lhbj;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkns;

    iget-object v0, v0, Lkns;->b:Ljava/lang/Object;

    if-eqz v0, :cond_7

    check-cast v0, Lff;

    invoke-virtual {v0}, Lff;->dismiss()V

    :cond_7
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
