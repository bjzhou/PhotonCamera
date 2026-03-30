.class public final Lgrx;
.super Lpuq;
.source "PG"


# instance fields
.field private final a:Lpak;

.field private final b:Lqhg;


# direct methods
.method public constructor <init>(Lpak;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, v0, v0, v0}, Lpuq;-><init>([B[C[B)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    invoke-static {}, Lqhg;->b()Lqhg;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    iput-object p1, p0, Lgrx;->b:Lqhg;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_5
    iput-object p1, p0, Lgrx;->a:Lpak;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized a(Lpro;)V
    .locals 4

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_7

    nop

    nop

    :goto_1
    const v1, 0xb

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    throw p1

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    monitor-enter p0

    nop

    nop

    :try_start_1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    invoke-interface {p1, v1}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    check-cast v1, Ljava/lang/Long;

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    nop

    nop

    iget-object v3, p0, Lgrx;->b:Lqhg;

    nop

    nop

    nop

    invoke-virtual {v3, v1, v2}, Lqhg;->a(J)J

    move-result-wide v1

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    nop

    nop

    nop

    iget-object v2, p0, Lgrx;->a:Lpak;

    nop

    nop

    nop

    nop

    nop

    const-string v3, "application/meta"

    nop

    nop

    nop

    nop

    invoke-interface {v2, v3}, Lpak;->d(Ljava/lang/String;)Lrss;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Lrss;->h()Z

    move-result v3

    nop

    nop

    if-eqz v3, :cond_0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Lrss;->c()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Lpaf;

    nop

    nop

    nop

    nop

    new-instance v3, Lgrw;

    nop

    nop

    invoke-direct {v3, p1}, Lgrw;-><init>(Lpro;)V

    invoke-interface {v2, v3, v0, v1}, Lpaf;->c(Lpae;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_b
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_c
    const v0, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop
.end method
