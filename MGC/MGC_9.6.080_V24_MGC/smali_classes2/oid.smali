.class public final Loid;
.super Loof;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, v0}, Loof;-><init>(Landroid/os/Looper;)V

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Loof;-><init>(Landroid/os/Looper;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->h(Lcom/google/android/gms/common/api/Status;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-ne p0, v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1f

    nop

    nop

    :goto_5
    if-ne p0, v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    :cond_1
    goto/32 :goto_f

    nop

    nop

    :goto_6
    check-cast p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_8
    const-string v0, "BasePendingResult"

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_9
    new-instance p1, Ljava/lang/Exception;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_a
    throw p1

    nop

    :goto_b
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_c
    check-cast p0, Lohn;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_d
    new-instance p1, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {p0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->i(Lohn;)V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_f
    iget p0, p1, Landroid/os/Message;->what:I

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    check-cast p0, Landroid/util/Pair;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const-string v0, "Don\'t know how to handle message: "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_12
    return-void

    nop

    :goto_13
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_15
    check-cast p1, Lolx;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_16
    sget-object p1, Lcom/google/android/gms/common/api/Status;->d:Lcom/google/android/gms/common/api/Status;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_17
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

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

    :goto_18
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_19
    const/4 p1, 0x0

    nop

    nop

    nop

    :try_start_0
    throw p1

    nop

    nop
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    return-void

    nop

    nop

    :goto_1b
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1c
    iget-object p1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget p0, p1, Landroid/os/Message;->what:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1e
    invoke-static {v0, p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 v0, 0x2

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method
