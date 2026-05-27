.class public final Ljix;
.super Ljiy;


# instance fields
.field final synthetic a:Ljjb;


# direct methods
.method public constructor <init>(Ljdh;Ljjb;)V
    .locals 0

    iput-object p2, p0, Ljix;->a:Ljjb;

    invoke-direct {p0, p1}, Ljiy;-><init>(Ljdh;)V

    return-void
.end method


# virtual methods
.method protected final synthetic b(Ljcu;)V
    .locals 3

    check-cast p1, Ljjg;

    iget-object v0, p0, Ljix;->a:Ljjb;

    invoke-static {v0}, Ljji;->a(Ljjb;)V

    sget-object v1, Ljjj;->a:Ljtu;

    invoke-virtual {v1}, Ljtu;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljgb;->u()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Ljjh;

    invoke-virtual {p1}, Lcbe;->a()Landroid/os/Parcel;

    move-result-object v1

    invoke-static {v1, v0}, Lcbg;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 v0, 0x7

    invoke-virtual {p1, v0, v1}, Lcbe;->y(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    invoke-static {p1}, Lcbg;->e(Landroid/os/Parcel;)Z

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljgb;->u()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Ljjh;

    new-instance v2, Lcom/google/android/gms/feedback/ErrorReport;

    iget-object p1, p1, Ljjg;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-direct {v2, v0, p1}, Lcom/google/android/gms/feedback/ErrorReport;-><init>(Ljjb;Ljava/io/File;)V

    invoke-virtual {v1}, Lcbe;->a()Landroid/os/Parcel;

    move-result-object p1

    invoke-static {p1, v2}, Lcbg;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 v0, 0x3

    invoke-virtual {v1, v0, p1}, Lcbe;->y(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    invoke-static {p1}, Lcbg;->e(Landroid/os/Parcel;)Z

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    :goto_0
    sget-object p1, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->i(Ljdq;)V

    return-void
.end method
