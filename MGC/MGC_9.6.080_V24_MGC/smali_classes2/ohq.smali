.class abstract Lohq;
.super Lohp;
.source "PG"


# instance fields
.field protected final a:Lpic;


# direct methods
.method public constructor <init>(ILpic;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lohq;->a:Lpic;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    invoke-direct {p0, p1}, Lohp;-><init>(I)V

    goto/32 :goto_0

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
.end method


# virtual methods
.method protected abstract c(Loil;)V
.end method

.method public final d(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, p1}, Loha;-><init>(Lcom/google/android/gms/common/api/Status;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, v0}, Lpic;->u(Ljava/lang/Exception;)V

    goto/32 :goto_2

    nop

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

    :goto_3
    new-instance v0, Loha;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    iget-object p0, p0, Lohq;->a:Lpic;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public final e(Ljava/lang/Exception;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Lpic;->u(Ljava/lang/Exception;)V

    goto/32 :goto_0

    nop

    nop

    :goto_2
    iget-object p0, p0, Lohq;->a:Lpic;

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
.end method

.method public final f(Loil;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1}, Lohq;->c(Loil;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    invoke-static {p1}, Lohv;->h(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    return-void

    nop

    :catch_0
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1}, Lohq;->e(Ljava/lang/Exception;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :catch_1
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    invoke-static {p1}, Lohv;->h(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    nop

    nop

    goto/32 :goto_8

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

    :catch_2
    move-exception p1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, v0}, Lohq;->d(Lcom/google/android/gms/common/api/Status;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0, p1}, Lohq;->d(Lcom/google/android/gms/common/api/Status;)V

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public g(Lnar;Z)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop
.end method
