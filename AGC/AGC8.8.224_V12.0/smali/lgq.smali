.class public final Llgq;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Loiw;I)V
    .locals 0

    iput p2, p0, Llgq;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llgq;->a:Loiw;

    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 6

    iget v0, p0, Llgq;->b:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Llgq;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroidx/wear/ambient/AmbientMode$AmbientController;

    invoke-direct {v1, v0}, Landroidx/wear/ambient/AmbientMode$AmbientController;-><init>(Ljava/io/File;)V

    return-object v1

    :pswitch_0
    iget-object v0, p0, Llgq;->a:Loiw;

    new-instance v1, Llpm;

    invoke-direct {v1, v0}, Llpm;-><init>(Loiw;)V

    return-object v1

    :pswitch_1
    iget-object v0, p0, Llgq;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Random;

    new-instance v1, Llmr;

    invoke-direct {v1, v0}, Llmr;-><init>(Ljava/util/Random;)V

    return-object v1

    :pswitch_2
    iget-object v0, p0, Llgq;->a:Loiw;

    check-cast v0, Logl;

    iget-object v0, v0, Logl;->a:Ljava/lang/Object;

    check-cast v0, Lmqp;

    sget-object v1, Lmpx;->a:Lmpx;

    new-instance v2, Lllg;

    invoke-direct {v2, v1, v1}, Lllg;-><init>(Lmqp;Lmqp;)V

    invoke-virtual {v0, v2}, Lmqp;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lllg;

    return-object v0

    :pswitch_3
    iget-object v0, p0, Llgq;->a:Loiw;

    new-instance v1, Llld;

    invoke-direct {v1, v0}, Llld;-><init>(Loiw;)V

    return-object v1

    :pswitch_4
    iget-object v0, p0, Llgq;->a:Loiw;

    check-cast v0, Logl;

    iget-object v0, v0, Logl;->a:Ljava/lang/Object;

    check-cast v0, Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Primes-Jank"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_0
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v1

    :pswitch_5
    iget-object v0, p0, Llgq;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llil;

    invoke-static {v0}, Lmwn;->H(Ljava/lang/Object;)Lmwn;

    move-result-object v0

    return-object v0

    :pswitch_6
    iget-object v0, p0, Llgq;->a:Loiw;

    check-cast v0, Logl;

    iget-object v0, v0, Logl;->a:Ljava/lang/Object;

    check-cast v0, Lmqp;

    new-instance v1, Lcom/google/android/libraries/performance/primes/metrics/crash/NativeCrashHandlerImpl;

    invoke-direct {v1, v0}, Lcom/google/android/libraries/performance/primes/metrics/crash/NativeCrashHandlerImpl;-><init>(Lmqp;)V

    return-object v1

    :pswitch_7
    iget-object v0, p0, Llgq;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmrq;

    new-instance v1, Llio;

    invoke-direct {v1, v0}, Llio;-><init>(Lmrq;)V

    return-object v1

    :pswitch_8
    iget-object v0, p0, Llgq;->a:Loiw;

    check-cast v0, Ldwh;

    invoke-virtual {v0}, Ldwh;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v1, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    sget-object v3, Llin;->a:Lnak;

    invoke-virtual {v3}, Lnaf;->c()Lnaz;

    move-result-object v3

    const-string v4, "Failed to get PackageInfo for: %s"

    const/16 v5, 0x1191

    invoke-static {v3, v4, v0, v5, v2}, Ld;->i(Lnaz;Ljava/lang/String;Ljava/lang/Object;CLjava/lang/Throwable;)V

    :goto_1
    return-object v1

    :pswitch_9
    iget-object v0, p0, Llgq;->a:Loiw;

    invoke-static {v0}, Logj;->a(Loiw;)Logd;

    move-result-object v0

    new-instance v1, Llih;

    invoke-direct {v1, v0}, Llih;-><init>(Logd;)V

    return-object v1

    :pswitch_a
    iget-object v0, p0, Llgq;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Llhe;

    check-cast v0, Llhf;

    invoke-direct {v1, v0}, Llhe;-><init>(Llhf;)V

    return-object v1

    :pswitch_b
    iget-object v0, p0, Llgq;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llhe;

    new-instance v2, Llhf;

    invoke-direct {v2, v0, v1, v1}, Llhf;-><init>(Llhe;[B[B)V

    return-object v2

    :pswitch_c
    iget-object v0, p0, Llgq;->a:Loiw;

    check-cast v0, Ldwh;

    invoke-virtual {v0}, Ldwh;->a()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Loir;->a:Loir;

    invoke-virtual {v1}, Loir;->b()Lois;

    move-result-object v1

    invoke-interface {v1, v0}, Lois;->a(Landroid/content/Context;)Lozu;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_d
    iget-object v0, p0, Llgq;->a:Loiw;

    check-cast v0, Ldwh;

    invoke-virtual {v0}, Ldwh;->a()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Loio;->a:Loio;

    invoke-virtual {v1}, Loio;->b()Loip;

    move-result-object v1

    invoke-interface {v1, v0}, Loip;->a(Landroid/content/Context;)Lozu;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_e
    iget-object v0, p0, Llgq;->a:Loiw;

    check-cast v0, Ldwh;

    invoke-virtual {v0}, Ldwh;->a()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lohh;->a:Lohh;

    invoke-virtual {v1}, Lohh;->b()Lohi;

    move-result-object v1

    invoke-interface {v1, v0}, Lohi;->a(Landroid/content/Context;)Loax;

    move-result-object v0

    iget-object v0, v0, Loax;->a:Lnxa;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_f
    iget-object v0, p0, Llgq;->a:Loiw;

    check-cast v0, Ldwh;

    invoke-virtual {v0}, Ldwh;->a()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Loil;->a:Loil;

    invoke-virtual {v1}, Loil;->b()Loim;

    move-result-object v1

    invoke-interface {v1, v0}, Loim;->a(Landroid/content/Context;)Lozu;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_10
    iget-object v0, p0, Llgq;->a:Loiw;

    check-cast v0, Ldwh;

    invoke-virtual {v0}, Ldwh;->a()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Loii;->a:Loii;

    invoke-virtual {v1}, Loii;->b()Loij;

    move-result-object v1

    invoke-interface {v1, v0}, Loij;->b(Landroid/content/Context;)Lozu;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_11
    iget-object v0, p0, Llgq;->a:Loiw;

    check-cast v0, Ldwh;

    invoke-virtual {v0}, Ldwh;->a()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lohw;->a:Lohw;

    invoke-virtual {v1}, Lohw;->b()Lohx;

    move-result-object v1

    invoke-interface {v1, v0}, Lohx;->e(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_12
    iget-object v0, p0, Llgq;->a:Loiw;

    check-cast v0, Ldwh;

    invoke-virtual {v0}, Ldwh;->a()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Loif;->a:Loif;

    invoke-virtual {v1}, Loif;->b()Loig;

    move-result-object v1

    invoke-interface {v1, v0}, Loig;->a(Landroid/content/Context;)Lozu;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_13
    iget-object v0, p0, Llgq;->a:Loiw;

    check-cast v0, Ldwh;

    invoke-virtual {v0}, Ldwh;->a()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Loht;->a:Loht;

    invoke-virtual {v1}, Loht;->b()Lohu;

    move-result-object v1

    invoke-interface {v1, v0}, Lohu;->b(Landroid/content/Context;)Lljh;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    nop

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
