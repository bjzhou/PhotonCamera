.class public final Lcky;
.super Lbzy;
.source "PG"

# interfaces
.implements Lcwg;
.implements Lcks;


# instance fields
.field private final a:Lcks;

.field private final b:Lckv;

.field private final c:Ljava/lang/Object;


# direct methods
.method private final 7ecc92917e9c4556cc19f457ddc41af8m()Lcks;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lcky;->e()Lcky;

    move-result-object p0

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

    :goto_2
    iget-boolean v0, p0, Lbzy;->z:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-object p0

    nop

    :goto_5
    return-object p0

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public constructor <init>(Lcks;Lckv;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lcky;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Lcky;->b:Lckv;

    nop

    nop

    goto/32 :goto_5

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

    :goto_3
    iput-object p1, p0, Lcky;->a:Lcks;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Lbzy;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const-string p1, "androidx.compose.ui.input.nestedscroll.NestedScrollNode"

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


# virtual methods
.method public final a(JJI)J
    .locals 10

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface/range {v4 .. v9}, Lcks;->a(JJI)J

    move-result-wide v2

    nop

    nop

    nop

    nop

    :goto_1
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

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, p3, p4}, Lamo;->b(J)F

    move-result v4

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

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

    nop

    nop

    :goto_5
    iget-object v1, v0, Lamo;->a:Lamg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_6
    if-nez v4, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_7
    iget-boolean v1, v0, Lals;->b:Z

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_8
    check-cast v1, Lajc;

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0, v1}, Lamo;->f(F)J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {v0, v1, v2, v3}, La;->aK(JJ)J

    move-result-wide p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_b
    goto/16 :goto_27

    nop

    :goto_c
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_d
    move v9, p5

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x6

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_f
    check-cast v1, Ljava/lang/Number;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_10
    invoke-static {p1, p2, v0, v1}, La;->aK(JJ)J

    move-result-wide v5

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {p3, p4, v0, v1}, La;->aJ(JJ)J

    move-result-wide v7

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_12
    if-nez v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_13
    check-cast v1, Lasr;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_14
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_15
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    :cond_2
    goto/32 :goto_19

    nop

    :goto_16
    return-wide p0

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_18
    check-cast v0, Lals;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_17

    nop

    :goto_1a
    goto/32 :goto_29

    nop

    nop

    :goto_1b
    iget-object v0, v0, Lals;->a:Lamo;

    nop

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

    nop

    :goto_1c
    invoke-direct {p0}, Lcky;->7ecc92917e9c4556cc19f457ddc41af8m()Lcks;

    move-result-object v4

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1d
    move-wide v0, v2

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-interface {v1, v4}, Lubk;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_20
    const v1, 0x13

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

    :goto_21
    iget-object v1, v1, Lasr;->i:Lamg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_1a

    nop

    nop

    :goto_23
    invoke-interface {v1}, Lamg;->d()Z

    move-result v1

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

    :goto_24
    const-wide/16 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v0, v4}, Lamo;->a(F)F

    move-result v4

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto :goto_1e

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_1d

    nop

    nop

    :goto_28
    if-nez v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    :cond_3
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget-object v0, p0, Lcky;->a:Lcks;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object v1, v0, Lamo;->a:Lamg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_2b
    iget-object v1, v1, Lajc;->a:Lubk;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    add-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2d
    invoke-virtual {v0, v1}, Lamo;->a(F)F

    move-result v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b(JI)J
    .locals 4

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move-wide v2, v0

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x18

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    const v1, 0xe

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

    :goto_4
    return-wide p0

    nop

    :goto_5
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_7
    invoke-direct {p0}, Lcky;->7ecc92917e9c4556cc19f457ddc41af8m()Lcks;

    move-result-object p0

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

    :goto_8
    rem-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v2, v3, v0, v1}, La;->aK(JJ)J

    move-result-wide p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_a
    invoke-interface {p0, p1, p2, p3}, Lcks;->b(JI)J

    move-result-wide v2

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

    :goto_b
    if-nez p0, :cond_0

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

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_5

    nop

    nop

    :goto_f
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const-wide/16 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_11
    goto/16 :goto_1

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_13
    invoke-static {p1, p2, v2, v3}, La;->aJ(JJ)J

    goto/32 :goto_9

    nop

    nop

    nop
.end method

