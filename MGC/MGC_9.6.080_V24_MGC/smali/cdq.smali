.class public final Lcdq;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcei;


# instance fields
.field public a:Landroid/graphics/Canvas;

.field private b:Landroid/graphics/Rect;

.field private c:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    iput-object v0, p0, Lcdq;->a:Landroid/graphics/Canvas;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    sget-object v0, Lcdr;->a:Landroid/graphics/Canvas;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static final s()Landroid/graphics/Region$Op;
    .locals 2

    goto/32 :goto_e

    nop

    nop

    :goto_0
    sget-object v0, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sget-object v0, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_3
    invoke-static {v0, v1}, La;->p(II)Z

    move-result v0

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

    :goto_4
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-nez v0, :cond_0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    const v1, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_8
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-object v0

    nop

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    :goto_b
    goto/32 :goto_a

    nop

    :goto_c
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_e
    const v0, 0x13

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    :goto_10
    goto/16 :goto_1

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop
.end method


# virtual methods
.method public final a([F)V
    .locals 23

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    aget v15, v0, v14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_2
    aget v13, v0, v12

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    aget v3, v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_4
    aget v21, v0, v21

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    aput v7, v0, v6

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

    :goto_7
    goto/32 :goto_2c

    nop

    :goto_8
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_9
    aput v15, v0, v14

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_a
    aput v9, v0, v14

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_b
    move-object/from16 v0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_c
    aget v11, v0, v10

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_d
    aget v20, v0, v20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_e
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x7

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/16 v22, 0xf

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    aget v9, v0, v8

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_12
    aget v7, v0, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_13
    aget v19, v0, v18

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_14
    aget v17, v0, v16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_15
    const/4 v10, 0x4

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v12, 0x5

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_17
    if-eqz v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1f

    nop

    nop

    :goto_18
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    :goto_19
    const/4 v8, 0x3

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

    nop

    :goto_1a
    aput v20, v0, v6

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const/16 v18, 0x8

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1c
    aput v13, v0, v10

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    aget v5, v0, v4

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

    :goto_1e
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->setValues([F)V

    goto/32 :goto_27

    nop

    nop

    :goto_1f
    new-instance v1, Landroid/graphics/Matrix;

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_20
    aput v11, v0, v4

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

    :goto_21
    invoke-static/range {p1 .. p1}, Lcfa;->a([F)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_22
    const/4 v2, 0x0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_23
    aput v22, v0, v18

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_24
    aput v17, v0, v16

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const/4 v4, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_26
    move-object/from16 v0, p0

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_27
    aput v3, v0, v2

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

    :goto_28
    const/16 v21, 0xd

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_29
    iget-object v0, v0, Lcdq;->a:Landroid/graphics/Canvas;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_2a
    aput v9, v0, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_2b
    return-void

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_e

    nop

    nop

    :goto_2d
    const v0, 0x4

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

    :goto_2e
    aput v19, v0, v18

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_2f
    aput v21, v0, v12

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_30
    const/16 v20, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :goto_32
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_33
    const/4 v6, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_34
    aget v22, v0, v22

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

    :goto_35
    const/4 v14, 0x6

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    aput v17, v0, v16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_37
    const/16 v16, 0x7

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_38
    aput v13, v0, v12

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

    :goto_39
    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    aput v11, v0, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    aput v5, v0, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3c
    aput v5, v0, v8

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iget-object p0, p0, Lcdq;->a:Landroid/graphics/Canvas;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    invoke-static {p0, v0}, Lcek;->a(Landroid/graphics/Canvas;Z)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c(JFLcff;)V
    .locals 2

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lcdq;->a:Landroid/graphics/Canvas;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_2
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_3
    const/16 v1, 0x20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_6
    check-cast p4, Lcdw;

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

    :goto_7
    const v1, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_11

    nop

    nop

    :goto_a
    and-long/2addr v0, p1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_c
    long-to-int p1, p1

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_d
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_f
    iget-object p4, p4, Lcdw;->a:Landroid/graphics/Paint;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_10
    const-wide v0, 0xffffffffL

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_11
    goto/32 :goto_5

    nop

    :goto_12
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_13
    const v0, 0xf

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_14
    shr-long/2addr p1, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_15
    long-to-int v0, v0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d(JJLcff;)V
    .locals 9

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

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

    :goto_1
    long-to-int v2, v2

    nop

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

    :goto_2
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    invoke-static {p3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

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

    :goto_4
    long-to-int p4, v0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v8, p5, Lcdw;->a:Landroid/graphics/Paint;

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

    :goto_6
    iget-object v3, p0, Lcdq;->a:Landroid/graphics/Canvas;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_7
    shr-long/2addr p3, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const-wide v0, 0xffffffffL

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

    nop

    :goto_a
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x20

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
    long-to-int p1, p1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_10
    long-to-int p3, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_11
    and-long v2, p3, v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_14
    check-cast p5, Lcdw;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_b

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

    goto/32 :goto_19

    nop

    nop

    :goto_17
    shr-long/2addr p1, v3

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_18
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_19
    if-lez v0, :cond_0

    nop

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

    :goto_1a
    and-long/2addr v0, p1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1b
    const/16 v3, 0x20

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e(Lcfi;Lcff;)V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    :goto_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    throw p0

    nop

    nop

    :goto_4
    iget-object p2, p2, Lcdw;->a:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_5
    const-string p1, "Unable to obtain android.graphics.Path"

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    instance-of v0, p1, Lcdy;

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

    :goto_7
    check-cast p1, Lcdy;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p0, p0, Lcdq;->a:Landroid/graphics/Canvas;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_b
    if-nez v0, :cond_0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_c
    check-cast p2, Lcdw;

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

    nop

    :goto_d
    iget-object p1, p1, Lcdy;->a:Landroid/graphics/Path;

    nop

    nop

    goto/32 :goto_c

    nop

    nop
.end method

.method public final f(FFFFLcff;)V
    .locals 6

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x15

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1
    iget-object v5, p5, Lcdw;->a:Landroid/graphics/Paint;

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

    :goto_2
    move v4, p4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x16

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_8
    move v2, p2

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Lcdq;->a:Landroid/graphics/Canvas;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_a
    move v3, p3

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

    :goto_b
    add-int v0, v0, v1

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

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_e
    check-cast p5, Lcdw;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_11
    move v1, p1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop
.end method

.method public final g(FFFFFFLcff;)V
    .locals 8

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_7

    nop

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

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x13

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

    nop

    :goto_4
    const v1, 0x12

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

    :goto_5
    check-cast p7, Lcdw;

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
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_7
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_8
    iget-object v7, p7, Lcdw;->a:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_9
    move v5, p5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_a
    move v2, p2

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_b
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_d
    move v6, p6

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Lcdq;->a:Landroid/graphics/Canvas;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_f
    move v4, p4

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

    :goto_10
    move v3, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_11
    move v1, p1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_13
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto/32 :goto_0

    nop

    nop
.end method

.method public final h()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lcdq;->a:Landroid/graphics/Canvas;

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

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    invoke-static {p0, v0}, Lcek;->a(Landroid/graphics/Canvas;Z)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public final i()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object p0, p0, Lcdq;->a:Landroid/graphics/Canvas;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final j(F)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->rotate(F)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lcdq;->a:Landroid/graphics/Canvas;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final k()V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

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
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lcdq;->a:Landroid/graphics/Canvas;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public final l(FF)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lcdq;->a:Landroid/graphics/Canvas;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->scale(FF)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop
.end method

.method public final m(FF)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object p0, p0, Lcdq;->a:Landroid/graphics/Canvas;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->translate(FF)V

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

.method public final n(FFFFFFLcff;)V
    .locals 9

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1
    move v1, p1

    nop

    goto/32 :goto_11

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

    :goto_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    move-object v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_5
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

    :goto_6
    add-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_7
    move v6, p6

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_8
    check-cast v1, Lcdw;

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

    :goto_9
    move-object/from16 v1, p7

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_a
    iget-object v8, v1, Lcdw;->a:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x1b

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    move v5, p5

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_d
    const v1, 0xd

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

    :goto_e
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_f

    nop

    :goto_f
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    move v2, p2

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

    :goto_12
    move v4, p4

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_13
    move v3, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_14
    const/4 v7, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v0, v0, Lcdq;->a:Landroid/graphics/Canvas;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual/range {v0 .. v8}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public final o(Lcfi;)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    check-cast p1, Lcdy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    iget-object p1, p1, Lcdy;->a:Landroid/graphics/Path;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lcdq;->a:Landroid/graphics/Canvas;

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5
    invoke-static {}, Lcdq;->s()Landroid/graphics/Region$Op;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final p(FFFF)V
    .locals 6

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_0
    move v3, p3

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_1
    iget-object v0, p0, Lcdq;->a:Landroid/graphics/Canvas;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
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

    :goto_3
    invoke-static {}, Lcdq;->s()Landroid/graphics/Region$Op;

    move-result-object v5

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

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_7
    move v2, p2

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    move v1, p1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x1e

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

    :goto_c
    const v0, 0x17

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_d
    move v4, p4

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

    :goto_e
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
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

    nop

    nop

    :goto_10
    goto/32 :goto_9

    nop

    nop
.end method

.method public final synthetic q(Lcdj;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Lceh;->d(Lcei;Lcdj;)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public final r(Lcew;JJLcff;)V
    .locals 8

    goto/32 :goto_1f

    nop

    nop

    :goto_0
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    and-long p2, p4, v5

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_3
    long-to-int p2, p2

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_4
    const-wide v5, 0xffffffffL

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_7
    iput-object v0, p0, Lcdq;->c:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_9
    add-int/2addr v7, v5

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_a
    iput p4, p0, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_b
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_c
    add-int/2addr v7, p2

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
    const-wide/16 v2, 0x0

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_e
    add-int/2addr p4, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_f
    const/16 v4, 0x20

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0, p1, v1, p0, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_11
    iget-object v1, p0, Lcdq;->b:Landroid/graphics/Rect;

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_12
    check-cast p6, Lcdw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Lcdq;->a:Landroid/graphics/Canvas;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {v2, v3}, Ldpk;->a(J)I

    move-result p2

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_15
    add-int/2addr v4, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_16
    shr-long v5, p2, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_17
    long-to-int v5, v5

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_18
    shr-long p2, p4, v4

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_19
    new-instance v0, Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {p1}, Lcdu;->a(Lcew;)Landroid/graphics/Bitmap;

    move-result-object p1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1c
    iput v4, v1, Landroid/graphics/Rect;->left:I

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {v2, v3}, Ldpk;->b(J)I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_1e
    iput v7, v1, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_1f
    const v0, 0x18

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_20
    iput v4, p0, Landroid/graphics/Rect;->right:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_21
    iget-object p2, p6, Lcdw;->a:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_22
    iget-object p0, p0, Lcdq;->c:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_23
    and-long/2addr p2, v5

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const v1, 0x1c

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_25
    new-instance v0, Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iput-object v0, p0, Lcdq;->b:Landroid/graphics/Rect;

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

    :goto_27
    invoke-static {v2, v3}, Ldpk;->b(J)I

    move-result p2

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-static {v2, v3}, Ldpk;->b(J)I

    move-result p4

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_29
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    :goto_2a
    invoke-static {v2, v3}, Ldpk;->a(J)I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_2b
    iget-object v0, p0, Lcdq;->b:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_2d
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2f
    long-to-int p2, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_30
    iput v4, v1, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_32
    invoke-static {v2, v3}, Ldpk;->a(J)I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_33
    iput p2, p0, Landroid/graphics/Rect;->left:I

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-static {v2, v3}, Ldpk;->a(J)I

    move-result v7

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_35
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_37
    iput p2, p0, Landroid/graphics/Rect;->top:I

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_38
    invoke-static {v2, v3}, Ldpk;->b(J)I

    move-result v7

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_39
    iput v7, v1, Landroid/graphics/Rect;->right:I

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3a
    long-to-int p2, p2

    nop

    goto/32 :goto_c

    nop

    nop
.end method
