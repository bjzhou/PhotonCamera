.class public final Lrkd;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Landroid/content/res/ColorStateList;

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:I

.field public final e:F

.field public final f:F

.field public final g:F

.field public final h:F

.field public final i:Landroid/content/res/ColorStateList;

.field public final j:F

.field public k:Landroid/graphics/Typeface;

.field private final l:I

.field private m:Z

.field private n:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 7

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_0
    iput p2, p0, Lrkd;->h:F

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v1, v4, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

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

    :goto_2
    iput-boolean v0, p0, Lrkd;->n:Z

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v1, v5, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_4
    iput v5, p0, Lrkd;->f:F

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_5
    iput-object v5, p0, Lrkd;->a:Landroid/content/res/ColorStateList;

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v4, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v1, v5, v6}, Lqqy;->f(Landroid/content/res/TypedArray;II)I

    move-result v5

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

    :goto_8
    goto/32 :goto_d

    nop

    nop

    :goto_9
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {p1, v3, v4}, Lqqy;->f(Landroid/content/res/TypedArray;II)I

    move-result p0

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_b
    iput v5, p0, Lrkd;->g:F

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    :goto_d
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_f
    const/4 v2, 0x0

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

    :goto_10
    invoke-virtual {v1, v5, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_11
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_12
    invoke-static {p1, v1, v5}, Lqqy;->g(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v5

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_13
    const v0, 0x1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_14
    const/4 v3, 0x3

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_16
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    goto/32 :goto_1b

    nop

    nop

    :goto_17
    const v1, 0x8

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_18
    iput v6, p0, Lrkd;->l:I

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

    :goto_19
    const/16 v5, 0xf

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

    :goto_1a
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_1c
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_1d
    const/16 v5, 0x11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_1e
    const/4 v4, 0x5

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v1, v5, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_20
    invoke-static {p1, v1, v4}, Lqqy;->g(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const/16 v6, 0xa

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iput v3, p0, Lrkd;->j:F

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

    :goto_23
    invoke-virtual {v1, v5, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const/16 v5, 0x9

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iput-object v4, p0, Lrkd;->i:Landroid/content/res/ColorStateList;

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_26
    sget-object v1, Lrkb;->b:[I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_27
    sget-object v1, Lrkb;->a:[I

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_28
    const/4 v4, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

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

    :goto_2a
    iput-boolean v0, p0, Lrkd;->m:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2b
    iput v5, p0, Lrkd;->d:I

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const/16 v5, 0x8

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_2d
    const/4 v5, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

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

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v1, v5, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_31
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-static {p1, v1, v4}, Lqqy;->g(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    goto/32 :goto_28

    nop

    nop

    :goto_33
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_34
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_35
    iput v4, p0, Lrkd;->c:I

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_36
    iput-object v5, p0, Lrkd;->b:Ljava/lang/String;

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

    :goto_37
    const/4 v5, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_38
    invoke-virtual {p1, p0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    goto/32 :goto_39

    nop

    nop

    :goto_39
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_c

    nop

    nop

    :goto_3a
    iput v5, p0, Lrkd;->e:F

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_3b
    const/4 v4, 0x4

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-static {p1, v1, v3}, Lqqy;->g(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

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

    :goto_3d
    invoke-virtual {v1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop
.end method

.method static bridge synthetic b(Lrkd;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iput-boolean v0, p0, Lrkd;->m:Z

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method private final da190e616797844b591057d0190e7728m()V
    .locals 2

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2
    if-ne v0, v1, :cond_0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_0
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    nop

    :goto_4
    goto/32 :goto_6

    nop

    nop

    :goto_5
    iget-object v0, p0, Lrkd;->k:Landroid/graphics/Typeface;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_6
    iput-object v0, p0, Lrkd;->k:Landroid/graphics/Typeface;

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto :goto_4

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto :goto_4

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget v0, p0, Lrkd;->d:I

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_f
    iget v1, p0, Lrkd;->c:I

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_10
    if-eqz v0, :cond_1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_1
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2c

    nop

    :goto_12
    const v0, 0x17

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_13
    const v1, 0xd

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_14
    iput-object v0, p0, Lrkd;->k:Landroid/graphics/Typeface;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_15
    iput-object v0, p0, Lrkd;->k:Landroid/graphics/Typeface;

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-nez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_3
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_18
    iget-object v0, p0, Lrkd;->b:Ljava/lang/String;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1a
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

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

    :goto_1b
    iput-object v0, p0, Lrkd;->k:Landroid/graphics/Typeface;

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v0, p0, Lrkd;->k:Landroid/graphics/Typeface;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1f
    if-ne v0, v1, :cond_4

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_28

    nop

    nop

    :goto_20
    return-void

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/16 :goto_7

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-eqz v0, :cond_5

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_25
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

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

    :goto_26
    iget-object v0, p0, Lrkd;->k:Landroid/graphics/Typeface;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_28
    const/4 v1, 0x2

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_29
    iget v1, p0, Lrkd;->c:I

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_2a
    if-ne v0, v1, :cond_6

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    const/4 v1, 0x3

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

    :goto_2c
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_26

    nop

    nop
.end method


# virtual methods
.method public final a()Landroid/graphics/Typeface;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lrkd;->k:Landroid/graphics/Typeface;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Lrkd;->da190e616797844b591057d0190e7728m()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c(Landroid/content/Context;Lfse;)V
    .locals 11

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_3

    nop

    nop

    :goto_1
    goto/32 :goto_38

    nop

    nop

    :goto_2
    invoke-direct {p0}, Lrkd;->da190e616797844b591057d0190e7728m()V

    :goto_3
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-boolean v0, p0, Lrkd;->n:Z

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_5
    move-object v3, p1

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/16 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1a

    nop

    nop

    :goto_8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_9
    iget v3, p0, Lrkd;->c:I

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

    :goto_a
    goto/16 :goto_2d

    nop

    :goto_b
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x4

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-eqz v3, :cond_0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    :catch_0
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_10
    const/4 v8, 0x0

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_11
    sget-object v0, Ldtx;->a:Ljava/lang/ThreadLocal;

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_12
    invoke-virtual {p2}, Lfse;->f()V

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_13
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_14
    move v1, v0

    nop

    :goto_15
    goto/32 :goto_5d

    nop

    nop

    :goto_16
    iput-boolean v2, p0, Lrkd;->m:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_17
    goto/16 :goto_51

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

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

    nop

    :goto_1a
    invoke-static {v3, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

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

    :goto_1b
    const/4 v7, 0x0

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

    :goto_1c
    iput-boolean v2, p0, Lrkd;->m:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 v10, 0x0

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_1e
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget v0, p0, Lrkd;->l:I

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_20
    iget v0, p0, Lrkd;->l:I

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_21
    if-eqz v0, :cond_1

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_22
    iput-boolean v2, p0, Lrkd;->m:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_23
    iput-boolean v2, p0, Lrkd;->m:Z

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    add-int v0, v0, v1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_25
    goto :goto_2d

    nop

    :goto_26
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_54

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_29
    if-eq v0, v3, :cond_2

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    return-void

    nop

    nop

    :goto_2b
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v10

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto/16 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iput-boolean v2, p0, Lrkd;->n:Z

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

    :goto_31
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_32
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_33
    if-nez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    :cond_3
    goto/32 :goto_50

    nop

    nop

    :goto_34
    move-object v0, v10

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_35
    return-void

    nop

    nop

    :catch_1
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_36
    invoke-virtual {p2, p0}, Lfse;->e(Landroid/graphics/Typeface;)V

    goto/32 :goto_53

    nop

    nop

    :goto_37
    if-nez v0, :cond_4

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iget v4, p0, Lrkd;->l:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_39
    if-lez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    :cond_5
    goto/32 :goto_27

    nop

    :goto_3a
    iget-boolean v0, p0, Lrkd;->m:Z

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_3b
    if-nez v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    :cond_6
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    goto/16 :goto_5c

    nop

    :catchall_0
    :cond_7
    :goto_3d
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    goto/16 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    const/4 v6, 0x0

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

    nop

    :goto_42
    if-nez v0, :cond_8

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_8
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_43
    goto/16 :goto_18

    nop

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    iput-object v10, p0, Lrkd;->k:Landroid/graphics/Typeface;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_46
    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_47
    invoke-static/range {v3 .. v9}, Ldtx;->b(Landroid/content/Context;ILandroid/util/TypedValue;ILdtw;ZZ)Landroid/graphics/Typeface;

    move-result-object v0

    nop

    :goto_48
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_49
    if-eqz v4, :cond_9

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :cond_9
    goto/32 :goto_5a

    nop

    nop

    :goto_4a
    iget-object p0, p0, Lrkd;->k:Landroid/graphics/Typeface;

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_4b
    const/4 v9, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_4c
    const-string v5, "font"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    const v0, 0xe

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_4e
    if-nez v10, :cond_a

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    if-eqz v0, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :cond_b
    :try_start_0
    new-instance v0, Lrkc;

    nop

    invoke-direct {v0, p0, p2}, Lrkc;-><init>(Lrkd;Lfse;)V

    invoke-static {p1, v1, v0}, Ldtx;->a(Landroid/content/Context;ILdtw;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_e

    nop

    nop

    :goto_50
    iput-object v0, p0, Lrkd;->k:Landroid/graphics/Typeface;

    nop

    nop

    nop

    :goto_51
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_52
    invoke-virtual {p2}, Lfse;->f()V

    goto/32 :goto_2a

    nop

    nop

    :goto_53
    return-void

    nop

    :goto_54
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_55
    new-instance v5, Landroid/util/TypedValue;

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_56
    if-nez v0, :cond_c

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_c
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_57
    goto/16 :goto_3

    nop

    :goto_58
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_59
    if-eqz v4, :cond_d

    nop

    goto/32 :goto_44

    nop

    :cond_d
    goto/32 :goto_43

    nop

    nop

    :goto_5a
    goto/16 :goto_3d

    nop

    nop

    :goto_5b
    :try_start_1
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    nop

    nop

    nop

    :goto_5c
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    nop

    nop

    nop

    if-eq v4, v2, :cond_7

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    nop

    nop

    nop

    const/4 v5, 0x2

    nop

    nop

    nop

    nop

    if-ne v4, v5, :cond_e

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    nop

    nop

    const-string v5, "font-family"

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    if-eqz v4, :cond_e

    nop

    nop

    nop

    nop

    invoke-static {v0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    nop

    nop

    sget-object v4, Ldtc;->b:[I

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v0, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    nop

    nop

    nop

    const/4 v3, 0x7

    nop

    nop

    nop

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_60

    nop

    nop

    nop

    nop

    :cond_e
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    iget-boolean v0, p0, Lrkd;->m:Z

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_5e
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    move-object v3, v10

    nop

    nop

    nop

    nop

    :goto_60
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop
.end method
