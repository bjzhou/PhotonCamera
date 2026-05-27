.class public final Ljap;
.super Ljas;


# direct methods
.method public constructor <init>(Ljdh;)V
    .locals 0

    invoke-direct {p0, p1}, Ljas;-><init>(Ljdh;)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a(Lcom/google/android/gms/common/api/Status;)Ljdq;
    .locals 0

    return-object p1
.end method

.method protected final bridge synthetic b(Ljcu;)V
    .locals 3

    check-cast p1, Ljal;

    invoke-virtual {p1}, Ljgb;->u()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Ljax;

    new-instance v1, Ljao;

    invoke-direct {v1, p0}, Ljao;-><init>(Ljap;)V

    iget-object p1, p1, Ljal;->a:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-virtual {v0}, Lcbe;->a()Landroid/os/Parcel;

    move-result-object v2

    invoke-static {v2, v1}, Lcbg;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {v2, p1}, Lcbg;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0x66

    invoke-virtual {v0, p1, v2}, Lcbe;->z(ILandroid/os/Parcel;)V

    return-void
.end method
