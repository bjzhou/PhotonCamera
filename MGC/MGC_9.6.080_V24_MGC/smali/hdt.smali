.class public final Lhdt;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/lang/String;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:J

.field public g:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lhdt;->a:Ljava/lang/String;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_0
    iget v1, p0, Lhdt;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_21

    nop

    :goto_2
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget v3, p1, Lhdt;->b:I

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_4
    iget p1, p1, Lhdt;->g:I

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_5
    if-eq v1, v3, :cond_0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_0
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_6
    iget-wide v3, p0, Lhdt;->f:J

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    :goto_8
    return v2

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_a
    if-eqz v1, :cond_2

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

    :cond_2
    goto/32 :goto_8

    nop

    nop

    :goto_b
    const v0, 0x13

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_c
    if-eq v1, v3, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget p0, p0, Lhdt;->g:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_e
    instance-of v1, p1, Lhdt;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget v1, p0, Lhdt;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_10
    if-eqz v1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_11
    iget v3, p1, Lhdt;->c:I

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

    nop

    :goto_12
    goto/32 :goto_2

    nop

    :goto_13
    const/4 v2, 0x0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_14
    return v0

    nop

    nop

    :goto_15
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

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

    :goto_17
    iget v3, p1, Lhdt;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_18
    if-eq p1, p0, :cond_5

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

    :cond_5
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-nez v1, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1a
    if-eq v1, v3, :cond_7

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-eq p0, p1, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_8
    goto/32 :goto_14

    nop

    nop

    :goto_1c
    cmp-long v1, v3, v5

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1d
    if-eq v1, v3, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget v1, p0, Lhdt;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1f
    iget v1, p0, Lhdt;->e:I

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_20
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_23
    const/4 v0, 0x1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_24
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_25
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const v1, 0x5

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_28
    iget-object v1, p0, Lhdt;->a:Ljava/lang/String;

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_29
    check-cast p1, Lhdt;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_2a
    iget-wide v5, p1, Lhdt;->f:J

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_2b
    iget v3, p1, Lhdt;->e:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object v3, p1, Lhdt;->a:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_22

    nop

    nop
.end method
