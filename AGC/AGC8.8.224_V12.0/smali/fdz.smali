.class public final Lfdz;
.super Ljava/lang/Object;


# static fields
.field private static final d:Lnak;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Ljava/util/EnumMap;

.field private final e:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/memory/MemoryManager"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lfdz;->d:Lnak;

    return-void
.end method

.method public constructor <init>(Llas;Ljava/util/concurrent/Executor;[B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p1, Llas;->a:J

    iput-wide v0, p0, Lfdz;->e:J

    new-instance p1, Ljava/util/EnumMap;

    const-class p3, Lfdv;

    invoke-direct {p1, p3}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lfdz;->c:Ljava/util/EnumMap;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfdz;->a:Ljava/lang/Object;

    iput-object p2, p0, Lfdz;->b:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private final b()J
    .locals 6

    iget-object v0, p0, Lfdz;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lfdz;->c:Ljava/util/EnumMap;

    invoke-virtual {v1}, Ljava/util/EnumMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lfdv;

    iget-object v5, p0, Lfdz;->c:Ljava/util/EnumMap;

    invoke-virtual {v5, v4}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lfdy;

    iget-object v4, v4, Lfdy;->c:Ljava/lang/Object;

    check-cast v4, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    invoke-virtual {v4}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->m()Ljvs;

    move-result-object v4

    check-cast v4, Ljvk;

    iget-object v4, v4, Ljvk;->d:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_0

    :cond_0
    iget-wide v4, p0, Lfdz;->e:J

    sub-long/2addr v4, v2

    monitor-exit v0

    return-wide v4

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 13

    iget-object v0, p0, Lfdz;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lfdz;->b()J

    iget-object v1, p0, Lfdz;->c:Ljava/util/EnumMap;

    invoke-virtual {v1}, Ljava/util/EnumMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfdv;

    iget-object v3, p0, Lfdz;->c:Ljava/util/EnumMap;

    invoke-virtual {v3, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfdy;

    iget-object v3, v3, Lfdy;->a:Ljava/lang/Object;

    iget-object v4, p0, Lfdz;->a:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0}, Lfdz;->b()J

    move-result-wide v5

    iget-object v7, p0, Lfdz;->c:Ljava/util/EnumMap;

    invoke-virtual {v7, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lfdy;

    iget-object v7, v7, Lfdy;->c:Ljava/lang/Object;

    check-cast v7, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    invoke-virtual {v7}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->l()Ljvs;

    move-result-object v7

    check-cast v7, Ljvu;

    iget-object v7, v7, Ljvu;->a:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    cmp-long v12, v7, v9

    if-gez v12, :cond_0

    sget-object v5, Lfdz;->d:Lnak;

    invoke-virtual {v5}, Lnaf;->c()Lnaz;

    move-result-object v5

    check-cast v5, Lnah;

    const/16 v6, 0x862

    invoke-interface {v5, v6}, Lnah;->G(I)Lnaz;

    move-result-object v5

    check-cast v5, Lnah;

    const-string v6, "Feature (%s) reports negative shot memory: %d. Disabling."

    invoke-virtual {v2}, Lfdv;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v6, v2, v7, v8}, Lnah;->y(Ljava/lang/String;Ljava/lang/Object;J)V

    monitor-exit v4

    goto :goto_2

    :cond_0
    cmp-long v9, v7, v5

    if-gtz v9, :cond_1

    const/4 v11, 0x1

    goto :goto_1

    :cond_1
    :goto_1
    invoke-virtual {v2}, Lfdv;->name()Ljava/lang/String;

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    :try_start_2
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    check-cast v3, Ljvk;

    invoke-virtual {v3, v2}, Ljvk;->bn(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    :cond_2
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method
