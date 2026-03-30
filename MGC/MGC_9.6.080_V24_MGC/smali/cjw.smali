.class public final Lcjw;
.super Lcjy;
.source "PG"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lucv;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:F

.field public final c:F

.field public final d:F

.field public final e:F

.field public final f:F

.field public final g:F

.field public final h:F

.field public final i:Ljava/util/List;

.field public final j:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 11

    goto/32 :goto_1

    nop

    nop

    :goto_0
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1
    const v0, 0xf

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_2
    move-object v0, p0

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

    :goto_3
    const/4 v8, 0x0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const-string v1, ""

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    invoke-direct/range {v0 .. v10}, Lcjw;-><init>(Ljava/lang/String;FFFFFFFLjava/util/List;Ljava/util/List;)V

    goto/32 :goto_13

    nop

    nop

    :goto_6
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_8
    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_9
    const/4 v3, 0x0

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

    :goto_a
    sget-object v9, Lcjx;->a:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_b
    const/high16 v5, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_e
    sget-object v10, Ltyw;->a:Ltyw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_f
    const/high16 v6, 0x3f800000    # 1.0f

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_10
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_c

    nop

    :goto_11
    const/4 v4, 0x0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_12
    const v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_13
    return-void

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/lang/String;FFFFFFFLjava/util/List;Ljava/util/List;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    iput p8, p0, Lcjw;->h:F

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iput p7, p0, Lcjw;->g:F

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

    :goto_2
    iput-object p9, p0, Lcjw;->i:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_3
    invoke-direct {p0}, Lcjy;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput p3, p0, Lcjw;->c:F

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

    :goto_5
    iput p5, p0, Lcjw;->e:F

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

    :goto_6
    iput-object p1, p0, Lcjw;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    iput p2, p0, Lcjw;->b:F

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p10, p0, Lcjw;->j:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_9
    iput p4, p0, Lcjw;->d:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_a
    iput p6, p0, Lcjw;->f:F

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v3, p1, Lcjw;->f:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_1
    instance-of v2, p1, Lcjw;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_2
    iget-object v3, p1, Lcjw;->i:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p0, p1}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    cmpg-float v2, v2, v3

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_5
    return v0

    nop

    :goto_6
    goto/32 :goto_1a

    nop

    nop

    :goto_7
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-eqz v2, :cond_0

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v2, p0, Lcjw;->a:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p1, p1, Lcjw;->j:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_c
    cmpg-float v2, v2, v3

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_d
    iget v2, p0, Lcjw;->b:F

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v2, p0, Lcjw;->i:Ljava/util/List;

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

    :goto_10
    cmpg-float v2, v2, v3

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-eqz v2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    :cond_1
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_12
    check-cast p1, Lcjw;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget v3, p1, Lcjw;->h:F

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v3, p1, Lcjw;->a:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_15
    invoke-static {v2, v3}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget v2, p0, Lcjw;->g:F

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

    :goto_17
    iget v3, p1, Lcjw;->e:F

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

    :goto_18
    if-eqz v2, :cond_2

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_19
    if-eqz v2, :cond_3

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_3
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_1a
    return v1

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static {v2, v3}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1d
    cmpg-float v2, v2, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_1e
    iget-object p0, p0, Lcjw;->j:Ljava/util/List;

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

    :goto_1f
    return v0

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_21
    const v1, 0x9

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

    nop

    :goto_22
    goto/16 :goto_6

    nop

    nop

    :goto_23
    goto/32 :goto_a

    nop

    nop

    :goto_24
    const/4 v1, 0x0

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_25
    if-eqz v2, :cond_4

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_26
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-nez p1, :cond_5

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

    :cond_5
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget v3, p1, Lcjw;->g:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    cmpg-float v2, v2, v3

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

    :goto_2a
    iget v2, p0, Lcjw;->c:F

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_2b
    if-eqz v2, :cond_6

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

    :cond_6
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget v2, p0, Lcjw;->h:F

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_2d
    iget v3, p1, Lcjw;->c:F

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

    :goto_2e
    iget v2, p0, Lcjw;->e:F

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_2f
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iget v3, p1, Lcjw;->d:F

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_31
    iget v2, p0, Lcjw;->d:F

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

    :goto_32
    const/4 v0, 0x1

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_33
    if-eqz v2, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    cmpg-float v2, v2, v3

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_37
    if-eqz p0, :cond_8

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_8
    goto/32 :goto_7

    nop

    nop

    :goto_38
    return v1

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    const v0, 0x7

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

    :goto_3b
    if-eqz v2, :cond_9

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_3c
    if-eq p0, p1, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    iget v2, p0, Lcjw;->f:F

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

    :goto_3e
    iget v3, p1, Lcjw;->b:F

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_3f
    if-lez v0, :cond_b

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

    :cond_b
    goto/32 :goto_34

    nop

    :goto_40
    if-eqz v2, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    :cond_c
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    if-eqz v2, :cond_d

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_d
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    return v1

    nop

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    cmpg-float v2, v2, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 2

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_0
    iget v1, p0, Lcjw;->h:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1
    iget v1, p0, Lcjw;->f:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int/2addr v0, v1

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_4
    add-int/2addr v0, v1

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_5
    mul-int/lit8 v0, v0, 0x1f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_7
    add-int/2addr v0, p0

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

    :goto_8
    add-int/2addr v0, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_9
    mul-int/lit8 v0, v0, 0x1f

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_b
    iget-object v1, p0, Lcjw;->i:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_c
    mul-int/lit8 v0, v0, 0x1f

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_d
    add-int/2addr v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_e
    goto/32 :goto_29

    nop

    :goto_f
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_10
    mul-int/lit8 v0, v0, 0x1f

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_11
    mul-int/lit8 v0, v0, 0x1f

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_12
    iget v1, p0, Lcjw;->c:F

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

    :goto_13
    mul-int/lit8 v0, v0, 0x1f

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

    :goto_14
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v0, p0, Lcjw;->a:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_16
    const v1, 0xc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_17
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_18
    const v0, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_19
    add-int/2addr v0, v1

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

    :goto_1a
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_1b
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

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

    :goto_1c
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_1d
    add-int/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_1e
    iget-object p0, p0, Lcjw;->j:Ljava/util/List;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget v1, p0, Lcjw;->g:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget v1, p0, Lcjw;->e:F

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget v1, p0, Lcjw;->b:F

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

    nop

    :goto_22
    add-int/2addr v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    mul-int/lit8 v0, v0, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_25
    mul-int/lit8 v0, v0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_26
    add-int/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_28
    return v0

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_2e

    nop

    nop

    :goto_2a
    add-int v0, v0, v1

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

    :goto_2b
    mul-int/lit8 v0, v0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_2c
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2d
    iget v1, p0, Lcjw;->d:F

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_f

    nop

    nop

    :goto_2f
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

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
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    new-instance v0, Lcjv;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0, p0}, Lcjv;-><init>(Lcjw;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object v0

    nop

    nop

    nop
.end method
