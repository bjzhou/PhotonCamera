.class public Linb;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lfwx;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lfwx;-><init>(I)V

    new-instance p1, Lkxr;

    invoke-direct {p1, v0}, Lkxr;-><init>(I)V

    return-void
.end method

.method public constructor <init>([B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Loiw;Lkbc;Ljava/lang/String;)Lhip;
    .locals 2

    new-instance v0, Ldfg;

    const/16 v1, 0x8

    invoke-direct {v0, p1, p2, p0, v1}, Ldfg;-><init>(Lkbc;Ljava/lang/String;Loiw;I)V

    return-object v0
.end method

.method public static B(Loiw;Ljava/util/concurrent/Executor;)V
    .locals 2

    new-instance v0, Lhdg;

    const/16 v1, 0xd

    invoke-direct {v0, p0, p1, v1}, Lhdg;-><init>(Loiw;Ljava/util/concurrent/Executor;I)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static C(Ljava/nio/ByteBuffer;III)Ljava/nio/ByteBuffer;
    .locals 1

    mul-int v0, p1, p2

    rsub-int p3, p3, 0x168

    rem-int/lit16 p3, p3, 0x168

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/babelfish/device/avenh/l2l/apps/common/VideoProcessorUtils;->nativeRotateFrame(Ljava/nio/ByteBuffer;IIILjava/nio/ByteBuffer;)V

    return-object v0
.end method

.method public static D(I)I
    .locals 0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public static E(I)I
    .locals 3

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown aspect ratio "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 p0, 0x3

    return p0

    :pswitch_1
    const/4 p0, 0x2

    return p0

    :pswitch_2
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static F(I)Ljzr;
    .locals 1

    sget-object v0, Lgyp;->a:Lgyp;

    sget-object v0, Ljwu;->a:Ljwu;

    add-int/lit8 p0, p0, -0x1

    packed-switch p0, :pswitch_data_0

    sget-object p0, Ljzr;->c:Ljzr;

    return-object p0

    :pswitch_0
    sget-object p0, Ljzr;->a:Ljzr;

    return-object p0

    :pswitch_1
    sget-object p0, Ljzr;->b:Ljzr;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic G(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 6

    :try_start_0
    const-class v0, Ljava/lang/Throwable;

    const-string v1, "addSuppressed"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Throwable;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v5

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    return-void
.end method

.method public static H(Lkab;)Z
    .locals 1

    sget-object v0, Lkab;->b:Lkab;

    if-eq p0, v0, :cond_1

    sget-object v0, Lkab;->d:Lkab;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static I(Limu;)Lkte;
    .locals 1

    new-instance v0, Lkte;

    invoke-direct {v0, p0}, Lkte;-><init>(Limu;)V

    return-object v0
.end method

.method public static J(I)Lkte;
    .locals 2

    new-instance v0, Lkte;

    new-instance v1, Limv;

    invoke-direct {v1, p0}, Limv;-><init>(I)V

    invoke-direct {v0, v1}, Lkte;-><init>(Limu;)V

    return-object v0
.end method

.method public static d(Landroid/view/View;)I
    .locals 1

    const v0, 0x7f040165

    invoke-static {p0, v0}, Lkwp;->l(Landroid/view/View;I)I

    move-result p0

    return p0
.end method

.method public static e(Landroid/view/View;)I
    .locals 1

    const v0, 0x7f04016e

    invoke-static {p0, v0}, Lkwp;->l(Landroid/view/View;I)I

    move-result p0

    return p0
.end method

.method public static f(Landroid/view/View;)I
    .locals 1

    const v0, 0x7f040185

    invoke-static {p0, v0}, Lkwp;->l(Landroid/view/View;I)I

    move-result p0

    return p0
.end method

.method public static g(Landroid/view/View;)I
    .locals 1

    const v0, 0x7f040189

    invoke-static {p0, v0}, Lkwp;->l(Landroid/view/View;I)I

    move-result p0

    return p0
.end method

.method public static h(Landroid/view/View;)I
    .locals 1

    const v0, 0x1010433

    invoke-static {p0, v0}, Lkwp;->l(Landroid/view/View;I)I

    move-result p0

    return p0
.end method

.method public static i(Landroid/view/View;)I
    .locals 1

    const v0, 0x7f040192

    invoke-static {p0, v0}, Lkwp;->l(Landroid/view/View;I)I

    move-result p0

    return p0
.end method

.method public static j(Landroid/view/View;)I
    .locals 1

    const v0, 0x7f0401a5

    invoke-static {p0, v0}, Lkwp;->l(Landroid/view/View;I)I

    move-result p0

    return p0
.end method

.method public static k(Landroid/view/View;)I
    .locals 1

    const v0, 0x7f0701a2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {v0, p0}, Lllj;->r(ILandroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static l(Landroid/view/View;)I
    .locals 1

    const v0, 0x7f0401ba

    invoke-static {p0, v0}, Lkwp;->l(Landroid/view/View;I)I

    move-result p0

    return p0
.end method

.method public static m(Landroid/content/Context;I)I
    .locals 2

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, v0, Landroid/util/TypedValue;->resourceId:I

    return p0
.end method

.method public static n(J)D
    .locals 2

    long-to-double p0, p0

    const-wide v0, 0x412e848000000000L    # 1000000.0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p0, v0

    return-wide p0
.end method

.method public static o(J)F
    .locals 0

    long-to-float p0, p0

    const/high16 p1, 0x447a0000    # 1000.0f

    div-float/2addr p0, p1

    return p0
.end method

.method public static p(D)I
    .locals 2

    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double p0, p0, v0

    double-to-int p0, p0

    return p0
.end method

.method public static q(J)I
    .locals 2

    const-wide/16 v0, 0x3e8

    div-long/2addr p0, v0

    long-to-int p1, p0

    return p1
.end method

.method public static r(I)I
    .locals 0

    mul-int/lit16 p0, p0, 0x3e8

    return p0
.end method

.method public static s(I)J
    .locals 4

    int-to-long v0, p0

    const-wide/32 v2, 0xf4240

    mul-long v0, v0, v2

    return-wide v0
.end method

.method public static t(J)J
    .locals 2

    const-wide/32 v0, 0xf4240

    div-long/2addr p0, v0

    return-wide p0
.end method

.method public static u([FLimk;)V
    .locals 10

    array-length v0, p0

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lmoz;->e(Z)V

    aget v0, p0, v3

    mul-float v1, v0, v0

    aget v2, p0, v2

    mul-float v3, v2, v2

    const/4 v4, 0x2

    aget p0, p0, v4

    mul-float v4, p0, p0

    add-float/2addr v1, v3

    add-float/2addr v1, v4

    const/4 v3, 0x0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpl-float v3, v1, v3

    if-lez v3, :cond_1

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    mul-double v4, v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    div-double/2addr v8, v6

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v8

    iput-wide v0, p1, Limk;->a:D

    float-to-double v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v8

    iput-wide v0, p1, Limk;->b:D

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v8

    iput-wide v0, p1, Limk;->c:D

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    :goto_1
    iput-wide v0, p1, Limk;->d:D

    return-void

    :cond_1
    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v4

    iput-wide v0, p1, Limk;->a:D

    float-to-double v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v4

    iput-wide v0, p1, Limk;->b:D

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v4

    iput-wide v0, p1, Limk;->c:D

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_1
.end method

.method public static v(Landroid/content/Context;Landroid/net/ConnectivityManager$NetworkCallback;)Lkad;
    .locals 2

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lmoz;->p(Z)V

    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, p1, p0}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    new-instance p0, Ligc;

    const/4 v1, 0x2

    invoke-direct {p0, v0, p1, v1}, Ligc;-><init>(Landroid/net/ConnectivityManager;Landroid/net/ConnectivityManager$NetworkCallback;I)V

    return-object p0
.end method

.method public static w(Landroid/content/Context;)I
    .locals 3

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p0, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0xd

    invoke-virtual {p0, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result p0

    if-nez p0, :cond_2

    const/4 v1, 0x3

    goto :goto_0

    :cond_2
    const/4 p0, 0x2

    return p0

    :cond_3
    :goto_0
    return v1
.end method

.method public static x(Landroid/content/pm/PackageManager;Landroid/content/Intent;Z)Lmqp;
    .locals 4

    const/high16 v0, 0xd0000

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object p0, Lmpx;->a:Lmpx;

    return-object p0

    :cond_0
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v3, "ResolverActivity"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz p2, :cond_2

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    sget-object p1, Lmpx;->a:Lmpx;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/ResolveInfo;

    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lmqp;->g()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object p1

    goto :goto_0

    :cond_2
    sget-object p0, Lmpx;->a:Lmpx;

    return-object p0

    :cond_3
    return-object p1

    :cond_4
    iget-object p0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object p0

    return-object p0
.end method

.method public static y(Ljava/util/List;Z)Landroid/util/Range;
    .locals 4

    invoke-static {}, Lcom/agc/LensSettings;->getOverrideTargetFps()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/agc/LensSettings;->getTargetFps()Landroid/util/Range;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x1e

    if-gt v2, v3, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance p0, Lilw;

    invoke-direct {p0, p1}, Lilw;-><init>(Z)V

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    const/4 p0, 0x0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Range;

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No fps range with upper value at or below 30fps."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static z(Ljava/lang/Runnable;)Lhip;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lhiq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lhiq;-><init>(Ljava/lang/Runnable;I)V

    return-object v0
.end method


# virtual methods
.method public a([B)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public c(I)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method
