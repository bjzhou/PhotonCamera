.class public final Lowk;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field private final synthetic a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput p1, p0, Lowk;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Lrgn;-><init>(Landroid/os/Parcel;)V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    :try_start_0
    sget-object v0, Lttd;->j:Ljava/util/ArrayDeque;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    nop

    nop

    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    new-instance v0, Lttd;

    nop

    nop

    nop

    invoke-direct {v0}, Lttd;-><init>()V

    goto :goto_3

    nop

    nop

    nop

    nop

    :cond_0
    sget-object v0, Lttd;->j:Ljava/util/ArrayDeque;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    check-cast v0, Lttd;

    nop

    nop

    nop

    :goto_3
    monitor-exit p0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-object p0

    nop

    nop

    :pswitch_0
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/barhopper/Barcode$Phone;-><init>(Landroid/os/Parcel;Lcom/google/android/libraries/barhopper/Barcode-IA;)V

    goto/32 :goto_41

    nop

    nop

    :goto_6
    new-instance p0, Lcom/google/android/libraries/barhopper/Barcode$UrlBookmark;

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_7
    sget-object p0, Lttd;->k:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_31

    nop

    nop

    :goto_9
    new-instance p0, Ltsz;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_a
    return-object p0

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_3d

    nop

    nop

    :goto_b
    new-instance p0, Lcom/google/android/libraries/barhopper/Barcode$WiFi;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/barhopper/Barcode;-><init>(Landroid/os/Parcel;Lcom/google/android/libraries/barhopper/Barcode-IA;)V

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_d
    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/barhopper/Barcode$DriverLicense;-><init>(Landroid/os/Parcel;Lcom/google/android/libraries/barhopper/Barcode-IA;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_e
    new-instance p0, Lcom/google/android/libraries/barhopper/Barcode$PersonName;

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0, p1}, Lttd;->b(Landroid/os/Parcel;)V

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_10
    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/barhopper/Barcode$WiFi;-><init>(Landroid/os/Parcel;Lcom/google/android/libraries/barhopper/Barcode-IA;)V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v0, 0x0

    nop

    nop

    nop

    packed-switch p0, :pswitch_data_0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return-object p0

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    new-instance p0, Lcom/google/android/libraries/barhopper/Barcode;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_14
    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/barhopper/Barcode$GeoPoint;-><init>(Landroid/os/Parcel;Lcom/google/android/libraries/barhopper/Barcode-IA;)V

    goto/32 :goto_1f

    nop

    nop

    :goto_15
    return-object p0

    nop

    :pswitch_4
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    new-instance p0, Lcom/google/android/libraries/barhopper/Barcode$GeoPoint;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_17
    new-instance p0, Lqze;

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_18
    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/barhopper/Barcode$Address;-><init>(Landroid/os/Parcel;Lcom/google/android/libraries/barhopper/Barcode-IA;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    new-instance p0, Lcom/google/android/libraries/barhopper/Barcode$CalendarEvent;

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-direct {p0, p1}, Ltsz;-><init>(Landroid/os/Parcel;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    new-instance p0, Ltsy;

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_1c
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1d
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_6
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    new-instance p0, Lcom/google/android/libraries/barhopper/Barcode$Phone;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1f
    return-object p0

    nop

    nop

    nop

    :pswitch_7
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/barhopper/Barcode$FlightSegment;-><init>(Landroid/os/Parcel;Lcom/google/android/libraries/barhopper/Barcode-IA;)V

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_21
    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/barhopper/Barcode$Email;-><init>(Landroid/os/Parcel;Lcom/google/android/libraries/barhopper/Barcode-IA;)V

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/barhopper/Barcode$ContactInfo;-><init>(Landroid/os/Parcel;Lcom/google/android/libraries/barhopper/Barcode-IA;)V

    goto/32 :goto_1c

    nop

    nop

    :goto_23
    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/barhopper/Barcode$UrlBookmark;-><init>(Landroid/os/Parcel;Lcom/google/android/libraries/barhopper/Barcode-IA;)V

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_24
    return-object p0

    nop

    :pswitch_8
    goto/32 :goto_3b

    nop

    nop

    :goto_25
    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/barhopper/Barcode$BoardingPass;-><init>(Landroid/os/Parcel;Lcom/google/android/libraries/barhopper/Barcode-IA;)V

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_26
    return-object p0

    nop

    nop

    :pswitch_9
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    new-instance p0, Lcom/google/android/libraries/barhopper/Barcode$DriverLicense;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    return-object v0

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_29
    return-object p0

    nop

    nop

    :pswitch_a
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2a
    new-instance p0, Lcom/google/android/libraries/barhopper/Barcode$Sms;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_b
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_2c
    new-instance p0, Lcom/google/android/libraries/barhopper/Barcode$FlightSegment;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    new-instance p0, Lcom/google/android/libraries/barhopper/Barcode$Address;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/barhopper/Barcode$PersonName;-><init>(Landroid/os/Parcel;Lcom/google/android/libraries/barhopper/Barcode-IA;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    monitor-enter p0

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_30
    return-object p0

    nop

    nop

    nop

    :pswitch_c
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_31
    new-instance p0, Lcom/google/android/libraries/barhopper/Barcode$ContactInfo;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/barhopper/Barcode$Sms;-><init>(Landroid/os/Parcel;Lcom/google/android/libraries/barhopper/Barcode-IA;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget p0, p0, Lowk;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_34
    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/barhopper/Barcode$CalendarDateTime;-><init>(Landroid/os/Parcel;Lcom/google/android/libraries/barhopper/Barcode-IA;)V

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_35
    invoke-direct {p0, p1}, Ltsy;-><init>(Landroid/os/Parcel;)V

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    return-object p0

    nop

    nop

    :pswitch_d
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_37
    new-instance p0, Lrgn;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_38
    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/barhopper/Barcode$CalendarEvent;-><init>(Landroid/os/Parcel;Lcom/google/android/libraries/barhopper/Barcode-IA;)V

    goto/32 :goto_a

    nop

    nop

    :goto_39
    return-object p0

    nop

    nop

    nop

    :pswitch_e
    goto/32 :goto_2d

    nop

    nop

    :goto_3a
    invoke-direct {p0, p1}, Lqze;-><init>(Landroid/os/Parcel;)V

    goto/32 :goto_12

    nop

    nop

    :goto_3b
    new-instance p0, Lcom/google/android/libraries/barhopper/Barcode$Email;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_3c
    new-instance p0, Lcom/google/android/libraries/barhopper/Barcode$BoardingPass;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    new-instance p0, Lcom/google/android/libraries/barhopper/Barcode$CalendarDateTime;

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_3e
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_f
    goto/32 :goto_13

    nop

    nop

    :goto_3f
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_10
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_40
    return-object p0

    nop

    nop

    nop

    :pswitch_11
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_41
    return-object p0

    nop

    nop

    :pswitch_12
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-direct {p0, p1}, Ltta;-><init>(Landroid/os/Parcel;)V

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_43
    new-instance p0, Ltta;

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_44
    goto/16 :goto_2

    nop

    :pswitch_13
    goto/32 :goto_43

    nop

    nop

    nop

    :goto_45
    throw p1

    nop

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_f
        :pswitch_b
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_10
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_12
        :pswitch_4
        :pswitch_11
        :pswitch_a
        :pswitch_3
        :pswitch_9
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_13
    .end packed-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_0
    new-array p0, p1, [Lcom/google/android/libraries/barhopper/Barcode$GeoPoint;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_0

    nop

    nop

    :goto_2
    new-array p0, p1, [Lcom/google/android/libraries/barhopper/Barcode$FlightSegment;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    :pswitch_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-array p0, p1, [Lcom/google/android/libraries/barhopper/Barcode;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_5
    new-array p0, p1, [Lqze;

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_6
    new-array p0, p1, [Lcom/google/android/libraries/barhopper/Barcode$UrlBookmark;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-object p0

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_8
    new-array p0, p1, [Lcom/google/android/libraries/barhopper/Barcode$Phone;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_9
    new-array p0, p1, [Lrgn;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_a
    new-array p0, p1, [Lcom/google/android/libraries/barhopper/Barcode$Sms;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_b
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_23

    nop

    nop

    :goto_c
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_e
    new-array p0, p1, [Lcom/google/android/libraries/barhopper/Barcode$BoardingPass;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_f
    return-object p0

    nop

    :pswitch_6
    goto/32 :goto_5

    nop

    nop

    :goto_10
    return-object p0

    nop

    nop

    nop

    :pswitch_7
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_11
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_8
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_12
    new-array p0, p1, [Lcom/google/android/libraries/barhopper/Barcode$PersonName;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_13
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_9
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_14
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_a
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_15
    new-array p0, p1, [Lcom/google/android/libraries/barhopper/Barcode$WiFi;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    new-array p0, p1, [Lcom/google/android/libraries/barhopper/Barcode$DriverLicense;

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_17
    new-array p0, p1, [Ltta;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_18
    new-array p0, p1, [Ltsz;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    new-array p0, p1, [Ltsy;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_1a
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_b
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1b
    new-array p0, p1, [Lcom/google/android/libraries/barhopper/Barcode$Address;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    new-array p0, p1, [Lttd;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_c
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1e
    new-array p0, p1, [Lcom/google/android/libraries/barhopper/Barcode$CalendarDateTime;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_1f
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_d
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_20
    iget p0, p0, Lowk;->a:I

    nop

    nop

    nop

    packed-switch p0, :pswitch_data_0

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    new-array p0, p1, [Lcom/google/android/libraries/barhopper/Barcode$Email;

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_22
    return-object p0

    nop

    :pswitch_e
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_23
    new-array p0, p1, [Lcom/google/android/libraries/barhopper/Barcode$CalendarEvent;

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_f
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_25
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_9
        :pswitch_e
        :pswitch_f
        :pswitch_3
        :pswitch_11
        :pswitch_10
        :pswitch_7
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_4
        :pswitch_8
        :pswitch_1
        :pswitch_d
        :pswitch_6
        :pswitch_12
        :pswitch_2
        :pswitch_c
        :pswitch_5
    .end packed-switch

    :goto_26
    new-array p0, p1, [Lcom/google/android/libraries/barhopper/Barcode$ContactInfo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_27
    return-object p0

    nop

    nop

    :pswitch_10
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_28
    return-object p0

    nop

    :pswitch_11
    goto/32 :goto_26

    nop

    nop

    :goto_29
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_12
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    return-object p0

    nop

    :pswitch_13
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop
.end method
