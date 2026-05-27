.class public final Lvh;
.super Lonf;

# interfaces
.implements Lolz;


# static fields
.field public static final a:Lvh;


# instance fields
.field private final synthetic b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lvh;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lvh;-><init>(I)V

    sput-object v0, Lvh;->a:Lvh;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lvh;->b:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lonf;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lvh;->b:I

    const/4 v1, -0x3

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :try_start_0
    const-class v1, Lawh;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :pswitch_0
    sget-object v0, Lvj;->a:[I

    sget-object v0, Lvj;->b:Ljava/util/concurrent/ThreadFactory;

    const-string v2, "CXCP-Camera-E"

    invoke-static {v0, v2}, Lvj;->c(Ljava/util/concurrent/ThreadFactory;Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-static {v0, v1}, Lvj;->b(Ljava/util/concurrent/ThreadFactory;I)Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_1
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "CXCP-Camera-H"

    invoke-direct {v0, v2, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v1

    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lbby;

    new-instance v3, Lavs;

    invoke-direct {v3, v1}, Lavs;-><init>(Ljava/lang/ClassLoader;)V

    invoke-direct {v2, v1, v3}, Lbby;-><init>(Ljava/lang/ClassLoader;Lavs;)V

    goto :goto_1

    :cond_0
    move-object v2, v0

    :goto_1
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lbby;->c()Landroidx/window/extensions/layout/WindowLayoutComponent;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v3, Lawr;

    new-instance v4, Lavs;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v1}, Lavs;-><init>(Ljava/lang/ClassLoader;)V

    invoke-direct {v3, v2, v4}, Lawr;-><init>(Landroidx/window/extensions/layout/WindowLayoutComponent;Lavs;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v3

    goto :goto_2

    :cond_1
    goto :goto_2

    :catchall_0
    move-exception v1

    sget-object v1, Lawg;->a:Loja;

    :goto_2
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
