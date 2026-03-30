.class final Lbbg;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lbak;


# instance fields
.field public final a:J

.field public final b:J

.field private final c:J

.field private final d:J


# direct methods
.method public constructor <init>(JJJJ)V
    .locals 0

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    iput-wide p7, p0, Lbbg;->d:J

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    iput-wide p1, p0, Lbbg;->a:J

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-wide p3, p0, Lbbg;->b:J

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    iput-wide p5, p0, Lbbg;->c:J

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

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2d

    nop

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    if-ne v2, v3, :cond_1

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :cond_1
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_4
    if-eqz v2, :cond_2

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

    :cond_2
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_5
    iget-wide v2, p0, Lbbg;->c:J

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

    nop

    :goto_6
    iget-wide p0, p1, Lbbg;->d:J

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_7
    const v1, 0x13

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_8
    return v0

    nop

    :goto_9
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {v2, v3, v4, v5}, La;->q(JJ)Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-wide v4, p1, Lbbg;->b:J

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

    :goto_c
    if-eqz v2, :cond_3

    nop

    nop

    nop

    goto/32 :goto_17

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

    :goto_d
    return v0

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0xf

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_10
    iget-wide v4, p1, Lbbg;->a:J

    nop

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

    :goto_11
    return v1

    nop

    nop

    :goto_12
    goto/32 :goto_8

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {v2, v3, v4, v5}, La;->q(JJ)Z

    move-result v2

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_15
    if-eqz p0, :cond_4

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

    :cond_4
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_16
    return v1

    nop

    nop

    :goto_17
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-wide v4, p1, Lbbg;->c:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_19
    iget-wide v2, p0, Lbbg;->d:J

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

    nop

    :goto_1a
    return v1

    nop

    :goto_1b
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    return v1

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1e
    if-nez p1, :cond_5

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_5
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_2e

    nop

    nop

    :goto_21
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_22
    check-cast p1, Lbbg;

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

    nop

    :goto_23
    invoke-static {v2, v3, v4, v5}, La;->q(JJ)Z

    move-result v2

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_24
    if-eq p0, p1, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-wide v2, p0, Lbbg;->b:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_26
    if-eqz v2, :cond_7

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_27
    return v1

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/16 :goto_9

    nop

    nop

    :goto_2a
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-static {v2, v3, p0, p1}, La;->q(JJ)Z

    move-result p0

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_2c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_2d
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_21

    nop

    nop

    :goto_2f
    iget-wide v2, p0, Lbbg;->a:J

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 7

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0, v1}, La;->r(J)I

    move-result v0

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

    :goto_1
    iget-wide v0, p0, Lbbg;->a:J

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    invoke-static {v3, v4}, La;->r(J)I

    move-result p0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_3
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

    :goto_4
    mul-int/lit8 v0, v0, 0x1f

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

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    iget-wide v3, p0, Lbbg;->c:J

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int/2addr v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_13

    nop

    :goto_a
    const v0, 0x10

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_b
    return v0

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int/2addr v0, p0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_e
    mul-int/lit8 v0, v0, 0x1f

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

    nop

    :goto_f
    iget-wide v1, p0, Lbbg;->d:J

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_10
    add-int/2addr v0, p0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_11
    invoke-static {v1, v2}, La;->r(J)I

    move-result p0

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

    :goto_12
    const v1, 0x17

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    mul-int/lit8 v0, v0, 0x1f

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_16
    invoke-static {v5, v6}, La;->r(J)I

    move-result p0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_17
    iget-wide v5, p0, Lbbg;->b:J

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop
.end method
