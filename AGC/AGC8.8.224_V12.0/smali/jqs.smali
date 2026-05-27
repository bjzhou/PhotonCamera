.class public final Ljqs;
.super Ljqr;


# direct methods
.method public constructor <init>(Ljdh;)V
    .locals 0

    invoke-direct {p0, p1}, Ljqr;-><init>(Ljdh;)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a(Lcom/google/android/gms/common/api/Status;)Ljdq;
    .locals 3

    new-instance v0, Ljqu;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Ljqu;-><init>(Lcom/google/android/gms/common/api/Status;Ljpu;I)V

    return-object v0
.end method

.method protected final bridge synthetic b(Ljcu;)V
    .locals 2

    check-cast p1, Ljtk;

    invoke-virtual {p1}, Ljgb;->u()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Ljsi;

    new-instance v0, Ljtg;

    invoke-direct {v0, p0}, Ljtg;-><init>(Ljed;)V

    invoke-virtual {p1}, Lcbe;->a()Landroid/os/Parcel;

    move-result-object v1

    invoke-static {v1, v0}, Lcbg;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const-string v0, "snapshot_from_wear"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v0, 0x2a

    invoke-virtual {p1, v0, v1}, Lcbe;->z(ILandroid/os/Parcel;)V

    return-void
.end method
