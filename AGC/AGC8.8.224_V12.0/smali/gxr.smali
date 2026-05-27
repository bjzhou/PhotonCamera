.class public final Lgxr;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic f:I

.field private static final g:Ljava/text/SimpleDateFormat;


# instance fields
.field public final a:J

.field public final b:Lgyb;

.field public final c:Landroid/content/Context;

.field public final d:Ljava/lang/String;

.field public final e:Lkaq;

.field private final h:Lmrl;

.field private final i:Ldyy;

.field private j:Ljava/lang/String;

.field private final k:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd_HHmmssSSS"

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v1, "UTC"

    invoke-static {v1}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    sput-object v0, Lgxr;->g:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Lmrl;JLdyy;Ljava/lang/String;Lkaq;Lgyb;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lgxr;->j:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lgxr;->k:Ljava/util/Map;

    iput-object p1, p0, Lgxr;->h:Lmrl;

    iput-wide p2, p0, Lgxr;->a:J

    if-nez p4, :cond_0

    sget-object p4, Ldyy;->a:Ldyy;

    :cond_0
    iput-object p4, p0, Lgxr;->i:Ldyy;

    iput-object p5, p0, Lgxr;->d:Ljava/lang/String;

    const-string p1, "GcaMediaGroup"

    invoke-interface {p6, p1}, Lkaq;->a(Ljava/lang/String;)Lkaq;

    move-result-object p1

    iput-object p1, p0, Lgxr;->e:Lkaq;

    iput-object p7, p0, Lgxr;->b:Lgyb;

    iput-object p8, p0, Lgxr;->c:Landroid/content/Context;

    return-void
.end method

