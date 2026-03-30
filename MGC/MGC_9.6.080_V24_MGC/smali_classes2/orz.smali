.class public final Lorz;
.super Lokj;
.source "PG"


# instance fields
.field private final t:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lokb;Lohf;Lohg;)V
    .locals 7

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move-object v2, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1
    invoke-direct/range {v0 .. v6}, Lokj;-><init>(Landroid/content/Context;Landroid/os/Looper;ILokb;Loif;Lojc;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    move-object v1, p1

    nop

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

    :goto_4
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

    :goto_5
    return-void

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_10

    nop

    nop

    :goto_7
    const/16 v3, 0x29

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_8
    move-object v5, p4

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    move-object v0, p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_a
    move-object v4, p3

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_b
    const v0, 0x5

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_c
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_d
    iput-object p1, p0, Lorz;->t:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_13

    nop

    :goto_11
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_12
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_14
    move-object v6, p5

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method


# virtual methods
.method public final D()Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const/4 p0, 0x1

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

    :goto_1
    return p0

    nop

    nop
.end method

.method public final I(Lort;Lort;Loia;)V
    .locals 2

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lojy;->t()Landroid/os/IInterface;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lfum;->a()Landroid/os/Parcel;

    move-result-object p2

    nop

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

    :goto_2
    invoke-direct {v0, v1, p3, p2}, Lorx;-><init>(Loru;Loia;Lort;)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, p2, v0}, Loru;->e(Lort;Lors;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    sget-object p0, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_c

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_9
    if-nez p1, :cond_1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_a
    check-cast v1, Loru;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_b
    invoke-interface {p3, p0}, Loia;->c(Ljava/lang/Object;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_6

    nop

    :goto_e
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Lojy;->t()Landroid/os/IInterface;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_10
    const/16 p1, 0xa

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1d

    nop

    nop

    :goto_13
    check-cast p0, Loru;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {p2, p1}, Lfuo;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v0, 0x6

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
    invoke-virtual {p0, p1, p2}, Lfum;->A(ILandroid/os/Parcel;)V

    goto/32 :goto_11

    nop

    nop

    :goto_17
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_18
    const v1, 0x20

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_19
    new-instance v0, Lorx;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1a
    return-void

    nop

    :goto_1b
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    check-cast p0, Loru;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1d
    if-eqz p2, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {p2, v0}, Lfuo;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p0}, Lojy;->t()Landroid/os/IInterface;

    move-result-object p0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop
.end method

.method public final a()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const p0, 0xc042c0

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

    :goto_1
    return p0

    nop
.end method

.method protected final synthetic b(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_0
    goto :goto_7

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_d

    nop

    nop

    :goto_2
    check-cast p0, Loru;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_4
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const-string p0, "com.google.android.gms.usagereporting.internal.IUsageReportingService"

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0, p1}, Loru;-><init>(Landroid/os/IBinder;)V

    :goto_7
    goto/32 :goto_c

    nop

    nop

    :goto_8
    invoke-interface {p1, p0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p0

    nop

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

    :goto_9
    goto :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_b
    if-eqz p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_c
    return-object p0

    nop

    nop

    nop

    nop

    :goto_d
    new-instance p0, Loru;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_e
    instance-of v0, p0, Loru;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method protected final c()Ljava/lang/String;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string p0, "com.google.android.gms.usagereporting.internal.IUsageReportingService"

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop
.end method

.method protected final d()Ljava/lang/String;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    :goto_1
    const-string p0, "com.google.android.gms.usagereporting.service.START"

    nop

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
.end method

.method public final e()[Logb;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object p0, Lorg;->f:[Logb;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop
.end method

.method public final w()V
    .locals 4

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0x19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1
    goto/32 :goto_7

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

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const-string v2, "disconnect(): Could not unregister listener from remote:"

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_7
    :try_start_0
    iget-object v0, p0, Lorz;->t:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    nop

    nop

    nop

    const/4 v1, 0x0

    nop

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Lort;

    nop

    nop

    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    new-instance v1, Lorw;

    nop

    nop

    nop

    nop

    invoke-direct {v1}, Lorw;-><init>()V

    invoke-virtual {p0}, Lojy;->t()Landroid/os/IInterface;

    move-result-object v2

    nop

    nop

    nop

    nop

    check-cast v2, Loru;

    nop

    invoke-virtual {v2}, Lfum;->a()Landroid/os/Parcel;

    move-result-object v3

    nop

    nop

    nop

    nop

    invoke-static {v3, v0}, Lfuo;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {v3, v1}, Lfuo;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 v0, 0x5

    nop

    invoke-virtual {v2, v0, v3}, Lfum;->A(ILandroid/os/Parcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_9
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_a
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_b
    goto :goto_a

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

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

    :goto_d
    invoke-super {p0}, Lokj;->w()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const-string v1, "UsageReportingClientImp"

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_f
    const v1, 0xd

    nop

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
.end method
