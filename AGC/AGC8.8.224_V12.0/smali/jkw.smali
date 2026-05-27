.class public final Ljkw;
.super Ljava/lang/Object;

# interfaces
.implements Ljke;


# instance fields
.field private final a:Lmrq;

.field private final b:J

.field private final c:Ljkz;


# direct methods
.method public constructor <init>(Ljkz;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljkw;->c:Ljkz;

    sget-object p1, Lmpw;->a:Lmrq;

    iput-object p1, p0, Ljkw;->a:Lmrq;

    invoke-virtual {p1}, Lmrq;->a()J

    move-result-wide v0

    iput-wide v0, p0, Ljkw;->b:J

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    iget-object p1, p0, Ljkw;->a:Lmrq;

    invoke-virtual {p1}, Lmrq;->a()J

    move-result-wide p1

    iget-wide v1, p0, Ljkw;->b:J

    sub-long/2addr p1, v1

    :try_start_0
    iget-object v1, p0, Ljkw;->c:Ljkz;

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

    const-string v0, "onStartQueryFailure AIDL call failed, ignoring"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final b(Ljkd;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Ljkw;->a:Lmrq;

    invoke-virtual {v0}, Lmrq;->a()J

    move-result-wide v0

    iget-wide v2, p0, Ljkw;->b:J

    sub-long/2addr v0, v2

    new-instance v2, Ljky;

    iget-object v3, p0, Ljkw;->a:Lmrq;

    invoke-direct {v2, p1, v3}, Ljky;-><init>(Ljkd;Lmrq;)V

    :try_start_0
    iget-object p1, p0, Ljkw;->c:Ljkz;

    invoke-virtual {p1}, Lcbe;->a()Landroid/os/Parcel;

    move-result-object v3

    invoke-static {v3, v2}, Lcbg;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-virtual {v3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v3}, Lcbe;->z(ILandroid/os/Parcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "brella.ExampleStoreSvc"

    const-string v1, "onStartQuerySuccess AIDL call failed, closing iterator"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v2}, Ljky;->b()V

    return-void
.end method
