.class public abstract Lohz;
.super Lcom/google/android/gms/common/api/internal/BasePendingResult;
.source "PG"

# interfaces
.implements Loia;


# direct methods
.method private final 33b3102b6558811a7b7629a1e8e59bd2m(Landroid/os/RemoteException;)V
    .locals 3

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v1, 0x0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, v0}, Lohz;->g(Lcom/google/android/gms/common/api/Status;)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

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

    :goto_4
    goto/32 :goto_7

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_6
    goto/32 :goto_a

    nop

    :goto_7
    goto/32 :goto_8

    nop

    nop

    :goto_8
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    :goto_a
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_b
    const/16 v2, 0x8

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x1f

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_d
    invoke-direct {v0, v2, p1, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;[B)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_e
    const v0, 0x14

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method

.method protected constructor <init>(Lohh;)V
    .locals 5

    goto/32 :goto_c

    nop

    nop

    :goto_0
    const-string v0, "GoogleApiClient must not be null"

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_2
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    new-array v1, v1, [Ljava/lang/Object;

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_5
    aput-object v0, v1, v3

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_7
    const/4 v4, 0x0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    aput-object p1, v1, v3

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_9
    const v1, 0x8

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_a
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;-><init>(Lohh;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_13

    nop

    :goto_c
    const v0, 0x15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_d
    const/16 v3, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    :goto_f
    goto/32 :goto_b

    nop

    nop

    :goto_10
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    :goto_12
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {v3, v4, v1}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method protected abstract b(Logu;)V
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final f(Logu;)V
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1}, Lohz;->b(Logu;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    throw p1

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :catch_0
    move-exception p1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p1}, Lohz;->33b3102b6558811a7b7629a1e8e59bd2m(Landroid/os/RemoteException;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, p1}, Lohz;->33b3102b6558811a7b7629a1e8e59bd2m(Landroid/os/RemoteException;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    :catch_1
    move-exception p1

    nop

    goto/32 :goto_3

    nop

    nop
.end method

.method public final g(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Lohz;->a(Lcom/google/android/gms/common/api/Status;)Lohn;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->j(Lohn;)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->b()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_6
    goto/32 :goto_c

    nop

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_9
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_a
    xor-int/lit8 v0, v0, 0x1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_b
    return-void

    nop

    :goto_c
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {v0, v1}, Lolx;->Y(ZLjava/lang/Object;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_e
    const-string v1, "Failed result must not be success"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_f
    const v0, 0x1e

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method
