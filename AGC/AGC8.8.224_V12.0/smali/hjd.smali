.class public final Lhjd;
.super Ljava/lang/Object;

# interfaces
.implements Lhjc;


# static fields
.field private static final A:Lnak;


# instance fields
.field private final B:Lnph;

.field private C:Ljava/lang/Long;

.field public a:J

.field protected final b:Lfbz;

.field public c:Z

.field protected d:Z

.field public e:Z

.field protected f:Z

.field public g:Lcom/google/android/libraries/camera/exif/ExifInterface;

.field protected h:Ljava/util/List;

.field public i:Lfcd;

.field public j:Lhjf;

.field public k:Ljava/lang/Long;

.field public l:Lnjo;

.field public m:Lnhy;

.field public n:Lngg;

.field public o:Lngj;

.field public p:Lnib;

.field public q:Lnhx;

.field public r:Lnho;

.field public s:Lnlq;

.field public t:Z

.field public u:Lnjt;

.field public final v:Lnph;

.field w:Z

.field public x:Lnjw;

.field public y:Lfcg;

.field public z:Lnwn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/stats/CaptureSessionStatsCollectorImpl"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lhjd;->A:Lnak;

    return-void
.end method

.method public constructor <init>(Lfbz;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lhjd;->a:J

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v0

    iput-object v0, p0, Lhjd;->B:Lnph;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lhjd;->c:Z

    iput-boolean v0, p0, Lhjd;->d:Z

    iput-boolean v0, p0, Lhjd;->e:Z

    iput-boolean v0, p0, Lhjd;->f:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lhjd;->j:Lhjf;

    iput-boolean v0, p0, Lhjd;->t:Z

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v0

    iput-object v0, p0, Lhjd;->v:Lnph;

    iput-object p1, p0, Lhjd;->b:Lfbz;

    return-void
.end method

.method private final j(J)Lngh;
    .locals 5

    iget-boolean v0, p0, Lhjd;->t:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lhjd;->v:Lnph;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x9c4

    invoke-virtual {v0, v3, v4, v2}, Lnph;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v2, p1

    sget-object p1, Lngh;->c:Lngh;

    invoke-virtual {p1}, Lnws;->O()Lnwn;

    move-result-object p1

    iget-object p2, p1, Lnwn;->b:Lnws;

    invoke-virtual {p2}, Lnws;->ac()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p1}, Lnwn;->p()V

    :cond_2
    iget-object p2, p1, Lnwn;->b:Lnws;

    check-cast p2, Lngh;

    iget v0, p2, Lngh;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p2, Lngh;->a:I

    iput-wide v2, p2, Lngh;->b:J

    invoke-virtual {p1}, Lnwn;->i()Lnws;

    move-result-object p1

    check-cast p1, Lngh;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
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
    sget-object p2, Lhjd;->A:Lnak;

    invoke-virtual {p2}, Lnaf;->b()Lnaz;

    move-result-object p2

    const-string v0, "Error retrieving kepler meta."

    const/16 v2, 0xe5f

    invoke-static {p2, v0, v2, p1}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    return-object v1
.end method

.method private final k()Z
    .locals 1

    iget-object v0, p0, Lhjd;->y:Lfcg;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lfcg;->j:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lhjd;->c:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private final l()I
    .locals 4

    iget-object v0, p0, Lhjd;->y:Lfcg;

    if-nez v0, :cond_0

    sget-object v0, Lhjd;->A:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v1, "inferPhotoMode called while atTimeRequestData not present yet"

    const/16 v2, 0xe61

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v1, p0, Lhjd;->z:Lnwn;

    if-eqz v1, :cond_1

    const/16 v0, 0x16

    return v0

    :cond_1
    iget v0, v0, Lfcg;->r:I

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_2

    return v1

    :cond_2
    const/16 v1, 0x24

    if-ne v0, v1, :cond_3

    return v1

    :cond_3
    iget-object v1, p0, Lhjd;->l:Lnjo;

    if-eqz v1, :cond_7

    iget v1, v1, Lnjo;->l:I

    invoke-static {v1}, Lmoz;->G(I)I

    move-result v2

    if-nez v2, :cond_4

    :goto_0
    goto :goto_1

    :cond_4
    const/4 v3, 0x4

    if-eq v2, v3, :cond_6

    goto :goto_0

    :goto_1
    invoke-static {v1}, Lmoz;->G(I)I

    move-result v1

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v2, 0x5

    if-ne v1, v2, :cond_7

    :cond_6
    const/16 v0, 0x20

    return v0

    :cond_7
    :goto_2
    iget-boolean v1, p0, Lhjd;->f:Z

    if-eqz v1, :cond_8

    const/16 v0, 0x8

    :cond_8
    return v0
