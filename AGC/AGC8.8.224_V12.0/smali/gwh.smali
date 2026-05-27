.class public final Lgwh;
.super Ljava/lang/Object;

# interfaces
.implements Lgwf;


# static fields
.field public static final a:Lnak;


# instance fields
.field private final b:Ljava/util/Map;

.field private final c:Ljuh;

.field private final d:Loiw;

.field private final e:Lgxk;

.field private final f:Ljew;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/session/CaptureSessionManagerImpl"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lgwh;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Lgxk;Ljuh;Ljew;Loiw;[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgwh;->e:Lgxk;

    iput-object p2, p0, Lgwh;->c:Ljuh;

    iput-object p3, p0, Lgwh;->f:Ljew;

    iput-object p4, p0, Lgwh;->d:Loiw;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lgwh;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Lgxy;)Lgxl;
    .locals 2

    iget-object v0, p0, Lgwh;->b:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lgwh;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgxl;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b(Lgxm;)Lnou;
    .locals 7

    iget-object v0, p0, Lgwh;->b:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lgwh;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    if-lez v2, :cond_0

    new-instance v3, Lciq;

    invoke-direct {v3, v2}, Lciq;-><init>(I)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgxl;

    invoke-interface {v2}, Lgxl;->q()Lnou;

    move-result-object v4

    new-instance v5, Lgwg;

    const/4 v6, 0x0

    invoke-direct {v5, v2, p1, v3, v6}, Lgwg;-><init>(Lgxl;Lgxm;Lciq;I)V

    iget-object v2, p0, Lgwh;->c:Ljuh;

    invoke-static {v4, v5, v2}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    goto :goto_1

    :cond_1
    if-nez v3, :cond_2

    sget-object p1, Lnor;->a:Lnou;

    goto :goto_2

    :cond_2
    iget-object p1, v3, Lciq;->a:Lnph;

    :goto_2
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public final c(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lgwh;->e:Lgxk;

    invoke-virtual {v0, p1}, Lgxk;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public final d(Lgxy;)V
    .locals 3

    iget-object v0, p0, Lgwh;->b:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lgwh;->b:Ljava/util/Map;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Lgwh;->b:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgxl;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lgxl;->z()V

    return-void

    :cond_0
    sget-object p1, Lgwh;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    const-string v0, "Session was already removed, cannot be finalized"

    const/16 v1, 0xcf8

    invoke-static {p1, v0, v1}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public final e(Lgxl;)V
    .locals 3

    iget-object v0, p0, Lgwh;->f:Ljew;

    invoke-interface {p1}, Lgxl;->h()Lgxy;

    move-result-object v1

    iget-object v0, v0, Ljew;->a:Ljava/lang/Object;

    check-cast v0, Ligo;

    iget-object v2, v0, Ligo;->b:Ljava/lang/Object;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfbz;

    iget-object v0, v0, Ligo;->a:Ljava/lang/Object;

    new-instance v0, Lhjf;

    invoke-direct {v0, v2, v1}, Lhjf;-><init>(Lfbz;Lgxy;)V

    invoke-interface {p1}, Lgxl;->k()Lhjc;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Lhjd;

    iput-object v0, v1, Lhjd;->j:Lhjf;

    invoke-interface {p1, v0}, Lgxl;->u(Lgxw;)V

    iget-object v0, p0, Lgwh;->d:Loiw;

    check-cast v0, Ldmc;

    invoke-virtual {v0}, Ldmc;->a()Ldmb;

    move-result-object v0

    invoke-interface {p1, v0}, Lgxl;->u(Lgxw;)V

    iget-object v0, p0, Lgwh;->b:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lgwh;->b:Ljava/util/Map;

    invoke-interface {p1}, Lgxl;->h()Lgxy;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
