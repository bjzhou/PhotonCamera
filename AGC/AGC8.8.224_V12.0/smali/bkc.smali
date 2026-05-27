.class public final Lbkc;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lbkc;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbkc;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbkc;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/PointF;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbkc;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lbkb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbkc;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lbkc;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Ljava/util/HashMap;

    iget-object p1, p1, Lbkc;->a:Ljava/lang/Object;

    invoke-direct {p2, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lbkc;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/googlex/gcam/Gcam;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbkc;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ldhi;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ldgs;->a:Ldhk;

    invoke-interface {p1}, Ldhi;->f()V

    invoke-interface {p1}, Ldhi;->e()V

    new-instance p1, Lcfe;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcfe;-><init>([B)V

    iput-object p1, p0, Lbkc;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ldhi;Lkap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbkc;->a:Ljava/lang/Object;

    const-string p1, "StrictModePolicy"

    invoke-interface {p2, p1}, Lkap;->a(Ljava/lang/String;)Lkaq;

    return-void
.end method

.method public constructor <init>(Ldhi;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbkc;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lebi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget p1, p1, Lebi;->b:I

    invoke-static {p1}, Lmul;->c(I)Lmul;

    move-result-object p1

    iput-object p1, p0, Lbkc;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lebi;Ljava/io/File;Ldin;Lkog;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    iget-boolean p4, p4, Lkog;->a:Z

    new-instance v0, Lcom/google/googlex/gcam/InitParams;

    invoke-direct {v0}, Lcom/google/googlex/gcam/InitParams;-><init>()V

    sget-object v1, Ldin;->a:Ldin;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p3, v1, :cond_1

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    goto :goto_0

    :cond_1
    const/4 p3, 0x1

    :goto_0
    iget-wide v4, v0, Lcom/google/googlex/gcam/InitParams;->a:J

    invoke-static {v4, v5, v0, p3}, Lcom/google/googlex/gcam/GcamModuleJNI;->InitParams_allow_unknown_devices_set(JLcom/google/googlex/gcam/InitParams;Z)V

    sget-object p3, Lnqk;->b:Lnqk;

    invoke-virtual {v0, p3}, Lcom/google/googlex/gcam/InitParams;->c(Lnqk;)V

    sget-object p3, Lnqk;->b:Lnqk;

    iget-wide v4, v0, Lcom/google/googlex/gcam/InitParams;->a:J

    iget p3, p3, Lnqk;->f:I

    invoke-static {v4, v5, v0, p3}, Lcom/google/googlex/gcam/GcamModuleJNI;->InitParams_execute_postview_on_set(JLcom/google/googlex/gcam/InitParams;I)V

    invoke-virtual {p1}, Lebi;->c()Z

    move-result p3

    if-eqz p3, :cond_2

    sget-object p3, Lnqk;->c:Lnqk;

    invoke-virtual {v0, p3}, Lcom/google/googlex/gcam/InitParams;->c(Lnqk;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lebi;->b()Z

    move-result p3

    if-eqz p3, :cond_3

    sget-object p3, Lnqk;->d:Lnqk;

    invoke-virtual {v0, p3}, Lcom/google/googlex/gcam/InitParams;->c(Lnqk;)V

    :cond_3
    :goto_1
    iget-object p1, p1, Lebi;->a:Ldhi;

    sget-object p3, Ldhq;->a:Ldhk;

    invoke-interface {p1}, Ldhi;->g()V

    invoke-virtual {v0}, Lcom/google/googlex/gcam/InitParams;->a()Lnqk;

    move-result-object p1

    sget-object p3, Lnqk;->b:Lnqk;

    if-eq p1, p3, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    iget-wide p3, v0, Lcom/google/googlex/gcam/InitParams;->a:J

    invoke-static {p3, p4, v0, v2}, Lcom/google/googlex/gcam/GcamModuleJNI;->InitParams_simultaneous_merge_and_finish_set(JLcom/google/googlex/gcam/InitParams;Z)V

    iget-wide p3, v0, Lcom/google/googlex/gcam/InitParams;->a:J

    invoke-static {p3, p4, v0, p2}, Lcom/google/googlex/gcam/GcamModuleJNI;->InitParams_serialized_cache_dir_set(JLcom/google/googlex/gcam/InitParams;Ljava/lang/String;)V

    iget-wide p1, v0, Lcom/google/googlex/gcam/InitParams;->a:J

    invoke-static {p1, p2, v0, v3}, Lcom/google/googlex/gcam/GcamModuleJNI;->InitParams_wait_for_portrait_brightening_init_set(JLcom/google/googlex/gcam/InitParams;Z)V

    iget-wide p1, v0, Lcom/google/googlex/gcam/InitParams;->a:J

    invoke-static {p1, p2, v0, v3}, Lcom/google/googlex/gcam/GcamModuleJNI;->InitParams_finish_pecan_wait_until_ready_set(JLcom/google/googlex/gcam/InitParams;Z)V

    iget-wide p1, v0, Lcom/google/googlex/gcam/InitParams;->a:J

    invoke-static {p1, p2, v0, v3}, Lcom/google/googlex/gcam/GcamModuleJNI;->InitParams_finish_pecan_initialize_on_gcam_creation_set(JLcom/google/googlex/gcam/InitParams;Z)V

    iput-object v0, p0, Lbkc;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lfec;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbkc;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lgkr;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbkc;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbkc;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lbkc;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbkc;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lbkc;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lbkc;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lbux;

    invoke-direct {p1}, Lbux;-><init>()V

    iput-object p1, p0, Lbkc;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([B[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lbkc;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([B[B[C)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lbkc;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([B[C)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lbkc;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([B[S)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lbkc;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([C)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    invoke-static {p1}, Lcaw;->g(I)Ljava/util/Queue;

    move-result-object p1

    iput-object p1, p0, Lbkc;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([C[C)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lbkc;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljvk;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p1, v0}, Ljvk;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lbkc;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([S)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/google/googlex/gcam/DirtyLensHistory;

    invoke-direct {p1}, Lcom/google/googlex/gcam/DirtyLensHistory;-><init>()V

    iput-object p1, p0, Lbkc;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Z
    .locals 1

    iget-object v0, p0, Lbkc;->a:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final declared-synchronized b(Ljava/nio/ByteBuffer;)Lbpq;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbkc;->a:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbpq;

    if-nez v0, :cond_0

    new-instance v0, Lbpq;

    invoke-direct {v0}, Lbpq;-><init>()V

    :cond_0
    const/4 v1, 0x0

    iput-object v1, v0, Lbpq;->b:Ljava/nio/ByteBuffer;

    iget-object v1, v0, Lbpq;->a:[B

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([BB)V

    new-instance v1, Lbpp;

    invoke-direct {v1}, Lbpp;-><init>()V

    iput-object v1, v0, Lbpq;->c:Lbpp;

    iput v2, v0, Lbpq;->d:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, v0, Lbpq;->b:Ljava/nio/ByteBuffer;

    iget-object p1, v0, Lbpq;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p1, v0, Lbpq;->b:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized c(Lbpq;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p1, Lbpq;->b:Ljava/nio/ByteBuffer;

    iput-object v0, p1, Lbpq;->c:Lbpp;

    iget-object v0, p0, Lbkc;->a:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final d()Lcfo;
    .locals 6

    new-instance v0, Lcfo;

    iget-object v1, p0, Lbkc;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/googlex/gcam/DirtyLensHistory;

    iget-wide v2, v1, Lcom/google/googlex/gcam/DirtyLensHistory;->a:J

    invoke-static {v2, v3, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->DirtyLensHistory_raw_score_history__get(JLcom/google/googlex/gcam/DirtyLensHistory;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/google/googlex/gcam/FloatDeque;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v2, v4}, Lcom/google/googlex/gcam/FloatDeque;-><init>(JZ)V

    move-object v1, v3

    :goto_0
    invoke-direct {v0, v1}, Lcfo;-><init>(Lcom/google/googlex/gcam/FloatDeque;)V

    return-object v0
.end method

.method public final e()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lbkc;->a:Ljava/lang/Object;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public final f(Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lbkc;->a:Ljava/lang/Object;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final declared-synchronized g(Ljava/lang/Class;)Lbqi;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbkc;->a:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lbkc;->a:Ljava/lang/Object;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldne;

    iget-object v3, v2, Ldne;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object p1, v2, Ldne;->a:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final declared-synchronized h(Ljava/lang/Class;Lbqi;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbkc;->a:Ljava/lang/Object;

    new-instance v1, Ldne;

    invoke-direct {v1, p1, p2}, Ldne;-><init>(Ljava/lang/Class;Lbqi;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized i()Ljava/util/List;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbkc;->a:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized j(Lbpv;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbkc;->a:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized k(Ljava/lang/Class;)Lbpt;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbkc;->a:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldne;

    iget-object v2, v1, Ldne;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, v1, Ldne;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method

.method public final declared-synchronized l(Ljava/lang/Class;Lbpt;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbkc;->a:Ljava/lang/Object;

    new-instance v1, Ldne;

    invoke-direct {v1, p1, p2}, Ldne;-><init>(Ljava/lang/Class;Lbpt;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized m(Ljava/lang/Class;Ljava/lang/Class;)Lbyg;
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lbyh;->a:Lbyh;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lbkc;->a:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lva;

    invoke-virtual {v1, p1, p2}, Lva;->k(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p1, v1, Lva;->b:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_2
    :try_start_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No transcoder registered to transcode from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method

.method public final declared-synchronized n(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;
    .locals 4

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lbkc;->a:Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lva;

    invoke-virtual {v2, p1, p2}, Lva;->k(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v2, Lva;->c:Ljava/lang/Object;

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v2, v2, Lva;->c:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final declared-synchronized o(Ljava/lang/Class;Ljava/lang/Class;Lbyg;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbkc;->a:Ljava/lang/Object;

    new-instance v1, Lva;

    invoke-direct {v1, p1, p2, p3}, Lva;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lbyg;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized p(J)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbkc;->a:Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    check-cast v0, Lmuo;

    invoke-virtual {v0, p1}, Lmuo;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lbkc;->a:Ljava/lang/Object;

    check-cast p1, Lmuo;

    invoke-virtual {p1}, Lmuo;->toArray()[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized q(J)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbkc;->a:Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    check-cast v0, Lmuo;

    invoke-virtual {v0, p1}, Lmuo;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final r(Ljava/lang/String;)Llbd;
    .locals 8

    sget-object v1, Lldg;->a:Lldg;

    invoke-static {}, Lktf;->w()Landroidx/wear/ambient/AmbientMode$AmbientController;

    move-result-object v2

    invoke-static {}, Llpm;->l()Lkyw;

    move-result-object v0

    invoke-static {p1, v0}, Lkyv;->b(Ljava/lang/String;Lkyw;)Lkyv;

    move-result-object p1

    invoke-virtual {p1}, Lkyv;->a()V

    invoke-static {p1}, Lktf;->t(Lkyv;)Llbh;

    move-result-object p1

    new-instance v7, Llbo;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Llbo;-><init>(Lldg;Landroidx/wear/ambient/AmbientMode$AmbientController;[B[B[B[B)V

    invoke-static {p1, v7}, Llpm;->e(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lkzc;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Llpm;->k(Lkzc;)Ljava/lang/Object;
    :try_end_0
    .catch Lkzd; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Lldc;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2, v2}, Lldc;-><init>(Llbd;Lkzc;[B[B)V

    invoke-virtual {p1, v1}, Llbh;->m(Lldc;)V

    iget-object v0, p0, Lbkc;->a:Ljava/lang/Object;

    sget-object v1, Ldho;->a:Ldhk;

    invoke-interface {v0}, Ldhi;->f()V

    invoke-static {p1}, Lktf;->r(Llbd;)Llbd;

    move-result-object p1

    iget-object v0, p0, Lbkc;->a:Ljava/lang/Object;

    invoke-interface {v0}, Ldhi;->f()V

    iget-object v0, p0, Lbkc;->a:Ljava/lang/Object;

    invoke-interface {v0}, Ldhi;->e()V

    new-instance v0, Llcc;

    invoke-direct {v0, p1}, Llcc;-><init>(Llbd;)V

    return-object v0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Lkzd;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    const-string v1, "Failed to create GLContext!"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final s(Ldhj;)Ldsw;
    .locals 1

    iget-object v0, p0, Lbkc;->a:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ldhi;->l(Ldhj;)Z

    move-result p1

    new-instance v0, Ldsz;

    invoke-direct {v0, p1}, Ldsz;-><init>(Z)V

    return-object v0
.end method

.method public final t()Ldsw;
    .locals 2

    iget-object v0, p0, Lbkc;->a:Ljava/lang/Object;

    invoke-interface {v0}, Ldhi;->e()V

    new-instance v0, Ldta;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ldta;-><init>(I)V

    return-object v0
.end method

.method public final declared-synchronized u()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbkc;->a:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    iget-object v0, p0, Lbkc;->a:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Deque;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final v()V
    .locals 2

    iget-object v0, p0, Lbkc;->a:Ljava/lang/Object;

    sget-object v1, Ldho;->a:Ldhk;

    invoke-interface {v0}, Ldhi;->e()V

    return-void
.end method

.method public final w(Landroid/content/Context;Lchd;)Z
    .locals 30

    const-string v1, "IsPhotosphere"

    const-string v2, "UsePanoramaViewer"

    const-string v3, "ProjectionType"

    const-string v4, "Failed to close stream: %s"

    const-string v5, "http://ns.google.com/photos/1.0/panorama/"

    invoke-static {}, Lfeb;->a()Lfea;

    move-result-object v6

    invoke-interface/range {p2 .. p2}, Lchd;->c()Lchf;

    move-result-object v0

    sget-object v7, Lchf;->b:Lchf;

    invoke-virtual {v0, v7}, Lchf;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v0, :cond_12

    invoke-interface/range {p2 .. p2}, Lchd;->b()Lche;

    move-result-object v0

    invoke-interface {v0}, Lche;->c()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v10}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v11, "content"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v15, 0x0

    if-eqz v0, :cond_2

    new-array v11, v7, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v11, v8

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-nez v9, :cond_0

    move-object v9, v15

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v10, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    move-object v9, v15

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    move-object v9, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    invoke-virtual {v10}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    :goto_0
    if-nez v9, :cond_3

    sget-object v0, Lfeg;->a:Lfef;

    move-object/from16 v23, v6

    goto/16 :goto_d

    :cond_3
    invoke-static {v9}, Lgsj;->c(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_4

    move-object/from16 v23, v6

    goto/16 :goto_c

    :cond_4
    invoke-static {v0}, Lkrm;->k(Ljava/io/InputStream;)Lber;

    move-result-object v10

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v11, v0

    sget-object v0, Lfee;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const/16 v12, 0x86f

    invoke-static {v0, v4, v11, v12}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    :goto_1
    if-eqz v10, :cond_8

    :try_start_3
    const-string v0, "FirstPhotoDate"

    invoke-static {v10, v0}, Lfee;->d(Lber;Ljava/lang/String;)V

    const-string v0, "LastPhotoDate"

    invoke-static {v10, v0}, Lfee;->d(Lber;Ljava/lang/String;)V

    const-string v0, "SourcePhotosCount"

    invoke-static {v10, v0}, Lfee;->a(Lber;Ljava/lang/String;)I

    invoke-interface {v10, v5, v3}, Lber;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, v10

    check-cast v0, Lbff;

    invoke-virtual {v0, v5, v3, v8}, Lbff;->l(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_5
    invoke-static {v10, v2}, Lfee;->b(Lber;Ljava/lang/String;)Z

    move-result v3
    :try_end_3
    .catch Lbeq; {:try_start_3 .. :try_end_3} :catch_6

    :try_start_4
    const-string v0, "CroppedAreaImageWidthPixels"

    invoke-static {v10, v0}, Lfee;->a(Lber;Ljava/lang/String;)I

    move-result v11
    :try_end_4
    .catch Lbeq; {:try_start_4 .. :try_end_4} :catch_5

    :try_start_5
    const-string v0, "CroppedAreaImageHeightPixels"

    invoke-static {v10, v0}, Lfee;->a(Lber;Ljava/lang/String;)I

    move-result v12
    :try_end_5
    .catch Lbeq; {:try_start_5 .. :try_end_5} :catch_4

    :try_start_6
    const-string v0, "FullPanoWidthPixels"

    invoke-static {v10, v0}, Lfee;->a(Lber;Ljava/lang/String;)I

    move-result v13
    :try_end_6
    .catch Lbeq; {:try_start_6 .. :try_end_6} :catch_3

    :try_start_7
    const-string v0, "FullPanoHeightPixels"

    invoke-static {v10, v0}, Lfee;->a(Lber;Ljava/lang/String;)I

    move-result v14
    :try_end_7
    .catch Lbeq; {:try_start_7 .. :try_end_7} :catch_2

    :try_start_8
    const-string v0, "CroppedAreaLeftPixels"

    invoke-static {v10, v0}, Lfee;->a(Lber;Ljava/lang/String;)I

    const-string v0, "CroppedAreaTopPixels"

    invoke-static {v10, v0}, Lfee;->a(Lber;Ljava/lang/String;)I

    const-string v0, "LargestValidInteriorRectLeft"

    invoke-static {v10, v0}, Lfee;->a(Lber;Ljava/lang/String;)I

    const-string v0, "LargestValidInteriorRectTop"

    invoke-static {v10, v0}, Lfee;->a(Lber;Ljava/lang/String;)I

    const-string v0, "LargestValidInteriorRectWidth"

    invoke-static {v10, v0}, Lfee;->a(Lber;Ljava/lang/String;)I

    const-string v0, "LargestValidInteriorRectHeight"

    invoke-static {v10, v0}, Lfee;->a(Lber;Ljava/lang/String;)I

    invoke-interface {v10, v5, v1}, Lber;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v10, v1}, Lfee;->b(Lber;Ljava/lang/String;)Z

    move-result v0

    goto :goto_2

    :cond_6
    invoke-static {v10, v2}, Lfee;->b(Lber;Ljava/lang/String;)Z

    move-result v0
    :try_end_8
    .catch Lbeq; {:try_start_8 .. :try_end_8} :catch_1

    :goto_2
    if-lez v11, :cond_7

    if-lez v12, :cond_7

    if-lez v13, :cond_7

    if-lez v14, :cond_7

    const/4 v1, 0x1

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    :goto_3
    move/from16 v22, v0

    move/from16 v17, v3

    goto :goto_9

    :catch_1
    move-exception v0

    goto :goto_8

    :catch_2
    move-exception v0

    goto :goto_7

    :catch_3
    move-exception v0

    goto :goto_6

    :catch_4
    move-exception v0

    goto :goto_5

    :catch_5
    move-exception v0

    goto :goto_4

    :catch_6
    move-exception v0

    const/4 v3, 0x0

    :goto_4
    const/4 v11, 0x0

    :goto_5
    const/4 v12, 0x0

    :goto_6
    const/4 v13, 0x0

    :goto_7
    const/4 v14, 0x0

    :goto_8
    move/from16 v17, v3

    const/4 v1, 0x0

    const/16 v22, 0x0

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x0

    const/16 v22, 0x0

    :goto_9
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v7, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {v9}, Lgsj;->c(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_9

    sget-object v0, Lfee;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "Failed to create stream to check image size, perhaps the file was deleted while we were parsing metadata"

    const/16 v2, 0x86e

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    move-object/from16 v23, v6

    goto/16 :goto_c

    :cond_9
    invoke-static {v0, v15, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    :try_start_9
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_a

    :catch_7
    move-exception v0

    move-object v3, v0

    sget-object v0, Lfee;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const/16 v5, 0x86d

    invoke-static {v0, v4, v3, v5}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    :goto_a
    iget v0, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    add-int v3, v2, v2

    if-nez v1, :cond_b

    if-ne v3, v0, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    move-object/from16 v23, v6

    goto/16 :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_b
    int-to-double v3, v2

    int-to-double v9, v11

    int-to-double v7, v12

    if-nez v1, :cond_c

    move-object/from16 v23, v6

    int-to-double v5, v0

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    div-double v26, v9, v7

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double v24, v5, v3

    const-wide v28, 0x3f50624dd2f1a9fcL    # 0.001

    invoke-static/range {v24 .. v29}, Lfee;->c(DDD)Z

    move-result v3

    if-nez v3, :cond_d

    sget-object v0, Lfee;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "Pano metadata does not match file dimensions."

    const/16 v2, 0x86b

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    goto :goto_c

    :cond_c
    move-object/from16 v23, v6

    :cond_d
    if-nez v1, :cond_e

    int-to-double v3, v13

    int-to-double v5, v14

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double v24, v3, v5

    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    const-wide v28, 0x3fb999999999999aL    # 0.1

    invoke-static/range {v24 .. v29}, Lfee;->c(DDD)Z

    move-result v3

    if-nez v3, :cond_e

    sget-object v0, Lfee;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "Pano metadata invalid: Full pano dimension not 2:1."

    const/16 v2, 0x86a

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    goto :goto_c

    :cond_e
    if-eqz v1, :cond_f

    new-instance v15, Lfee;

    invoke-direct {v15, v0, v2}, Lfee;-><init>(II)V

    goto :goto_c

    :cond_f
    new-instance v15, Lfee;

    move-object/from16 v16, v15

    move/from16 v18, v11

    move/from16 v19, v12

    move/from16 v20, v13

    move/from16 v21, v14

    invoke-direct/range {v16 .. v22}, Lfee;-><init>(ZIIIIZ)V

    :goto_c
    if-nez v15, :cond_10

    sget-object v0, Lfeg;->a:Lfef;

    goto :goto_d

    :cond_10
    new-instance v0, Lfef;

    invoke-direct {v0, v15}, Lfef;-><init>(Lfee;)V

    :goto_d
    sget-object v1, Lfeg;->a:Lfef;

    if-ne v0, v1, :cond_11

    invoke-interface/range {p2 .. p2}, Lchd;->b()Lche;

    move-result-object v0

    invoke-interface {v0}, Lche;->c()Landroid/net/Uri;

    move-object/from16 v2, p0

    move-object/from16 v1, v23

    const/4 v8, 0x0

    goto/16 :goto_14

    :cond_11
    move-object/from16 v1, v23

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lfea;->c(Z)V

    iget-boolean v2, v0, Lfef;->b:Z

    invoke-virtual {v1, v2}, Lfea;->d(Z)V

    iget-boolean v2, v0, Lfef;->a:Z

    invoke-virtual {v1, v2}, Lfea;->f(Z)V

    iget-boolean v0, v0, Lfef;->c:Z

    invoke-virtual {v1, v0}, Lfea;->e(Z)V

    const/4 v8, 0x1

    move-object/from16 v2, p0

    goto/16 :goto_14

    :cond_12
    move-object v1, v6

    invoke-interface/range {p2 .. p2}, Lchd;->c()Lchf;

    move-result-object v0

    sget-object v2, Lchf;->c:Lchf;

    invoke-virtual {v0, v2}, Lchf;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    move-object/from16 v2, p0

    iget-object v0, v2, Lbkc;->a:Ljava/lang/Object;

    invoke-interface/range {p2 .. p2}, Lchd;->b()Lche;

    move-result-object v3

    invoke-interface {v3}, Lche;->c()Landroid/net/Uri;

    move-result-object v3

    new-instance v4, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v4}, Landroid/media/MediaMetadataRetriever;-><init>()V

    :try_start_a
    check-cast v0, Lfec;

    iget-object v0, v0, Lfec;->b:Landroid/content/Context;

    invoke-virtual {v4, v0, v3}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    const/16 v0, 0x18

    invoke-virtual {v4, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    const/16 v6, 0x12

    invoke-virtual {v4, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x13

    invoke-virtual {v4, v7}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x19

    invoke-virtual {v4, v8}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v6, :cond_13

    if-eqz v7, :cond_13

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v1, v9}, Lfea;->i(I)V

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v1, v9}, Lfea;->h(I)V

    goto :goto_e

    :cond_13
    sget-object v9, Lfec;->a:Lnak;

    invoke-virtual {v9}, Lnaf;->c()Lnaz;

    move-result-object v9

    check-cast v9, Lnah;

    const/16 v10, 0x865

    invoke-interface {v9, v10}, Lnah;->G(I)Lnaz;

    move-result-object v9

    check-cast v9, Lnah;

    const-string v10, "Size metadata does not exist for the video at %s"

    invoke-interface {v9, v10, v3}, Lnah;->r(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_e
    if-eqz v0, :cond_14

    iput-object v0, v1, Lfea;->b:Ljava/lang/String;

    goto :goto_f

    :cond_14
    sget-object v9, Lfec;->a:Lnak;

    invoke-virtual {v9}, Lnaf;->c()Lnaz;

    move-result-object v9

    check-cast v9, Lnah;

    const/16 v10, 0x866

    invoke-interface {v9, v10}, Lnah;->G(I)Lnaz;

    move-result-object v9

    check-cast v9, Lnah;

    const-string v10, "Orientation metadata does not exist for the video at %s"

    invoke-interface {v9, v10, v3}, Lnah;->r(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_f
    if-eqz v8, :cond_15

    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    double-to-int v3, v8

    invoke-virtual {v1, v3}, Lfea;->g(I)V

    goto :goto_10

    :cond_15
    sget-object v8, Lfec;->a:Lnak;

    invoke-virtual {v8}, Lnaf;->c()Lnaz;

    move-result-object v8

    check-cast v8, Lnah;

    const/16 v9, 0x867

    invoke-interface {v8, v9}, Lnah;->G(I)Lnaz;

    move-result-object v8

    check-cast v8, Lnah;

    const-string v9, "Framerate metadata does not exist for the video at %s"

    invoke-interface {v8, v9, v3}, Lnah;->r(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_9
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :goto_10
    if-eqz v6, :cond_16

    if-eqz v7, :cond_16

    if-eqz v0, :cond_16

    :try_start_b
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V

    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    const/4 v8, 0x1

    goto :goto_14

    :catch_8
    move-exception v0

    const/4 v8, 0x1

    goto :goto_14

    :cond_16
    :try_start_c
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V

    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a

    goto :goto_11

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_12

    :catch_9
    move-exception v0

    :try_start_d
    sget-object v3, Lfec;->a:Lnak;

    invoke-virtual {v3}, Lnaf;->b()Lnaz;

    move-result-object v3

    check-cast v3, Lnah;

    invoke-interface {v3, v0}, Lnah;->h(Ljava/lang/Throwable;)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v3, 0x868

    invoke-interface {v0, v3}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v3, "VideoRotationMetadataLoader.loadRotationMetadata() failed!"

    invoke-interface {v0, v3}, Lnah;->o(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :try_start_e
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V

    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a

    :goto_11
    const/4 v8, 0x0

    goto :goto_14

    :catch_a
    move-exception v0

    const/4 v8, 0x0

    goto :goto_14

    :goto_12
    :try_start_f
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V

    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_b

    goto :goto_13

    :catch_b
    move-exception v0

    :goto_13
    throw v1

    :cond_17
    move-object/from16 v2, p0

    const/4 v8, 0x0

    :goto_14
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lfea;->b(Z)V

    invoke-virtual {v1}, Lfea;->a()Lfeb;

    move-result-object v0

    move-object/from16 v1, p2

    invoke-interface {v1, v0}, Lchd;->g(Lfeb;)V

    return v8
.end method

.method public final x(Lkou;I)Lgxb;
    .locals 2

    new-instance v0, Lgxb;

    iget-object v1, p0, Lbkc;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/googlex/gcam/Gcam;

    invoke-virtual {v1, p2}, Lcom/google/googlex/gcam/Gcam;->c(I)Lcom/google/googlex/gcam/Tuning;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Lgxb;-><init>(Lcom/google/googlex/gcam/Tuning;Lkou;)V

    return-object v0
.end method

.method public final declared-synchronized y()Lgxb;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbkc;->a:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgxb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized z(Lgxb;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbkc;->a:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    iget-object p1, p0, Lbkc;->a:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Deque;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
