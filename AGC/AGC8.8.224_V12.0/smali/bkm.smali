.class public final Lbkm;
.super Ljava/lang/Object;

# interfaces
.implements Lble;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lbkm;->a:I

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lblh;F)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lblh;->q()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lblh;->h()V

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lblh;->o()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual/range {p1 .. p1}, Lblh;->a()D

    move-result-wide v4

    double-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-ne v2, v3, :cond_2

    invoke-virtual/range {p1 .. p1}, Lblh;->j()V

    :cond_2
    iget v2, v0, Lbkm;->a:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    iput v2, v0, Lbkm;->a:I

    :cond_3
    new-array v4, v2, [F

    new-array v2, v2, [I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1
    iget v9, v0, Lbkm;->a:I

    mul-int/lit8 v9, v9, 0x4

    const-wide v10, 0x406fe00000000000L    # 255.0

    if-ge v6, v9, :cond_5

    div-int/lit8 v9, v6, 0x4

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    float-to-double v12, v12

    rem-int/lit8 v14, v6, 0x4

    packed-switch v14, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v12, v12, v10

    double-to-int v10, v12

    const/16 v11, 0xff

    invoke-static {v11, v7, v8, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v10

    aput v10, v2, v9

    goto :goto_2

    :pswitch_1
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v12, v12, v10

    double-to-int v8, v12

    goto :goto_2

    :pswitch_2
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v12, v12, v10

    double-to-int v7, v12

    goto :goto_2

    :pswitch_3
    if-lez v9, :cond_4

    add-int/lit8 v10, v9, -0x1

    aget v10, v4, v10

    double-to-float v11, v12

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_4

    const v10, 0x3c23d70a    # 0.01f

    add-float/2addr v11, v10

    aput v11, v4, v9

    goto :goto_2

    :cond_4
    double-to-float v10, v12

    aput v10, v4, v9

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    new-instance v6, Ldne;

    invoke-direct {v6, v4, v2}, Ldne;-><init>([F[I)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-gt v2, v9, :cond_6

    goto/16 :goto_8

    :cond_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v9

    div-int/lit8 v2, v2, 0x2

    new-array v4, v2, [D

    new-array v7, v2, [D

    const/4 v8, 0x0

    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v12

    if-ge v9, v12, :cond_8

    rem-int/lit8 v12, v9, 0x2

    if-nez v12, :cond_7

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    float-to-double v12, v12

    aput-wide v12, v4, v8

    goto :goto_4

    :cond_7
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    float-to-double v12, v12

    aput-wide v12, v7, v8

    add-int/lit8 v8, v8, 0x1

    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_8
    :goto_5
    invoke-virtual {v6}, Ldne;->I()I

    move-result v1

    if-ge v5, v1, :cond_b

    iget-object v1, v6, Ldne;->b:Ljava/lang/Object;

    check-cast v1, [I

    aget v1, v1, v5

    iget-object v8, v6, Ldne;->a:Ljava/lang/Object;

    check-cast v8, [F

    aget v8, v8, v5

    float-to-double v8, v8

    const/4 v12, 0x1

    :goto_6
    if-ge v12, v2, :cond_a

    add-int/lit8 v13, v12, -0x1

    aget-wide v14, v4, v13

    aget-wide v16, v4, v12

    cmpl-double v18, v16, v8

    if-ltz v18, :cond_9

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v8, v14

    sub-double v16, v16, v14

    div-double v8, v8, v16

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    invoke-static {v14, v15, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    const-wide/16 v14, 0x0

    invoke-static {v14, v15, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    aget-wide v13, v7, v13

    aget-wide v15, v7, v12

    sub-double/2addr v15, v13

    mul-double v8, v8, v15

    add-double/2addr v13, v8

    mul-double v13, v13, v10

    double-to-int v8, v13

    goto :goto_7

    :cond_9
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    :cond_a
    add-int/lit8 v8, v2, -0x1

    aget-wide v8, v7, v8

    mul-double v8, v8, v10

    double-to-int v8, v8

    :goto_7
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v9

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v12

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    invoke-static {v8, v9, v12, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iget-object v8, v6, Ldne;->b:Ljava/lang/Object;

    check-cast v8, [I

    aput v1, v8, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_b
    :goto_8
    return-object v6

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