.method private final declared-synchronized j(Ljava/lang/String;Z)Lgxn;
    .locals 3

    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v0, p0, Lgxr;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lfjd;->k:Lfjd;

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    iget-object v1, p0, Lgxr;->k:Ljava/util/Map;

    const-string v2, "Already created a primary item: %s"

    invoke-static {v0, v2, v1}, Lmoz;->s(ZLjava/lang/String;Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Lgxn;

    invoke-virtual {p0}, Lgxr;->c()Lkpl;

    move-result-object v1

    invoke-interface {v1, p1}, Lkpl;->a(Ljava/lang/String;)Lkph;

    move-result-object p1

    iget-object v1, p0, Lgxr;->i:Ldyy;

    invoke-direct {v0, p0, p1, v1, p2}, Lgxn;-><init>(Lgxr;Lkph;Ldyy;Z)V

    iget-object p1, p0, Lgxr;->k:Ljava/util/Map;

    sget-object p2, Lgxq;->c:Lgxq;

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final declared-synchronized k()V
    .locals 9

    monitor-enter p0

    :try_start_0
    const-string v0, "#tryPublish "

    iget-object v1, p0, Lgxr;->e:Lkaq;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lkaq;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lgxr;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v4, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lgxn;

    iget-boolean v2, v8, Lgxn;->b:Z

    if-eqz v2, :cond_2

    if-nez v4, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iget-object v7, p0, Lgxr;->k:Ljava/util/Map;

    const-string v3, "Found multiple primaries (%s and %s) in %s: %s"

    move-object v5, v8

    move-object v6, p0

    invoke-static/range {v2 .. v7}, Lmoz;->v(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v4, v8

    goto :goto_0

    :cond_2
    if-nez v1, :cond_0

    iget-object v2, p0, Lgxr;->k:Ljava/util/Map;

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lgxq;->a:Lgxq;

    if-ne v2, v3, :cond_0

    move-object v1, v8

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lgxr;->k:Ljava/util/Map;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lgxq;->a:Lgxq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eq v0, v2, :cond_5

    const/4 v0, 0x2

    if-eqz v1, :cond_4

    :try_start_1
    iget-object v2, v1, Lgxn;->a:Lkph;

    invoke-interface {v2}, Lkph;->d()Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v6, v4, Lgxn;->a:Lkph;

    invoke-static {v2, v6}, Llho;->w(Ljava/io/InputStream;Lkph;)J

    invoke-virtual {v4}, Lgxn;->b()V

    invoke-virtual {v1}, Lgxn;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catchall_0
    move-exception v1

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v2

    :try_start_5
    invoke-static {v1, v2}, Ljhp;->av(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_2
    throw v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catch_0
    move-exception v1

    :try_start_6
    iget-object v2, p0, Lgxr;->e:Lkaq;

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v5

    iget-object v5, p0, Lgxr;->k:Ljava/util/Map;

    aput-object v5, v0, v3

    const-string v3, "Error publishing %s: %s"

    invoke-static {v4, v3, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, v1}, Lkaq;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lgxr;->c()Lkpl;

    move-result-object v0

    invoke-interface {v0}, Lkpl;->b()V

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lgxr;->e:Lkaq;

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v5

    iget-object v4, p0, Lgxr;->k:Ljava/util/Map;

    aput-object v4, v0, v3

    const-string v3, "No published files found for %s: %s"

    invoke-static {v2, v3, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lkaq;->i(Ljava/lang/String;)V

    invoke-virtual {p0}, Lgxr;->c()Lkpl;

    move-result-object v0

    invoke-interface {v0}, Lkpl;->b()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    monitor-exit p0

    return-void

    :cond_5
    :goto_3
    :try_start_7
    iget-object v0, p0, Lgxr;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgxn;

    iget-object v2, p0, Lgxr;->k:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgxq;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Lgxq;->ordinal()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_4

    :pswitch_0
    iget-object v1, v1, Lgxn;->a:Lkph;

    invoke-interface {v1}, Lkph;->f()V

    goto :goto_4

    :pswitch_1
    iget-object v1, v1, Lgxn;->a:Lkph;

    invoke-interface {v1}, Lkph;->g()V

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lgxr;->e:Lkaq;

    iget-object v1, p0, Lgxr;->k:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "State before publishing: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkaq;->f(Ljava/lang/String;)V

    invoke-virtual {p0}, Lgxr;->c()Lkpl;

    move-result-object v0

    invoke-interface {v0}, Lkpl;->d()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    monitor-exit p0

    return-void

    :catchall_2
    move-exception v0

    monitor-exit p0

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private final declared-synchronized l()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgxr;->j:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-string v1, "Ignored"

    iput-object v1, p0, Lgxr;->j:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lgxn;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lgxr;->j(Ljava/lang/String;Z)Lgxn;

    move-result-object p1

    return-object p1
.end method

.method public final declared-synchronized b()Lkph;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgxr;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lfjd;->k:Lfjd;

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgxn;

    iget-object v0, v0, Lgxn;->a:Lkph;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()Lkpl;
    .locals 1

    iget-object v0, p0, Lgxr;->h:Lmrl;

    invoke-interface {v0}, Lmrl;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkpl;

    return-object v0
.end method

.method public final declared-synchronized d()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lgxr;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgxr;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgxn;

    iget-object v1, v1, Lgxn;->a:Lkph;

    invoke-interface {v1}, Lkph;->f()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lgxr;->c()Lkpl;

    move-result-object v0

    invoke-interface {v0}, Lkpl;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final e(Lkpk;)V
    .locals 1

    invoke-virtual {p0}, Lgxr;->c()Lkpl;

    move-result-object v0

    invoke-interface {v0, p1}, Lkpl;->c(Lkpk;)V

    return-void
.end method

.method final declared-synchronized f(Lgxn;Lgxq;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgxr;->k:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lgxr;->k:Ljava/util/Map;

    const-string v2, "Trying to mark as published %s not contained in %s"

    invoke-static {v0, v2, p1, v1}, Lmoz;->t(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lgxr;->k:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized g()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lgxr;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lgxr;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final h()Lgxn;
    .locals 2

    const-string v0, "jpg"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lgxr;->j(Ljava/lang/String;Z)Lgxn;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized i()Lgxn;
    .locals 4

    monitor-enter p0

    :try_start_0
    new-instance v0, Lgxn;

    invoke-virtual {p0}, Lgxr;->c()Lkpl;

    move-result-object v1

    invoke-interface {v1}, Lkpl;->g()Lkph;

    move-result-object v1

    iget-object v2, p0, Lgxr;->i:Ldyy;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lgxn;-><init>(Lgxr;Lkph;Ldyy;Z)V

    iget-object v1, p0, Lgxr;->k:Ljava/util/Map;

    sget-object v2, Lgxq;->c:Lgxq;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lgxr;->d:Ljava/lang/String;

    invoke-static {v0}, Lmqr;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lgxr;->d:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    sget-object v1, Lgxr;->g:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lgxr;->a:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lgxr;->i:Ldyy;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lgxr;->b:Lgyb;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PXL_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " MediaGroup("

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
