.class public final Lday;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final synthetic a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lday;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()Ljava/util/concurrent/Executor;
    .locals 2

    invoke-static {}, Ldle;->a()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Ljul;

    invoke-direct {v1, v0}, Ljul;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v1
.end method

.method public static final b()Lnox;
    .locals 1

    invoke-static {}, Ldle;->a()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-static {v0}, Lnsy;->r(Ljava/util/concurrent/ScheduledExecutorService;)Lnox;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method public static c()Lj$/time/Clock;
    .locals 1

    invoke-static {}, Lj$/time/Clock;->systemUTC()Lj$/time/Clock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method public static d()Ldmv;
    .locals 1

    new-instance v0, Ldmv;

    invoke-direct {v0}, Ldmv;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lday;->a:I

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ldnm;

    invoke-direct {v0}, Ldnm;-><init>()V

    return-object v0

    :pswitch_0
    invoke-static {}, Ldnf;->a()V

    const-class v0, Ldnf;

    return-object v0

    :pswitch_1
    invoke-static {v1}, Lkcr;->a(Z)Lkcr;

    move-result-object v0

    return-object v0

    :pswitch_2
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v1, v1}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    return-object v0

    :pswitch_3
    invoke-static {}, Lday;->d()Ldmv;

    move-result-object v0

    return-object v0

    :pswitch_4
    new-instance v0, Lkay;

    invoke-direct {v0}, Lkay;-><init>()V

    return-object v0

    :pswitch_5
    throw v3

    :pswitch_6
    throw v3

    :pswitch_7
    throw v3

    :pswitch_8
    new-instance v0, Ldkt;

    invoke-direct {v0}, Ldkt;-><init>()V

    return-object v0

    :pswitch_9
    new-instance v0, Ldle;

    invoke-direct {v0, v3}, Ldle;-><init>([B)V

    return-object v0

    :pswitch_a
    new-instance v0, Ldkd;

    invoke-direct {v0}, Ldkd;-><init>()V

    return-object v0

    :pswitch_b
    new-instance v0, Ldjx;

    invoke-direct {v0}, Ldjx;-><init>()V

    const-string v1, "Generic"

    invoke-virtual {v0, v1}, Ldjx;->a(Ljava/lang/String;)Lkam;

    move-result-object v0

    return-object v0

    :pswitch_c
    new-instance v0, Ldfr;

    invoke-direct {v0}, Ldfr;-><init>()V

    return-object v0

    :pswitch_d
    new-instance v0, Lejf;

    invoke-direct {v0, v3}, Lejf;-><init>([B)V

    return-object v0

    :pswitch_e
    new-instance v0, Ldew;

    invoke-direct {v0}, Ldew;-><init>()V

    return-object v0

    :pswitch_f
    const-string v0, "cvk-ex"

    invoke-static {v0}, Ljvd;->f(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_10
    new-instance v0, Lddk;

    invoke-direct {v0}, Lddk;-><init>()V

    return-object v0

    :pswitch_11
    return-object v2

    :pswitch_12
    return-object v2

    :pswitch_13
    new-instance v0, Ldja;

    invoke-direct {v0, v3}, Ldja;-><init>([B)V

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
