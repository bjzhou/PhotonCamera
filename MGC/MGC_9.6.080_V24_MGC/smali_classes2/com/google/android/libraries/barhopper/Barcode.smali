.class public Lcom/google/android/libraries/barhopper/Barcode;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final AZTEC:I = 0x1000

.field public static final BOARDING_PASS:I = 0xd

.field public static final CALENDAR_EVENT:I = 0xb

.field public static final CODABAR:I = 0x8

.field public static final CODE_128:I = 0x1

.field public static final CODE_39:I = 0x2

.field public static final CODE_93:I = 0x4

.field public static final CONTACT_INFO:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final DATA_MATRIX:I = 0x10

.field public static final DRIVER_LICENSE:I = 0xc

.field public static final EAN_13:I = 0x20

.field public static final EAN_8:I = 0x40

.field public static final EMAIL:I = 0x2

.field public static final GEO:I = 0xa

.field public static final ISBN:I = 0x3

.field public static final ITF:I = 0x80

.field public static final PDF417:I = 0x800

.field public static final PHONE:I = 0x4

.field public static final PRODUCT:I = 0x5

.field public static final QR_CODE:I = 0x100

.field public static final SMS:I = 0x6

.field public static final TEXT:I = 0x7

.field public static final TEZ_CODE:I = 0x8000

.field public static final UNKNOWN_FORMAT:I = 0x0

.field public static final UNRECOGNIZED:I = 0x0

.field public static final UPC_A:I = 0x200

.field public static final UPC_E:I = 0x400

.field public static final URL:I = 0x8

.field public static final WIFI:I = 0x9


# instance fields
.field public boardingPass:Lcom/google/android/libraries/barhopper/Barcode$BoardingPass;

.field public calendarEvent:Lcom/google/android/libraries/barhopper/Barcode$CalendarEvent;

.field public confidenceScore:D

.field public contactInfo:Lcom/google/android/libraries/barhopper/Barcode$ContactInfo;

