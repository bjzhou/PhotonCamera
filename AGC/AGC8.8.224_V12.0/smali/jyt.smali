.class final Ljyt;
.super Ljava/lang/Object;

# interfaces
.implements Lkmw;


# instance fields
.field private final a:Lldp;


# direct methods
.method public constructor <init>(Lldp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljyt;->a:Lldp;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Ljyt;->a:Lldp;

    check-cast v0, Lldq;

    iget-object v0, v0, Lldq;->a:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    return v0
.end method

.method public final addOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Ljyt;->a:Lldp;

    invoke-interface {v0, p1, p2}, Lldp;->addOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V

    return-void
.end method

.method public final b()Landroid/media/AudioFormat;
    .locals 1

    iget-object v0, p0, Ljyt;->a:Lldp;

    invoke-interface {v0}, Lldp;->a()Landroid/media/AudioFormat;

    move-result-object v0

    return-object v0
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Ljyt;->a:Lldp;

    invoke-interface {v0}, Lldp;->c()V

    return-void
.end method

.method public final close()V
    .locals 1

    iget-object v0, p0, Ljyt;->a:Lldp;

    invoke-interface {v0}, Lldp;->close()V

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Ljyt;->a:Lldp;

    invoke-interface {v0}, Lldp;->d()V

    return-void
.end method

.method public final e(Ljava/nio/ByteBuffer;I)Lkgd;
    .locals 1

    iget-object v0, p0, Ljyt;->a:Lldp;

    invoke-interface {v0, p1, p2}, Lldp;->b(Ljava/nio/ByteBuffer;I)Lldo;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance p2, Lkgd;

    invoke-direct {p2, p1}, Lkgd;-><init>(Lldo;)V

    return-object p2
.end method

.method public final getPreferredDevice()Landroid/media/AudioDeviceInfo;
    .locals 1

    iget-object v0, p0, Ljyt;->a:Lldp;

    invoke-interface {v0}, Lldp;->getPreferredDevice()Landroid/media/AudioDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getRoutedDevice()Landroid/media/AudioDeviceInfo;
    .locals 1

    iget-object v0, p0, Ljyt;->a:Lldp;

    invoke-interface {v0}, Lldp;->getRoutedDevice()Landroid/media/AudioDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public final removeOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;)V
    .locals 1

    iget-object v0, p0, Ljyt;->a:Lldp;

    invoke-interface {v0, p1}, Lldp;->removeOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;)V

    return-void
.end method

.method public final setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z
    .locals 1

    iget-object v0, p0, Ljyt;->a:Lldp;

    invoke-interface {v0, p1}, Lldp;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z

    move-result p1

    return p1
.end method
