.class public final Lrgz;
.super Landroid/graphics/drawable/Drawable;
.source "PG"


# instance fields
.field public final a:Landroid/graphics/Paint;

.field public b:F

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:Z

.field public h:Lrku;

.field private final i:Lrkw;

.field private final j:Landroid/graphics/Path;

.field private final k:Landroid/graphics/Rect;

.field private final l:Landroid/graphics/RectF;

.field private final m:Landroid/graphics/RectF;

.field private final n:Lrgy;

.field private o:I

.field private p:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Lrku;)V
    .locals 1

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object v0, p0, Lrgz;->m:Landroid/graphics/RectF;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    const/4 v0, 0x1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_5
    new-instance v0, Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0, p0}, Lrgy;-><init>(Lrgz;)V

    goto/32 :goto_9

    nop

    nop

    :goto_7
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-boolean v0, p0, Lrgz;->g:Z

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_9
    iput-object v0, p0, Lrgz;->n:Lrgy;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_a
    iput-object v0, p0, Lrgz;->j:Landroid/graphics/Path;

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

    :goto_b
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_c
    sget-object p0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_d
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_10
    new-instance v0, Lrgy;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_11
    new-instance p1, Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_12
    iput-object v0, p0, Lrgz;->k:Landroid/graphics/Rect;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_14
    new-instance v0, Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_15
    new-instance v0, Landroid/graphics/Path;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iput-object p1, p0, Lrgz;->h:Lrku;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_17
    iput-object v0, p0, Lrgz;->l:Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_18
    iput-object v0, p0, Lrgz;->i:Lrkw;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iput-object p1, p0, Lrgz;->a:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1a
    sget-object v0, Lrkv;->a:Lrkw;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method protected final a()Landroid/graphics/RectF;
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lrgz;->m:Landroid/graphics/RectF;

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
    rem-int v0, v0, v1

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

    :goto_3
    iget-object p0, p0, Lrgz;->m:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    :goto_7
    return-object p0

    nop

    :goto_8
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x14

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

    :goto_a
    const v1, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Lrgz;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_d
    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method

