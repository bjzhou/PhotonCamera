.class public final Ldhu;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:J

.field public final d:Ldoj;

.field public final e:Ldhx;

.field public final f:Ldny;

.field public final g:I

.field public final h:I

.field public final i:Ldok;


# direct methods
.method public constructor <init>(IIJLdoj;Ldhx;Ldny;IILdok;)V
    .locals 0

    goto/32 :goto_9

    nop

    nop

    :goto_0
    invoke-static {p3, p4}, Ldps;->a(J)F

    move-result p0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_4
    iput-object p6, p0, Ldhu;->e:Ldhx;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_5
    if-eqz p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    :goto_6
    invoke-static {p3, p4}, Ldps;->a(J)F

    move-result p1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const-string p1, "lineHeight can\'t be negative ("

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_8
    iput p1, p0, Ldhu;->a:I

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_8

    nop

    nop

    :goto_a
    iput-wide p3, p0, Ldhu;->c:J

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput-object p7, p0, Ldhu;->f:Ldny;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_c
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_d
    cmpl-float p0, p0, p1

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

    :goto_e
    iput p8, p0, Ldhu;->g:I

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/16 :goto_2

    nop

    nop

    :goto_10
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iput p2, p0, Ldhu;->b:I

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_12
    const/16 p1, 0x29

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_13
    if-gez p0, :cond_1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_14
    iput p9, p0, Ldhu;->h:I

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_15
    new-instance p1, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_16
    sget-wide p0, Ldps;->a:J

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_17
    iput-object p5, p0, Ldhu;->d:Ldoj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_18
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    return-void

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1b
    new-instance p0, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static {p3, p4, p0, p1}, La;->q(JJ)Z

    move-result p0

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1d
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iput-object p10, p0, Ldhu;->i:Ldok;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 p1, 0x0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ldhu;)Ldhu;
    .locals 11

    goto/32 :goto_a

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_3
    iget v9, p1, Ldhu;->h:I

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget v2, p1, Ldhu;->b:I

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v6, p1, Ldhu;->e:Ldhx;

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

    nop

    :goto_6
    iget-object v5, p1, Ldhu;->d:Ldoj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_7
    move-object v0, p0

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

    :goto_8
    const v1, 0xa

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

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_a
    const v0, 0xf

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v7, p1, Ldhu;->f:Ldny;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v10, p1, Ldhu;->i:Ldok;

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

    :goto_d
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static/range {v0 .. v10}, Ldhv;->a(Ldhu;IIJLdoj;Ldhx;Ldny;IILdok;)Ldhu;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_12
    iget-wide v3, p1, Ldhu;->c:J

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_13
    iget v8, p1, Ldhu;->g:I

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget v1, p1, Ldhu;->a:I

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v3, p1, Ldhu;->a:I

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x2

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

    :goto_2
    iget-object p0, p0, Ldhu;->i:Ldok;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_3
    return v2

    nop

    nop

    :goto_4
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_5
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_7
    return v2

    nop

    :goto_8
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    invoke-static {v3, v4, v5, v6}, La;->q(JJ)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {v1, v3}, La;->p(II)Z

    move-result v1

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_b
    iget-wide v3, p0, Ldhu;->c:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_c
    iget v1, p0, Ldhu;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_d
    invoke-static {v1, v3}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_e
    iget-object v3, p1, Ldhu;->d:Ldoj;

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_2e

    nop

    :goto_10
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v1, p0, Ldhu;->f:Ldny;

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {v1, v3}, La;->p(II)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_13
    return v2

    nop

    :goto_14
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_16
    iget v1, p0, Ldhu;->h:I

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_17
    return v0

    nop

    :goto_18
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {p0, p1}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-eqz v1, :cond_0

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v3, p1, Ldhu;->e:Ldhx;

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

    :goto_1d
    return v2

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget v1, p0, Ldhu;->g:I

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_20
    iget-object v1, p0, Ldhu;->d:Ldoj;

    nop

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

    :goto_21
    invoke-static {v1, v3}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_22
    return v2

    nop

    nop

    :goto_23
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-object p1, p1, Ldhu;->i:Ldok;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_25
    iget v3, p1, Ldhu;->b:I

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_26
    if-eqz v1, :cond_1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_27
    if-eqz p0, :cond_2

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

    :cond_2
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    if-eq p0, p1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-static {v1, v3}, La;->p(II)Z

    move-result v1

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_2a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_2b
    return v2

    nop

    nop

    :goto_2c
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    return v0

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_2f
    instance-of v1, p1, Ldhu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    if-eqz v1, :cond_4

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_4
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_31
    const v1, 0x18

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iget v1, p0, Ldhu;->b:I

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget-object v1, p0, Ldhu;->e:Ldhx;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    check-cast p1, Ldhu;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    if-eqz v1, :cond_5

    nop

    goto/32 :goto_38

    nop

    nop

    :cond_5
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_36
    if-eqz v1, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :cond_6
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_37
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_39
    invoke-static {v1, v3}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_3a
    if-eqz v1, :cond_7

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_7
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3b
    iget-wide v5, p1, Ldhu;->c:J

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3c
    return v2

    nop

    nop

    :goto_3d
    goto/32 :goto_33

    nop

    nop

    nop

    :goto_3e
    return v2

    nop

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_40
    iget v3, p1, Ldhu;->g:I

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

    :goto_41
    if-eqz v1, :cond_8

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_8
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_42
    if-lez v0, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_9
    goto/32 :goto_f

    nop

    :goto_43
    iget v3, p1, Ldhu;->h:I

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_44
    invoke-static {v1, v3}, La;->p(II)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_45
    if-eqz v1, :cond_a

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_46
    iget-object v3, p1, Ldhu;->f:Ldny;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_47
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_48
    if-eqz v1, :cond_b

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_49
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop
.end method

