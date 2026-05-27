.class public final Lcjz;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;

.field private final synthetic c:I


# direct methods
.method public constructor <init>(Loiw;Loiw;I)V
    .locals 0

    iput p3, p0, Lcjz;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcjz;->a:Loiw;

    iput-object p2, p0, Lcjz;->b:Loiw;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;I[B)V
    .locals 0

    iput p3, p0, Lcjz;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcjz;->b:Loiw;

    iput-object p2, p0, Lcjz;->a:Loiw;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;I[C)V
    .locals 0

    iput p3, p0, Lcjz;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcjz;->b:Loiw;

    iput-object p2, p0, Lcjz;->a:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/concurrent/Executor;
    .locals 6

    iget v0, p0, Lcjz;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcjz;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lckd;

    iget-object v1, p0, Lcjz;->a:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgre;

    new-instance v2, Ljul;

    invoke-static {}, Ljur;->a()Ljuq;

    move-result-object v3

    const-string v4, "FireflyProcMgr"

    iput-object v4, v3, Ljuq;->a:Ljava/lang/String;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljuq;->b(I)V

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljuq;->c(I)V

    invoke-virtual {v3}, Ljuq;->a()Ljur;

    move-result-object v3

    invoke-static {v3}, Ljvd;->d(Ljur;)Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    invoke-direct {v2, v3}, Ljul;-><init>(Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lghc;

    invoke-direct {v3, v0, v4}, Lghc;-><init>(Lckd;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Lgre;->b(Ljava/util/concurrent/Executor;)Lcju;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcjz;->b:Loiw;

    check-cast v0, Lkao;

    invoke-virtual {v0}, Lkao;->a()Lkaq;

    move-result-object v0

    iget-object v1, p0, Lcjz;->a:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldhi;

    new-instance v2, Lddg;

    new-instance v3, Ljul;

    const-string v4, "CameraFatalErrorTracker"

    invoke-static {v4}, Ljvd;->f(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    invoke-direct {v3, v4}, Ljul;-><init>(Ljava/util/concurrent/Executor;)V

    invoke-direct {v2, v0, v1, v3}, Lddg;-><init>(Lkaq;Ldhi;Ljava/util/concurrent/Executor;)V

    return-object v2

    :pswitch_1
    iget-object v0, p0, Lcjz;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcjz;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnou;

    new-instance v2, Lcjs;

    invoke-direct {v2, v0, v1}, Lcjs;-><init>(Ljava/util/concurrent/Executor;Lnou;)V

    return-object v2

    :pswitch_2
    iget-object v0, p0, Lcjz;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcjz;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgre;

    invoke-virtual {v1, v0}, Lgre;->b(Ljava/util/concurrent/Executor;)Lcju;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcjz;->c:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcjz;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0

    :pswitch_0
    invoke-virtual {p0}, Lcjz;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-virtual {p0}, Lcjz;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0

    :pswitch_2
    invoke-virtual {p0}, Lcjz;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
