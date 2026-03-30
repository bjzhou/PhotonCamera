.class public final Lhoq;
.super Lhpd;
.source "PG"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x1a

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    new-instance v0, Lak;

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

    :goto_3
    const/16 v1, 0x13

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0xe

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_5

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_9
    sput-object v0, Lhoq;->CREATOR:Landroid/os/Parcelable$Creator;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

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

    nop

    :goto_b
    return-void

    nop

    :goto_c
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_d
    invoke-direct {v0, v1}, Lak;-><init>(I)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(JLlxm;Lryb;Ljava/lang/String;Ljava/lang/String;Lj$/time/Instant;Lj$/time/Instant;Landroid/net/Uri;ZLpck;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct/range {p0 .. p12}, Lhpd;-><init>(JLlxm;Lryb;Ljava/lang/String;Ljava/lang/String;Lj$/time/Instant;Lj$/time/Instant;Landroid/net/Uri;ZLpck;I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

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

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lhpd;->e:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget p0, p0, Lhpd;->l:I

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Lhpd;->g:Lj$/time/Instant;

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

    :goto_a
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_c
    const v1, 0xb

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    :goto_e
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v0, p0, Lhpd;->d:Lryb;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_11
    iget-wide v0, p0, Lhpd;->b:J

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v0, p0, Lhpd;->i:Landroid/net/Uri;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_13
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/32 :goto_1f

    nop

    nop

    :goto_14
    iget-boolean p2, p0, Lhpd;->j:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_15
    goto/32 :goto_3

    nop

    nop

    :goto_16
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v0, p0, Lhpd;->h:Lj$/time/Instant;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_19
    iget-object p2, p0, Lhpd;->k:Lpck;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v0, p0, Lhpd;->c:Llxm;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1c
    const v0, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1d
    rem-int v0, v0, v1

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

    :goto_1e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v0, p0, Lhpd;->f:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method