.method public final hashCode()I
    .locals 7

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v6, p0, Ldhu;->e:Ldhx;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_1
    iget-object v0, p0, Ldhu;->f:Ldny;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_2
    mul-int/lit8 v2, v2, 0x1f

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_4
    add-int/2addr v2, v0

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

    :goto_5
    add-int/2addr v2, v3

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_6
    move v0, v1

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_8
    iget v2, p0, Ldhu;->a:I

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    mul-int/lit8 v2, v2, 0x1f

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_a
    const v1, 0xb

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_b
    mul-int/lit8 v2, v2, 0x1f

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p0, p0, Ldhu;->i:Ldok;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_d
    invoke-virtual {v0}, Ldoj;->hashCode()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-wide v4, p0, Ldhu;->c:J

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

    nop

    :goto_f
    sget-wide v0, Ldps;->a:J

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Ldhu;->d:Ldoj;

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_11
    if-nez v0, :cond_0

    nop

    goto/32 :goto_1d

    nop

    :cond_0
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_12
    const v0, 0x1f

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_13
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    :cond_1
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    return v2

    nop

    :goto_15
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_16
    add-int/2addr v2, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_17
    invoke-static {v4, v5}, La;->r(J)I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_18
    add-int/2addr v2, v1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_19
    move v6, v1

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_39

    nop

    nop

    nop

    :goto_1b
    mul-int/lit8 v2, v2, 0x1f

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1c
    goto/16 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    add-int/2addr v2, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2e

    nop

    :goto_20
    add-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_21
    add-int/2addr v2, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_22
    if-nez v6, :cond_3

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :cond_3
    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_23
    mul-int/lit8 v2, v2, 0x1f

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

    :goto_24
    mul-int/lit8 v2, v2, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_25
    add-int/2addr v2, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_26
    iget v0, p0, Ldhu;->g:I

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_27
    iget v3, p0, Ldhu;->b:I

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_28
    move v0, v1

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    if-nez p0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_2b
    const/4 v1, 0x0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p0}, Ldok;->hashCode()I

    move-result v1

    nop

    :goto_2d
    goto/32 :goto_18

    nop

    nop

    :goto_2e
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_f

    nop

    nop

    :goto_30
    invoke-virtual {v0}, Ldny;->hashCode()I

    move-result v0

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

    :goto_31
    mul-int/lit8 v2, v2, 0x1f

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_32
    add-int/2addr v2, v3

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_33
    goto/16 :goto_1a

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_35
    iget v0, p0, Ldhu;->h:I

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

    :goto_36
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_37
    goto/16 :goto_7

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_39
    mul-int/lit8 v2, v2, 0x1f

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

    :goto_3a
    invoke-virtual {v6}, Ldhx;->hashCode()I

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    :goto_1
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v1, p0, Ldhu;->e:Ldhx;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_b

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_29

    nop

    nop

    :goto_7
    const-string v1, ", textDirection="

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_8
    const-string v1, ", textMotion="

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-wide v1, p0, Ldhu;->c:J

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

    :goto_c
    invoke-static {v1}, Ldnv;->a(I)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_f
    const-string v1, ", textIndent="

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

    :goto_10
    invoke-static {v1}, Ldoc;->a(I)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget v1, p0, Ldhu;->a:I

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

    :goto_16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const-string v1, ", platformStyle="

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

    :goto_18
    const-string v1, "ParagraphStyle(textAlign="

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1a
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_33

    nop

    nop

    :goto_1c
    const v0, 0x13

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget v1, p0, Ldhu;->g:I

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1f
    iget v1, p0, Ldhu;->h:I

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-static {v1}, Ldnu;->a(I)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

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

    :goto_23
    iget v1, p0, Ldhu;->b:I

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_24
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_25
    if-lez v0, :cond_0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    :goto_26
    invoke-static {v1}, Ldoa;->a(I)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_28
    iget-object p0, p0, Ldhu;->i:Ldok;

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const-string v1, ", lineHeightStyle="

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_2b
    const/16 p0, 0x29

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_2c
    invoke-static {v1, v2}, Ldps;->d(J)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_2d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object v1, p0, Ldhu;->d:Ldoj;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1e

    nop

    nop

    :goto_30
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const-string v1, ", lineBreak="

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

    :goto_32
    const-string v1, ", lineHeight="

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

    :goto_33
    const-string v1, ", hyphens="

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_34
    iget-object v1, p0, Ldhu;->f:Ldny;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    const v1, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop
.end method
