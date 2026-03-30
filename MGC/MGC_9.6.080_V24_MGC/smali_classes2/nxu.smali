.class public final Lnxu;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final a:Landroid/os/Parcelable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    sput-object v0, Lnxu;->CREATOR:Landroid/os/Parcelable$Creator;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0}, Lnxt;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    new-instance v0, Lnxt;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 2

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_3
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_4
    const v1, 0x1b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_19

    nop

    nop

    :goto_7
    invoke-interface {p1}, Landroid/os/Parcelable;->getClass()Ljava/lang/Class;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_9
    const-string v1, "android.content.Intent"

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_a
    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_b
    if-eqz v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_2
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_10
    const-string p1, "Only Android system classes can be passed in SystemParcelableWrapper."

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_11
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_13
    goto :goto_12

    nop

    nop

    :goto_14
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_15
    iput-object p1, p0, Lnxu;->a:Landroid/os/Parcelable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_16
    const-string v1, "android.os."

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_f

    nop

    nop

    :goto_1a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_1b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1c
    const-string v1, "android.app.PendingIntent"

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1d
    const v0, 0x13

    nop

    nop

    goto/32 :goto_4

    nop

    nop
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lnxu;->a:Landroid/os/Parcelable;

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

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method
