.class public final Llqb;
.super Ljava/lang/Object;

# interfaces
.implements Lmrl;


# static fields
.field public static final synthetic a:I

.field private static volatile b:Llpg;


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/Object;

.field private final f:Llpn;

.field private volatile g:I

.field private volatile h:Ljava/lang/Object;

.field private volatile i:Llhe;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Llpg;

    sget-object v1, Llqa;->a:Llqa;

    invoke-direct {v0, v1}, Llpg;-><init>(Llph;)V

    sput-object v0, Llqb;->b:Llpg;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Llpn;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Llqb;->g:I

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Llqb;->c:Ljava/lang/String;

    iput-object p2, p0, Llqb;->d:Ljava/lang/String;

    iput-object p3, p0, Llqb;->e:Ljava/lang/Object;

    iput-object p4, p0, Llqb;->f:Llpn;

    return-void
.end method

.method private final c(Llon;)Ljava/lang/Object;
    .locals 10

    iget v0, p0, Llqb;->g:I

    iget-object v1, p0, Llqb;->h:Ljava/lang/Object;

    iget-object v2, p0, Llqb;->i:Llhe;

    if-eqz v2, :cond_1

    iget-object v2, p0, Llqb;->i:Llhe;

    invoke-virtual {v2}, Llhe;->e()I

    move-result v2

    if-lt v0, v2, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    goto/16 :goto_9

    :cond_1
    :goto_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Llqb;->i:Llhe;

    if-nez v0, :cond_2

    iget-object v0, p0, Llqb;->f:Llpn;

    iget-object v1, p0, Llqb;->c:Ljava/lang/String;

    invoke-static {}, Llon;->c()V

    check-cast v0, Llpl;

    invoke-virtual {v0, p1, v1}, Llpl;->a(Llon;Ljava/lang/String;)Llpp;

    move-result-object v0

    iget-object v0, v0, Llpp;->h:Llhe;

    iput-object v0, p0, Llqb;->i:Llhe;

    :cond_2
    iget v0, p0, Llqb;->g:I

    iget-object v1, p0, Llqb;->i:Llhe;

    invoke-virtual {v1}, Llhe;->e()I

    move-result v1

    if-ge v0, v1, :cond_d

    iget-object v0, p0, Llqb;->i:Llhe;

    invoke-virtual {v0}, Llhe;->e()I

    move-result v0

    iput v0, p0, Llqb;->g:I

    iget-object v0, p0, Llqb;->f:Llpn;

    iget-object v1, p0, Llqb;->c:Ljava/lang/String;

    iget-object v2, p0, Llqb;->d:Ljava/lang/String;

    invoke-static {}, Llon;->c()V

    iget-object v3, p1, Llon;->c:Landroid/content/Context;

    sget-object v4, Llpl;->a:Lmqp;

    if-nez v4, :cond_4

    const-class v4, Llpl;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    sget-object v5, Llpl;->a:Lmqp;

    if-nez v5, :cond_3

    invoke-static {v3}, Lloj;->a(Landroid/content/Context;)Lmqp;

    move-result-object v3

    sput-object v3, Llpl;->a:Lmqp;

    :cond_3
    sget-object v3, Llpl;->a:Lmqp;

    monitor-exit v4

    move-object v4, v3

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    :cond_4
    :goto_1
    invoke-virtual {v4}, Lmqp;->g()Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_6

    invoke-virtual {v4}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Llhz;

    invoke-static {v1}, Llol;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v3, v6, v5, v2}, Llhz;->d(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez v3, :cond_5

    move-object v3, v5

    goto :goto_3

    :cond_5
    :try_start_3
    move-object v6, v0

    check-cast v6, Llpl;

    iget-object v6, v6, Llpl;->c:Llqe;

    invoke-interface {v6, v3}, Llqe;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catch_0
    move-exception v3

    goto :goto_2

    :catch_1
    move-exception v3

    :goto_2
    :try_start_4
    const-string v6, "Invalid Phenotype flag value for flag "

    invoke-virtual {v6, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "PhenotypeCombinedFlags"

    invoke-static {v7, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v5

    goto :goto_3

    :cond_6
    move-object v3, v5

    :goto_3
    iget-object v6, p1, Llon;->c:Landroid/content/Context;

    invoke-static {v6, v1}, Llol;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v6, v0

    check-cast v6, Llpl;

    iget-boolean v6, v6, Llpl;->b:Z

    const/4 v7, 0x1

    if-eqz v6, :cond_7

    const-string v6, "DirectBoot aware package %s can not access account-scoped flags."

    invoke-static {v7, v6, v1}, Lmoz;->s(ZLjava/lang/String;Ljava/lang/Object;)V

    :cond_7
    invoke-virtual {p1}, Llon;->b()Lnox;

    move-result-object v6

    new-instance v8, Llkq;

    const/4 v9, 0x5

    invoke-direct {v8, p1, v1, v9}, Llkq;-><init>(Llon;Ljava/lang/String;I)V

    invoke-interface {v6, v8}, Lnox;->a(Ljava/lang/Runnable;)Lnou;

    move-result-object v6

    invoke-static {v6}, Llpm;->a(Lnou;)V

    move-object v6, v0

    check-cast v6, Llpl;

    invoke-virtual {v6, p1, v1}, Llpl;->a(Llon;Ljava/lang/String;)Llpp;

    move-result-object p1

    iget-object p1, p1, Llpp;->d:Llpz;

    iget-object v1, p1, Llpz;->b:Ljava/util/Map;

    if-nez v1, :cond_9

    iget-object v1, p1, Llpz;->a:Ljava/lang/Object;

    monitor-enter v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    iget-object v6, p1, Llpz;->b:Ljava/util/Map;

    if-nez v6, :cond_8

    iget-object v6, p1, Llpz;->c:Lmrl;

    invoke-interface {v6}, Lmrl;->a()Ljava/lang/Object;

    move-result-object v6

    iput-object v6, p1, Llpz;->b:Ljava/util/Map;

    iput-object v5, p1, Llpz;->c:Lmrl;

    goto :goto_4

    :cond_8
    :goto_4
    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v1

    goto :goto_5

    :catchall_1
    move-exception p1

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p1

    :cond_9
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_5
    if-nez p1, :cond_a

    goto :goto_7

    :cond_a
    :try_start_7
    check-cast v0, Llpl;

    iget-object v0, v0, Llpl;->d:Llqe;

    invoke-interface {v0, p1}, Llqe;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_7

    :catch_2
    move-exception p1

    goto :goto_6

    :catch_3
    move-exception p1

    :goto_6
    :try_start_8
    const-string v0, "Invalid Phenotype flag value for flag "

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhenotypeCombinedFlags"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_7
    invoke-virtual {v4}, Lmqp;->g()Z

    move-result p1

    if-ne v7, p1, :cond_b

    goto :goto_8

    :cond_b
    move-object v3, v5

    :goto_8
    if-nez v3, :cond_c

    iget-object v3, p0, Llqb;->e:Ljava/lang/Object;

    :cond_c
    iput-object v3, p0, Llqb;->h:Ljava/lang/Object;

    :cond_d
    iget-object v1, p0, Llqb;->h:Ljava/lang/Object;

    monitor-exit p0

    :goto_9
    return-object v1

    :catchall_2
    move-exception p1

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw p1
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    sget-object v0, Llon;->a:Ljava/lang/Object;

    const/4 v0, 0x1

    sput-boolean v0, Llop;->b:Z

    sget-object v0, Llop;->c:Lloo;

    if-nez v0, :cond_0

    new-instance v0, Lloo;

    invoke-direct {v0}, Lloo;-><init>()V

    sput-object v0, Llop;->c:Lloo;

    :cond_0
    sget-object v0, Llon;->b:Landroid/content/Context;

    if-eqz v0, :cond_1

    invoke-static {v0}, Llon;->a(Landroid/content/Context;)Llon;

    move-result-object v0

    invoke-direct {p0, v0}, Llqb;->c(Llon;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-static {}, Llop;->a()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must call PhenotypeContext.setContext() first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(Landroid/content/Context;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Llon;->a(Landroid/content/Context;)Llon;

    move-result-object p1

    invoke-direct {p0, p1}, Llqb;->c(Llon;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
