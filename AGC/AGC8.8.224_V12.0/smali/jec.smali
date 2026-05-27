.class public abstract Ljec;
.super Lcom/google/android/gms/common/api/internal/BasePendingResult;

# interfaces
.implements Ljed;


# direct methods
.method protected constructor <init>(Ljdh;)V
    .locals 1

    const-string v0, "GoogleApiClient must not be null"

    invoke-static {p1, v0}, Ljhp;->ac(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;-><init>(Ljdh;)V

    return-void
.end method

.method private final d(Landroid/os/RemoteException;)V
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p1}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-direct {v0, v2, p1, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;[B)V

    invoke-virtual {p0, v0}, Ljec;->f(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method


# virtual methods
.method protected abstract b(Ljcu;)V
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final e(Ljcu;)V
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1}, Ljec;->b(Ljcu;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-direct {p0, p1}, Ljec;->d(Landroid/os/RemoteException;)V

    return-void

    :catch_1
    move-exception p1

    invoke-direct {p0, p1}, Ljec;->d(Landroid/os/RemoteException;)V

    throw p1
.end method

.method public final f(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->b()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Failed result must not be success"

    invoke-static {v0, v1}, Ljhp;->T(ZLjava/lang/Object;)V

    invoke-virtual {p0, p1}, Ljec;->a(Lcom/google/android/gms/common/api/Status;)Ljdq;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->i(Ljdq;)V

    return-void
.end method
