.class public final Ljjq;
.super Ljec;


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Ljdh;Landroid/content/Intent;Ljava/lang/ref/WeakReference;)V
    .locals 0

    iput-object p2, p0, Ljjq;->a:Landroid/content/Intent;

    iput-object p3, p0, Ljjq;->b:Ljava/lang/ref/WeakReference;

    invoke-direct {p0, p1}, Ljec;-><init>(Ljdh;)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a(Lcom/google/android/gms/common/api/Status;)Ljdq;
    .locals 0

    if-nez p1, :cond_0

    sget-object p1, Lcom/google/android/gms/common/api/Status;->c:Lcom/google/android/gms/common/api/Status;

    :cond_0
    return-object p1
.end method

.method protected final bridge synthetic b(Ljcu;)V
    .locals 4

    check-cast p1, Ljjt;

    iget-object v0, p1, Ljgb;->c:Landroid/content/Context;

    invoke-virtual {p1}, Ljgb;->u()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Ljjv;

    iget-object v0, p0, Ljjq;->a:Landroid/content/Intent;

    const-string v1, "EXTRA_GOOGLE_HELP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/googlehelp/GoogleHelp;

    :try_start_0
    iget-object v1, p0, Ljjq;->b:Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Ljjq;->a:Landroid/content/Intent;

    new-instance v3, Ljjp;

    invoke-direct {v3, v2, v1, p0}, Ljjp;-><init>(Landroid/content/Intent;Ljava/lang/ref/WeakReference;Ljjq;)V

    invoke-virtual {p1}, Lcbe;->a()Landroid/os/Parcel;

    move-result-object v1

    invoke-static {v1, v0}, Lcbg;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcbg;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v1, v3}, Lcbg;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v1}, Lcbe;->z(ILandroid/os/Parcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "gH_GoogleHelpApiImpl"

    const-string v1, "Starting help failed!"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object p1, Ljjr;->a:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->g(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public final bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljdq;

    invoke-super {p0, p1}, Ljec;->i(Ljdq;)V

    return-void
.end method
