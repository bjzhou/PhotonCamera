.class public final Ljan;
.super Ljas;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;


# direct methods
.method public constructor <init>(Ljdh;Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V
    .locals 0

    iput-object p2, p0, Ljan;->a:Landroid/content/Context;

    iput-object p3, p0, Ljan;->b:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-direct {p0, p1}, Ljas;-><init>(Ljdh;)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a(Lcom/google/android/gms/common/api/Status;)Ljdq;
    .locals 3

    new-instance v0, Ljqu;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, p1, v2}, Ljqu;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/common/api/Status;I)V

    return-object v0
.end method

.method protected final bridge synthetic b(Ljcu;)V
    .locals 3

    check-cast p1, Ljal;

    invoke-virtual {p1}, Ljgb;->u()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Ljax;

    new-instance v0, Ljam;

    invoke-direct {v0, p0}, Ljam;-><init>(Ljan;)V

    iget-object v1, p0, Ljan;->b:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-virtual {p1}, Lcbe;->a()Landroid/os/Parcel;

    move-result-object v2

    invoke-static {v2, v0}, Lcbg;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {v2, v1}, Lcbg;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 v0, 0x65

    invoke-virtual {p1, v0, v2}, Lcbe;->z(ILandroid/os/Parcel;)V

    return-void
.end method
