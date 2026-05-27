.class public final Ljpt;
.super Ljgm;


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ljge;Ljdf;Ljdg;)V
    .locals 7

    const/16 v3, 0x29

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Ljgm;-><init>(Landroid/content/Context;Landroid/os/Looper;ILjge;Ljei;Ljff;)V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Ljpt;->a:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final C()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final I(Ljnt;Ljnt;Ljed;)V
    .locals 3

    new-instance v0, Ljpr;

    invoke-virtual {p0}, Ljgb;->u()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Ljpo;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p3, p2, v2}, Ljpr;-><init>(Ljpo;Ljed;Ljnt;[B)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljgb;->u()Landroid/os/IInterface;

    move-result-object p2

    check-cast p2, Ljpo;

    invoke-virtual {p2}, Lcbe;->a()Landroid/os/Parcel;

    move-result-object p3

    invoke-static {p3, p1}, Lcbg;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {p3, v0}, Lcbg;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0xa

    invoke-virtual {p2, p1, p3}, Lcbe;->z(ILandroid/os/Parcel;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    sget-object p1, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;

    invoke-interface {p3, p1}, Ljed;->c(Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Ljgb;->u()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Ljpo;

    invoke-virtual {p1, p2, v0}, Ljpo;->e(Ljnt;Ljpn;)V

    return-void
.end method

.method public final a()I
    .locals 1

    const v0, 0xc042c0

    return v0
.end method

.method protected final synthetic b(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "com.google.android.gms.usagereporting.internal.IUsageReportingService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Ljpo;

    if-eqz v1, :cond_1

    move-object p1, v0

    check-cast p1, Ljpo;

    goto :goto_0

    :cond_1
    new-instance v0, Ljpo;

    invoke-direct {v0, p1}, Ljpo;-><init>(Landroid/os/IBinder;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method protected final c()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.usagereporting.internal.IUsageReportingService"

    return-object v0
.end method

.method protected final d()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.usagereporting.service.START"

    return-object v0
.end method

.method public final e()[Ljca;
    .locals 1

    sget-object v0, Ljpb;->d:[Ljca;

    return-object v0
.end method

.method public final j()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Ljpt;->a:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljnt;

    if-eqz v0, :cond_0

    new-instance v1, Ljpq;

    invoke-direct {v1}, Ljpq;-><init>()V

    invoke-virtual {p0}, Ljgb;->u()Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Ljpo;

    invoke-virtual {v2}, Lcbe;->a()Landroid/os/Parcel;

    move-result-object v3

    invoke-static {v3, v0}, Lcbg;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {v3, v1}, Lcbg;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 v0, 0x5

    invoke-virtual {v2, v0, v3}, Lcbe;->z(ILandroid/os/Parcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "UsageReportingClientImp"

    const-string v2, "disconnect(): Could not unregister listener from remote:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    invoke-super {p0}, Ljgm;->j()V

    return-void
.end method
