.class public final Lttg;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_3

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    const/4 v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2
    new-instance v0, Ltte;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    const v0, 0x1d

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_a

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
    rem-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_7
    sput-object v0, Lttg;->CREATOR:Landroid/os/Parcelable$Creator;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {v0, v1}, Ltte;-><init>(I)V

    goto/32 :goto_7

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_5

    nop

    nop

    :goto_c
    const v1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_0

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

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop
.end method

.method public constructor <init>()V
    .locals 1

    goto/32 :goto_3

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

    nop

    nop

    :goto_1
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    iput-boolean v0, p0, Lttg;->a:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-boolean v0, p0, Lttg;->d:Z

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public constructor <init>(I)V
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-nez p1, :cond_0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_4
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1a

    nop

    nop

    :goto_5
    and-int/lit8 v0, p1, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x19

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

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    and-int/lit8 p1, p1, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_c
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_2
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput-boolean v1, p0, Lttg;->e:Z

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_f
    iput-boolean v1, p0, Lttg;->d:Z

    nop

    nop

    :goto_10
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_11
    and-int/lit8 v0, p1, 0x1

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_12
    if-lez v0, :cond_3

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

    nop

    :cond_3
    goto/32 :goto_0

    nop

    :goto_13
    if-nez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_4
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iput-boolean v1, p0, Lttg;->b:Z

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-nez v0, :cond_5

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

    :cond_5
    goto/32 :goto_18

    nop

    nop

    :goto_17
    and-int/lit8 v0, p1, 0x2

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iput-boolean v1, p0, Lttg;->a:Z

    nop

    :goto_19
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1a
    iput-boolean v1, p0, Lttg;->c:Z

    nop

    nop

    :goto_1b
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1f
    and-int/lit8 v0, p1, 0x4

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    goto/32 :goto_a

    nop

    nop

    :goto_0
    move v0, v2

    nop

    nop

    :goto_1
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_4
    move v0, v1

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-nez v0, :cond_0

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

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    if-nez v0, :cond_1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1c

    nop

    nop

    :goto_7
    move v0, v1

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_9
    iput-boolean v1, p0, Lttg;->e:Z

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x17

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_b
    const/4 v1, 0x1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_e
    const v1, 0xd

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iput-boolean v0, p0, Lttg;->c:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_12
    const/4 v2, 0x0

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

    :goto_13
    if-nez v0, :cond_2

    nop

    goto/32 :goto_2a

    nop

    nop

    :cond_2
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iput-boolean v0, p0, Lttg;->b:Z

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_16
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    :cond_3
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_17
    iput-boolean v0, p0, Lttg;->d:Z

    nop

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

    :goto_18
    goto :goto_28

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/16 :goto_31

    nop

    nop

    :goto_1b
    goto/32 :goto_30

    nop

    nop

    :goto_1c
    move v0, v1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    move v0, v2

    nop

    :goto_1e
    goto/32 :goto_11

    nop

    nop

    :goto_1f
    iput-boolean v0, p0, Lttg;->a:Z

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_20
    if-nez p1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :cond_4
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_21
    goto :goto_26

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_23
    move v0, v1

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_25
    move v0, v2

    nop

    nop

    :goto_26
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    move v0, v2

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/16 :goto_1

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2c
    if-lez v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_5
    goto/32 :goto_2

    nop

    :goto_2d
    goto/16 :goto_1e

    nop

    nop

    :goto_2e
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_30
    move v1, v2

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_8

    nop

    nop
.end method


# virtual methods
.method public final describeContents()I
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

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    iget-boolean v1, p0, Lttg;->a:Z

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
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_3
    iget-boolean p0, p0, Lttg;->e:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_4
    const v0, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_5
    return-object p0

    nop

    nop

    :goto_6
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_8
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_9
    filled-new-array {v1, v2, v3, v4, p0}, [Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_b
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_c
    const v1, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_d
    iget-boolean v2, p0, Lttg;->b:Z

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_e
    iget-boolean v3, p0, Lttg;->c:Z

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_10
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_11
    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_12
    const-string v1, "ori=%b, gyro=%b, accel=%b, touch=%b, gestures=%b"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_13
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_14
    iget-boolean v4, p0, Lttg;->d:Z

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    :cond_0
    goto/32 :goto_16

    nop

    :goto_16
    goto/32 :goto_6

    nop

    nop

    :goto_17
    goto/32 :goto_b

    nop

    nop
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-boolean p2, p0, Lttg;->d:Z

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto/32 :goto_a

    nop

    nop

    :goto_4
    iget-boolean p0, p0, Lttg;->e:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto/32 :goto_9

    nop

    nop

    :goto_7
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-boolean p2, p0, Lttg;->a:Z

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

    :goto_9
    iget-boolean p2, p0, Lttg;->b:Z

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-boolean p2, p0, Lttg;->c:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop
.end method
