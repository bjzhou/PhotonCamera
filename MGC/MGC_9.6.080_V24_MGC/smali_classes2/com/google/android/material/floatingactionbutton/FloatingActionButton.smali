.class public Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
.super Lrih;
.source "PG"

# interfaces
.implements Lrld;
.implements Ldsv;


# instance fields
.field public a:I

.field public b:Z

.field public final c:Landroid/graphics/Rect;

.field private e:Landroid/content/res/ColorStateList;

.field private f:Landroid/graphics/PorterDuff$Mode;

.field private g:Landroid/content/res/ColorStateList;

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private final l:Landroid/graphics/Rect;

.field private m:Lrho;

.field private final n:Lrls;

.field private final o:Lofu;


# direct methods
.method private final 1478a1c7833aac5e360e0ba4b0c0c568m()Lrho;
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1
    const v0, 0xa

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_0

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->m:Lrho;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v0, Lrhq;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_7
    invoke-direct {v1, p0}, Landroidx/wear/ambient/AmbientMode$AmbientController;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_a

    nop

    nop

    :goto_8
    new-instance v1, Landroidx/wear/ambient/AmbientMode$AmbientController;

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

    :goto_9
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

    :goto_a
    invoke-direct {v0, p0, v1}, Lrhq;-><init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Landroidx/wear/ambient/AmbientMode$AmbientController;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->m:Lrho;

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

    :goto_c
    if-eqz v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0xb

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_e
    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->m:Lrho;

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_11
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private final 19e596a3e324281407eb5c11093c0152m(I)I
    .locals 3

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const p0, 0x7f070166

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    iget p1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

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

    :goto_4
    const v1, 0xc

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_5
    return p0

    nop

    :goto_6
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return p0

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v2, 0x1

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

    :goto_a
    goto/32 :goto_14

    nop

    :goto_b
    return p0

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x2

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-lt p1, v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_10
    if-ne p1, v2, :cond_1

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

    :cond_1
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_8

    nop

    :goto_14
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->j:I

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v1, -0x1

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
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :cond_2
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_19
    if-ne p1, v1, :cond_3

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const p0, 0x7f070167

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-direct {p0, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->19e596a3e324281407eb5c11093c0152m(I)I

    move-result p0

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

    :goto_1c
    invoke-direct {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->19e596a3e324281407eb5c11093c0152m(I)I

    move-result p0

    nop

    :goto_1d
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1e
    return v0

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_20
    goto :goto_1d

    nop

    nop

    :goto_21
    goto/32 :goto_27

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

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_24
    iget v0, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_25
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    :cond_4
    goto/32 :goto_13

    nop

    :goto_26
    const/16 v0, 0x1d6

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const/4 p1, 0x0

    nop

    goto/32 :goto_1c

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

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

    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
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

    nop

    nop

    nop

    :goto_1
    const v0, 0x7f0402d7

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

    :goto_2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 17

    goto/32 :goto_19

    nop

    nop

    :goto_0
    invoke-direct {v1, v0}, Lofu;-><init>(Landroid/widget/ImageView;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    move-object/from16 v7, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    :goto_2
    iput v4, v0, Lrho;->r:F

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_3
    aput-object v3, v2, v7

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    :goto_4
    move-object v2, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static/range {v1 .. v6}, Lric;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput v14, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->k:I

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_7
    iput-object v1, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->n:Lrls;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_8
    move/from16 v16, v9

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v7, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->e:Landroid/content/res/ColorStateList;

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    :goto_a
    invoke-direct {v3, v11}, Lrhp;-><init>(Lrku;)V

    goto/32 :goto_25

    nop

    nop

    :goto_b
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    :goto_c
    const/16 v14, 0xa

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x7f0600ac

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {v10, v1, v6}, Lrev;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lrev;

    move-result-object v6

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

    :goto_f
    iget v1, v0, Lrho;->r:F

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    :goto_10
    const v14, 0x7f070616

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v8, v7}, Lrgz;->b(Landroid/content/res/ColorStateList;)V

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_12
    iput v4, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->j:I

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iput-object v1, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->o:Lofu;

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :goto_15
    iput-object v5, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->g:Landroid/content/res/ColorStateList;

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_16
    check-cast v1, Lrhq;

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v3, v11}, Landroid/content/Context;->getColor(I)I

    move-result v11

    nop

    nop

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v0, v8, Lrgz;->a:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    :goto_19
    const v0, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    :goto_1a
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    :cond_0
    goto/32 :goto_c4

    nop

    :goto_1b
    const v11, 0x7f0600af

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_1c
    iput-object v3, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->e:Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_be

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const/16 v13, 0x10

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v8}, Lrgz;->invalidateSelf()V

    :goto_21
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_22
    if-nez v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    :cond_2
    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-object v8, v1, Lrhq;->B:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    :goto_24
    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->1478a1c7833aac5e360e0ba4b0c0c568m()Lrho;

    move-result-object v15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    :goto_25
    iput-object v3, v1, Lrhq;->m:Lrkp;

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    :goto_26
    invoke-virtual {v1, v9, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-static {v1, v7, v8, v9}, Lrmt;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object v1

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget v2, v0, Lrho;->t:F

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const/4 v11, 0x0

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_2b
    new-instance v8, Lrgz;

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    :goto_2c
    iput-object v0, v1, Lrhq;->p:Landroid/graphics/drawable/Drawable;

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iput v2, v8, Lrgz;->d:I

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    :goto_2e
    iput v11, v8, Lrgz;->c:I

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->1478a1c7833aac5e360e0ba4b0c0c568m()Lrho;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    :goto_30
    goto/16 :goto_73

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_32
    new-instance v1, Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    const/16 v14, 0x8

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    :goto_34
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-direct {v0, v1, v7, v8}, Lrih;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-static {v11}, Ldvu;->s(Ljava/lang/Object;)V

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_38
    if-nez v1, :cond_3

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->1478a1c7833aac5e360e0ba4b0c0c568m()Lrho;

    move-result-object v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3a
    cmpl-float v0, v0, v2

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_3b
    const/4 v7, 0x0

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    :goto_3c
    cmpl-float v1, v1, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_3d
    int-to-float v2, v15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_3e
    cmpl-float v1, v1, v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {v1, v4, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    iget-object v3, v1, Lrhq;->m:Lrkp;

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {v0, v1, v12, v2}, Lrho;->g(FFF)V

    :goto_42
    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    iput v14, v15, Lrho;->z:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    move-object/from16 v2, p2

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_45
    const/4 v9, 0x5

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

    :goto_46
    const/16 v5, 0xc

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {v3, v8}, Lrkp;->k(Landroid/content/Context;)V

    goto/32 :goto_c0

    nop

    nop

    :goto_48
    move-object/from16 v1, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_c5

    nop

    nop

    :goto_4a
    new-array v6, v11, [I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    :goto_4b
    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->1478a1c7833aac5e360e0ba4b0c0c568m()Lrho;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {v0, v15}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setEnabled(Z)V

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    move/from16 v16, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_4e
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    :goto_4f
    invoke-static {v3}, Ldvu;->s(Ljava/lang/Object;)V

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_50
    invoke-virtual {v1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto/32 :goto_58

    nop

    nop

    :goto_51
    iget-object v0, v1, Lrhq;->n:Landroid/graphics/drawable/Drawable;

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_52
    invoke-virtual {v3, v9}, Landroid/content/Context;->getColor(I)I

    move-result v3

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

    nop

    :goto_53
    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->1478a1c7833aac5e360e0ba4b0c0c568m()Lrho;

    move-result-object v1

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    invoke-direct {v1, v0}, Lrls;-><init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_55
    iput v4, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->h:I

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_56
    mul-float/2addr v2, v3

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_57
    iget-object v11, v1, Lrhq;->l:Lrku;

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    :goto_58
    return-void

    nop

    nop

    nop

    nop

    :goto_59
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    iput-boolean v0, v8, Lrgz;->g:Z

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_5b
    move/from16 v4, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5c
    new-instance v1, Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    const/4 v5, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    :goto_5e
    iget-object v3, v1, Lrhq;->o:Lrgz;

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    iput v4, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->i:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    :goto_60
    iget-object v3, v1, Lrhq;->m:Lrkp;

    nop

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    :goto_61
    iput-boolean v13, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_62
    const/16 v13, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    invoke-virtual {v0, v1, v2, v5}, Lrho;->g(FFF)V

    :goto_64
    goto/32 :goto_cb

    nop

    nop

    :goto_65
    const v9, 0x7f150693

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_66
    move-object/from16 v1, p1

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_67
    invoke-direct {v8, v11}, Lrgz;-><init>(Lrku;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    invoke-virtual {v0, v4, v1, v2}, Lrho;->g(FFF)V

    :goto_69
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    invoke-direct {v10, v9}, Lrku;-><init>(Lrkt;)V

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_6b
    iput-object v0, v1, Lrhq;->o:Lrgz;

    nop

    goto/32 :goto_72

    nop

    nop

    :goto_6c
    iput v3, v8, Lrgz;->f:I

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    :goto_6d
    invoke-direct {v3, v7, v2, v0}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    iput-object v3, v1, Lrhq;->n:Landroid/graphics/drawable/Drawable;

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_6f
    iget v1, v0, Lrho;->r:F

    nop

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    new-instance v1, Lofu;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_71
    const/4 v4, 0x3

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    :goto_72
    iget-object v2, v1, Lrhq;->m:Lrkp;

    nop

    nop

    nop

    nop

    nop

    :goto_73
    goto/32 :goto_a6

    nop

    nop

    :goto_74
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_75
    iget v1, v0, Lrho;->s:F

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    nop

    :goto_76
    invoke-virtual {v3, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_77
    invoke-virtual {v1, v14, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_78
    invoke-virtual {v1, v12, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v12

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_79
    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    move-object v1, v10

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    iput v12, v0, Lrho;->s:F

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    invoke-static {v10, v7, v8, v9, v15}, Lrku;->d(Landroid/content/Context;Landroid/util/AttributeSet;IILrkk;)Lrkt;

    move-result-object v9

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    iput-object v8, v1, Lrhq;->o:Lrgz;

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    const/4 v4, -0x1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_7f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_80
    const/4 v4, 0x4

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    :goto_81
    move/from16 v1, v16

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    :goto_82
    iget v15, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->h:I

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_83
    const/4 v4, 0x6

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_84
    iput-object v1, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->l:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_85
    const v1, 0x1b

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    :goto_86
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_87
    invoke-virtual {v8}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v8

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_88
    iget-object v3, v1, Lrhq;->m:Lrkp;

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    :goto_89
    iget v0, v8, Lrgz;->b:F

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_8a
    iput-object v1, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->c:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_8b
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_8c
    iget v1, v0, Lrho;->s:F

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_8d
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_8e
    invoke-static {v10}, Lrke;->b(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v7

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    iget-object v10, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->g:Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    :goto_90
    sget-object v15, Lrku;->a:Lrkk;

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    :goto_91
    invoke-virtual {v1, v7, v8}, Lofu;->s(Landroid/util/AttributeSet;I)V

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_92
    iget-object v8, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->f:Landroid/graphics/PorterDuff$Mode;

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_93
    iget v1, v0, Lrho;->t:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_94
    const/4 v5, 0x0

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    :goto_95
    const/4 v7, 0x1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_96
    iget-object v3, v1, Lrhq;->B:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    :goto_97
    iput-object v14, v0, Lrho;->x:Lrev;

    nop

    goto/32 :goto_9e

    nop

    nop

    :goto_98
    new-instance v3, Lrhp;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_99
    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_9a
    aput-object v3, v2, v7

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    iget-object v3, v1, Lrhq;->m:Lrkp;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_9c
    iput-object v6, v0, Lrho;->w:Lrev;

    nop

    nop

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

    :goto_9d
    iput-boolean v1, v0, Lrho;->q:Z

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->1478a1c7833aac5e360e0ba4b0c0c568m()Lrho;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    new-instance v10, Lrku;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_a0
    invoke-virtual {v1, v10}, Lrho;->i(Lrku;)V

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_a1
    invoke-virtual {v1, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_a2
    invoke-static {v10, v1, v5}, Lqqy;->g(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    :goto_a4
    invoke-virtual {v3, v7}, Lrkp;->setTintList(Landroid/content/res/ColorStateList;)V

    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    iput-object v5, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->f:Landroid/graphics/PorterDuff$Mode;

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_a6
    new-instance v3, Landroid/graphics/drawable/RippleDrawable;

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    :goto_a7
    invoke-virtual {v1, v13, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_a8
    iget v6, v15, Lrho;->z:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    :goto_a9
    invoke-virtual {v1, v4, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_aa
    move-object/from16 v0, p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_ab
    iget v1, v0, Lrho;->r:F

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    invoke-virtual {v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v3

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

    nop

    :goto_ad
    const v5, 0x7f150693

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_af
    invoke-direct {v0, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    invoke-static {v5, v6}, La;->n(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    :goto_b1
    invoke-virtual {v3, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_b2
    iput v13, v0, Lrho;->u:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    const/4 v3, 0x2

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_b4
    add-int v0, v0, v1

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    :goto_b5
    invoke-virtual {v1, v11, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b6
    new-instance v1, Lrls;

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_b7
    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->1478a1c7833aac5e360e0ba4b0c0c568m()Lrho;

    move-result-object v0

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    const v3, 0x3faaa993    # 1.3333f

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_b9
    cmpl-float v1, v1, v4

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    :goto_ba
    invoke-static {v10, v1, v2}, Lqqy;->g(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_bb
    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_bc
    iget v2, v0, Lrho;->s:F

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_bd
    iget-object v11, v1, Lrhq;->l:Lrku;

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_be
    iput v2, v8, Lrgz;->b:F

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

    :goto_bf
    if-nez v1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    :cond_4
    goto/32 :goto_2

    nop

    nop

    :goto_c0
    if-gtz v15, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_96

    nop

    nop

    nop

    :goto_c1
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_c2
    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->1478a1c7833aac5e360e0ba4b0c0c568m()Lrho;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_c3
    iput v5, v0, Lrho;->t:F

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_c4
    goto/32 :goto_59

    nop

    :goto_c5
    goto/32 :goto_aa

    nop

    nop

    nop

    :goto_c6
    invoke-static {v11}, Ldvu;->s(Ljava/lang/Object;)V

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    :goto_c7
    invoke-virtual {v1, v13, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_c8
    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->1478a1c7833aac5e360e0ba4b0c0c568m()Lrho;

    move-result-object v0

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c9
    invoke-virtual {v15}, Lrho;->j()V

    :goto_ca
    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    nop

    :goto_cb
    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->1478a1c7833aac5e360e0ba4b0c0c568m()Lrho;

    move-result-object v0

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    :goto_cc
    invoke-virtual {v3, v8}, Lrkp;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :goto_cd
    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    :goto_ce
    const/16 v6, 0xf

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_cf
    sget-object v3, Lrhr;->b:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d0
    const v9, 0x7f0600ad

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

    nop

    :goto_d1
    if-ne v6, v14, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_43

    nop

    nop

    nop

    :goto_d2
    iget v2, v0, Lrho;->t:F

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d3
    invoke-static {v10, v1, v14}, Lrev;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lrev;

    move-result-object v14

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :goto_d4
    const v2, 0x7f0600ae

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    :goto_d5
    const/16 v12, 0x9

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    :goto_d6
    iput v0, v8, Lrgz;->e:I

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_d7
    if-nez v8, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    :cond_7
    goto/32 :goto_60

    nop

    nop

    :goto_d8
    const/4 v2, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d9
    move/from16 v8, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_da
    invoke-static {v3}, Ldvu;->s(Ljava/lang/Object;)V

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static synthetic c(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-super {p0, p1}, Lrih;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Ldsw;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$Behavior;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    new-instance p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$Behavior;

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
.end method

.method public final b()I
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    :goto_1
    invoke-direct {p0, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->19e596a3e324281407eb5c11093c0152m(I)I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->i:I

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final d(Lrku;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Lrho;->i(Lrku;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->1478a1c7833aac5e360e0ba4b0c0c568m()Lrho;

    move-result-object p0

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
.end method

.method protected final drawableStateChanged()V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->1478a1c7833aac5e360e0ba4b0c0c568m()Lrho;

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getDrawableState()[I

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    invoke-super {p0}, Lrih;->drawableStateChanged()V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method final e()V
    .locals 6

    goto/32 :goto_9

    nop

    nop

    :goto_0
    const/4 v1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_2
    move-object v0, p0

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_3
    const/4 v0, 0x4

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

    :goto_4
    invoke-virtual {p0, v0, v1}, Lrih;->g(IZ)V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_5
    if-ne v0, v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :cond_0
    :goto_6
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0, v0, v1, v1, v1}, Lrho;->c(Lrev;FFF)Landroid/animation/AnimatorSet;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Lrho;->n()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_9
    const v0, 0x18

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_a
    sget v5, Lrho;->e:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v1, 0x0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_c
    sget v4, Lrho;->d:I

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    :goto_f
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_1
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-nez v0, :cond_2

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_16

    nop

    nop

    :goto_13
    goto/16 :goto_27

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_f

    nop

    :goto_16
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_17
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_36

    nop

    nop

    :goto_19
    goto/16 :goto_2f

    nop

    :goto_1a
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    new-instance v1, Lrhf;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_1e
    invoke-direct {v1, p0}, Lrhf;-><init>(Lrho;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v0, p0, Lrho;->v:Landroid/animation/Animator;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_20
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->1478a1c7833aac5e360e0ba4b0c0c568m()Lrho;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-eqz v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget v0, p0, Lrho;->A:I

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_23
    iget-object v0, p0, Lrho;->B:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :goto_25
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual/range {v0 .. v5}, Lrho;->d(FFFII)Landroid/animation/AnimatorSet;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_28
    const v3, 0x3ecccccd    # 0.4f

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_29
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_2a
    move v2, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_2b
    const v1, 0x9

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2c
    rem-int v0, v0, v1

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

    :goto_2d
    if-lez v0, :cond_4

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_15

    nop

    :goto_2e
    return-void

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_30
    if-nez v0, :cond_5

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

    :cond_5
    goto/32 :goto_34

    nop

    nop

    :goto_31
    if-ne v0, v1, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_6
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_32
    iget-object v0, p0, Lrho;->x:Lrev;

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_33
    iget v0, p0, Lrho;->A:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_34
    const/4 v1, 0x0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getVisibility()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_36
    iget-object p0, p0, Lrho;->B:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method final f()V
    .locals 6

    goto/32 :goto_1a

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_40

    nop

    nop

    nop

    :goto_1
    const/high16 v2, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_2
    goto :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1b

    nop

    nop

    :goto_6
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_34

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

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

    :goto_a
    if-ne v0, v1, :cond_1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_1
    :goto_b
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v1, 0x2

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

    :goto_d
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_e
    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_2
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v0, p0, Lrho;->B:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0, v3}, Lrho;->h(F)V

    :goto_11
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual/range {v0 .. v5}, Lrho;->d(FFFII)Landroid/animation/AnimatorSet;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_14
    iget-object v1, p0, Lrho;->B:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setScaleY(F)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v1, 0x0

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v0, v1, v1}, Lrih;->g(IZ)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-nez v1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_3
    goto/32 :goto_49

    nop

    nop

    :goto_19
    if-eqz v0, :cond_4

    nop

    goto/32 :goto_3a

    nop

    :cond_4
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const v0, 0x4

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v0, p0, Lrho;->v:Landroid/animation/Animator;

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

    :goto_1c
    new-instance v1, Lrhg;

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-lez v0, :cond_5

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_4a

    nop

    :goto_1e
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p0}, Lrho;->n()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_20
    move-object v0, p0

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

    :goto_21
    iget-object v0, p0, Lrho;->B:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_22
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->1478a1c7833aac5e360e0ba4b0c0c568m()Lrho;

    move-result-object p0

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const/high16 v2, 0x3f800000    # 1.0f

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

    :goto_24
    iget-object v0, p0, Lrho;->B:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_4b

    nop

    :goto_26
    const v1, 0x9

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

    :goto_27
    if-nez v1, :cond_6

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v1, v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setScaleY(F)V

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p0, v0, v2, v2, v2}, Lrho;->c(Lrev;FFF)Landroid/animation/AnimatorSet;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_2a
    goto/16 :goto_13

    nop

    nop

    :goto_2b
    goto/32 :goto_42

    nop

    nop

    nop

    :goto_2c
    iget-object v0, p0, Lrho;->B:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v1, v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setAlpha(F)V

    goto/32 :goto_35

    nop

    nop

    :goto_2e
    add-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getVisibility()I

    move-result v1

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

    :goto_30
    iget-object v0, p0, Lrho;->B:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    nop

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

    :goto_31
    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getVisibility()I

    move-result v0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_32
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_33
    sget v5, Lrho;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_34
    iget-object v0, p0, Lrho;->B:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_35
    iget-object v1, p0, Lrho;->B:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_36
    invoke-virtual {v0, v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setScaleX(F)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v0, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setAlpha(F)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iget-object v0, p0, Lrho;->w:Lrev;

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_39
    const v3, 0x3ecccccd    # 0.4f

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_28

    nop

    nop

    :goto_3b
    if-ne v0, v1, :cond_7

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_3c
    iget v0, p0, Lrho;->A:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_3d
    iget-object v0, p0, Lrho;->w:Lrev;

    nop

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

    :goto_3e
    return-void

    nop

    :goto_3f
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :goto_41
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_42
    sget v4, Lrho;->b:I

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {v0, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setScaleX(F)V

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_44
    if-nez v0, :cond_8

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_45
    iget v0, p0, Lrho;->A:I

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

    :goto_46
    const/high16 v1, 0x3f800000    # 1.0f

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

    :goto_47
    const/high16 v3, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_48
    invoke-direct {v1, p0}, Lrhg;-><init>(Lrho;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_49
    iget-object v1, p0, Lrho;->B:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_4a
    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_4b
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {p0, v2}, Lrho;->h(F)V

    goto/32 :goto_3e

    nop

    nop

    nop
.end method

.method public final getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    :goto_1
    const-string p0, "com.google.android.material.floatingactionbutton.FloatingActionButton"

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
.end method

.method public final getBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->e:Landroid/content/res/ColorStateList;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->f:Landroid/graphics/PorterDuff$Mode;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop
.end method

.method public final jumpDrawablesToCurrentState()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-super {p0}, Lrih;->jumpDrawablesToCurrentState()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->1478a1c7833aac5e360e0ba4b0c0c568m()Lrho;

    goto/32 :goto_2

    nop

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
.end method

.method protected final onAttachedToWindow()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lrho;->B:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->1478a1c7833aac5e360e0ba4b0c0c568m()Lrho;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3
    invoke-super {p0}, Lrih;->onAttachedToWindow()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lrho;->m:Lrkp;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {p0, v0}, Lrkm;->d(Landroid/view/View;Lrkp;)V

    :goto_7
    goto/32 :goto_4

    nop

    nop
.end method

.method protected final onDetachedFromWindow()V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->1478a1c7833aac5e360e0ba4b0c0c568m()Lrho;

    move-result-object p0

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    goto/32 :goto_4

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lrho;->B:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lrho;->C:Landroid/view/ViewTreeObserver$OnPreDrawListener;

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

    :goto_5
    invoke-super {p0}, Lrih;->onDetachedFromWindow()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final onMeasure(II)V
    .locals 2

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->1478a1c7833aac5e360e0ba4b0c0c568m()Lrho;

    move-result-object v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

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

    :goto_2
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->c:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int/2addr p2, p1

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

    :goto_5
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->c:Landroid/graphics/Rect;

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

    :goto_6
    invoke-static {v0, p1}, Landroid/view/View;->resolveSize(II)I

    move-result p1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_7
    iget v0, v0, Landroid/graphics/Rect;->right:I

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->c:Landroid/graphics/Rect;

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
    add-int v0, v0, v1

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

    :goto_a
    invoke-virtual {v1}, Lrho;->k()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_b
    iget v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->k:I

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget v0, v0, Landroid/graphics/Rect;->top:I

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {v0, p2}, Landroid/view/View;->resolveSize(II)I

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_11
    add-int/2addr p1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_12
    div-int/lit8 v1, v1, 0x2

    nop

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

    :goto_13
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_14
    add-int/2addr p1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_15
    const v0, 0x19

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_16
    iget p2, p2, Landroid/graphics/Rect;->left:I

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1b

    nop

    :goto_18
    sub-int v1, v0, v1

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_19
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->c:Landroid/graphics/Rect;

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

    :goto_1b
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p0, p2, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setMeasuredDimension(II)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1e
    add-int/2addr p2, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1f
    const v1, 0x1d

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_20
    iput v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->a:I

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method protected final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p1}, Ldvu;->s(Ljava/lang/Object;)V

    goto/32 :goto_24

    nop

    nop

    :goto_1
    iget-object p0, p0, Lrls;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    instance-of v0, p1, Lrlu;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_27

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
    return-void

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-super {p0, v0}, Lrih;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_b
    invoke-virtual {p1, v0}, Lyo;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_c
    iput p1, p0, Lrls;->a:I

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_d
    check-cast p1, Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_e
    iput-boolean v0, p0, Lrls;->b:Z

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

    :goto_f
    check-cast p1, Lrlu;

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

    :goto_10
    instance-of v0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_12
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const-string v0, "expandableWidgetHelper"

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

    :goto_14
    sget-object v0, Lcom/google/android/libraries/mdi/download/workmanager/workers/UTR/fllg;->dLedOSWkkwH:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_15
    iget-object p1, p0, Lrls;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_16
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->n:Lrls;

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p1, p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->b(Landroid/view/View;)V

    :goto_19
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_1a
    const v0, 0x10

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v0, 0x0

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

    :goto_1d
    const v1, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1e
    check-cast p1, Landroid/os/Bundle;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-super {p0, p1}, Lrih;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_20
    if-eqz v0, :cond_2

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

    :cond_2
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-nez p1, :cond_3

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_3
    goto/32 :goto_15

    nop

    nop

    :goto_22
    const/4 v1, 0x0

    nop

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

    :goto_23
    iget-boolean p1, p0, Lrls;->b:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_24
    const-string v0, "expanded"

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_25
    iget-object v0, p1, Ldxv;->d:Landroid/os/Parcelable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_26
    return-void

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_29
    iget-object p1, p1, Lrlu;->a:Lyo;

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

    :goto_2a
    goto/32 :goto_6

    nop

    :goto_2b
    check-cast p0, Landroid/view/View;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop
.end method

.method protected final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    goto/32 :goto_3

    nop

    nop

    :goto_2
    const v0, 0x1f

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
    const-string v3, "expanded"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_4
    iget p0, p0, Lrls;->a:I

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_6
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v2, Landroid/os/Bundle;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_9
    iget-boolean v4, p0, Lrls;->b:Z

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

    :goto_a
    goto/32 :goto_1a

    nop

    nop

    :goto_b
    goto/32 :goto_18

    nop

    nop

    :goto_c
    const-string p0, "expandableWidgetHelper"

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_d
    const v1, 0x9

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_e
    sget-object v3, Lcom/integrity/annotations/Obhj/bbLWXEJrNl;->VuIYZgBBja:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->n:Lrls;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_10
    new-instance v0, Landroid/os/Bundle;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {v1, v0}, Lrlu;-><init>(Landroid/os/Parcelable;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

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

    :goto_13
    if-lez v0, :cond_0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_14
    new-instance v1, Lrlu;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0, p0, v2}, Lyo;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v2, v3, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_1
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_18
    invoke-super {p0}, Lrih;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_19
    return-object v1

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/32 :goto_0

    nop

    nop

    :goto_1d
    iget-object v0, v1, Lrlu;->a:Lyo;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_0
    if-eqz v0, :cond_0

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

    :cond_0
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v1}, Lrho;->b()I

    move-result v1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_3
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_4
    iput v2, v0, Landroid/graphics/Rect;->top:I

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

    :goto_5
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->m:Lrho;

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

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_7
    sub-int/2addr v2, v1

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    return p0

    nop

    :goto_a
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-eqz v0, :cond_1

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_1
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->c:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getMeasuredWidth()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget v1, v1, Landroid/graphics/Rect;->right:I

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

    :goto_14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->l:Landroid/graphics/Rect;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_16
    invoke-super {p0, p1}, Lrih;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget v2, v0, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->c:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_19
    return v3

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    neg-int v1, v1

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

    nop

    :goto_1c
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_2
    goto/32 :goto_11

    nop

    :goto_1d
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->c:Landroid/graphics/Rect;

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

    :goto_1e
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->c:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getMeasuredHeight()I

    move-result v2

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_20
    add-int/2addr v2, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Rect;->inset(II)V

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_22
    iget v1, v1, Landroid/graphics/Rect;->top:I

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_23
    iput v2, v0, Landroid/graphics/Rect;->right:I

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_24
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->l:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iput v2, v0, Landroid/graphics/Rect;->left:I

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_26
    float-to-int v2, v2

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_27
    iget v1, v1, Landroid/graphics/Rect;->left:I

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_12

    nop

    :goto_29
    iget v2, v0, Landroid/graphics/Rect;->right:I

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const v0, 0x1b

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

    :goto_2b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_2c
    sub-int/2addr v2, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    add-int/2addr v2, v1

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    add-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_30
    const v1, 0xb

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_31
    float-to-int v1, v1

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

    :goto_32
    iget v2, v0, Landroid/graphics/Rect;->left:I

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop
.end method

.method public final setBackgroundColor(I)V
    .locals 0

    goto/32 :goto_0

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
.end method

.method public final setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    goto/32 :goto_0

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
.end method

.method public final setBackgroundResource(I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop
.end method

.method public final setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->e:Landroid/content/res/ColorStateList;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Lrgz;->b(Landroid/content/res/ColorStateList;)V

    :goto_2
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->e:Landroid/content/res/ColorStateList;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    :goto_5
    iget-object p0, p0, Lrho;->o:Lrgz;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_6
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    :goto_8
    iget-object v0, p0, Lrho;->m:Lrkp;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_9
    if-ne v0, p1, :cond_2

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->1478a1c7833aac5e360e0ba4b0c0c568m()Lrho;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0, p1}, Lrkp;->setTintList(Landroid/content/res/ColorStateList;)V

    :goto_c
    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method

.method public final setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->f:Landroid/graphics/PorterDuff$Mode;

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

    :goto_1
    if-ne v0, p1, :cond_0

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lrho;->m:Lrkp;

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

    :goto_3
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->f:Landroid/graphics/PorterDuff$Mode;

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

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0, p1}, Lrkp;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->1478a1c7833aac5e360e0ba4b0c0c568m()Lrho;

    move-result-object p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-nez p0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final setElevation(F)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-super {p0, p1}, Lrih;->setElevation(F)V

    goto/32 :goto_3

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Lrho;->l(F)V

    goto/32 :goto_2

    nop

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
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->1478a1c7833aac5e360e0ba4b0c0c568m()Lrho;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public final setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

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

    :goto_1
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->1478a1c7833aac5e360e0ba4b0c0c568m()Lrho;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2
    invoke-super {p0, p1}, Lrih;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    if-ne v0, p1, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Lrho;->j()V

    :goto_6
    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public final setImageResource(I)V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz p0, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    goto/32 :goto_5

    nop

    nop

    :goto_4
    invoke-virtual {v0, p1}, Lofu;->u(I)V

    goto/32 :goto_7

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->o:Lofu;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

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
.end method

.method public final setScaleX(F)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-super {p0, p1}, Lrih;->setScaleX(F)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->1478a1c7833aac5e360e0ba4b0c0c568m()Lrho;

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop
.end method

.method public final setScaleY(F)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->1478a1c7833aac5e360e0ba4b0c0c568m()Lrho;

    goto/32 :goto_1

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

    nop

    :goto_2
    invoke-super {p0, p1}, Lrih;->setScaleY(F)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final setTranslationX(F)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-super {p0, p1}, Lrih;->setTranslationX(F)V

    goto/32 :goto_2

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

    nop

    :goto_2
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->1478a1c7833aac5e360e0ba4b0c0c568m()Lrho;

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final setTranslationY(F)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-super {p0, p1}, Lrih;->setTranslationY(F)V

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->1478a1c7833aac5e360e0ba4b0c0c568m()Lrho;

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final setTranslationZ(F)V
    .locals 0

    goto/32 :goto_2

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
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->1478a1c7833aac5e360e0ba4b0c0c568m()Lrho;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-super {p0, p1}, Lrih;->setTranslationZ(F)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method
