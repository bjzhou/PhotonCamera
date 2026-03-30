.class public final Lsco;
.super Lrvd;
.source "PG"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final transient header:Lscm;

.field public final transient range:Lrxb;

.field public final transient rootReference:Lscn;


# direct methods
.method private 0cf909ba289622071a1fdd6b27800b52m(Ljava/io/ObjectOutputStream;)V
    .locals 2

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_1
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_2
    const v1, 0xe

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_3
    invoke-interface {p0}, Lsan;->g()Ljava/util/Set;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_5
    invoke-interface {v0}, Lsam;->b()Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {p0}, Lsan;->g()Ljava/util/Set;

    move-result-object v0

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

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

    :goto_c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x17

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-interface {v0}, Ljava/util/NavigableSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_12
    check-cast v0, Lsam;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_13
    invoke-virtual {p0}, Lrvd;->p()Ljava/util/NavigableSet;

    move-result-object v0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_14
    goto :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_16

    nop

    nop

    :goto_16
    return-void

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_19

    nop

    nop

    :goto_18
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1c
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1d
    invoke-interface {v0}, Lsam;->a()I

    move-result v0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop
.end method

.method private final 6a76c551e4658c5f4308c862164e4dd9m(ILscm;)J
    .locals 4

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p2}, Lsco;->6a76c551e4658c5f4308c862164e4dd9m(ILscm;)J

    move-result-wide p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-wide/16 p0, 0x0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

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

    :goto_3
    if-gtz v0, :cond_0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    return-wide p0

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p0, p2, Lscm;->f:Lscm;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p2, p2, Lscm;->f:Lscm;

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

    :goto_8
    if-nez p0, :cond_1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {p1, p0}, Lsgj;->h(ILscm;)J

    move-result-wide p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_a
    goto/16 :goto_21

    nop

    nop

    :goto_b
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_c
    invoke-static {p1, v0}, Lsgj;->h(ILscm;)J

    move-result-wide v0

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_e
    iget p0, p0, Lrxb;->g:I

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_f
    iget-object v0, p2, Lscm;->f:Lscm;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_10
    int-to-long v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0x1f

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

    :goto_12
    return-wide p0

    nop

    :goto_13
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_14
    add-long/2addr v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_15
    int-to-long v2, v2

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v0, p0, Lrvd;->comparator:Ljava/util/Comparator;

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

    :goto_17
    invoke-static {p1, p2}, Lsgj;->g(ILscm;)I

    move-result v2

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_18
    iget-object p2, p2, Lscm;->e:Lscm;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_19
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object p0, p0, Lsco;->range:Lrxb;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1c
    rem-int v0, v0, v1

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

    :goto_1d
    return-wide p0

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-static {p1, p0}, Lsgj;->h(ILscm;)J

    move-result-wide p0

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    add-long/2addr v0, v2

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_23
    const v1, 0x19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_24
    add-int/lit8 p0, p0, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_25
    if-lez v0, :cond_2

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_19

    nop

    :goto_26
    iget-object v1, v1, Lrxb;->e:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_27
    if-eqz v0, :cond_3

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :cond_3
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_28
    invoke-static {p1, p2}, Lsgj;->g(ILscm;)I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_29
    invoke-direct {p0, p1, p2}, Lsco;->6a76c551e4658c5f4308c862164e4dd9m(ILscm;)J

    move-result-wide p0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object p0, p2, Lscm;->f:Lscm;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v2, p2, Lscm;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_2c
    if-eqz p2, :cond_4

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :cond_4
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    return-wide v0

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object v1, p0, Lsco;->range:Lrxb;

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
.end method

