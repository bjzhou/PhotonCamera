.class public final Ljsq;
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

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x2

    invoke-direct {v0, p1, v1, v2}, Ljqu;-><init>(Lcom/google/android/gms/common/api/Status;Ljava/util/List;I)V

    return-object v0
.end method

.method protected final synthetic b(Ljcu;)V
    .locals 2

    check-cast p1, Ljtk;

    invoke-virtual {p1}, Ljgb;->u()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Ljsi;

    new-instance v0, Ljth;

    invoke-direct {v0, p0}, Ljth;-><init>(Ljed;)V

    invoke-virtual {p1}, Lcbe;->a()Landroid/os/Parcel;

    move-result-object v1

    invoke-static {v1, v0}, Lcbg;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 v0, 0xf

    invoke-virtual {p1, v0, v1}, Lcbe;->z(ILandroid/os/Parcel;)V

    return-void
.end method
