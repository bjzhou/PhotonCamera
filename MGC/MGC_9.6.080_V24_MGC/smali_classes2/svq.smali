.class public final Lsvq;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/util/List;

.field public b:I

.field public final c:Ljava/util/Random;

.field public d:Lsvs;

.field private final e:I

.field private f:I


# direct methods
.method public constructor <init>(Ljava/util/Random;)V
    .locals 8

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static/range {v2 .. v7}, Lrrf;->v(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x14

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_3
    const/4 v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0xc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_5
    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_6
    iput v0, p0, Lsvq;->e:I

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

    :goto_7
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_8
    move v2, v0

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

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

    :goto_a
    const-wide v0, 0x40f86a0000000000L    # 100000.0

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Lsvq;->e()V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput-object v0, p0, Lsvq;->a:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_e
    new-instance v0, Ljava/util/ArrayList;

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

    :goto_f
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_10
    div-double/2addr v0, v4

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

    :goto_11
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_e

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_14
    goto/32 :goto_17

    nop

    nop

    :goto_15
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_16
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_18
    goto :goto_1e

    nop

    :goto_19
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1a
    const-wide/32 v0, 0x186a0

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_1b
    const-wide v4, 0x408f400000000000L    # 1000.0

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

    :goto_1c
    mul-double/2addr v0, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1d
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_8

    nop

    nop

    :goto_1f
    iput-object p1, p0, Lsvq;->c:Ljava/util/Random;

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

    :goto_20
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_21
    const-wide/16 v0, 0x3e8

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_22
    const-string v3, "Parameters led to invalid k (smaller than %s). k = %s: invEps = %s, invDelta = %s"

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
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_25
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_26
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

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

    nop

    nop

    :goto_27
    if-lez v0, :cond_0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    :goto_28
    long-to-int v0, v0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    long-to-double v0, v0

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

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

    :goto_2d
    div-double/2addr v0, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_30
    if-ge v0, v1, :cond_1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    nop

    nop

    nop
.end method

.method private final d5484163cd8d335e6b17663474ff5f2bm(I)V
    .locals 10

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sub-int/2addr v7, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_2
    iget v7, p0, Lsvq;->b:I

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v3, Ljava/util/ArrayList;

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lsvq;->a()I

    move-result v0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/16 :goto_4e

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_4d

    nop

    nop

    :goto_7
    add-int/2addr v4, v2

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_8
    const/4 v0, 0x0

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_3d

    nop

    :goto_a
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_c
    if-ge p1, v0, :cond_0

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_d
    const v0, 0x10

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

    :goto_e
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    :goto_f
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_12
    goto/16 :goto_38

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_14
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v1, 0x20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_17
    new-instance v4, Lsvp;

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v0, p0, Lsvq;->a:Ljava/util/List;

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_19
    iget-object v0, p0, Lsvq;->a:Ljava/util/List;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1a
    const/16 v3, 0xd

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_1b
    invoke-direct {v2, v1, v3}, Lnaz;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v2, p0, Lsvq;->a:Ljava/util/List;

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_1d
    new-instance v2, Lnaz;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_1f
    int-to-double v4, v4

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    check-cast v0, Ljava/util/List;

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_21
    invoke-interface {v3, v4}, Lj$/util/stream/IntStream;->filter(Ljava/util/function/IntPredicate;)Lj$/util/stream/IntStream;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_22
    add-int/lit8 v1, p1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_23
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :cond_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    check-cast v1, Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v0, p0, Lsvq;->a:Ljava/util/List;

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
    move v4, v2

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_27
    const/4 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_28
    iput v7, p0, Lsvq;->b:I

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-interface {v0, v2}, Lj$/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    goto/32 :goto_59

    nop

    nop

    :goto_2a
    div-double/2addr v4, v8

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_2b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v6}, Ljava/util/Random;->nextBoolean()Z

    move-result v6

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-interface {v0, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_2e
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_19

    nop

    nop

    :goto_31
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_32
    check-cast p0, Ljava/util/List;

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

    :goto_33
    goto/16 :goto_10

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_f

    nop

    nop

    :goto_35
    iget-object p0, p0, Lsvq;->a:Ljava/util/List;

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

    :goto_36
    iget-object v0, p0, Lsvq;->a:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_37
    return-void

    nop

    :goto_38
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-static {v4, v5}, Lrrf;->m(ZLjava/lang/Object;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    goto/32 :goto_2d

    nop

    nop

    :goto_3c
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_3f
    iget-object v6, p0, Lsvq;->c:Ljava/util/Random;

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

    :goto_40
    double-to-int v4, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_41
    iget-object v0, p0, Lsvq;->a:Ljava/util/List;

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-interface {p0}, Ljava/util/List;->clear()V

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_46
    div-int/lit8 v4, v4, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_48
    rem-int v0, v0, v1

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

    :goto_49
    if-eqz v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    :cond_4
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-direct {v4, v6}, Lsvp;-><init>(Z)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    add-int/lit8 v0, v0, -0x1

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_4d
    move v4, v3

    nop

    nop

    :goto_4e
    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_4f
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_50
    if-eqz v0, :cond_5

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_51
    invoke-direct {v4, v0, v2}, Lszd;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_52
    invoke-interface {v3, v4}, Lj$/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Lj$/util/stream/Stream;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    if-eq p1, v0, :cond_6

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_54
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_55
    invoke-interface {p0, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    new-instance v4, Lszd;

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_57
    check-cast v4, Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    const/4 v2, 0x1

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_59
    iget-object v0, p0, Lsvq;->d:Lsvs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_5a
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5b
    iget-object p0, p0, Lsvq;->a:Ljava/util/List;

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

    :goto_5c
    if-nez v6, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_5d
    invoke-virtual {p0}, Lsvq;->e()V

    :goto_5e
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    const-string v5, "Method \'halve\' expects a non-null compactor."

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_60
    invoke-static {v3, v4}, Lj$/util/stream/IntStream$-CC;->range(II)Lj$/util/stream/IntStream;

    move-result-object v3

    nop

    goto/32 :goto_17

    nop

    nop

    nop
.end method


# virtual methods
.method final a()I
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    iget p0, p0, Lsvs;->d:I

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
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

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

    :goto_3
    const/4 p0, 0x0

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    iget-object p0, p0, Lsvq;->d:Lsvs;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

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
.end method

.method public final b()I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Lsvq;->b:I

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lj$/util/Optional;->isPresent()Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    add-int/2addr v0, p0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    return v0

    nop

    :goto_4
    invoke-virtual {p0}, Lsvq;->d()Lj$/util/Optional;

    move-result-object p0

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

.method final c(I)I
    .locals 4

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_0
    double-to-int p0, p0

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

    :goto_1
    rem-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_2
    const v1, 0x5

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return p0

    nop

    :goto_4
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_5
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

    :goto_6
    iget p0, p0, Lsvq;->e:I

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_7
    mul-double/2addr v0, p0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_8
    const/4 p1, 0x2

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

    nop

    nop

    :goto_9
    int-to-double v0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_b
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_4

    nop

    nop

    :goto_f
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_10
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

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

    :goto_12
    sub-int/2addr v0, p1

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_13
    const-wide v2, 0x3fe5555555555555L    # 0.6666666666666666

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v0, p0, Lsvq;->a:Ljava/util/List;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_15
    int-to-double p0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_16
    add-int/lit8 v0, v0, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_17
    const v0, 0x1b

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_18
    if-gt p0, p1, :cond_1

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

    :cond_1
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    return p0

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d()Lj$/util/Optional;
    .locals 4

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v1, v0, v2, v3}, Lsvr;-><init>(Ljava/lang/Object;J)V

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1
    const v0, 0xa

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

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

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_6
    goto :goto_9

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_8
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object p0

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_18

    nop

    nop

    :goto_a
    goto :goto_9

    nop

    nop

    :goto_b
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget p0, p0, Lsvs;->b:I

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

    :goto_d
    new-instance v1, Lsvr;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_e
    int-to-long v2, p0

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_f
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_15

    nop

    :goto_11
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v0, p0, Lsvs;->a:Ljava/lang/Comparable;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_13
    const v1, 0x14

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_14
    invoke-static {v1}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object p0

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

    :goto_15
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object p0, p0, Lsvq;->d:Lsvs;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_18
    return-object p0

    nop

    nop

    :goto_19
    goto/32 :goto_4

    nop

    nop
.end method

.method public final e()V
    .locals 3

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v1, p0, Lsvq;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    add-int/2addr v1, v0

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

    :goto_2
    add-int/2addr v2, v2

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

    :goto_3
    invoke-virtual {p0, v0}, Lsvq;->c(I)I

    move-result v0

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_4
    invoke-direct {v1, p0}, Lsvs;-><init>(Lsvq;)V

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Lsvq;->a()I

    move-result v0

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

    nop

    :goto_7
    invoke-virtual {p0}, Lsvq;->a()I

    move-result v0

    nop

    goto/32 :goto_3

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

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_9
    iget v2, v1, Lsvs;->c:I

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
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_b
    const v1, 0x3

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_c
    iput v1, p0, Lsvq;->f:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_e
    iget-object v1, p0, Lsvq;->d:Lsvs;

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

    :goto_f
    goto/16 :goto_23

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget v2, v1, Lsvs;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_12
    iput v2, v1, Lsvs;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_13
    invoke-direct {p0, v0}, Lsvq;->d5484163cd8d335e6b17663474ff5f2bm(I)V

    :goto_14
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    return-void

    nop

    nop

    :goto_16
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    new-instance v1, Lsvs;

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

    :goto_18
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_19
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_1a
    iget-object v1, p0, Lsvq;->a:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1b
    iget v1, p0, Lsvq;->f:I

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1d
    add-int/2addr v1, v0

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

    :goto_1e
    goto/32 :goto_21

    nop

    nop

    :goto_1f
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iput-object v1, p0, Lsvq;->d:Lsvs;

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_24
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_20

    nop

    :goto_25
    iput v1, p0, Lsvq;->b:I

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

    :goto_26
    if-nez v1, :cond_2

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_27
    const v0, 0x9

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_28
    iput v2, v1, Lsvs;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop
.end method

.method public final f()V
    .locals 3

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    const v0, 0xb

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    check-cast v1, Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget v2, p0, Lsvq;->f:I

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    if-ge v1, v2, :cond_0

    nop

    goto/32 :goto_7

    nop

    :cond_0
    :goto_5
    goto/32 :goto_1b

    nop

    nop

    :goto_6
    goto/32 :goto_1d

    nop

    nop

    :goto_7
    goto/32 :goto_14

    nop

    nop

    :goto_8
    iget-object v1, p0, Lsvq;->a:Ljava/util/List;

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

    :goto_9
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_a
    const v1, 0x9

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_b
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    :goto_c
    iget v1, p0, Lsvq;->f:I

    nop

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

    :goto_d
    iget v1, p0, Lsvq;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_e
    invoke-virtual {p0, v0}, Lsvq;->c(I)I

    move-result v2

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v1, p0, Lsvq;->a:Ljava/util/List;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-ge v1, v2, :cond_2

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

    :cond_2
    goto/32 :goto_16

    nop

    nop

    :goto_11
    goto :goto_1a

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v1, p0, Lsvq;->a:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_14
    iget v0, p0, Lsvq;->b:I

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_15
    if-nez v1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_3
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-direct {p0, v0}, Lsvq;->d5484163cd8d335e6b17663474ff5f2bm(I)V

    goto/32 :goto_d

    nop

    nop

    :goto_17
    goto/32 :goto_7

    nop

    :goto_18
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_19
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_8

    nop

    nop

    :goto_1b
    add-int/lit8 v0, v0, 0x1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    return-void

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_17

    nop

    nop

    :goto_1e
    if-ge v0, v1, :cond_4

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    add-int v0, v0, v1

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_20
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_21
    if-lt v0, v1, :cond_5

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    rem-int v0, v0, v1

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
.end method
