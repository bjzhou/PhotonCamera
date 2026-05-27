.class public final Lgnh;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Loiw;I)V
    .locals 0

    iput p2, p0, Lgnh;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgnh;->a:Loiw;

    return-void
.end method

.method public static a(Loiw;)Lgnh;
    .locals 2

    new-instance v0, Lgnh;

    const/16 v1, 0xa

    invoke-direct {v0, p0, v1}, Lgnh;-><init>(Loiw;I)V

    return-object v0
.end method

.method public static b(Loiw;)Lgnh;
    .locals 2

    new-instance v0, Lgnh;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Lgnh;-><init>(Loiw;I)V

    return-object v0
.end method

.method public static c(Loiw;)Lgnh;
    .locals 2

    new-instance v0, Lgnh;

    const/16 v1, 0x12

    invoke-direct {v0, p0, v1}, Lgnh;-><init>(Loiw;I)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 6

    iget v0, p0, Lgnh;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lgnh;->a:Loiw;

    check-cast v0, Lgzo;

    invoke-virtual {v0}, Lgzo;->a()Ligo;

    move-result-object v0

    sget-object v1, Lgyp;->a:Lgyp;

    iget v1, v1, Lgyp;->f:I

    const-string v2, "pref_af_mode_back"

    invoke-virtual {v0, v2, v1}, Ligo;->r(Ljava/lang/String;I)Ljwb;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lgnh;->a:Loiw;

    check-cast v0, Lgzo;

    invoke-virtual {v0}, Lgzo;->a()Ligo;

    move-result-object v0

    const-string v1, "pref_camera_advice_settings"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ligo;->q(Ljava/lang/String;Z)Ljwb;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lgnh;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    new-instance v1, Ljew;

    invoke-direct {v1, v0}, Ljew;-><init>(Landroid/content/SharedPreferences;)V

    return-object v1

    :pswitch_2
    iget-object v0, p0, Lgnh;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljwb;

    new-instance v1, Lgyd;

    invoke-direct {v1, v0}, Lgyd;-><init>(Ljwb;)V

    return-object v1

    :pswitch_3
    iget-object v0, p0, Lgnh;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkbc;

    new-instance v1, Ljvq;

    invoke-direct {v1, v0}, Ljvq;-><init>(Lkbc;)V

    return-object v1

    :pswitch_4
    iget-object v0, p0, Lgnh;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhkv;

    new-instance v1, Ljew;

    invoke-direct {v1, v0}, Ljew;-><init>(Lhkv;)V

    return-object v1

    :pswitch_5
    iget-object v0, p0, Lgnh;->a:Loiw;

    new-instance v1, Ljew;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Ljew;-><init>(Loiw;[B)V

    return-object v1

    :pswitch_6
    iget-object v0, p0, Lgnh;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljuh;

    new-instance v1, Lkns;

    invoke-direct {v1, v0}, Lkns;-><init>(Ljuh;)V

    return-object v1

    :pswitch_7
    iget-object v0, p0, Lgnh;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    sget-object v1, Ldho;->a:Ldhk;

    invoke-interface {v0}, Ldhi;->g()V

    sget-object v0, Lmza;->a:Lmza;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_8
    iget-object v0, p0, Lgnh;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Ldja;

    check-cast v0, Lgtu;

    invoke-direct {v1, v0}, Ldja;-><init>(Lgtu;)V

    return-object v1

    :pswitch_9
    iget-object v0, p0, Lgnh;->a:Loiw;

    check-cast v0, Lfjy;

    invoke-virtual {v0}, Lfjy;->a()Lfjx;

    move-result-object v0

    new-instance v1, Lgsu;

    invoke-direct {v1, v0}, Lgsu;-><init>(Lfjx;)V

    return-object v1

    :pswitch_a
    iget-object v0, p0, Lgnh;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgsm;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    new-instance v3, Lgsn;

    invoke-direct {v3, v0, v1, v2}, Lgsn;-><init>(Lgsm;J)V

    return-object v3

    :pswitch_b
    new-instance v0, Lgrm;

    invoke-direct {v0}, Lgrm;-><init>()V

    iget-object v0, p0, Lgnh;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    sget-object v1, Ldho;->a:Ldhk;

    invoke-interface {v0}, Ldhi;->d()V

    new-instance v0, Lgrm;

    invoke-direct {v0}, Lgrm;-><init>()V

    return-object v0

    :pswitch_c
    iget-object v0, p0, Lgnh;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Ljux;

    new-instance v2, Ljuw;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0xa

    invoke-direct {v2, v0, v4, v5, v3}, Ljuw;-><init>(Ljava/util/concurrent/ScheduledExecutorService;JLjava/util/concurrent/TimeUnit;)V

    invoke-direct {v1, v2}, Ljux;-><init>(Ljuw;)V

    return-object v1

    :pswitch_d
    iget-object v0, p0, Lgnh;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    new-instance v1, Lgcx;

    sget-object v2, Ldib;->a:Ldhk;

    invoke-interface {v0, v2}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, v0}, Lgcx;-><init>(I)V

    return-object v1

    :pswitch_e
    iget-object v0, p0, Lgnh;->a:Loiw;

    invoke-static {v0}, Lemq;->a(Loiw;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgpc;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_f
    iget-object v0, p0, Lgnh;->a:Loiw;

    invoke-static {v0}, Lemq;->a(Loiw;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgpb;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_10
    iget-object v0, p0, Lgnh;->a:Loiw;

    invoke-static {v0}, Lemq;->a(Loiw;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgoy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_11
    iget-object v0, p0, Lgnh;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lken;

    new-instance v1, Lgnv;

    invoke-direct {v1, v0}, Lgnv;-><init>(Lken;)V

    return-object v1

    :pswitch_12
    iget-object v0, p0, Lgnh;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    sget-object v1, Ldho;->a:Ldhk;

    invoke-interface {v0}, Ldhi;->e()V

    sget-object v0, Lcdk;->g:Lcdk;

    return-object v0

    :pswitch_13
    iget-object v0, p0, Lgnh;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    invoke-static {v0}, Lewq;->e(Ldhi;)V

    sget-object v0, Lgng;->a:Lgng;

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
