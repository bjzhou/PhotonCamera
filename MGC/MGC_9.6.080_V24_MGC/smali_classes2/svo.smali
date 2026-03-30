.class public final Lsvo;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final f:Lsay;


# instance fields
.field public final a:Lsvq;

.field public b:J

.field public c:Ljava/lang/Comparable;

.field public d:Ljava/lang/Comparable;

.field public e:Lqnt;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1
    sget-object v1, Ltof;->a:Ltlk;

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_2
    invoke-direct {v1, v0}, Ltjv;-><init>(Ltjv;)V

    goto/32 :goto_b

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    :goto_5
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_6

    nop

    :goto_8
    sput-object v0, Lsvo;->f:Lsay;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x12

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

    :goto_a
    invoke-static {}, Ltjv;->b()Ltjv;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const-wide/16 v0, 0x0

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

    :goto_c
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

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

    :goto_d
    invoke-virtual {v0, v1}, Ltjv;->d(Ltlk;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {v0, v1}, Lsay;->e(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lsay;

    move-result-object v0

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

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_10
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_11
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

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

    :goto_12
    rem-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_13
    new-instance v1, Ltjv;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_14
    const v1, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 2

    goto/32 :goto_5

    nop

    nop

    :goto_0
    new-instance v0, Lsvq;

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
    const v1, 0x10

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_7

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
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_5
    const v0, 0xc

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
    return-void

    nop

    :goto_7
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_3

    nop

    :goto_b
    new-instance v1, Ljava/util/Random;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_c
    iput-object v0, p0, Lsvo;->a:Lsvq;

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
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_e
    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {v0, v1}, Lsvq;-><init>(Ljava/util/Random;)V

    goto/32 :goto_c

    nop

    nop
.end method


# virtual methods
.method public final a(D)Ljava/lang/Comparable;
    .locals 8

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v0, v4, v3}, Lrrf;->q(ZLjava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    if-eqz v0, :cond_1

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_1
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lqnt;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const-wide/16 v4, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/16 :goto_41

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    check-cast p0, Ljava/lang/Comparable;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_a
    return-object p0

    nop

    :goto_b
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-object p0

    nop

    :goto_e
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_f
    iput-object v2, p0, Lsvo;->e:Lqnt;

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_50

    nop

    nop

    :goto_11
    iget-object p0, p0, Lsvo;->d:Ljava/lang/Comparable;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_12
    const-wide/16 v2, 0x0

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    new-instance v2, Lqnt;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_2

    nop

    goto/32 :goto_25

    nop

    :cond_2
    goto/32 :goto_24

    nop

    :goto_15
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_16
    const v0, 0x1c

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_17
    check-cast p0, Lrzd;

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_18
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-wide v0, p0, Lsvo;->b:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_1a
    if-gez p1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_3
    goto/32 :goto_51

    nop

    nop

    nop

    :goto_1b
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_1c
    iget-object p1, p0, Lsvo;->c:Ljava/lang/Comparable;

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_1d
    add-int v0, v0, v1

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_1e
    iget-object p0, p0, Lsvo;->c:Ljava/lang/Comparable;

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

    :goto_1f
    goto/16 :goto_54

    nop

    nop

    :goto_20
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_21
    cmp-long v0, v0, v2

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    move v0, v2

    nop

    nop

    :goto_23
    goto/32 :goto_4d

    nop

    nop

    :goto_24
    goto/32 :goto_2d

    nop

    nop

    :goto_25
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-static {v1, p1}, Lrrf;->y(ZLjava/lang/Object;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-nez p1, :cond_4

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_28
    invoke-direct {v2, v1}, Lqnt;-><init>(Lsvq;)V

    goto/32 :goto_f

    nop

    nop

    :goto_29
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_25

    nop

    :goto_2b
    invoke-static {v0, v3}, Lrrf;->y(ZLjava/lang/Object;)V

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_2c
    throw p0

    nop

    nop

    :goto_2d
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object p1, p0, Lsvo;->d:Ljava/lang/Comparable;

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_30
    const v1, 0x17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_31
    const-string p1, "Parameter phi must be in [0, 1]."

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

    :goto_32
    if-nez p1, :cond_5

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_33
    check-cast p1, Lrzd;

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {p1, v3}, Lrzd;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_35
    if-eqz v1, :cond_6

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_44

    nop

    nop

    nop

    :goto_36
    move v0, v1

    nop

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

    :goto_37
    new-instance p0, Ljava/lang/IllegalArgumentException;

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

    :goto_38
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_39
    cmpl-double v0, p1, v4

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {p0}, Lrzd;->lastEntry()Ljava/util/Map$Entry;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_3b
    iget-object p1, p0, Lqnt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_3c
    goto :goto_43

    nop

    nop

    :goto_3d
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    sget-object v0, Lsvo;->f:Lsay;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_3f
    const-string p1, "Invalid state, max is not initialized"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_40
    check-cast p0, Ljava/lang/Comparable;

    nop

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_42
    move v1, v2

    nop

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_44
    iget-object v1, p0, Lsvo;->a:Lsvq;

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

    nop

    :goto_45
    cmpl-double v0, p1, v6

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_46
    const-string v4, "Parameter phi must be in [0, 1], got %s: "

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

    :goto_47
    const-string p1, "Invalid state, min is not initialized"

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_48
    goto/16 :goto_23

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    if-gtz v0, :cond_7

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    iget-object v1, p0, Lsvo;->e:Lqnt;

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_4c
    if-eqz p1, :cond_8

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_8
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    const-string v3, "Empty aggregator - cannot compute quantiles."

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {v0, v3}, Lsay;->j(Ljava/lang/Comparable;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_4f
    invoke-static {v1, p1}, Lrrf;->y(ZLjava/lang/Object;)V

    goto/32 :goto_1e

    nop

    nop

    :goto_50
    iget-object p0, p0, Lsvo;->e:Lqnt;

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    if-lez v0, :cond_9

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

    :cond_9
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_52
    const/4 v2, 0x0

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    move v1, v2

    nop

    :goto_54
    goto/32 :goto_47

    nop

    nop

    :goto_55
    cmpg-double p1, p1, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop
.end method
