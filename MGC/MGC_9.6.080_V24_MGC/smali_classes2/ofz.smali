.class public final Lofz;
.super Lolk;
.source "PG"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final a:Lofz;


# instance fields
.field final b:I

.field public final c:I

.field public final d:Landroid/app/PendingIntent;

.field public final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Lofz;

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

    :goto_1
    if-lez v0, :cond_0

    nop

    goto/32 :goto_b

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_2
    invoke-direct {v0, v1}, Lofz;-><init>(I)V

    goto/32 :goto_c

    nop

    nop

    :goto_3
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    const v0, 0x8

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x13

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_7
    invoke-direct {v0, v1}, Lofh;-><init>(I)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v0, Lofh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_9
    sput-object v0, Lofz;->CREATOR:Landroid/os/Parcelable$Creator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    sput-object v0, Lofz;->a:Lofz;

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

    :goto_d
    rem-int v0, v0, v1

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

    nop

    :goto_e
    return-void

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v1, 0x7

    nop

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
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop
.end method

.method public constructor <init>(I)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

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

    :goto_2
    invoke-direct {p0, p1, v0, v0}, Lofz;-><init>(ILandroid/app/PendingIntent;Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(IILandroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Lofz;->b:I

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

    :goto_1
    iput-object p4, p0, Lofz;->e:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Lolk;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p3, p0, Lofz;->d:Landroid/app/PendingIntent;

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

    nop

    nop

    :goto_5
    iput p2, p0, Lofz;->c:I

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(ILandroid/app/PendingIntent;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lofz;-><init>(ILandroid/app/PendingIntent;Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public constructor <init>(ILandroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-direct {p0, v0, p1, p2, p3}, Lofz;-><init>(IILandroid/app/PendingIntent;Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x1

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

    nop
.end method


# virtual methods
.method public final a()Z
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2
    iget v0, p0, Lofz;->c:I

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    if-nez v0, :cond_0

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

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 p0, 0x1

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
    return p0

    nop

    nop

    nop

    :goto_6
    if-nez p0, :cond_1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lofz;->d:Landroid/app/PendingIntent;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_8
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop
.end method

.method public final b()Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget p0, p0, Lofz;->c:I

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

    :goto_1
    if-eqz p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    :goto_3
    return p0

    nop

    nop

    :goto_4
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    const/4 p0, 0x1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 p0, 0x0

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

    nop
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    goto/32 :goto_1f

    nop

    nop

    :goto_0
    check-cast p1, Lofz;

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

    :goto_1
    const v1, 0x4

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-eqz v1, :cond_0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget v1, p0, Lofz;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_4
    goto/32 :goto_10

    nop

    :goto_5
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v1, v3}, La;->aw(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_7
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    :goto_8
    if-eq v1, v3, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_9
    return v2

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_b
    if-eq p1, p0, :cond_3

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_c
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p0, p0, Lofz;->e:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_f
    return v2

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_11
    iget-object v1, p0, Lofz;->d:Landroid/app/PendingIntent;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_12
    if-nez p0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_17

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_14
    iget v3, p1, Lofz;->c:I

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

    :goto_15
    invoke-static {p0, p1}, La;->aw(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_16
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_17
    return v0

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_19
    if-nez v1, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1a
    instance-of v1, p1, Lofz;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1c
    iget-object p1, p1, Lofz;->e:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_1d
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1e
    add-int v0, v0, v1

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

    nop

    nop

    :goto_1f
    const v0, 0x13

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v3, p1, Lofz;->d:Landroid/app/PendingIntent;

    nop

    nop

    goto/32 :goto_6

    nop

    nop
.end method

.method public final hashCode()I
    .locals 2

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    iget-object v1, p0, Lofz;->d:Landroid/app/PendingIntent;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x10

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

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

    :goto_8
    iget-object p0, p0, Lofz;->e:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_b

    nop

    nop

    :goto_b
    iget v0, p0, Lofz;->c:I

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

    :goto_c
    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_d
    return p0

    nop

    nop

    :goto_e
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_26

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_47

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_5
        :pswitch_7
        :pswitch_e
        :pswitch_9
        :pswitch_3
        :pswitch_16
        :pswitch_f
        :pswitch_8
        :pswitch_1
        :pswitch_6
        :pswitch_12
        :pswitch_10
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xd
        :pswitch_4
        :pswitch_11
        :pswitch_a
        :pswitch_b
        :pswitch_13
        :pswitch_15
        :pswitch_0
        :pswitch_c
        :pswitch_18
        :pswitch_14
        :pswitch_17
        :pswitch_d
        :pswitch_19
    .end packed-switch

    :goto_2
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v1, p0, Lofz;->e:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const-string v1, "SERVICE_INVALID"

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

    :goto_5
    goto/16 :goto_26

    nop

    nop

    :goto_6
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    const-string v1, "DRIVE_EXTERNAL_STORAGE_REQUIRED"

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {v2, v1, v0}, Lolx;->ar(Ljava/lang/String;Ljava/lang/Object;Ljava/util/List;)V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_9
    const-string v1, "LICENSE_CHECK_FAILED"

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_a
    goto/16 :goto_26

    nop

    nop

    :pswitch_1
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/16 :goto_26

    nop

    :pswitch_2
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_c
    const-string v1, "SIGN_IN_REQUIRED"

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

    :goto_d
    goto/16 :goto_26

    nop

    nop

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_e
    const-string v1, "API_DISABLED_FOR_CONNECTION"

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_f
    goto/16 :goto_26

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_10
    goto/16 :goto_26

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const-string v2, "message"

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

    :goto_13
    goto/16 :goto_26

    nop

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const-string v1, "INTERRUPTED"

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_53

    nop

    :goto_16
    const v1, 0x12

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_17
    const-string v2, "resolution"

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const-string v1, "SERVICE_DISABLED"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_1a
    const-string v1, "API_DISABLED"

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_1b
    goto/16 :goto_26

    nop

    nop

    nop

    :pswitch_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const-string v1, "NETWORK_ERROR"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v1, p0, Lofz;->d:Landroid/app/PendingIntent;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1e
    const-string v1, "RESOLUTION_REQUIRED"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto :goto_26

    nop

    nop

    :pswitch_7
    goto/32 :goto_52

    nop

    nop

    :goto_21
    const-string v1, "RESTRICTED_PROFILE"

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const-string v1, "INVALID_ACCOUNT"

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

    :goto_23
    goto :goto_26

    nop

    nop

    nop

    nop

    nop

    :pswitch_8
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto :goto_26

    nop

    nop

    nop

    nop

    :pswitch_9
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const-string v1, "UNFINISHED"

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_27
    const-string v1, "API_INSTALL_REQUIRED"

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto :goto_26

    nop

    nop

    nop

    nop

    nop

    :pswitch_a
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto :goto_26

    nop

    nop

    :pswitch_b
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-static {v0, p0}, Lolx;->aq(Ljava/util/List;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

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

    :goto_2b
    const-string v1, "TIMEOUT"

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_2c
    const-string v1, "DEVELOPER_ERROR"

    nop

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

    :goto_2d
    const-string v1, "SIGN_IN_FAILED"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_2e
    const-string v3, ")"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_3c

    nop

    nop

    :goto_30
    const v0, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_31
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    new-instance v0, Ljava/util/ArrayList;

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

    :goto_33
    goto/16 :goto_26

    nop

    nop

    nop

    nop

    nop

    :pswitch_c
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_34
    const/16 v2, 0x5dc

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_35
    const-string v1, "SERVICE_VERSION_UPDATE_REQUIRED"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_36
    goto/16 :goto_26

    nop

    nop

    nop

    :pswitch_d
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_37
    goto/16 :goto_26

    nop

    nop

    :pswitch_e
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_38
    goto/16 :goto_26

    nop

    nop

    nop

    nop

    nop

    :pswitch_f
    goto/32 :goto_1e

    nop

    nop

    :goto_39
    const-string v1, "API_VERSION_UPDATE_REQUIRED"

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    goto/16 :goto_26

    nop

    nop

    nop

    nop

    nop

    :pswitch_10
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-static {v2, v1, v0}, Lolx;->ar(Ljava/lang/String;Ljava/lang/Object;Ljava/util/List;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iget v1, p0, Lofz;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    const-string v1, "UNKNOWN"

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3e
    goto/16 :goto_26

    nop

    nop

    :pswitch_11
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-static {v1, v2, v3}, La;->br(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_40
    const-string v1, "CANCELED"

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    goto/16 :goto_26

    nop

    nop

    nop

    nop

    nop

    :pswitch_12
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_42
    invoke-static {v2, v1, v0}, Lolx;->ar(Ljava/lang/String;Ljava/lang/Object;Ljava/util/List;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_43
    goto/16 :goto_26

    nop

    nop

    nop

    :pswitch_13
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_44
    const-string v1, "INTERNAL_ERROR"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_45
    goto/16 :goto_26

    nop

    :pswitch_14
    goto/32 :goto_57

    nop

    nop

    :goto_46
    const/16 v2, 0x63

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    const-string v1, "SERVICE_MISSING_PERMISSION"

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_48
    if-ne v1, v2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    const-string v2, "statusCode"

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    if-ne v1, v2, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_2
    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    const-string v2, "UNKNOWN_ERROR_CODE("

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    goto/16 :goto_26

    nop

    nop

    nop

    nop

    nop

    :pswitch_15
    goto/32 :goto_55

    nop

    nop

    nop

    :goto_4d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    goto/16 :goto_26

    nop

    :pswitch_16
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    goto/16 :goto_26

    nop

    nop

    nop

    :pswitch_17
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    sget-object v1, Landroidx/wear/widget/xrA/fuyPMnCeXU;->qrJrBmU:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_51
    goto/16 :goto_26

    nop

    nop

    nop

    :pswitch_18
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    const-string v1, "SERVICE_MISSING"

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

    nop

    :goto_53
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_54
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_55
    const-string v1, "SERVICE_UPDATING"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_56
    const-string v1, "SUCCESS"

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

    :goto_57
    const-string v1, "RESOLUTION_ACTIVITY_NOT_FOUND"

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_58
    goto/16 :goto_26

    nop

    :pswitch_19
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_0
    iget-object v2, p0, Lofz;->d:Landroid/app/PendingIntent;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    iget v2, p0, Lofz;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {p1, v0}, Lolx;->i(Landroid/os/Parcel;I)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {p1, v1, v2, p2}, Lolx;->u(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {p1, v1, v2}, Lolx;->m(Landroid/os/Parcel;II)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {p1}, Lolx;->g(Landroid/os/Parcel;)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

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
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

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

    :goto_b
    const/4 p2, 0x4

    nop

    nop

    goto/32 :goto_16

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

    goto/32 :goto_a

    nop

    nop

    :goto_d
    const/4 v1, 0x2

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_e
    iget v2, p0, Lofz;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_f
    invoke-static {p1, p2, p0}, Lolx;->v(Landroid/os/Parcel;ILjava/lang/String;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_2

    nop

    :goto_11
    const v1, 0xd

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_12
    const v0, 0x4

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

    :goto_13
    const/4 v1, 0x3

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_14
    goto/32 :goto_3

    nop

    :goto_15
    const/4 v1, 0x1

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

    nop

    :goto_16
    iget-object p0, p0, Lofz;->e:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {p1, v1, v2}, Lolx;->m(Landroid/os/Parcel;II)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop
.end method
