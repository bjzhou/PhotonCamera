.class public final Lpay;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lppp;


# instance fields
.field private final a:Lqkh;


# direct methods
.method public constructor <init>(Lqkh;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    :goto_2
    iput-object p1, p0, Lpay;->a:Lqkh;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()I
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/media/AudioRecord;->getAudioSessionId()I

    move-result p0

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    iget-object p0, p0, Lqki;->a:Landroid/media/AudioRecord;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    check-cast p0, Lqki;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lpay;->a:Lqkh;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final addOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lpay;->a:Lqkh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0, p1, p2}, Lqkh;->addOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V

    goto/32 :goto_1

    nop

    nop
.end method

.method public final b()I
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p0, Lqki;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lqki;->a:Landroid/media/AudioRecord;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Landroid/media/AudioRecord;->getAudioSource()I

    move-result p0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lpay;->a:Lqkh;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    return p0

    nop

    nop
.end method

.method public final c()I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lpay;->a:Lqkh;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    check-cast p0, Lqki;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    iget-object p0, p0, Lqki;->a:Landroid/media/AudioRecord;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method

.method public final close()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lpay;->a:Lqkh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0}, Lqkh;->close()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final d()Landroid/media/AudioFormat;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object p0, p0, Lpay;->a:Lqkh;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    :goto_2
    invoke-interface {p0}, Lqkh;->a()Landroid/media/AudioFormat;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e()V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0}, Lqkh;->c()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    iget-object p0, p0, Lpay;->a:Lqkh;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final f()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lpay;->a:Lqkh;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0}, Lqkh;->d()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final g(Ljava/nio/ByteBuffer;I)Lpic;
    .locals 0

    goto/32 :goto_6

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p1, p0}, Lpic;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_4

    nop

    nop

    :goto_4
    return-object p1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance p1, Lpic;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lpay;->a:Lqkh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    invoke-interface {p0, p1, p2}, Lqkh;->b(Ljava/nio/ByteBuffer;I)Lqkg;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-eqz p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final getPreferredDevice()Landroid/media/AudioDeviceInfo;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0}, Lqkh;->getPreferredDevice()Landroid/media/AudioDeviceInfo;

    move-result-object p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    :goto_2
    iget-object p0, p0, Lpay;->a:Lqkh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final getRoutedDevice()Landroid/media/AudioDeviceInfo;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0}, Lqkh;->getRoutedDevice()Landroid/media/AudioDeviceInfo;

    move-result-object p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    iget-object p0, p0, Lpay;->a:Lqkh;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final removeOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-interface {p0, p1}, Lqkh;->removeOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;)V

    goto/32 :goto_0

    nop

    nop

    :goto_2
    iget-object p0, p0, Lpay;->a:Lqkh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    :goto_1
    iget-object p0, p0, Lpay;->a:Lqkh;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0, p1}, Lqkh;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final setPreferredMicrophoneDirection(I)Z
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0, p1}, Lqkh;->setPreferredMicrophoneDirection(I)Z

    move-result p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lpay;->a:Lqkh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final setPreferredMicrophoneFieldDimension(F)Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lpay;->a:Lqkh;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    :goto_2
    invoke-interface {p0, p1}, Lqkh;->setPreferredMicrophoneFieldDimension(F)Z

    move-result p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method
