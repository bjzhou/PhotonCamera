.class public final Ljbk;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public a:J

.field public b:Z

.field public c:Landroidx/wear/ambient/AmbientMode$AmbientController;


# direct methods
.method public constructor <init>()V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x4

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-boolean v0, p0, Ljbk;->b:Z

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_5
    const-wide/16 v0, 0x0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

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

    goto/32 :goto_d

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_a
    const v1, 0x16

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_b
    iput-wide v0, p0, Ljbk;->a:J

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_c
    goto/32 :goto_3

    nop

    :goto_d
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v0, 0x0

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
.end method


# virtual methods
.method public final a()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Ljbk;->b()V

    goto/32 :goto_3

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final b()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto/32 :goto_1

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
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final doFrame(J)V
    .locals 11

    goto/32 :goto_6a

    nop

    nop

    :goto_0
    sub-float/2addr v4, v5

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_1
    cmp-long v2, v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v6, v10}, Lezm;->s(F)V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_3
    check-cast v5, Lezm;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_4
    check-cast v9, Ljbq;

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_5
    check-cast v1, Ljbs;

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_6
    if-ltz v4, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :cond_0
    :goto_7
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    cmpg-float v4, v4, v5

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
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_b
    cmpl-float v4, v4, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_c
    move v4, v10

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_39

    nop

    nop

    nop

    :goto_e
    if-nez v5, :cond_1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v6, v4}, Lezm;->s(F)V

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_10
    if-nez v4, :cond_2

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0xa

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_12
    const/4 v10, 0x0

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_13
    goto/32 :goto_17

    nop

    nop

    :goto_14
    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    sget-object v7, Ljbq;->c:Ljbq;

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

    :goto_16
    return-void

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_18
    div-float v5, v0, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_19
    invoke-virtual {v6}, Lezm;->a()F

    move-result v9

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

    :goto_1a
    if-nez v4, :cond_3

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_1b
    iget-wide v0, p0, Ljbk;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_1c
    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1e
    goto/16 :goto_3c

    nop

    :goto_1f
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_20
    goto :goto_26

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_25

    nop

    nop

    :goto_22
    add-float/2addr v4, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_25
    move v5, v10

    nop

    nop

    :goto_26
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_27
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_28
    check-cast v4, Lezm;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_29
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2a
    iget-object v4, v1, Ljbs;->f:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_2b
    sub-float v5, v7, v8

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    :goto_2c
    iget-object v4, v1, Ljbs;->f:Ljava/util/Map;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v5}, Lezm;->c()F

    move-result v5

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

    :goto_2e
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

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

    :goto_2f
    goto/16 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_31
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_32
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_33
    invoke-static {v4, v5, v9}, Ldvu;->y(FFF)F

    move-result v4

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_34
    if-eqz v5, :cond_4

    nop

    goto/32 :goto_30

    nop

    nop

    :cond_4
    goto/32 :goto_57

    nop

    nop

    nop

    :goto_35
    iput-wide p1, p0, Ljbk;->a:J

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_37
    if-nez v3, :cond_5

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :cond_5
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_38
    cmpl-float v5, v4, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_39
    iget-object v5, v1, Ljbs;->g:Ljava/util/Map;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    if-gtz v7, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_3d
    if-nez v1, :cond_7

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

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

    :goto_3f
    cmpl-float v7, v5, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_40
    invoke-virtual {v6}, Lezm;->b()F

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_41
    check-cast v6, Lezm;

    nop

    goto/32 :goto_65

    nop

    nop

    :goto_42
    const/4 v9, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_43
    goto/16 :goto_3c

    nop

    nop

    :goto_44
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_45
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_46
    invoke-virtual {v6}, Lezm;->b()F

    move-result v8

    nop

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

    :goto_47
    sget-object v5, Ljbq;->b:Ljbq;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_49
    iget-object v4, v1, Ljbs;->g:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_4a
    iget-object v1, v1, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    if-eq v5, v9, :cond_8

    nop

    goto/32 :goto_1f

    nop

    :cond_8
    goto/32 :goto_38

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {v6}, Lezm;->e()I

    move-result v5

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

    :goto_4d
    goto/16 :goto_d

    nop

    nop

    nop

    :goto_4e
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {v6}, Lezm;->l()V

    goto/32 :goto_43

    nop

    nop

    :goto_50
    div-float/2addr v9, v5

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    iget-object v5, v1, Ljbs;->f:Ljava/util/Map;

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

    nop

    :goto_52
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

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

    nop

    :goto_53
    const v5, 0x4bfe502b    # 3.3333334E7f

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

    :goto_54
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_55
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_56
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_57
    iget-object v4, v1, Ljbs;->f:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_58
    invoke-interface {v5, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    if-eqz v0, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    :cond_9
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    sub-float/2addr v4, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    goto/16 :goto_36

    nop

    :goto_5c
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_5d
    check-cast v4, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_5e
    check-cast v3, Ljava/util/Map$Entry;

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
    iget-boolean v0, p0, Ljbk;->b:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_60
    long-to-float v0, v0

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_62
    sub-float/2addr v7, v8

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_63
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_64
    iget-object v2, v1, Ljbs;->g:Ljava/util/Map;

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    invoke-virtual {v6}, Lezm;->a()F

    move-result v7

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    if-eqz v4, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :cond_a
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    if-lez v0, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_13

    nop

    :goto_68
    sub-long v0, p1, v0

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    :goto_69
    const-wide/32 v2, 0x1fca055

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

    :goto_6a
    const v0, 0x18

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

    :goto_6b
    invoke-virtual {p0}, Ljbk;->a()V

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    invoke-virtual {v6, v9}, Lezm;->s(F)V

    goto/32 :goto_b

    nop

    nop

    :goto_6d
    iget-object v1, p0, Ljbk;->c:Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_6e
    check-cast v3, Ljbq;

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    div-float/2addr v4, v7

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_70
    if-gez v2, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :cond_c
    goto/32 :goto_60

    nop

    nop

    nop

    :goto_71
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

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

    :goto_72
    check-cast v3, Ljbq;

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_73
    const v5, 0x3dcccccd    # 0.1f

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_74
    invoke-virtual {v4}, Lezm;->c()F

    move-result v4

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_75
    sub-float v9, v4, v8

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop
.end method
