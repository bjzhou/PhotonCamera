.class final Lcuq;
.super Landroid/media/AudioDeviceCallback;


# instance fields
.field final synthetic a:Lcur;


# direct methods
.method public constructor <init>(Lcur;)V
    .locals 0

    iput-object p1, p0, Lcuq;->a:Lcur;

    invoke-direct {p0}, Landroid/media/AudioDeviceCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAudioDevicesAdded([Landroid/media/AudioDeviceInfo;)V
    .locals 0

    iget-object p1, p0, Lcuq;->a:Lcur;

    invoke-virtual {p1}, Lcur;->b()V

    return-void
.end method

.method public final onAudioDevicesRemoved([Landroid/media/AudioDeviceInfo;)V
    .locals 0

    iget-object p1, p0, Lcuq;->a:Lcur;

    invoke-virtual {p1}, Lcur;->b()V

    return-void
.end method
