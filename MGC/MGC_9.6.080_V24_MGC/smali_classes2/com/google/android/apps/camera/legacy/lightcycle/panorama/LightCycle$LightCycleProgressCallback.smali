.class public final Lcom/google/android/apps/camera/legacy/lightcycle/panorama/LightCycle$LightCycleProgressCallback;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method private constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method public synthetic constructor <init>(Ljmo;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lcom/google/android/apps/camera/legacy/lightcycle/panorama/LightCycle$LightCycleProgressCallback;-><init>()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public static onProgress(II)V
    .locals 5

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_12

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Ljnj;->h()V

    goto/32 :goto_d

    nop

    nop

    :goto_5
    throw p0

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_16

    nop

    nop

    :goto_7
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_8
    sget-object v0, Ljmp;->c:Ljava/util/Map;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x1c

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x19

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_b
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_c
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v1, p0, Ljni;->d:Ljnj;

    nop

    iget-object v1, v1, Ljnj;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    nop

    nop

    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    :cond_1
    iget-object v1, p0, Ljni;->d:Ljnj;

    nop

    nop

    nop

    iget-object v1, v1, Ljnj;->a:Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;

    nop

    nop

    nop

    iget-object v1, v1, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->b:Llwr;

    nop

    invoke-static {p1}, Lpcj;->c(I)Lpcj;

    move-result-object p1

    nop

    invoke-virtual {v1, p1}, Llwf;->c(Lpcj;)V

    iget-object p1, p0, Ljni;->c:Ljava/io/File;

    nop

    nop

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    nop

    nop

    nop

    nop

    iget-wide v3, p0, Ljni;->a:J

    nop

    nop

    cmp-long p1, v1, v3

    nop

    nop

    if-eqz p1, :cond_2

    nop

    nop

    nop

    nop

    iget-object p1, p0, Ljni;->d:Ljnj;

    nop

    iget-object p1, p1, Ljnj;->a:Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;

    nop

    iget-object p1, p1, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->b:Llwr;

    nop

    nop

    nop

    invoke-virtual {p1}, Llwr;->L()V

    iput-wide v1, p0, Ljni;->a:J

    nop

    :cond_2
    monitor-exit v0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    :try_start_1
    monitor-exit v0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Ljni;->d:Ljnj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v0, v0, Ljnj;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_11
    iget-object p0, p0, Ljni;->d:Ljnj;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_12
    sget-object v0, Ljmp;->c:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_13
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_14
    check-cast p0, Ljni;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_16
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_18
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_3
    goto/32 :goto_0

    nop
.end method