.end method


# virtual methods
.method public final a()Ljava/lang/Long;
    .locals 2

    iget-object v0, p0, Lhjd;->j:Lhjf;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-wide v0, v0, Lhjf;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lhjd;->w:Z

    return-void
.end method

.method public final c(Lkoq;Z)V
    .locals 0

    iput-boolean p2, p0, Lhjd;->f:Z

    sget-object p2, Liuw;->m:Landroid/hardware/camera2/CaptureResult$Key;

    if-eqz p2, :cond_1

    sget-object p2, Liuw;->m:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, p2}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lkor;->h(Lkoq;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lhjd;->h:Ljava/util/List;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x0

    iput-object p2, p0, Lhjd;->h:Ljava/util/List;

    :goto_1
    sget-object p2, Landroid/hardware/camera2/CaptureResult;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, p2}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    return-void
.end method

.method public final d(J)V
    .locals 3

    iget-object v0, p0, Lhjd;->j:Lhjf;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    iput-wide v1, v0, Lhjf;->c:J

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lhjd;->C:Ljava/lang/Long;

    return-void
.end method

.method public final e(J)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Lhjd;->i(IJ)V

    return-void
.end method

.method public final f()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lhjd;->d:Z

    return-void
.end method

.method public final g(Lva;)V
    .locals 1

    iget-object v0, p0, Lhjd;->B:Lnph;

    invoke-virtual {v0, p1}, Lnph;->e(Ljava/lang/Object;)Z

    return-void
.end method

