.class public final Liok;
.super Ljava/lang/Object;

# interfaces
.implements Lios;
.implements Lkec;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Llbd;

.field public final d:Ljvs;

.field public final e:Lkbc;

.field public final f:Lnph;

.field public g:Lklv;

.field public h:Lkfj;

.field public i:Lkeb;

.field j:Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger;

.field volatile k:Lmvv;

.field public l:Z

.field private final m:Ljvs;

.field private final n:Lkbh;

.field private final o:Lkbh;

.field private final p:Z

.field private final q:Ljava/util/Map;

.field private r:Ljava/lang/Integer;

.field private s:J

.field private t:Lkef;

.field private final u:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private v:Landroid/util/Size;

.field private final w:Ljava/util/Set;

.field private x:I

.field private final y:Lltf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/viewfindereffects/ViewfinderEffectsPipelineFrameServerImpl"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Liok;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Llbd;Ljvs;Ljvs;Lkbc;Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v0

    iput-object v0, p0, Liok;->f:Lnph;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Liok;->q:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Liok;->g:Lklv;

    iput-object v0, p0, Liok;->r:Ljava/lang/Integer;

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Liok;->s:J

    iput-object v0, p0, Liok;->i:Lkeb;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Liok;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget v1, Lmvv;->d:I

    sget-object v1, Lmyu;->a:Lmvv;

    iput-object v1, p0, Liok;->k:Lmvv;

    const/4 v1, 0x0

    iput-boolean v1, p0, Liok;->l:Z

    invoke-static {}, Lmjy;->C()Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Liok;->w:Ljava/util/Set;

    iput v1, p0, Liok;->x:I

    iput-object p1, p0, Liok;->b:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Liok;->c:Llbd;

    iput-object p3, p0, Liok;->m:Ljvs;

    iput-object p4, p0, Liok;->d:Ljvs;

    iput-object p5, p0, Liok;->e:Lkbc;

    const-string p1, "VFE.ImageCount"

    invoke-interface {p5, p1}, Lkbc;->b(Ljava/lang/String;)Lkbh;

    move-result-object p1

    iput-object p1, p0, Liok;->n:Lkbh;

    const-string p1, "VFE.IntervalMs"

    invoke-interface {p5, p1}, Lkbc;->b(Ljava/lang/String;)Lkbh;

    move-result-object p1

    iput-object p1, p0, Liok;->o:Lkbh;

    iput-boolean p6, p0, Liok;->p:Z

    new-instance p1, Lltf;

    invoke-direct {p1, v0}, Lltf;-><init>([C)V

    iput-object p1, p0, Liok;->y:Lltf;

    return-void
.end method

.method private final j(Lkeb;)V
    .locals 2

    invoke-interface {p1}, Lkeb;->close()V

    iget-object v0, p0, Liok;->q:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Liok;->q:Ljava/util/Map;

    invoke-interface {p1}, Lkeb;->b()Lkeg;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private final k(Lkeb;Ljava/lang/String;)V
    .locals 7

    sget-object v0, Liok;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v1, 0x1105

    invoke-interface {v0, v1}, Lnah;->G(I)Lnaz;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lnah;

    invoke-interface {p1}, Lkeb;->e()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget v0, p0, Liok;->x:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v2, "[%s, closed=%s](repeat=%d) %s"

    move-object v3, p1

    move-object v6, p2

    invoke-interface/range {v1 .. v6}, Lnah;->C(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget p1, p0, Liok;->x:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Liok;->x:I

    return-void
.end method

.method private static final l(I)I
    .locals 0

    sparse-switch p0, :sswitch_data_0

    const/4 p0, 0x4

    return p0

    :sswitch_0
    const/4 p0, 0x7

    return p0

    :sswitch_1
    const/4 p0, 0x3

    return p0

    :sswitch_2
    const/4 p0, 0x0

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public final a()I
    .locals 2

    iget-object v0, p0, Liok;->r:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Liok;->g:Lklv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Liok;->m:Ljvs;

    check-cast v0, Ldbf;

    invoke-virtual {v0}, Ldbf;->c()Ldbw;

    move-result-object v0

    invoke-virtual {v0}, Ldbw;->a()Lklv;

    move-result-object v0

    iget-object v1, p0, Liok;->g:Lklv;

    invoke-virtual {v0, v1}, Lklv;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Liok;->m:Ljvs;

    check-cast v0, Ldbf;

    invoke-virtual {v0}, Ldbf;->c()Ldbw;

    move-result-object v0

    iget-boolean v1, v0, Ldbw;->a:Z

    if-eqz v1, :cond_1

    iget-object v0, v0, Ldbw;->b:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, v0, Ldbw;->c:Lfuz;

    invoke-virtual {v0}, Lklw;->f()I

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Liok;->r:Ljava/lang/Integer;

    :cond_2
    iget-object v0, p0, Liok;->r:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final b()Llbd;
    .locals 2

    iget-boolean v0, p0, Liok;->l:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Tried to get GL context after ViewfinderEffectsPipeline is closed"

    invoke-static {v0, v1}, Lmoz;->q(ZLjava/lang/Object;)V

    iget-object v0, p0, Liok;->c:Llbd;

    return-object v0
.end method

.method public final c(Lkhr;)V
    .locals 3

    invoke-virtual {p1}, Lkhr;->a()Lkeb;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lkeb;->b()Lkeg;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Liok;->q:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Liok;->q:Ljava/util/Map;

    invoke-interface {p1}, Lkeb;->b()Lkeg;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Lkeb;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Liok;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "The frame %s should be valid but is closed on arrival."

    const/16 v2, 0x10fe

    invoke-static {v0, v1, p1, v2}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    :cond_1
    iget-object v0, p0, Liok;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lioi;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lioi;-><init>(Liok;Lkeb;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public final declared-synchronized close()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Liok;->e:Lkbc;

    const-string v1, "VFEPipeline#close"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    iget-boolean v0, p0, Liok;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Liok;->e:Lkbc;

    :goto_0
    invoke-interface {v0}, Lkbc;->f()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Liok;->l:Z

    iget-object v0, p0, Liok;->t:Lkef;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lkef;->l(Lkee;)V

    :cond_1
    iget-object v0, p0, Liok;->i:Lkeb;

    if-eqz v0, :cond_2

    invoke-direct {p0, v0}, Liok;->j(Lkeb;)V

    :cond_2
    iget-object v0, p0, Liok;->q:Ljava/util/Map;

    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Liok;->q:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, Liok;->q:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkeb;

    invoke-interface {v1}, Lkeb;->close()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Liok;->j:Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Liok;->j:Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger;

    :cond_4
    sget v0, Lmvv;->d:I

    sget-object v0, Lmyu;->a:Lmvv;

    invoke-virtual {p0, v0}, Liok;->h(Ljava/util/List;)V

    iget-object v0, p0, Liok;->w:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lioo;

    invoke-interface {v1}, Lioo;->close()V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Liok;->w:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Liok;->e:Lkbc;

    const-string v1, "glContext"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v0, p0, Liok;->c:Llbd;

    invoke-interface {v0}, Llbd;->close()V

    iget-object v0, p0, Liok;->e:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iget-object v0, p0, Liok;->e:Lkbc;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_8
    iget-object v1, p0, Liok;->e:Lkbc;

    invoke-interface {v1}, Lkbc;->f()V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v0

    monitor-exit p0

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public final d(II)Lmqp;
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final declared-synchronized e(Lkef;Lkfj;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Liok;->t:Lkef;

    if-eq v0, p1, :cond_1

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lkef;->l(Lkee;)V

    :cond_0
    invoke-interface {p1, p0}, Lkef;->k(Lkee;)V

    :cond_1
    iput-object p2, p0, Liok;->h:Lkfj;

    iput-object p1, p0, Liok;->t:Lkef;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized f(Lkeb;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    monitor-enter p0

    :try_start_0
    iget-object v2, v1, Liok;->i:Lkeb;

    if-eqz v2, :cond_0

    invoke-direct {v1, v2}, Liok;->j(Lkeb;)V

    :cond_0
    iput-object v0, v1, Liok;->i:Lkeb;

    new-instance v2, Lkbb;

    iget-object v3, v1, Liok;->e:Lkbc;

    const-string v4, "VFE.process"

    invoke-direct {v2, v3, v4}, Lkbb;-><init>(Lkbc;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v5, v1, Liok;->j:Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger;

    if-nez v5, :cond_2

    const-string v3, "BufferFlinger is not available. Aborting display."

    invoke-direct {v1, v0, v3}, Liok;->k(Lkeb;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Lkbb;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit p0

    return-void

    :cond_2
    :try_start_3
    iget-object v3, v1, Liok;->v:Landroid/util/Size;

    if-nez v3, :cond_3

    const-string v3, "outputSize is not available. Aborting display."

    invoke-direct {v1, v0, v3}, Liok;->k(Lkeb;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance v4, Ljuf;

    invoke-direct {v4}, Ljuf;-><init>()V

    invoke-interface/range {p1 .. p1}, Lkeb;->a()Lkeb;

    move-result-object v6

    if-nez v6, :cond_4

    const-string v3, "failed to fork() frame. Aborting display."

    invoke-direct {v1, v0, v3}, Liok;->k(Lkeb;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljuf;->close()V

    goto :goto_0

    :cond_4
    invoke-virtual {v4, v6}, Ljuf;->d(Lkad;)V

    iget-boolean v7, v1, Liok;->p:Z

    const/4 v11, 0x0

    if-eqz v7, :cond_5

    iget-object v7, v1, Liok;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v4}, Ljuf;->close()V

    goto :goto_0

    :cond_5
    iget-object v7, v1, Liok;->y:Lltf;

    iget v8, v7, Lltf;->a:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lltf;->a:I

    iget-object v7, v1, Liok;->h:Lkfj;

    invoke-interface {v6, v7}, Lkeb;->d(Lkfj;)Lkpb;

    move-result-object v6

    if-nez v6, :cond_6

    const-string v3, "can\'t display frame as frame has no associated YUV image"

    invoke-direct {v1, v0, v3}, Liok;->k(Lkeb;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljuf;->close()V

    goto :goto_0

    :cond_6
    invoke-virtual {v4, v6}, Ljuf;->d(Lkad;)V

    invoke-interface {v6}, Lkpb;->f()Landroid/hardware/HardwareBuffer;

    move-result-object v7

    if-nez v7, :cond_7

    const-string v3, "can\'t display frame as YUV image has no associated HardwareBuffer"

    invoke-direct {v1, v0, v3}, Liok;->k(Lkeb;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljuf;->close()V

    goto :goto_0

    :cond_7
    new-instance v8, Lhbq;

    const/16 v9, 0x12

    invoke-direct {v8, v7, v9}, Lhbq;-><init>(Landroid/hardware/HardwareBuffer;I)V

    invoke-virtual {v4, v8}, Ljuf;->d(Lkad;)V

    iget-object v8, v1, Liok;->k:Lmvv;

    invoke-virtual {v8}, Lmvv;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_8

    invoke-virtual {v8}, Lmvv;->s()Lnad;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lioo;

    iget-object v10, v1, Liok;->h:Lkfj;

    invoke-interface {v9, v0, v10, v0}, Lioo;->m(Lkeb;Lkfj;Lkeb;)V

    goto :goto_1

    :cond_8
    iget-object v0, v1, Liok;->g:Lklv;

    if-nez v0, :cond_9

    iget-object v0, v1, Liok;->m:Ljvs;

    check-cast v0, Ldbf;

    invoke-virtual {v0}, Ldbf;->c()Ldbw;

    move-result-object v0

    invoke-virtual {v0}, Ldbw;->a()Lklv;

    move-result-object v0

    iput-object v0, v1, Liok;->g:Lklv;

    :cond_9
    iget-object v0, v1, Liok;->g:Lklv;

    invoke-virtual/range {p0 .. p0}, Liok;->a()I

    move-result v8

    sget-object v9, Lklv;->a:Lklv;

    if-ne v0, v9, :cond_a

    rsub-int v0, v8, 0x168

    rem-int/lit16 v0, v0, 0x168

    invoke-static {v0}, Liok;->l(I)I

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    or-int/lit8 v0, v0, 0x8

    move v9, v0

    goto :goto_2

    :cond_a
    invoke-static {v8}, Liok;->l(I)I

    move-result v0

    or-int/lit8 v0, v0, 0x8

    iget-object v8, v1, Liok;->d:Ljvs;

    invoke-interface {v8}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_b

    or-int/lit8 v0, v0, 0x2

    :cond_b
    move v9, v0

    :goto_2
    iget-object v0, v1, Liok;->e:Lkbc;

    const-string v8, "VFE.Submit"

    invoke-interface {v0, v8}, Lkbc;->a(Ljava/lang/String;)Lkbf;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Lhbq;

    const/16 v10, 0x13

    invoke-direct {v8, v0, v10}, Lhbq;-><init>(Lkbf;I)V

    invoke-virtual {v4, v8}, Ljuf;->d(Lkad;)V

    iget-object v0, v1, Liok;->n:Lkbh;

    invoke-interface {v0}, Lkbh;->b()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v12

    iget-wide v14, v1, Liok;->s:J

    const-wide/16 v16, 0x0

    cmp-long v0, v14, v16

    if-lez v0, :cond_c

    iget-object v0, v1, Liok;->o:Lkbh;

    sub-long v14, v12, v14

    invoke-static {v14, v15}, Lj$/time/Duration;->ofNanos(J)Lj$/time/Duration;

    move-result-object v8

    invoke-virtual {v8}, Lj$/time/Duration;->toMillis()J

    move-result-wide v14

    long-to-int v8, v14

    invoke-interface {v0, v8}, Lkbh;->c(I)V

    :cond_c
    iput-wide v12, v1, Liok;->s:J

    invoke-virtual/range {p0 .. p0}, Liok;->i()Z

    move-result v0

    if-nez v0, :cond_d

    new-instance v0, Lhbq;

    const/16 v8, 0x14

    invoke-direct {v0, v1, v8}, Lhbq;-><init>(Liok;I)V

    invoke-virtual {v4, v0}, Ljuf;->d(Lkad;)V

    :cond_d
    new-instance v0, Landroid/graphics/Rect;

    invoke-interface {v6}, Lkpb;->c()I

    move-result v8

    invoke-interface {v6}, Lkpb;->b()I

    move-result v6

    invoke-direct {v0, v11, v11, v8, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-direct {v8, v11, v11, v6, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Lioh;

    invoke-direct {v10, v4}, Lioh;-><init>(Ljuf;)V

    move-object v6, v7

    move-object v7, v0

    invoke-virtual/range {v5 .. v10}, Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger;->displayBuffer(Landroid/hardware/HardwareBuffer;Landroid/graphics/Rect;Landroid/graphics/Rect;ILcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger$OnBufferReleasedListener;)V

    iget v0, v1, Liok;->x:I

    if-lez v0, :cond_1

    new-instance v0, Lgnl;

    const/16 v3, 0xd

    invoke-direct {v0, v3}, Lgnl;-><init>(I)V

    invoke-virtual {v4, v0}, Ljuf;->d(Lkad;)V

    iput v11, v1, Liok;->x:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v3, v0

    :try_start_4
    invoke-virtual {v2}, Lkbb;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v2, v0

    :try_start_5
    invoke-static {v3, v2}, Ljyx;->l(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_3
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    monitor-exit p0

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method public final declared-synchronized g(Landroid/view/Surface;Landroid/util/Size;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    iget-boolean v0, p0, Liok;->l:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/Surface;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Liok;->j:Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger;->close()V

    :cond_1
    iput-object p2, p0, Liok;->v:Landroid/util/Size;

    new-instance p2, Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger;

    invoke-direct {p2, p1}, Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger;-><init>(Landroid/view/Surface;)V

    iput-object p2, p0, Liok;->j:Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final h(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Liok;->w:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-static {p1}, Lmvv;->j(Ljava/util/Collection;)Lmvv;

    move-result-object v0

    iput-object v0, p0, Liok;->k:Lmvv;

    invoke-static {p1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lifp;->o:Lifp;

    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p1

    const-string v0, ","

    invoke-static {v0}, Lj$/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Lj$/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    return-void
.end method

.method public final i()Z
    .locals 2

    iget-object v0, p0, Liok;->f:Lnph;

    invoke-static {v0}, Ljvd;->r(Lnou;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
