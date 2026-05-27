.class public final Lhhd;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final synthetic a:I

.field private final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljew;I[B[B)V
    .locals 0

    iput p2, p0, Lhhd;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhhd;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljew;I[B[B[B)V
    .locals 0

    iput p2, p0, Lhhd;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhhd;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Loiw;I)V
    .locals 0

    iput p2, p0, Lhhd;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhhd;->b:Ljava/lang/Object;

    return-void
.end method

.method public static a(Loiw;)Lhhd;
    .locals 2

    new-instance v0, Lhhd;

    const/16 v1, 0x11

    invoke-direct {v0, p0, v1}, Lhhd;-><init>(Loiw;I)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lhhd;->a:I

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lhhd;->b:Ljava/lang/Object;

    check-cast v0, Lhnv;

    invoke-virtual {v0}, Lhnv;->a()Lhnu;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lhhd;->b:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpu;

    new-instance v1, Ljvk;

    iget-object v2, v0, Lhpu;->d:Lmwa;

    iget-object v3, v0, Lhpu;->f:Lhpt;

    invoke-virtual {v2, v3}, Lmwa;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, v0, Lhpu;->f:Lhpt;

    goto :goto_0

    :cond_0
    sget-object v0, Lhpt;->c:Lhpt;

    :goto_0
    invoke-direct {v1, v0}, Ljvk;-><init>(Ljava/lang/Object;)V

    return-object v1

    :pswitch_1
    iget-object v0, p0, Lhhd;->b:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpu;

    new-instance v1, Ljvk;

    invoke-virtual {v0}, Lhpu;->b()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {v1, v0}, Ljvk;-><init>(Ljava/lang/Object;)V

    return-object v1

    :pswitch_2
    iget-object v0, p0, Lhhd;->b:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lebu;

    invoke-static {v0}, Lmwn;->H(Ljava/lang/Object;)Lmwn;

    move-result-object v0

    goto :goto_1

    :cond_1
    sget-object v0, Lmza;->a:Lmza;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_3
    iget-object v0, p0, Lhhd;->b:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/stats/Instrumentation;

    new-instance v1, Lhnj;

    invoke-direct {v1, v0}, Lhnj;-><init>(Lcom/google/android/apps/camera/stats/Instrumentation;)V

    return-object v1

    :pswitch_4
    iget-object v0, p0, Lhhd;->b:Ljava/lang/Object;

    check-cast v0, Ljew;

    iget-object v0, v0, Ljew;->a:Ljava/lang/Object;

    return-object v0

    :pswitch_5
    iget-object v0, p0, Lhhd;->b:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    sget-object v1, Ldho;->cc:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ldhi;->e()V

    :cond_2
    sget-object v0, Lmpx;->a:Lmpx;

    return-object v0

    :pswitch_6
    iget-object v0, p0, Lhhd;->b:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    sget-object v1, Ldij;->a:Ldhk;

    invoke-interface {v0}, Ldhi;->g()V

    sget-object v0, Lmpx;->a:Lmpx;

    return-object v0

    :pswitch_7
    iget-object v0, p0, Lhhd;->b:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    sget-object v1, Ldij;->a:Ldhk;

    invoke-interface {v0}, Ldhi;->g()V

    sget-object v0, Lmpx;->a:Lmpx;

    return-object v0

    :pswitch_8
    iget-object v0, p0, Lhhd;->b:Ljava/lang/Object;

    check-cast v0, Ldwh;

    invoke-virtual {v0}, Ldwh;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lkqo;->a(Landroid/content/Context;)Lkqn;

    move-result-object v0

    sget-object v2, Llqk;->a:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Lkqn;->g(Landroid/net/Uri;)V

    sget-object v2, Llqk;->a:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Lkqn;->h(Landroid/net/Uri;)V

    const-string v2, "file_name"

    iput-object v2, v0, Lkqn;->c:Ljava/lang/String;

    invoke-virtual {v0}, Lkqn;->f()V

    invoke-virtual {v0}, Lkqn;->b()V

    const-string v2, "restore_path"

    iput-object v2, v0, Lkqn;->e:Ljava/lang/String;

    invoke-virtual {v0}, Lkqn;->c()V

    invoke-static {v5}, Llpm;->b(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lkqn;->d(I)V

    invoke-static {v1}, Llpm;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lkqn;->e(I)V

    invoke-virtual {v0}, Lkqn;->a()Lkqo;

    move-result-object v0

    return-object v0

    :pswitch_9
    iget-object v0, p0, Lhhd;->b:Ljava/lang/Object;

    check-cast v0, Ldwh;

    invoke-virtual {v0}, Ldwh;->a()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljew;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Ljew;-><init>(Landroid/content/Context;[C)V

    return-object v1

    :pswitch_a
    iget-object v0, p0, Lhhd;->b:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfbz;

    new-instance v1, Ligo;

    invoke-direct {v1, v0}, Ligo;-><init>(Lfbz;)V

    return-object v1

    :pswitch_b
    iget-object v0, p0, Lhhd;->b:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/stats/Instrumentation;

    invoke-static {v0}, Lcom/google/android/apps/camera/stats/Instrumentation;->d(Lcom/google/android/apps/camera/stats/Instrumentation;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_c
    iget-object v0, p0, Lhhd;->b:Ljava/lang/Object;

    check-cast v0, Ljew;

    iget-object v0, v0, Ljew;->a:Ljava/lang/Object;

    return-object v0

    :pswitch_d
    iget-object v0, p0, Lhhd;->b:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

    iget-object v0, v0, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->d:Lhjo;

    return-object v0

    :pswitch_e
    iget-object v0, p0, Lhhd;->b:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhil;

    new-instance v1, Ljew;

    invoke-direct {v1, v0}, Ljew;-><init>(Lhil;)V

    return-object v1

    :pswitch_f
    iget-object v0, p0, Lhhd;->b:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgzn;

    new-instance v1, Lgzp;

    sget-object v2, Lgzd;->F:Lgzs;

    invoke-interface {v0, v2}, Lgzn;->b(Lgzb;)Ljwb;

    move-result-object v0

    invoke-direct {v1, v0}, Lgzp;-><init>(Ljwb;)V

    return-object v1

    :pswitch_10
    iget-object v0, p0, Lhhd;->b:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgzn;

    new-instance v1, Lgzp;

    sget-object v2, Lgzd;->G:Lgzs;

    invoke-interface {v0, v2}, Lgzn;->b(Lgzb;)Ljwb;

    move-result-object v0

    invoke-direct {v1, v0}, Lgzp;-><init>(Ljwb;)V

    return-object v1

    :pswitch_11
    iget-object v0, p0, Lhhd;->b:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    new-instance v1, Landroid/media/SoundPool$Builder;

    invoke-direct {v1}, Landroid/media/SoundPool$Builder;-><init>()V

    new-instance v3, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    sget-object v6, Ldho;->a:Ldhk;

    invoke-interface {v0}, Ldhi;->c()V

    const/16 v0, 0xd

    invoke-virtual {v3, v0}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_12
    iget-object v0, p0, Lhhd;->b:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgzm;

    new-array v1, v1, [Ljvs;

    sget-object v2, Lgzd;->k:Lgzr;

    invoke-interface {v0, v2}, Lgzm;->a(Lgzb;)Ljvs;

    move-result-object v2

    aput-object v2, v1, v3

    sget-object v2, Lgzd;->p:Lgzr;

    invoke-interface {v0, v2}, Lgzm;->a(Lgzb;)Ljvs;

    move-result-object v0

    aput-object v0, v1, v5

    invoke-static {v1}, Ljvw;->i([Ljvs;)Ljvs;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_13
    iget-object v0, p0, Lhhd;->b:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    sget-object v6, Ldho;->a:Ldhk;

    invoke-interface {v0}, Ldhi;->c()V

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/media/AudioAttributes$Builder;->setHapticChannelsMuted(Z)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    new-instance v1, Landroid/media/SoundPool$Builder;

    invoke-direct {v1}, Landroid/media/SoundPool$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

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
