.class public final synthetic Ljqk;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Loqt;


# instance fields
.field public final synthetic a:Ljql;


# direct methods
.method public synthetic constructor <init>(Ljql;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    iput-object p1, p0, Ljqk;->a:Ljql;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public final a(Loqy;)V
    .locals 25

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto :goto_1

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    nop

    :try_start_0
    sget-object v2, Ljql;->a:Lsdb;

    nop

    nop

    invoke-virtual {v2}, Lscs;->c()Lsdo;

    move-result-object v2

    nop

    nop

    nop

    nop

    invoke-interface {v2, v0}, Lscz;->i(Ljava/lang/Throwable;)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Lscz;

    nop

    nop

    nop

    const/16 v2, 0x9e1

    nop

    nop

    nop

    nop

    invoke-interface {v0, v2}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    nop

    const-string v2, "requestLocationUpdates failed!"

    nop

    invoke-interface {v0, v2}, Lscz;->s(Ljava/lang/String;)V

    :goto_1
    monitor-exit v1

    nop

    nop

    nop

    return-void

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    monitor-exit v1

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v1, v0, Ljqk;->a:Ljql;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    monitor-enter v1

    nop

    :try_start_1
    iget-boolean v0, v1, Ljql;->i:Z

    nop

    nop

    if-eqz v0, :cond_5

    nop

    nop

    nop

    const/4 v0, 0x0

    nop

    nop

    nop

    iput-boolean v0, v1, Ljql;->i:Z

    nop

    nop

    nop

    nop

    monitor-exit v1

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_5
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x13

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_7
    goto :goto_8

    nop

    nop

    :catch_1
    move-exception v0

    nop

    :try_start_2
    sget-object v2, Ljql;->a:Lsdb;

    nop

    invoke-virtual {v2}, Lscs;->c()Lsdo;

    move-result-object v2

    nop

    nop

    nop

    nop

    invoke-interface {v2, v0}, Lscz;->i(Ljava/lang/Throwable;)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    check-cast v0, Lscz;

    nop

    const/16 v2, 0x9e3

    nop

    nop

    nop

    nop

    invoke-interface {v0, v2}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    check-cast v0, Lscz;

    nop

    nop

    nop

    const-string v2, "getCurrentLocation meet exception!"

    nop

    nop

    nop

    nop

    invoke-interface {v0, v2}, Lscz;->s(Ljava/lang/String;)V

    const/4 v0, 0x0

    nop

    nop

    nop

    :goto_8
    invoke-static {v0}, Ljql;->d(Landroid/location/Location;)Z

    move-result v2

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_1

    nop

    nop

    nop

    nop

    nop

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v4

    nop

    nop

    nop

    sub-long/2addr v2, v4

    nop

    nop

    nop

    invoke-static {v2, v3}, Lnzk;->I(J)J

    move-result-wide v2

    nop

    nop

    nop

    nop

    const/16 v4, 0x3c

    nop

    invoke-static {v4}, Lnzk;->G(I)I

    move-result v4

    nop

    nop

    nop

    int-to-long v4, v4

    nop

    nop

    cmp-long v2, v2, v4

    nop

    if-gez v2, :cond_1

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    nop

    nop

    nop

    const/high16 v3, 0x42480000    # 50.0f

    nop

    cmpg-float v2, v2, v3

    nop

    if-gez v2, :cond_1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    monitor-exit v1

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    :cond_1
    new-instance v0, Lcom/google/android/gms/location/LocationRequest;

    nop

    nop

    nop

    nop

    nop

    new-instance v23, Landroid/os/WorkSource;

    nop

    nop

    nop

    nop

    nop

    invoke-direct/range {v23 .. v23}, Landroid/os/WorkSource;-><init>()V

    const/16 v24, 0x0

    nop

    nop

    const/16 v4, 0x66

    nop

    nop

    nop

    nop

    nop

    const-wide/32 v5, 0x36ee80

    nop

    nop

    const-wide/32 v7, 0x927c0

    nop

    nop

    const-wide/16 v9, 0x0

    nop

    nop

    const-wide v13, 0x7fffffffffffffffL

    nop

    nop

    nop

    nop

    nop

    move-wide v11, v13

    nop

    nop

    nop

    nop

    const v15, 0x7fffffff

    nop

    const/16 v16, 0x0

    nop

    nop

    nop

    const/16 v17, 0x1

    nop

    const-wide/32 v18, 0x36ee80

    nop

    nop

    const/16 v20, 0x0

    nop

    const/16 v21, 0x0

    nop

    nop

    nop

    nop

    nop

    const/16 v22, 0x0

    nop

    nop

    nop

    nop

    nop

    move-object v3, v0

    nop

    nop

    nop

    invoke-direct/range {v3 .. v24}, Lcom/google/android/gms/location/LocationRequest;-><init>(IJJJJJIFZJIIZLandroid/os/WorkSource;Loob;)V

    sget v2, Ljql;->b:I

    nop

    nop

    int-to-long v2, v2

    nop

    nop

    const-string v4, "intervalMillis must be greater than or equal to 0"

    nop

    nop

    const/4 v5, 0x1

    nop

    nop

    nop

    nop

    invoke-static {v5, v4}, Lolx;->Y(ZLjava/lang/Object;)V

    iget-wide v6, v0, Lcom/google/android/gms/location/LocationRequest;->c:J

    nop

    nop

    nop

    nop

    iget-wide v8, v0, Lcom/google/android/gms/location/LocationRequest;->b:J

    nop

    const-wide/16 v10, 0x6

    nop

    nop

    nop

    div-long v12, v8, v10

    nop

    nop

    cmp-long v4, v6, v12

    nop

    if-nez v4, :cond_2

    nop

    nop

    nop

    div-long v6, v2, v10

    nop

    nop

    iput-wide v6, v0, Lcom/google/android/gms/location/LocationRequest;->c:J

    nop

    nop

    nop

    :cond_2
    iget-wide v6, v0, Lcom/google/android/gms/location/LocationRequest;->i:J

    nop

    nop

    cmp-long v4, v6, v8

    nop

    if-nez v4, :cond_3

    nop

    iput-wide v2, v0, Lcom/google/android/gms/location/LocationRequest;->i:J

    nop

    nop

    nop

    nop

    :cond_3
    iput-wide v2, v0, Lcom/google/android/gms/location/LocationRequest;->b:J

    nop

    nop

    nop

    nop

    const/16 v2, 0x64

    nop

    invoke-static {v2}, Lolx;->by(I)V

    iput v2, v0, Lcom/google/android/gms/location/LocationRequest;->a:I

    nop

    nop

    sget v2, Ljql;->c:I

    nop

    nop

    nop

    nop

    nop

    int-to-long v2, v2

    nop

    const-string v4, "durationMillis must be greater than 0"

    nop

    nop

    nop

    nop

    invoke-static {v5, v4}, Lolx;->Y(ZLjava/lang/Object;)V

    iput-wide v2, v0, Lcom/google/android/gms/location/LocationRequest;->e:J

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v2, v1, Ljql;->j:Loox;

    nop

    iget-object v3, v2, Lohe;->f:Landroid/os/Looper;

    nop

    nop

    nop

    if-nez v3, :cond_4

    nop

    nop

    nop

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    nop

    const-string v4, "invalid null looper"

    nop

    nop

    nop

    invoke-static {v3, v4}, Lolx;->ah(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    const-class v4, Loom;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1, v3, v4}, Lolx;->at(Ljava/lang/Object;Landroid/os/Looper;Ljava/lang/String;)Loiz;

    move-result-object v3

    nop

    nop

    new-instance v4, Loow;

    nop

    nop

    nop

    nop

    invoke-direct {v4, v2, v3}, Loow;-><init>(Loox;Loiz;)V

    new-instance v6, Lopu;

    nop

    invoke-direct {v6, v4, v0, v5}, Lopu;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v0, Loje;

    nop

    nop

    nop

    invoke-direct {v0}, Loje;-><init>()V

    iput-object v6, v0, Loje;->a:Lojf;

    nop

    nop

    iput-object v4, v0, Loje;->b:Lojf;

    nop

    nop

    nop

    nop

    iput-object v3, v0, Loje;->c:Loiz;

    nop

    nop

    const/16 v3, 0x983

    nop

    iput v3, v0, Loje;->f:I

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Loje;->a()Lhon;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v0}, Lohe;->k(Lhon;)Loqy;

    iput-boolean v5, v1, Ljql;->e:Z

    nop

    nop

    nop

    nop

    nop

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    nop

    nop

    nop

    nop

    iput-wide v2, v1, Ljql;->h:J

    nop

    nop

    nop

    nop

    nop
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    :cond_5
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Loqy;->d()Ljava/lang/Object;

    move-result-object v0

    nop

    check-cast v0, Landroid/location/Location;

    nop

    nop

    nop

    nop

    nop
    :try_end_4
    .catch Loqx; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_a
    move-object/from16 v0, p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_c
    throw v0

    nop

    :goto_d
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_10
    goto/32 :goto_d

    nop

    :goto_11
    goto/32 :goto_a

    nop

    nop

    nop

    nop
.end method
