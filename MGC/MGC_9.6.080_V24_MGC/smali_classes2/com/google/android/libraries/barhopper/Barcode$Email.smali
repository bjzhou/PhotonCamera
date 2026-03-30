.class public Lcom/google/android/libraries/barhopper/Barcode$Email;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final HOME:I = 0x2

.field public static final UNKNOWN:I = 0x0

.field public static final WORK:I = 0x1


# instance fields
.field public address:Ljava/lang/String;

.field public body:Ljava/lang/String;

.field public subject:Ljava/lang/String;

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_0
    const/4 v1, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v0, Lowk;

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

    :goto_5
    add-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    sput-object v0, Lcom/google/android/libraries/barhopper/Barcode$Email;->CREATOR:Landroid/os/Parcelable$Creator;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {v0, v1}, Lowk;-><init>(I)V

    goto/32 :goto_6

    nop

    nop

    :goto_8
    return-void

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_b
    const v1, 0x1a

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

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

    :goto_d
    const v0, 0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_b

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

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

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

    nop

    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_7

    nop

    nop

    :goto_4
    iput v0, p0, Lcom/google/android/libraries/barhopper/Barcode$Email;->type:I

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Lcom/google/android/libraries/barhopper/Barcode$Email;->body:Ljava/lang/String;

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
    iput-object v0, p0, Lcom/google/android/libraries/barhopper/Barcode$Email;->subject:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8
    iput-object v0, p0, Lcom/google/android/libraries/barhopper/Barcode$Email;->address:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-void

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

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1}, Lcom/google/android/libraries/barhopper/Barcode$Email;-><init>(Landroid/os/Parcel;)V

    goto/32 :goto_0

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

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p2, p0, Lcom/google/android/libraries/barhopper/Barcode$Email;->address:Ljava/lang/String;

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

    :goto_3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lcom/google/android/libraries/barhopper/Barcode$Email;->body:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p2, p0, Lcom/google/android/libraries/barhopper/Barcode$Email;->subject:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget p2, p0, Lcom/google/android/libraries/barhopper/Barcode$Email;->type:I

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop
.end method
