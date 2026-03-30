.class public final Lepy;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Landroid/app/Notification;


# direct methods
.method public constructor <init>(ILandroid/app/Notification;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput p3, p0, Lepy;->b:I

    nop

    nop

    nop

    goto/32 :goto_2

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
    iput p1, p0, Lepy;->a:I

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p2, p0, Lepy;->c:Landroid/app/Notification;

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
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0xa

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_12

    nop

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_3
    if-ne v1, v2, :cond_0

    nop

    goto/32 :goto_1e

    nop

    :cond_0
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return v0

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p1, p1, Lepy;->c:Landroid/app/Notification;

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_7
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_8
    if-eq p0, p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

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
    iget v1, p0, Lepy;->b:I

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_2

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_11

    nop

    :goto_c
    if-ne v1, v2, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_d
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_e
    goto :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget v1, p0, Lepy;->a:I

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

    :goto_11
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_8

    nop

    nop

    :goto_13
    const v1, 0x7

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    return p0

    nop

    nop

    :goto_15
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_16
    iget v2, p1, Lepy;->a:I

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_17
    return v0

    nop

    nop

    :goto_18
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_19
    check-cast p1, Lepy;

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

    :goto_1a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_1b
    if-nez p1, :cond_4

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1c
    if-ne v1, v2, :cond_5

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    return v0

    nop

    nop

    :goto_1e
    goto/32 :goto_21

    nop

    nop

    :goto_1f
    iget v2, p1, Lepy;->b:I

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_20
    add-int v0, v0, v1

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

    nop

    :goto_21
    iget-object p0, p0, Lepy;->c:Landroid/app/Notification;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_22
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_23
    return p0

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_d

    nop

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 2

    goto/32 :goto_5

    nop

    nop

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1
    iget p0, p0, Lepy;->b:I

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    mul-int/lit8 v0, v0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_4
    add-int/2addr v0, p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    const v0, 0x10

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    add-int/2addr v0, p0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_8
    const v1, 0xc

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_9
    iget v0, p0, Lepy;->a:I

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

    nop

    :goto_a
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_d
    return v0

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v1, p0, Lepy;->c:Landroid/app/Notification;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_b

    nop

    :goto_11
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result p0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    goto/32 :goto_b

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_8

    nop

    nop

    :goto_2
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_3
    iget v1, p0, Lepy;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_4
    iget v1, p0, Lepy;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_5
    const-string v1, ", mForegroundServiceType="

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/32 :goto_f

    nop

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

    :goto_8
    goto/32 :goto_14

    nop

    nop

    :goto_9
    const-string v1, "ForegroundInfo{mNotificationId="

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_b
    const v0, 0x3

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_12
    iget-object p0, p0, Lepy;->c:Landroid/app/Notification;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const-string v1, ", mNotification="

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

    :goto_14
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_17
    new-instance v0, Ljava/lang/StringBuilder;

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

    :goto_18
    const/16 p0, 0x7d

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_3

    nop

    nop

    nop
.end method
