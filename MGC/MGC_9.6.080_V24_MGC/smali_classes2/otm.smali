.class public final Lotm;
.super Lolk;
.source "PG"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sput-object v0, Lotm;->CREATOR:Landroid/os/Parcelable$Creator;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/16 v1, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    const v0, 0x16

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_3
    new-instance v0, Lonb;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    :goto_5
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_a
    invoke-direct {v0, v1}, Lonb;-><init>(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_d
    const v1, 0x10

    nop

    goto/32 :goto_6

    nop

    nop

    nop
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lolk;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Lotm;->b:Ljava/lang/String;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    iput p1, p0, Lotm;->a:I

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    return-void

    nop
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x16

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1
    if-eq v1, v3, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-eq p0, p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    :cond_1
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return v2

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_5
    invoke-static {p0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    nop

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

    :goto_6
    iget v1, p0, Lotm;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v2, 0x0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_2
    goto/32 :goto_a

    nop

    :goto_9
    instance-of v1, p1, Lotm;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_c
    if-eqz v1, :cond_3

    nop

    goto/32 :goto_4

    nop

    :cond_3
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return v2

    nop

    :goto_e
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_f
    iget-object p1, p1, Lotm;->b:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_11
    if-nez p0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1b

    nop

    nop

    :goto_12
    iget-object p0, p0, Lotm;->b:Ljava/lang/String;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_13
    const v0, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_14
    const/4 v0, 0x1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    return v0

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    check-cast p1, Lotm;

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

    :goto_1a
    iget v3, p1, Lotm;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1b
    return v0

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget v0, p0, Lotm;->a:I

    nop

    goto/32 :goto_3

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

    nop

    nop

    :goto_2
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

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

    :goto_4
    iget-object p0, p0, Lotm;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_5
    invoke-static {p0}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    :cond_0
    goto/32 :goto_18

    nop

    :goto_1
    goto/16 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_2
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

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

    :goto_3
    const-string v0, "Connection handshake in progress"

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_4
    const-string v0, "Connect message malformed"

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
    invoke-static {v0, v1}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const-string v0, "ConnectionStateEvent: address: %s, state: %s"

    nop

    nop

    nop

    goto/32 :goto_2

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

    nop

    :pswitch_data_0
    .packed-switch -0x9
        :pswitch_7
        :pswitch_0
        :pswitch_e
        :pswitch_3
        :pswitch_4
        :pswitch_f
        :pswitch_a
        :pswitch_b
        :pswitch_d
        :pswitch_9
        :pswitch_8
        :pswitch_6
        :pswitch_1
        :pswitch_c
        :pswitch_2
        :pswitch_5
    .end packed-switch

    :goto_8
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_9
    goto/16 :goto_2c

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const-string v0, "Connected"

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const-string v0, "No bluetooth connection"

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_19

    nop

    :goto_d
    goto/16 :goto_2c

    nop

    nop

    :pswitch_2
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x1f

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const-string v1, "Unrecognized state value: "

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_10
    const-string v0, "Control plane transport connected"

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/16 :goto_2c

    nop

    :pswitch_3
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const-string v0, "Unknown failure"

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_13
    const-string v0, "Phone switching feature disabled"

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

    :goto_14
    goto/16 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_16
    const-string v0, "Did not receive connect msg"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_17
    iget v0, p0, Lotm;->a:I

    nop

    packed-switch v0, :pswitch_data_0

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/16 :goto_2c

    nop

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1c
    goto/16 :goto_2c

    nop

    nop

    :pswitch_6
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1d
    const-string v0, "Connection handshake complete"

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_1e
    goto/16 :goto_2c

    nop

    nop

    nop

    :pswitch_7
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_1f
    const-string v0, "Accounts Matched"

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/16 :goto_2c

    nop

    :pswitch_8
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_21
    const-string v0, "Migration status mismatch between watch and phone"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_22
    goto :goto_2c

    nop

    nop

    :pswitch_9
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto :goto_2c

    nop

    nop

    nop

    nop

    :pswitch_a
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_24
    iget-object p0, p0, Lotm;->b:Ljava/lang/String;

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_25
    rem-int v0, v0, v1

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

    nop

    :goto_26
    goto :goto_2c

    nop

    nop

    nop

    nop

    :pswitch_b
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto :goto_2c

    nop

    nop

    nop

    nop

    :pswitch_c
    goto/32 :goto_10

    nop

    nop

    :goto_29
    goto :goto_2c

    nop

    nop

    :pswitch_d
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_2a
    const v1, 0x13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_2b
    sget-object v0, Lcom/google/android/build/data/ERtJ/cVlffQDuQRSSY;->twVSeRLuCtP:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto :goto_2c

    nop

    :pswitch_e
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const-string v0, "Association to watch terminated"

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2f
    const-string v0, "Accounts mismatch"

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_30
    const-string v0, "Sync with old node suspended"

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const-string v0, "Another migration is already in progress"

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_32
    goto :goto_2c

    nop

    nop

    nop

    nop

    nop

    :pswitch_f
    goto/32 :goto_16

    nop

    nop

    nop

    nop
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p1, v1, p2}, Lolx;->m(Landroid/os/Parcel;II)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    :goto_6
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    invoke-static {p1, p2, p0}, Lolx;->v(Landroid/os/Parcel;ILjava/lang/String;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Lotm;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_9
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_a
    invoke-static {p1, v0}, Lolx;->i(Landroid/os/Parcel;I)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 p2, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {p1}, Lolx;->g(Landroid/os/Parcel;)I

    move-result v0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_e
    const v1, 0x15

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_10
    iget p2, p0, Lotm;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_11
    const v0, 0x13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop
.end method
