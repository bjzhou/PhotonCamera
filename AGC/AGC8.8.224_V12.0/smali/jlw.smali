.class public final Ljlw;
.super Ljava/lang/Object;

# interfaces
.implements Ljkh;


# instance fields
.field private final a:Ljln;


# direct methods
.method public constructor <init>(Ljln;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljlw;->a:Ljln;

    return-void
.end method

.method public static c(Landroid/content/Context;Ljava/util/concurrent/Executor;Ljkj;)Ljot;
    .locals 9

    new-instance v7, Lkgd;

    const/4 v0, 0x0

    invoke-direct {v7, v0, v0}, Lkgd;-><init>([B[B)V

    new-instance v8, Ljls;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v2, v7

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Ljls;-><init>(Landroid/content/Context;Lkgd;Ljava/util/concurrent/Executor;Ljkj;[B[B)V

    invoke-interface {p1, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object p0, v7, Lkgd;->a:Ljava/lang/Object;

    check-cast p0, Ljot;

    return-object p0
.end method

.method public static d(Landroid/net/Uri;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "appdir"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a()Ljot;
    .locals 5

    new-instance v0, Lkgd;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lkgd;-><init>([B[B)V

    new-instance v2, Ljlv;

    invoke-direct {v2, v0, v1, v1}, Ljlv;-><init>(Lkgd;[B[B)V

    :try_start_0
    iget-object v1, p0, Ljlw;->a:Ljln;

    invoke-virtual {v1}, Lcbe;->a()Landroid/os/Parcel;

    move-result-object v3

    invoke-static {v3, v2}, Lcbg;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v3}, Lcbe;->z(ILandroid/os/Parcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljda;

    new-instance v3, Lcom/google/android/gms/common/api/Status;

    invoke-static {v1}, Lmrp;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x8

    invoke-direct {v3, v4, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {v2, v3}, Ljda;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v2}, Lkgd;->j(Ljava/lang/Exception;)V

    :goto_0
    iget-object v0, v0, Lkgd;->a:Ljava/lang/Object;

    check-cast v0, Ljot;

    return-object v0
.end method

.method public final b()Ljot;
    .locals 5

    new-instance v0, Lkgd;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lkgd;-><init>([B[B)V

    new-instance v2, Ljlu;

    invoke-direct {v2, v0, v1, v1}, Ljlu;-><init>(Lkgd;[B[B)V

    :try_start_0
    iget-object v1, p0, Ljlw;->a:Ljln;

    invoke-virtual {v1}, Lcbe;->a()Landroid/os/Parcel;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {v3, v2}, Lcbg;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v3}, Lcbe;->z(ILandroid/os/Parcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljda;

    new-instance v3, Lcom/google/android/gms/common/api/Status;

    invoke-static {v1}, Lmrp;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x8

    invoke-direct {v3, v4, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {v2, v3}, Ljda;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v2}, Lkgd;->j(Ljava/lang/Exception;)V

    :goto_0
    iget-object v0, v0, Lkgd;->a:Ljava/lang/Object;

    check-cast v0, Ljot;

    return-object v0
.end method
