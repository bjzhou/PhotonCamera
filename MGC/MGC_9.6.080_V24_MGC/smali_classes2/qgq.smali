.class public final Lqgq;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field private final a:I

.field private final b:[I

.field private final c:[I

.field private final d:Lqgr;

.field private final e:Z


# direct methods
.method public constructor <init>(Lqgr;I[I)V
    .locals 3

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-array v1, v0, [I

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    :goto_5
    goto/16 :goto_16

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int/lit8 v2, v2, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_8
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v0, 0x2

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto :goto_16

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput-object p1, p0, Lqgq;->d:Lqgr;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput-object v1, p0, Lqgq;->c:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_e
    iput p2, p0, Lqgq;->a:I

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_f
    iput-object p3, p0, Lqgq;->b:[I

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_10
    and-int/lit8 p1, p2, 0x7

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_11
    if-nez p1, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_15
    move v1, p2

    nop

    :goto_16
    goto/32 :goto_1e

    nop

    nop

    :goto_17
    move p1, v1

    nop

    nop

    :goto_18
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_19
    aget v2, p3, p1

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

    :goto_1a
    invoke-static {p0, p2}, Ljava/util/Arrays;->fill([II)V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1b
    goto :goto_18

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1d
    if-nez v2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    :goto_1e
    iput-boolean v1, p0, Lqgq;->e:Z

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_1f
    if-lez v0, :cond_2

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

    :cond_2
    goto/32 :goto_1

    nop

    :goto_20
    if-lt p1, v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_21
    add-int v0, v0, v1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_22
    iget-object p0, p0, Lqgq;->c:[I

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_24
    const v0, 0x1a

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

    :goto_25
    add-int/lit8 p1, p1, 0x1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_26
    const v1, 0xf

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x1

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1
    iget-object v3, p1, Lqgq;->b:[I

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lqgq;->d:Lqgr;

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_3
    iget v1, p0, Lqgq;->a:I

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

    :goto_4
    const v0, 0x13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_5
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_7
    if-nez v1, :cond_0

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

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return v0

    nop

    :goto_9
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return v2

    nop

    :goto_b
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_c
    instance-of v1, p1, Lqgq;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v3, p1, Lqgq;->c:[I

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-eq p0, p1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_15

    nop

    :goto_10
    if-nez p0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_2
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_11
    check-cast p1, Lqgq;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_12
    iget-object v1, p0, Lqgq;->b:[I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_3
    goto/32 :goto_14

    nop

    :goto_14
    goto/32 :goto_1c

    nop

    nop

    :goto_15
    goto/32 :goto_0

    nop

    nop

    :goto_16
    if-nez v1, :cond_4

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1e

    nop

    nop

    :goto_17
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget v3, p1, Lqgq;->a:I

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-eq v1, v3, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_5
    goto/32 :goto_21

    nop

    nop

    :goto_1b
    return v2

    nop

    nop

    :goto_1c
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object p1, p1, Lqgq;->d:Lqgr;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v1, p0, Lqgq;->c:[I

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_20
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_21
    iget-boolean v1, p0, Lqgq;->e:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_22
    iget-boolean v3, p1, Lqgq;->e:Z

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_23
    const v1, 0x1b

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_24
    if-eq v1, v3, :cond_6

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_25
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_26
    if-eqz v1, :cond_7

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_7
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_27
    invoke-static {p0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    goto/32 :goto_10

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
    iget-object v1, p0, Lqgq;->b:[I

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

    nop

    :goto_1
    goto/32 :goto_16

    nop

    nop

    :goto_2
    iget-object v1, p0, Lqgq;->c:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_3
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_4
    mul-int/lit8 v0, v0, 0x1f

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    mul-int/lit8 v0, v0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x1b

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_7
    add-int/2addr v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    mul-int/lit8 v0, v0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_3

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

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int/2addr v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_b
    add-int/2addr v0, v1

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

    :goto_c
    const v1, 0x6

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

    :goto_d
    add-int/2addr v0, p0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v1, p0, Lqgq;->d:Lqgr;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget v0, p0, Lqgq;->a:I

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_10
    return v0

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_1

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_0

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    :goto_14
    mul-int/lit8 v0, v0, 0x1f

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_f

    nop

    nop

    :goto_17
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_18
    iget-boolean p0, p0, Lqgq;->e:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

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

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const-string p0, "Channel[Norm8]"

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop
.end method
