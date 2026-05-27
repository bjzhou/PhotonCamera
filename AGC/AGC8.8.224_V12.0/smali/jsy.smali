.class public final Ljsy;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field private final synthetic a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Ljsy;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 7

    iget v0, p0, Ljsy;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/google/android/libraries/barhopper/Barcode$UrlBookmark;

    invoke-direct {v0, p1, v2}, Lcom/google/android/libraries/barhopper/Barcode$UrlBookmark;-><init>(Landroid/os/Parcel;Lcom/google/android/libraries/barhopper/Barcode$UrlBookmark-IA;)V

    return-object v0

    :pswitch_0
    new-instance v0, Lcom/google/android/libraries/barhopper/Barcode$Sms;

    invoke-direct {v0, p1, v2}, Lcom/google/android/libraries/barhopper/Barcode$Sms;-><init>(Landroid/os/Parcel;Lcom/google/android/libraries/barhopper/Barcode$Sms-IA;)V

    return-object v0

    :pswitch_1
    new-instance v0, Lcom/google/android/libraries/barhopper/Barcode$Phone;

    invoke-direct {v0, p1, v2}, Lcom/google/android/libraries/barhopper/Barcode$Phone;-><init>(Landroid/os/Parcel;Lcom/google/android/libraries/barhopper/Barcode$Phone-IA;)V

    return-object v0

    :pswitch_2
    new-instance v0, Lcom/google/android/libraries/barhopper/Barcode$PersonName;

    invoke-direct {v0, p1, v2}, Lcom/google/android/libraries/barhopper/Barcode$PersonName;-><init>(Landroid/os/Parcel;Lcom/google/android/libraries/barhopper/Barcode$PersonName-IA;)V

    return-object v0

    :pswitch_3
    new-instance v0, Lcom/google/android/libraries/barhopper/Barcode$GeoPoint;

    invoke-direct {v0, p1, v2}, Lcom/google/android/libraries/barhopper/Barcode$GeoPoint;-><init>(Landroid/os/Parcel;Lcom/google/android/libraries/barhopper/Barcode$GeoPoint-IA;)V

    return-object v0

    :pswitch_4
    new-instance v0, Lcom/google/android/libraries/barhopper/Barcode$FlightSegment;

    invoke-direct {v0, p1, v2}, Lcom/google/android/libraries/barhopper/Barcode$FlightSegment;-><init>(Landroid/os/Parcel;Lcom/google/android/libraries/barhopper/Barcode$FlightSegment-IA;)V

    return-object v0

    :pswitch_5
    new-instance v0, Lcom/google/android/libraries/barhopper/Barcode$Email;

    invoke-direct {v0, p1, v2}, Lcom/google/android/libraries/barhopper/Barcode$Email;-><init>(Landroid/os/Parcel;Lcom/google/android/libraries/barhopper/Barcode$Email-IA;)V

    return-object v0

    :pswitch_6
    new-instance v0, Lcom/google/android/libraries/barhopper/Barcode$DriverLicense;

    invoke-direct {v0, p1, v2}, Lcom/google/android/libraries/barhopper/Barcode$DriverLicense;-><init>(Landroid/os/Parcel;Lcom/google/android/libraries/barhopper/Barcode$DriverLicense-IA;)V

    return-object v0

    :pswitch_7
    new-instance v0, Lcom/google/android/libraries/barhopper/Barcode$ContactInfo;

    invoke-direct {v0, p1, v2}, Lcom/google/android/libraries/barhopper/Barcode$ContactInfo;-><init>(Landroid/os/Parcel;Lcom/google/android/libraries/barhopper/Barcode$ContactInfo-IA;)V

    return-object v0

    :pswitch_8
    new-instance v0, Lcom/google/android/libraries/barhopper/Barcode$CalendarEvent;

    invoke-direct {v0, p1, v2}, Lcom/google/android/libraries/barhopper/Barcode$CalendarEvent;-><init>(Landroid/os/Parcel;Lcom/google/android/libraries/barhopper/Barcode$CalendarEvent-IA;)V

    return-object v0

    :pswitch_9
    new-instance v0, Lcom/google/android/libraries/barhopper/Barcode$CalendarDateTime;

    invoke-direct {v0, p1, v2}, Lcom/google/android/libraries/barhopper/Barcode$CalendarDateTime;-><init>(Landroid/os/Parcel;Lcom/google/android/libraries/barhopper/Barcode$CalendarDateTime-IA;)V

    return-object v0

    :pswitch_a
    new-instance v0, Lcom/google/android/libraries/barhopper/Barcode$BoardingPass;

    invoke-direct {v0, p1, v2}, Lcom/google/android/libraries/barhopper/Barcode$BoardingPass;-><init>(Landroid/os/Parcel;Lcom/google/android/libraries/barhopper/Barcode$BoardingPass-IA;)V

    return-object v0

    :pswitch_b
    new-instance v0, Lcom/google/android/libraries/barhopper/Barcode$Address;

    invoke-direct {v0, p1, v2}, Lcom/google/android/libraries/barhopper/Barcode$Address;-><init>(Landroid/os/Parcel;Lcom/google/android/libraries/barhopper/Barcode$Address-IA;)V

    return-object v0

    :pswitch_c
    new-instance v0, Lcom/google/android/libraries/barhopper/Barcode;

    invoke-direct {v0, p1, v2}, Lcom/google/android/libraries/barhopper/Barcode;-><init>(Landroid/os/Parcel;Lcom/google/android/libraries/barhopper/Barcode-IA;)V

    return-object v0

    :pswitch_d
    invoke-static {p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v0

    const-wide/16 v3, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ge v5, v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-static {v5}, Ljhp;->v(I)I

    move-result v6

    packed-switch v6, :pswitch_data_1

    invoke-static {p1, v5}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_1

    :pswitch_e
    sget-object v2, Ljsu;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v5, v2}, Ljhp;->H(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_1

    :pswitch_f
    invoke-static {p1, v5}, Ljhp;->A(Landroid/os/Parcel;I)J

    move-result-wide v3

    goto :goto_1

    :pswitch_10
    invoke-static {p1, v5}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v1

    :goto_1
    goto :goto_0

    :cond_0
    invoke-static {p1, v0}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance p1, Ljtd;

    invoke-direct {p1, v1, v3, v4, v2}, Ljtd;-><init>(IJLjava/util/List;)V

    return-object p1

    :pswitch_11
    invoke-static {p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v0, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Ljhp;->v(I)I

    move-result v4

    packed-switch v4, :pswitch_data_2

    invoke-static {p1, v3}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_2

    :pswitch_12
    invoke-static {p1, v3}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v2

    goto :goto_2

    :pswitch_13
    invoke-static {p1, v3}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v1

    goto :goto_2

    :cond_1
    invoke-static {p1, v0}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance p1, Ljtc;

    invoke-direct {p1, v1, v2}, Ljtc;-><init>(II)V

    return-object p1

    :pswitch_14
    invoke-static {p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v0

    move-object v3, v2

    const/4 v2, 0x0

    :goto_3
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v0, :cond_2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-static {v4}, Ljhp;->v(I)I

    move-result v5

    packed-switch v5, :pswitch_data_3

    invoke-static {p1, v4}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_3

    :pswitch_15
    invoke-static {p1, v4}, Ljhp;->M(Landroid/os/Parcel;I)[B

    move-result-object v3

    goto :goto_3

    :pswitch_16
    invoke-static {p1, v4}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v2

    goto :goto_3

    :pswitch_17
    invoke-static {p1, v4}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v1

    goto :goto_3

    :cond_2
    invoke-static {p1, v0}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance p1, Ljtb;

    invoke-direct {p1, v1, v2, v3}, Ljtb;-><init>(II[B)V

    return-object p1

    :pswitch_18
    invoke-static {p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v0

    :goto_4
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    if-ge v1, v0, :cond_3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljhp;->v(I)I

    move-result v3

    packed-switch v3, :pswitch_data_4

    invoke-static {p1, v1}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_4

    :pswitch_19
    invoke-static {p1, v1}, Ljhp;->E(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_3
    invoke-static {p1, v0}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance p1, Ljta;

    invoke-direct {p1, v2}, Ljta;-><init>(Ljava/lang/String;)V

    return-object p1

    :pswitch_1a
    invoke-static {p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v0

    :goto_5
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v2}, Ljhp;->v(I)I

    move-result v3

    packed-switch v3, :pswitch_data_5

    invoke-static {p1, v2}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_5

    :pswitch_1b
    invoke-static {p1, v2}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v1

    goto :goto_5

    :cond_4
    invoke-static {p1, v0}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance p1, Ljsz;

    invoke-direct {p1, v1}, Ljsz;-><init>(I)V

    return-object p1

    :pswitch_1c
    invoke-static {p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v0

    :goto_6
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v0, :cond_5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Ljhp;->v(I)I

    move-result v4

    packed-switch v4, :pswitch_data_6

    invoke-static {p1, v3}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_6

    :pswitch_1d
    sget-object v2, Ljrf;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v3, v2}, Ljhp;->D(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Ljrf;

    goto :goto_6

    :pswitch_1e
    invoke-static {p1, v3}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v1

    goto :goto_6

    :cond_5
    invoke-static {p1, v0}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance p1, Ljsw;

    invoke-direct {p1, v1, v2}, Ljsw;-><init>(ILjrf;)V

    return-object p1

    :pswitch_1f
    invoke-static {p1}, Ljhp;->z(Landroid/os/Parcel;)I

    move-result v0

    :goto_7
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v0, :cond_6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Ljhp;->v(I)I

    move-result v4

    packed-switch v4, :pswitch_data_7

    invoke-static {p1, v3}, Ljhp;->K(Landroid/os/Parcel;I)V

    goto :goto_7

    :pswitch_20
    invoke-static {p1, v3}, Ljhp;->C(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v2

    goto :goto_7

    :pswitch_21
    invoke-static {p1, v3}, Ljhp;->x(Landroid/os/Parcel;I)I

    move-result v1

    goto :goto_7

    :cond_6
    invoke-static {p1, v0}, Ljhp;->I(Landroid/os/Parcel;I)V

    new-instance p1, Ljsx;

    invoke-direct {p1, v1, v2}, Ljsx;-><init>(ILandroid/os/IBinder;)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_1c
        :pswitch_1a
        :pswitch_18
        :pswitch_14
        :pswitch_11
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_13
        :pswitch_12
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_17
        :pswitch_16
        :pswitch_15
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_19
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x2
        :pswitch_1b
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x2
        :pswitch_1e
        :pswitch_1d
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x1
        :pswitch_21
        :pswitch_20
    .end packed-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    iget v0, p0, Ljsy;->a:I

    packed-switch v0, :pswitch_data_0

    new-array p1, p1, [Lcom/google/android/libraries/barhopper/Barcode$UrlBookmark;

    return-object p1

    :pswitch_0
    new-array p1, p1, [Lcom/google/android/libraries/barhopper/Barcode$Sms;

    return-object p1

    :pswitch_1
    new-array p1, p1, [Lcom/google/android/libraries/barhopper/Barcode$Phone;

    return-object p1

    :pswitch_2
    new-array p1, p1, [Lcom/google/android/libraries/barhopper/Barcode$PersonName;

    return-object p1

    :pswitch_3
    new-array p1, p1, [Lcom/google/android/libraries/barhopper/Barcode$GeoPoint;

    return-object p1

    :pswitch_4
    new-array p1, p1, [Lcom/google/android/libraries/barhopper/Barcode$FlightSegment;

    return-object p1

    :pswitch_5
    new-array p1, p1, [Lcom/google/android/libraries/barhopper/Barcode$Email;

    return-object p1

    :pswitch_6
    new-array p1, p1, [Lcom/google/android/libraries/barhopper/Barcode$DriverLicense;

    return-object p1

    :pswitch_7
    new-array p1, p1, [Lcom/google/android/libraries/barhopper/Barcode$ContactInfo;

    return-object p1

    :pswitch_8
    new-array p1, p1, [Lcom/google/android/libraries/barhopper/Barcode$CalendarEvent;

    return-object p1

    :pswitch_9
    new-array p1, p1, [Lcom/google/android/libraries/barhopper/Barcode$CalendarDateTime;

    return-object p1

    :pswitch_a
    new-array p1, p1, [Lcom/google/android/libraries/barhopper/Barcode$BoardingPass;

    return-object p1

    :pswitch_b
    new-array p1, p1, [Lcom/google/android/libraries/barhopper/Barcode$Address;

    return-object p1

    :pswitch_c
    new-array p1, p1, [Lcom/google/android/libraries/barhopper/Barcode;

    return-object p1

    :pswitch_d
    new-array p1, p1, [Ljtd;

    return-object p1

    :pswitch_e
    new-array p1, p1, [Ljtc;

    return-object p1

    :pswitch_f
    new-array p1, p1, [Ljtb;

    return-object p1

    :pswitch_10
    new-array p1, p1, [Ljta;

    return-object p1

    :pswitch_11
    new-array p1, p1, [Ljsz;

    return-object p1

    :pswitch_12
    new-array p1, p1, [Ljsw;

    return-object p1

    :pswitch_13
    new-array p1, p1, [Ljsx;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