.field public cornerPoints:[Landroid/graphics/Point;

.field public displayValue:Ljava/lang/String;

.field public driverLicense:Lcom/google/android/libraries/barhopper/Barcode$DriverLicense;

.field public email:Lcom/google/android/libraries/barhopper/Barcode$Email;

.field public format:I

.field public geoPoint:Lcom/google/android/libraries/barhopper/Barcode$GeoPoint;

.field public isRecognized:Z

.field public phone:Lcom/google/android/libraries/barhopper/Barcode$Phone;

.field public rawBytes:[B

.field public rawValue:Ljava/lang/String;

.field public sms:Lcom/google/android/libraries/barhopper/Barcode$Sms;

.field public url:Lcom/google/android/libraries/barhopper/Barcode$UrlBookmark;

.field public valueFormat:I

.field public wifi:Lcom/google/android/libraries/barhopper/Barcode$WiFi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_9

    nop

    :goto_2
    goto/32 :goto_3

    nop

    nop

    :goto_3
    new-instance v0, Lowk;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_5
    const v1, 0x18

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0, v1}, Lowk;-><init>(I)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_7
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_2

    nop

    nop

    :goto_b
    const v0, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    sput-object v0, Lcom/google/android/libraries/barhopper/Barcode;->CREATOR:Landroid/os/Parcelable$Creator;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v0, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_2
    iput-object v0, p0, Lcom/google/android/libraries/barhopper/Barcode;->email:Lcom/google/android/libraries/barhopper/Barcode$Email;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_4
    iput-object v0, p0, Lcom/google/android/libraries/barhopper/Barcode;->displayValue:Ljava/lang/String;

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_5
    const-class v0, Lcom/google/android/libraries/barhopper/Barcode$Phone;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_6
    iput v0, p0, Lcom/google/android/libraries/barhopper/Barcode;->valueFormat:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const-class v0, Lcom/google/android/libraries/barhopper/Barcode$ContactInfo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_a
    const-class v0, Lcom/google/android/libraries/barhopper/Barcode$WiFi;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_c
    const-class v0, Lcom/google/android/libraries/barhopper/Barcode$CalendarEvent;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput-object v0, p0, Lcom/google/android/libraries/barhopper/Barcode;->url:Lcom/google/android/libraries/barhopper/Barcode$UrlBookmark;

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_f
    check-cast v0, Lcom/google/android/libraries/barhopper/Barcode$GeoPoint;

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    check-cast v0, Lcom/google/android/libraries/barhopper/Barcode$DriverLicense;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const-class v0, Lcom/google/android/libraries/barhopper/Barcode$DriverLicense;

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_14
    iput-object v0, p0, Lcom/google/android/libraries/barhopper/Barcode;->phone:Lcom/google/android/libraries/barhopper/Barcode$Phone;

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_16
    const-class v0, Lcom/google/android/libraries/barhopper/Barcode$Email;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_18
    check-cast v0, Lcom/google/android/libraries/barhopper/Barcode$UrlBookmark;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iput-object v0, p0, Lcom/google/android/libraries/barhopper/Barcode;->rawValue:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_1a
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_1d
    iput-object v0, p0, Lcom/google/android/libraries/barhopper/Barcode;->sms:Lcom/google/android/libraries/barhopper/Barcode$Sms;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    check-cast v0, Lcom/google/android/libraries/barhopper/Barcode$Phone;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1f
    check-cast p1, Lcom/google/android/libraries/barhopper/Barcode$BoardingPass;

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_20
    iput v0, p0, Lcom/google/android/libraries/barhopper/Barcode;->format:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_21
    iput-object v0, p0, Lcom/google/android/libraries/barhopper/Barcode;->driverLicense:Lcom/google/android/libraries/barhopper/Barcode$DriverLicense;

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_22
    check-cast v0, Lcom/google/android/libraries/barhopper/Barcode$Email;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iput-object v0, p0, Lcom/google/android/libraries/barhopper/Barcode;->geoPoint:Lcom/google/android/libraries/barhopper/Barcode$GeoPoint;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_24
    check-cast v0, Lcom/google/android/libraries/barhopper/Barcode$WiFi;

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_25
    const-class v0, Lcom/google/android/libraries/barhopper/Barcode$UrlBookmark;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    check-cast v0, Lcom/google/android/libraries/barhopper/Barcode$ContactInfo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iput-object p1, p0, Lcom/google/android/libraries/barhopper/Barcode;->boardingPass:Lcom/google/android/libraries/barhopper/Barcode$BoardingPass;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

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

    nop

    :goto_2e
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iput-object v0, p0, Lcom/google/android/libraries/barhopper/Barcode;->contactInfo:Lcom/google/android/libraries/barhopper/Barcode$ContactInfo;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_32
    check-cast v0, Lcom/google/android/libraries/barhopper/Barcode$CalendarEvent;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_33
    iput-object v0, p0, Lcom/google/android/libraries/barhopper/Barcode;->calendarEvent:Lcom/google/android/libraries/barhopper/Barcode$CalendarEvent;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_34
    check-cast v0, [Landroid/graphics/Point;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_35
    const-class v0, Lcom/google/android/libraries/barhopper/Barcode$Sms;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iput-object v0, p0, Lcom/google/android/libraries/barhopper/Barcode;->cornerPoints:[Landroid/graphics/Point;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_3a
    return-void

    nop

    nop

    :goto_3b
    iput-object v0, p0, Lcom/google/android/libraries/barhopper/Barcode;->wifi:Lcom/google/android/libraries/barhopper/Barcode$WiFi;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_3c
    check-cast v0, Lcom/google/android/libraries/barhopper/Barcode$Sms;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    const-class v0, Lcom/google/android/libraries/barhopper/Barcode$GeoPoint;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_3e
    const-class v0, Lcom/google/android/libraries/barhopper/Barcode$BoardingPass;

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/libraries/barhopper/Barcode-IA;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1}, Lcom/google/android/libraries/barhopper/Barcode;-><init>(Landroid/os/Parcel;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public getBoundingBox()Landroid/graphics/Rect;
    .locals 7

    goto/32 :goto_1d

    nop

    nop

    :goto_0
    move v3, v2

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1
    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget v5, v5, Landroid/graphics/Point;->y:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_5
    iget v6, v5, Landroid/graphics/Point;->x:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_6
    aget-object v5, v5, v0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_7
    const/high16 v1, -0x80000000

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-instance p0, Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_a
    const v2, 0x7fffffff

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto :goto_e

    nop

    :goto_c
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_d
    move v2, v1

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_18

    nop

    nop

    :goto_f
    const v1, 0x19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-lt v0, v6, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_11
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_13
    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_15
    move v4, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1f

    nop

    :goto_17
    const/4 v0, 0x0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v5, p0, Lcom/google/android/libraries/barhopper/Barcode;->cornerPoints:[Landroid/graphics/Point;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_19
    iget v6, v5, Landroid/graphics/Point;->x:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1a
    array-length v6, v5

    nop

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

    :goto_1b
    iget v6, v5, Landroid/graphics/Point;->y:I

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const v0, 0xe

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1e
    invoke-direct {p0, v3, v4, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_4

    nop

    :goto_20
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_20

    nop

    nop

    nop
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p2, p0, Lcom/google/android/libraries/barhopper/Barcode;->wifi:Lcom/google/android/libraries/barhopper/Barcode$WiFi;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    iget p2, p0, Lcom/google/android/libraries/barhopper/Barcode;->valueFormat:I

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto/32 :goto_1a

    nop

    nop

    :goto_6
    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lcom/google/android/libraries/barhopper/Barcode;->boardingPass:Lcom/google/android/libraries/barhopper/Barcode$BoardingPass;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p2, p0, Lcom/google/android/libraries/barhopper/Barcode;->email:Lcom/google/android/libraries/barhopper/Barcode$Email;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p2, p0, Lcom/google/android/libraries/barhopper/Barcode;->sms:Lcom/google/android/libraries/barhopper/Barcode$Sms;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto/32 :goto_1e

    nop

    nop

    :goto_b
    iget p2, p0, Lcom/google/android/libraries/barhopper/Barcode;->format:I

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_c
    iget-object p2, p0, Lcom/google/android/libraries/barhopper/Barcode;->phone:Lcom/google/android/libraries/barhopper/Barcode$Phone;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p2, p0, Lcom/google/android/libraries/barhopper/Barcode;->driverLicense:Lcom/google/android/libraries/barhopper/Barcode$DriverLicense;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p2, p0, Lcom/google/android/libraries/barhopper/Barcode;->url:Lcom/google/android/libraries/barhopper/Barcode$UrlBookmark;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_11
    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto/32 :goto_7

    nop

    nop

    :goto_13
    iget-object p2, p0, Lcom/google/android/libraries/barhopper/Barcode;->contactInfo:Lcom/google/android/libraries/barhopper/Barcode$ContactInfo;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object p2, p0, Lcom/google/android/libraries/barhopper/Barcode;->displayValue:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_17
    iget-object p2, p0, Lcom/google/android/libraries/barhopper/Barcode;->geoPoint:Lcom/google/android/libraries/barhopper/Barcode$GeoPoint;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_18
    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1a
    iget-object p2, p0, Lcom/google/android/libraries/barhopper/Barcode;->calendarEvent:Lcom/google/android/libraries/barhopper/Barcode$CalendarEvent;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object p2, p0, Lcom/google/android/libraries/barhopper/Barcode;->rawValue:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/32 :goto_8

    nop

    nop

    :goto_1e
    iget-object p2, p0, Lcom/google/android/libraries/barhopper/Barcode;->cornerPoints:[Landroid/graphics/Point;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p1, p0, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto/32 :goto_3

    nop

    nop
.end method
