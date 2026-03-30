.class public final Lmyi;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Z

.field public final d:Loyd;

.field public final e:Loyd;


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    :goto_1
    const/4 p0, 0x0

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
.end method

.method public constructor <init>(ZZZLoyd;Loyd;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-boolean p3, p0, Lmyi;->c:Z

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-boolean p1, p0, Lmyi;->a:Z

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p5, p0, Lmyi;->e:Loyd;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p4, p0, Lmyi;->d:Loyd;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    :goto_6
    iput-boolean p2, p0, Lmyi;->b:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static a()Lmyh;
    .locals 3

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

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
    invoke-virtual {v0, v2}, Lmyh;->c(Loyd;)V

    goto/32 :goto_14

    nop

    nop

    :goto_2
    new-instance v0, Lmyh;

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

    :goto_3
    invoke-direct {v2, v1}, Loxv;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0}, Lmyh;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_6
    goto/32 :goto_12

    nop

    nop

    :goto_7
    invoke-virtual {v0, v1}, Lmyh;->d(Z)V

    goto/32 :goto_13

    nop

    nop

    :goto_8
    const/4 v1, 0x0

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

    :goto_9
    invoke-virtual {v0, v2}, Lmyh;->b(Loyd;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {v2, v1}, Loxv;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_b
    new-instance v2, Loxv;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

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

    nop

    :goto_d
    const v0, 0x10

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-object v0

    nop

    :goto_f
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0, v1}, Lmyh;->e(Z)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_2

    nop

    nop

    :goto_13
    invoke-virtual {v0, v1}, Lmyh;->f(Z)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    new-instance v2, Loxv;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_16
    const v1, 0xf

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    goto/32 :goto_22

    nop

    nop

    :goto_0
    if-nez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_1
    if-eq v1, v3, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    :cond_1
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-eq v1, v3, :cond_2

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lmyi;->e:Loyd;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-boolean v3, p1, Lmyi;->b:Z

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

    :goto_6
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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

    nop

    nop

    :goto_7
    iget-boolean v1, p0, Lmyi;->c:Z

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_8
    const v1, 0x1c

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_9
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_a
    check-cast p1, Lmyi;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_b
    iget-object v3, p1, Lmyi;->d:Loyd;

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

    :goto_c
    if-nez v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    :cond_3
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_d
    return v2

    nop

    nop

    :goto_e
    goto/32 :goto_14

    nop

    nop

    :goto_f
    iget-boolean v1, p0, Lmyi;->a:Z

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_10
    iget-object p1, p1, Lmyi;->e:Loyd;

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

    :goto_11
    instance-of v1, p1, Lmyi;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_12
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

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

    :goto_13
    if-lez v0, :cond_4

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

    :cond_4
    goto/32 :goto_1f

    nop

    :goto_14
    goto/32 :goto_20

    nop

    nop

    :goto_15
    iget-boolean v3, p1, Lmyi;->a:Z

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

    :goto_16
    if-nez v1, :cond_5

    nop

    goto/32 :goto_24

    nop

    nop

    :cond_5
    goto/32 :goto_4

    nop

    nop

    :goto_17
    rem-int v0, v0, v1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_18
    if-eq v1, v3, :cond_6

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v1, p0, Lmyi;->d:Loyd;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1a
    iget-boolean v3, p1, Lmyi;->c:Z

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1b
    iget-boolean v1, p0, Lmyi;->b:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1c
    const/4 v2, 0x0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1d
    return v0

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_e

    nop

    nop

    :goto_20
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-eq p1, p0, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const v0, 0x4

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_23
    return v0

    nop

    nop

    :goto_24
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 7

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v5, 0xf4243

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_1
    const/16 v2, 0x4cf

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_2
    const v0, 0x17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_3
    if-ne v3, v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    xor-int/2addr v0, v1

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_5
    move v0, v2

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_8
    mul-int/2addr v0, v5

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_24

    nop

    :goto_a
    mul-int/2addr v0, v5

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p0, p0, Lmyi;->e:Loyd;

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return p0

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/16 :goto_2d

    nop

    nop

    :goto_f
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    move v0, v1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

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
    mul-int/2addr v0, v5

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto :goto_18

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_15
    if-ne v3, v4, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_17
    move v1, v2

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-ne v3, v6, :cond_3

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

    :cond_3
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1a
    xor-int/2addr v0, v4

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1b
    add-int v0, v0, v1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/16 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1e
    xor-int/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 v3, 0x1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_20
    const/16 v1, 0x4d5

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_21
    xor-int/2addr p0, v0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const v1, 0x15

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_23
    iget-boolean v4, p0, Lmyi;->b:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_24
    goto/32 :goto_d

    nop

    nop

    :goto_25
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget-object v1, p0, Lmyi;->d:Loyd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_27
    move v4, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_28
    mul-int/2addr v0, v5

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget-boolean v0, p0, Lmyi;->a:Z

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

    :goto_2a
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_2b
    iget-boolean v6, p0, Lmyi;->c:Z

    nop

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

    :goto_2c
    move v4, v2

    nop

    :goto_2d
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    xor-int/2addr v0, v5

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    goto/32 :goto_5

    nop

    nop

    :goto_0
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_18

    nop

    nop

    :goto_2
    iget-boolean p0, p0, Lmyi;->c:Z

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

    :goto_3
    const-string v3, "{"

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6
    iget-boolean v3, p0, Lmyi;->a:Z

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_7
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-object p0

    nop

    :goto_9
    goto/32 :goto_1b

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x1b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_f

    nop

    nop

    :goto_e
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

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

    :goto_f
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_17

    nop

    nop

    :goto_10
    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_3

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

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1d

    nop

    :goto_12
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const-string p0, "}"

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_18
    iget-boolean v4, p0, Lmyi;->b:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_19
    const-string v3, ", "

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

    :goto_1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v0, p0, Lmyi;->e:Loyd;

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

    :goto_1d
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_1f
    iget-object v1, p0, Lmyi;->d:Loyd;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop
.end method
