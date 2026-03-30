.class public final Lono;
.super Lohz;
.source "PG"


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic e:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lohh;Landroid/content/Intent;Ljava/lang/ref/WeakReference;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Lohz;-><init>(Lohh;)V

    goto/32 :goto_3

    nop

    nop

    :goto_1
    iput-object p3, p0, Lono;->e:Ljava/lang/ref/WeakReference;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Lono;->a:Landroid/content/Intent;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    return-void

    nop

    nop
.end method


# virtual methods
.method protected final bridge synthetic a(Lcom/google/android/gms/common/api/Status;)Lohn;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    if-eqz p1, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    sget-object p0, Lcom/google/android/gms/common/api/Status;->c:Lcom/google/android/gms/common/api/Status;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    return-object p1

    nop

    nop
.end method

.method protected final bridge synthetic b(Logu;)V
    .locals 4

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :catch_0
    move-exception p1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_3
    const v1, 0x1f

    nop

    nop

    goto/32 :goto_4

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

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->h(Lcom/google/android/gms/common/api/Status;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_6
    if-eq v1, v2, :cond_1

    nop

    goto/32 :goto_d

    nop

    :cond_1
    :goto_7
    goto/32 :goto_18

    nop

    nop

    :goto_8
    iget-object v0, p0, Lono;->a:Landroid/content/Intent;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_9
    iget v1, v0, Lcom/google/android/gms/googlehelp/GoogleHelp;->M:I

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_a
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_b
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput-object v2, v0, Lcom/google/android/gms/googlehelp/GoogleHelp;->N:Ljava/util/List;

    nop

    :goto_d
    :try_start_0
    iget-object v1, p0, Lono;->e:Ljava/lang/ref/WeakReference;

    nop

    nop

    nop

    nop

    nop

    iget-object v2, p0, Lono;->a:Landroid/content/Intent;

    nop

    nop

    nop

    new-instance v3, Lonn;

    nop

    nop

    nop

    nop

    invoke-direct {v3, v2, v1, p0}, Lonn;-><init>(Landroid/content/Intent;Ljava/lang/ref/WeakReference;Lono;)V

    invoke-virtual {p1}, Lfum;->a()Landroid/os/Parcel;

    move-result-object v1

    nop

    invoke-static {v1, v0}, Lfuo;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 v0, 0x0

    nop

    nop

    nop

    invoke-static {v1, v0}, Lfuo;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v1, v3}, Lfuo;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 v0, 0x2

    nop

    nop

    nop

    nop

    invoke-virtual {p1, v0, v1}, Lfum;->A(ILandroid/os/Parcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_1d

    nop

    nop

    :goto_f
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_10
    const-string v0, "gH_GoogleHelpApiImpl"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_11
    throw p0

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_e

    nop

    nop

    :goto_13
    const/4 v2, 0x1

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

    nop

    :goto_14
    const-string v1, "EXTRA_GOOGLE_HELP"

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_15
    if-nez v1, :cond_2

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    check-cast v0, Lcom/google/android/gms/googlehelp/GoogleHelp;

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

    :goto_17
    const-string v1, "Starting help failed!"

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_18
    sget-object v1, Lonw;->a:Lrwq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_19
    sget-object p1, Lonp;->a:Lcom/google/android/gms/common/api/Status;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1a
    const v0, 0x13

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1b
    return-void

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit v1

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_11

    nop

    nop

    :goto_1c
    goto/32 :goto_12

    nop

    :goto_1d
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_3
    goto/32 :goto_1c

    nop

    :goto_1f
    iget-object v0, p1, Lojy;->b:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_20
    monitor-enter v1

    nop

    nop

    nop

    nop

    nop

    :try_start_2
    new-instance v2, Ljava/util/ArrayList;

    nop

    nop

    sget-object v3, Lonw;->a:Lrwq;

    nop

    nop

    nop

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_21
    check-cast p1, Lonr;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_22
    check-cast p1, Lont;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p1}, Lojy;->t()Landroid/os/IInterface;

    move-result-object p1

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop
.end method

.method public final bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-super {p0, p1}, Lohz;->j(Lohn;)V

    goto/32 :goto_1

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

    nop

    nop

    :goto_2
    check-cast p1, Lohn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method
