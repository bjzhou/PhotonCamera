.class public final Ljbf;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Z

.field public final d:Lsuu;

.field public final e:Lsuu;

.field public final f:Z

.field public final g:Lryb;


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

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
.end method

.method public constructor <init>(IIZLsuu;Lsuu;ZLryb;)V
    .locals 0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p5, p0, Ljbf;->e:Lsuu;

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

    :goto_1
    iput-object p4, p0, Ljbf;->d:Lsuu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    iput-boolean p6, p0, Ljbf;->f:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    iput p1, p0, Ljbf;->a:I

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

    :goto_4
    return-void

    nop

    nop

    nop

    :goto_5
    iput-boolean p3, p0, Ljbf;->c:Z

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    iput p2, p0, Ljbf;->b:I

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

    :goto_8
    iput-object p7, p0, Ljbf;->g:Lryb;

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method public static a()Ljbe;
    .locals 3

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    sget v2, Lryb;->d:I

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v1}, Lsuu;-><init>()V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v0, Ljbe;

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

    :goto_3
    rem-int v0, v0, v1

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0, v1}, Ljbe;->f(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_7
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_8
    invoke-direct {v0}, Ljbe;-><init>()V

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0, v1}, Ljbe;->e(Z)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-object v0

    nop

    nop

    :goto_b
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0, v2}, Ljbe;->c(Lryb;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    new-instance v1, Lsuu;

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

    :goto_e
    invoke-virtual {v0, v1}, Ljbe;->d(Z)V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_f
    new-instance v1, Lsuu;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_10
    iput-object v1, v0, Ljbe;->a:Lsuu;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {v1}, Lsuu;-><init>()V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v1, 0x1c

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_15

    nop

    :goto_14
    goto/32 :goto_b

    nop

    :goto_15
    goto/32 :goto_2

    nop

    nop

    :goto_16
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    :goto_17
    iput-object v1, v0, Ljbe;->b:Lsuu;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_18
    sget-object v2, Lsbh;->a:Lryb;

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
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p1, Ljbf;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    if-nez p0, :cond_0

    nop

    goto/32 :goto_3

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

    :goto_2
    return v0

    nop

    nop

    :goto_3
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_4
    iget v1, p0, Ljbf;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_5
    iget-object v1, p0, Ljbf;->e:Lsuu;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_6
    if-nez v1, :cond_1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_7
    iget-boolean v3, p1, Ljbf;->c:Z

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_8
    iget-boolean v1, p0, Ljbf;->c:Z

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p0, p0, Ljbf;->g:Lryb;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_b
    const/4 v0, 0x1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    :cond_2
    goto/32 :goto_1c

    nop

    :goto_d
    iget-object v1, p0, Ljbf;->d:Lsuu;

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

    :goto_e
    const/4 v2, 0x0

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_f
    iget v3, p1, Ljbf;->b:I

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object p1, p1, Ljbf;->g:Lryb;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_11
    iget-boolean v1, p0, Ljbf;->f:Z

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget v3, p1, Ljbf;->a:I

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

    :goto_13
    return v0

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-eq p1, p0, :cond_3

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

    nop

    nop

    :goto_16
    if-eq v1, v3, :cond_4

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_4
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_17
    const v0, 0x12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_18
    iget-object v3, p1, Ljbf;->d:Lsuu;

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_19
    const v1, 0xf

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1b
    if-eq v1, v3, :cond_5

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_b

    nop

    nop

    :goto_1e
    if-eq v1, v3, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_6
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1f
    if-nez v1, :cond_7

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_20
    iget-object v3, p1, Ljbf;->e:Lsuu;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_21
    iget-boolean v3, p1, Ljbf;->f:Z

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_1d

    nop

    :goto_23
    invoke-static {p0, p1}, Lrgw;->N(Ljava/util/List;Ljava/lang/Object;)Z

    move-result p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    instance-of v1, p1, Ljbf;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_25
    if-nez v1, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-eq v1, v3, :cond_9

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_2b

    nop

    nop

    :goto_27
    return v2

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_22

    nop

    nop

    :goto_29
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

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

    :goto_2a
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_2b
    iget v1, p0, Ljbf;->b:I

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
.end method

.method public final hashCode()I
    .locals 8

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    xor-int/2addr v0, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_1
    xor-int/2addr v4, v7

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_2
    xor-int/2addr v4, v5

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_3
    const/16 v1, 0x4d5

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

    nop

    :goto_4
    goto/16 :goto_27

    nop

    :goto_5
    goto/32 :goto_26

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Lryb;->hashCode()I

    move-result p0

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

    :goto_7
    goto/16 :goto_2e

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v3, 0x1

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

    :goto_a
    mul-int/2addr v4, v7

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v4, p0, Ljbf;->e:Lsuu;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_d
    mul-int/2addr v0, v7

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_e
    xor-int/2addr v0, v4

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_f
    const v7, 0xf4243

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

    :goto_10
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_11
    iget-object v6, p0, Ljbf;->d:Lsuu;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_12
    iget v4, p0, Ljbf;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_13
    return p0

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_17

    nop

    nop

    :goto_15
    if-ne v3, v4, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    :goto_16
    iget-boolean v0, p0, Ljbf;->c:Z

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_17
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_18
    xor-int/2addr p0, v0

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_19
    const/16 v2, 0x4cf

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

    :goto_1a
    mul-int/2addr v0, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1b
    iget-object p0, p0, Ljbf;->g:Lryb;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1c
    goto/32 :goto_14

    nop

    :goto_1d
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1e
    iget-boolean v4, p0, Ljbf;->f:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1f
    iget v5, p0, Ljbf;->b:I

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_20
    mul-int/2addr v4, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_21
    const v0, 0x1d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    mul-int/2addr v0, v7

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_23
    xor-int/2addr v0, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_24
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    move v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_26
    move v1, v2

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_28
    if-ne v3, v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_25

    nop

    nop

    :goto_29
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_2
    goto/32 :goto_1c

    nop

    :goto_2a
    mul-int/2addr v0, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_2b
    xor-int/2addr v0, v1

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const v1, 0xe

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    move v0, v2

    nop

    nop

    :goto_2e
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_2
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4
    const v0, 0x6

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

    :goto_5
    iget v5, p0, Ljbf;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_7
    iget v4, p0, Ljbf;->a:I

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

    :goto_8
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const-string p0, "}"

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1e

    nop

    nop

    :goto_b
    const-string v4, ", "

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

    :goto_c
    return-object p0

    nop

    :goto_d
    goto/32 :goto_18

    nop

    nop

    :goto_e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_f
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_10
    iget-object v1, p0, Ljbf;->e:Lsuu;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_12
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_13
    const v1, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v2, p0, Ljbf;->d:Lsuu;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_1b

    nop

    nop

    :goto_19
    iget-object v0, p0, Ljbf;->g:Lryb;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_d

    nop

    nop

    :goto_1b
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-boolean p0, p0, Ljbf;->f:Z

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_21
    new-instance v3, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_24
    iget-boolean v5, p0, Ljbf;->c:Z

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_25
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1a

    nop

    :goto_26
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_27
    const-string v4, "{"

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method
