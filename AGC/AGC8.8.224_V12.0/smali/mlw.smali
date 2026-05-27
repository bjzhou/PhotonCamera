.class final Lmlw;
.super Lmmk;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lmma;

.field final synthetic c:Lkgd;


# direct methods
.method public constructor <init>(Lmma;Lkgd;Ljava/lang/String;Lkgd;[B[B)V
    .locals 0

    iput-object p1, p0, Lmlw;->b:Lmma;

    iput-object p3, p0, Lmlw;->a:Ljava/lang/String;

    iput-object p4, p0, Lmlw;->c:Lkgd;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1, p1}, Lmmk;-><init>(Lkgd;[B[B)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lmlw;->b:Lmma;

    iget-object v2, v1, Lmma;->a:Lmmt;

    iget-object v2, v2, Lmmt;->k:Landroid/os/IInterface;

    iget-object v3, v1, Lmma;->b:Ljava/lang/String;

    iget-object v4, p0, Lmlw;->a:Ljava/lang/String;

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    invoke-static {}, Lmma;->b()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    const-string v6, "package.name"

    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v4, 0x0

    :try_start_1
    iget-object v6, v1, Lmma;->c:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v1, v1, Lmma;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v6, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    sget-object v1, Lmma;->d:Llzz;

    new-array v6, v0, [Ljava/lang/Object;

    const-string v7, "The current version of the app could not be retrieved"

    invoke-virtual {v1, v7, v6}, Llzz;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v4

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v6, "app.version.code"

    invoke-virtual {v5, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    new-instance v1, Lmlz;

    iget-object v6, p0, Lmlw;->b:Lmma;

    iget-object v7, p0, Lmlw;->c:Lkgd;

    invoke-direct {v1, v6, v7, v4, v4}, Lmlz;-><init>(Lmma;Lkgd;[B[B)V

    move-object v4, v2

    check-cast v4, Lcbe;

    invoke-virtual {v4}, Lcbe;->a()Landroid/os/Parcel;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {v4, v5}, Lcbg;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v4, v1}, Lcbg;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    check-cast v2, Lcbe;

    const/4 v1, 0x2

    invoke-virtual {v2, v1, v4}, Lcbe;->A(ILandroid/os/Parcel;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception v1

    sget-object v2, Lmma;->d:Llzz;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lmlw;->a:Ljava/lang/String;

    aput-object v4, v3, v0

    const-string v0, "requestUpdateInfo(%s)"

    invoke-virtual {v2, v1, v0, v3}, Llzz;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lmlw;->c:Lkgd;

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v2}, Lkgd;->j(Ljava/lang/Exception;)V

    return-void
.end method
