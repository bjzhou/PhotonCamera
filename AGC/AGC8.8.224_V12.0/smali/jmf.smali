.class public final Ljmf;
.super Lcbf;

# interfaces
.implements Ljmg;


# instance fields
.field public final a:Ljmt;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.location.ILocationListener"

    invoke-direct {p0, v0}, Lcbf;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljmt;)V
    .locals 1

    const-string v0, "com.google.android.gms.location.ILocationListener"

    invoke-direct {p0, v0}, Lcbf;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Ljmf;->a:Ljmt;

    return-void
.end method


# virtual methods
.method public final e()V
    .locals 3

    iget-object v0, p0, Ljmf;->a:Ljmt;

    invoke-virtual {v0}, Ljmt;->b()Ljfb;

    move-result-object v0

    new-instance v1, Ljmy;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Ljmy;-><init>(Ljmf;I)V

    invoke-virtual {v0, v1}, Ljfb;->b(Ljfa;)V

    return-void
.end method

.method protected final x(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const/4 p3, 0x1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    :pswitch_0
    invoke-virtual {p0}, Ljmf;->e()V

    goto :goto_0

    :pswitch_1
    sget-object p1, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcbg;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/location/Location;

    invoke-static {p2}, Lcbg;->b(Landroid/os/Parcel;)V

    iget-object p2, p0, Ljmf;->a:Ljmt;

    invoke-virtual {p2}, Ljmt;->b()Ljfb;

    move-result-object p2

    new-instance v0, Ljmy;

    invoke-direct {v0, p1, p3}, Ljmy;-><init>(Landroid/location/Location;I)V

    invoke-virtual {p2, v0}, Ljfb;->b(Ljfa;)V

    :goto_0
    return p3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
