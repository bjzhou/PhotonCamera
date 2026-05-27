.class public final Ldrx;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Loiw;I)V
    .locals 0

    iput p2, p0, Ldrx;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldrx;->a:Loiw;

    return-void
.end method

.method public static a(Loiw;)Ldrx;
    .locals 2

    new-instance v0, Ldrx;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ldrx;-><init>(Loiw;I)V

    return-object v0
.end method

.method public static b(Loiw;)Ldrx;
    .locals 2

    new-instance v0, Ldrx;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Ldrx;-><init>(Loiw;I)V

    return-object v0
.end method

.method public static c(Loiw;)Ldrx;
    .locals 2

    new-instance v0, Ldrx;

    const/16 v1, 0x12

    invoke-direct {v0, p0, v1}, Ldrx;-><init>(Loiw;I)V

    return-object v0
.end method

.method public static d(Loiw;)Ldrx;
    .locals 2

    new-instance v0, Ldrx;

    const/16 v1, 0x14

    invoke-direct {v0, p0, v1}, Ldrx;-><init>(Loiw;I)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 11

    iget v0, p0, Ldrx;->b:I

    const/4 v1, 0x3

    const/16 v2, 0x1e

    const-string v3, "feature\\.[a-z0-9\\-]+\\.[a-z0-9\\-]+\\.[a-z0-9\\-]+(:\\d+)?"

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-wide/16 v7, 0x5

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ldrx;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldxz;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    new-instance v3, Ldya;

    invoke-direct {v3, v0, v1, v2}, Ldya;-><init>(Ldxz;J)V

    return-object v3

    :pswitch_0
    iget-object v0, p0, Ldrx;->a:Loiw;

    check-cast v0, Lggf;

    invoke-virtual {v0}, Lggf;->a()Lgkr;

    move-result-object v0

    new-instance v1, Lbkc;

    invoke-direct {v1, v0, v5}, Lbkc;-><init>(Lgkr;[B)V

    return-object v1

    :pswitch_1
    iget-object v0, p0, Ldrx;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkbc;

    new-instance v0, Ldxl;

    invoke-direct {v0, v5}, Ldxl;-><init>([B)V

    return-object v0

    :pswitch_2
    iget-object v0, p0, Ldrx;->a:Loiw;

    check-cast v0, Lihk;

    invoke-virtual {v0}, Lihk;->a()Ljew;

    move-result-object v0

    const v1, 0x7f0b0154

    invoke-virtual {v0, v1}, Ljew;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;

    return-object v0

    :pswitch_3
    iget-object v0, p0, Ldrx;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldsx;

    invoke-static {v0}, Ldnf;->f(Ldsx;)Ldva;

    move-result-object v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v7, v8, v2}, Ldva;->c(JLjava/util/concurrent/TimeUnit;)V

    const/16 v2, 0x32

    iput v2, v0, Ldva;->b:I

    iput v1, v0, Ldva;->a:I

    iput v4, v0, Ldva;->c:I

    invoke-virtual {v0}, Ldva;->b()V

    invoke-virtual {v0}, Ldva;->a()Lduv;

    move-result-object v0

    return-object v0

    :pswitch_4
    iget-object v0, p0, Ldrx;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldsx;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "feature.acmi.imu.frame-straightness"

    invoke-static {v3, v4}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v4, v1, v2}, Ldty;->b(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ldsx;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Feature with bad type name \'feature.acmi.imu.frame-straightness\'!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_5
    iget-object v0, p0, Ldrx;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldsx;

    invoke-static {v0}, Ldnf;->f(Ldsx;)Ldva;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v7, v8, v1}, Ldva;->c(JLjava/util/concurrent/TimeUnit;)V

    iput v2, v0, Ldva;->b:I

    iput v6, v0, Ldva;->a:I

    iput v4, v0, Ldva;->c:I

    invoke-virtual {v0}, Ldva;->b()V

    invoke-virtual {v0}, Ldva;->a()Lduv;

    move-result-object v0

    return-object v0

    :pswitch_6
    iget-object v0, p0, Ldrx;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldsx;

    invoke-static {v0}, Ldnf;->f(Ldsx;)Ldva;

    move-result-object v0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v7, v8, v3}, Ldva;->c(JLjava/util/concurrent/TimeUnit;)V

    iput v2, v0, Ldva;->b:I

    iput v1, v0, Ldva;->a:I

    iput v4, v0, Ldva;->c:I

    invoke-virtual {v0}, Ldva;->b()V

    invoke-virtual {v0}, Ldva;->a()Lduv;

    move-result-object v0

    return-object v0

    :pswitch_7
    iget-object v0, p0, Ldrx;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldsx;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "feature.acmi.camera.motion-sharpness"

    invoke-static {v3, v4}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v4, v1, v2}, Ldty;->b(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ldsx;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Feature with bad type name \'feature.acmi.camera.motion-sharpness\'!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_8
    iget-object v0, p0, Ldrx;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldsx;

    invoke-static {v0}, Ldnf;->f(Ldsx;)Ldva;

    move-result-object v0

    iput v6, v0, Ldva;->a:I

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v7, v8, v1}, Ldva;->c(JLjava/util/concurrent/TimeUnit;)V

    invoke-virtual {v0}, Ldva;->b()V

    invoke-virtual {v0}, Ldva;->a()Lduv;

    move-result-object v0

    return-object v0

    :pswitch_9
    iget-object v0, p0, Ldrx;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldsx;

    invoke-static {v0}, Ldnf;->f(Ldsx;)Ldva;

    move-result-object v0

    iput v6, v0, Ldva;->a:I

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v7, v8, v1}, Ldva;->c(JLjava/util/concurrent/TimeUnit;)V

    invoke-virtual {v0}, Ldva;->b()V

    invoke-virtual {v0}, Ldva;->a()Lduv;

    move-result-object v0

    return-object v0

    :pswitch_a
    iget-object v0, p0, Ldrx;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldsx;

    invoke-static {v0}, Ldnf;->f(Ldsx;)Ldva;

    move-result-object v0

    iput v6, v0, Ldva;->a:I

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v7, v8, v1}, Ldva;->c(JLjava/util/concurrent/TimeUnit;)V

    invoke-virtual {v0}, Ldva;->b()V

    invoke-virtual {v0}, Ldva;->a()Lduv;

    move-result-object v0

    return-object v0

    :pswitch_b
    iget-object v0, p0, Ldrx;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldsx;

    invoke-static {v0}, Ldnf;->f(Ldsx;)Ldva;

    move-result-object v0

    iput v6, v0, Ldva;->a:I

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v7, v8, v1}, Ldva;->c(JLjava/util/concurrent/TimeUnit;)V

    invoke-virtual {v0}, Ldva;->b()V

    invoke-virtual {v0}, Ldva;->a()Lduv;

    move-result-object v0

    return-object v0

    :pswitch_c
    iget-object v0, p0, Ldrx;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldsx;

    invoke-static {v0}, Ldnf;->f(Ldsx;)Ldva;

    move-result-object v0

    iput v6, v0, Ldva;->a:I

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v7, v8, v1}, Ldva;->c(JLjava/util/concurrent/TimeUnit;)V

    invoke-virtual {v0}, Ldva;->b()V

    invoke-virtual {v0}, Ldva;->a()Lduv;

    move-result-object v0

    return-object v0

    :pswitch_d
    iget-object v0, p0, Ldrx;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldsx;

    invoke-static {v0}, Ldnf;->f(Ldsx;)Ldva;

    move-result-object v0

    iput v6, v0, Ldva;->a:I

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v7, v8, v1}, Ldva;->c(JLjava/util/concurrent/TimeUnit;)V

    invoke-virtual {v0}, Ldva;->b()V

    invoke-virtual {v0}, Ldva;->a()Lduv;

    move-result-object v0

    return-object v0

    :pswitch_e
    iget-object v0, p0, Ldrx;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldsx;

    invoke-static {v0}, Ldnf;->f(Ldsx;)Ldva;

    move-result-object v0

    iput v6, v0, Ldva;->a:I

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v7, v8, v1}, Ldva;->c(JLjava/util/concurrent/TimeUnit;)V

    invoke-virtual {v0}, Ldva;->b()V

    invoke-virtual {v0}, Ldva;->a()Lduv;

    move-result-object v0

    return-object v0

    :pswitch_f
    iget-object v0, p0, Ldrx;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljuf;

    const-string v1, "FeatureCentral"

    invoke-static {v1}, Ljvd;->f(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Ljul;

    invoke-direct {v2, v1}, Ljul;-><init>(Ljava/util/concurrent/Executor;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ldei;

    const/16 v4, 0x10

    invoke-direct {v3, v1, v4}, Ldei;-><init>(Ljava/util/concurrent/ExecutorService;I)V

    invoke-virtual {v0, v3}, Ljuf;->d(Lkad;)V

    return-object v2

    :pswitch_10
    new-instance v6, Lbkc;

    invoke-direct {v6, v5, v5}, Lbkc;-><init>([B[S)V

    iget-object v0, p0, Ldrx;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljvs;

    new-instance v0, Lgkr;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lgkr;-><init>(Lbkc;Ljvs;[B[B[B)V

    return-object v0

    :pswitch_11
    iget-object v0, p0, Ldrx;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    sget-object v1, Ldho;->a:Ldhk;

    invoke-interface {v0}, Ldhi;->f()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_12
    iget-object v0, p0, Ldrx;->a:Loiw;

    invoke-static {v0}, Logj;->a(Loiw;)Logd;

    move-result-object v0

    invoke-interface {v0}, Logd;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldrc;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_13
    iget-object v0, p0, Ldrx;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmrd;

    invoke-virtual {v0}, Lmrd;->g()Ljvs;

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
