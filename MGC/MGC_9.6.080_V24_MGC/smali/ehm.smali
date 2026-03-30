.class public final Lehm;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z

.field public final c:Ljava/util/List;

.field public d:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V
    .locals 0

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p4, p1}, Ljava/util/ArrayList;-><init>(I)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-lt p2, p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_2
    if-nez p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_3
    iput-object p4, p0, Lehm;->d:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-boolean p2, p0, Lehm;->b:Z

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_5
    iput-object p1, p0, Lehm;->a:Ljava/lang/String;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 p2, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput-object p4, p0, Lehm;->d:Ljava/util/List;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_11

    nop

    nop

    :goto_c
    invoke-interface {p4}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_d
    iput-object p3, p0, Lehm;->c:Ljava/util/List;

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

    :goto_e
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_f
    new-instance p4, Ljava/util/ArrayList;

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

    :goto_10
    const-string p3, "ASC"

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_11
    add-int/lit8 p2, p2, 0x1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_9

    nop

    nop

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
    goto/16 :goto_8

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_0
    invoke-static {v0, v2}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_1
    goto :goto_6

    nop

    nop

    :goto_2
    goto/32 :goto_21

    nop

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

    :goto_4
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_18

    nop

    :cond_0
    :goto_6
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v2, p1, Lehm;->d:Ljava/util/List;

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

    :goto_8
    iget-boolean v0, p0, Lehm;->b:Z

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_9
    const-string v1, "index_"

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p1, p1, Lehm;->a:Ljava/lang/String;

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

    :goto_b
    check-cast p1, Lehm;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_c
    move p0, v1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return p0

    nop

    :goto_e
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_22

    nop

    :goto_12
    if-eq p0, p1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_2
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/16 :goto_6

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_15
    iget-object p0, p0, Lehm;->a:Ljava/lang/String;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_17
    goto/16 :goto_4

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/16 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {p0, v1}, Luch;->E(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v2, p1, Lehm;->c:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1e
    const v0, 0x18

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

    :goto_1f
    iget-object v0, p0, Lehm;->a:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-boolean v2, p1, Lehm;->b:Z

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v0, p0, Lehm;->c:Ljava/util/List;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_12

    nop

    nop

    :goto_24
    goto/16 :goto_6

    nop

    nop

    :goto_25
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-eqz v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    :cond_3
    goto/32 :goto_24

    nop

    nop

    :goto_27
    iget-object v0, p0, Lehm;->d:Ljava/util/List;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-static {v0, v2}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_29
    if-eqz v0, :cond_4

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    if-ne v0, v2, :cond_5

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_2b
    instance-of v0, p1, Lehm;

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

    :goto_2c
    const v1, 0x1f

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

    nop

    nop

    :goto_2d
    invoke-static {v0, v1}, Luch;->E(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object p0, p1, Lehm;->a:Ljava/lang/String;

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

    :goto_2f
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_30
    if-nez v0, :cond_6

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_2e

    nop

    nop

    :goto_31
    goto/16 :goto_4

    nop

    :goto_32
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 3

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lehm;->a:Ljava/lang/String;

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_1
    const v0, 0x17

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_2
    add-int/2addr v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_3
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_6
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_8
    const v0, -0x46960e33

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x1a

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Lehm;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_b
    iget-boolean v1, p0, Lehm;->b:Z

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v2, p0, Lehm;->c:Ljava/util/List;

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

    nop

    :goto_d
    mul-int/lit8 v0, v0, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_e
    invoke-static {v0, v1}, Luch;->E(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

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

    nop

    :goto_f
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    add-int/2addr v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_12
    mul-int/lit8 v0, v0, 0x1f

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_13
    iget-object p0, p0, Lehm;->d:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_15
    return v0

    nop

    :goto_16
    goto/32 :goto_7

    nop

    nop

    :goto_17
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const-string v1, "index_"

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_19
    mul-int/lit8 v0, v0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1a
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    :goto_1b
    goto :goto_10

    nop

    nop

    :goto_1c
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1d
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_1
    goto/32 :goto_3

    nop

    :goto_1e
    add-int/2addr v0, v1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_12

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

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    :goto_3
    sget-object v1, Ltyg;->a:Ltyg;

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

    :goto_4
    const v0, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_13

    nop

    nop

    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

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

    :goto_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const-string v1, "\',\n            |   unique = \'"

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

    :goto_9
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_a
    invoke-static {p0}, Luch;->A(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

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

    :goto_b
    const-string v1, "\n            |Index {\n            |   name = \'"

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const-string p0, "\n            |}\n        "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_f
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    return-object p0

    nop

    :goto_11
    goto/32 :goto_c

    nop

    nop

    :goto_12
    iget-boolean v1, p0, Lehm;->b:Z

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_13
    const-string v1, "\n            |   orders = {"

    nop

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

    :goto_14
    goto/32 :goto_11

    nop

    nop

    :goto_15
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_17
    const v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {p0}, Luch;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_19
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object p0, p0, Lehm;->d:Ljava/util/List;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

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

    :goto_1c
    iget-object v1, p0, Lehm;->c:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_1d
    invoke-static {p0}, Ldvy;->h(Ljava/util/Collection;)V

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1e
    const-string v1, "\',\n            |   columns = {"

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    add-int v0, v0, v1

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

    :goto_20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v1, p0, Lehm;->a:Ljava/lang/String;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_e

    nop

    nop

    :goto_23
    invoke-static {v1}, Ldvy;->i(Ljava/util/Collection;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method
