.class public final Lieo;
.super Landroid/os/Handler;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lieo;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lieo;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x3e9

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget p1, p1, Landroid/os/Message;->what:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not supported state msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object p1, Liep;->e:Liep;

    invoke-static {p1}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->-$$Nest$sfputprogressState(Liep;)V

    invoke-virtual {p0, v2}, Lieo;->removeMessages(I)V

    invoke-static {}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->-$$Nest$sfgetprogressState()Liep;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->-$$Nest$mupdateAnimationProgressIndex(Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;Liep;)V

    return-void

    :pswitch_1
    const/16 p1, 0x3ea

    invoke-virtual {p0, p1}, Lieo;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, v2}, Lieo;->removeMessages(I)V

    sget-object p1, Liep;->d:Liep;

    invoke-static {p1}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->-$$Nest$sfputprogressState(Liep;)V

    invoke-static {}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->-$$Nest$sfgetprogressState()Liep;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->-$$Nest$mupdateAnimationProgressIndex(Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;Liep;)V

    return-void

    :cond_1
    sget-object p1, Liep;->d:Liep;

    invoke-static {p1}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->-$$Nest$sfputprogressState(Liep;)V

    invoke-static {}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->-$$Nest$sfgetprogressState()Liep;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->-$$Nest$mupdateAnimationProgressIndex(Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;Liep;)V

    return-void

    :pswitch_2
    sget-object p1, Liep;->c:Liep;

    invoke-static {p1}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->-$$Nest$sfputprogressState(Liep;)V

    invoke-virtual {p0, v2}, Lieo;->removeMessages(I)V

    invoke-static {}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->-$$Nest$sfgetprogressState()Liep;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->-$$Nest$mupdateAnimationProgressIndex(Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;Liep;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
