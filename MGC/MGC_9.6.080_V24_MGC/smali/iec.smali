.class public final Liec;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Landroid/graphics/RectF;

.field public final b:Landroid/graphics/RectF;

.field public final c:J

.field public final d:J

.field public final e:Landroid/graphics/Rect;

.field public final f:I

.field public final g:I

.field public final h:I


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    throw p0

    nop
.end method

.method public constructor <init>(ILandroid/graphics/RectF;Landroid/graphics/RectF;IJJLandroid/graphics/Rect;I)V
    .locals 0

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Liec;->a:Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    iput p10, p0, Liec;->f:I

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2
    iput p4, p0, Liec;->h:I

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p3, p0, Liec;->b:Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    iput-wide p5, p0, Liec;->c:J

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    iput-object p9, p0, Liec;->e:Landroid/graphics/Rect;

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

    :goto_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-wide p7, p0, Liec;->d:J

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_8
    iput p1, p0, Liec;->g:I

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v3, p1, Liec;->a:Landroid/graphics/RectF;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-eqz v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-eq p0, p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    :cond_1
    goto/32 :goto_38

    nop

    nop

    :goto_3
    if-eq v1, v3, :cond_2

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_5
    iget p0, p0, Liec;->f:I

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget v1, p0, Liec;->g:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v1, v3}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-wide v5, p1, Liec;->c:J

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_a
    check-cast p1, Liec;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_b
    iget-object v3, p1, Liec;->e:Landroid/graphics/Rect;

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_c
    if-eq v1, v3, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget v3, p1, Liec;->h:I

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v4, 0x0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_f
    return v0

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v1, p0, Liec;->e:Landroid/graphics/Rect;

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

    :goto_12
    if-nez v1, :cond_4

    nop

    goto/32 :goto_28

    nop

    :cond_4
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_14
    if-nez v1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :cond_5
    goto/32 :goto_3

    nop

    nop

    :goto_15
    if-nez v1, :cond_6

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_16
    iget p1, p1, Liec;->f:I

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

    :goto_17
    rem-int v0, v0, v1

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

    :goto_18
    if-nez v1, :cond_7

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

    :cond_7
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_19
    if-nez v1, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v1, p0, Liec;->a:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_1b
    iget-object v3, p1, Liec;->b:Landroid/graphics/RectF;

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

    :goto_1c
    invoke-virtual {v1, v3}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

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

    :goto_1d
    instance-of v1, p1, Liec;

    nop

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

    :goto_1e
    iget-wide v5, p1, Liec;->d:J

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_20
    cmp-long v1, v3, v5

    nop

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

    nop

    :goto_21
    goto/32 :goto_32

    nop

    :goto_22
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_23
    const v0, 0x1f

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_24
    iget-wide v3, p0, Liec;->c:J

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_25
    iget-wide v3, p0, Liec;->d:J

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_26
    iget v1, p0, Liec;->h:I

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_27
    throw v4

    nop

    nop

    :goto_28
    goto/32 :goto_31

    nop

    nop

    :goto_29
    if-eqz v1, :cond_9

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_2a
    throw v4

    nop

    nop

    :goto_2b
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    cmp-long v1, v3, v5

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

    :goto_2d
    if-eq p1, p0, :cond_a

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_f

    nop

    nop

    :goto_2e
    iget v3, p1, Liec;->g:I

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_2f
    const/4 v2, 0x0

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

    :goto_30
    if-nez v1, :cond_b

    nop

    goto/32 :goto_2b

    nop

    nop

    :cond_b
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_31
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_33
    return v2

    nop

    :goto_34
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_35
    if-lez v0, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    :cond_c
    goto/32 :goto_21

    nop

    :goto_36
    const v1, 0x16

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_37
    iget-object v1, p0, Liec;->b:Landroid/graphics/RectF;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    return v0

    nop

    nop

    :goto_39
    goto/32 :goto_2a

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 11

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    iget-wide v7, p0, Liec;->c:J

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

    :goto_1
    xor-long v6, v9, v7

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x11

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v1, p0, Liec;->b:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_4
    iget v1, p0, Liec;->h:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_5
    const/16 v6, 0x20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_6
    const v1, 0x17

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_7
    xor-int/2addr v0, v1

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

    :goto_8
    invoke-virtual {v5}, Landroid/graphics/Rect;->hashCode()I

    move-result v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_9
    xor-int/2addr v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_a
    iget p0, p0, Liec;->f:I

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_b
    mul-int/2addr v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_c
    xor-int/2addr v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_d
    iget v0, p0, Liec;->g:I

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

    :goto_e
    const v2, 0xf4243

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_f
    mul-int/2addr v0, v2

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

    :goto_10
    add-int v0, v0, v1

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

    nop

    :goto_11
    xor-int/2addr v0, v2

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v1, p0, Liec;->a:Landroid/graphics/RectF;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    long-to-int v1, v3

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {v1}, La;->U(I)V

    goto/32 :goto_18

    nop

    nop

    :goto_15
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    :cond_0
    goto/32 :goto_27

    nop

    :goto_16
    invoke-virtual {v1}, Landroid/graphics/RectF;->hashCode()I

    move-result v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_17
    mul-int/2addr v0, v2

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_18
    iget-wide v3, p0, Liec;->d:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_19
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_1a
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_1b
    invoke-static {v0}, La;->U(I)V

    goto/32 :goto_12

    nop

    nop

    :goto_1c
    xor-int/2addr v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_1d
    iget-object v5, p0, Liec;->e:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1e
    xor-int/2addr v0, v1

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

    :goto_1f
    xor-long/2addr v3, v7

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    mul-int/2addr v0, v2

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

    :goto_21
    xor-int/2addr p0, v0

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_22
    return p0

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_24
    mul-int/2addr v0, v2

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_25
    ushr-long v7, v3, v6

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_26
    long-to-int v1, v6

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_29
    mul-int/2addr v0, v2

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_2a
    invoke-virtual {v1}, Landroid/graphics/RectF;->hashCode()I

    move-result v1

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

    :goto_2b
    xor-int/2addr v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2c
    ushr-long v9, v7, v6

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_2d
    mul-int/2addr v0, v2

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 11

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_1
    const-string v2, "NOT_DETECTED"

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_4
    goto :goto_11

    nop

    :goto_5
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_53

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_8
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const-string v0, ", "

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

    :goto_a
    goto :goto_2

    nop

    nop

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_b
    const-string v10, "{"

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_c
    goto/32 :goto_3e

    nop

    :goto_d
    goto/32 :goto_4f

    nop

    nop

    :goto_e
    iget-wide v6, p0, Liec;->d:J

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_f
    goto :goto_2

    nop

    :pswitch_1
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_10
    const-string v0, "NO_GESTURE"

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

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

    :goto_14
    const-string v0, "STOP"

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_15
    goto/16 :goto_2

    nop

    nop

    :pswitch_2
    goto/32 :goto_22

    nop

    nop

    :goto_16
    goto/16 :goto_2

    nop

    nop

    :pswitch_3
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_17
    const-string v0, "THUMBS_UP"

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_18
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

    :cond_0
    goto/32 :goto_c

    nop

    :goto_19
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_1a
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    packed-switch v4, :pswitch_data_0

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const-string v2, "IGNORED"

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_13

    nop

    nop

    :goto_1e
    const/4 v1, 0x2

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_1f
    goto/16 :goto_2

    nop

    nop

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-ne v0, v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :cond_1
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_21
    if-ne v0, v1, :cond_2

    nop

    goto/32 :goto_48

    nop

    :cond_2
    goto/32 :goto_46

    nop

    nop

    nop

    :goto_22
    const-string v2, "GESTURE_MOVED"

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_23
    if-ne v0, v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_3
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const-string v2, "CAPTURE_TRIGGERED"

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_25
    const-string v2, "GESTURE_CONTINUED"

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_26
    move-object v0, v2

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_27
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

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

    :goto_28
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_29
    goto/16 :goto_2

    nop

    nop

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_4b

    nop

    nop

    :goto_2a
    goto/16 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_2c
    iget p0, p0, Liec;->f:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_2d
    const-string v2, "NEW_GESTURE"

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

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

    :goto_2f
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_31
    const-string v2, "null"

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iget v4, p0, Liec;->h:I

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_33
    const-string v2, "NOT_SUPPORTED"

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_34
    goto/16 :goto_2

    nop

    nop

    :pswitch_6
    goto/32 :goto_43

    nop

    nop

    :goto_35
    iget-object v8, p0, Liec;->e:Landroid/graphics/Rect;

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

    :goto_36
    new-instance v9, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_37
    if-ne v0, v1, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :cond_4
    goto/32 :goto_45

    nop

    nop

    nop

    :goto_38
    const-string v0, "V_SIGN"

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_39
    iget-wide v4, p0, Liec;->c:J

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_3b
    goto/16 :goto_11

    nop

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_14

    nop

    nop

    :goto_3d
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_8
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch

    :goto_3e
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3f
    const v1, 0xa

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_40
    iget-object v1, p0, Liec;->a:Landroid/graphics/RectF;

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_41
    iget-object v3, p0, Liec;->b:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_42
    const v0, 0x12

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_43
    const-string v2, "PARTIAL_GESTURE"

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

    :goto_44
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_28

    nop

    nop

    :goto_45
    const/4 v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_46
    const/4 v1, 0x4

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    goto/16 :goto_11

    nop

    nop

    :goto_48
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    const-string v2, "DETECTION_COOLDOWN"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_30

    nop

    nop

    :goto_4d
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    iget v0, p0, Liec;->g:I

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

    :goto_50
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1c

    nop

    nop

    :goto_51
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_52
    goto/16 :goto_2

    nop

    nop

    :pswitch_7
    goto/32 :goto_1

    nop

    nop

    :goto_53
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_54
    goto/16 :goto_2

    nop

    nop

    nop

    nop

    nop

    :pswitch_8
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop
.end method
