.class public final Ljgy;
.super Lcbf;

# interfaces
.implements Landroid/os/IInterface;


# instance fields
.field private a:Ljgb;

.field private final b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.common.internal.IGmsCallbacks"

    invoke-direct {p0, v0}, Lcbf;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljgb;I)V
    .locals 1

    const-string v0, "com.google.android.gms.common.internal.IGmsCallbacks"

    invoke-direct {p0, v0}, Lcbf;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Ljgy;->a:Ljgb;

    iput p2, p0, Ljgy;->b:I

    return-void
.end method


# virtual methods
.method public final b(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Ljgy;->a:Ljgb;

    const-string v1, "onPostInitComplete can be called only once per call to getRemoteService"

    invoke-static {v0, v1}, Ljhp;->ac(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Ljgy;->a:Ljgb;

    iget v1, p0, Ljgy;->b:I

    invoke-virtual {v0, p1, p2, p3, v1}, Ljgb;->x(ILandroid/os/IBinder;Landroid/os/Bundle;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Ljgy;->a:Ljgb;

    return-void
.end method

.method protected final x(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 3

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    sget-object v1, Ljgg;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v1}, Lcbg;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Ljgg;

    invoke-static {p2}, Lcbg;->b(Landroid/os/Parcel;)V

    iget-object p2, p0, Ljgy;->a:Ljgb;

    const-string v2, "onPostInitCompleteWithConnectionInfo can be called only once per call togetRemoteService"

    invoke-static {p2, v2}, Ljhp;->ac(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1}, Ljhp;->ab(Ljava/lang/Object;)V

    iput-object v1, p2, Ljgb;->n:Ljgg;

    invoke-virtual {p2}, Ljgb;->C()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, v1, Ljgg;->d:Ljgh;

    invoke-static {}, Ljhj;->a()Ljhj;

    move-result-object v2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    iget-object p2, p2, Ljgh;->a:Ljhk;

    :goto_0
    invoke-virtual {v2, p2}, Ljhj;->b(Ljhk;)V

    :cond_1
    iget-object p2, v1, Ljgg;->a:Landroid/os/Bundle;

    invoke-virtual {p0, p1, v0, p2}, Ljgy;->b(ILandroid/os/IBinder;Landroid/os/Bundle;)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcbg;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    invoke-static {p2}, Lcbg;->b(Landroid/os/Parcel;)V

    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    const-string p2, "GmsClient"

    const-string v0, "received deprecated onAccountValidationComplete callback, ignoring"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v1}, Lcbg;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    invoke-static {p2}, Lcbg;->b(Landroid/os/Parcel;)V

    invoke-virtual {p0, p1, v0, v1}, Ljgy;->b(ILandroid/os/IBinder;Landroid/os/Bundle;)V

    :goto_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
