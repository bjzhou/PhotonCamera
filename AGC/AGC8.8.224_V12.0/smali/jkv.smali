.class final Ljkv;
.super Ljava/lang/Object;

# interfaces
.implements Ljkc;


# instance fields
.field private final a:Lmrq;

.field private final b:J

.field private final c:Ljky;

.field private final d:Ljkx;


# direct methods
.method public constructor <init>(Ljky;Ljkx;Lmrq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljkv;->c:Ljky;

    iput-object p2, p0, Ljkv;->d:Ljkx;

    iput-object p3, p0, Ljkv;->a:Lmrq;

    invoke-virtual {p3}, Lmrq;->a()J

    move-result-wide p1

    iput-wide p1, p0, Ljkv;->b:J

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    iget-object p1, p0, Ljkv;->a:Lmrq;

    invoke-virtual {p1}, Lmrq;->a()J

    move-result-wide p1

    iget-wide v1, p0, Ljkv;->b:J

    sub-long/2addr p1, v1

    :try_start_0
    iget-object v1, p0, Ljkv;->d:Ljkx;

    invoke-virtual {v1}, Lcbe;->a()Landroid/os/Parcel;

    move-result-object v2

    invoke-static {v2, v0}, Lcbg;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-virtual {v2, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    const/4 p1, 0x3

    invoke-virtual {v1, p1, v2}, Lcbe;->z(ILandroid/os/Parcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "brella.ExampleStoreSvc"

    const-string v0, "onIteratorNextFailure AIDL call failed, closing iterator"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p1, p0, Ljkv;->c:Ljky;

    invoke-virtual {p1}, Ljky;->b()V

    return-void
.end method

.method public final b([B[B)V
    .locals 4

    iget-object v0, p0, Ljkv;->a:Lmrq;

    invoke-virtual {v0}, Lmrq;->a()J

    move-result-wide v0

    iget-wide v2, p0, Ljkv;->b:J

    sub-long/2addr v0, v2

    :try_start_0
    iget-object v2, p0, Ljkv;->d:Ljkx;

    const/4 v3, 0x0

    if-nez p1, :cond_0

    move-object p1, v3

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljif;->b(Ljava/lang/Object;)Ljig;

    move-result-object p1

    :goto_0
    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p2}, Ljif;->b(Ljava/lang/Object;)Ljig;

    move-result-object v3

    :goto_1
    invoke-virtual {v2}, Lcbe;->a()Landroid/os/Parcel;

    move-result-object p2

    invoke-static {p2, p1}, Lcbg;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {p2, v3}, Lcbg;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-virtual {p2, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    const/4 p1, 0x2

    invoke-virtual {v2, p1, p2}, Lcbe;->z(ILandroid/os/Parcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "brella.ExampleStoreSvc"

    const-string v0, "onIteratorNextSuccess AIDL call failed, closing iterator"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p1, p0, Ljkv;->c:Ljky;

    invoke-virtual {p1}, Ljky;->b()V

    return-void
.end method
