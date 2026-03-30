.class public final Louy;
.super Lovq;
.source "PG"


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;

.field private final b:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/lang/Object;Loia;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p3}, Lovq;-><init>(Loia;)V

    goto/32 :goto_5

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    new-instance p1, Ljava/lang/ref/WeakReference;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Louy;->b:Ljava/lang/ref/WeakReference;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance p3, Ljava/lang/ref/WeakReference;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p3, p0, Louy;->a:Ljava/lang/ref/WeakReference;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method


# virtual methods
.method public final d(Lcom/google/android/gms/common/api/Status;)V
    .locals 4

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_16

    nop

    :goto_2
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget v1, p1, Lcom/google/android/gms/common/api/Status;->f:I

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_8

    nop

    nop

    :goto_6
    iget-object v0, p0, Louy;->a:Ljava/lang/ref/WeakReference;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_7
    const v1, 0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_17

    nop

    :goto_9
    const/16 v3, 0xfa2

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x4

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v2, p0, Louy;->b:Ljava/lang/ref/WeakReference;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_c
    check-cast v0, Ljava/util/Map;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_d
    if-nez v2, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_2
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_e
    throw p0

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_13

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

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

    :goto_11
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_12
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p0, p1}, Lovq;->e(Ljava/lang/Object;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_14
    if-eq v1, v3, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_3
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_15
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Lovv;

    nop

    if-eqz v1, :cond_4

    nop

    nop

    nop

    invoke-virtual {v1}, Lovv;->m()V

    :cond_4
    monitor-exit v0

    nop

    nop

    goto :goto_f

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_5

    nop

    :goto_17
    goto/32 :goto_6

    nop

    nop
.end method