.method public final b(Landroid/content/res/ColorStateList;)V
    .locals 2

    goto/32 :goto_c

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_1
    iput-object p1, p0, Lrgz;->p:Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lrgz;->getState()[I

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    :goto_5
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    iget v1, p0, Lrgz;->o:I

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

    :goto_9
    if-nez p1, :cond_1

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

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_b
    const/4 p1, 0x1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_c
    const v0, 0x1c

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_f
    iput v0, p0, Lrgz;->o:I

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_11
    iput-boolean p1, p0, Lrgz;->g:Z

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_12
    const v1, 0x17

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

    :goto_13
    invoke-virtual {p0}, Lrgz;->invalidateSelf()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 20

    goto/32 :goto_19

    nop

    nop

    :goto_0
    move-object v12, v3

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_1
    iget-object v3, v3, Lrku;->b:Lrkk;

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

    :goto_2
    iget v4, v0, Lrgz;->f:I

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

    nop

    nop

    :goto_3
    const/4 v13, 0x0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_4
    goto/32 :goto_4c

    nop

    nop

    :goto_5
    invoke-static {v4, v8}, Ldtz;->c(II)I

    move-result v8

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/high16 v8, 0x3f000000    # 0.5f

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_7
    const/4 v5, 0x0

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_8
    new-instance v3, Landroid/graphics/LinearGradient;

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_9
    invoke-static {v4, v5}, Ldtz;->c(II)I

    move-result v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v3, v0, Lrgz;->l:Landroid/graphics/RectF;

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v3, v0, Lrgz;->h:Lrku;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v3, v4}, Lrku;->g(Landroid/graphics/RectF;)Z

    move-result v3

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v8, 0x1

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_e
    div-float/2addr v1, v2

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    move-object/from16 v18, v7

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {v4, v5}, Ldtz;->d(II)I

    move-result v4

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_11
    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :cond_0
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

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

    :goto_13
    const/4 v15, 0x0

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

    :goto_14
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_15
    iget v4, v2, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v3, 0x4

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual/range {p0 .. p0}, Lrgz;->a()Landroid/graphics/RectF;

    move-result-object v4

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

    :goto_19
    const v0, 0x14

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_1a
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget v5, v0, Lrgz;->o:I

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v3, v0, Lrgz;->l:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {v4, v10}, Ldtz;->c(II)I

    move-result v10

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    return-void

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    div-float/2addr v3, v4

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_21
    iput-boolean v5, v0, Lrgz;->g:Z

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_23
    iget-object v3, v0, Lrgz;->k:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    move/from16 v16, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_25
    invoke-interface {v3, v4}, Lrkk;->a(Landroid/graphics/RectF;)F

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    move-object/from16 v3, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_27
    new-array v7, v7, [F

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_28
    int-to-float v2, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_29
    aput v8, v7, v3

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_2a
    sub-float v6, v4, v3

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_2b
    const/4 v3, 0x2

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

    :goto_2c
    aput v6, v7, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget v10, v0, Lrgz;->o:I

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_2e
    invoke-static {v4, v11}, Ldtz;->c(II)I

    move-result v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_2f
    invoke-static {v4, v5}, Ldtz;->d(II)I

    move-result v4

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    sget-object v19, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_31
    if-nez v3, :cond_1

    nop

    goto/32 :goto_3d

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v3, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    goto/32 :goto_34

    nop

    nop

    :goto_33
    iget-object v3, v0, Lrgz;->h:Lrku;

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget-object v1, v0, Lrgz;->l:Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_35
    invoke-static {v4, v9}, Ldtz;->c(II)I

    move-result v9

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_36
    if-lez v0, :cond_2

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_4b

    nop

    :goto_37
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    const/4 v8, 0x0

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v0, v3}, Lrgz;->copyBounds(Landroid/graphics/Rect;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {v3, v1, v2, v2, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_3d
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_3e
    iget-object v0, v0, Lrgz;->a:Landroid/graphics/Paint;

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

    :goto_3f
    const/high16 v2, 0x40000000    # 2.0f

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_40
    const/4 v3, 0x3

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

    :goto_41
    iget v4, v0, Lrgz;->c:I

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

    :goto_42
    invoke-virtual {v0, v2}, Lrgz;->copyBounds(Landroid/graphics/Rect;)V

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_43
    iget v8, v0, Lrgz;->o:I

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-direct/range {v12 .. v19}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_45
    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_46
    iget-object v4, v0, Lrgz;->l:Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_47
    iget v3, v0, Lrgz;->b:F

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_48
    iget v4, v0, Lrgz;->f:I

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    int-to-float v14, v4

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_4a
    iget v4, v0, Lrgz;->e:I

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_4b
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    goto/32 :goto_1a

    nop

    nop

    :goto_4d
    aput v8, v7, v5

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    const/4 v3, 0x5

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_4f
    aput v3, v7, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_50
    aput v4, v7, v3

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

    nop

    :goto_51
    iget v4, v0, Lrgz;->d:I

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_52
    iget-boolean v1, v0, Lrgz;->g:Z

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_53
    iget-object v1, v0, Lrgz;->a:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_54
    invoke-virtual/range {p0 .. p0}, Lrgz;->a()Landroid/graphics/RectF;

    move-result-object v4

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_55
    const v1, 0x19

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_56
    div-float/2addr v4, v2

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_57
    invoke-static {v4, v5}, Ldtz;->c(II)I

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_58
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_59
    const/high16 v4, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    iget v4, v0, Lrgz;->d:I

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

    :goto_5b
    iget-object v4, v0, Lrgz;->k:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_5c
    filled-new-array/range {v6 .. v11}, [I

    move-result-object v17

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    iget-object v1, v0, Lrgz;->a:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_5e
    iget v5, v0, Lrgz;->o:I

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_5f
    aput v8, v7, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_60
    iget-object v2, v0, Lrgz;->k:Landroid/graphics/Rect;

    nop

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

    :goto_61
    int-to-float v4, v4

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_62
    iget v9, v0, Lrgz;->o:I

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_63
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_64
    iget v11, v0, Lrgz;->o:I

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

    :goto_65
    const/4 v7, 0x6

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lrgz;->n:Lrgy;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final getOpacity()I
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, -0x3

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p0, -0x2

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

    :goto_2
    if-gtz p0, :cond_0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    :goto_3
    iget p0, p0, Lrgz;->b:F

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

    :goto_4
    return p0

    nop

    :goto_5
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return p0

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_8
    cmpl-float p0, p0, v0

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

    nop
.end method

.method public final getOutline(Landroid/graphics/Outline;)V
    .locals 9

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {v0, v1}, Lrkk;->a(Landroid/graphics/RectF;)F

    move-result v0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_2
    invoke-static {p1, p0}, Lrgw;->a(Landroid/graphics/Outline;Landroid/graphics/Path;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lrgz;->l:Landroid/graphics/RectF;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-nez v0, :cond_1

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

    :cond_1
    goto/32 :goto_19

    nop

    nop

    :goto_6
    const v1, 0x19

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_7
    iget-object p0, p0, Lrgz;->j:Landroid/graphics/Path;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v7, 0x0

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Lrgz;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

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

    :goto_a
    invoke-virtual {p0}, Lrgz;->a()Landroid/graphics/RectF;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_b
    iget-object v6, p0, Lrgz;->l:Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_f

    nop

    nop

    :goto_d
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p1, p0, v0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0}, Lrgz;->a()Landroid/graphics/RectF;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_13
    iget-object v3, p0, Lrgz;->h:Lrku;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v2, p0, Lrgz;->i:Lrkw;

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

    :goto_15
    const/4 v4, 0x0

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_16
    return-void

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_18
    const/high16 v5, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_19
    iget-object v0, p0, Lrgz;->h:Lrku;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1b
    const v0, 0xe

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v0, p0, Lrgz;->k:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v1, p0, Lrgz;->k:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1e
    iget-object v0, v0, Lrku;->b:Lrkk;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v0, p0, Lrgz;->h:Lrku;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v8, p0, Lrgz;->j:Landroid/graphics/Path;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_21
    invoke-virtual/range {v2 .. v8}, Lrkw;->b(Lrku;[FFLandroid/graphics/RectF;Landroidx/wear/ambient/AmbientModeSupport$AmbientController;Landroid/graphics/Path;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p0, v0}, Lrgz;->copyBounds(Landroid/graphics/Rect;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v0, v1}, Lrku;->g(Landroid/graphics/RectF;)Z

    move-result v0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final getPadding(Landroid/graphics/Rect;)Z
    .locals 6

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1, p0, p0, p0, p0}, Landroid/graphics/Rect;->set(IIII)V

    :goto_1
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2
    const v1, 0x19

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    check-cast v0, Ljava/lang/Boolean;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_8
    goto/32 :goto_a

    nop

    nop

    :goto_9
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Lrgz;->h:Lrku;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_c
    const/16 v4, 0xb3

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_d
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v4, 0x0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Lrgz;->a()Landroid/graphics/RectF;

    move-result-object v1

    nop

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

    :goto_10
    return p0

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_13
    iget p0, p0, Lrgz;->b:F

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_14
    const v0, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {v4, v0, v2}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_18
    aput-object v1, v2, v4

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    new-array v2, v2, [Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop
.end method

.method public final isStateful()Z
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-nez v0, :cond_0

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

    :cond_0
    goto/32 :goto_4

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
    iget-object v0, p0, Lrgz;->p:Landroid/content/res/ColorStateList;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_5
    if-nez p0, :cond_1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_1
    :goto_6
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_7
    const/4 p0, 0x0

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

    :goto_8
    const/4 p0, 0x1

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

    :goto_9
    if-eqz v0, :cond_2

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_2
    :goto_a
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return p0

    nop

    :goto_c
    goto/32 :goto_7

    nop

    nop

    nop
.end method

.method protected final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    const/4 p1, 0x1

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
    iput-boolean p1, p0, Lrgz;->g:Z

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final onStateChange([I)Z
    .locals 2

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lrgz;->invalidateSelf()V

    :goto_1
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget v1, p0, Lrgz;->o:I

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_17

    nop

    :goto_4
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_5
    return p0

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x1e

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_9
    iget-boolean p1, p0, Lrgz;->g:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_a
    iput-boolean v0, p0, Lrgz;->g:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-ne p1, v0, :cond_1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x15

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Lrgz;->p:Landroid/content/res/ColorStateList;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_10
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_2
    goto/32 :goto_2

    nop

    nop

    :goto_11
    iget-boolean p0, p0, Lrgz;->g:Z

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget v0, p0, Lrgz;->o:I

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_13
    invoke-virtual {v0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    nop

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

    :goto_14
    if-nez p1, :cond_3

    nop

    nop

    nop

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

    :goto_15
    iput p1, p0, Lrgz;->o:I

    nop

    :goto_16
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_6

    nop

    :goto_18
    goto/32 :goto_e

    nop

    nop

    nop

    nop
.end method

.method public final setAlpha(I)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lrgz;->invalidateSelf()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lrgz;->a:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lrgz;->invalidateSelf()V

    goto/32 :goto_0

    nop

    nop

    :goto_2
    iget-object v0, p0, Lrgz;->a:Landroid/graphics/Paint;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto/32 :goto_1

    nop

    nop
.end method
