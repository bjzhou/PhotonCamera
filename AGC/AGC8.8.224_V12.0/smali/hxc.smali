.class public final synthetic Lhxc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Landroid/widget/LinearLayout;I)V
    .locals 0

    iput p2, p0, Lhxc;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhxc;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;I)V
    .locals 0

    iput p2, p0, Lhxc;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhxc;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;I)V
    .locals 0

    iput p2, p0, Lhxc;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhxc;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhrw;I[B)V
    .locals 0

    iput p2, p0, Lhxc;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhxc;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhxe;I)V
    .locals 0

    iput p2, p0, Lhxc;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhxc;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhxf;I)V
    .locals 0

    iput p2, p0, Lhxc;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhxc;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhxx;I)V
    .locals 0

    iput p2, p0, Lhxc;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhxc;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhzh;I)V
    .locals 0

    iput p2, p0, Lhxc;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhxc;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhzo;I)V
    .locals 0

    iput p2, p0, Lhxc;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhxc;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Libv;I)V
    .locals 0

    iput p2, p0, Lhxc;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhxc;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Liff;I)V
    .locals 0

    iput p2, p0, Lhxc;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhxc;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lkte;I[B[B[B)V
    .locals 0

    iput p2, p0, Lhxc;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhxc;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget v0, p0, Lhxc;->b:I

    const/4 v1, 0x4

    const/16 v2, 0x8

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lhxc;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;

    iget-object v0, v0, Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;->h:Ljdc;

    iget-object v0, v0, Ljdc;->b:Ljava/lang/Object;

    if-eqz v0, :cond_12

    check-cast v0, Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lhxc;->a:Ljava/lang/Object;

    check-cast v0, Libv;

    iget-object v0, v0, Libv;->r:Ljew;

    const-string v1, "TRANSLATE_TOOLTIP"

    invoke-virtual {v0, v1}, Ljew;->Z(Ljava/lang/String;)I

    return-void

    :pswitch_1
    iget-object v0, p0, Lhxc;->a:Ljava/lang/Object;

    check-cast v0, Lhrw;

    iget-object v0, v0, Lhrw;->b:Ljava/lang/Object;

    sget-object v1, Lika;->k:Lika;

    check-cast v0, Libv;

    invoke-virtual {v0, v1}, Libv;->g(Lika;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lhxc;->a:Ljava/lang/Object;

    check-cast v0, Lkte;

    iget-object v4, v0, Lkte;->d:Ljava/lang/Object;

    sget-object v5, Lhjx;->a:Lhjx;

    check-cast v4, Lhkh;

    invoke-virtual {v4, v5}, Lhkh;->h(Ljava/lang/Enum;)V

    iget-object v4, v0, Lkte;->a:Ljava/lang/Object;

    sget-object v5, Lnjq;->g:Lnjq;

    invoke-virtual {v5}, Lnws;->O()Lnwn;

    move-result-object v5

    iget-object v7, v0, Lkte;->b:Ljava/lang/Object;

    check-cast v7, Lika;

    invoke-static {v7}, Lijy;->e(Lika;)I

    move-result v7

    iget-object v8, v5, Lnwn;->b:Lnws;

    invoke-virtual {v8}, Lnws;->ac()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v5}, Lnwn;->p()V

    :cond_0
    iget-object v8, v5, Lnwn;->b:Lnws;

    check-cast v8, Lnjq;

    add-int/lit8 v7, v7, -0x1

    iput v7, v8, Lnjq;->b:I

    iget v7, v8, Lnjq;->a:I

    or-int/2addr v6, v7

    iput v6, v8, Lnjq;->a:I

    iget-object v6, v0, Lkte;->c:Ljava/lang/Object;

    check-cast v6, Lika;

    invoke-static {v6}, Lijy;->e(Lika;)I

    move-result v6

    iget-object v7, v5, Lnwn;->b:Lnws;

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v5}, Lnwn;->p()V

    :cond_1
    iget-object v7, v5, Lnwn;->b:Lnws;

    move-object v8, v7

    check-cast v8, Lnjq;

    add-int/lit8 v6, v6, -0x1

    iput v6, v8, Lnjq;->c:I

    iget v6, v8, Lnjq;->a:I

    or-int/2addr v6, v3

    iput v6, v8, Lnjq;->a:I

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v5}, Lnwn;->p()V

    :cond_2
    iget-object v6, v5, Lnwn;->b:Lnws;

    move-object v7, v6

    check-cast v7, Lnjq;

    iput v3, v7, Lnjq;->f:I

    iget v3, v7, Lnjq;->a:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v7, Lnjq;->a:I

    iget-object v3, v0, Lkte;->d:Ljava/lang/Object;

    check-cast v3, Lhkh;

    iget-wide v7, v3, Lhkh;->m:J

    invoke-virtual {v6}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v5}, Lnwn;->p()V

    :cond_3
    iget-object v3, v5, Lnwn;->b:Lnws;

    check-cast v3, Lnjq;

    iget v6, v3, Lnjq;->a:I

    or-int/2addr v1, v6

    iput v1, v3, Lnjq;->a:I

    iput-wide v7, v3, Lnjq;->d:J

    iget-object v0, v0, Lkte;->d:Ljava/lang/Object;

    sget-object v1, Lhjx;->a:Lhjx;

    check-cast v0, Lhkh;

    invoke-virtual {v0, v1}, Lhkh;->g(Ljava/lang/Enum;)J

    move-result-wide v0

    iget-object v3, v5, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v5}, Lnwn;->p()V

    :cond_4
    iget-object v3, v5, Lnwn;->b:Lnws;

    check-cast v3, Lnjq;

    iget v6, v3, Lnjq;->a:I

    or-int/2addr v2, v6

    iput v2, v3, Lnjq;->a:I

    iput-wide v0, v3, Lnjq;->e:J

    invoke-virtual {v5}, Lnwn;->i()Lnws;

    move-result-object v0

    check-cast v0, Lnjq;

    invoke-interface {v4, v0}, Lfbz;->y(Lnjq;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lhxc;->a:Ljava/lang/Object;

    check-cast v0, Lhzo;

    iget-object v1, v0, Lhzo;->c:Ldhi;

    sget-object v2, Ldho;->cm:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->l(Ldhj;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v0, Lhzo;->m:Licy;

    if-eqz v1, :cond_6

    sget-object v2, Lgyb;->a:Lgyb;

    invoke-virtual {v1, v2}, Licy;->e(Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    iget-object v1, v0, Lhzo;->p:Lict;

    if-eqz v1, :cond_6

    sget-object v2, Lgyb;->a:Lgyb;

    invoke-virtual {v1, v2}, Lict;->c(Ljava/lang/Object;)V

    :cond_6
    :goto_0
    iget-object v0, v0, Lhzo;->f:Lgzn;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lgzd;->at:Lgzr;

    invoke-interface {v0, v1, v5}, Lgzn;->e(Lgzb;Ljava/lang/Object;)V

    sget-object v0, Lhzo;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "Mars not set up"

    const/16 v2, 0xfd7

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return-void

    :pswitch_4
    iget-object v0, p0, Lhxc;->a:Ljava/lang/Object;

    check-cast v0, Lhzo;

    iget-object v2, v0, Lhzo;->g:Lell;

    iget-object v3, v0, Lhzo;->k:Lcom/google/android/apps/camera/ui/mars/MarsSwitch;

    if-eqz v3, :cond_8

    iget-object v3, v3, Lcom/google/android/apps/camera/ui/mars/MarsSwitch;->b:Landroid/view/View;

    if-nez v3, :cond_7

    goto :goto_1

    :cond_7
    invoke-virtual {v0}, Lhzo;->e()V

    iget-object v3, v0, Lhzo;->e:Lgzm;

    sget-object v4, Lgzd;->av:Lgzs;

    invoke-interface {v3, v4}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, v0, Lhzo;->f:Lgzn;

    add-int/2addr v3, v6

    sget-object v5, Lgzd;->av:Lgzs;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Lgzn;->e(Lgzb;Ljava/lang/Object;)V

    new-instance v3, Lifx;

    iget-object v4, v0, Lhzo;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f140268

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lifx;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lhzo;->k:Lcom/google/android/apps/camera/ui/mars/MarsSwitch;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v4, Lcom/google/android/apps/camera/ui/mars/MarsSwitch;->b:Landroid/view/View;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, v4}, Lifx;->q(Landroid/view/View;)V

    invoke-interface {v3}, Lify;->i()V

    invoke-interface {v3}, Lifz;->k()V

    const/16 v4, 0x1388

    iput v4, v3, Lifx;->d:I

    iput-boolean v6, v3, Lifx;->g:Z

    invoke-interface {v3}, Liga;->l()V

    new-instance v4, Lhxc;

    const/16 v5, 0xe

    invoke-direct {v4, v0, v5}, Lhxc;-><init>(Lhzo;I)V

    sget-object v5, Lnnv;->a:Lnnv;

    invoke-interface {v3, v4, v5}, Liga;->f(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    iput-object v2, v3, Lifx;->i:Lell;

    iput v1, v3, Lifx;->m:I

    iput-boolean v6, v3, Lifx;->f:Z

    invoke-interface {v3}, Liga;->a()Lkad;

    move-result-object v1

    goto :goto_2

    :cond_8
    :goto_1
    sget-object v1, Lgnl;->h:Lgnl;

    :goto_2
    iput-object v1, v0, Lhzo;->n:Lkad;

    iget-object v1, v0, Lhzo;->o:Ljuf;

    iget-object v0, v0, Lhzo;->n:Lkad;

    invoke-virtual {v1, v0}, Ljuf;->d(Lkad;)V

    return-void

    :pswitch_5
    iget-object v0, p0, Lhxc;->a:Ljava/lang/Object;

    check-cast v0, Lhzo;

    invoke-virtual {v0}, Lhzo;->e()V

    return-void

    :pswitch_6
    iget-object v0, p0, Lhxc;->a:Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    check-cast v0, Lhzh;

    invoke-virtual {v0}, Lhzh;->e()Lcom/google/lens/sdk/LensApi;

    move-result-object v1

    new-instance v2, Lhzd;

    invoke-direct {v2, v0, v6}, Lhzd;-><init>(Lhzh;I)V

    invoke-virtual {v1, v2}, Lcom/google/lens/sdk/LensApi;->checkLensAvailability(Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;)V

    invoke-virtual {v0}, Lhzh;->e()Lcom/google/lens/sdk/LensApi;

    move-result-object v1

    new-instance v2, Lhzd;

    invoke-direct {v2, v0, v4}, Lhzd;-><init>(Lhzh;I)V

    invoke-virtual {v1, v2}, Lcom/google/lens/sdk/LensApi;->checkPostCaptureAvailability(Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;)V

    new-array v1, v3, [Lnou;

    iget-object v2, v0, Lhzh;->e:Lnph;

    aput-object v2, v1, v4

    iget-object v2, v0, Lhzh;->f:Lnph;

    aput-object v2, v1, v6

    invoke-static {v1}, Lnsy;->v([Lnou;)Lnom;

    move-result-object v1

    new-instance v2, Lbpf;

    invoke-direct {v2, v0, v3}, Lbpf;-><init>(Lhzh;I)V

    iget-object v0, v0, Lhzh;->c:Ljuh;

    invoke-virtual {v1, v2, v0}, Lnom;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lnou;

    return-void

    :pswitch_7
    iget-object v0, p0, Lhxc;->a:Ljava/lang/Object;

    check-cast v0, Lhzh;

    iget-object v0, v0, Lhzh;->d:Lmrl;

    invoke-interface {v0}, Lmrl;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/lens/sdk/LensApi;

    return-void

    :pswitch_8
    iget-object v0, p0, Lhxc;->a:Ljava/lang/Object;

    check-cast v0, Lhzh;

    invoke-virtual {v0}, Lhzh;->e()Lcom/google/lens/sdk/LensApi;

    move-result-object v1

    iget-object v0, v0, Lhzh;->b:Landroid/app/Activity;

    new-instance v2, Lhze;

    invoke-direct {v2}, Lhze;-><init>()V

    invoke-virtual {v1, v0, v2}, Lcom/google/lens/sdk/LensApi;->launchLensActivity(Landroid/app/Activity;Lcom/google/lens/sdk/LensApi$LensLaunchStatusCallback;)V

    return-void

    :pswitch_9
    iget-object v0, p0, Lhxc;->a:Ljava/lang/Object;

    invoke-interface {v0}, Liff;->b()Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->sendAccessibilityEvent(I)V

    return-void

    :pswitch_a
    iget-object v0, p0, Lhxc;->a:Ljava/lang/Object;

    check-cast v0, Lhxx;

    iget-boolean v1, v0, Lhxx;->m:Z

    if-nez v1, :cond_9

    return-void

    :cond_9
    iget-object v1, v0, Lhxx;->h:Ljuh;

    new-instance v2, Lhxc;

    const/4 v4, 0x7

    invoke-direct {v2, v0, v4}, Lhxc;-><init>(Lhxx;I)V

    invoke-virtual {v1, v2}, Ljuh;->execute(Ljava/lang/Runnable;)V

    iget-object v1, v0, Lhxx;->p:Lhxz;

    iget-object v2, v0, Lhxx;->q:Lhxz;

    invoke-virtual {v1, v2}, Lhxz;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v6

    if-nez v2, :cond_a

    goto :goto_3

    :cond_a
    invoke-virtual {v1}, Lhxz;->ordinal()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    :pswitch_b
    goto :goto_3

    :pswitch_c
    iget-object v1, v0, Lhxx;->c:Lhgy;

    invoke-interface {v1}, Lhgy;->g()V

    iget-object v1, v0, Lhxx;->c:Lhgy;

    const v2, 0x7f130019

    invoke-interface {v1, v2, v3}, Lhgy;->f(II)V

    goto :goto_3

    :pswitch_d
    iget-object v1, v0, Lhxx;->c:Lhgy;

    invoke-interface {v1}, Lhgy;->g()V

    iget-object v1, v0, Lhxx;->c:Lhgy;

    const v2, 0x7f130017

    invoke-interface {v1, v2, v3}, Lhgy;->f(II)V

    goto :goto_3

    :pswitch_e
    iget-object v1, v0, Lhxx;->c:Lhgy;

    invoke-interface {v1}, Lhgy;->g()V

    iget-object v1, v0, Lhxx;->c:Lhgy;

    const v2, 0x7f130016

    invoke-interface {v1, v2, v3}, Lhgy;->f(II)V

    goto :goto_3

    :pswitch_f
    iget-object v1, v0, Lhxx;->c:Lhgy;

    invoke-interface {v1}, Lhgy;->g()V

    iget-object v1, v0, Lhxx;->c:Lhgy;

    const v2, 0x7f13001a

    invoke-interface {v1, v2, v3}, Lhgy;->f(II)V

    iget-object v1, v0, Lhxx;->e:Ldpl;

    iget-object v2, v1, Ldpl;->c:Landroid/view/View;

    iget-object v1, v1, Ldpl;->b:Landroid/content/Context;

    const v3, 0x7f14045c

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :goto_3
    iget-object v1, v0, Lhxx;->p:Lhxz;

    iput-object v1, v0, Lhxx;->q:Lhxz;

    return-void

    :pswitch_10
    iget-object v0, p0, Lhxc;->a:Ljava/lang/Object;

    check-cast v0, Lhxx;

    iget-object v1, v0, Lhxx;->v:Lhxv;

    iget-object v2, v0, Lhxx;->d:Landroid/content/Context;

    iget-object v3, v1, Lhxv;->c:Ljew;

    const-string v4, "hotshot_first_time_edu"

    invoke-virtual {v3, v4}, Ljew;->X(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_b

    invoke-virtual {v1, v2}, Lhxv;->a(Landroid/content/Context;)V

    iget-object v2, v1, Lhxv;->c:Ljew;

    invoke-virtual {v2, v4}, Ljew;->Z(Ljava/lang/String;)I

    iput-boolean v6, v1, Lhxv;->b:Z

    :cond_b
    iget-object v0, v0, Lhxx;->f:Lhyd;

    iget-object v1, v0, Lhyd;->b:Lmqp;

    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;

    sget-object v1, Ldho;->a:Ldhk;

    sget-object v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->c()Lnaz;

    move-result-object v1

    const-string v2, "Set Hotshot Debug mode for ObjectDetection %b"

    const/16 v3, 0xfb9

    invoke-static {v1, v2, v5, v3}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    iget-object v1, v0, Lhyd;->b:Lmqp;

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;

    sget-object v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->c()Lnaz;

    move-result-object v1

    const-string v2, "Set Hotshot Debug mode %b"

    const/16 v3, 0xfb8

    invoke-static {v1, v2, v5, v3}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    :cond_c
    invoke-virtual {v0, v6}, Lhyd;->a(Z)V

    iput-boolean v6, v0, Lhyd;->c:Z

    return-void

    :cond_d
    sget-object v0, Lhyd;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v1, "startHotshot, view is not present."

    const/16 v2, 0xfbf

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return-void

    :pswitch_11
    iget-object v0, p0, Lhxc;->a:Ljava/lang/Object;

    check-cast v0, Lhxx;

    iget-object v1, v0, Lhxx;->f:Lhyd;

    iget-object v0, v0, Lhxx;->p:Lhxz;

    iget-object v2, v1, Lhyd;->b:Lmqp;

    invoke-virtual {v2}, Lmqp;->g()Z

    move-result v3

    if-eqz v3, :cond_f

    iget-boolean v1, v1, Lhyd;->c:Z

    if-nez v1, :cond_e

    goto :goto_4

    :cond_e
    invoke-virtual {v2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;

    iput-object v0, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->d:Lhxz;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->invalidate()V

    return-void

    :cond_f
    :goto_4
    return-void

    :pswitch_12
    iget-object v0, p0, Lhxc;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;

    iget-object v2, v0, Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;->c:Landroid/widget/ImageView;

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_10

    iget-object v2, v0, Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;->c:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    :cond_10
    iget-object v1, v0, Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_5
    iget-object v1, v0, Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;->d:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_11
    return-void

    :pswitch_13
    iget-object v0, p0, Lhxc;->a:Ljava/lang/Object;

    check-cast v0, Lhxf;

    iget-object v0, v0, Lhxf;->a:Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;

    invoke-virtual {v0, v4}, Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;->setVisibility(I)V

    return-void

    :pswitch_14
    iget-object v0, p0, Lhxc;->a:Ljava/lang/Object;

    check-cast v0, Lhxf;

    iget-object v0, v0, Lhxf;->a:Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;->setVisibility(I)V

    return-void

    :pswitch_15
    iget-object v0, p0, Lhxc;->a:Ljava/lang/Object;

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    :pswitch_16
    iget-object v0, p0, Lhxc;->a:Ljava/lang/Object;

    check-cast v0, Lhxe;

    iget-object v1, v0, Lhxe;->a:Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;->setVisibility(I)V

    invoke-virtual {v0}, Lhxe;->k()V

    return-void

    :pswitch_17
    iget-object v0, p0, Lhxc;->a:Ljava/lang/Object;

    check-cast v0, Lhxe;

    invoke-virtual {v0}, Lhxe;->l()V

    return-void

    :pswitch_18
    iget-object v0, p0, Lhxc;->a:Ljava/lang/Object;

    check-cast v0, Lhxe;

    iget-object v0, v0, Lhxe;->a:Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;

    invoke-virtual {v0, v4}, Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;->setVisibility(I)V

    return-void

    :cond_12
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
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

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method
