.class public final Ligo;
.super Ljava/lang/Object;


# static fields
.field private static c:Ljava/lang/Boolean;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lhpt;

    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    const-string v2, "Class to do conversion is not enum: "

    if-eqz v1, :cond_1

    const-class v1, Lnlc;

    invoke-virtual {v1}, Ljava/lang/Class;->isEnum()Z

    move-result v3

    if-eqz v3, :cond_0

    iput-object v0, p0, Ligo;->b:Ljava/lang/Object;

    iput-object v1, p0, Ligo;->a:Ljava/lang/Object;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ligo;->b:Ljava/lang/Object;

    new-instance v0, Ldet;

    const/16 v1, 0x9

    invoke-direct {v0, p1, v1}, Ldet;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Ligo;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ligo;->b:Ljava/lang/Object;

    new-instance p1, Ljmb;

    invoke-direct {p1}, Ljmb;-><init>()V

    iput-object p1, p0, Ligo;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lhrz;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ligo;->b:Ljava/lang/Object;

    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Ligo;->a:Ljava/lang/Object;

    check-cast p2, Landroid/view/ViewGroup;

    const v0, 0x7f0e007d

    invoke-static {p1, v0, p2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljhp;->ab(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "Application context can\'t be null"

    invoke-static {p1, p2}, Ljhp;->ac(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Ligo;->b:Ljava/lang/Object;

    iput-object p1, p0, Ligo;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ligo;->b:Ljava/lang/Object;

    iput-object p1, p0, Ligo;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/view/MotionEvent;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ligo;->b:Ljava/lang/Object;

    iput-object p2, p0, Ligo;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/wear/ambient/AmbientDelegate;Lkgd;[B[B[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ligo;->a:Ljava/lang/Object;

    iput-object p2, p0, Ligo;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lfbz;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ligo;->b:Ljava/lang/Object;

    iput-object p1, p0, Ligo;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lgzi;Lkap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ligo;->b:Ljava/lang/Object;

    const-string p1, "Settings"

    invoke-interface {p2, p1}, Lkap;->a(Ljava/lang/String;)Lkaq;

    move-result-object p1

    iput-object p1, p0, Ligo;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Liem;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Liem;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Ligo;->a:Ljava/lang/Object;

    new-instance v1, Ljava/util/EnumMap;

    const-class v2, Liem;

    invoke-direct {v1, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v1, p0, Ligo;->b:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Lihb;Lmqp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ligo;->a:Ljava/lang/Object;

    iput-object p2, p0, Ligo;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lijk;Lijk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ligo;->a:Ljava/lang/Object;

    iput-object p2, p0, Ligo;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Limh;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ligo;->b:Ljava/lang/Object;

    iput-object p2, p0, Ligo;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Liyz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ligo;->b:Ljava/lang/Object;

    new-instance p1, Lizr;

    invoke-direct {p1}, Lizr;-><init>()V

    iput-object p1, p0, Ligo;->a:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ligo;->a:Ljava/lang/Object;

    iput-object p1, p0, Ligo;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljfc;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ligo;->a:Ljava/lang/Object;

    iput-object p2, p0, Ligo;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ligo;->a:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ligo;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljpw;II[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p4, Lhqh;

    const/4 p5, 0x0

    invoke-direct {p4, p1, p5, p5, p5}, Lhqh;-><init>(Ljpw;[B[B[B)V

    iput-object p4, p0, Ligo;->b:Ljava/lang/Object;

    new-instance p1, Lhqi;

    invoke-direct {p1, p2, p3}, Lhqi;-><init>(II)V

    iput-object p1, p0, Ligo;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkog;Ldhi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ligo;->b:Ljava/lang/Object;

    iput-object p2, p0, Ligo;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Llpg;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Ligo;->b:Ljava/lang/Object;

    iput-object p1, p0, Ligo;->a:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lmqp;Lmqp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ligo;->b:Ljava/lang/Object;

    iput-object p2, p0, Ligo;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ligo;->b:Ljava/lang/Object;

    iput-object p2, p0, Ligo;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ligo;->b:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Ligo;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {p1}, Lj$/util/DesugarCollections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Ligo;->b:Ljava/lang/Object;

    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {p1}, Lj$/util/DesugarCollections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Ligo;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljvk;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p1, p2}, Ljvk;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Ligo;->b:Ljava/lang/Object;

    new-instance p1, Ljvk;

    invoke-direct {p1, p2}, Ljvk;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Ligo;->a:Ljava/lang/Object;

    return-void
.end method

.method public static B(Landroid/content/Context;)Z
    .locals 4

    invoke-static {p0}, Ljhp;->ab(Ljava/lang/Object;)V

    sget-object v0, Ligo;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    const-string v0, "com.google.android.gms.analytics.AnalyticsService"

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-boolean p0, p0, Landroid/content/pm/ServiceInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    :cond_1
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Ligo;->c:Ljava/lang/Boolean;

    return v1
.end method

.method public static F(Ljava/lang/Object;)Ligo;
    .locals 1

    new-instance v0, Ligo;

    invoke-direct {v0, p0}, Ligo;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static final h(Ljava/lang/Enum;Ljava/lang/Class;)Ljava/lang/Enum;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    return-object p0
.end method

.method public static i(Ljava/lang/Object;)Ligo;
    .locals 2

    new-instance v0, Ligo;

    invoke-static {p0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object p0

    sget-object v1, Lmpx;->a:Lmpx;

    invoke-direct {v0, p0, v1}, Ligo;-><init>(Lmqp;Lmqp;)V

    return-object v0
.end method

.method public static j(Ljava/lang/Object;)Ligo;
    .locals 2

    new-instance v0, Ligo;

    sget-object v1, Lmpx;->a:Lmpx;

    invoke-static {p0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ligo;-><init>(Lmqp;Lmqp;)V

    return-object v0
.end method


# virtual methods
.method public final A(Ljava/lang/Runnable;)V
    .locals 9

    iget-object v0, p0, Ligo;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Liyz;->c(Landroid/content/Context;)Liyz;

    move-result-object v0

    invoke-virtual {v0}, Liyz;->b()Liyu;

    move-result-object v0

    new-instance v8, Ljab;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Ljab;-><init>(Ligo;Ljava/lang/Runnable;[B[B[B[B)V

    invoke-virtual {v0, v8}, Liyu;->b(Lizp;)V

    return-void
.end method

.method public final C(Landroid/content/Intent;I)V
    .locals 10

    :try_start_0
    sget-object v0, Ljaa;->a:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v1, Ljaa;->b:Ljoi;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljoi;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v1, Ljoi;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v2

    if-gez v2, :cond_0

    const-string v2, "WakeLock"

    iget-object v3, v1, Ljoi;->j:Ljava/lang/String;

    const-string v4, " release without a matched acquire!"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, v1, Ljoi;->b:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v1}, Ljoi;->c()V

    iget-object v3, v1, Ljoi;->l:Ljava/util/Map;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "WakeLock"

    iget-object v4, v1, Ljoi;->j:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " counter does not exist"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v3, v1, Ljoi;->l:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lltf;

    if-eqz v3, :cond_2

    iget v5, v3, Lltf;->a:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v3, Lltf;->a:I

    if-nez v5, :cond_2

    iget-object v3, v1, Ljoi;->l:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    invoke-virtual {v1}, Ljoi;->d()V

    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1

    :cond_3
    :goto_1
    monitor-exit v0

    goto :goto_2

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    :goto_2
    iget-object v0, p0, Ligo;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Liyz;->c(Landroid/content/Context;)Liyz;

    move-result-object v0

    invoke-virtual {v0}, Liyz;->d()Lizv;

    move-result-object v4

    if-nez p1, :cond_4

    const-string p1, "AnalyticsService started with null intent"

    invoke-virtual {v4, p1}, Liyv;->t(Ljava/lang/String;)V

    return-void

    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    iget-object v0, v0, Liyz;->c:Lizl;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "Local AnalyticsService called. startId, action"

    invoke-virtual {v4, v1, v0, p1}, Liyv;->s(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "com.google.android.gms.analytics.ANALYTICS_DISPATCH"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    new-instance p1, Lpi;

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p1

    move-object v2, p0

    move v3, p2

    invoke-direct/range {v1 .. v9}, Lpi;-><init>(Ligo;ILizv;I[B[B[B[B)V

    invoke-virtual {p0, p1}, Ligo;->A(Ljava/lang/Runnable;)V

    :cond_5
    return-void
.end method

.method public final D()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Ligo;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Ligo;->b:Ljava/lang/Object;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final E(Lhlc;)Ljew;
    .locals 3

    iget-object v0, p0, Ligo;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Lhlc;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ligo;->b:Ljava/lang/Object;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Ligo;->b:Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljew;

    monitor-exit v0

    return-object p1

    :cond_0
    iget-object v2, p0, Ligo;->a:Ljava/lang/Object;

    check-cast v2, Llpg;

    iget-boolean v2, v2, Llpg;->a:Z

    new-instance v2, Ljew;

    invoke-direct {v2, p1}, Ljew;-><init>(Lhlc;)V

    iget-object p1, p0, Ligo;->b:Ljava/lang/Object;

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Liez;)V
    .locals 5

    invoke-static {}, Liem;->values()[Liem;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    iget-object v4, p0, Ligo;->b:Ljava/lang/Object;

    invoke-static {v4, v3, p1}, Lj$/util/Map$-EL;->putIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(Liem;Liez;)V
    .locals 1

    iget-object v0, p0, Ligo;->b:Ljava/lang/Object;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final c(Liem;)V
    .locals 1

    sget-object v0, Lifa;->a:Lifa;

    invoke-virtual {p0, p1, v0}, Ligo;->b(Liem;Liez;)V

    return-void
.end method

.method public final d()Landroid/graphics/PointF;
    .locals 4

    iget-object v0, p0, Ligo;->a:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Ljvd;->z(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v0

    new-instance v1, Landroid/graphics/PointF;

    iget-object v2, p0, Ligo;->b:Ljava/lang/Object;

    check-cast v2, Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, v0, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Ligo;->b:Ljava/lang/Object;

    check-cast v3, Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    sub-float/2addr v3, v0

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v1
.end method

.method public final e(Landroid/net/Uri;)Lnou;
    .locals 7

    new-instance v6, Lcop;

    const/16 v3, 0x9

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcop;-><init>(Ligo;Landroid/net/Uri;I[B[B)V

    iget-object p1, p0, Ligo;->a:Ljava/lang/Object;

    invoke-static {v6, p1}, Lnsy;->F(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object p1

    return-object p1
.end method

.method public final f(Landroid/net/Uri;)V
    .locals 8

    iget-object v0, p0, Ligo;->a:Ljava/lang/Object;

    new-instance v7, Lhqn;

    const/16 v4, 0x14

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lhqn;-><init>(Ligo;Landroid/net/Uri;I[B[B)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final g(Landroid/net/Uri;)V
    .locals 8

    iget-object v0, p0, Ligo;->a:Ljava/lang/Object;

    new-instance v7, Lioi;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lioi;-><init>(Ligo;Landroid/net/Uri;I[B[B)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final k()V
    .locals 4

    iget-object v0, p0, Ligo;->b:Ljava/lang/Object;

    iget-object v1, p0, Ligo;->a:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    check-cast v0, Lhrz;

    const/16 v2, 0x10

    const v3, 0x7f140516

    invoke-virtual {v0, v2, v3, v1}, Lhrz;->l(IILandroid/view/View;)V

    return-void
.end method

.method public final declared-synchronized l()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ligo;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ligo;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkwy;

    iget v0, v0, Lkwy;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized m()Lhjg;
    .locals 6

    monitor-enter p0

    :cond_0
    :try_start_0
    iget-object v0, p0, Ligo;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Ligo;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkwy;

    iget-wide v3, v2, Lkwy;->a:J

    sub-long/2addr v0, v3

    const-wide/32 v3, 0xea60

    cmp-long v5, v0, v3

    if-gtz v5, :cond_0

    new-instance v3, Lhjg;

    invoke-direct {v3}, Lhjg;-><init>()V

    iget v2, v2, Lkwy;->b:I

    iput v2, v3, Lhjg;->b:I

    iput-wide v0, v3, Lhjg;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v3

    :cond_1
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_1

    :goto_0
    throw v0

    :goto_1
    goto :goto_0
.end method

.method public final declared-synchronized n(Lhjc;)V
    .locals 13

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    iget-object v4, p0, Ligo;->b:Ljava/lang/Object;

    check-cast v4, Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    iget-object v5, p0, Ligo;->b:Ljava/lang/Object;

    new-instance v6, Lkwy;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    invoke-direct {v6, v7, v8, v4}, Lkwy;-><init>(JI)V

    check-cast v5, Ljava/util/LinkedList;

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Ligo;->a:Ljava/lang/Object;

    const/16 v8, 0x8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface {p1}, Lhjc;->a()Ljava/lang/Long;

    move-result-object v12

    invoke-interface/range {v7 .. v12}, Lfbz;->X(ILnkd;Lnkg;Lnkt;Ljava/lang/Long;)V

    move-object v4, p1

    check-cast v4, Lhjd;

    iget-object v4, v4, Lhjd;->j:Lhjf;

    if-eqz v4, :cond_0

    iput-wide v0, v4, Lhjf;->b:J

    :cond_0
    check-cast p1, Lhjd;

    iput-wide v2, p1, Lhjd;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final o(Lklv;Ljwu;Ljws;)Z
    .locals 4

    invoke-virtual {p2}, Ljwu;->c()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Ljws;->c:Ljws;

    invoke-virtual {p3, v0}, Ljws;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Ljwu;->d()Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p2, Ljws;->c:Ljws;

    invoke-virtual {p3, p2}, Ljws;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Ligo;->b:Ljava/lang/Object;

    check-cast p2, Lkog;

    iget-boolean v3, p2, Lkog;->g:Z

    if-nez v3, :cond_1

    iget-boolean p2, p2, Lkog;->h:Z

    if-nez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    sget-object v3, Lklv;->a:Lklv;

    invoke-virtual {p1, v3}, Lklv;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Ljws;->c:Ljws;

    invoke-virtual {p3, v3}, Ljws;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    goto :goto_3

    :cond_2
    :goto_2
    goto :goto_4

    :cond_3
    :goto_3
    sget-object p3, Lklv;->b:Lklv;

    invoke-virtual {p1, p3}, Lklv;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Ligo;->a:Ljava/lang/Object;

    sget-object p3, Ldif;->c:Ldhj;

    invoke-interface {p1, p3}, Ldhi;->l(Ldhj;)Z

    move-result p1

    if-eqz p1, :cond_5

    if-nez v0, :cond_2

    if-eqz p2, :cond_4

    goto :goto_2

    :cond_4
    return v2

    :cond_5
    const/4 v1, 0x0

    :goto_4
    return v1
.end method

.method public final p()V
    .locals 1

    iget-object v0, p0, Ligo;->b:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public final q(Ljava/lang/String;Z)Ljwb;
    .locals 3

    iget-object v0, p0, Ligo;->b:Ljava/lang/Object;

    check-cast v0, Lgzi;

    invoke-virtual {v0, p1}, Lgzi;->n(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ligo;->a:Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initializing default value ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ") for key: ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkaq;->f(Ljava/lang/String;)V

    iget-object v0, p0, Ligo;->b:Ljava/lang/Object;

    check-cast v0, Lgzi;

    invoke-virtual {v0, p1, p2}, Lgzi;->l(Ljava/lang/String;Z)V

    :cond_0
    new-instance p2, Lgye;

    iget-object v0, p0, Ligo;->b:Ljava/lang/Object;

    check-cast v0, Lgzi;

    invoke-direct {p2, v0, p1}, Lgye;-><init>(Lgzi;Ljava/lang/String;)V

    return-object p2
.end method

.method public final r(Ljava/lang/String;I)Ljwb;
    .locals 3

    iget-object v0, p0, Ligo;->b:Ljava/lang/Object;

    check-cast v0, Lgzi;

    invoke-virtual {v0, p1}, Lgzi;->n(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ligo;->a:Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initializing default value ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") for key: ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkaq;->f(Ljava/lang/String;)V

    iget-object v0, p0, Ligo;->b:Ljava/lang/Object;

    check-cast v0, Lgzi;

    invoke-virtual {v0, p1, p2}, Lgzi;->i(Ljava/lang/String;I)V

    :cond_0
    new-instance p2, Lgym;

    iget-object v0, p0, Ligo;->b:Ljava/lang/Object;

    check-cast v0, Lgzi;

    invoke-direct {p2, v0, p1}, Lgym;-><init>(Lgzi;Ljava/lang/String;)V

    return-object p2
.end method

.method public final s(Ljava/lang/String;Ljava/lang/String;)Ljwb;
    .locals 3

    iget-object v0, p0, Ligo;->b:Ljava/lang/Object;

    check-cast v0, Lgzi;

    invoke-virtual {v0, p1}, Lgzi;->n(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ligo;->a:Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initializing default value ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") for key: ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkaq;->f(Ljava/lang/String;)V

    iget-object v0, p0, Ligo;->b:Ljava/lang/Object;

    check-cast v0, Lgzi;

    invoke-virtual {v0, p1, p2}, Lgzi;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance p2, Lgzq;

    iget-object v0, p0, Ligo;->b:Ljava/lang/Object;

    check-cast v0, Lgzi;

    invoke-direct {p2, v0, p1}, Lgzq;-><init>(Lgzi;Ljava/lang/String;)V

    return-object p2
.end method

.method public final t(J)Lknb;
    .locals 3

    iget-object v0, p0, Ligo;->b:Ljava/lang/Object;

    new-instance v1, Lkhp;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lkhp;-><init>(Ligo;J[B)V

    check-cast v0, Lkgd;

    invoke-virtual {v0, v1}, Lkgd;->s(Ljzu;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lknb;

    return-object p1
.end method

.method public final u(Lkjt;)Lknb;
    .locals 2

    iget-object v0, p0, Ligo;->b:Ljava/lang/Object;

    new-instance v1, Lkho;

    invoke-direct {v1, p1}, Lkho;-><init>(Lkjt;)V

    check-cast v0, Lkgd;

    invoke-virtual {v0, p1, v1}, Lkgd;->t(Lkfj;Ljzu;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lknb;

    return-object p1
.end method

.method public final v(Lkfg;ZZLkeg;ZLkou;ZZ)V
    .locals 3

    iget-object v0, p0, Ligo;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ligo;->b:Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lkfx;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2, v2}, Lkfx;-><init>(Ligo;[B[B[B)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Ligo;->b:Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkfx;

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object p1, v1, Lkfx;->h:Lkfg;

    iput-boolean p2, v1, Lkfx;->a:Z

    iput-boolean p3, v1, Lkfx;->b:Z

    iput-object p4, v1, Lkfx;->c:Lkeg;

    iput-boolean p5, v1, Lkfx;->d:Z

    iput-object p6, v1, Lkfx;->e:Lkou;

    iput-boolean p7, v1, Lkfx;->f:Z

    iput-boolean p8, v1, Lkfx;->g:Z

    invoke-virtual {p1}, Lkfg;->bE()Ljava/util/concurrent/Executor;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Ligo;->a:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    :goto_1
    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final w(Landroid/content/Intent;)V
    .locals 8

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.gms.googlehelp.HELP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "EXTRA_GOOGLE_HELP"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Ligo;->b:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    const v2, 0xb5f608

    invoke-static {v1, v2}, Ljcr;->a(Landroid/content/Context;I)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Ligo;->a:Ljava/lang/Object;

    invoke-interface {v0}, Lmrl;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljjs;

    iget-object v2, v1, Ljjs;->a:Landroid/app/Activity;

    invoke-static {v2}, Ljhp;->ab(Ljava/lang/Object;)V

    check-cast v0, Ljde;

    iget-object v0, v0, Ljde;->i:Ljdh;

    iget-object v1, v1, Ljjs;->a:Landroid/app/Activity;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v1, Ljjq;

    invoke-direct {v1, v0, p1, v2}, Ljjq;-><init>(Ljdh;Landroid/content/Intent;Ljava/lang/ref/WeakReference;)V

    invoke-virtual {v0, v1}, Ljdh;->b(Ljec;)V

    invoke-static {v1}, Ljhp;->ae(Ljdl;)Ljot;

    return-void

    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/googlehelp/GoogleHelp;

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/google/android/gms/googlehelp/GoogleHelp;->q:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v4

    const/4 p1, 0x0

    const/4 v0, 0x7

    if-eq v1, v0, :cond_2

    iget-object v0, p0, Ligo;->b:Ljava/lang/Object;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v4, p1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljmb;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Ljmb;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lioi;

    const/16 v5, 0x10

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lioi;-><init>(Ligo;Landroid/content/Intent;I[B[B)V

    invoke-virtual {p1, v0}, Ljmb;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_2
    const/4 v1, 0x7

    :goto_0
    iget-object v0, p0, Ligo;->b:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    invoke-static {v2, v1}, Ljcr;->c(Landroid/content/Context;I)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v3, v2, :cond_3

    const/16 v1, 0x12

    :cond_3
    sget-object v2, Ljcd;->a:Ljcd;

    check-cast v0, Landroid/app/Activity;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, p1, v3}, Ljcd;->c(Landroid/app/Activity;IILandroid/content/DialogInterface$OnCancelListener;)V

    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The intent you are trying to launch is not GoogleHelp intent! This class only supports GoogleHelp intents."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final x(ZLcom/google/android/gms/common/api/Status;)V
    .locals 4

    iget-object v0, p0, Ligo;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Ligo;->b:Ljava/lang/Object;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v2, p0, Ligo;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    iget-object v3, p0, Ligo;->a:Ljava/lang/Object;

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    if-nez p1, :cond_1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/internal/BasePendingResult;

    invoke-virtual {v2, p2}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->g(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-nez p1, :cond_4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkgd;

    new-instance v2, Ljda;

    invoke-direct {v2, p2}, Ljda;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v1, v2}, Lkgd;->j(Ljava/lang/Exception;)V

    goto :goto_1

    :cond_5
    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public final y()V
    .locals 2

    iget-object v0, p0, Ligo;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Liyz;->c(Landroid/content/Context;)Liyz;

    move-result-object v0

    invoke-virtual {v0}, Liyz;->d()Lizv;

    move-result-object v1

    iget-object v0, v0, Liyz;->c:Lizl;

    const-string v0, "Local AnalyticsService is starting up"

    invoke-virtual {v1, v0}, Liyv;->q(Ljava/lang/String;)V

    return-void
.end method

.method public final z()V
    .locals 2

    iget-object v0, p0, Ligo;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Liyz;->c(Landroid/content/Context;)Liyz;

    move-result-object v0

    invoke-virtual {v0}, Liyz;->d()Lizv;

    move-result-object v1

    iget-object v0, v0, Liyz;->c:Lizl;

    const-string v0, "Local AnalyticsService is shutting down"

    invoke-virtual {v1, v0}, Liyv;->q(Ljava/lang/String;)V

    return-void
.end method
