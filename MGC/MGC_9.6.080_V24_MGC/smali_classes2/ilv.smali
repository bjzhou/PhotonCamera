.class public final Lilv;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Lj$/util/Optional;

.field public final d:Lj$/util/Optional;

.field public final e:Z

.field public final f:F

.field public final g:F

.field public final h:F

.field public final i:I


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    throw p0

    nop

    nop
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lj$/util/Optional;Lj$/util/Optional;ZFFFI)V
    .locals 0

    goto/32 :goto_6

    nop

    nop

    :goto_0
    iput p7, p0, Lilv;->g:F

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1
    iput-object p3, p0, Lilv;->c:Lj$/util/Optional;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2
    iput-boolean p5, p0, Lilv;->e:Z

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

    :goto_3
    iput p6, p0, Lilv;->f:F

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    iput-object p1, p0, Lilv;->a:Ljava/lang/String;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput p9, p0, Lilv;->i:I

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p4, p0, Lilv;->d:Lj$/util/Optional;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-object p2, p0, Lilv;->b:Ljava/lang/String;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_a
    iput p8, p0, Lilv;->h:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop
.end method

.method public static a()Liij;
    .locals 7

    goto/32 :goto_22

    nop

    nop

    :goto_0
    const/16 v5, 0x3d9

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_2
    const/16 v5, 0x3d7

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_4
    const/16 v5, 0x3da

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_5
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v6, 0x0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_7
    const/high16 v2, -0x40800000    # -1.0f

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

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

    :goto_a
    new-instance v0, Liij;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_b
    new-array v3, v3, [Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_c
    aput-object v4, v3, v6

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_d
    aput-object v4, v3, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_e
    invoke-static {v5, v0, v3}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/16 v5, 0x3db

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_10
    new-array v3, v3, [Ljava/lang/Object;

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_11
    return-object v0

    nop

    :goto_12
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v1, 0xe

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {v5, v0, v3}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {v5, v0, v3}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-lez v0, :cond_0

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_26

    nop

    :goto_17
    aput-object v4, v3, v6

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_18
    new-array v3, v3, [Ljava/lang/Object;

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_19
    invoke-static {v5, v0, v3}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-direct {v0}, Liij;-><init>()V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_1c
    const/4 v3, 0x1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_1d
    const/4 v6, 0x0

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

    :goto_1e
    invoke-static {v5, v0, v3}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

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

    :goto_20
    const/4 v6, 0x0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_21
    aput-object v4, v3, v6

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const v0, 0x1c

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

    :goto_23
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_24
    const/4 v3, 0x1

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

    :goto_25
    aput-object v4, v3, v6

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_28
    new-array v3, v3, [Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_29
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

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

    nop

    :goto_2a
    const/16 v5, 0x3d8

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_2b
    const/4 v3, 0x1

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const/4 v6, 0x0

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_2d
    const/4 v6, 0x0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_2f
    const/4 v3, 0x1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_30
    const/4 v3, 0x1

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_31
    invoke-virtual {v0, v1}, Liij;->h(Lj$/util/Optional;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_32
    new-array v3, v3, [Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v1, :cond_0

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-boolean v3, p1, Lilv;->e:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_2
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-eq p0, p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    :cond_1
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_5
    iget v3, p1, Lilv;->g:F

    nop

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

    :goto_6
    iget-object v1, p0, Lilv;->d:Lj$/util/Optional;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_7
    iget-object v1, p0, Lilv;->b:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_8
    goto :goto_13

    nop

    nop

    :goto_9
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_b
    goto/16 :goto_1b

    nop

    nop

    :goto_c
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v1, p0, Lilv;->c:Lj$/util/Optional;

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_e
    if-eqz v1, :cond_2

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_2
    goto/32 :goto_2d

    nop

    nop

    :goto_f
    const/4 v0, 0x1

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

    :goto_10
    iget v1, p0, Lilv;->f:F

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v3, p1, Lilv;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_12
    if-nez v1, :cond_3

    nop

    nop

    goto/32 :goto_38

    nop

    :cond_3
    :goto_13
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget v3, p1, Lilv;->f:F

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_16
    iget-boolean v1, p0, Lilv;->e:Z

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

    :goto_17
    invoke-virtual {v1, v3}, Lj$/util/Optional;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_18
    iget-object v1, p0, Lilv;->a:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-eqz v1, :cond_4

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

    :cond_4
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/16 :goto_38

    nop

    :goto_1b
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1c
    if-eq v1, v3, :cond_5

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v3, p1, Lilv;->d:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_1e
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1f
    if-eq p1, p0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_20
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_21
    const v1, 0x11

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

    nop

    :goto_22
    iget v1, p0, Lilv;->h:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_23
    iget v3, p1, Lilv;->h:F

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_24
    iget p1, p1, Lilv;->i:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_25
    if-eqz v1, :cond_7

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_26
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_28
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_41

    nop

    nop

    :goto_2a
    if-eqz v1, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :cond_8
    goto/32 :goto_8

    nop

    nop

    :goto_2b
    instance-of v1, p1, Lilv;

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    if-nez v1, :cond_9

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v1, p1, Lilv;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_2e
    if-lez v0, :cond_a

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_35

    nop

    :goto_2f
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_30
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_31
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iget v1, p0, Lilv;->g:F

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_33
    if-nez v1, :cond_b

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :cond_b
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_f

    nop

    nop

    :goto_37
    return v0

    nop

    :goto_38
    goto/32 :goto_28

    nop

    nop

    :goto_39
    iget-object v1, p1, Lilv;->b:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_3a
    if-eq v1, v3, :cond_c

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_3b
    check-cast p1, Lilv;

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_3c
    invoke-virtual {v1, v3}, Lj$/util/Optional;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    if-eq v1, v3, :cond_d

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :cond_d
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_3e
    const/4 v2, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3f
    iget-object v3, p1, Lilv;->b:Ljava/lang/String;

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

    nop

    :goto_40
    const v0, 0x8

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_42
    if-eqz v1, :cond_e

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

    :cond_e
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    iget-object v3, p1, Lilv;->c:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_44
    iget p0, p0, Lilv;->i:I

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_45
    if-eq v1, v3, :cond_f

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :cond_f
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 4

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    mul-int/2addr v0, v2

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_2
    xor-int/2addr v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_12

    nop

    nop

    :goto_6
    iget v1, p0, Lilv;->h:F

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_7
    xor-int/2addr v0, v1

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_8
    xor-int/2addr v0, v1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x13

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_c
    iget-object v3, p0, Lilv;->c:Lj$/util/Optional;

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto :goto_5

    nop

    :goto_e
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget p0, p0, Lilv;->i:I

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

    nop

    nop

    :goto_10
    const/4 v1, 0x1

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v1}, Lj$/util/Optional;->hashCode()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_12
    const v2, 0xf4243

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

    :goto_13
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_9

    nop

    :goto_14
    xor-int/2addr v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_15
    goto :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_17
    mul-int/2addr v0, v2

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_18
    mul-int/2addr v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_19
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

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

    :goto_1a
    xor-int/2addr v0, v1

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_1b
    move v0, v1

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

    :goto_1c
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_1e
    const/16 v1, 0x4cf

    nop

    :goto_1f
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_20
    const v1, 0x14

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    mul-int/2addr v0, v2

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

    :goto_22
    iget v1, p0, Lilv;->f:F

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_23
    xor-int/2addr p0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_24
    xor-int/2addr v0, v2

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_25
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_26
    return p0

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_28
    mul-int/2addr v0, v2

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_29
    xor-int/2addr v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2a
    mul-int/2addr v0, v2

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v2, p0, Lilv;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_2c
    iget v1, p0, Lilv;->g:F

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_2e
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_2f
    goto/16 :goto_1d

    nop

    nop

    :goto_30
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    mul-int/2addr v0, v2

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_32
    mul-int/2addr v0, v2

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_33
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_34
    xor-int/2addr v0, v1

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    if-eqz v0, :cond_1

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_36
    if-eqz v2, :cond_2

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_2
    goto/32 :goto_d

    nop

    nop

    :goto_37
    iget-object v1, p0, Lilv;->d:Lj$/util/Optional;

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

    :goto_38
    iget-object v0, p0, Lilv;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_39
    invoke-virtual {v3}, Lj$/util/Optional;->hashCode()I

    move-result v1

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

    :goto_3a
    iget-boolean v3, p0, Lilv;->e:Z

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_3b
    const/16 v1, 0x4d5

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    if-ne v1, v3, :cond_3

    nop

    nop

    goto/32 :goto_16

    nop

    :cond_3
    goto/32 :goto_3b

    nop

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v3, "{"

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_1
    iget v0, p0, Lilv;->h:F

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    :cond_0
    goto/32 :goto_1b

    nop

    :goto_3
    return-object p0

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto/32 :goto_2c

    nop

    nop

    :goto_6
    iget p0, p0, Lilv;->i:I

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1c

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

    goto/32 :goto_15

    nop

    nop

    :goto_9
    iget-object v0, p0, Lilv;->d:Lj$/util/Optional;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_a
    iget v0, p0, Lilv;->g:F

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_f
    const/4 p0, 0x0

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_10
    iget-object v3, p0, Lilv;->a:Ljava/lang/String;

    nop

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

    :goto_11
    iget v0, p0, Lilv;->f:F

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_12
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_13
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_14
    const v1, 0xc

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_16
    sget-object p0, Lcom/google/android/apps/camera/ui/hotshot/NgVy/uBXLxqUja;->cNA:Ljava/lang/String;

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

    :goto_17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_26

    nop

    nop

    :goto_18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v4, p0, Lilv;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_4

    nop

    nop

    :goto_1c
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_11

    nop

    nop

    :goto_1e
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_10

    nop

    nop

    :goto_1f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const-string v3, ", "

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_23
    iget-boolean v0, p0, Lilv;->e:Z

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

    :goto_24
    new-instance v2, Ljava/lang/StringBuilder;

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

    :goto_25
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_d

    nop

    nop

    :goto_27
    const v0, 0x8

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object v1, p0, Lilv;->c:Lj$/util/Optional;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto/32 :goto_28

    nop

    nop
.end method
