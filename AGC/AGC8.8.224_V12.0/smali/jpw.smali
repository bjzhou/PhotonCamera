.class public final Ljpw;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Ldhi;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ldil;->a:Ldhj;

    invoke-interface {p1}, Ldhi;->c()V

    return-void
.end method

.method public static a(Ljava/lang/Exception;)Ljot;
    .locals 1

    new-instance v0, Ljox;

    invoke-direct {v0}, Ljox;-><init>()V

    invoke-virtual {v0, p0}, Ljox;->n(Ljava/lang/Exception;)V

    return-object v0
.end method

.method public static b(Ljava/lang/Object;)Ljot;
    .locals 1

    new-instance v0, Ljox;

    invoke-direct {v0}, Ljox;-><init>()V

    invoke-virtual {v0, p0}, Ljox;->o(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static c(Ljot;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Ljji;->f()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "TimeUnit must not be null"

    invoke-static {p3, v0}, Ljhp;->ac(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljot;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljpw;->o(Ljot;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljoy;

    invoke-direct {v0}, Ljoy;-><init>()V

    sget-object v1, Ljow;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v1, v0}, Ljot;->k(Ljava/util/concurrent/Executor;Ljop;)V

    sget-object v1, Ljow;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v1, v0}, Ljot;->j(Ljava/util/concurrent/Executor;Ljoo;)V

    sget-object v1, Ljow;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v1, v0}, Ljot;->f(Ljava/util/concurrent/Executor;Ljom;)V

    iget-object v0, v0, Ljoy;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p0}, Ljpw;->o(Ljot;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/util/concurrent/TimeoutException;

    const-string p1, "Timed out waiting for Task"

    invoke-direct {p0, p1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Must not be called on the main application thread"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final d(ILjns;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;J)Z
    .locals 9

    const/4 v0, 0x0

    if-gtz p0, :cond_0

    const-string p0, "No more attempts remaining, giving up for "

    invoke-virtual {p0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "PhenotypeFlagCommitter"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    invoke-static {p2, p1, p4, p5}, Ljpw;->e(Ljava/lang/String;Ljns;J)Ljng;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    if-le p0, v2, :cond_1

    add-int/lit8 v3, p0, -0x1

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-wide v7, p4

    invoke-static/range {v3 .. v8}, Ljpw;->d(ILjns;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;J)Z

    move-result p0

    return p0

    :cond_1
    return v0

    :cond_2
    iget-object v0, v1, Ljng;->a:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v1, Ljng;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljns;->a(Ljava/lang/String;)Ljot;

    move-result-object v0

    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, p4, p5, v1}, Ljpw;->c(Ljot;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    invoke-static {p2}, Llol;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sget-object v1, Llod;->a:Ljava/util/Map;

    const-class v1, Llod;

    monitor-enter v1
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v3, Llod;->a:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llod;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Llod;->b()V

    :cond_3
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Committing snapshot for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " failed, retrying"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PhenotypeFlagCommitter"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    add-int/lit8 v3, p0, -0x1

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-wide v7, p4

    invoke-static/range {v3 .. v8}, Ljpw;->d(ILjns;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;J)Z

    move-result p0

    return p0

    :cond_4
    :goto_1
    return v2
.end method

.method protected static final e(Ljava/lang/String;Ljns;J)Ljng;
    .locals 1

    const-string v0, ""

    invoke-virtual {p1, p0, v0}, Ljns;->b(Ljava/lang/String;Ljava/lang/String;)Ljot;

    move-result-object p1

    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, p2, p3, v0}, Ljpw;->c(Ljot;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljng;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Retrieving snapshot for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " failed"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "PhenotypeFlagCommitter"

    invoke-static {p2, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static f(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, p1, :cond_2

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method

.method public static g(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_1
    const-string p0, "PASSIVE"

    return-object p0

    :pswitch_2
    const-string p0, "LOW_POWER"

    return-object p0

    :pswitch_3
    const-string p0, "BALANCED_POWER_ACCURACY"

    return-object p0

    :pswitch_4
    const-string p0, "HIGH_ACCURACY"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static varargs h(I[Ljava/lang/Object;)Ligf;
    .locals 1

    new-instance v0, Ligj;

    invoke-direct {v0, p0, p1}, Ligj;-><init>(I[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static varargs i(II[Ljava/lang/Object;)Ligf;
    .locals 1

    new-instance v0, Ligi;

    invoke-direct {v0, p0, p1, p2}, Ligi;-><init>(II[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static j(Ligf;)Z
    .locals 1

    sget-object v0, Ligh;->a:Ligf;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final k(ZILandroid/view/View$OnClickListener;Lice;Ljava/lang/String;Landroid/content/Context;ZII)Licf;
    .locals 11

    move/from16 v9, p7

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq v9, v0, :cond_1

    if-lez v9, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    :goto_0
    invoke-static {v1}, Lmoz;->e(Z)V

    new-instance v10, Licg;

    move-object v0, v10

    move-object/from16 v1, p5

    move-object v2, p4

    move v3, p1

    move/from16 v4, p8

    move v5, p0

    move-object v6, p2

    move-object v7, p3

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Licg;-><init>(Landroid/content/Context;Ljava/lang/String;IIZLandroid/view/View$OnClickListener;Lice;ZI)V

    return-object v10
.end method

.method public static final l(Liem;Ljava/util/List;)Ligo;
    .locals 1

    new-instance v0, Ligo;

    invoke-direct {v0, p0}, Ligo;-><init>(Liem;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static synthetic m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
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

.method public static n(Ldhi;)Z
    .locals 1

    sget-object v0, Ldil;->a:Ldhj;

    invoke-interface {p0, v0}, Ldhi;->l(Ldhj;)Z

    move-result p0

    return p0
.end method

.method private static o(Ljot;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljot;->e()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, p0

    check-cast v0, Ljox;

    iget-boolean v0, v0, Ljox;->c:Z

    if-eqz v0, :cond_0

    new-instance p0, Ljava/util/concurrent/CancellationException;

    const-string v0, "Task is already canceled"

    invoke-direct {p0, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    invoke-virtual {p0}, Ljot;->b()Ljava/lang/Exception;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Ljot;->c()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
