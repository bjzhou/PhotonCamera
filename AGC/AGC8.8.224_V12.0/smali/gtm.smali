.class public final Lgtm;
.super Lcbf;

# interfaces
.implements Landroid/os/IInterface;


# instance fields
.field final synthetic a:Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.apps.camera.remotecontrol.IRemoteControlService"

    invoke-direct {p0, v0}, Lcbf;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;)V
    .locals 0

    iput-object p1, p0, Lgtm;->a:Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;

    const-string p1, "com.google.android.apps.camera.remotecontrol.IRemoteControlService"

    invoke-direct {p0, p1}, Lcbf;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 3

    iget-object v0, p0, Lgtm;->a:Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;

    iget-object v1, v0, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->b:Lezy;

    iget v1, v1, Lezy;->c:I

    invoke-virtual {v0}, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->f()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    :cond_0
    if-lez v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v2
.end method

.method protected final x(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    return v1

    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    invoke-static {p2}, Lcbg;->b(Landroid/os/Parcel;)V

    iget-object p2, p0, Lgtm;->a:Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;

    invoke-virtual {p2}, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->f()Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lgtm;->a:Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;

    invoke-virtual {p2}, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->c()Lgto;

    move-result-object p2

    iput p1, p2, Lgto;->f:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p2, Lgto;->g:J

    iget-object p2, p2, Lgto;->h:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lgtn;

    invoke-interface {p3, p1}, Lgtn;->d(F)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    invoke-static {p2}, Lcbg;->b(Landroid/os/Parcel;)V

    iget-object p2, p0, Lgtm;->a:Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;

    invoke-virtual {p2}, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->f()Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lgtm;->a:Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;

    invoke-virtual {p2}, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->c()Lgto;

    move-result-object p2

    iput p1, p2, Lgto;->d:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p2, Lgto;->e:J

    iget-object p2, p2, Lgto;->h:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lgtn;

    invoke-interface {p3, p1}, Lgtn;->c(F)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p2}, Lcbg;->b(Landroid/os/Parcel;)V

    iget-object p2, p0, Lgtm;->a:Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;

    invoke-virtual {p2}, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->f()Z

    move-result p2

    if-eqz p2, :cond_6

    if-ltz p1, :cond_0

    const/16 p2, 0x64

    if-gt p1, p2, :cond_0

    iget-object p2, p0, Lgtm;->a:Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;

    invoke-virtual {p2}, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->c()Lgto;

    move-result-object p2

    iput p1, p2, Lgto;->c:I

    iget-object p2, p2, Lgto;->h:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lgtn;

    invoke-interface {p3, p1}, Lgtn;->a(I)V

    goto :goto_2

    :cond_0
    sget-object p2, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->a:Lnak;

    invoke-virtual {p2}, Lnaf;->b()Lnaz;

    move-result-object p2

    check-cast p2, Lnah;

    const/16 p3, 0xcb5

    invoke-interface {p2, p3}, Lnah;->G(I)Lnaz;

    move-result-object p2

    check-cast p2, Lnah;

    const-string p3, "Ignoring invalid value for external case battery: %d"

    invoke-interface {p2, p3, p1}, Lnah;->p(Ljava/lang/String;I)V

    goto/16 :goto_5

    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p2}, Lcbg;->e(Landroid/os/Parcel;)Z

    move-result p3

    invoke-static {p2}, Lcbg;->b(Landroid/os/Parcel;)V

    iget-object p2, p0, Lgtm;->a:Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;

    invoke-virtual {p2}, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->f()Z

    move-result p2

    if-nez p2, :cond_1

    goto/16 :goto_5

    :cond_1
    invoke-virtual {p0}, Lgtm;->b()Z

    move-result p2

    const/4 v3, 0x6

    const/4 v4, 0x5

    if-nez p2, :cond_2

    if-eq p1, v4, :cond_2

    if-ne p1, v3, :cond_6

    goto :goto_3

    :cond_2
    packed-switch p1, :pswitch_data_1

    sget-object p1, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->b()Lnaz;

    move-result-object p1

    const-string p2, "handleRemoteKeyEvent: Unknown Key event received. Ignoring it."

    const/16 p3, 0xcb4

    invoke-static {p1, p2, p3}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    goto/16 :goto_5

    :pswitch_4
    iget-object p1, p0, Lgtm;->a:Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;

    const/4 p2, 0x7

    invoke-virtual {p1, p2, p3}, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->d(IZ)V

    goto/16 :goto_5

    :goto_3
    :pswitch_5
    if-eqz p2, :cond_3

    iget-object p1, p0, Lgtm;->a:Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;

    invoke-virtual {p1, v3, p3}, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->d(IZ)V

    goto/16 :goto_5

    :cond_3
    if-eqz p3, :cond_6

    iget-object p1, p0, Lgtm;->a:Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;

    invoke-virtual {p1, v1}, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->e(Z)V

    goto/16 :goto_5

    :pswitch_6
    if-eqz p2, :cond_4

    iget-object p1, p0, Lgtm;->a:Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;

    invoke-virtual {p1, v4, p3}, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->d(IZ)V

    goto :goto_5

    :cond_4
    if-eqz p3, :cond_6

    iget-object p1, p0, Lgtm;->a:Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;

    invoke-virtual {p1, v2}, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->e(Z)V

    goto :goto_5

    :pswitch_7
    iget-object p1, p0, Lgtm;->a:Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;

    const/4 p2, 0x4

    invoke-virtual {p1, p2, p3}, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->d(IZ)V

    goto :goto_5

    :pswitch_8
    iget-object p1, p0, Lgtm;->a:Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;

    const/4 p2, 0x3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->d(IZ)V

    goto :goto_5

    :pswitch_9
    iget-object p1, p0, Lgtm;->a:Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;

    invoke-virtual {p1, v0, p3}, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->d(IZ)V

    goto :goto_5

    :pswitch_a
    iget-object p1, p0, Lgtm;->a:Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;

    invoke-virtual {p1, v2, p3}, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->d(IZ)V

    goto :goto_5

    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p2}, Lcbg;->b(Landroid/os/Parcel;)V

    iget-object p2, p0, Lgtm;->a:Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;

    invoke-virtual {p2}, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->f()Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lgtm;->a:Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;

    iput p1, p2, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->d:I

    invoke-virtual {p2}, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->c()Lgto;

    move-result-object p1

    iget-object p2, p0, Lgtm;->a:Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;

    iget p2, p2, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->d:I

    and-int/2addr p2, v2

    if-eq v2, p2, :cond_5

    goto :goto_4

    :cond_5
    const/4 v1, 0x1

    :goto_4
    iput-boolean v1, p1, Lgto;->b:Z

    goto :goto_5

    :pswitch_c
    invoke-virtual {p0}, Lgtm;->b()Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    sget p2, Lcbg;->a:I

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    :pswitch_d
    iget-object p1, p0, Lgtm;->a:Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->f()Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    sget p2, Lcbg;->a:I

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    :pswitch_e
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :cond_6
    :goto_5
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method
