.class public final Lgyd;
.super Ljava/lang/Object;


# static fields
.field private static final e:Lnak;


# instance fields
.field public final a:Ljwb;

.field public final b:Ljwb;

.field public final c:Ljwb;

.field public final d:Ljwb;

.field private final f:Ljwb;

.field private g:Landroid/media/AudioDeviceInfo;

.field private h:Landroid/media/AudioDeviceInfo;

.field private i:Landroid/media/AudioDeviceInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/settings/AudioDeviceStateManager"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lgyd;->e:Lnak;

    return-void
.end method

.method public constructor <init>(Ljwb;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgyd;->a:Ljwb;

    new-instance p1, Ljvk;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p1, v0}, Ljvk;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lgyd;->f:Ljwb;

    new-instance p1, Ljvk;

    invoke-direct {p1, v0}, Ljvk;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lgyd;->b:Ljwb;

    new-instance p1, Ljvk;

    invoke-direct {p1, v0}, Ljvk;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lgyd;->c:Ljwb;

    new-instance p1, Ljvk;

    invoke-direct {p1, v0}, Ljvk;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lgyd;->d:Ljwb;

    return-void
.end method


# virtual methods
.method public final a(Lgyc;)I
    .locals 4

    iget-object v0, p0, Lgyd;->g:Landroid/media/AudioDeviceInfo;

    sget-object v1, Lgyc;->c:Lgyc;

    invoke-virtual {p1, v1}, Lgyc;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lgyd;->h:Landroid/media/AudioDeviceInfo;

    goto :goto_0

    :cond_0
    sget-object v1, Lgyc;->d:Lgyc;

    invoke-virtual {p1, v1}, Lgyc;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lgyd;->i:Landroid/media/AudioDeviceInfo;

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    sget-object v1, Lgyd;->e:Lnak;

    invoke-virtual {v1}, Lnaf;->c()Lnaz;

    move-result-object v1

    const-string v2, "no available audioDeviceInfo for %s"

    const/16 v3, 0xd2d

    invoke-static {v1, v2, p1, v3}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result p1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public final b()Lgys;
    .locals 1

    iget-object v0, p0, Lgyd;->a:Ljwb;

    invoke-interface {v0}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgys;

    return-object v0
.end method

.method public final c(Lgyc;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lgyd;->g:Landroid/media/AudioDeviceInfo;

    sget-object v1, Lgyc;->c:Lgyc;

    invoke-virtual {p1, v1}, Lgyc;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lgyd;->h:Landroid/media/AudioDeviceInfo;

    goto :goto_0

    :cond_0
    sget-object v1, Lgyc;->d:Lgyc;

    invoke-virtual {p1, v1}, Lgyc;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lgyd;->i:Landroid/media/AudioDeviceInfo;

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/media/AudioDeviceInfo;->getProductName()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    const-string p1, ""

    :goto_1
    return-object p1
.end method

.method public final d(Lgyc;Landroid/media/AudioDeviceInfo;)V
    .locals 3

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/media/AudioDeviceInfo;->getType()I

    :cond_0
    sget-object v0, Lgyc;->a:Lgyc;

    invoke-virtual {p1}, Lgyc;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    sget-object p2, Lgyd;->e:Lnak;

    invoke-virtual {p2}, Lnaf;->c()Lnaz;

    move-result-object p2

    const-string v0, "setAudioDeviceInfo type %s is not supported"

    const/16 v1, 0xd2f

    invoke-static {p2, v0, p1, v1}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    return-void

    :pswitch_0
    iput-object p2, p0, Lgyd;->i:Landroid/media/AudioDeviceInfo;

    iget-object p1, p0, Lgyd;->c:Ljwb;

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Ljwb;->bn(Ljava/lang/Object;)V

    return-void

    :pswitch_1
    iput-object p2, p0, Lgyd;->h:Landroid/media/AudioDeviceInfo;

    iget-object p1, p0, Lgyd;->f:Ljwb;

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object p1, p0, Lgyd;->b:Ljwb;

    iget-object p2, p0, Lgyd;->f:Ljwb;

    check-cast p2, Ljvk;

    iget-object p2, p2, Ljvk;->d:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Boolean;

    invoke-interface {p1, p2}, Ljwb;->bn(Ljava/lang/Object;)V

    return-void

    :pswitch_2
    iput-object p2, p0, Lgyd;->g:Landroid/media/AudioDeviceInfo;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final e(Lgyc;Ljava/lang/Boolean;)V
    .locals 2

    sget-object v0, Lgyc;->a:Lgyc;

    invoke-virtual {p1}, Lgyc;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    sget-object p2, Lgyd;->e:Lnak;

    invoke-virtual {p2}, Lnaf;->c()Lnaz;

    move-result-object p2

    const-string v0, "setMicConnected type %s is not supported"

    const/16 v1, 0xd30

    invoke-static {p2, v0, p1, v1}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    return-void

    :pswitch_0
    sget-object p1, Lgyc;->d:Lgyc;

    invoke-virtual {p0, p1}, Lgyd;->f(Lgyc;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lgyd;->e:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    const-string p2, "setMicConnected failed, bluetooth is not available"

    const/16 v0, 0xd32

    invoke-static {p1, p2, v0}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return-void

    :cond_0
    iget-object p1, p0, Lgyd;->d:Ljwb;

    invoke-interface {p1, p2}, Ljwb;->bn(Ljava/lang/Object;)V

    return-void

    :pswitch_1
    sget-object p1, Lgyc;->c:Lgyc;

    invoke-virtual {p0, p1}, Lgyd;->f(Lgyc;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lgyd;->e:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    const-string p2, "setMicConnected failed, wired mic is not available"

    const/16 v0, 0xd31

    invoke-static {p1, p2, v0}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return-void

    :cond_1
    iget-object p1, p0, Lgyd;->b:Ljwb;

    invoke-interface {p1, p2}, Ljwb;->bn(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final f(Lgyc;)Z
    .locals 3

    sget-object v0, Lgyc;->a:Lgyc;

    invoke-virtual {p1}, Lgyc;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lgyd;->e:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "isMicAvailable type %s is not supported"

    const/16 v2, 0xd33

    invoke-static {v0, v1, p1, v2}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    const/4 p1, 0x0

    return p1

    :pswitch_0
    iget-object p1, p0, Lgyd;->c:Ljwb;

    check-cast p1, Ljvk;

    iget-object p1, p1, Ljvk;->d:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :pswitch_1
    iget-object p1, p0, Lgyd;->f:Ljwb;

    check-cast p1, Ljvk;

    iget-object p1, p1, Ljvk;->d:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :pswitch_2
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final g(Lgyc;)Z
    .locals 3

    sget-object v0, Lgyc;->a:Lgyc;

    invoke-virtual {p1}, Lgyc;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lgyd;->e:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "getMicConnected type %s is not supported"

    const/16 v2, 0xd34

    invoke-static {v0, v1, p1, v2}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    const/4 p1, 0x0

    return p1

    :pswitch_0
    iget-object p1, p0, Lgyd;->d:Ljwb;

    check-cast p1, Ljvk;

    iget-object p1, p1, Ljvk;->d:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :pswitch_1
    iget-object p1, p0, Lgyd;->b:Ljwb;

    check-cast p1, Ljvk;

    iget-object p1, p1, Ljvk;->d:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :pswitch_2
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
