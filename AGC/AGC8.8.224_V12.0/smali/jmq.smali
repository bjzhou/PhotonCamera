.class public final Ljmq;
.super Lcbf;

# interfaces
.implements Landroid/os/IInterface;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Ljkf;I)V
    .locals 0

    iput p2, p0, Ljmq;->b:I

    iput-object p1, p0, Ljmq;->a:Ljava/lang/Object;

    const-string p1, "com.google.android.gms.learning.internal.IExampleStoreV2"

    invoke-direct {p0, p1}, Lcbf;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lkgd;I[B[B)V
    .locals 0

    iput p2, p0, Ljmq;->b:I

    iput-object p1, p0, Ljmq;->a:Ljava/lang/Object;

    const-string p1, "com.google.android.gms.location.internal.ILocationStatusCallback"

    invoke-direct {p0, p1}, Lcbf;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final x(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 11

    iget v0, p0, Ljmq;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    const-string v0, "com.google.android.gms.learning.internal.IExampleStoreQueryCallbackV2"

    const-string v3, "com.google.android.gms.dynamic.IObjectWrapper"

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_9

    :pswitch_0
    if-ne p1, v2, :cond_0

    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcbg;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    sget-object p3, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p3}, Lcbg;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p3

    check-cast p3, Landroid/location/Location;

    invoke-static {p2}, Lcbg;->b(Landroid/os/Parcel;)V

    iget-object p2, p0, Ljmq;->a:Ljava/lang/Object;

    check-cast p2, Lkgd;

    invoke-static {p1, p3, p2}, Ljhp;->ak(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lkgd;)V

    return v2

    :cond_0
    return v1

    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_1

    move-object v5, v4

    goto :goto_0

    :cond_1
    invoke-interface {p1, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v5

    instance-of v7, v5, Ljig;

    if-eqz v7, :cond_2

    check-cast v5, Ljig;

    goto :goto_0

    :cond_2
    new-instance v5, Ljie;

    invoke-direct {v5, p1}, Ljie;-><init>(Landroid/os/IBinder;)V

    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_3

    move-object v7, v4

    goto :goto_1

    :cond_3
    invoke-interface {p1, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v7

    instance-of v8, v7, Ljig;

    if-eqz v8, :cond_4

    check-cast v7, Ljig;

    goto :goto_1

    :cond_4
    new-instance v7, Ljie;

    invoke-direct {v7, p1}, Ljie;-><init>(Landroid/os/IBinder;)V

    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_5

    move-object v0, v4

    goto :goto_2

    :cond_5
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v8, v0, Ljkz;

    if-eqz v8, :cond_6

    check-cast v0, Ljkz;

    goto :goto_2

    :cond_6
    new-instance v0, Ljkz;

    invoke-direct {v0, p1}, Ljkz;-><init>(Landroid/os/IBinder;)V

    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_7

    goto :goto_3

    :cond_7
    invoke-interface {p1, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    instance-of v4, v3, Ljig;

    if-eqz v4, :cond_8

    move-object v4, v3

    check-cast v4, Ljig;

    goto :goto_3

    :cond_8
    new-instance v4, Ljie;

    invoke-direct {v4, p1}, Ljie;-><init>(Landroid/os/IBinder;)V

    :goto_3
    invoke-static {p2}, Lcbg;->b(Landroid/os/Parcel;)V

    sget-object p1, Lntt;->a:Lntt;

    invoke-static {v4}, Ljif;->c(Ljig;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    if-eqz p2, :cond_9

    :try_start_0
    invoke-static {}, Lnwh;->a()Lnwh;

    move-result-object p1

    sget-object v3, Lntt;->a:Lntt;

    array-length v4, p2

    invoke-static {v3, p2, v1, v4, p1}, Lnws;->Q(Lnws;[BIILnwh;)Lnws;

    move-result-object p1

    invoke-static {p1}, Lnws;->ae(Lnws;)V

    check-cast p1, Lntt;
    :try_end_0
    .catch Lnxd; {:try_start_0 .. :try_end_0} :catch_0

    move-object v10, p1

    goto :goto_4

    :catch_0
    move-exception p1

    new-instance p2, Ljkw;

    invoke-direct {p2, v0}, Ljkw;-><init>(Ljkz;)V

    invoke-virtual {p1}, Lnxd;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p2, v0, p1}, Ljkw;->a(ILjava/lang/String;)V

    goto :goto_5

    :cond_9
    move-object v10, p1

    :goto_4
    iget-object p1, p0, Ljmq;->a:Ljava/lang/Object;

    invoke-static {v5}, Ljif;->c(Ljig;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    invoke-static {v7}, Ljif;->c(Ljig;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, [B

    new-instance v9, Ljkw;

    invoke-direct {v9, v0}, Ljkw;-><init>(Ljkz;)V

    move-object v5, p1

    check-cast v5, Ljkf;

    move-object v7, p2

    invoke-virtual/range {v5 .. v10}, Ljkf;->c(Ljava/lang/String;[B[BLjke;Lntt;)V

    :goto_5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v1, 0x1

    goto/16 :goto_9

    :pswitch_2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    sget p1, Lcbg;->a:I

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_a

    move-object v5, v4

    goto :goto_6

    :cond_a
    invoke-interface {v1, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v5

    instance-of v6, v5, Ljig;

    if-eqz v6, :cond_b

    check-cast v5, Ljig;

    goto :goto_6

    :cond_b
    new-instance v5, Ljie;

    invoke-direct {v5, v1}, Ljie;-><init>(Landroid/os/IBinder;)V

    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_c

    move-object v3, v4

    goto :goto_7

    :cond_c
    invoke-interface {v1, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    instance-of v6, v3, Ljig;

    if-eqz v6, :cond_d

    check-cast v3, Ljig;

    goto :goto_7

    :cond_d
    new-instance v3, Ljie;

    invoke-direct {v3, v1}, Ljie;-><init>(Landroid/os/IBinder;)V

    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_e

    goto :goto_8

    :cond_e
    invoke-interface {v1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v4, v0, Ljkz;

    if-eqz v4, :cond_f

    move-object v4, v0

    check-cast v4, Ljkz;

    goto :goto_8

    :cond_f
    new-instance v4, Ljkz;

    invoke-direct {v4, v1}, Ljkz;-><init>(Landroid/os/IBinder;)V

    :goto_8
    invoke-static {p2}, Lcbg;->b(Landroid/os/Parcel;)V

    iget-object p2, p0, Ljmq;->a:Ljava/lang/Object;

    invoke-static {v5}, Ljif;->c(Ljig;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, [B

    invoke-static {v3}, Ljif;->c(Ljig;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [B

    new-instance v7, Ljkw;

    invoke-direct {v7, v4}, Ljkw;-><init>(Ljkz;)V

    sget-object v8, Lntt;->a:Lntt;

    move-object v3, p2

    check-cast v3, Ljkf;

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Ljkf;->c(Ljava/lang/String;[B[BLjke;Lntt;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v1, 0x1

    :goto_9
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
