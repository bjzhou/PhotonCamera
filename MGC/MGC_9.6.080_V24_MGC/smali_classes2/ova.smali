.class public final synthetic Lova;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lojf;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:[B

.field public final synthetic d:Lcom/google/android/gms/wearable/MessageOptions;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;[BLcom/google/android/gms/wearable/MessageOptions;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p4, p0, Lova;->d:Lcom/google/android/gms/wearable/MessageOptions;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lova;->a:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p2, p0, Lova;->b:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p3, p0, Lova;->c:[B

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0, p0}, Lfuo;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1
    invoke-direct {p2, v0}, Lovt;-><init>(Loia;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p2, p0, Lova;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_3
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_4
    invoke-static {v0, p2}, Lfuo;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p2, p0, Lova;->c:[B

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-instance p2, Lovt;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1, p0, v0}, Lfum;->A(ILandroid/os/Parcel;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p2, p0, Lova;->b:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/32 :goto_8

    nop

    nop

    :goto_a
    check-cast p1, Louw;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    new-instance v0, Lovb;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    check-cast p2, Lpic;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_d
    check-cast p1, Lovu;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p1}, Lfum;->a()Landroid/os/Parcel;

    move-result-object v0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {v0, p2}, Lovb;-><init>(Lpic;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/16 p0, 0x3b

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

    :goto_11
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object p0, p0, Lova;->d:Lcom/google/android/gms/wearable/MessageOptions;

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

    :goto_13
    return-void

    nop

    nop

    :goto_14
    invoke-virtual {p1}, Lojy;->t()Landroid/os/IInterface;

    move-result-object p1

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

    nop
.end method