.method public final c(JJLtzy;)Ljava/lang/Object;
    .locals 15

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v2, v0, v1}, Ldpv;-><init>(J)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2
    invoke-direct {v2, p0, v1}, Lckw;-><init>(Lcky;Ltzy;)V

    :goto_3
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_4
    goto :goto_e

    nop

    nop

    :goto_5
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-wide v11, v2, Lckw;->a:J

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v3, v4, v0, v1}, La;->aK(JJ)J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {v1}, Lrgw;->ak(Ljava/lang/Object;)V

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_9
    return-object v2

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v1, v2, Lckw;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_c
    move-wide/from16 v6, p3

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-ne v1, v9, :cond_0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_0
    :goto_e
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-ne v1, v9, :cond_1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_1
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/16 :goto_3e

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_12
    move-object p0, v0

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_13
    move-object v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_14
    sub-int/2addr v3, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-interface/range {p0 .. p5}, Lcks;->c(JJLtzy;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_16
    invoke-static {v11, v12, v3, v4}, La;->aK(JJ)J

    move-result-wide v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_17
    iget v3, v2, Lckw;->e:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_18
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_4d

    nop

    :cond_2
    goto/32 :goto_4c

    nop

    :goto_19
    new-instance v2, Ldpv;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    throw v0

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    check-cast v2, Lckw;

    nop

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

    :goto_1d
    move-object v2, v1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1e
    move-wide/from16 v13, p3

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_1f
    if-nez v2, :cond_3

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :cond_3
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_20
    const/high16 v4, -0x80000000

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v3, v0, Lcky;->a:Lcks;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_22
    move-wide v2, v3

    nop

    :goto_23
    goto/32 :goto_31

    nop

    nop

    :goto_24
    iput-object v0, v2, Lckw;->f:Lcky;

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iput-wide v3, v2, Lckw;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_26
    goto :goto_23

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_4a

    nop

    nop

    :goto_28
    iget-wide v0, v1, Ldpv;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const/4 v1, 0x0

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

    :goto_2a
    goto/16 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iput v10, v2, Lckw;->e:I

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_2e
    const v0, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_2f
    rem-int v0, v0, v1

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_30
    move-wide v11, v5

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_31
    check-cast v1, Ldpv;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_32
    move-object v8, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_33
    iget-wide v5, v2, Lckw;->a:J

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_34
    sget-object v9, Luag;->a:Luag;

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const/4 v4, 0x1

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_36
    move-wide/from16 p1, v5

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iget-wide v3, v1, Ldpv;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-direct {v0}, Lcky;->7ecc92917e9c4556cc19f457ddc41af8m()Lcks;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_39
    if-nez v0, :cond_4

    nop

    nop

    goto/32 :goto_11

    nop

    :cond_4
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_3a
    if-ne v3, v4, :cond_5

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

    :cond_5
    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_3b
    invoke-interface/range {v3 .. v8}, Lcks;->c(JJLtzy;)Ljava/lang/Object;

    move-result-object v1

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

    :goto_3c
    check-cast v1, Ldpv;

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    const-wide/16 v0, 0x0

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_7

    nop

    nop

    :goto_3f
    invoke-static {v13, v14, v3, v4}, La;->aJ(JJ)J

    move-result-wide v7

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

    :goto_40
    iget-wide v2, v2, Lckw;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_41
    if-nez v3, :cond_6

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_42
    invoke-static {v1}, Lrgw;->ak(Ljava/lang/Object;)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_43
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_44
    iget-object v0, v2, Lckw;->f:Lcky;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_45
    return-object v9

    nop

    nop

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_2d

    nop

    nop

    :goto_47
    iget-wide v3, v2, Lckw;->b:J

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_48
    instance-of v2, v1, Lckw;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_49
    iput-object v1, v2, Lckw;->f:Lcky;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_4b
    iput v4, v2, Lckw;->e:I

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    goto/32 :goto_46

    nop

    :goto_4d
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_4e
    and-int v5, v3, v4

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_4f
    move-wide/from16 v4, p1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_50
    move-object/from16 p5, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_51
    move-wide v3, v2

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_52
    move-wide/from16 v11, p1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    new-instance v2, Lckw;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_54
    move-wide v13, v3

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_55
    move-wide/from16 p3, v7

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_56
    const/4 v10, 0x2

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_57
    if-nez v5, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_14

    nop

    nop

    :goto_58
    iget v3, v2, Lckw;->e:I

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_59
    add-int v0, v0, v1

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    const v1, 0x14

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    iput-wide v13, v2, Lckw;->b:J

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_5c
    if-eq v3, v10, :cond_8

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_40

    nop

    nop

    nop

    :goto_5d
    move-object/from16 v1, p5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_5e
    iput v3, v2, Lckw;->e:I

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-static {v1}, Lrgw;->ak(Ljava/lang/Object;)V

    goto/32 :goto_26

    nop

    nop

    nop
.end method

.method public final cd(JLtzy;)Ljava/lang/Object;
    .locals 10

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_0
    move-wide v8, p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    iget-wide p2, p3, Ldpv;->a:J

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_2
    move-object p0, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_4
    move-wide v6, v3

    nop

    :goto_5
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {p3}, Lrgw;->ak(Ljava/lang/Object;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_7
    sub-int/2addr v1, v2

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_8
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {p3}, Lrgw;->ak(Ljava/lang/Object;)V

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_a
    instance-of v0, p3, Lckx;

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_b
    goto/16 :goto_28

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_d
    iput v1, v0, Lckx;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-nez p3, :cond_0

    nop

    nop

    goto/32 :goto_25

    nop

    :cond_0
    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_f
    const v1, 0x1

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_10
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    move-wide p0, v6

    nop

    nop

    :goto_12
    goto/32 :goto_53

    nop

    nop

    nop

    :goto_13
    goto :goto_12

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_15
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_16
    const-wide/16 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-ne v2, v6, :cond_1

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-wide p0, v0, Lckx;->a:J

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_19
    invoke-static {p0, p1, p2, p3}, La;->aK(JJ)J

    move-result-wide p0

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-nez v2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_2
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1b
    if-ne p3, v1, :cond_3

    nop

    goto/32 :goto_39

    nop

    nop

    :cond_3
    goto/32 :goto_11

    nop

    nop

    :goto_1c
    iput-object p0, v0, Lckx;->e:Lcky;

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_1d
    iget v1, v0, Lckx;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {p1, p2, v6, v7}, La;->aJ(JJ)J

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2e

    nop

    :goto_20
    sget-object v1, Luag;->a:Luag;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_21
    iget v2, v0, Lckx;->d:I

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iput v6, v0, Lckx;->d:I

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_23
    new-instance v0, Lckx;

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_24
    goto/16 :goto_5

    nop

    :goto_25
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_26
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_27
    if-ne p3, v1, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :cond_5
    :goto_28
    goto/32 :goto_3d

    nop

    nop

    :goto_29
    const v0, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2a
    move-object v0, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_2b
    invoke-direct {p3, v3, v4}, Ldpv;-><init>(J)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    if-eq v2, v5, :cond_6

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    :cond_6
    goto/32 :goto_18

    nop

    nop

    :goto_2d
    new-instance p2, Ldpv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_2e
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-static {p3}, Lrgw;->ak(Ljava/lang/Object;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-direct {p2, p0, p1}, Ldpv;-><init>(J)V

    goto/32 :goto_38

    nop

    nop

    :goto_32
    iget-wide p0, v0, Lckx;->a:J

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget-object p0, p0, Lcky;->a:Lcks;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_34
    invoke-interface {p3, p1, p2, v0}, Lcks;->cd(JLtzy;)Ljava/lang/Object;

    move-result-object p3

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_35
    iget-wide v6, p3, Ldpv;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_36
    const/high16 v2, -0x80000000

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_37
    check-cast v0, Lckx;

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

    nop

    :goto_38
    return-object p2

    nop

    :goto_39
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    goto/16 :goto_4c

    nop

    :goto_3b
    goto/32 :goto_23

    nop

    nop

    :goto_3c
    invoke-direct {p0}, Lcky;->7ecc92917e9c4556cc19f457ddc41af8m()Lcks;

    move-result-object p3

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

    :goto_3d
    check-cast p3, Ldpv;

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_3e
    iput-wide v6, v0, Lckx;->a:J

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_2f

    nop

    nop

    :goto_40
    iput v5, v0, Lckx;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_41
    move-wide p1, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_42
    throw p0

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_44
    iget-object p2, v0, Lckx;->e:Lcky;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_45
    if-nez v0, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    :cond_7
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_46
    const/4 v5, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_47
    and-int v3, v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_48
    iput-wide p1, v0, Lckx;->a:J

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_49
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_42

    nop

    nop

    :goto_4a
    if-nez v3, :cond_8

    nop

    goto/32 :goto_3b

    nop

    :cond_8
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-direct {v0, p0, p3}, Lckx;-><init>(Lcky;Ltzy;)V

    :goto_4c
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_4d
    iget-object p3, v0, Lckx;->b:Ljava/lang/Object;

    nop

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

    :goto_4e
    iput-object p0, v0, Lckx;->e:Lcky;

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_4f
    const/4 v6, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_50
    new-instance p3, Ldpv;

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_51
    return-object v1

    nop

    nop

    :goto_52
    goto/32 :goto_3f

    nop

    nop

    :goto_53
    check-cast p3, Ldpv;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final ce()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lbzy;->z()Lufs;

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p0, v0, Lckv;->a:Lcky;

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

    :goto_2
    iget-object v0, p0, Lcky;->b:Lckv;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop
.end method

.method public final ci()V
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lcky;->b:Lckv;

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

    :goto_1
    const v1, 0x9

    nop

    nop

    goto/32 :goto_d

    nop

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

    :goto_3
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p0, v0, Lckv;->a:Lcky;

    nop

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_8

    nop

    nop

    :goto_a
    const v0, 0x1b

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v1, v0, Lckv;->a:Lcky;

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
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_d
    add-int v0, v0, v1

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

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_f
    if-eq v1, p0, :cond_1

    nop

    goto/32 :goto_5

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

    nop

    nop
.end method

.method public final d()Ljava/lang/Object;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object p0

    nop

    :goto_1
    iget-object p0, p0, Lcky;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e()Lcky;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-boolean v0, p0, Lbzy;->z:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1
    invoke-static {p0}, Lcwh;->a(Lcwg;)Lcwg;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    check-cast p0, Lcky;

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

    :goto_5
    return-object p0

    nop

    nop

    nop

    :goto_6
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_7
    if-nez v0, :cond_0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method
