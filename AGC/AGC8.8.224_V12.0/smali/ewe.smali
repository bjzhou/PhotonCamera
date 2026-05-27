.class public final Lewe;
.super Ljava/lang/Object;


# static fields
.field private static a:Lgxb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lewe;->a:Lgxb;

    return-void
.end method

.method public static a(Lbnp;)Lgxb;
    .locals 22

    move-object/from16 v0, p0

    sget-object v1, Lewe;->a:Lgxb;

    if-nez v1, :cond_14

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lbnp;->f:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, v0, Lbnp;->c:Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    const/4 v9, -0x1

    if-ge v4, v6, :cond_3

    aput v9, v0, v4

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lbob;

    invoke-virtual {v6}, Lbob;->b()I

    move-result v6

    int-to-double v9, v6

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lbob;

    invoke-virtual {v6}, Lbob;->a()I

    move-result v6

    int-to-double v11, v6

    const v6, 0x7fffffff

    const/4 v13, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_1

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    div-double v14, v9, v11

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lbob;

    invoke-virtual/range {v16 .. v16}, Lbob;->b()I

    move-result v3

    int-to-double v7, v3

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbob;

    invoke-virtual {v3}, Lbob;->a()I

    move-result v3

    move-wide/from16 v18, v9

    int-to-double v9, v3

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v7, v9

    sub-double/2addr v14, v7

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    const-wide v9, 0x3f9eb851eb851eb8L    # 0.03

    cmpg-double v3, v7, v9

    if-gez v3, :cond_0

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbob;

    invoke-virtual {v3}, Lbob;->b()I

    move-result v3

    const/16 v7, 0x280

    if-ge v3, v7, :cond_0

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbob;

    invoke-virtual {v3}, Lbob;->b()I

    move-result v3

    add-int/lit16 v3, v3, -0x140

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v3, v6, :cond_0

    aput v13, v0, v4

    move v6, v3

    :cond_0
    add-int/lit8 v13, v13, 0x1

    move-wide/from16 v9, v18

    goto :goto_1

    :cond_1
    aget v3, v0, v4

    if-ltz v3, :cond_2

    add-int/lit8 v5, v5, 0x1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_3
    const-wide v3, 0x7fefffffffffffffL    # Double.MAX_VALUE

    if-nez v5, :cond_8

    const-wide/high16 v5, 0x4074000000000000L    # 320.0

    const/4 v7, 0x0

    const/4 v8, -0x1

    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    if-ge v7, v10, :cond_6

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lbob;

    invoke-virtual {v10}, Lbob;->b()I

    move-result v10

    add-int/lit16 v10, v10, -0x140

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    int-to-double v10, v10

    cmpg-double v12, v10, v5

    if-gez v12, :cond_4

    move-wide v12, v10

    goto :goto_3

    :cond_4
    move-wide v12, v5

    :goto_3
    cmpg-double v14, v10, v5

    if-gez v14, :cond_5

    move v8, v7

    :cond_5
    add-int/lit8 v7, v7, 0x1

    move-wide v5, v12

    goto :goto_2

    :cond_6
    const/4 v5, 0x0

    :goto_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_7

    aput v8, v0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_7
    move-wide v5, v3

    const/4 v7, 0x0

    goto :goto_5

    :cond_8
    move-wide v5, v3

    const/4 v7, 0x0

    :goto_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_c

    aget v8, v0, v7

    if-gez v8, :cond_9

    goto :goto_6

    :cond_9
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lbob;

    invoke-virtual {v8}, Lbob;->b()I

    move-result v8

    add-int/lit16 v8, v8, -0xbb8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    int-to-double v12, v8

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lbob;

    invoke-virtual {v8}, Lbob;->b()I

    move-result v8

    int-to-double v14, v8

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lbob;

    invoke-virtual {v8}, Lbob;->a()I

    move-result v8

    int-to-double v10, v8

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v14, v10

    const-wide v10, -0x400aaaaaaaaaaaabL    # -1.3333333333333333

    add-double/2addr v14, v10

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    if-ltz v9, :cond_a

    cmpg-double v8, v12, v5

    if-ltz v8, :cond_a

    cmpl-double v8, v12, v5

    if-nez v8, :cond_b

    cmpg-double v8, v10, v3

    if-gez v8, :cond_b

    :cond_a
    move v9, v7

    move-wide v3, v10

    move-wide v5, v12

    :cond_b
    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_c
    const-wide v7, 0x3f9eb851eb851eb8L    # 0.03

    cmpl-double v10, v3, v7

    if-lez v10, :cond_13

    move-wide v6, v5

    move-wide v4, v3

    const/4 v3, 0x0

    :goto_7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_13

    aget v8, v0, v3

    if-gez v8, :cond_d

    const-wide v16, 0x3f9eb851eb851eb8L    # 0.03

    goto/16 :goto_8

    :cond_d
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lbob;

    invoke-virtual {v8}, Lbob;->b()I

    move-result v8

    int-to-double v10, v8

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lbob;

    invoke-virtual {v8}, Lbob;->a()I

    move-result v8

    int-to-double v12, v8

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v10, v12

    const-wide v12, -0x400aaaaaaaaaaaabL    # -1.3333333333333333

    add-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lbob;

    invoke-virtual {v8}, Lbob;->b()I

    move-result v8

    add-int/lit16 v8, v8, -0xbb8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    int-to-double v14, v8

    const-wide v16, 0x3f9eb851eb851eb8L    # 0.03

    add-double v18, v10, v16

    cmpg-double v8, v18, v4

    if-gez v8, :cond_11

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lbob;

    invoke-virtual {v8}, Lbob;->b()I

    move-result v8

    add-int/lit16 v8, v8, -0xbb8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    int-to-double v12, v8

    const-wide v20, 0x4090680000000000L    # 1050.0

    cmpg-double v8, v12, v20

    if-gez v8, :cond_e

    move-wide v4, v10

    :cond_e
    cmpg-double v8, v12, v20

    if-gez v8, :cond_f

    move-wide v6, v14

    :cond_f
    cmpg-double v8, v12, v20

    if-gez v8, :cond_10

    move v9, v3

    :cond_10
    const-wide v16, 0x3f9eb851eb851eb8L    # 0.03

    goto :goto_8

    :cond_11
    sub-double v12, v10, v4

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    const-wide v16, 0x3f9eb851eb851eb8L    # 0.03

    cmpg-double v8, v12, v16

    if-gez v8, :cond_12

    cmpg-double v8, v14, v6

    if-gez v8, :cond_12

    move v9, v3

    move-wide v4, v10

    move-wide v6, v14

    :cond_12
    :goto_8
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_7

    :cond_13
    aget v0, v0, v9

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbob;

    invoke-virtual {v3}, Lbob;->b()I

    invoke-virtual {v3}, Lbob;->a()I

    new-instance v3, Lgxb;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbob;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbob;

    invoke-direct {v3, v0, v1}, Lgxb;-><init>(Lbob;Lbob;)V

    sput-object v3, Lewe;->a:Lgxb;

    :cond_14
    sget-object v0, Lewe;->a:Lgxb;

    return-object v0
.end method
