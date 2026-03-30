.class public final Ldpo;
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

    goto/32 :goto_2

    nop

    nop

    :goto_0
    iput-wide p1, p0, Ldpo;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static a(J)Ljava/lang/String;
    .locals 3

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    const-wide v1, 0xffffffffL

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_4
    return-object p0

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    :cond_0
    goto/32 :goto_13

    nop

    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_8
    const-string v1, " x "

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_9
    const v1, 0x19

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    shr-long v1, p0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_e
    long-to-int v1, v1

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

    :goto_f
    const v0, 0x1d

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    and-long/2addr p0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_12
    const/16 v1, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_13
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_7

    nop

    nop

    :goto_15
    long-to-int p0, p0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop
.end method

.method public static b(JLjava/lang/Object;)Z
    .locals 4

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x20

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

    goto/32 :goto_13

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    cmp-long p0, p0, v2

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_4
    goto/32 :goto_10

    nop

    nop

    :goto_5
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_6
    iget-wide v2, p2, Ldpo;->a:J

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_7
    const v0, 0x15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    check-cast p2, Ldpo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_9
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    :goto_a
    instance-of v0, p2, Ldpo;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-nez p0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_c
    return v1

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_e
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return p0

    nop

    :goto_10
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_11
    return v1

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_2

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_4

    nop

    :goto_14
    const/4 v1, 0x0

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

    :goto_15
    goto/32 :goto_5

    nop
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/16 v4, 0xee

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    const/4 v4, 0x1

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

    :goto_2
    check-cast p0, Ljava/lang/Boolean;

    nop

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

    :goto_3
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

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

    :goto_7
    const/4 v5, 0x0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_8
    aput-object p1, v2, v4

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_a
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_b
    aput-object v3, v2, v5

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return p0

    nop

    :goto_e
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_10
    new-array v2, v2, [Ljava/lang/Object;

    nop

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

    :goto_11
    invoke-static {v4, v5, v2}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v2, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_13
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_14
    iget-wide v0, p0, Ldpo;->a:J

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

    :goto_15
    const v0, 0x15

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_16
    const v1, 0x14

    nop

    nop

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
.end method

.method public final hashCode()I
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    const v1, 0x15

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

    nop

    :goto_3
    iget-wide v0, p0, Ldpo;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_8

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_3

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

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {v0, v1}, La;->r(J)I

    move-result p0

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
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_8

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_1

    nop

    nop

    :goto_3
    const v0, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

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

    :goto_5
    iget-wide v0, p0, Ldpo;->a:J

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_6
    const v1, 0x15

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_7
    return-object p0

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v0, v1}, Ldpo;->a(J)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

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

    :goto_b
    add-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop
.end method
