.class public Landroidx/media/AudioAttributesImplBase;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroidx/media/AudioAttributesImpl;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    :goto_0
    iput v0, p0, Landroidx/media/AudioAttributesImplBase;->d:I

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

    nop

    :goto_1
    iput v0, p0, Landroidx/media/AudioAttributesImplBase;->a:I

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    iput v0, p0, Landroidx/media/AudioAttributesImplBase;->b:I

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    :goto_4
    iput v0, p0, Landroidx/media/AudioAttributesImplBase;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_5
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v0, -0x1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 9

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v3, 0x5

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v3, 0x2

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    move v3, v4

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-eq v0, v2, :cond_0

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_5
    iget v2, p1, Landroidx/media/AudioAttributesImplBase;->c:I

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_6
    goto :goto_3

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    if-eq v3, v4, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-eqz v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget v0, p0, Landroidx/media/AudioAttributesImplBase;->a:I

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_a
    instance-of v0, p1, Landroidx/media/AudioAttributesImplBase;

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_b
    const/4 v4, 0x3

    nop

    nop

    nop

    nop

    packed-switch v3, :pswitch_data_0

    :pswitch_1
    goto/32 :goto_19

    nop

    nop

    :goto_c
    iget v3, p1, Landroidx/media/AudioAttributesImplBase;->d:I

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_d
    and-int/lit8 v4, v2, 0x1

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_e
    goto/16 :goto_3

    nop

    nop

    :goto_f
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget p0, p0, Landroidx/media/AudioAttributesImplBase;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_12
    and-int/lit16 v2, v2, 0x111

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v8, 0x4

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_14
    return v1

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_8
        :pswitch_5
        :pswitch_7
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_8
        :pswitch_2
        :pswitch_8
        :pswitch_1
        :pswitch_8
    .end packed-switch

    :goto_15
    goto/32 :goto_42

    nop

    nop

    nop

    :goto_16
    iget p1, p1, Landroidx/media/AudioAttributesImplBase;->d:I

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/16 v3, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_18
    and-int/lit8 v4, v2, 0x4

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

    :goto_19
    goto/16 :goto_4b

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/16 :goto_3

    nop

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_1

    nop

    nop

    :goto_1b
    goto/16 :goto_3

    nop

    nop

    :pswitch_4
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_1c
    move v3, v1

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/16 :goto_49

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_2e

    nop

    nop

    :goto_1f
    const/16 v3, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_20
    if-eq p0, p1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_21
    if-eq v4, v7, :cond_4

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_29

    nop

    nop

    :goto_22
    goto/16 :goto_3

    nop

    nop

    :pswitch_5
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/16 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_b

    nop

    nop

    :goto_25
    if-eq v3, v6, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    :cond_5
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_15

    nop

    nop

    :goto_27
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_28
    if-eq v0, v2, :cond_6

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_29
    move v3, v5

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_2a
    iget v2, p1, Landroidx/media/AudioAttributesImplBase;->b:I

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

    :goto_2b
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_2c
    const/4 v4, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const/4 v5, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    if-eq v3, v5, :cond_7

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_2f
    move v3, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    goto/16 :goto_3

    nop

    nop

    nop

    nop

    nop

    :pswitch_6
    goto/32 :goto_1f

    nop

    nop

    :goto_31
    goto/16 :goto_3

    nop

    :pswitch_7
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_32
    check-cast p1, Landroidx/media/AudioAttributesImplBase;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    return v1

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_35
    move v3, v6

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_36
    const v0, 0x15

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_37
    if-eq v0, v2, :cond_8

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_9

    nop

    nop

    :goto_38
    const v1, 0xd

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_39
    iget v0, p0, Landroidx/media/AudioAttributesImplBase;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3a
    iget v2, p1, Landroidx/media/AudioAttributesImplBase;->a:I

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_3b
    return v7

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_3d
    move v3, v7

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_3e
    const/4 v6, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    if-eq v4, v8, :cond_9

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_41
    iget v0, p0, Landroidx/media/AudioAttributesImplBase;->b:I

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_43
    or-int/lit8 v2, v2, 0x4

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_44
    if-lez v0, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_26

    nop

    :goto_45
    const/4 v7, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_46
    sget v4, Landroidx/media/AudioAttributesCompat;->b:I

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_47
    iget v3, p1, Landroidx/media/AudioAttributesImplBase;->a:I

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_48
    or-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    goto/16 :goto_3

    nop

    nop

    nop

    nop

    :goto_4b
    :pswitch_8
    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 3

    goto/32 :goto_5

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

    nop

    :goto_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_4
    iget v2, p0, Landroidx/media/AudioAttributesImplBase;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_5
    const v0, 0x20

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

    nop

    :goto_6
    rem-int v0, v0, v1

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

    :goto_7
    const v1, 0x20

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_a
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_b
    iget v0, p0, Landroidx/media/AudioAttributesImplBase;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_c
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_d
    iget p0, p0, Landroidx/media/AudioAttributesImplBase;->d:I

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_e
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

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

    :goto_f
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_11
    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

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

    :goto_12
    iget v1, p0, Landroidx/media/AudioAttributesImplBase;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_13
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_0
    iget v1, p0, Landroidx/media/AudioAttributesImplBase;->a:I

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_40

    nop

    nop

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/16 :goto_40

    nop

    nop

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x3

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const-string v1, " flags=0x"

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1e

    nop

    nop

    :goto_9
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const-string v1, "USAGE_NOTIFICATION_COMMUNICATION_DELAYED"

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_b
    return-object p0

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_f
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_d
        :pswitch_e
        :pswitch_c
        :pswitch_10
        :pswitch_6
        :pswitch_a
        :pswitch_5
        :pswitch_b
    .end packed-switch

    :goto_c
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const-string v1, " usage="

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

    :goto_e
    const-string v1, "USAGE_MEDIA"

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_f
    const-string v1, "USAGE_VOICE_COMMUNICATION_SIGNALLING"

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_10
    new-instance v2, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_11
    iget v1, p0, Landroidx/media/AudioAttributesImplBase;->d:I

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_12
    const-string v1, "USAGE_GAME"

    nop

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

    :goto_13
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_15
    const-string v1, "USAGE_NOTIFICATION_COMMUNICATION_REQUEST"

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/16 :goto_40

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_19
    if-ne v1, v2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_22

    nop

    nop

    :goto_1a
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3c

    nop

    :goto_1b
    sget-object v1, Lcom/google/android/apps/camera/ui/eduimageview/JrT/cUhjhcVVea;->nKTfosT:Ljava/lang/String;

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const-string v1, "USAGE_VOICE_COMMUNICATION"

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_1d
    goto/16 :goto_40

    nop

    nop

    :pswitch_3
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget v1, p0, Landroidx/media/AudioAttributesImplBase;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_4e

    nop

    nop

    :goto_20
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const-string v1, "USAGE_ASSISTANT"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_22
    const-string v1, " stream="

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_23
    goto/16 :goto_40

    nop

    nop

    :pswitch_4
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_24
    sget v2, Landroidx/media/AudioAttributesCompat;->b:I

    nop

    nop

    packed-switch v1, :pswitch_data_0

    :pswitch_5
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_25
    const v0, 0xa

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

    :goto_26
    sget-object v1, Lcom/google/android/apps/camera/filmstrip/transition/KkW/xCXUu;->PxvqpTwS:Ljava/lang/String;

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_28
    goto/16 :goto_40

    nop

    nop

    nop

    nop

    :pswitch_6
    goto/32 :goto_42

    nop

    nop

    :goto_29
    const-string v1, " derived"

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_2a
    goto/16 :goto_40

    nop

    nop

    nop

    nop

    :pswitch_7
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_2b
    goto/16 :goto_40

    nop

    nop

    nop

    nop

    nop

    :pswitch_8
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const-string v1, "USAGE_ASSISTANCE_ACCESSIBILITY"

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto/16 :goto_40

    nop

    nop

    nop

    :pswitch_9
    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_2f
    goto/16 :goto_40

    nop

    :pswitch_a
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_33
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_35
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_36
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_37
    goto :goto_40

    nop

    nop

    nop

    nop

    nop

    :pswitch_b
    goto/32 :goto_21

    nop

    nop

    :goto_38
    const-string v1, "AudioAttributesCompat:"

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

    nop

    :goto_39
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3b
    const-string v1, "USAGE_NOTIFICATION"

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_3c
    goto/32 :goto_c

    nop

    nop

    :goto_3d
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_3e
    const-string v1, "USAGE_ALARM"

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_3f
    const-string v1, "USAGE_UNKNOWN"

    nop

    :goto_40
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_41
    const-string v3, "unknown usage "

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

    :goto_42
    const-string v1, "USAGE_ASSISTANCE_SONIFICATION"

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_43
    goto :goto_40

    nop

    nop

    :pswitch_c
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_44
    goto :goto_40

    nop

    nop

    :pswitch_d
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_45
    sget-object v1, Lcom/google/android/apps/camera/legacy/lightcycle/panorama/RpD/WBNWZfrn;->lROFI:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_46
    const-string v1, "USAGE_NOTIFICATION_RINGTONE"

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_47
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_3a

    nop

    nop

    :goto_49
    iget v1, p0, Landroidx/media/AudioAttributesImplBase;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_4a
    sget-object v1, Lcom/google/android/apps/camera/ui/remotecontrol/Gizr/bXyemjIV;->VphTc:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4b
    goto :goto_40

    nop

    :pswitch_e
    goto/32 :goto_13

    nop

    nop

    :goto_4c
    goto :goto_40

    nop

    :pswitch_f
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_4d
    const/4 v2, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_4e
    iget p0, p0, Landroidx/media/AudioAttributesImplBase;->c:I

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_4f
    goto/16 :goto_40

    nop

    nop

    :pswitch_10
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_50
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop
.end method
