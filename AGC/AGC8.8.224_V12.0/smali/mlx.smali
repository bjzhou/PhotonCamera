.class final Lmlx;
.super Lmmk;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lmma;

.field final synthetic c:Lkgd;


# direct methods
.method public constructor <init>(Lmma;Lkgd;Lkgd;Ljava/lang/String;[B[B)V
    .locals 0

    iput-object p1, p0, Lmlx;->b:Lmma;

    iput-object p3, p0, Lmlx;->c:Lkgd;

    iput-object p4, p0, Lmlx;->a:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1, p1}, Lmmk;-><init>(Lkgd;[B[B)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lmlx;->b:Lmma;

    iget-object v1, v0, Lmma;->a:Lmmt;

    iget-object v1, v1, Lmmt;->k:Landroid/os/IInterface;

    iget-object v0, v0, Lmma;->b:Ljava/lang/String;

    invoke-static {}, Lmma;->b()Landroid/os/Bundle;

    move-result-object v2

    new-instance v3, Lmly;

    iget-object v4, p0, Lmlx;->b:Lmma;

    iget-object v5, p0, Lmlx;->c:Lkgd;

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6, v6}, Lmly;-><init>(Lmma;Lkgd;[B[B)V

    move-object v4, v1

    check-cast v4, Lcbe;

    invoke-virtual {v4}, Lcbe;->a()Landroid/os/Parcel;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {v4, v2}, Lcbg;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v4, v3}, Lcbg;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    check-cast v1, Lcbe;

    const/4 v0, 0x3

    invoke-virtual {v1, v0, v4}, Lcbe;->A(ILandroid/os/Parcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lmma;->d:Llzz;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lmlx;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    const-string v3, "completeUpdate(%s)"

    invoke-virtual {v1, v0, v3, v2}, Llzz;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lmlx;->c:Lkgd;

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lkgd;->j(Ljava/lang/Exception;)V

    return-void
.end method
