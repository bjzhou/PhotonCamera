.class public final Lqod;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lqob;


# instance fields
.field private final a:I

.field private final b:Lqoe;


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    throw p0

    nop

    nop
.end method

.method public constructor <init>(ILqoe;)V
    .locals 0

    goto/32 :goto_0

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

    nop

    :goto_1
    return-void

    nop

    :goto_2
    iput-object p2, p0, Lqod;->b:Lqoe;

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

    :goto_3
    iput p1, p0, Lqod;->a:I

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

.method public static final c()Lqsz;
    .locals 3

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v2, v1}, Lqoe;-><init>([B)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    iput-object v2, v0, Lqsz;->c:Ljava/lang/Object;

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

    :goto_2
    rem-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x13

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    iput v1, v0, Lqsz;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    iput-byte v1, v0, Lqsz;->a:B

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

    :goto_8
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v1, 0x1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x12

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

    :goto_c
    new-instance v0, Lqsz;

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
    new-instance v2, Lqoe;

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

    :goto_e
    invoke-direct {v0, v1}, Lqsz;-><init>([C)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_11

    nop

    :goto_10
    goto/32 :goto_9

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
    const/4 v1, 0x0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final synthetic a()I
    .locals 0

    goto/32 :goto_1

    nop

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
    const p0, 0x7fffffff

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final b()Z
    .locals 1

    goto/32 :goto_5

    nop

    nop

    :goto_0
    const/4 v0, 0x3

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-eq p0, v0, :cond_0

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
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    :goto_3
    return p0

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    :goto_5
    iget p0, p0, Lqod;->a:I

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 p0, 0x0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget v1, p0, Lqod;->a:I

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_3
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v1, :cond_0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1a

    nop

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

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_6
    return v2

    nop

    :goto_7
    goto/32 :goto_8

    nop

    nop

    :goto_8
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_9
    iget v3, p1, Lqod;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_a
    const/4 v0, 0x1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_c
    check-cast p1, Lqod;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_d
    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_e
    return v2

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_10
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

    :goto_11
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1b

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_13
    if-nez p0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    :cond_3
    goto/32 :goto_18

    nop

    nop

    :goto_14
    return v0

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v1, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_17
    invoke-virtual {p0, p1}, Lqoe;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_18
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1a
    if-eq v1, v3, :cond_4

    nop

    goto/32 :goto_19

    nop

    :cond_4
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object p1, p1, Lqod;->b:Lqoe;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1e
    if-eq p1, p0, :cond_5

    nop

    goto/32 :goto_15

    nop

    :cond_5
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1f
    instance-of v1, p1, Lqod;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_20
    iget-object p0, p0, Lqod;->b:Lqoe;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 2

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_0
    const v1, 0xf4243

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lqoe;->hashCode()I

    move-result p0

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_2
    mul-int/2addr v0, v1

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_3
    return p0

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    invoke-static {v0}, La;->U(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
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

    :goto_7
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_8
    iget v0, p0, Lqod;->a:I

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

    :goto_9
    xor-int/lit16 v0, v0, 0x4d5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_b
    const v0, 0xd

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_c
    xor-int/2addr v0, v1

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

    :goto_d
    mul-int/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_e
    xor-int/2addr p0, v0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_11
    const v1, 0xf

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_12
    iget-object p0, p0, Lqod;->b:Lqoe;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    goto/32 :goto_3

    nop

    nop

    :goto_0
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_14

    nop

    nop

    :goto_2
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_9

    nop

    nop

    :goto_3
    const v0, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_4
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

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

    :goto_5
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {p0}, Lqoc;->a(I)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_2

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

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_9
    const-string p0, ", false, "

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
    return-object p0

    nop

    :goto_b
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_15

    nop

    nop

    :goto_e
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_10
    const v1, 0x14

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

    :goto_11
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_13
    const-string p0, "}"

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v0, p0, Lqod;->b:Lqoe;

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_15
    iget p0, p0, Lqod;->a:I

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_16
    const-string v2, "{"

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

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
.end method
