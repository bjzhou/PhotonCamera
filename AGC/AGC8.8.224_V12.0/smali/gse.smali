.class public final Lgse;
.super Ljava/lang/Object;


# instance fields
.field private final a:F

.field private final b:F

.field private final c:Z

.field private final d:Z


# direct methods
.method public constructor <init>(ZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lgse;->c:Z

    iput-boolean p2, p0, Lgse;->d:Z

    const/4 p1, 0x1

    if-eq p1, p3, :cond_0

    const p2, 0x40955556

    goto :goto_0

    :cond_0
    const p2, 0x3fb33333    # 1.4f

    :goto_0
    iput p2, p0, Lgse;->a:F

    if-eq p1, p3, :cond_1

    const/high16 p1, 0x40600000    # 3.5f

    goto :goto_1

    :cond_1
    const p1, 0x3fa2e8ba

    :goto_1
    iput p1, p0, Lgse;->b:F

    return-void
.end method


# virtual methods
.method public final a(Lgsl;Ljava/util/Collection;Z)Lgsk;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static/range {p1 .. p2}, Lgtl;->c(Lgsl;Ljava/util/Collection;)F

    move-result v2

    const v3, 0x3a03126f    # 5.0E-4f

    mul-float v2, v2, v3

    iget-boolean v3, v0, Lgse;->c:Z

    const-string v4, "The vector sizes are different."

    if-eqz v3, :cond_8

    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const v10, 0x7f7fffff    # Float.MAX_VALUE

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lgsl;

    if-eq v1, v11, :cond_0

    iget-object v12, v1, Lgsl;->p:Lmqp;

    iget-object v11, v11, Lgsl;->p:Lmqp;

    invoke-virtual {v12}, Lmqp;->g()Z

    move-result v13

    if-nez v13, :cond_1

    invoke-virtual {v11}, Lmqp;->g()Z

    move-result v13

    if-nez v13, :cond_1

    :goto_1
    const/high16 v14, 0x41200000    # 10.0f

    goto/16 :goto_5

    :cond_1
    invoke-virtual {v12}, Lmqp;->g()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-virtual {v11}, Lmqp;->g()Z

    move-result v13

    if-nez v13, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v12}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lgsx;

    iget-object v12, v12, Lgsx;->a:[Lgsw;

    invoke-static {v12}, Lgsj;->a([Lgsw;)Ljava/util/HashMap;

    move-result-object v12

    invoke-virtual {v11}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lgsx;

    iget-object v11, v11, Lgsx;->a:[Lgsw;

    invoke-static {v11}, Lgsj;->a([Lgsw;)Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-virtual {v12}, Ljava/util/HashMap;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_3

    const/high16 v14, 0x41200000    # 10.0f

    goto :goto_5

    :cond_3
    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    const/4 v14, 0x0

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v12, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/List;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/List;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v12, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v5, v16

    check-cast v5, Ljava/util/List;

    invoke-virtual {v11, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v9

    if-ne v6, v9, :cond_4

    const/4 v6, 0x1

    goto :goto_3

    :cond_4
    const/4 v6, 0x0

    :goto_3
    invoke-static {v6, v4}, Lmoz;->q(ZLjava/lang/Object;)V

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x0

    const/4 v9, 0x0

    :goto_4
    add-int/lit8 v8, v6, -0x1

    if-gt v9, v8, :cond_5

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-interface {v15, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Float;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Float;->floatValue()F

    move-result v18

    sub-float v8, v8, v18

    mul-float v8, v8, v8

    add-float/2addr v7, v8

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_5
    invoke-static {v14, v7}, Ljava/lang/Math;->max(FF)F

    move-result v14

    goto :goto_2

    :cond_6
    const/high16 v14, 0x41200000    # 10.0f

    :cond_7
    :goto_5
    cmpg-float v5, v14, v10

    if-gez v5, :cond_0

    move v10, v14

    goto/16 :goto_0

    :cond_8
    const v10, 0x7f7fffff    # Float.MAX_VALUE

    :cond_9
    if-eqz p3, :cond_a

    iget v3, v0, Lgse;->b:F

    goto :goto_6

    :cond_a
    iget v3, v0, Lgse;->a:F

    :goto_6
    iget-boolean v5, v0, Lgse;->d:Z

    if-eqz v5, :cond_11

    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const v17, 0x7f7fffff    # Float.MAX_VALUE

    :cond_b
    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgsl;

    if-eq v1, v6, :cond_b

    iget-object v7, v1, Lgsl;->r:Lmqp;

    iget-object v6, v6, Lgsl;->r:Lmqp;

    invoke-virtual {v7}, Lmqp;->g()Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-virtual {v6}, Lmqp;->g()Z

    move-result v8

    if-nez v8, :cond_c

    const/high16 v6, 0x41200000    # 10.0f

    goto :goto_a

    :cond_c
    invoke-virtual {v7}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [F

    invoke-virtual {v6}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [F

    array-length v8, v7

    array-length v9, v6

    if-ne v8, v9, :cond_d

    const/4 v9, 0x1

    goto :goto_8

    :cond_d
    const/4 v9, 0x0

    :goto_8
    invoke-static {v9, v4}, Lmoz;->q(ZLjava/lang/Object;)V

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_9
    if-ge v9, v8, :cond_e

    aget v14, v7, v9

    aget v15, v6, v9

    mul-float v18, v14, v15

    add-float v11, v11, v18

    mul-float v14, v14, v14

    add-float/2addr v12, v14

    mul-float v15, v15, v15

    add-float/2addr v13, v15

    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    :cond_e
    float-to-double v6, v12

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v6, v6

    float-to-double v7, v13

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v7, v7

    mul-float v6, v6, v7

    div-float/2addr v11, v6

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v6, v11

    goto :goto_a

    :cond_f
    const/high16 v6, 0x41200000    # 10.0f

    :goto_a
    cmpg-float v7, v6, v17

    if-gez v7, :cond_b

    move/from16 v17, v6

    goto :goto_7

    :cond_10
    mul-float v5, v17, v3

    goto :goto_b

    :cond_11
    const v5, 0x7f7fffff    # Float.MAX_VALUE

    :goto_b
    const/4 v3, 0x3

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v2, v3, v4

    const/4 v4, 0x1

    aput v10, v3, v4

    const/4 v4, 0x2

    aput v5, v3, v4

    invoke-static {v3}, Lnsy;->V([F)F

    move-result v3

    new-instance v4, Lgsk;

    iget-wide v5, v1, Lgsl;->a:J

    invoke-direct {v4, v3, v2}, Lgsk;-><init>(FF)V

    return-object v4
.end method
