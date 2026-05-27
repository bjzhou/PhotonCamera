.class public final Lmms;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;I)V
    .locals 0

    iput p2, p0, Lmms;->b:I

    iput-object p1, p0, Lmms;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/vr/ndk/base/DaydreamApi;I)V
    .locals 0

    iput p2, p0, Lmms;->b:I

    iput-object p1, p0, Lmms;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lmmt;I)V
    .locals 0

    iput p2, p0, Lmms;->b:I

    iput-object p1, p0, Lmms;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    const-string p1, "DaydreamApi"

    iget v0, p0, Lmms;->b:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lmms;->a:Ljava/lang/Object;

    if-nez p2, :cond_2

    move-object v2, v1

    goto :goto_1

    :pswitch_0
    iget-object p1, p0, Lmms;->a:Ljava/lang/Object;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "com.google.android.apps.photos.cameraassistant.ICameraAssistantService"

    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lius;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lius;

    goto :goto_0

    :cond_1
    new-instance v1, Lius;

    invoke-direct {v1, p2}, Lius;-><init>(Landroid/os/IBinder;)V

    :goto_0
    check-cast p1, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;

    iput-object v1, p1, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->h:Lius;

    iget-object p1, p0, Lmms;->a:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->c:Z

    return-void

    :pswitch_1
    iget-object p1, p0, Lmms;->a:Ljava/lang/Object;

    new-instance v0, Lmmq;

    invoke-direct {v0, p0, p2}, Lmmq;-><init>(Lmms;Landroid/os/IBinder;)V

    check-cast p1, Lmmt;

    invoke-virtual {p1, v0}, Lmmt;->c(Lmmk;)V

    return-void

    :cond_2
    const-string v2, "com.google.vr.vrcore.common.api.IVrCoreSdkService"

    invoke-interface {p2, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lofe;

    if-eqz v3, :cond_3

    check-cast v2, Lofe;

    goto :goto_1

    :cond_3
    new-instance v2, Lofe;

    invoke-direct {v2, p2}, Lofe;-><init>(Landroid/os/IBinder;)V

    :goto_1
    check-cast v0, Lcom/google/vr/ndk/base/DaydreamApi;

    iput-object v2, v0, Lcom/google/vr/ndk/base/DaydreamApi;->e:Lofe;

    :try_start_0
    iget-object p2, p0, Lmms;->a:Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Lcom/google/vr/ndk/base/DaydreamApi;

    iget-object v0, v0, Lcom/google/vr/ndk/base/DaydreamApi;->e:Lofe;

    invoke-virtual {v0}, Lcbe;->a()Landroid/os/Parcel;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2}, Lcbe;->y(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    const-string v1, "com.google.vr.vrcore.common.api.IDaydreamManager"

    invoke-interface {v2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v3, v1, Lofc;

    if-eqz v3, :cond_5

    check-cast v1, Lofc;

    goto :goto_2

    :cond_5
    new-instance v1, Lofc;

    invoke-direct {v1, v2}, Lofc;-><init>(Landroid/os/IBinder;)V

    :goto_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    check-cast p2, Lcom/google/vr/ndk/base/DaydreamApi;

    iput-object v1, p2, Lcom/google/vr/ndk/base/DaydreamApi;->f:Lofc;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p2

    const-string p2, "RemoteException in onServiceConnected"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    iget-object p2, p0, Lmms;->a:Ljava/lang/Object;

    check-cast p2, Lcom/google/vr/ndk/base/DaydreamApi;

    iget-object p2, p2, Lcom/google/vr/ndk/base/DaydreamApi;->f:Lofc;

    if-nez p2, :cond_6

    const-string p2, "Daydream service component unavailable."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object p1, p0, Lmms;->a:Ljava/lang/Object;

    check-cast p1, Lcom/google/vr/ndk/base/DaydreamApi;

    iget-object p1, p1, Lcom/google/vr/ndk/base/DaydreamApi;->b:Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x0

    :goto_4
    if-ge v0, p2, :cond_7

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_7
    iget-object p1, p0, Lmms;->a:Ljava/lang/Object;

    check-cast p1, Lcom/google/vr/ndk/base/DaydreamApi;

    iget-object p1, p1, Lcom/google/vr/ndk/base/DaydreamApi;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget p1, p0, Lmms;->b:I

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lmms;->a:Ljava/lang/Object;

    check-cast p1, Lcom/google/vr/ndk/base/DaydreamApi;

    iput-object v0, p1, Lcom/google/vr/ndk/base/DaydreamApi;->e:Lofe;

    return-void

    :pswitch_0
    iget-object p1, p0, Lmms;->a:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;

    iput-object v0, p1, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->h:Lius;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->c:Z

    return-void

    :pswitch_1
    iget-object p1, p0, Lmms;->a:Ljava/lang/Object;

    new-instance v0, Lmmr;

    invoke-direct {v0, p0}, Lmmr;-><init>(Lmms;)V

    check-cast p1, Lmmt;

    invoke-virtual {p1, v0}, Lmmt;->c(Lmmk;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