.method private 7c317c59441d6cc7b89965a9c204159bm(Ljava/io/ObjectInputStream;)V
    .locals 11

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_2
    goto :goto_b

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_4

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v0, Lscm;

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_8
    invoke-static {v9, v0}, Lrgw;->ai(Ljava/lang/Class;Ljava/lang/String;)Lqnt;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_9
    add-int/lit8 v1, v1, 0x1

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
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_d
    invoke-virtual {v0, p0, v2}, Lqnt;->C(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_31

    nop

    nop

    :goto_e
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_f
    goto/32 :goto_2a

    nop

    :goto_10
    invoke-direct/range {v1 .. v8}, Lrxb;-><init>(Ljava/util/Comparator;ZLjava/lang/Object;IZLjava/lang/Object;I)V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {v1}, Lscn;-><init>()V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_29

    nop

    :goto_13
    move-object v1, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_14
    new-instance v1, Lscn;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v4, 0x0

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_16
    move-object v2, v0

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v0, p0, v1}, Lqnt;->C(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_6

    nop

    nop

    :goto_19
    const/4 v5, 0x1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1a
    const/4 v0, 0x0

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

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

    :goto_1d
    check-cast v2, Ljava/util/Comparator;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_1e
    new-instance v10, Lrxb;

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_1f
    const-string v1, "comparator"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_20
    const-class v0, Lrvd;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {v0, v0}, Lsco;->u(Lscm;Lscm;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const-string v1, "header"

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

    :goto_23
    invoke-static {v9, v1}, Lrgw;->ai(Ljava/lang/Class;Ljava/lang/String;)Lqnt;

    move-result-object v1

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_24
    invoke-interface {p0, v2, v3}, Lsan;->h(Ljava/lang/Object;I)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_25
    if-lt v1, v0, :cond_1

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

    :cond_1
    goto/32 :goto_0

    nop

    nop

    :goto_26
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_16

    nop

    nop

    :goto_27
    invoke-virtual {v0, p0, v10}, Lqnt;->C(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_1a

    nop

    nop

    :goto_28
    const/4 v8, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_5

    nop

    :goto_2a
    goto/32 :goto_2f

    nop

    nop

    :goto_2b
    const v1, 0x17

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const v0, 0x8

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

    :goto_2d
    const/4 v7, 0x0

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-direct {v0}, Lscm;-><init>()V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_30
    sget-object v0, Lcom/google/android/apps/camera/imax/cyclops/processing/jQJ/fbmdK;->QORaWlT:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_31
    const-string v0, "range"

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v1, p0, v0}, Lqnt;->C(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_33
    invoke-static {v0, v1}, Lrgw;->ai(Ljava/lang/Class;Ljava/lang/String;)Lqnt;

    move-result-object v0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_34
    invoke-static {v9, v0}, Lrgw;->ai(Ljava/lang/Class;Ljava/lang/String;)Lqnt;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_35
    const-class v9, Lsco;

    nop

    goto/32 :goto_8

    nop

    nop
.end method

.method private final 7dd154808b1c676d3d63f3a63e9edabfm(I)J
    .locals 5

    goto/32 :goto_e

    nop

    nop

    :goto_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_b

    nop

    nop

    :goto_2
    iget-boolean v3, v3, Lrxb;->d:Z

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v3, p0, Lsco;->range:Lrxb;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    return-wide v1

    nop

    :goto_5
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {p1, v0}, Lsgj;->h(ILscm;)J

    move-result-wide v1

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_7
    iget-object v3, p0, Lsco;->range:Lrxb;

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

    nop

    nop

    :goto_8
    sub-long/2addr v1, v3

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1

    nop

    :goto_b
    iget-object v0, p0, Lsco;->rootReference:Lscn;

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

    :goto_c
    if-nez v3, :cond_0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_e
    const v0, 0xc

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_f
    invoke-direct {p0, p1, v0}, Lsco;->6a76c551e4658c5f4308c862164e4dd9m(ILscm;)J

    move-result-wide p0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-nez v3, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_11
    sub-long/2addr v1, p0

    nop

    nop

    :goto_12
    goto/32 :goto_4

    nop

    nop

    :goto_13
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_2
    goto/32 :goto_0

    nop

    :goto_14
    invoke-direct {p0, p1, v0}, Lsco;->d543f409229584e2e064495967092514m(ILscm;)J

    move-result-wide v3

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_15
    iget-boolean v3, v3, Lrxb;->b:Z

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_16
    add-int v0, v0, v1

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

    :goto_17
    const v1, 0x1e

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

    nop

    :goto_18
    check-cast v0, Lscm;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v0, v0, Lscn;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 9

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    const/4 v6, 0x0

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

    nop

    :goto_3
    invoke-direct {p0, p1}, Lrvd;-><init>(Ljava/util/Comparator;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1c

    nop

    nop

    :goto_5
    move-object v1, p1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_6
    invoke-static {p1, p1}, Lsco;->u(Lscm;Lscm;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-instance p1, Lscm;

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

    :goto_8
    move-object v0, v8

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

    :goto_9
    iput-object v8, p0, Lsco;->range:Lrxb;

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

    :goto_a
    const/4 v2, 0x0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v4, 0x1

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_c
    const v1, 0x1a

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_d
    invoke-direct/range {v0 .. v7}, Lrxb;-><init>(Ljava/util/Comparator;ZLjava/lang/Object;IZLjava/lang/Object;I)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_e
    invoke-direct {p1}, Lscm;-><init>()V

    goto/32 :goto_1a

    nop

    nop

    :goto_f
    new-instance v8, Lrxb;

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
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0x11

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_12
    new-instance p1, Lscn;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1b

    nop

    :goto_14
    const/4 v7, 0x1

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

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

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

    :goto_17
    iput-object p1, p0, Lsco;->rootReference:Lscn;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_18
    invoke-direct {p1}, Lscn;-><init>()V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const/4 v3, 0x0

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

    nop

    :goto_1a
    iput-object p1, p0, Lsco;->header:Lscm;

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1b
    goto/32 :goto_1

    nop

    :goto_1c
    goto/32 :goto_3

    nop

    nop
.end method

.method public constructor <init>(Lscn;Lrxb;Lscm;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget-object v0, p2, Lrxb;->a:Ljava/util/Comparator;

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

    :goto_1
    return-void

    nop

    :goto_2
    invoke-direct {p0, v0}, Lrvd;-><init>(Ljava/util/Comparator;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lsco;->rootReference:Lscn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    iput-object p2, p0, Lsco;->range:Lrxb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5
    iput-object p3, p0, Lsco;->header:Lscm;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method private final d543f409229584e2e064495967092514m(ILscm;)J
    .locals 4

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p2}, Lsco;->d543f409229584e2e064495967092514m(ILscm;)J

    move-result-wide p0

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

    :goto_1
    iget-object p0, p2, Lscm;->e:Lscm;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-long/2addr v0, p0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lrvd;->comparator:Ljava/util/Comparator;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_4
    iget-object v1, v1, Lrxb;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_5
    iget-object p0, p2, Lscm;->e:Lscm;

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v1, p0, Lsco;->range:Lrxb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_7
    invoke-static {p1, v0}, Lsgj;->h(ILscm;)J

    move-result-wide v0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_8
    goto/16 :goto_19

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_d
    add-int/lit8 p0, p0, -0x1

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

    :goto_e
    return-wide v0

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {p1, p2}, Lsgj;->g(ILscm;)I

    move-result v2

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_11
    return-wide p0

    nop

    :goto_12
    goto/32 :goto_29

    nop

    nop

    :goto_13
    add-long/2addr v0, v2

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

    :goto_14
    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    return-wide p0

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_17
    const-wide/16 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_18
    invoke-static {p1, p0}, Lsgj;->h(ILscm;)J

    move-result-wide p0

    nop

    nop

    :goto_19
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-ltz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_0
    goto/32 :goto_23

    nop

    nop

    :goto_1b
    const v0, 0x1c

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

    :goto_1c
    iget-object p2, p2, Lscm;->f:Lscm;

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

    :goto_1d
    iget-object v2, p2, Lscm;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    int-to-long v0, p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1f
    const v1, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_20
    invoke-static {p1, p2}, Lsgj;->g(ILscm;)I

    move-result p0

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_21
    iget-object v0, p2, Lscm;->e:Lscm;

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

    nop

    :goto_22
    if-eqz p2, :cond_1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-object p2, p2, Lscm;->e:Lscm;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_24
    if-nez p0, :cond_2

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

    :cond_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_25
    rem-int v0, v0, v1

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

    :goto_26
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_27
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_3
    goto/32 :goto_b

    nop

    :goto_28
    iget-object p0, p0, Lsco;->range:Lrxb;

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_29
    if-eqz v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_4
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_2a
    invoke-static {p1, p0}, Lsgj;->h(ILscm;)J

    move-result-wide p0

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

    :goto_2b
    int-to-long v2, v2

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_2c
    return-wide p0

    nop

    nop

    :goto_2d
    goto/32 :goto_20

    nop

    nop

    :goto_2e
    invoke-direct {p0, p1, p2}, Lsco;->d543f409229584e2e064495967092514m(ILscm;)J

    move-result-wide p0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget p0, p0, Lrxb;->f:I

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop
.end method

.method static t(Lscm;)I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

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

    :goto_1
    if-eqz p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop

    nop

    :goto_3
    return p0

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget p0, p0, Lscm;->c:I

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public static u(Lscm;Lscm;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lscm;->h:Lscm;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p0, p1, Lscm;->g:Lscm;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop
.end method

.method public static v(Lscm;Lscm;Lscm;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Lsco;->u(Lscm;Lscm;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p1, p2}, Lsco;->u(Lscm;Lscm;)V

    goto/32 :goto_1

    nop

    nop

    nop
.end method


# virtual methods
.method public final b()I
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0, v1}, Lrrf;->R(J)I

    move-result p0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    const v0, 0x13

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

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

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

    :goto_5
    return p0

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {p0, v0}, Lsco;->7dd154808b1c676d3d63f3a63e9edabfm(I)J

    move-result-wide v0

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

    :goto_8
    goto/32 :goto_6

    nop

    :goto_9
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_a
    const v1, 0x18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_c
    const/4 v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop
.end method

.method public final c()Ljava/util/Iterator;
    .locals 3

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v1, 0x1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    :goto_2
    goto/32 :goto_c

    nop

    nop

    :goto_3
    new-instance v0, Lscl;

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

    :goto_4
    const v0, 0x18

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0, p0, v1, v2}, Lscl;-><init>(Lsco;I[B)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_a
    const v1, 0x15

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

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

    :goto_c
    goto/32 :goto_9

    nop

    :goto_d
    const/4 v2, 0x0

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
.end method

.method public final clear()V
    .locals 4

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    if-eqz v0, :cond_0

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

    nop

    :cond_0
    goto/32 :goto_1c

    nop

    nop

    :goto_2
    new-instance v0, Lscl;

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

    :goto_3
    iput-object v2, v0, Lscm;->f:Lscm;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_4
    const v0, 0xc

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v3, 0x0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/16 :goto_1f

    nop

    :goto_7
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

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

    :goto_9
    iput-object v2, v0, Lscm;->h:Lscm;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput v3, v0, Lscm;->b:I

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v1, p0, Lsco;->header:Lscm;

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_e
    iput-object v2, p0, Lscn;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_f
    iget-object p0, p0, Lsco;->rootReference:Lscn;

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

    nop

    :goto_10
    const v1, 0xe

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iput-object v2, v0, Lscm;->g:Lscm;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-boolean v0, v0, Lrxb;->d:Z

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

    :goto_13
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_b

    nop

    :goto_14
    move-object v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_15
    return-void

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_17
    iput-object v2, v0, Lscm;->e:Lscm;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_c

    nop

    :goto_19
    iget-boolean v1, v0, Lrxb;->b:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-direct {v0, p0, v1, v2}, Lscl;-><init>(Lsco;I[B)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_1b
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_1c
    iget-object v0, p0, Lsco;->header:Lscm;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1d
    if-ne v0, v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v0}, Lscm;->g()Lscm;

    move-result-object v0

    nop

    :goto_1f
    goto/32 :goto_d

    nop

    nop

    :goto_20
    invoke-static {v0}, Lrgw;->V(Ljava/util/Iterator;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-eqz v1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    :cond_3
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v0}, Lscm;->g()Lscm;

    move-result-object v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_23
    return-void

    nop

    :goto_24
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const/4 v1, 0x1

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

    :goto_26
    iget-object v0, p0, Lsco;->range:Lrxb;

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_27
    invoke-static {v1, v1}, Lsco;->u(Lscm;Lscm;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop
.end method

.method public final d(Ljava/lang/Object;I)I
    .locals 5

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2
    const/4 v1, 0x1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    const/4 v2, 0x0

    nop

    nop

    :try_start_0
    iget-object v3, p0, Lsco;->range:Lrxb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3, p1}, Lrxb;->b(Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    if-eqz v3, :cond_0

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    iget-object v3, p0, Lrvd;->comparator:Ljava/util/Comparator;

    nop

    nop

    nop

    nop

    move-object v4, v0

    nop

    nop

    nop

    nop

    nop

    check-cast v4, Lscm;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v3, p1, p2, v1}, Lscm;->f(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lscm;

    move-result-object p1

    nop
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, v0, Lscn;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-array v1, v1, [I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_7
    invoke-virtual {p0, v0, p1}, Lscn;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_8
    const v0, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_9
    const-string v0, "occurrences"

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_b
    iget-object p0, p0, Lsco;->rootReference:Lscn;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_c
    return p0

    nop

    nop

    nop

    nop

    :catch_0
    :cond_0
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_3

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

    goto/32 :goto_a

    nop

    nop

    :goto_10
    invoke-static {p2, v0}, Lqrg;->z(ILjava/lang/String;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0x17

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_12
    aget p0, v1, v2

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Lsco;->rootReference:Lscn;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop
.end method

.method public final ej(Ljava/lang/Object;)I
    .locals 3

    goto/32 :goto_1

    nop

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

    nop

    nop

    nop

    :goto_1
    const v0, 0x1b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    return p0

    nop

    nop

    nop

    nop

    :catch_0
    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_6

    nop

    :goto_5
    goto/32 :goto_8

    nop

    nop

    :goto_6
    goto/32 :goto_9

    nop

    nop

    :goto_7
    return v0

    nop

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    :goto_9
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v1, p0, Lsco;->rootReference:Lscn;

    nop

    nop

    iget-object v1, v1, Lscn;->a:Ljava/lang/Object;

    nop

    nop

    nop

    iget-object v2, p0, Lsco;->range:Lrxb;

    nop

    invoke-virtual {v2, p1}, Lrxb;->b(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    nop

    if-eqz v2, :cond_0

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_0

    nop

    nop

    nop

    nop

    iget-object p0, p0, Lrvd;->comparator:Ljava/util/Comparator;

    nop

    nop

    nop

    nop

    check-cast v1, Lscm;

    nop

    nop

    nop

    nop

    invoke-virtual {v1, p0, p1}, Lscm;->a(Ljava/util/Comparator;Ljava/lang/Object;)I

    move-result p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    :goto_b
    const v1, 0x12

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public final h(Ljava/lang/Object;I)V
    .locals 4

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast v3, Lscm;

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

    :goto_1
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p1, v0, p1}, Lsco;->v(Lscm;Lscm;Lscm;)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    goto/32 :goto_1

    nop

    nop

    :goto_5
    if-eqz p2, :cond_0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x2

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_7
    invoke-virtual {v0, p1}, Lrxb;->b(Ljava/lang/Object;)Z

    move-result v0

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

    :goto_8
    iget-object v0, p0, Lsco;->range:Lrxb;

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

    :goto_9
    iget-object v0, v0, Lscn;->a:Ljava/lang/Object;

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

    :goto_a
    iget-object v0, p0, Lsco;->rootReference:Lscn;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_b
    invoke-static {v0}, La;->au(Z)V

    goto/32 :goto_a

    nop

    nop

    :goto_c
    invoke-virtual {p0, p1}, Lsco;->ej(Ljava/lang/Object;)I

    goto/32 :goto_1b

    nop

    nop

    :goto_d
    invoke-static {p2, v0}, Lqrg;->z(ILjava/lang/String;)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_e
    new-array v2, v2, [I

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_f
    iget-object v1, p0, Lrvd;->comparator:Ljava/util/Comparator;

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_10
    iget-object p0, p0, Lsco;->rootReference:Lscn;

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

    nop

    :goto_11
    invoke-interface {v0, p1, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0, p1, v0}, Lscn;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object p1, p0, Lsco;->header:Lscm;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_1
    goto/32 :goto_15

    nop

    :goto_15
    goto/32 :goto_4

    nop

    :goto_16
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_17
    const/4 p1, 0x0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-direct {v0, p1, p2}, Lscm;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const-string v0, "occurrences"

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

    :goto_1e
    iget-object v0, p0, Lrvd;->comparator:Ljava/util/Comparator;

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

    :goto_1f
    const v0, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_20
    new-instance v0, Lscm;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-object p0, p0, Lsco;->rootReference:Lscn;

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

    :goto_22
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_23
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_24
    invoke-virtual {p0, v0, p1}, Lscn;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_25
    if-eqz v0, :cond_2

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

    :cond_2
    goto/32 :goto_1e

    nop

    nop

    :goto_26
    rem-int v0, v0, v1

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

    :goto_27
    invoke-virtual {v3, v1, p1, p2, v2}, Lscm;->b(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lscm;

    move-result-object p1

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

    :goto_28
    move-object v3, v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final i(Ljava/lang/Object;I)Z
    .locals 6

    goto/32 :goto_1d

    nop

    nop

    :goto_0
    return v2

    nop

    :goto_1
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v0}, La;->au(Z)V

    goto/32 :goto_1c

    nop

    nop

    :goto_4
    iget-object p0, p0, Lsco;->rootReference:Lscn;

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

    :goto_5
    iget-object v0, p0, Lsco;->range:Lrxb;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_6
    if-eqz p2, :cond_0

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

    nop

    nop

    :goto_7
    if-lez v0, :cond_1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    :goto_8
    add-int v0, v0, v1

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

    :goto_9
    invoke-static {v1, v0}, Lqrg;->z(ILjava/lang/String;)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-eqz v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    :cond_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0, v0, p1}, Lscn;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {p2, v0}, Lqrg;->z(ILjava/lang/String;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_24

    nop

    :goto_e
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_f
    return v2

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_11
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-eq p0, p2, :cond_3

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    check-cast v5, Lscm;

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

    :goto_15
    iget-object v0, v0, Lscn;->a:Ljava/lang/Object;

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

    :goto_16
    aget p0, v3, v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_18
    const v1, 0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_19
    move-object v5, v0

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1a
    return v1

    nop

    :goto_1b
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v0, p0, Lsco;->rootReference:Lscn;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1d
    const v0, 0x7

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v0, p1}, Lrxb;->b(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v5, v4, p1, p2, v3}, Lscm;->h(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lscm;

    move-result-object p1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_20
    new-array v3, v2, [I

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_21
    const-string v0, "newCount"

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_22
    const-string v0, "oldCount"

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

    :goto_23
    return v1

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v4, p0, Lrvd;->comparator:Ljava/util/Comparator;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Lrgw;->z(Lsan;)Ljava/util/Iterator;

    move-result-object p0

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
    return-object p0

    nop

    nop

    nop
.end method

.method public final o()Ljava/util/Iterator;
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x4

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

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_2
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

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

    :goto_4
    new-instance v0, Lscl;

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

    :goto_5
    const v1, 0x1f

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_6
    invoke-direct {v0, p0, v1}, Lscl;-><init>(Lsco;I)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-object v0

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public final r(Ljava/lang/Object;I)Lsbv;
    .locals 10

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v2, p0, Lrvd;->comparator:Ljava/util/Comparator;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    const/4 v6, 0x1

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

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    const/4 v5, 0x1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_5
    add-int v0, v0, v1

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

    :goto_6
    move-object v1, v9

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

    :goto_7
    new-instance v0, Lsco;

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
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_9
    iget-object p0, p0, Lsco;->header:Lscm;

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

    nop

    :goto_a
    return-object v0

    nop

    :goto_b
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_c
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p1, p0, Lsco;->range:Lrxb;

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

    :goto_e
    iget-object p2, p0, Lsco;->rootReference:Lscn;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_f
    new-instance v9, Lrxb;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_10
    const v0, 0x15

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_11
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_13
    move-object v7, p1

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

    :goto_14
    invoke-direct {v0, p2, p1, p0}, Lsco;-><init>(Lscn;Lrxb;Lscm;)V

    goto/32 :goto_a

    nop

    nop

    :goto_15
    invoke-direct/range {v1 .. v8}, Lrxb;-><init>(Ljava/util/Comparator;ZLjava/lang/Object;IZLjava/lang/Object;I)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v1, 0xb

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_17
    move v8, p2

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const/4 v3, 0x0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p1, v9}, Lrxb;->a(Lrxb;)Lrxb;

    move-result-object p1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final s(Ljava/lang/Object;I)Lsbv;
    .locals 10

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0xa

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0, p2, p1, p0}, Lsco;-><init>(Lscn;Lrxb;Lscm;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v8, 0x1

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_4
    const v1, 0x13

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

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lsco;->header:Lscm;

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
    new-instance v9, Lrxb;

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

    :goto_8
    iget-object p1, p0, Lsco;->range:Lrxb;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_9
    iget-object p2, p0, Lsco;->rootReference:Lscn;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    new-instance v0, Lsco;

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
    const/4 v6, 0x0

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

    nop

    :goto_c
    move-object v4, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_f
    goto/32 :goto_13

    nop

    nop

    :goto_10
    goto/32 :goto_a

    nop

    nop

    :goto_11
    invoke-direct/range {v1 .. v8}, Lrxb;-><init>(Ljava/util/Comparator;ZLjava/lang/Object;IZLjava/lang/Object;I)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return-object v0

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p1, v9}, Lrxb;->a(Lrxb;)Lrxb;

    move-result-object p1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    move-object v1, v9

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v7, 0x0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_18
    move v5, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_19
    iget-object v2, p0, Lrvd;->comparator:Ljava/util/Comparator;

    nop

    nop

    goto/32 :goto_16

    nop

    nop
.end method

.method public final size()I
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x19

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

    :goto_1
    goto/32 :goto_a

    nop

    :goto_2
    const v0, 0x14

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

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

    :goto_4
    return p0

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

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

    :goto_7
    const/4 v0, 0x1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {v0, v1}, Lrrf;->R(J)I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {p0, v0}, Lsco;->7dd154808b1c676d3d63f3a63e9edabfm(I)J

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop
.end method

.method public final w(Ljava/lang/Object;)V
    .locals 4

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v3, v2, p1, v1}, Lscm;->i(Ljava/util/Comparator;Ljava/lang/Object;[I)Lscm;

    move-result-object p1

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

    :goto_1
    return-void

    nop

    nop

    :goto_2
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const-string v1, "count"

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

    :goto_6
    const v0, 0x17

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {v0, v1}, Lqrg;->z(ILjava/lang/String;)V

    goto/32 :goto_a

    nop

    nop

    :goto_9
    check-cast v3, Lscm;

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

    :goto_a
    iget-object v0, p0, Lsco;->range:Lrxb;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {v1}, La;->au(Z)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Lsco;->rootReference:Lscn;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_d
    new-array v1, v1, [I

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_e
    move-object v3, v0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_f
    if-eqz v0, :cond_0

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

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-eqz v0, :cond_1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v0, v0, Lscn;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0, p1}, Lrxb;->b(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_13
    invoke-virtual {p0, v0, p1}, Lscn;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_1d

    nop

    nop

    :goto_14
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_2
    goto/32 :goto_3

    nop

    :goto_15
    const v1, 0xf

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

    :goto_16
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_17
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_18
    return-void

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object p0, p0, Lsco;->rootReference:Lscn;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    add-int v0, v0, v1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1d
    return-void

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v2, p0, Lrvd;->comparator:Ljava/util/Comparator;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop
.end method
