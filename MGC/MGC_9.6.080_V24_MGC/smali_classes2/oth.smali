.class public final Loth;
.super Lolk;
.source "PG"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final a:Loti;

.field final b:I

.field final c:I

.field final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, v1}, Lonb;-><init>(I)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x5

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

    :goto_2
    goto/32 :goto_7

    nop

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

    nop

    nop

    :goto_4
    new-instance v0, Lonb;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    :goto_7
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x9

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/16 v1, 0xe

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_b
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

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_d
    sput-object v0, Loth;->CREATOR:Landroid/os/Parcelable$Creator;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Loti;III)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lolk;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    iput p3, p0, Loth;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2
    iput p2, p0, Loth;->b:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Loth;->a:Loti;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    :goto_5
    iput p4, p0, Loth;->d:I

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Losb;)V
    .locals 2

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    const/4 v1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_4
    const/4 v1, 0x3

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Loth;->a:Loti;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Loth;->a:Loti;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Loth;->a:Loti;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_9
    if-ne v0, v1, :cond_0

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p0, p0, Loth;->a:Loti;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v1, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-ne v0, v1, :cond_1

    nop

    goto/32 :goto_18

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-ne v0, v1, :cond_2

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_10
    invoke-interface {p1, p0}, Losb;->c(Loti;)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {v0, p0}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_13
    invoke-interface {p1, p0}, Losb;->b(Loti;)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_14
    invoke-interface {p1, p0}, Losb;->d(Loti;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget v0, p0, Loth;->b:I

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_16
    const-string p0, "Unknown type: "

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

    :goto_17
    return-void

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_8

    nop

    nop

    :goto_19
    const v1, 0x16

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1a
    return-void

    nop

    :goto_1b
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1c
    const v0, 0x1a

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

    :goto_1d
    invoke-interface {p1, p0}, Losb;->e(Loti;)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_1e
    const/4 v1, 0x1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    return-void

    nop

    :goto_22
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_24
    const-string p1, "ChannelEventParcelable"

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_25
    if-ne v0, v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-lez v0, :cond_4

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1f

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-ne v5, v3, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :cond_0
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-ne v0, v4, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_25

    nop

    nop

    :goto_4
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1c

    nop

    nop

    :goto_5
    const-string v2, "CLOSE_REASON_NORMAL"

    nop

    :goto_6
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_7
    const-string v0, "CHANNEL_OPENED"

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_9
    iget-object v1, p0, Loth;->a:Loti;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_a
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const-string v2, "CLOSE_REASON_LOCAL_CLOSE"

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_3d

    nop

    :goto_13
    iget p0, p0, Loth;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_11

    nop

    nop

    :goto_15
    const-string v0, ", appErrorCode="

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_16
    const v0, 0x1d

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/16 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_19
    goto/16 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const/4 v5, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/16 :goto_6

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_20

    nop

    nop

    :goto_1f
    const-string v0, "CHANNEL_CLOSED"

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_20
    const-string v2, "CLOSE_REASON_DISCONNECTED"

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_21
    if-ne v0, v2, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    :cond_3
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_22
    const-string v1, ", type="

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_23
    iget v0, p0, Loth;->b:I

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget v5, p0, Loth;->c:I

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    if-ne v0, v3, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    :cond_4
    goto/32 :goto_21

    nop

    nop

    :goto_26
    goto/16 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_28
    return-object p0

    nop

    :goto_29
    goto/32 :goto_41

    nop

    nop

    nop

    :goto_2a
    const/4 v4, 0x1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2b
    goto/16 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_2e
    const-string v0, "OUTPUT_CLOSED"

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_2f
    new-instance v3, Ljava/lang/StringBuilder;

    nop

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

    :goto_30
    const-string v0, ", closeReason="

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const-string p0, "]"

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

    :goto_32
    goto/16 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_34
    const/4 v2, 0x3

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const/4 v3, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_36
    if-ne v0, v5, :cond_5

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_37
    if-nez v5, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_39
    const-string v4, "ChannelEventParcelable[, channel="

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_3a
    goto/16 :goto_6

    nop

    :goto_3b
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_29

    nop

    :goto_3e
    goto/32 :goto_23

    nop

    nop

    :goto_3f
    if-ne v5, v4, :cond_7

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_40
    if-ne v5, v2, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_3e

    nop

    nop

    :goto_42
    rem-int v0, v0, v1

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

    :goto_43
    goto/16 :goto_6

    nop

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_45
    const-string v2, "CLOSE_REASON_REMOTE_CLOSE"

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_46
    const-string v0, "INPUT_CLOSED"

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p1, v0}, Lolx;->i(Landroid/os/Parcel;I)V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1
    iget-object v2, p0, Loth;->a:Loti;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p1, p2, p0}, Lolx;->m(Landroid/os/Parcel;II)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v1, 0x2

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

    :goto_4
    rem-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    iget v1, p0, Loth;->c:I

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 p2, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_8
    const/4 p2, 0x4

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_9
    iget p0, p0, Loth;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_f

    nop

    :goto_b
    invoke-static {p1, v1, v2, p2}, Lolx;->u(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    goto/32 :goto_7

    nop

    nop

    :goto_c
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {p1}, Lolx;->g(Landroid/os/Parcel;)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x2

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    :goto_12
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_13
    invoke-static {p1, p2, v1}, Lolx;->m(Landroid/os/Parcel;II)V

    goto/32 :goto_8

    nop

    nop

    :goto_14
    const v0, 0x16

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/4 p2, 0x5

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

    nop

    :goto_16
    iget v1, p0, Loth;->b:I

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {p1, p2, v1}, Lolx;->m(Landroid/os/Parcel;II)V

    goto/32 :goto_15

    nop

    nop
.end method
