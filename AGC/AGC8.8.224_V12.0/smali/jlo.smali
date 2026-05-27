.class public final Ljlo;
.super Lcbe;

# interfaces
.implements Ljlp;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.learning.internal.training.IInAppTrainingService"

    invoke-direct {p0, p1, v0}, Lcbe;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final e(Landroid/content/Intent;II)I
    .locals 1

    invoke-virtual {p0}, Lcbe;->a()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcbg;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x5

    invoke-virtual {p0, p1, v0}, Lcbe;->y(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return p2
.end method

.method public final f(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    invoke-virtual {p0}, Lcbe;->a()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcbg;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x3

    invoke-virtual {p0, p1, v0}, Lcbe;->y(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object v0
.end method

.method public final g(Ljig;)V
    .locals 1

    invoke-virtual {p0}, Lcbe;->a()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcbg;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Lcbe;->z(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final h()V
    .locals 2

    invoke-virtual {p0}, Lcbe;->a()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcbe;->z(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final i(Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p0}, Lcbe;->a()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcbg;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x7

    invoke-virtual {p0, p1, v0}, Lcbe;->z(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final j(I)V
    .locals 1

    invoke-virtual {p0}, Lcbe;->a()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x4

    invoke-virtual {p0, p1, v0}, Lcbe;->z(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final k(Landroid/content/Intent;)Z
    .locals 1

    invoke-virtual {p0}, Lcbe;->a()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcbg;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x6

    invoke-virtual {p0, p1, v0}, Lcbe;->y(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    invoke-static {p1}, Lcbg;->e(Landroid/os/Parcel;)Z

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return v0
.end method

.method public final l(Ljlk;)V
    .locals 2

    invoke-virtual {p0}, Lcbe;->a()Landroid/os/Parcel;

    move-result-object v0

    const-string v1, "cronet"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcbg;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0x9

    invoke-virtual {p0, p1, v0}, Lcbe;->z(ILandroid/os/Parcel;)V

    return-void
.end method
