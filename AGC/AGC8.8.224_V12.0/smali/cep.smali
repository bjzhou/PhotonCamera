.class public final Lcep;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final synthetic a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcep;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()Ljui;
    .locals 4

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v0

    sget-object v1, Ljuh;->b:Ljuh;

    new-instance v2, Lcji;

    invoke-direct {v2, v0}, Lcji;-><init>(Lnph;)V

    invoke-virtual {v1, v2}, Ljuh;->execute(Ljava/lang/Runnable;)V

    invoke-static {}, Lduq;->a()Ldin;

    move-result-object v1

    new-instance v2, Lcjs;

    sget-object v3, Ljuh;->a:Ljui;

    invoke-direct {v2, v3, v0}, Lcjs;-><init>(Ljava/util/concurrent/Executor;Lnou;)V

    sget-object v0, Ldin;->c:Ldin;

    invoke-virtual {v1, v0}, Ldin;->a(Ldin;)Z

    move-result v0

    const/4 v1, 0x1

    if-eq v1, v0, :cond_0

    const/16 v0, 0x80

    goto :goto_0

    :cond_0
    const/16 v0, 0x200

    :goto_0
    new-instance v1, Lcjh;

    invoke-direct {v1, v2, v0}, Lcjh;-><init>(Ljui;I)V

    return-object v1
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcep;->a:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v0

    return-object v0

    :pswitch_0
    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-static {}, Lcep;->a()Ljui;

    move-result-object v0

    new-instance v1, Ljuh;

    invoke-direct {v1, v0}, Ljuh;-><init>(Ljui;)V

    return-object v1

    :pswitch_2
    throw v2

    :pswitch_3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Ljvd;->o(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v0

    return-object v0

    :pswitch_4
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "HelperThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_5
    const-string v0, "00UiWorker"

    invoke-static {v0}, Ljvd;->j(Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-static {v0}, Lcje;->a(Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0

    :pswitch_6
    invoke-static {}, Lcis;->b()Ljvb;

    move-result-object v0

    return-object v0

    :pswitch_7
    sget-object v0, Lcis;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_8
    new-instance v0, Ljvd;

    invoke-direct {v0}, Ljvd;-><init>()V

    return-object v0

    :pswitch_9
    sget-object v0, Lcis;->a:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_a
    invoke-static {}, Ljur;->a()Ljuq;

    move-result-object v0

    const-string v2, "CriticalPath"

    iput-object v2, v0, Ljuq;->a:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Ljuq;->b(I)V

    invoke-virtual {v0, v1}, Ljuq;->c(I)V

    invoke-virtual {v0}, Ljuq;->a()Ljur;

    move-result-object v0

    invoke-static {v0}, Ljvd;->h(Ljur;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-static {v0}, Lcje;->a(Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0

    :pswitch_b
    sget-object v0, Lfew;->b:Lfew;

    return-object v0

    :pswitch_c
    new-instance v0, Lchs;

    invoke-direct {v0}, Lchs;-><init>()V

    return-object v0

    :pswitch_d
    new-instance v0, Lchl;

    invoke-direct {v0}, Lchl;-><init>()V

    return-object v0

    :pswitch_e
    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v0

    return-object v0

    :pswitch_f
    new-instance v0, Lcgl;

    invoke-direct {v0}, Lcgl;-><init>()V

    return-object v0

    :pswitch_10
    new-instance v0, Ljvk;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Ljvk;-><init>(Ljava/lang/Object;)V

    return-object v0

    :pswitch_11
    new-instance v0, Lbze;

    invoke-direct {v0, v2}, Lbze;-><init>([I)V

    return-object v0

    :pswitch_12
    new-instance v0, Lbze;

    invoke-direct {v0, v2}, Lbze;-><init>([I)V

    return-object v0

    :pswitch_13
    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v0

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
