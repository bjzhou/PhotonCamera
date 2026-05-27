.class public final Llon;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/Object;

.field public static b:Landroid/content/Context;

.field private static volatile d:Llon;

.field private static volatile e:Llon;

.field private static final f:Lmrl;


# instance fields
.field public final c:Landroid/content/Context;

.field private final g:Lmrl;

.field private final h:Lmrl;

.field private final i:Lmqp;

.field private final j:Lmrl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Llon;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Llon;->b:Landroid/content/Context;

    sput-object v0, Llon;->d:Llon;

    sput-object v0, Llon;->e:Llon;

    sget-object v0, Lffe;->k:Lffe;

    invoke-static {v0}, Llkj;->D(Lmrl;)Lmrl;

    move-result-object v0

    sput-object v0, Llon;->f:Lmrl;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    sget-object v0, Llon;->f:Lmrl;

    new-instance v1, Ldet;

    const/16 v2, 0x14

    invoke-direct {v1, p1, v2}, Ldet;-><init>(Landroid/content/Context;I)V

    invoke-static {v1}, Llkj;->D(Lmrl;)Lmrl;

    move-result-object v1

    new-instance v2, Llpu;

    invoke-direct {v2, v0}, Llpu;-><init>(Lmrl;)V

    invoke-static {v2}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v2

    new-instance v3, Lloq;

    const/4 v4, 0x1

    invoke-direct {v3, p1, v4}, Lloq;-><init>(Landroid/content/Context;I)V

    invoke-static {v3}, Llkj;->D(Lmrl;)Lmrl;

    move-result-object v3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Llon;->c:Landroid/content/Context;

    invoke-static {v0}, Llkj;->D(Lmrl;)Lmrl;

    move-result-object p1

    iput-object p1, p0, Llon;->g:Lmrl;

    invoke-static {v1}, Llkj;->D(Lmrl;)Lmrl;

    move-result-object p1

    iput-object p1, p0, Llon;->h:Lmrl;

    iput-object v2, p0, Llon;->i:Lmqp;

    invoke-static {v3}, Llkj;->D(Lmrl;)Lmrl;

    move-result-object p1

    iput-object p1, p0, Llon;->j:Lmrl;

    return-void
.end method

.method public static a(Landroid/content/Context;)Llon;
    .locals 4

    sget-object v0, Llon;->d:Llon;

    if-nez v0, :cond_5

    sget-object v1, Llon;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Llon;->d:Llon;

    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-class v0, Llom;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    instance-of v3, v2, Logf;

    if-eqz v3, :cond_0

    check-cast v2, Logf;

    invoke-interface {v2}, Logf;->a()Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    check-cast v0, Llom;

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Failed to get an entry point. Did you mark your interface with @SingletonEntryPoint?"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Given application context does not implement GeneratedComponentManager: "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_1
    move-exception v0

    const/4 v0, 0x0

    :goto_0
    :try_start_4
    sget-object v2, Lmpx;->a:Lmpx;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Llom;->a()Lmqp;

    move-result-object v2

    goto :goto_1

    :cond_1
    instance-of v0, p0, Llom;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Llom;

    invoke-interface {v0}, Llom;->a()Lmqp;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-virtual {v2}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Llon;

    goto :goto_2

    :cond_3
    new-instance v0, Llon;

    invoke-direct {v0, p0}, Llon;-><init>(Landroid/content/Context;)V

    move-object p0, v0

    :goto_2
    sput-object p0, Llon;->d:Llon;

    move-object v0, p0

    goto :goto_3

    :cond_4
    :goto_3
    monitor-exit v1

    goto :goto_4

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    :cond_5
    :goto_4
    return-object v0
.end method

.method public static c()V
    .locals 1

    invoke-static {}, Llop;->a()V

    sget-object v0, Llon;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    sget-object v0, Llop;->a:Lloo;

    if-nez v0, :cond_0

    new-instance v0, Lloo;

    invoke-direct {v0}, Lloo;-><init>()V

    sput-object v0, Llop;->a:Lloo;

    :cond_0
    return-void
.end method


# virtual methods
.method public final b()Lnox;
    .locals 1

    iget-object v0, p0, Llon;->g:Lmrl;

    invoke-interface {v0}, Lmrl;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnox;

    return-object v0
.end method

.method public final d()Llpu;
    .locals 1

    iget-object v0, p0, Llon;->i:Lmqp;

    check-cast v0, Lmqt;

    iget-object v0, v0, Lmqt;->a:Ljava/lang/Object;

    check-cast v0, Llpu;

    return-object v0
.end method

.method public final e()Llhz;
    .locals 1

    iget-object v0, p0, Llon;->h:Lmrl;

    invoke-interface {v0}, Lmrl;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llhz;

    return-object v0
.end method

.method public final f()Lva;
    .locals 1

    iget-object v0, p0, Llon;->j:Lmrl;

    invoke-interface {v0}, Lmrl;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lva;

    return-object v0
.end method