.method public final h()Z
    .locals 5

    iget-object v0, p0, Lhjd;->y:Lfcg;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lhjd;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final i(IJ)V
    .locals 39

    move-object/from16 v1, p0

    move-wide/from16 v2, p2

    iget-wide v4, v1, Lhjd;->a:J

    sub-long v4, v2, v4

    iget-object v0, v1, Lhjd;->i:Lfcd;

    const/4 v6, 0x0

    if-eqz v0, :cond_7

    sget-object v7, Lnjk;->d:Lnjk;

    invoke-virtual {v7}, Lnws;->O()Lnwn;

    move-result-object v7

    iget-object v8, v0, Lfcd;->a:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    iget-object v9, v0, Lfcd;->b:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, v0, Lfcd;->c:Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_2

    iget-object v9, v0, Lfcd;->c:Ljava/util/List;

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lfcc;

    iget v9, v9, Lfcc;->d:I

    iget-object v10, v7, Lnwn;->b:Lnws;

    invoke-virtual {v10}, Lnws;->ac()Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {v7}, Lnwn;->p()V

    :cond_0
    iget-object v10, v7, Lnwn;->b:Lnws;

    check-cast v10, Lnjk;

    add-int/lit8 v11, v9, -0x1

    if-eqz v9, :cond_1

    iput v11, v10, Lnjk;->b:I

    iget v9, v10, Lnjk;->a:I

    or-int/lit8 v9, v9, 0x1

    iput v9, v10, Lnjk;->a:I

    goto :goto_0

    :cond_1
    throw v6

    :cond_2
    sget-object v9, Lfcc;->a:Lfcc;

    iget v9, v9, Lfcc;->d:I

    iget-object v10, v7, Lnwn;->b:Lnws;

    invoke-virtual {v10}, Lnws;->ac()Z

    move-result v10

    if-nez v10, :cond_3

    invoke-virtual {v7}, Lnwn;->p()V

    :cond_3
    iget-object v10, v7, Lnwn;->b:Lnws;

    check-cast v10, Lnjk;

    add-int/lit8 v11, v9, -0x1

    if-eqz v9, :cond_6

    iput v11, v10, Lnjk;->b:I

    iget v9, v10, Lnjk;->a:I

    or-int/lit8 v9, v9, 0x1

    iput v9, v10, Lnjk;->a:I

    :goto_0
    iget-object v0, v0, Lfcd;->b:Ljava/util/List;

    iget-object v9, v7, Lnwn;->b:Lnws;

    invoke-virtual {v9}, Lnws;->ac()Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {v7}, Lnwn;->p()V

    :cond_4
    iget-object v9, v7, Lnwn;->b:Lnws;

    check-cast v9, Lnjk;

    iget-object v10, v9, Lnjk;->c:Lnxa;

    invoke-interface {v10}, Lnxa;->c()Z

    move-result v11

    if-nez v11, :cond_5

    invoke-static {v10}, Lnws;->U(Lnxa;)Lnxa;

    move-result-object v10

    iput-object v10, v9, Lnjk;->c:Lnxa;

    :cond_5
    iget-object v9, v9, Lnjk;->c:Lnxa;

    invoke-static {v0, v9}, Lnvd;->e(Ljava/lang/Iterable;Ljava/util/List;)V

    invoke-virtual {v7}, Lnwn;->i()Lnws;

    move-result-object v0

    check-cast v0, Lnjk;

    monitor-exit v8

    move-object/from16 v16, v0

    goto :goto_1

    :cond_6
    throw v6

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_7
    move-object/from16 v16, v6

    :goto_1
    iget-object v0, v1, Lhjd;->z:Lnwn;

    if-eqz v0, :cond_9

    long-to-int v7, v4

    iget-object v8, v0, Lnwn;->b:Lnws;

    invoke-virtual {v8}, Lnws;->ac()Z

    move-result v8

    if-nez v8, :cond_8

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_8
    iget-object v0, v0, Lnwn;->b:Lnws;

    check-cast v0, Lnki;

    sget-object v8, Lnki;->f:Lnki;

    iget v8, v0, Lnki;->a:I

    or-int/lit8 v8, v8, 0x1

    iput v8, v0, Lnki;->a:I

    iput v7, v0, Lnki;->b:I

    :cond_9
    :try_start_1
    iget-boolean v0, v1, Lhjd;->f:Z

    if-eqz v0, :cond_a

    iget-object v0, v1, Lhjd;->B:Lnph;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x1f4

    invoke-virtual {v0, v8, v9, v7}, Lnph;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lva;

    iget-object v7, v0, Lva;->b:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    iget-object v8, v0, Lva;->a:Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object v0, v0, Lva;->c:Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v18, v7

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v8, v6

    :goto_2
    move-object/from16 v18, v7

    goto/16 :goto_d

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_3

    :catch_5
    move-exception v0

    :goto_3
    move-object v8, v6

    :goto_4
    move-object/from16 v18, v7

    goto/16 :goto_a

    :cond_a
    move-object v0, v6

    move-object v8, v0

    move-object/from16 v18, v8

    :goto_5
    invoke-virtual/range {p0 .. p0}, Lhjd;->h()Z

    move-result v7

    if-eqz v7, :cond_f

    iget-object v9, v1, Lhjd;->b:Lfbz;

    invoke-direct/range {p0 .. p0}, Lhjd;->l()I

    move-result v10

    iget-object v11, v1, Lhjd;->y:Lfcg;

    iget-object v12, v1, Lhjd;->g:Lcom/google/android/libraries/camera/exif/ExifInterface;

    invoke-direct/range {p0 .. p0}, Lhjd;->k()Z

    move-result v13

    if-eqz v8, :cond_b

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_6

    :cond_b
    :goto_6
    invoke-static {v4, v5}, Linb;->o(J)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    iget-object v15, v1, Lhjd;->h:Ljava/util/List;

    iget-object v4, v1, Lhjd;->k:Ljava/lang/Long;

    iget-object v5, v1, Lhjd;->l:Lnjo;

    iget-object v7, v1, Lhjd;->m:Lnhy;

    iget-object v8, v1, Lhjd;->r:Lnho;

    iget-object v6, v1, Lhjd;->z:Lnwn;

    if-nez v6, :cond_c

    const/16 v24, 0x0

    goto :goto_7

    :cond_c
    invoke-virtual {v6}, Lnwn;->i()Lnws;

    move-result-object v6

    check-cast v6, Lnki;

    move-object/from16 v24, v6

    :goto_7
    iget-object v6, v1, Lhjd;->n:Lngg;

    move-object/from16 v25, v6

    iget-object v6, v1, Lhjd;->q:Lnhx;

    move-object/from16 v26, v6

    iget-object v6, v1, Lhjd;->C:Ljava/lang/Long;

    move-object/from16 v27, v6

    invoke-virtual/range {p0 .. p0}, Lhjd;->a()Ljava/lang/Long;

    move-result-object v28

    iget-boolean v6, v1, Lhjd;->d:Z

    move/from16 v29, v6

    iget-boolean v6, v1, Lhjd;->e:Z

    move/from16 v30, v6

    iget-object v6, v1, Lhjd;->s:Lnlq;

    move-object/from16 v31, v6

    iget-object v6, v1, Lhjd;->o:Lngj;

    move-object/from16 v32, v6

    invoke-direct {v1, v2, v3}, Lhjd;->j(J)Lngh;

    move-result-object v33

    iget-object v2, v1, Lhjd;->p:Lnib;

    move-object/from16 v34, v2

    iget-object v2, v1, Lhjd;->u:Lnjt;

    move-object/from16 v35, v2

    iget-object v2, v1, Lhjd;->x:Lnjw;

    move-object/from16 v36, v2

    iget-object v2, v1, Lhjd;->y:Lfcg;

    iget-boolean v2, v2, Lfcg;->o:Z

    move/from16 v37, v2

    iget-boolean v2, v1, Lhjd;->w:Z

    move/from16 v38, v2

    move-object/from16 v20, v0

    check-cast v20, Ljava/lang/Integer;

    move/from16 v17, p1

    move-object/from16 v19, v4

    move-object/from16 v21, v5

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    :goto_8
    invoke-interface/range {v9 .. v38}, Lfbz;->av(ILfcg;Lcom/google/android/libraries/camera/exif/ExifInterface;ZLjava/lang/Float;Ljava/util/List;Lnjk;ILfci;Ljava/lang/Long;Ljava/lang/Integer;Lnjo;Lnhy;Lnho;Lnki;Lngg;Lnhx;Ljava/lang/Long;Ljava/lang/Long;ZZLnlq;Lngj;Lngh;Lnib;Lnjt;Lnjw;ZZ)V

    return-void

    :catchall_3
    move-exception v0

    const/4 v8, 0x0

    const/16 v18, 0x0

    goto/16 :goto_d

    :catch_6
    move-exception v0

    goto :goto_9

    :catch_7
    move-exception v0

    goto :goto_9

    :catch_8
    move-exception v0

    :goto_9
    const/4 v8, 0x0

    const/16 v18, 0x0

    :goto_a
    :try_start_4
    sget-object v6, Lhjd;->A:Lnak;

    invoke-virtual {v6}, Lnaf;->b()Lnaz;

    move-result-object v6

    check-cast v6, Lnah;

    const/16 v7, 0xe63

    invoke-interface {v6, v7}, Lnah;->G(I)Lnaz;

    move-result-object v6

    check-cast v6, Lnah;

    const-string v7, "Error retrieving Gcam metadata. %s"

    invoke-interface {v6, v7, v0}, Lnah;->r(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    invoke-virtual/range {p0 .. p0}, Lhjd;->h()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v9, v1, Lhjd;->b:Lfbz;

    invoke-direct/range {p0 .. p0}, Lhjd;->l()I

    move-result v10

    iget-object v11, v1, Lhjd;->y:Lfcg;

    iget-object v12, v1, Lhjd;->g:Lcom/google/android/libraries/camera/exif/ExifInterface;

    invoke-direct/range {p0 .. p0}, Lhjd;->k()Z

    move-result v13

    if-eqz v8, :cond_d

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_b

    :cond_d
    :goto_b
    invoke-static {v4, v5}, Linb;->o(J)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    iget-object v15, v1, Lhjd;->h:Ljava/util/List;

    iget-object v0, v1, Lhjd;->k:Ljava/lang/Long;

    iget-object v4, v1, Lhjd;->l:Lnjo;

    iget-object v5, v1, Lhjd;->m:Lnhy;

    iget-object v6, v1, Lhjd;->r:Lnho;

    iget-object v7, v1, Lhjd;->z:Lnwn;

    if-nez v7, :cond_e

    const/16 v24, 0x0

    goto :goto_c

    :cond_e
    invoke-virtual {v7}, Lnwn;->i()Lnws;

    move-result-object v7

    check-cast v7, Lnki;

    move-object/from16 v24, v7

    :goto_c
    const/16 v20, 0x0

    iget-object v7, v1, Lhjd;->n:Lngg;

    move-object/from16 v25, v7

    iget-object v7, v1, Lhjd;->q:Lnhx;

    move-object/from16 v26, v7

    iget-object v7, v1, Lhjd;->C:Ljava/lang/Long;

    move-object/from16 v27, v7

    invoke-virtual/range {p0 .. p0}, Lhjd;->a()Ljava/lang/Long;

    move-result-object v28

    iget-boolean v7, v1, Lhjd;->d:Z

    move/from16 v29, v7

    iget-boolean v7, v1, Lhjd;->e:Z

    move/from16 v30, v7

    iget-object v7, v1, Lhjd;->s:Lnlq;

    move-object/from16 v31, v7

    iget-object v7, v1, Lhjd;->o:Lngj;

    move-object/from16 v32, v7

    invoke-direct {v1, v2, v3}, Lhjd;->j(J)Lngh;

    move-result-object v33

    iget-object v2, v1, Lhjd;->p:Lnib;

    move-object/from16 v34, v2

    iget-object v2, v1, Lhjd;->u:Lnjt;

    move-object/from16 v35, v2

    iget-object v2, v1, Lhjd;->x:Lnjw;

    move-object/from16 v36, v2

    iget-object v2, v1, Lhjd;->y:Lfcg;

    iget-boolean v2, v2, Lfcg;->o:Z

    move/from16 v37, v2

    iget-boolean v2, v1, Lhjd;->w:Z

    move/from16 v38, v2

    move/from16 v17, p1

    move-object/from16 v19, v0

    move-object/from16 v21, v4

    move-object/from16 v22, v5

    move-object/from16 v23, v6

    goto/16 :goto_8

    :cond_f
    return-void

    :catchall_4
    move-exception v0

    :goto_d
    invoke-virtual/range {p0 .. p0}, Lhjd;->h()Z

    move-result v6

    if-eqz v6, :cond_12

    iget-object v9, v1, Lhjd;->b:Lfbz;

    invoke-direct/range {p0 .. p0}, Lhjd;->l()I

    move-result v10

    iget-object v11, v1, Lhjd;->y:Lfcg;

    iget-object v12, v1, Lhjd;->g:Lcom/google/android/libraries/camera/exif/ExifInterface;

    invoke-direct/range {p0 .. p0}, Lhjd;->k()Z

    move-result v13

    if-eqz v8, :cond_10

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_e

    :cond_10
    :goto_e
    invoke-static {v4, v5}, Linb;->o(J)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    iget-object v15, v1, Lhjd;->h:Ljava/util/List;

    iget-object v4, v1, Lhjd;->k:Ljava/lang/Long;

    iget-object v5, v1, Lhjd;->l:Lnjo;

    iget-object v6, v1, Lhjd;->m:Lnhy;

    iget-object v7, v1, Lhjd;->r:Lnho;

    iget-object v8, v1, Lhjd;->z:Lnwn;

    if-nez v8, :cond_11

    const/16 v24, 0x0

    goto :goto_f

    :cond_11
    invoke-virtual {v8}, Lnwn;->i()Lnws;

    move-result-object v8

    check-cast v8, Lnki;

    move-object/from16 v24, v8

    :goto_f
    const/16 v20, 0x0

    iget-object v8, v1, Lhjd;->n:Lngg;

    move-object/from16 v25, v8

    iget-object v8, v1, Lhjd;->q:Lnhx;

    move-object/from16 v26, v8

    iget-object v8, v1, Lhjd;->C:Ljava/lang/Long;

    move-object/from16 v27, v8

    invoke-virtual/range {p0 .. p0}, Lhjd;->a()Ljava/lang/Long;

    move-result-object v28

    iget-boolean v8, v1, Lhjd;->d:Z

    move/from16 v29, v8

    iget-boolean v8, v1, Lhjd;->e:Z

    move/from16 v30, v8

    iget-object v8, v1, Lhjd;->s:Lnlq;

    move-object/from16 v31, v8

    iget-object v8, v1, Lhjd;->o:Lngj;

    move-object/from16 v32, v8

    invoke-direct {v1, v2, v3}, Lhjd;->j(J)Lngh;

    move-result-object v33

    iget-object v2, v1, Lhjd;->p:Lnib;

    move-object/from16 v34, v2

    iget-object v2, v1, Lhjd;->u:Lnjt;

    move-object/from16 v35, v2

    iget-object v2, v1, Lhjd;->x:Lnjw;

    move-object/from16 v36, v2

    iget-object v2, v1, Lhjd;->y:Lfcg;

    iget-boolean v2, v2, Lfcg;->o:Z

    move/from16 v37, v2

    iget-boolean v2, v1, Lhjd;->w:Z

    move/from16 v38, v2

    move/from16 v17, p1

    move-object/from16 v19, v4

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    invoke-interface/range {v9 .. v38}, Lfbz;->av(ILfcg;Lcom/google/android/libraries/camera/exif/ExifInterface;ZLjava/lang/Float;Ljava/util/List;Lnjk;ILfci;Ljava/lang/Long;Ljava/lang/Integer;Lnjo;Lnhy;Lnho;Lnki;Lngg;Lnhx;Ljava/lang/Long;Ljava/lang/Long;ZZLnlq;Lngj;Lngh;Lnib;Lnjt;Lnjw;ZZ)V

    :cond_12
    goto :goto_11

    :goto_10
    throw v0

    :goto_11
    goto :goto_10
.end method
