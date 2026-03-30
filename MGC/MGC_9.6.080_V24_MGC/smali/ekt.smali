.class final Lekt;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "PG"


# instance fields
.field a:I

.field b:Leks;

.field c:Landroid/content/res/ColorStateList;

.field d:Landroid/graphics/PorterDuff$Mode;

.field e:Z

.field f:Landroid/graphics/Bitmap;

.field g:Landroid/content/res/ColorStateList;

.field h:Landroid/graphics/PorterDuff$Mode;

.field i:I

.field j:Z

.field k:Z

.field l:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    iput-object v0, p0, Lekt;->b:Leks;

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

    :goto_1
    return-void

    nop

    nop

    :goto_2
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v0, Leks;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    sget-object v0, Lekv;->a:Landroid/graphics/PorterDuff$Mode;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_5
    const/4 v0, 0x0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object v0, p0, Lekt;->c:Landroid/content/res/ColorStateList;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    invoke-direct {v0}, Leks;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    iput-object v0, p0, Lekt;->d:Landroid/graphics/PorterDuff$Mode;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lekt;)V
    .locals 3

    goto/32 :goto_1f

    nop

    nop

    :goto_0
    sget-object v0, Lekv;->a:Landroid/graphics/PorterDuff$Mode;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_1
    iput-object v0, p0, Lekt;->b:Leks;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_0
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_3
    iget-boolean p1, p1, Lekt;->e:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_4
    iget-object v1, p1, Lekt;->b:Leks;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_6
    invoke-direct {v0, v1}, Leks;-><init>(Leks;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x1a

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_8
    invoke-direct {v2, v0}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_9
    iput-object v2, v1, Leks;->b:Landroid/graphics/Paint;

    nop

    nop

    :goto_a
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v2, Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, v0, Leks;->b:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    :goto_e
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_11
    iget-object v1, p0, Lekt;->b:Leks;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_12
    iget-object v0, v0, Leks;->c:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_13
    iput-object v0, p0, Lekt;->c:Landroid/content/res/ColorStateList;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_14
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    goto/32 :goto_25

    nop

    nop

    :goto_15
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-direct {v2, v0}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v0, p1, Lekt;->b:Leks;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_19
    iget v0, p1, Lekt;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1a
    if-nez p1, :cond_2

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1b
    iput-object v2, v1, Leks;->c:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1d
    iput v0, p0, Lekt;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_1e
    iget-object v0, p1, Lekt;->b:Leks;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1f
    const v0, 0x20

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v0, p1, Lekt;->c:Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v1, p0, Lekt;->b:Leks;

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

    nop

    :goto_22
    if-lez v0, :cond_3

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

    nop

    :cond_3
    goto/32 :goto_f

    nop

    :goto_23
    iput-object v0, p0, Lekt;->d:Landroid/graphics/PorterDuff$Mode;

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

    :goto_24
    new-instance v0, Leks;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_25
    const/4 v0, 0x0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v0, p1, Lekt;->d:Landroid/graphics/PorterDuff$Mode;

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

    :goto_28
    iput-object v0, p0, Lekt;->c:Landroid/content/res/ColorStateList;

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iput-object v0, p0, Lekt;->d:Landroid/graphics/PorterDuff$Mode;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2a
    new-instance v2, Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iput-boolean p1, p0, Lekt;->e:Z

    nop

    nop

    :goto_2c
    goto/32 :goto_d

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(II)V
    .locals 8

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_4
    invoke-direct {v5, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lekt;->f:Landroid/graphics/Bitmap;

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

    :goto_6
    const v1, 0x1b

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

    :goto_7
    iget-object v0, p0, Lekt;->f:Landroid/graphics/Bitmap;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v3, v2, Leks;->d:Lekq;

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

    :goto_9
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_a
    move v7, p2

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

    :goto_b
    goto/32 :goto_11

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v2, p0, Lekt;->b:Leks;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x19

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual/range {v2 .. v7}, Leks;->a(Lekq;Landroid/graphics/Matrix;Landroid/graphics/Canvas;II)V

    goto/32 :goto_1

    nop

    nop

    :goto_13
    new-instance v5, Landroid/graphics/Canvas;

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
    sget-object v4, Leks;->a:Landroid/graphics/Matrix;

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_15
    move v6, p1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop
.end method

.method public final b()Z
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object v0, p0, Leks;->k:Ljava/lang/Boolean;

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    :goto_3
    invoke-virtual {v0}, Ldwc;->t()Z

    move-result v0

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
    iget-object p0, p0, Lekt;->b:Leks;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_5
    iget-object p0, p0, Leks;->k:Ljava/lang/Boolean;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Leks;->d:Lekq;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Leks;->k:Ljava/lang/Boolean;

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

    :goto_8
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public getChangingConfigurations()I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    :goto_1
    iget p0, p0, Lekt;->a:I

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
.end method

.method public final newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, p0}, Lekv;-><init>(Lekt;)V

    goto/32 :goto_2

    nop

    nop

    :goto_1
    new-instance v0, Lekv;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    return-object v0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    new-instance p1, Lekv;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    return-object p1

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p1, p0}, Lekv;-><init>(Lekt;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method
