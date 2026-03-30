.class public final Luh;
.super Ljava/lang/Object;
.source "PG"


# annotations
.annotation runtime Luax;
.end annotation


# instance fields
.field public final a:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    iput-wide p1, p0, Luh;->a:J

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop
.end method

.method public static a(J)Ljava/lang/String;
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_4
    const v1, 0x9

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

    :goto_5
    const-string v1, "TimestampNs(value="

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_7
    const/16 p0, 0x29

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_9
    const v0, 0x1c

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_a
    goto/32 :goto_d

    nop

    :goto_b
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-object p0

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_b

    nop

    :goto_10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    goto/32 :goto_3

    nop

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

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_1
    goto/32 :goto_11

    nop

    :goto_2
    goto/32 :goto_e

    nop

    nop

    :goto_3
    const v0, 0x13

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 p0, 0x0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-wide v0, p0, Luh;->a:J

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_6
    const/4 p0, 0x1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x1b

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_9
    cmp-long p0, v0, p0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_a
    iget-wide p0, p1, Luh;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_b
    check-cast p1, Luh;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_d
    if-eqz v0, :cond_1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_e
    instance-of v0, p1, Luh;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_f
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

    :goto_10
    return p0

    nop

    nop

    :goto_11
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto :goto_15

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_14
    return p0

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_4

    nop

    nop

    :goto_16
    if-eqz p0, :cond_2

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 2

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0x5

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
    if-lez v0, :cond_0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x5

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-wide v0, p0, Luh;->a:J

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_6
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_8
    invoke-static {v0, v1}, La;->r(J)I

    move-result p0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_a

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0xa

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    const v0, 0x8

    nop

    nop

    nop

    goto/32 :goto_0

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
    invoke-static {v0, v1}, Luh;->a(J)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_5
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-wide v0, p0, Luh;->a:J

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

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

    :goto_9
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

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

    goto/32 :goto_a

    nop

    :cond_0
    goto/32 :goto_9

    nop
.end method
