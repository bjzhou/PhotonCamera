.class public final Ldxo;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final g:I


# instance fields
.field public final a:Ldxn;

.field public final b:Landroid/view/View;

.field public c:Z

.field public d:Z

.field public e:Z

.field public final f:Landroid/widget/ListView;

.field private final h:Landroid/view/animation/Interpolator;

.field private i:Ljava/lang/Runnable;

.field private final j:[F

.field private final k:[F

.field private final l:I

.field private final m:[F

.field private final n:[F

.field private final o:[F

.field private p:Z

.field private q:Z


# direct methods
.method private final 23ce148e54b083367f51e25c7971761em(FF)F
    .locals 3

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    const/high16 v2, 0x3f800000    # 1.0f

    nop

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

    :goto_1
    const v1, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

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

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    :goto_4
    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    if-ltz v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_2
    goto/32 :goto_16

    nop

    nop

    :goto_6
    const v0, 0x1a

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return v0

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_9
    return v0

    nop

    :goto_a
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

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

    :goto_c
    div-float/2addr p1, p2

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_d
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_f
    return v2

    nop

    :goto_10
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_11
    if-nez p0, :cond_3

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

    :cond_3
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    cmpg-float v1, p1, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_13
    cmpl-float v1, p2, v0

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

    :goto_14
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_16
    cmpl-float v1, p1, v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_17
    sub-float/2addr v2, p1

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

    :goto_18
    goto/32 :goto_a

    nop

    :goto_19
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-boolean p0, p0, Ldxo;->e:Z

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

    :goto_1b
    if-gez v1, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_4
    goto/32 :goto_c

    nop

    nop

    nop

    nop
.end method

.method private final 7ecc92917e9c4556cc19f457ddc41af8m()V
    .locals 6

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_0
    iget-boolean v0, p0, Ldxo;->c:Z

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, v2, v3}, Ldxn;->a(J)F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_2
    const v1, 0x1d

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

    :goto_3
    iput-wide v2, p0, Ldxn;->g:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_4
    long-to-int v0, v4

    nop

    nop

    nop

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
    goto/32 :goto_a

    nop

    :goto_6
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Ldxo;->a:Ldxn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_8
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    :goto_d
    goto/32 :goto_7

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto :goto_13

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-wide v4, p0, Ldxn;->e:J

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_12
    move v1, v0

    nop

    :goto_13
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-ltz v0, :cond_1

    nop

    goto/32 :goto_20

    nop

    :cond_1
    goto/32 :goto_1f

    nop

    nop

    :goto_15
    if-lez v0, :cond_2

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

    :cond_2
    goto/32 :goto_5

    nop

    :goto_16
    iget v4, p0, Ldxn;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_18
    iput v0, p0, Ldxn;->h:F

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iput-boolean v1, p0, Ldxo;->e:Z

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1b
    sub-long v4, v2, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1c
    iput v1, p0, Ldxn;->i:I

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

    :goto_1d
    const v0, 0x4

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1f
    goto/16 :goto_13

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-gt v0, v4, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_3
    goto/32 :goto_22

    nop

    nop

    :goto_22
    move v1, v4

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    sput v0, Ldxo;->g:I

    nop

    nop

    nop

    nop

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
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/widget/ListView;)V
    .locals 12

    goto/32 :goto_3c

    nop

    nop

    :goto_0
    const v8, 0x44c4e000    # 1575.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_2
    new-instance v0, Ldxn;

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_3
    float-to-int v1, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_4
    const/4 v10, 0x0

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

    :goto_5
    return-void

    nop

    nop

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x7f7fffff    # Float.MAX_VALUE
        0x7f7fffff    # Float.MAX_VALUE
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x7f7fffff    # Float.MAX_VALUE
        0x7f7fffff    # Float.MAX_VALUE
    .end array-data

    :goto_6
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    new-array v2, v1, [F

    nop

    nop

    fill-array-data v2, :array_0

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_8
    div-float/2addr v7, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_9
    const v1, 0x20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_a
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput v1, p0, Ldxo;->l:I

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_c
    const v8, 0x439d8000    # 315.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_d
    iput-object v2, p0, Ldxo;->j:[F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_e
    const/4 v1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_f
    add-float/2addr v6, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_10
    iput-object v3, p0, Ldxo;->k:[F

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_6

    nop

    :goto_12
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iput-object p1, p0, Ldxo;->f:Landroid/widget/ListView;

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

    :goto_14
    iput-object p1, p0, Ldxo;->b:Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_15
    aput v1, v5, v10

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
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_17
    const v1, 0x7f7fffff    # Float.MAX_VALUE

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

    :goto_18
    sget v1, Ldxo;->g:I

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_19
    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iput v1, v0, Ldxn;->b:I

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iput-object v4, p0, Ldxo;->m:[F

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_1c
    new-array v5, v1, [F

    nop

    nop

    nop

    fill-array-data v5, :array_3

    goto/32 :goto_24

    nop

    nop

    :goto_1d
    const v1, 0x3e4ccccd    # 0.2f

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1f
    aput v1, v4, v10

    nop

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

    :goto_20
    aput v1, v5, v11

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_21
    float-to-int v7, v7

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_22
    const/4 v11, 0x1

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_23
    aput v7, v1, v11

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_24
    iput-object v5, p0, Ldxo;->n:[F

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_25
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iput-object v1, p0, Ldxo;->o:[F

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_27
    iput-object v1, p0, Ldxo;->h:Landroid/view/animation/Interpolator;

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

    :goto_28
    aput v1, v3, v11

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_29
    aput v1, v3, v10

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_2a
    new-array v4, v1, [F

    nop

    nop

    nop

    fill-array-data v4, :array_2

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_2b
    mul-float/2addr v7, v8

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iput-object v0, p0, Ldxo;->a:Ldxn;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2d
    aput v1, v2, v10

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_2e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_2f
    int-to-float v1, v1

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_30
    const/16 v1, 0x1f4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_31
    add-float/2addr v7, v8

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

    nop

    :goto_32
    iget v7, v6, Landroid/util/DisplayMetrics;->density:F

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_33
    aput v7, v1, v10

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    new-array v3, v1, [F

    nop

    fill-array-data v3, :array_1

    goto/32 :goto_10

    nop

    nop

    :goto_35
    iput v1, v0, Ldxn;->a:I

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

    :goto_36
    rem-int v0, v0, v1

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-direct {v0}, Ldxn;-><init>()V

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_38
    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_39
    aput v1, v4, v11

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

    :goto_3a
    const v1, 0x3a83126f    # 0.001f

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_3b
    mul-float/2addr v6, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_3c
    const v0, 0xb

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3d
    new-array v1, v1, [F

    nop

    nop

    fill-array-data v1, :array_4

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_3e
    const/high16 v8, 0x3f000000    # 0.5f

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_3f
    const/high16 v9, 0x447a0000    # 1000.0f

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_40
    div-float/2addr v1, v9

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_41
    aput v1, v2, v11

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_43
    int-to-float v7, v7

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop
.end method

.method static a(FFF)F
    .locals 1

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p2

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop

    :goto_3
    if-gtz v0, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    :goto_4
    cmpg-float p2, p0, p1

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

    nop

    :goto_5
    if-ltz p2, :cond_1

    nop

    goto/32 :goto_7

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

    :goto_6
    return p1

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    cmpl-float v0, p0, p2

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
.end method

.method private final da190e616797844b591057d0190e7728m(IFFF)F
    .locals 3

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_14

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_38

    nop

    :goto_3
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    aget v1, v1, p1

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/high16 p3, -0x40800000    # -1.0f

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_6
    return p0

    nop

    :goto_7
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_8
    const v1, 0x10

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_9
    invoke-interface {p2, p3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p2

    nop

    nop

    :goto_a
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p2, p0, Ldxo;->h:Landroid/view/animation/Interpolator;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_c
    neg-float p0, p0

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_e
    mul-float/2addr v0, p4

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_10
    const v0, 0xe

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_11
    const/high16 v0, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {p1, v1, p0}, Ldxo;->a(FFF)F

    move-result p0

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

    :goto_13
    move p2, v2

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_24

    nop

    nop

    :goto_15
    mul-float/2addr p2, v0

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_16
    iget-object v1, p0, Ldxo;->k:[F

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_17
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_2c

    nop

    nop

    :goto_19
    mul-float/2addr v0, p3

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1a
    if-gtz p3, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1b
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static {p2, v1, p0}, Ldxo;->a(FFF)F

    move-result p0

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

    :goto_1d
    iget-object v0, p0, Ldxo;->j:[F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_1e
    aget v1, v1, p1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_1f
    aget v0, v0, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_20
    invoke-interface {p2, p3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_21
    mul-float/2addr p1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_22
    neg-float p2, p2

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-gtz p2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_24
    cmpl-float p3, p2, v2

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-static {p2, p3, v0}, Ldxo;->a(FFF)F

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_26
    invoke-direct {p0, p2, v0}, Ldxo;->23ce148e54b083367f51e25c7971761em(FF)F

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_28
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_29
    neg-float p3, p3

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_2a
    aget v0, v0, p1

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

    nop

    :goto_2b
    if-ltz p2, :cond_3

    nop

    nop

    goto/32 :goto_3a

    nop

    :cond_3
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object v0, p0, Ldxo;->m:[F

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

    :goto_2d
    iget-object p2, p0, Ldxo;->h:Landroid/view/animation/Interpolator;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_2e
    neg-float p1, p2

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

    :goto_2f
    sub-float/2addr p3, p2

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

    :goto_30
    iget-object p0, p0, Ldxo;->o:[F

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_31
    if-eqz p3, :cond_4

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_32
    aget p0, p0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_33
    sub-float/2addr p3, p2

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

    nop

    :goto_34
    cmpl-float p2, p3, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_35
    invoke-direct {p0, p3, v0}, Ldxo;->23ce148e54b083367f51e25c7971761em(FF)F

    move-result p3

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    cmpg-float p2, p3, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_37
    return p0

    nop

    nop

    :goto_38
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_39
    goto/16 :goto_a

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_34

    nop

    nop

    nop

    :goto_3b
    iget-object v1, p0, Ldxo;->n:[F

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3c
    invoke-static {v0, v2, v1}, Ldxo;->a(FFF)F

    move-result v0

    nop

    goto/32 :goto_2f

    nop

    nop
.end method


# virtual methods
.method public final b()Z
    .locals 8

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result p0

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_3
    float-to-int p0, v0

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v5

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

    nop

    :goto_5
    const v0, 0x1d

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_6
    float-to-int v1, v1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_7
    iget v0, v0, Ldxn;->c:F

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_8
    div-float/2addr v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_a
    if-nez v1, :cond_0

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_c
    goto/16 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_26

    nop

    nop

    :goto_e
    const v1, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_f
    const/4 v7, 0x1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_10
    if-ltz v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

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

    nop

    :goto_12
    if-gtz v1, :cond_2

    nop

    goto/32 :goto_1c

    nop

    nop

    :cond_2
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    add-int/lit8 v4, v4, -0x1

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
    if-ge v6, v3, :cond_3

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_13

    nop

    nop

    :goto_15
    if-lez v5, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :cond_4
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    return v2

    nop

    nop

    :goto_17
    goto/32 :goto_22

    nop

    nop

    :goto_18
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const/4 v2, 0x0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    div-float/2addr v1, v2

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1b
    goto :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_1e
    if-eqz p0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :cond_5
    :goto_1f
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-lez v0, :cond_6

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_6
    goto/32 :goto_0

    nop

    :goto_21
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_23
    if-gt v1, p0, :cond_7

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

    :cond_7
    :goto_24
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_27
    add-int v6, v5, v4

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_28
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

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

    :goto_29
    add-int v0, v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    move v2, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_2b
    iget v1, v0, Ldxn;->d:F

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto :goto_24

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_3

    nop

    nop

    :goto_2e
    iget-object p0, p0, Ldxo;->f:Landroid/widget/ListView;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_2f
    iget-object v0, p0, Ldxo;->a:Ldxn;

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

    :goto_30
    if-eqz v3, :cond_8

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_c

    nop

    nop

    :goto_31
    if-ltz p0, :cond_9

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

    :cond_9
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c(Z)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-boolean v0, p0, Ldxo;->q:Z

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
    return-void

    nop

    nop

    :goto_2
    iput-boolean p1, p0, Ldxo;->q:Z

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ldxo;->7ecc92917e9c4556cc19f457ddc41af8m()V

    :goto_4
    goto/32 :goto_2

    nop

    nop

    :goto_5
    if-nez v0, :cond_0

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

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    if-eqz p1, :cond_1

    nop

    nop

    goto/32 :goto_4

    nop

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
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    goto/32 :goto_3f

    nop

    nop

    :goto_0
    iget-object p2, p0, Ldxo;->a:Ldxn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v3, p0, Ldxo;->b:Landroid/view/View;

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

    :goto_2
    if-ne v0, v3, :cond_0

    nop

    goto/32 :goto_4b

    nop

    nop

    :cond_0
    goto/32 :goto_1f

    nop

    nop

    :goto_3
    iget-object v4, p0, Ldxo;->b:Landroid/view/View;

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

    nop

    :goto_4
    iget p1, p0, Ldxo;->l:I

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

    :goto_5
    if-eqz p1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-boolean p1, p0, Ldxo;->p:Z

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_7
    goto/16 :goto_16

    nop

    nop

    :goto_8
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-eqz p1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_2
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    int-to-float v3, v3

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {p0}, Ldxo;->7ecc92917e9c4556cc19f457ddc41af8m()V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {p1, p0, p2}, Lkd;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput-object p1, p0, Ldxo;->i:Ljava/lang/Runnable;

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-ne v0, p1, :cond_3

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_10
    iget-object p1, p0, Ldxo;->i:Ljava/lang/Runnable;

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_11
    if-gtz p1, :cond_4

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

    :cond_4
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iput-boolean v2, p0, Ldxo;->c:Z

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_13
    const/4 v1, 0x0

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_14
    iput-boolean v2, p0, Ldxo;->d:Z

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

    nop

    :goto_15
    iput-boolean v2, p0, Ldxo;->p:Z

    nop

    nop

    :goto_16
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_18
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_19
    goto :goto_16

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-boolean v0, p0, Ldxo;->q:Z

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

    :goto_1c
    goto/16 :goto_35

    nop

    nop

    :goto_1d
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-boolean p1, p0, Ldxo;->e:Z

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 p1, 0x3

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_21
    int-to-float v4, v4

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_22
    return v1

    nop

    :goto_23
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_24
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_25
    iput-boolean v2, p0, Ldxo;->e:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_26
    if-nez v0, :cond_5

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_28
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_29
    const/4 v3, 0x2

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p0}, Ldxo;->b()Z

    move-result p1

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    rem-int v0, v0, v1

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

    :goto_2c
    int-to-float p1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_2d
    if-eqz p1, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    :cond_6
    goto/32 :goto_4

    nop

    nop

    :goto_2e
    int-to-float v3, v3

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

    :goto_2f
    if-ne v0, v2, :cond_7

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_30
    if-lez v0, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_48

    nop

    :goto_31
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    new-instance p1, Lkd;

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_33
    if-eqz v0, :cond_9

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_43

    nop

    nop

    nop

    :goto_34
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_35
    goto/32 :goto_15

    nop

    nop

    :goto_36
    const v1, 0x19

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_37
    iget-object v0, p0, Ldxo;->i:Ljava/lang/Runnable;

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

    :goto_38
    iput p1, p2, Ldxn;->d:F

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-direct {p0, v1, v0, v3, v4}, Ldxo;->da190e616797844b591057d0190e7728m(IFFF)F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {p2, v0, v3, v4}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    goto/32 :goto_1c

    nop

    nop

    :goto_3b
    if-nez p1, :cond_a

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    :cond_a
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

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

    nop

    nop

    :goto_3d
    iput v0, p2, Ldxn;->c:F

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_3e
    const/16 p2, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_3f
    const v0, 0x20

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_40
    sget-object v3, Ldwd;->a:[I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_41
    iget-object p2, p0, Ldxo;->b:Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_43
    goto/16 :goto_16

    nop

    :goto_44
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_45
    invoke-direct {p0, v2, p2, p1, v3}, Ldxo;->da190e616797844b591057d0190e7728m(IFFF)F

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_46
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_47
    iget-object p1, p0, Ldxo;->i:Ljava/lang/Runnable;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_48
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_4a
    iput-boolean v1, p0, Ldxo;->p:Z

    nop

    nop

    nop

    nop

    :goto_4b
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    int-to-long v3, p1

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop
.end method
