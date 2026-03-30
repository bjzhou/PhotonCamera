.class public final Lozm;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lozf;

.field public final b:Lozg;

.field public final c:I

.field public final d:Loze;

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:F

.field public final i:Lrss;

.field public final j:Lrss;


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

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lozf;Lozg;ILoze;IIIFLrss;Lrss;)V
    .locals 0

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iput p3, p0, Lozm;->c:I

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Lozm;->b:Lozg;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lozm;->a:Lozf;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_7
    iput p6, p0, Lozm;->f:I

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p9, p0, Lozm;->i:Lrss;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_9
    iput p5, p0, Lozm;->e:I

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_a
    iput p7, p0, Lozm;->g:I

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_b
    iput-object p4, p0, Lozm;->d:Loze;

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

    :goto_c
    iput-object p10, p0, Lozm;->j:Lrss;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput p8, p0, Lozm;->h:F

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
.end method


# virtual methods
.method public final a()I
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
    iget-object p0, p0, Lozm;->d:Loze;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget p0, p0, Loze;->k:I

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
.end method

.method public final b()I
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

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

    :goto_1
    invoke-virtual {v0}, Loze;->a()I

    move-result v0

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

    :goto_2
    div-int/2addr p0, v0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_4
    iget-object v0, p0, Lozm;->d:Loze;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x4

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_6
    return p0

    nop

    nop

    :goto_7
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0}, Loze;->h()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_9
    const v1, 0x1d

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_c
    return p0

    nop

    nop

    :goto_d
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_7

    nop

    :goto_f
    goto/32 :goto_4

    nop

    nop

    :goto_10
    if-nez v1, :cond_1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_11
    iget p0, p0, Lozm;->c:I

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
.end method

.method public final c()I
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget p0, p0, Loze;->l:I

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

    nop

    :goto_1
    return p0

    nop

    nop

    :goto_2
    iget-object p0, p0, Lozm;->d:Loze;

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

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v1, v3}, Lozf;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v1, p0, Lozm;->i:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v1, v3}, Lrss;->equals(Ljava/lang/Object;)Z

    move-result v1

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

    nop

    :goto_3
    iget-object v1, p0, Lozm;->d:Loze;

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_4
    iget v3, p1, Lozm;->c:I

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_5
    if-eq v1, v3, :cond_0

    nop

    nop

    goto/32 :goto_22

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_8
    iget v1, p0, Lozm;->c:I

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

    :goto_9
    invoke-virtual {p0, p1}, Lrss;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_b
    if-eq v1, v3, :cond_1

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget v1, p0, Lozm;->e:I

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_d
    iget v3, p1, Lozm;->f:I

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_e
    if-eq p1, p0, :cond_2

    nop

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

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-eq v1, v3, :cond_3

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :cond_3
    goto/32 :goto_38

    nop

    nop

    :goto_10
    return v2

    nop

    nop

    :goto_11
    goto/32 :goto_a

    nop

    nop

    :goto_12
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v1, v3}, Loze;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_14
    if-nez v1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_15
    if-nez p0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v1, 0x16

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_17
    iget-object v3, p1, Lozm;->a:Lozf;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget v3, p1, Lozm;->g:I

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    return v0

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
    iget v3, p1, Lozm;->h:F

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_1e
    iget v3, p1, Lozm;->e:I

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-nez v1, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_8

    nop

    nop

    :goto_20
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_21
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v1, v3}, Lozg;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_24
    if-eq v1, v3, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_25
    rem-int v0, v0, v1

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_26
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_27
    iget v1, p0, Lozm;->h:F

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_28
    instance-of v1, p1, Lozm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_29
    iget-object v3, p1, Lozm;->d:Loze;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_2a
    const v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    if-nez v1, :cond_8

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    :cond_8
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2c
    iget-object v1, p0, Lozm;->b:Lozg;

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object p0, p0, Lozm;->j:Lrss;

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object p1, p1, Lozm;->j:Lrss;

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

    :goto_2f
    if-nez v1, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_2c

    nop

    nop

    :goto_30
    if-nez v1, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_2d

    nop

    nop

    :goto_31
    if-lez v0, :cond_b

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_19

    nop

    :goto_32
    iget-object v3, p1, Lozm;->b:Lozg;

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_33
    iget v1, p0, Lozm;->f:I

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

    nop

    :goto_34
    if-eq v1, v3, :cond_c

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_27

    nop

    nop

    :goto_35
    iget-object v3, p1, Lozm;->i:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_36
    check-cast p1, Lozm;

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iget-object v1, p0, Lozm;->a:Lozf;

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

    :goto_38
    iget v1, p0, Lozm;->g:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop
.end method

.method public final hashCode()I
    .locals 4

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1
    iget-object p0, p0, Lozm;->j:Lrss;

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2
    mul-int/2addr v0, v1

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
    mul-int/2addr v0, v1

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_6
    mul-int/2addr v0, v1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return p0

    nop

    nop

    :goto_9
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

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

    :goto_b
    xor-int/2addr v0, v3

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v2, p0, Lozm;->b:Lozg;

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_e
    iget v3, p0, Lozm;->f:I

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v2}, Loze;->hashCode()I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_10
    iget-object v2, p0, Lozm;->i:Lrss;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0x8

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_12
    xor-int/2addr v0, v2

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_14
    xor-int/2addr p0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_15
    mul-int/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    xor-int/2addr v0, v3

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget v3, p0, Lozm;->e:I

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const v1, 0xf4243

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_19
    xor-int/2addr v0, v3

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v2}, Lrss;->hashCode()I

    move-result v2

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

    :goto_1b
    invoke-virtual {p0}, Lrss;->hashCode()I

    move-result p0

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

    :goto_1c
    iget-object v0, p0, Lozm;->a:Lozf;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v0}, Lozf;->hashCode()I

    move-result v0

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_1e
    xor-int/2addr v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1f
    mul-int/2addr v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_20
    iget v3, p0, Lozm;->c:I

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_21
    const v1, 0xe

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

    :goto_22
    invoke-virtual {v2}, Lozg;->hashCode()I

    move-result v2

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_23
    iget-object v2, p0, Lozm;->d:Loze;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_24
    mul-int/2addr v0, v1

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

    :goto_25
    iget v2, p0, Lozm;->h:F

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_26
    xor-int/2addr v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_27
    xor-int/2addr v0, v2

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_28
    mul-int/2addr v0, v1

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

    :goto_29
    iget v3, p0, Lozm;->g:I

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_2a
    xor-int/2addr v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    mul-int/2addr v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_2c
    mul-int/2addr v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    xor-int/2addr v0, v3

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
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    goto/32 :goto_1d

    nop

    nop

    :goto_0
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1
    const-string v1, "camcorderVideoResolution"

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

    :goto_2
    iget v2, p0, Lozm;->h:F

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_3
    const-string v1, "camcorderVideoFileFormat"

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget v2, p0, Lozm;->e:I

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Lozm;->a()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_6
    iget-object v1, p0, Lozm;->i:Lrss;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lozm;->c()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    :goto_9
    const v1, 0xa

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const-string v1, "videoEncodingFrameRate"

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

    :goto_b
    sget-object v1, Lcom/google/android/apps/camera/debug/metrics/Rn/hhAHoOiyE;->DBXlSZZE:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_2

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

    :goto_d
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_e
    const-string v1, "videoCaptureFrameRate"

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0, v1, v2}, Lrsr;->e(Ljava/lang/String;I)V

    goto/32 :goto_0

    nop

    nop

    :goto_10
    iget-object v2, p0, Lozm;->a:Lozf;

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0, v1, v2}, Lrsr;->e(Ljava/lang/String;I)V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_14
    iget-object p0, p0, Lozm;->j:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const-string v1, "videoEncoder"

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_18
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget v2, p0, Lozm;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1a
    const-string v1, "videoCaptureBitRate"

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0, v1, v2}, Lrsr;->e(Ljava/lang/String;I)V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v0, v1, v2}, Lrsr;->d(Ljava/lang/String;F)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1d
    const v0, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1e
    invoke-virtual {v0, v2, p0}, Lrsr;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v0, v1, v2}, Lrsr;->e(Ljava/lang/String;I)V

    goto/32 :goto_17

    nop

    nop

    :goto_20
    const-string v2, "videoQpMax"

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_21
    invoke-virtual {v0, v1, v2}, Lrsr;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v0, v2, v1}, Lrsr;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_23
    iget-object v2, p0, Lozm;->b:Lozg;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v0}, Lrsr;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_25
    invoke-static {p0}, Lrrf;->c(Ljava/lang/Object;)Lrsr;

    move-result-object v0

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

    :goto_26
    invoke-virtual {v0, v1, v2}, Lrsr;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method
