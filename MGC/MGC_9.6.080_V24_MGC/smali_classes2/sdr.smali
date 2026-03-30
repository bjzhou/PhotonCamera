.class public Lsdr;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z

.field public final c:Z

.field public final d:J

.field private final e:Ljava/lang/Class;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Class;Z)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p1, p2, p3, v0}, Lsdr;-><init>(Ljava/lang/String;Ljava/lang/Class;ZZ)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;ZZ)V
    .locals 4

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1
    if-eq v2, v3, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int/lit8 v0, v0, 0x1

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_7
    throw p0

    nop

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

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

    :goto_a
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    nop

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

    :goto_c
    const/16 v3, 0x30

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-ge v2, v3, :cond_1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-nez v1, :cond_2

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_2
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-gt v2, v3, :cond_3

    nop

    goto/32 :goto_33

    nop

    nop

    :cond_3
    :goto_10
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    nop

    :goto_13
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_14
    and-int/lit8 p4, p1, 0x3f

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

    :goto_15
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_8

    nop

    nop

    :goto_17
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_18
    iput-object p2, p0, Lsdr;->e:Ljava/lang/Class;

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_19
    if-eqz v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_1a
    if-lt v0, p4, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :cond_5
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_1c
    or-long/2addr p2, v1

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_1d
    const v1, 0x4

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_1e
    goto/16 :goto_33

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_39

    nop

    nop

    :goto_20
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

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

    :goto_21
    const/16 v3, 0x39

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_22
    const/4 v0, 0x0

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

    :goto_23
    throw p1

    nop

    nop

    :goto_24
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const-wide/16 p2, 0x0

    nop

    :goto_26
    goto/32 :goto_2f

    nop

    nop

    :goto_27
    if-lez v0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_16

    nop

    :goto_28
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const-wide/16 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_2a
    invoke-static {v1}, Lshf;->c(C)Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_2b
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_2c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_2d
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_2e
    if-eqz v3, :cond_7

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    :cond_7
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const/4 p4, 0x5

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

    :goto_30
    goto/16 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_40

    nop

    nop

    nop

    :goto_32
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_34
    if-lt v1, v2, :cond_8

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    shl-long/2addr v1, p4

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_36
    const-string p1, "identifier must not be empty"

    nop

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

    nop

    :goto_37
    new-instance p1, Ljava/lang/IllegalArgumentException;

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_38
    const-string p0, "identifier must start with an ASCII letter: "

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_39
    const-string p0, "identifier must contain only ASCII letters, digits or underscore: "

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

    :goto_3a
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3b
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_3c
    iput-boolean p3, p0, Lsdr;->b:Z

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    ushr-int/lit8 p1, p1, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3e
    goto/16 :goto_26

    nop

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_40
    iput-object p1, p0, Lsdr;->a:Ljava/lang/String;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_41
    iput-wide p2, p0, Lsdr;->d:J

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_42
    const/16 v3, 0x5f

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

    :goto_43
    const/4 v1, 0x1

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-static {v2}, Lshf;->c(C)Z

    move-result v3

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

    :goto_46
    iput-boolean p4, p0, Lsdr;->c:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public a(Ljava/util/Iterator;Lsdq;)V
    .locals 1

    :goto_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, v0, p2}, Lsdr;->b(Ljava/lang/Object;Lsdq;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    :goto_6
    if-nez v0, :cond_0

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

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
.end method

.method public b(Ljava/lang/Object;Lsdq;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lsdr;->a:Ljava/lang/String;

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

    :goto_1
    invoke-interface {p2, p0, p1}, Lsdq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return-void

    nop
.end method

.method public final c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lsdr;->e:Ljava/lang/Class;

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
    invoke-virtual {p0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-string p0, "["

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_c

    nop

    nop

    :goto_3
    add-int v0, v0, v1

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

    :goto_4
    const-string p0, "]"

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

    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0xe

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

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_8
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_d

    nop

    nop

    :goto_d
    const-string v1, "/"

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

    :goto_e
    goto/32 :goto_16

    nop

    :goto_f
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_10
    const v1, 0x15

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_f

    nop

    :goto_15
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_17
    iget-object p0, p0, Lsdr;->a:Ljava/lang/String;

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

    :goto_18
    iget-object v0, p0, Lsdr;->e:Ljava/lang/Class;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_19
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop
.end method
