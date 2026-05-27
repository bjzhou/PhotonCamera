.class public final synthetic Lfbe;
.super Ljava/lang/Object;

# interfaces
.implements Ljon;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/camera/app/silentfeedback/SilentFeedbackService;I)V
    .locals 0

    iput p2, p0, Lfbe;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfbe;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lfbg;I)V
    .locals 0

    iput p2, p0, Lfbe;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfbe;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lkto;I)V
    .locals 0

    iput p2, p0, Lfbe;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfbe;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljot;)V
    .locals 28

    move-object/from16 v1, p0

    iget v0, v1, Lfbe;->b:I

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, v1, Lfbe;->a:Ljava/lang/Object;

    move-object/from16 v3, p1

    check-cast v3, Ljox;

    iget-boolean v3, v3, Ljox;->c:Z

    if-eqz v3, :cond_5

    check-cast v0, Lnnb;

    invoke-virtual {v0, v2}, Lnnb;->cancel(Z)Z

    return-void

    :pswitch_0
    iget-object v0, v1, Lfbe;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/apps/camera/app/silentfeedback/SilentFeedbackService;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/app/silentfeedback/SilentFeedbackService;->a()V

    return-void

    :pswitch_1
    iget-object v3, v1, Lfbe;->a:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    move-object v0, v3

    check-cast v0, Lfbg;

    iget-boolean v0, v0, Lfbg;->i:Z

    if-eqz v0, :cond_0

    move-object v0, v3

    check-cast v0, Lfbg;

    iput-boolean v2, v0, Lfbg;->i:Z

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Ljot;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;
    :try_end_1
    .catch Ljos; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v4, Lfbg;->a:Lnak;

    invoke-virtual {v4}, Lnaf;->c()Lnaz;

    move-result-object v4

    check-cast v4, Lnah;

    invoke-interface {v4, v0}, Lnah;->h(Ljava/lang/Throwable;)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v4, 0x813

    invoke-interface {v0, v4}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v4, "getCurrentLocation meet exception!"

    invoke-interface {v0, v4}, Lnah;->o(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lfbg;->d(Landroid/location/Location;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    invoke-virtual {v0}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Linb;->t(J)J

    move-result-wide v4

    const/16 v6, 0x3c

    invoke-static {v6}, Linb;->r(I)I

    move-result v6

    int-to-long v6, v6

    cmp-long v8, v4, v6

    if-gez v8, :cond_1

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    const/high16 v5, 0x42480000    # 50.0f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    monitor-exit v3

    return-void

    :cond_1
    new-instance v0, Lcom/google/android/gms/location/LocationRequest;

    const/16 v6, 0x66

    const-wide/32 v7, 0x36ee80

    const-wide/32 v9, 0x927c0

    const-wide/16 v11, 0x0

    const-wide v15, 0x7fffffffffffffffL

    const v17, 0x7fffffff

    const/16 v18, 0x0

    const/16 v19, 0x1

    const-wide/32 v20, 0x36ee80

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    new-instance v26, Landroid/os/WorkSource;

    invoke-direct/range {v26 .. v26}, Landroid/os/WorkSource;-><init>()V

    const/16 v27, 0x0

    move-object v5, v0

    move-wide v13, v15

    invoke-direct/range {v5 .. v27}, Lcom/google/android/gms/location/LocationRequest;-><init>(IJJJJJIFZJIILjava/lang/String;ZLandroid/os/WorkSource;Ljlx;)V

    sget v4, Lfbg;->b:I

    int-to-long v4, v4

    const-string v6, "intervalMillis must be greater than or equal to 0"

    const/4 v7, 0x1

    invoke-static {v7, v6}, Ljhp;->T(ZLjava/lang/Object;)V

    iget-wide v8, v0, Lcom/google/android/gms/location/LocationRequest;->c:J

    iget-wide v10, v0, Lcom/google/android/gms/location/LocationRequest;->b:J

    const-wide/16 v12, 0x6

    div-long v14, v10, v12

    cmp-long v6, v8, v14

    if-nez v6, :cond_2

    div-long v8, v4, v12

    iput-wide v8, v0, Lcom/google/android/gms/location/LocationRequest;->c:J

    :cond_2
    iget-wide v8, v0, Lcom/google/android/gms/location/LocationRequest;->i:J

    cmp-long v6, v8, v10

    if-nez v6, :cond_3

    iput-wide v4, v0, Lcom/google/android/gms/location/LocationRequest;->i:J

    :cond_3
    iput-wide v4, v0, Lcom/google/android/gms/location/LocationRequest;->b:J

    const-string v4, "priority %d must be a Priority.PRIORITY_* constant"

    new-array v5, v7, [Ljava/lang/Object;

    const/16 v6, 0x64

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v2

    invoke-static {v7, v4, v5}, Ljhp;->U(ZLjava/lang/String;[Ljava/lang/Object;)V

    iput v6, v0, Lcom/google/android/gms/location/LocationRequest;->a:I

    sget v2, Lfbg;->c:I

    int-to-long v4, v2

    const-string v2, "durationMillis must be greater than 0"

    invoke-static {v7, v2}, Ljhp;->T(ZLjava/lang/Object;)V

    iput-wide v4, v0, Lcom/google/android/gms/location/LocationRequest;->e:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    move-object v2, v3

    check-cast v2, Lfbg;

    iget-object v2, v2, Lfbg;->j:Ljmu;

    iget-object v4, v2, Ljde;->g:Landroid/os/Looper;

    if-nez v4, :cond_4

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    const-string v5, "invalid null looper"

    invoke-static {v4, v5}, Ljhp;->ac(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    const-class v5, Ljmi;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Ljfc;->b(Ljava/lang/Object;Landroid/os/Looper;Ljava/lang/String;)Ljfb;

    move-result-object v4

    new-instance v5, Ljmt;

    invoke-direct {v5, v2, v4}, Ljmt;-><init>(Ljmu;Ljfb;)V

    new-instance v6, Ljnr;

    invoke-direct {v6, v5, v0, v7}, Ljnr;-><init>(Ljmt;Lcom/google/android/gms/location/LocationRequest;I)V

    invoke-static {}, Ldja;->y()Ljfg;

    move-result-object v0

    iput-object v6, v0, Ljfg;->a:Ljfh;

    iput-object v5, v0, Ljfg;->b:Ljfh;

    iput-object v4, v0, Ljfg;->c:Ljfb;

    const/16 v4, 0x983

    iput v4, v0, Ljfg;->e:I

    invoke-virtual {v0}, Ljfg;->a()Ldja;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljde;->k(Ldja;)V

    move-object v0, v3

    check-cast v0, Lfbg;

    iput-boolean v7, v0, Lfbg;->e:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v0, v3

    check-cast v0, Lfbg;

    iput-wide v4, v0, Lfbg;->h:J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_4
    sget-object v2, Lfbg;->a:Lnak;

    invoke-virtual {v2}, Lnaf;->c()Lnaz;

    move-result-object v2

    check-cast v2, Lnah;

    invoke-interface {v2, v0}, Lnah;->h(Ljava/lang/Throwable;)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v2, 0x811

    invoke-interface {v0, v2}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v2, "requestLocationUpdates failed!"

    invoke-interface {v0, v2}, Lnah;->o(Ljava/lang/String;)V

    :goto_1
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_5
    invoke-virtual/range {p1 .. p1}, Ljot;->e()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual/range {p1 .. p1}, Ljot;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v0, Lkto;

    invoke-virtual {v0, v2}, Lkto;->e(Ljava/lang/Object;)Z

    return-void

    :cond_6
    invoke-virtual/range {p1 .. p1}, Ljot;->b()Ljava/lang/Exception;

    move-result-object v2

    if-eqz v2, :cond_7

    check-cast v0, Lkto;

    invoke-virtual {v0, v2}, Lkto;->a(Ljava/lang/Throwable;)Z

    return-void

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
