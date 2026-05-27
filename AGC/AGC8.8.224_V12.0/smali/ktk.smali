.class public final synthetic Lktk;
.super Ljava/lang/Object;

# interfaces
.implements Lxw;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;

.field private final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lhax;Lhaw;I)V
    .locals 0

    iput p3, p0, Lktk;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lktk;->a:Ljava/lang/Object;

    iput-object p2, p0, Lktk;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Runnable;Landroid/content/Context;I)V
    .locals 0

    iput p3, p0, Lktk;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lktk;->a:Ljava/lang/Object;

    iput-object p2, p0, Lktk;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lxu;)Ljava/lang/Object;
    .locals 6

    iget v0, p0, Lktk;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lktk;->a:Ljava/lang/Object;

    iget-object v1, p0, Lktk;->b:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lhaw;

    iput-object p1, v2, Lhaw;->a:Lxu;

    check-cast v0, Lhax;

    iget-object p1, v0, Lhax;->b:Landroid/hardware/camera2/CameraManager;

    iget-object v0, v0, Lhax;->c:Ljava/util/concurrent/Executor;

    check-cast v1, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CameraManager;->registerAvailabilityCallback(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    const-string p1, "SidelineCameraStateChecker#waitForCamerasAllAvailable"

    return-object p1

    :pswitch_0
    iget-object v0, p0, Lktk;->a:Ljava/lang/Object;

    iget-object v1, p0, Lktk;->b:Ljava/lang/Object;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    new-instance v3, Lktl;

    invoke-direct {v3, v2, v0, p1}, Lktl;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Runnable;Lxu;)V

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.USER_UNLOCKED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {v1}, Lktm;->d(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lxu;->a(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Lkgc;

    const/4 v4, 0x3

    invoke-direct {v0, v2, v1, v3, v4}, Lkgc;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/content/Context;Landroid/content/BroadcastReceiver;I)V

    sget-object v1, Lnnv;->a:Lnnv;

    iget-object p1, p1, Lxu;->c:Lxz;

    if-eqz p1, :cond_1

    invoke-interface {p1, v0, v1}, Lnou;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_1
    :goto_0
    const-string p1, "DirectBootUtils.runWhenUnlocked"

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
