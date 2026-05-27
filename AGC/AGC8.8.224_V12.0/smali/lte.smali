.class public final Llte;
.super Landroid/content/BroadcastReceiver;


# static fields
.field public static final a:Ljava/lang/String;

.field private static final b:Landroid/os/Handler;


# instance fields
.field private c:Lltg;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Llte;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Llte;->a:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Llte;->b:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public constructor <init>(Lltg;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Llte;->c:Lltg;

    return-void
.end method

.method public static a(Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver$PendingResult;->abortBroadcast()V

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    :try_start_0
    invoke-static {}, Lltn;->a()Landroid/view/View;

    move-result-object p1
    :try_end_0
    .catch Llti; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Llte;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object p2

    iget-object v0, p0, Llte;->c:Lltg;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v0, Lltg;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/wear/ambient/AmbientMode$AmbientController;

    sget-object v3, Lnor;->a:Lnou;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lnsy;->x(Ljava/lang/Iterable;)Lnou;

    move-result-object v1

    sget-object v2, Lhop;->t:Lhop;

    sget-object v3, Lnnv;->a:Lnnv;

    invoke-static {v1, v2, v3}, Lnnf;->i(Lnou;Lmqi;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v1

    new-instance v2, Lcwk;

    const/4 v3, 0x5

    invoke-direct {v2, v0, p1, p2, v3}, Lcwk;-><init>(Lltg;Landroid/view/View;Landroid/content/BroadcastReceiver$PendingResult;I)V

    sget-object p1, Llte;->b:Landroid/os/Handler;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lltd;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lltd;-><init>(Landroid/os/Handler;I)V

    invoke-static {v1, v2, p2}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    return-void

    :catch_0
    move-exception p1

    sget-object p1, Llte;->a:Ljava/lang/String;

    const-string p2, "Failed to snapshot hierarchy. Could not find any window to capture."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
