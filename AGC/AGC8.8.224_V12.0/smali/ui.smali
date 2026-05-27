.class public final Lui;
.super Ljava/lang/Object;


# static fields
.field public static final a:Llc;


# instance fields
.field private final b:Lne;

.field private final c:Lbbc;

.field private final d:Lbby;

.field private final e:Lbkb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Llc;

    invoke-direct {v0}, Llc;-><init>()V

    sput-object v0, Lui;->a:Llc;

    return-void
.end method

.method public constructor <init>(Lbbc;Lbby;Lne;Lbkb;[B[B[B[B[B)V
    .locals 0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lui;->c:Lbbc;

    iput-object p2, p0, Lui;->d:Lbby;

    iput-object p3, p0, Lui;->b:Lne;

    iput-object p4, p0, Lui;->e:Lbkb;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lvy;Loku;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p3

    instance-of v1, v0, Luh;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Luh;

    iget v2, v1, Luh;->d:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Luh;->d:I

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Luh;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Luh;-><init>(Lui;Loku;)V

    :goto_0
    iget-object v0, v1, Luh;->b:Ljava/lang/Object;

    sget-object v3, Lolc;->a:Lolc;

    iget v4, v1, Luh;->d:I

    const/4 v5, 0x1

    packed-switch v4, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-wide v6, v1, Luh;->a:J

    iget-object v4, v1, Luh;->g:Lonj;

    iget-object v8, v1, Luh;->h:Lwf;

    iget-object v9, v1, Luh;->f:Ljava/lang/String;

    iget-object v10, v1, Luh;->e:Lui;

    invoke-static {v0}, Lljr;->aO(Ljava/lang/Object;)V

    move-wide v14, v6

    move-object v7, v10

    move-object v6, v3

    move-object v3, v4

    move-object v4, v1

    move-object v1, v8

    goto/16 :goto_a

    :pswitch_1
    iget-wide v6, v1, Luh;->a:J

    iget-object v4, v1, Luh;->g:Lonj;

    iget-object v8, v1, Luh;->h:Lwf;

    iget-object v9, v1, Luh;->f:Ljava/lang/String;

    iget-object v10, v1, Luh;->e:Lui;

    invoke-static {v0}, Lljr;->aO(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_2
    invoke-static {v0}, Lljr;->aO(Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v6

    new-instance v0, Lonj;

    invoke-direct {v0}, Lonj;-><init>()V

    move-object v4, v1

    move-wide v14, v6

    move-object/from16 v1, p2

    move-object v7, v2

    move-object v6, v3

    move-object v3, v0

    move-object/from16 v0, p1

    :goto_1
    iget v8, v3, Lonj;->a:I

    add-int/lit8 v10, v8, 0x1

    iput v10, v3, Lonj;->a:I

    iget-object v8, v7, Lui;->c:Lbbc;

    iput-object v7, v4, Luh;->e:Lui;

    iput-object v0, v4, Luh;->f:Ljava/lang/String;

    move-object v9, v1

    check-cast v9, Lwf;

    iput-object v9, v4, Luh;->h:Lwf;

    iput-object v3, v4, Luh;->g:Lonj;

    iput-wide v14, v4, Luh;->a:J

    iput v5, v4, Luh;->d:I

    move-object v9, v0

    move-wide v11, v14

    move-object v13, v4

    invoke-virtual/range {v8 .. v13}, Lbbc;->d(Ljava/lang/String;IJLoku;)Ljava/lang/Object;

    move-result-object v8

    if-eq v8, v6, :cond_17

    move-object v9, v0

    move-object v10, v7

    move-object v0, v8

    move-object v8, v1

    move-object v1, v4

    move-object v4, v3

    move-object v3, v6

    move-wide v6, v14

    :goto_2
    check-cast v0, Luc;

    iget-object v11, v0, Luc;->a:Lsj;

    if-nez v11, :cond_16

    iget-object v11, v0, Luc;->b:Lqy;

    const-string v12, "CXCP"

    if-nez v11, :cond_1

    const-string v1, "Camera open failed without an error. The CameraGraph may have been stopped or closed. Abandoning the camera open attempt."

    invoke-static {v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    sget-object v13, Lui;->a:Llc;

    iget v11, v11, Lqy;->a:I

    iget v14, v4, Lonj;->a:I

    iget-object v15, v10, Lui;->b:Lne;

    iget-object v15, v10, Lui;->e:Lbkb;

    const-string v16, "DevicePolicyManager#getCameraDisabled"

    :try_start_0
    invoke-static/range {v16 .. v16}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v15, v15, Lbkb;->a:Ljava/lang/Object;

    check-cast v15, Landroid/app/admin/DevicePolicyManager;

    const/4 v5, 0x0

    invoke-virtual {v15, v5}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v16

    sub-long v16, v16, v6

    const-wide v18, 0x2540be400L

    const/16 v20, 0x0

    cmp-long v21, v16, v18

    if-nez v21, :cond_2

    goto :goto_4

    :cond_2
    cmp-long v21, v16, v18

    if-ltz v21, :cond_3

    :goto_3
    const/4 v5, 0x0

    goto/16 :goto_6

    :cond_3
    :goto_4
    const/4 v5, 0x1

    invoke-static {v11, v5}, Lqy;->b(II)Z

    move-result v16

    if-eqz v16, :cond_4

    const/4 v5, 0x1

    goto :goto_6

    :cond_4
    const/4 v5, 0x2

    invoke-static {v11, v5}, Lqy;->b(II)Z

    move-result v16

    if-eqz v16, :cond_6

    :cond_5
    :goto_5
    const/4 v5, 0x1

    goto :goto_6

    :cond_6
    const/4 v5, 0x3

    invoke-static {v11, v5}, Lqy;->b(II)Z

    move-result v5

    if-eqz v5, :cond_8

    if-eqz v15, :cond_5

    const/4 v5, 0x1

    if-gt v14, v5, :cond_7

    goto :goto_5

    :cond_7
    const/4 v5, 0x0

    goto :goto_6

    :cond_8
    const/4 v5, 0x4

    invoke-static {v11, v5}, Lqy;->b(II)Z

    move-result v5

    if-eqz v5, :cond_9

    goto :goto_5

    :cond_9
    const/4 v5, 0x5

    invoke-static {v11, v5}, Lqy;->b(II)Z

    move-result v5

    if-eqz v5, :cond_a

    goto :goto_5

    :cond_a
    const/4 v5, 0x6

    invoke-static {v11, v5}, Lqy;->b(II)Z

    move-result v5

    if-eqz v5, :cond_b

    goto :goto_5

    :cond_b
    const/4 v5, 0x7

    invoke-static {v11, v5}, Lqy;->b(II)Z

    move-result v5

    if-eqz v5, :cond_c

    goto :goto_5

    :cond_c
    const/16 v5, 0x8

    invoke-static {v11, v5}, Lqy;->b(II)Z

    move-result v5

    if-eqz v5, :cond_d

    const/4 v5, 0x1

    if-gt v14, v5, :cond_7

    goto :goto_5

    :cond_d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unexpected CameraError: "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :goto_6
    if-eqz v5, :cond_e

    iget v11, v4, Lonj;->a:I

    const/4 v13, 0x1

    if-le v11, v13, :cond_11

    :cond_e
    new-instance v11, Lja;

    iget-object v13, v0, Luc;->b:Lqy;

    iget v13, v13, Lqy;->a:I

    invoke-direct {v11}, Lja;-><init>()V

    move-object v13, v8

    check-cast v13, Lwf;

    iget-object v13, v13, Lwf;->d:Louo;

    :goto_7
    invoke-interface {v13}, Louo;->c()Ljava/lang/Object;

    move-result-object v14

    move-object v15, v14

    check-cast v15, Lja;

    instance-of v2, v15, Lrq;

    if-nez v2, :cond_10

    instance-of v2, v15, Lrp;

    if-eqz v2, :cond_f

    goto :goto_8

    :cond_f
    move-object v2, v11

    goto :goto_9

    :cond_10
    :goto_8
    sget-object v2, Lrp;->a:Lrp;

    :goto_9
    invoke-interface {v13, v14, v2}, Louo;->dj(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    if-eqz v5, :cond_14

    :cond_11
    iget-object v0, v10, Lui;->d:Lbby;

    iput-object v10, v1, Luh;->e:Lui;

    iput-object v9, v1, Luh;->f:Ljava/lang/String;

    move-object v2, v8

    check-cast v2, Lwf;

    iput-object v2, v1, Luh;->h:Lwf;

    iput-object v4, v1, Luh;->g:Lonj;

    iput-wide v6, v1, Luh;->a:J

    const/4 v2, 0x2

    iput v2, v1, Luh;->d:I

    const-wide/16 v11, 0x1f4

    invoke-virtual {v0, v9, v11, v12, v1}, Lbby;->i(Ljava/lang/String;JLoku;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, v3, :cond_13

    move-wide v14, v6

    move-object v7, v10

    move-object v6, v3

    move-object v3, v4

    move-object v4, v1

    move-object v1, v8

    :goto_a
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timeout expired, retrying camera open for camera "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Lrc;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_12
    :goto_b
    move-object/from16 v2, p0

    move-object v0, v9

    const/4 v5, 0x1

    goto/16 :goto_1

    :cond_13
    return-object v3

    :cond_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to open camera "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Lrc;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v4, Lonj;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " attempts and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v10, Lui;->b:Lne;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    sub-long/2addr v2, v6

    const/4 v14, 0x1

    new-array v4, v14, [Ljava/lang/Object;

    long-to-double v2, v2

    const-wide v5, 0x412e848000000000L    # 1000000.0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v5

    invoke-static {v2, v3}, Lolp;->d(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v4, v20

    invoke-static {v4, v14}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%.3f ms"

    const/4 v15, 0x0

    invoke-static {v15, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Last error was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Luc;->b:Lqy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_15
    const/4 v2, 0x2

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v2, p0

    goto/16 :goto_7

    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    :cond_16
    return-object v0

    :cond_17
    return-object v6

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
