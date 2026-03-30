.class public final Lsf;
.super Le;
.source "PG"


# instance fields
.field public final a:Lou;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/Integer;

.field private final d:Lub;

.field private final e:Ljava/lang/Throwable;

.field private final f:Lub;

.field private final g:Lub;

.field private final h:Lub;

.field private final i:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/Integer;Lub;Ljava/lang/Throwable;Lub;Lub;Lub;Lou;)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    :goto_0
    iput-object p7, p0, Lsf;->g:Lub;

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

    :goto_1
    invoke-direct {p0, v0}, Le;-><init>([C)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lsf;->b:Ljava/lang/String;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    iput p2, p0, Lsf;->i:I

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_4
    iput-object p5, p0, Lsf;->e:Ljava/lang/Throwable;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    const/4 v0, 0x0

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

    :goto_7
    return-void

    nop

    nop

    :goto_8
    iput-object p4, p0, Lsf;->d:Lub;

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

    :goto_9
    iput-object p6, p0, Lsf;->f:Lub;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_a
    iput-object p9, p0, Lsf;->a:Lou;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_b
    iput-object p8, p0, Lsf;->h:Lub;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_c
    iput-object p3, p0, Lsf;->c:Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

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

    :goto_0
    if-eqz v1, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    :goto_1
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_3
    return v2

    nop

    nop

    :goto_4
    goto/32 :goto_18

    nop

    nop

    :goto_5
    return v2

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v3, p1, Lsf;->d:Lub;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v3, p1, Lsf;->b:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_9
    invoke-static {v1, v3}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_a
    iget-object v1, p0, Lsf;->c:Ljava/lang/Integer;

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

    :goto_b
    if-eqz p0, :cond_1

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-eqz v1, :cond_2

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_d
    return v0

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-eqz v1, :cond_3

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

    :cond_3
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-eqz v1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :cond_4
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_11
    if-eqz v1, :cond_5

    nop

    nop

    goto/32 :goto_14

    nop

    :cond_5
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {v1, v3}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_13
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_38

    nop

    nop

    nop

    :goto_15
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_a

    nop

    nop

    :goto_17
    invoke-static {v1, v3}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_18
    iget-object p0, p0, Lsf;->a:Lou;

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_19
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_3c

    nop

    nop

    :goto_1b
    iget-object v3, p1, Lsf;->c:Ljava/lang/Integer;

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

    nop

    :goto_1c
    return v2

    nop

    nop

    :goto_1d
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v1, p0, Lsf;->e:Ljava/lang/Throwable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_1f
    if-eqz v1, :cond_6

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_6
    goto/32 :goto_1

    nop

    nop

    :goto_20
    invoke-static {v1, v3}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_21
    iget-object v1, p0, Lsf;->b:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_22
    return v2

    nop

    nop

    :goto_23
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v1, p0, Lsf;->g:Lub;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_25
    iget-object v3, p1, Lsf;->f:Lub;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_26
    return v2

    nop

    nop

    :goto_27
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_28
    iget-object v1, p0, Lsf;->d:Lub;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_29
    invoke-static {v1, v3}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_2a
    if-ne v1, v3, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    const v1, 0x1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_2c
    return v0

    nop

    nop

    :goto_2d
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_2f
    check-cast p1, Lsf;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_30
    iget-object v3, p1, Lsf;->g:Lub;

    nop

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

    :goto_31
    return v2

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_24

    nop

    nop

    :goto_33
    if-eqz v1, :cond_8

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    :cond_8
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_35
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_39

    nop

    nop

    nop

    :goto_37
    const/4 v0, 0x1

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_38
    iget v1, p0, Lsf;->i:I

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_39
    iget-object v1, p0, Lsf;->f:Lub;

    nop

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

    :goto_3a
    const v0, 0x1b

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_3d
    iget v3, p1, Lsf;->i:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_3e
    invoke-static {v1, v3}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_3f
    iget-object v3, p1, Lsf;->h:Lub;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_40
    if-eq p0, p1, :cond_9

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_41
    if-eqz v1, :cond_a

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_a
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_42
    if-lez v0, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :cond_b
    goto/32 :goto_3b

    nop

    :goto_43
    invoke-static {v1, v3}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-static {p0, p1}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_45
    iget-object v1, p0, Lsf;->h:Lub;

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_46
    instance-of v1, p1, Lsf;

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_47
    iget-object p1, p1, Lsf;->a:Lou;

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    iget-object v3, p1, Lsf;->e:Ljava/lang/Throwable;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 4

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    :goto_1
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_c

    nop

    nop

    :goto_4
    if-eqz v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_5
    add-int/2addr v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_6
    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_7
    mul-int/lit8 v0, v0, 0x1f

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_9
    goto/16 :goto_1e

    nop

    nop

    :goto_a
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-eqz v1, :cond_2

    nop

    goto/32 :goto_43

    nop

    nop

    :cond_2
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Lsf;->b:Ljava/lang/String;

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

    :goto_d
    add-int/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_e
    if-eqz p0, :cond_3

    nop

    goto/32 :goto_19

    nop

    :cond_3
    goto/32 :goto_18

    nop

    nop

    :goto_f
    iget-wide v1, v1, Lub;->a:J

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    move v1, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-eqz v2, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_12
    invoke-static {v1}, La;->U(I)V

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_13
    iget-wide v1, v1, Lub;->a:J

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_14
    move v1, v3

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v1}, Ljava/lang/Throwable;->hashCode()I

    move-result v1

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/16 :goto_4e

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_4d

    nop

    nop

    :goto_1a
    goto/16 :goto_2f

    nop

    :goto_1b
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    add-int/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v2, p0, Lsf;->c:Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const v1, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_21
    mul-int/lit8 v0, v0, 0x1f

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    move v1, v3

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_23
    iget-object p0, p0, Lsf;->a:Lou;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-static {v1, v2}, La;->r(J)I

    move-result v1

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/16 :goto_50

    nop

    :goto_27
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_28
    move v2, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_29
    iget-object v1, p0, Lsf;->e:Ljava/lang/Throwable;

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

    :goto_2a
    if-eqz v1, :cond_5

    nop

    nop

    goto/32 :goto_40

    nop

    :cond_5
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_2c
    mul-int/lit8 v0, v0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_2d
    mul-int/lit8 v0, v0, 0x1f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_2e
    invoke-static {v1, v2}, La;->r(J)I

    move-result v1

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_30
    mul-int/lit8 v0, v0, 0x1f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_31
    add-int/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_32
    if-eqz v1, :cond_6

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

    :cond_6
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget v1, p0, Lsf;->i:I

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget-object v1, p0, Lsf;->g:Lub;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_35
    move v1, v3

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_3

    nop

    nop

    :goto_37
    goto/16 :goto_49

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_f

    nop

    nop

    :goto_39
    move v1, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_3a
    const v0, 0x13

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    if-lez v0, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_7
    goto/32 :goto_2

    nop

    :goto_3c
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

    :goto_3d
    iget-object v1, p0, Lsf;->h:Lub;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_3e
    iget-object v1, p0, Lsf;->f:Lub;

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3f
    goto/16 :goto_16

    nop

    :goto_40
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    mul-int/lit8 v0, v0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_42
    goto/16 :goto_25

    nop

    nop

    :goto_43
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_44
    add-int/2addr v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_45
    mul-int/lit8 v0, v0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_46
    mul-int/lit8 v0, v0, 0x1f

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

    :goto_47
    add-int/2addr v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_48
    invoke-static {v1, v2}, La;->r(J)I

    move-result v1

    nop

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    add-int/2addr v0, v3

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4b
    iget-wide v1, v1, Lub;->a:J

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_4c
    iget-wide v1, v1, Lub;->a:J

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    iget v3, p0, Lou;->a:I

    nop

    :goto_4e
    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_4f
    invoke-static {v1, v2}, La;->r(J)I

    move-result v1

    nop

    nop

    :goto_50
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    add-int/2addr v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_52
    iget-object v1, p0, Lsf;->d:Lub;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v1, p0, Lsf;->c:Ljava/lang/Integer;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1
    const-string v1, ", cameraClosingDurationNs="

    nop

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

    nop

    :goto_2
    const-string v1, "CameraStateClosed(cameraId="

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

    :goto_3
    goto/32 :goto_8

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
    iget-object v1, p0, Lsf;->b:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_6
    iget-object v1, p0, Lsf;->d:Lub;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_7
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    new-instance v0, Ljava/lang/StringBuilder;

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

    :goto_a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_c
    const-string v1, ", cameraRetryDurationNs="

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

    :goto_d
    iget-object v1, p0, Lsf;->e:Ljava/lang/Throwable;

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v1, p0, Lsf;->h:Lub;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v1, 0x9

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const-string v1, ", cameraClosedReason="

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v1, p0, Lsf;->g:Lub;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_19
    const-string v1, ", cameraOpenDurationNs="

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const-string v1, ", cameraErrorCode="

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_1a

    nop

    nop

    :goto_1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget v1, p0, Lsf;->i:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_1e
    const/16 p0, 0x29

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_1f
    const-string v1, ", cameraException="

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_20
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_23
    add-int v0, v0, v1

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

    nop

    :goto_24
    invoke-static {v1}, Lkg;->B(I)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_26
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const v0, 0xe

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_29
    const-string v1, ", cameraRetryCount="

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_2a
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_2c
    invoke-static {v1}, Loz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

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

    :goto_2d
    const-string v1, ", cameraActiveDurationNs="

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object p0, p0, Lsf;->a:Lou;

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iget-object v1, p0, Lsf;->f:Lub;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_19

    nop

    nop

    nop

    nop
.end method
