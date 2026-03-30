.class public Landroidx/constraintlayout/core/motion/utils/KeyCache;
.super Ljava/lang/Object;
.source "KeyCache.java"


# instance fields
.field map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[F>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCache;->map:Ljava/util/HashMap;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v0, Ljava/util/HashMap;

    nop

    goto/32 :goto_3

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

    nop

    nop

    :goto_3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop
.end method


# virtual methods
.method public getFloatValue(Ljava/lang/Object;Ljava/lang/String;I)F
    .locals 4

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_0
    check-cast v0, Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    const/high16 v1, 0x7fc00000    # Float.NaN

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_2
    check-cast v2, [F

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCache;->map:Ljava/util/HashMap;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_4
    const v1, 0xd

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_5
    goto :goto_c

    nop

    :goto_6
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_7
    if-eqz v2, :cond_0

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

    :cond_0
    goto/32 :goto_5

    nop

    nop

    :goto_8
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

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
    if-nez v0, :cond_1

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
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-gt v3, p3, :cond_2

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_b
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_d
    if-eqz v0, :cond_3

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

    :cond_3
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return v1

    nop

    nop

    :goto_f
    goto/32 :goto_b

    nop

    nop

    :goto_10
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_12
    aget v1, v2, p3

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_14
    const v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_15
    array-length v3, v2

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_16
    return v1

    nop

    nop

    :goto_17
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_19
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCache;->map:Ljava/util/HashMap;

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

    :goto_1a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1b
    return v1

    nop

    :goto_1c
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1d
    if-eqz v2, :cond_4

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :cond_4
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_1f
    return v1

    nop

    :goto_20
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_19

    nop

    nop

    :goto_23
    if-lez v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    :cond_5
    goto/32 :goto_21

    nop
.end method

.method public setFloatValue(Ljava/lang/Object;Ljava/lang/String;IF)V
    .locals 3

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/KeyCache;->map:Ljava/util/HashMap;

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

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

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

    goto/32 :goto_25

    nop

    nop

    :cond_0
    goto/32 :goto_24

    nop

    :goto_7
    const v0, 0x15

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
    if-eqz v0, :cond_1

    nop

    goto/32 :goto_19

    nop

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

    nop

    :goto_9
    goto :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v2, 0x0

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_c
    aput p4, v1, p3

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

    nop

    nop

    :goto_d
    new-array v1, v1, [F

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

    :goto_e
    goto/16 :goto_1

    nop

    :goto_f
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_11
    return-void

    nop

    :goto_12
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

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

    :goto_14
    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    add-int/lit8 v2, p3, 0x1

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_16
    add-int/lit8 v1, p3, 0x1

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_17
    add-int/lit8 v1, p3, 0x1

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_18
    move-object v0, v1

    nop

    nop

    :goto_19
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

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

    :goto_1b
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_1c
    if-le v2, p3, :cond_2

    nop

    goto/32 :goto_2c

    nop

    :cond_2
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1d
    aput p4, v1, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1e
    check-cast v0, Ljava/util/HashMap;

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

    :goto_1f
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_20
    check-cast v1, [F

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

    :goto_21
    new-instance v1, Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    aput p4, v1, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_23
    new-array v1, v1, [F

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

    :goto_24
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_9

    nop

    nop

    :goto_27
    new-array v1, v2, [F

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_29
    if-eqz v1, :cond_3

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

    :cond_3
    goto/32 :goto_17

    nop

    nop

    :goto_2a
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCache;->map:Ljava/util/HashMap;

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    array-length v2, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_2f
    if-eqz v1, :cond_4

    nop

    goto/32 :goto_28

    nop

    nop

    :cond_4
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_30
    if-eqz v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_31
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/KeyCache;->map:Ljava/util/HashMap;

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

    :goto_32
    new-instance v0, Ljava/util/HashMap;

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_34
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

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

    :goto_36
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCache;->map:Ljava/util/HashMap;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop
.end method
