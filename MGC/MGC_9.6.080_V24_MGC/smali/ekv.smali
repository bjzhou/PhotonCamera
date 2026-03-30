.class public final Lekv;
.super Lekn;
.source "PG"


# static fields
.field static final a:Landroid/graphics/PorterDuff$Mode;


# instance fields
.field public b:Lekt;

.field public c:Z

.field private d:Landroid/graphics/PorterDuffColorFilter;

.field private f:Landroid/graphics/ColorFilter;

.field private g:Z

.field private final h:[F

.field private final i:Landroid/graphics/Matrix;

.field private final j:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    sput-object v0, Lekv;->a:Landroid/graphics/PorterDuff$Mode;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 1

    goto/32 :goto_1

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
    invoke-direct {p0}, Lekn;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object v0, p0, Lekv;->h:[F

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3
    iput-boolean v0, p0, Lekv;->c:Z

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

    nop

    :goto_4
    iput-object v0, p0, Lekv;->i:Landroid/graphics/Matrix;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_5
    const/4 v0, 0x1

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

    :goto_6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    new-instance v0, Landroid/graphics/Matrix;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_8
    invoke-direct {v0}, Lekt;-><init>()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    new-array v0, v0, [F

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_a
    iput-object v0, p0, Lekv;->j:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_c
    iput-object v0, p0, Lekv;->b:Lekt;

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

    :goto_d
    new-instance v0, Lekt;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/16 v0, 0x9

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

    :goto_f
    new-instance v0, Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop
.end method

.method public constructor <init>(Lekt;)V
    .locals 1

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-boolean v0, p0, Lekv;->c:Z

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1
    iget-object v0, p1, Lekt;->c:Landroid/content/res/ColorStateList;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v0, Landroid/graphics/Rect;

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

    :goto_3
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p1, p1, Lekt;->d:Landroid/graphics/PorterDuff$Mode;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object v0, p0, Lekv;->i:Landroid/graphics/Matrix;

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

    :goto_6
    const/4 v0, 0x1

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

    :goto_7
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0}, Lekn;-><init>()V

    goto/32 :goto_6

    nop

    nop

    :goto_9
    new-array v0, v0, [F

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_a
    iput-object v0, p0, Lekv;->j:Landroid/graphics/Rect;

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

    nop

    :goto_b
    iput-object p1, p0, Lekv;->b:Lekt;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_c
    const/16 v0, 0x9

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0, v0, p1}, Lekv;->c(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

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

    nop

    :goto_e
    iput-object p1, p0, Lekv;->d:Landroid/graphics/PorterDuffColorFilter;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_f
    new-instance v0, Landroid/graphics/Matrix;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iput-object v0, p0, Lekv;->h:[F

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop
.end method

.method static a(IF)I
    .locals 1

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    :goto_1
    int-to-float v0, v0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    mul-float/2addr v0, p1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    float-to-int p1, v0

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

    nop

    :goto_4
    shl-int/lit8 p1, p1, 0x18

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5
    or-int/2addr p0, p1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0xffffff

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    and-int/2addr p0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static b(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Lekv;
    .locals 2

    goto/32 :goto_1

    nop

    nop

    :goto_0
    iput-object p0, v0, Lekv;->e:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0xc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_3
    return-object v0

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_8
    sget-object v1, Ldtx;->a:Ljava/lang/ThreadLocal;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_9
    invoke-direct {v0}, Lekv;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_a
    new-instance v0, Lekv;

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

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_c
    const v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

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

    :goto_e
    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

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


# virtual methods
.method final c(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 1

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1, p0, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1
    return-object p1

    nop

    nop

    :goto_2
    goto/32 :goto_6

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    :goto_4
    const/4 v0, 0x0

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
    invoke-virtual {p0}, Lekn;->getState()[I

    move-result-object p0

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

    :goto_6
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-eqz p2, :cond_0

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

    nop

    nop

    nop

    nop

    :goto_9
    if-nez p1, :cond_1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto :goto_2

    nop

    nop

    :goto_b
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {p1, p0, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final canApplyTheme()Z
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lekv;->e:Landroid/graphics/drawable/Drawable;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    if-nez p0, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    :goto_4
    const/4 p0, 0x0

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
    return p0

    nop

    nop

    nop

    nop
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 10

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v2, p0, Lekv;->b:Lekt;

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

    nop

    :goto_1
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    :goto_2
    goto/32 :goto_42

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_4
    iget-object v3, v1, Lekt;->b:Leks;

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v2, Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_7
    iget-object v6, p0, Lekv;->h:[F

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-nez v7, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3e

    nop

    nop

    :goto_9
    iget-object v7, v6, Lekt;->f:Landroid/graphics/Bitmap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_a
    int-to-float v6, v6

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_b
    iget-object v8, v6, Lekt;->d:Landroid/graphics/PorterDuff$Mode;

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_c
    iget-object v2, v1, Lekt;->l:Landroid/graphics/Paint;

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

    :goto_d
    if-eqz v6, :cond_1

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-boolean v8, v6, Lekt;->e:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_10
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_11
    iget-object v6, p0, Lekv;->j:Landroid/graphics/Rect;

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    :goto_12
    const v1, 0xc

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p1, v1, v6, p0, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_14
    if-eq v6, v5, :cond_2

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    :cond_2
    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_15
    goto/16 :goto_34

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v5, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_18
    iget-object v6, p0, Lekv;->j:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    :goto_19
    iget v6, v6, Landroid/graphics/Rect;->left:I

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    :goto_1a
    if-eq v7, v8, :cond_3

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_ab

    nop

    nop

    :goto_1b
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :goto_1c
    if-lt v2, v3, :cond_4

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_15

    nop

    nop

    :goto_1d
    iget-object v1, p0, Lekv;->b:Lekt;

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v7, v6, Lekt;->f:Landroid/graphics/Bitmap;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    float-to-int v1, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v0, p0, Lekv;->j:Landroid/graphics/Rect;

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

    :goto_21
    invoke-virtual {p0, v0}, Lekv;->copyBounds(Landroid/graphics/Rect;)V

    goto/32 :goto_78

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v3}, Leks;->getRootAlpha()I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_24
    iput-boolean v3, v1, Lekt;->j:Z

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_25
    iget-object v1, v1, Lekt;->f:Landroid/graphics/Bitmap;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_26
    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_27
    if-eq v7, v8, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    :cond_5
    goto/32 :goto_54

    nop

    nop

    nop

    :goto_28
    aget v1, v1, v2

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object v2, v1, Lekt;->l:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    :goto_2b
    iget-object v0, p0, Lekv;->d:Landroid/graphics/PorterDuffColorFilter;

    nop

    :goto_2c
    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :goto_2d
    if-eqz v4, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_a9

    nop

    nop

    nop

    :goto_2e
    const/4 v2, 0x0

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_2f
    iget-object v3, v1, Lekt;->b:Leks;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_30
    int-to-float v6, v6

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iget-object v6, p0, Lekv;->b:Lekt;

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLayoutDirection()I

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_33
    goto/16 :goto_af

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    goto/32 :goto_6a

    nop

    nop

    :goto_36
    aget v3, v3, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v2, v1, v3}, Lekt;->a(II)V

    goto/32 :goto_91

    nop

    nop

    nop

    :goto_38
    iget-boolean v7, v6, Lekt;->k:Z

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    :goto_39
    int-to-float v9, v9

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    if-nez v6, :cond_7

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_32

    nop

    nop

    :goto_3b
    add-int v0, v0, v1

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

    :goto_3c
    mul-float/2addr v4, v1

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

    nop

    :goto_3d
    iget-object v3, v1, Lekt;->c:Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    :goto_3f
    iget-object v6, p0, Lekv;->b:Lekt;

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

    :goto_40
    iput-boolean v2, v1, Lekt;->k:Z

    nop

    nop

    :goto_41
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    iget-object v2, v1, Lekt;->l:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_43
    iput v3, v1, Lekt;->i:I

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_44
    iget-object v2, v1, Lekt;->b:Leks;

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_45
    iget-object v7, v6, Lekt;->g:Landroid/content/res/ColorStateList;

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    :goto_46
    mul-float/2addr v6, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_47
    move v3, v1

    nop

    nop

    nop

    nop

    nop

    :goto_48
    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    :goto_49
    iget-object p0, p0, Lekv;->j:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {p0}, Lekv;->isAutoMirrored()Z

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    if-nez v0, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_69

    nop

    nop

    :goto_4c
    if-gtz v3, :cond_9

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_8f

    nop

    nop

    :goto_4d
    if-gtz v0, :cond_a

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    iget-boolean v3, v1, Lekt;->e:Z

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_4f
    if-eq v7, v8, :cond_b

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_51

    nop

    nop

    :goto_50
    iput-object v3, v1, Lekt;->h:Landroid/graphics/PorterDuff$Mode;

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

    :goto_51
    iget-boolean v7, v6, Lekt;->j:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_52
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    :goto_53
    invoke-virtual {p1, v6, v9}, Landroid/graphics/Canvas;->translate(FF)V

    goto/32 :goto_4a

    nop

    nop

    :goto_54
    iget-object v7, v6, Lekt;->h:Landroid/graphics/PorterDuff$Mode;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_55
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    iget-object v3, v1, Lekt;->d:Landroid/graphics/PorterDuff$Mode;

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_57
    invoke-virtual {v2}, Leks;->getRootAlpha()I

    move-result v2

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    :goto_58
    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->getValues([F)V

    goto/32 :goto_99

    nop

    nop

    :goto_59
    float-to-int v3, v6

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    iget-object v6, p0, Lekv;->j:Landroid/graphics/Rect;

    nop

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

    :goto_5b
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :goto_5c
    goto/32 :goto_a1

    nop

    nop

    nop

    :goto_5d
    iget-object v0, p0, Lekv;->j:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    iput-object v2, v1, Lekt;->l:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    :goto_5f
    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_60
    iget-object v3, p0, Lekv;->h:[F

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    :goto_61
    const v0, 0x7

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_62
    const/4 v6, 0x0

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

    :goto_63
    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    :goto_64
    goto/32 :goto_a5

    nop

    nop

    :goto_65
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    :goto_66
    iget-boolean v6, p0, Lekv;->c:Z

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_67
    iget-object v1, p0, Lekv;->b:Lekt;

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_68
    const/4 v7, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    const/high16 v6, -0x40800000    # -1.0f

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    :goto_6b
    move v1, v8

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_6c
    int-to-float v4, v4

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

    :goto_6d
    iget-object v0, p0, Lekv;->f:Landroid/graphics/ColorFilter;

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    if-eqz v0, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    :goto_6f
    iput-boolean v5, v6, Lekt;->k:Z

    nop

    nop

    nop

    nop

    :goto_70
    goto/32 :goto_66

    nop

    nop

    :goto_71
    int-to-float v6, v6

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_72
    iput-object v3, v1, Lekt;->g:Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_73
    if-ne v7, v6, :cond_d

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :cond_d
    :goto_74
    goto/32 :goto_b3

    nop

    nop

    nop

    :goto_75
    aget v6, v6, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    :goto_76
    iget-object v1, p0, Lekv;->i:Landroid/graphics/Matrix;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_77
    iget-object v6, p0, Lekv;->j:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_78
    iget-object v0, p0, Lekv;->j:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    :goto_79
    iget-object v2, p0, Lekv;->h:[F

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_7a
    iget-object v1, p0, Lekv;->i:Landroid/graphics/Matrix;

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    invoke-virtual {p1, v6, v8}, Landroid/graphics/Canvas;->scale(FF)V

    :goto_7c
    goto/32 :goto_11

    nop

    nop

    :goto_7d
    iget-object v2, v1, Lekt;->l:Landroid/graphics/Paint;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7e
    if-nez v4, :cond_e

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

    :cond_e
    :goto_7f
    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_80
    if-eqz v7, :cond_f

    nop

    goto/32 :goto_74

    nop

    nop

    :cond_f
    goto/32 :goto_45

    nop

    nop

    :goto_81
    const/16 v3, 0xff

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_82
    invoke-static {v1, v3, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    :goto_83
    if-gtz v1, :cond_10

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_84
    invoke-virtual {v3}, Leks;->getRootAlpha()I

    move-result v3

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_85
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    :goto_86
    invoke-virtual {v6, v1, v3}, Lekt;->a(II)V

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_87
    iget-object v8, v6, Lekt;->c:Landroid/content/res/ColorStateList;

    nop

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

    :goto_88
    cmpl-float v4, v4, v7

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_89
    if-lez v0, :cond_11

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_63

    nop

    :goto_8a
    aget v4, v4, v5

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    :goto_8b
    if-eq v1, v7, :cond_12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    :cond_12
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    move-object v0, v6

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_8d
    if-ne v3, v7, :cond_13

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    :cond_13
    :goto_8e
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_8f
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_90
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    :goto_91
    goto/16 :goto_41

    nop

    nop

    nop

    :goto_92
    goto/32 :goto_31

    nop

    nop

    :goto_93
    goto/32 :goto_64

    nop

    nop

    nop

    :goto_94
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_95
    if-eqz v0, :cond_14

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_96
    if-eqz v2, :cond_15

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_6

    nop

    nop

    :goto_97
    return-void

    nop

    nop

    :goto_98
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_99
    iget-object v1, p0, Lekv;->h:[F

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

    :goto_9a
    iget-object v9, p0, Lekv;->j:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    invoke-virtual {v6, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    iget-object v4, p0, Lekv;->j:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_9e
    const/4 v7, 0x0

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    if-lez v0, :cond_16

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    :cond_16
    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    const/16 v4, 0x800

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

    :goto_a1
    return-void

    nop

    :goto_a2
    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    goto/16 :goto_5c

    nop

    nop

    nop

    :goto_a4
    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    iget-object v0, p0, Lekv;->e:Landroid/graphics/drawable/Drawable;

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_a6
    iget v9, v9, Landroid/graphics/Rect;->top:I

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    iget-object v4, p0, Lekv;->h:[F

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    invoke-virtual {v6}, Leks;->getRootAlpha()I

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_a9
    cmpl-float v4, v6, v7

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    iget v7, v6, Lekt;->i:I

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    :goto_ac
    const/4 v4, 0x4

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_ad
    iget-object v6, v6, Lekt;->b:Leks;

    nop

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    iget-object v0, v1, Lekt;->l:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    :goto_af
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_b0
    const/high16 v8, 0x3f800000    # 1.0f

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

    :goto_b1
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    :goto_b2
    iput-object v7, v6, Lekt;->f:Landroid/graphics/Bitmap;

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    iget-object v6, p0, Lekv;->b:Lekt;

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop
.end method

.method public final getAlpha()I
    .locals 1

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_3

    nop

    nop

    :goto_3
    iget-object p0, p0, Lekv;->b:Lekt;

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    :goto_6
    iget-object p0, p0, Lekt;->b:Leks;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Lekv;->e:Landroid/graphics/drawable/Drawable;

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

    :goto_8
    invoke-virtual {p0}, Leks;->getRootAlpha()I

    move-result p0

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
.end method

.method public final getChangingConfigurations()I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object v0, p0, Lekv;->e:Landroid/graphics/drawable/Drawable;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lekv;->b:Lekt;

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

    :goto_4
    or-int/2addr p0, v0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Lekt;->getChangingConfigurations()I

    move-result p0

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

    :goto_6
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_7
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_8
    invoke-super {p0}, Lekn;->getChangingConfigurations()I

    move-result v0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_9
    return p0

    nop

    nop

    nop

    nop
.end method

.method public final getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lekv;->e:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_5
    iget-object p0, p0, Lekv;->f:Landroid/graphics/ColorFilter;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_6
    if-nez v0, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    iput v1, v0, Lekt;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x1d

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x13

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-instance p0, Leku;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_8
    iget-object v0, p0, Lekv;->b:Lekt;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {p0, v0}, Leku;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    goto/32 :goto_f

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Lekv;->getChangingConfigurations()I

    move-result v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Lekv;->e:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    :cond_0
    goto/32 :goto_13

    nop

    :goto_d
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_e
    iget-object p0, p0, Lekv;->b:Lekt;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_f
    return-object p0

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

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

    nop

    :goto_12
    rem-int v0, v0, v1

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

    nop

    :goto_13
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_b

    nop

    nop

    nop

    nop
.end method

.method public final getIntrinsicHeight()I
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    iget p0, p0, Leks;->f:F

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

    :goto_1
    iget-object p0, p0, Lekt;->b:Leks;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    iget-object v0, p0, Lekv;->e:Landroid/graphics/drawable/Drawable;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    :goto_4
    float-to-int p0, p0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lekv;->b:Lekt;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    return p0

    nop

    :goto_7
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method

.method public final getIntrinsicWidth()I
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lekv;->b:Lekt;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1
    float-to-int p0, p0

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

    :goto_2
    iget p0, p0, Leks;->e:F

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    iget-object v0, p0, Lekv;->e:Landroid/graphics/drawable/Drawable;

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

    :goto_4
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    return p0

    nop

    nop

    :goto_6
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lekt;->b:Leks;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_8
    return p0

    nop

    nop

    :goto_9
    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final getOpacity()I
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result p0

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
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-nez p0, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    :goto_3
    iget-object p0, p0, Lekv;->e:Landroid/graphics/drawable/Drawable;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    const/4 p0, -0x3

    nop

    goto/32 :goto_1

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
.end method

.method public final inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lekv;->e:Landroid/graphics/drawable/Drawable;

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    return-void

    nop

    :goto_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, p1, p2, p3, v0}, Lekv;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method public final inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 20

    goto/32 :goto_132

    nop

    nop

    nop

    nop

    :goto_0
    iput v7, v8, Leks;->f:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_174

    nop

    nop

    nop

    nop

    :goto_1
    iput-object v13, v6, Leko;->n:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v7, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput v7, v6, Lekp;->e:F

    nop

    nop

    nop

    goto/32 :goto_1aa

    nop

    nop

    nop

    :goto_5
    iput v11, v6, Lekq;->e:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_195

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget v11, v6, Lekq;->e:F

    nop

    nop

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v11, 0x0

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    nop

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    move/from16 v19, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const-string v11, "trimPathOffset"

    nop

    nop

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-nez v6, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_112

    nop

    nop

    nop

    :goto_c
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v13

    nop

    goto/32 :goto_138

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v7, v10, Leks;->l:Lwu;

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    :goto_e
    invoke-static {v1, v4, v3, v7}, Ldsw;->K(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10a

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v15, 0x2

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    :goto_10
    const/4 v14, -0x1

    nop

    nop

    goto/32 :goto_19f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget v6, v8, Lekt;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v7, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    :goto_13
    iput v7, v6, Lekp;->c:F

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_14
    move-object/from16 v3, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    :goto_15
    iget v6, v8, Lekt;->a:I

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v7, v15, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v11

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :goto_17
    invoke-direct {v12}, Ljava/util/ArrayDeque;-><init>()V

    goto/32 :goto_a1

    nop

    nop

    :goto_18
    const-string v12, "alpha"

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {v2, v7}, Ldsw;->O(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    nop

    nop

    goto/32 :goto_15c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-ne v7, v14, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13d

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-direct {v6}, Leks;-><init>()V

    goto/32 :goto_117

    nop

    nop

    :goto_1d
    const/4 v11, 0x0

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

    :goto_1e
    if-eqz v7, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const-string v13, "group"

    nop

    nop

    nop

    nop

    goto/32 :goto_103

    nop

    nop

    nop

    :goto_20
    const-string v11, "fillAlpha"

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_21
    move/from16 v11, v19

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

    :goto_22
    const/4 v9, 0x2

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    :goto_23
    iget v7, v8, Leks;->f:F

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iput-object v11, v6, Lekq;->l:[I

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

    nop

    nop

    :goto_25
    move v9, v7

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    :goto_26
    const/4 v12, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fb

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-static {v13, v2, v11, v14, v7}, Ldsw;->H(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_134

    nop

    nop

    nop

    nop

    nop

    :goto_28
    new-instance v6, Lekq;

    nop

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    :goto_29
    const-string v14, "scaleX"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14e

    nop

    nop

    nop

    :goto_2a
    const/16 v11, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    :goto_2b
    sget-object v11, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    move v7, v9

    nop

    nop

    nop

    goto/32 :goto_172

    nop

    nop

    :goto_2d
    const/16 v11, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2e
    iput v7, v8, Leks;->g:F

    nop

    nop

    nop

    goto/32 :goto_165

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v6}, Lekr;->getPathName()Ljava/lang/String;

    move-result-object v7

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iput v7, v8, Leks;->h:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    :goto_31
    goto/16 :goto_10f

    nop

    nop

    :goto_32
    goto/32 :goto_98

    nop

    nop

    :goto_33
    invoke-static {v2, v7}, Ldsw;->O(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_34
    add-int/lit8 v11, v16, 0x1

    nop

    nop

    goto/32 :goto_1a1

    nop

    nop

    nop

    :goto_35
    const/16 v17, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    :goto_36
    if-nez v7, :cond_3

    nop

    nop

    nop

    goto/32 :goto_4e

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

    :goto_37
    iput-object v11, v6, Lekp;->n:Ljava/lang/String;

    nop

    nop

    :goto_38
    goto/32 :goto_11f

    nop

    nop

    nop

    nop

    nop

    :goto_39
    if-nez v7, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    :cond_4
    goto/32 :goto_1a6

    nop

    nop

    :goto_3a
    sget-object v11, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {v12}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    :goto_3d
    goto/32 :goto_13c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    if-nez v13, :cond_5

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3f
    iget-object v5, v0, Lekv;->e:Landroid/graphics/drawable/Drawable;

    nop

    goto/32 :goto_160

    nop

    nop

    nop

    nop

    :goto_40
    iget-object v14, v6, Lekp;->h:Landroid/graphics/Paint$Cap;

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_41
    iput-object v11, v6, Lekp;->i:Landroid/graphics/Paint$Join;

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

    :goto_42
    goto/16 :goto_183

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_44
    check-cast v9, Lekq;

    nop

    nop

    nop

    goto/32 :goto_136

    nop

    nop

    nop

    nop

    nop

    :goto_45
    const/4 v14, 0x5

    nop

    goto/32 :goto_11d

    nop

    nop

    nop

    :goto_46
    const/16 v14, 0xc

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_47
    sget-object v13, Lekg;->c:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_116

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    iget-object v8, v7, Lekt;->b:Leks;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    :goto_49
    iget-object v8, v0, Lekv;->b:Lekt;

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    goto/16 :goto_1a2

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    goto/32 :goto_13e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-static {v6, v2, v9, v10, v11}, Ldsw;->J(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v9

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {v7, v9, v6}, Lyo;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4e
    goto/32 :goto_15

    nop

    nop

    :goto_4f
    invoke-static {v1, v4, v3, v7}, Ldsw;->K(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-static {v13, v2, v11, v14, v7}, Ldsw;->H(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_186

    nop

    nop

    nop

    nop

    nop

    :goto_51
    const-string v7, "strokeLineJoin"

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_52
    const/4 v14, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_166

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    goto/16 :goto_121

    nop

    nop

    nop

    nop

    nop

    :goto_54
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    new-instance v6, Leks;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_56
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    nop

    goto/32 :goto_12b

    nop

    nop

    nop

    nop

    nop

    :goto_57
    invoke-virtual {v12}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v18

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    const-string v2, "<vector> tag requires viewportHeight > 0"

    nop

    nop

    goto/32 :goto_152

    nop

    nop

    nop

    nop

    nop

    :goto_59
    sget-object v14, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-static {v13, v2, v7, v11, v14}, Ldsw;->J(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v7

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_5b
    const/16 v17, -0x1

    nop

    nop

    nop

    goto/32 :goto_ef

    nop

    nop

    :goto_5c
    const-string v11, "trimPathStart"

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_5d
    iget v7, v6, Lekp;->b:F

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

    :goto_5e
    const-string v11, "trimPathEnd"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    iget v11, v6, Lekq;->i:F

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_60
    if-gtz v12, :cond_6

    nop

    nop

    goto/32 :goto_189

    nop

    nop

    :cond_6
    goto/32 :goto_173

    nop

    nop

    nop

    nop

    nop

    :goto_61
    move v15, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    if-gtz v7, :cond_7

    nop

    goto/32 :goto_1ac

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_f0

    nop

    nop

    nop

    nop

    :goto_63
    const-string v6, "path"

    nop

    nop

    goto/32 :goto_17e

    nop

    nop

    :goto_64
    if-ne v14, v9, :cond_8

    nop

    nop

    goto/32 :goto_4b

    nop

    :cond_8
    :goto_65
    goto/32 :goto_1f

    nop

    nop

    :goto_66
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    :goto_67
    const/16 v16, 0x0

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_68
    const-string v11, "strokeWidth"

    nop

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    if-eq v14, v7, :cond_9

    nop

    goto/32 :goto_3d

    nop

    :cond_9
    goto/32 :goto_1a9

    nop

    nop

    :goto_6a
    iget v11, v6, Lekq;->c:F

    nop

    nop

    nop

    goto/32 :goto_179

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    iget-object v10, v8, Lekt;->b:Leks;

    nop

    nop

    nop

    nop

    goto/32 :goto_167

    nop

    nop

    :goto_6c
    if-nez v14, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_171

    nop

    nop

    nop

    nop

    :goto_6d
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_f5

    nop

    nop

    :goto_6e
    const-string v9, "viewportHeight"

    nop

    nop

    goto/32 :goto_f9

    nop

    nop

    nop

    :goto_6f
    iget-object v2, v5, Lekt;->d:Landroid/graphics/PorterDuff$Mode;

    nop

    nop

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    :goto_70
    goto/16 :goto_3b

    nop

    nop

    nop

    :goto_71
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_72
    const-string v6, "clip-path"

    nop

    nop

    nop

    nop

    goto/32 :goto_130

    nop

    nop

    nop

    nop

    nop

    :goto_73
    goto/16 :goto_3b

    nop

    :goto_74
    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    const/4 v11, 0x2

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    :goto_76
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    :goto_77
    goto/16 :goto_121

    nop

    nop

    nop

    nop

    nop

    :goto_78
    goto/32 :goto_120

    nop

    nop

    :goto_79
    const/4 v14, 0x5

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    const/4 v13, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_7b
    sget-object v7, Lekg;->b:[I

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    sget-object v7, Lekg;->d:[I

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_12f

    nop

    nop

    nop

    :goto_7e
    const-string v13, "translateY"

    nop

    nop

    nop

    nop

    goto/32 :goto_135

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    sget-object v11, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_175

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_80
    const/4 v15, 0x7

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_81
    if-ne v7, v11, :cond_b

    nop

    nop

    goto/32 :goto_c5

    nop

    :cond_b
    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    nop

    :goto_82
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    nop

    nop

    nop

    nop

    goto/32 :goto_16a

    nop

    nop

    nop

    nop

    :goto_83
    invoke-virtual {v7, v13, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v11

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

    :goto_84
    const-string v13, "translateX"

    nop

    goto/32 :goto_127

    nop

    nop

    nop

    nop

    nop

    :goto_85
    move-object/from16 v4, p4

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_86
    iput-object v11, v6, Lekp;->a:[I

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_87
    const-string v2, "<vector> tag requires viewportWidth > 0"

    nop

    nop

    nop

    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_88
    iput v11, v6, Lekq;->h:F

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_89
    const-string v7, "pathData"

    nop

    nop

    goto/32 :goto_101

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    iput v14, v6, Leko;->o:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e7

    nop

    nop

    :goto_8b
    const-string v2, "<vector> tag requires height > 0"

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    invoke-virtual {v6}, Lekq;->getGroupName()Ljava/lang/String;

    move-result-object v9

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_8d
    const/4 v9, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_19e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    iput-object v13, v6, Leko;->m:[Ldub;

    nop

    nop

    nop

    nop

    :goto_8f
    goto/32 :goto_150

    nop

    nop

    nop

    nop

    :goto_90
    iput v11, v6, Lekq;->d:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_91
    cmpg-float v12, v12, v14

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_92
    goto/16 :goto_3d

    nop

    :goto_93
    goto/32 :goto_f7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_94
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    :goto_95
    iget-object v7, v10, Leks;->l:Lwu;

    nop

    nop

    nop

    goto/32 :goto_114

    nop

    nop

    :goto_96
    invoke-virtual {v6}, Lekr;->getPathName()Ljava/lang/String;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18e

    nop

    nop

    :goto_97
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    :goto_98
    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_11c

    nop

    nop

    nop

    nop

    :goto_99
    const/4 v11, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    move-object/from16 v2, p2

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_9b
    const/4 v7, 0x0

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    nop

    :goto_9c
    if-nez v12, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_154

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_15f

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    const-string v1, "no path defined"

    nop

    nop

    goto/32 :goto_ee

    nop

    nop

    nop

    nop

    :goto_9e
    const/4 v14, 0x4

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    invoke-static {v7, v2, v13, v14, v11}, Ldsw;->H(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v11

    nop

    nop

    nop

    goto/32 :goto_15a

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    const/4 v14, 0x6

    nop

    nop

    goto/32 :goto_168

    nop

    nop

    :goto_a1
    iget-object v14, v10, Leks;->d:Lekq;

    nop

    goto/32 :goto_1a5

    nop

    nop

    nop

    :goto_a2
    iput-object v1, v0, Lekv;->d:Landroid/graphics/PorterDuffColorFilter;

    nop

    goto/32 :goto_11a

    nop

    nop

    nop

    :goto_a3
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v14

    nop

    nop

    nop

    goto/32 :goto_109

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_197

    nop

    nop

    nop

    nop

    :goto_a5
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_191

    nop

    nop

    nop

    :goto_a6
    iput v7, v6, Lekp;->f:F

    nop

    goto/32 :goto_11e

    nop

    nop

    :goto_a7
    move v7, v11

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

    :goto_a8
    invoke-static {v6, v2, v4}, Ldsw;->T(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v9

    nop

    nop

    goto/32 :goto_fd

    nop

    nop

    nop

    :goto_a9
    goto/16 :goto_3d

    nop

    nop

    :goto_aa
    goto/32 :goto_180

    nop

    nop

    nop

    nop

    :goto_ab
    invoke-virtual {v7, v9, v6}, Lyo;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_ac
    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ad
    if-nez v6, :cond_d

    nop

    nop

    nop

    nop

    goto/32 :goto_125

    nop

    :cond_d
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    const-string v9, "tintMode"

    nop

    nop

    goto/32 :goto_13a

    nop

    nop

    nop

    nop

    nop

    :goto_af
    if-lez v0, :cond_e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_b1

    nop

    :goto_b0
    iget-object v7, v9, Lekq;->b:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_105

    nop

    nop

    :goto_b1
    goto/32 :goto_f6

    nop

    nop

    nop

    nop

    :goto_b2
    goto/32 :goto_17f

    nop

    nop

    nop

    nop

    :goto_b3
    iget-object v7, v10, Leks;->l:Lwu;

    nop

    nop

    nop

    nop

    goto/32 :goto_140

    nop

    nop

    nop

    :goto_b4
    const/4 v6, 0x4

    nop

    nop

    :goto_b5
    goto/32 :goto_cb

    nop

    nop

    :goto_b6
    const-string v11, "strokeMiterLimit"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ff

    nop

    nop

    nop

    :goto_b7
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_107

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    iget v11, v6, Lekq;->d:F

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    nop

    :goto_b9
    goto/16 :goto_e8

    nop

    nop

    nop

    nop

    :goto_ba
    goto/32 :goto_7c

    nop

    nop

    :goto_bb
    goto/16 :goto_3d

    nop

    nop

    nop

    :goto_bc
    goto/32 :goto_192

    nop

    nop

    nop

    nop

    :goto_bd
    const/4 v7, 0x3

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_be
    const v1, 0xd

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_bf
    invoke-virtual {v7, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_122

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c0
    const/4 v6, 0x4

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_c1
    iput-boolean v6, v5, Lekt;->k:Z

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

    nop

    :goto_c2
    iget v7, v6, Lekp;->j:F

    nop

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    :goto_c3
    iput-object v7, v6, Lekp;->k:Lnnt;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_131

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c4
    goto/16 :goto_121

    nop

    :goto_c5
    goto/32 :goto_185

    nop

    nop

    nop

    nop

    :goto_c6
    const/4 v14, 0x4

    nop

    goto/32 :goto_163

    nop

    nop

    :goto_c7
    move-object/from16 v9, v18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_c8
    const/4 v15, 0x7

    nop

    goto/32 :goto_164

    nop

    nop

    nop

    :goto_c9
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    :goto_ca
    const-string v2, "<vector> tag requires width > 0"

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_cb
    const/4 v7, 0x3

    nop

    nop

    goto/32 :goto_12a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cc
    const/16 v13, 0x8

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cd
    if-nez v13, :cond_f

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_3c

    nop

    nop

    :goto_ce
    invoke-static {v13, v2, v11, v14, v7}, Ldsw;->H(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v7

    nop

    goto/32 :goto_143

    nop

    nop

    nop

    nop

    :goto_cf
    invoke-direct {v6}, Lekq;-><init>()V

    goto/32 :goto_7b

    nop

    nop

    :goto_d0
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_b0

    nop

    nop

    nop

    :goto_d1
    const/4 v14, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    nop

    :goto_d2
    invoke-static {v7, v2, v13, v15, v11}, Ldsw;->H(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v11

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    :goto_d3
    iput-boolean v9, v7, Lekt;->e:Z

    nop

    nop

    goto/32 :goto_19c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d4
    if-nez v7, :cond_10

    nop

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    :goto_d5
    move v6, v14

    nop

    goto/32 :goto_124

    nop

    nop

    nop

    nop

    nop

    :goto_d6
    iput-object v9, v7, Lekt;->c:Landroid/content/res/ColorStateList;

    nop

    :goto_d7
    goto/32 :goto_181

    nop

    nop

    :goto_d8
    const/4 v15, 0x1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_d9
    invoke-static {v6, v2, v9, v13, v7}, Ldsw;->H(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v7

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_da
    invoke-static {v13, v2, v15, v11, v7}, Ldsw;->J(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v7

    nop

    nop

    goto/32 :goto_10e

    nop

    nop

    nop

    :goto_db
    const/4 v14, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12d

    nop

    nop

    nop

    nop

    nop

    :goto_dc
    const/4 v6, 0x4

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    :goto_dd
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_de
    goto/32 :goto_161

    nop

    nop

    nop

    nop

    nop

    :goto_df
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_188

    nop

    nop

    nop

    nop

    :goto_e0
    const-string v7, "fillColor"

    nop

    nop

    nop

    goto/32 :goto_f8

    nop

    nop

    nop

    nop

    nop

    :goto_e1
    invoke-virtual {v0, v1, v2}, Lekv;->c(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e2
    iput v6, v5, Lekt;->a:I

    nop

    goto/32 :goto_193

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e3
    invoke-virtual {v6, v15, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_e4
    iget v9, v8, Leks;->g:F

    nop

    nop

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    nop

    :goto_e5
    const-string v7, "strokeColor"

    nop

    nop

    nop

    goto/32 :goto_149

    nop

    nop

    nop

    nop

    :goto_e6
    iget-object v11, v6, Lekp;->i:Landroid/graphics/Paint$Join;

    nop

    goto/32 :goto_169

    nop

    nop

    nop

    :goto_e7
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    :goto_e8
    goto/32 :goto_13f

    nop

    nop

    nop

    nop

    nop

    :goto_e9
    const/4 v6, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_118

    nop

    nop

    :goto_ea
    const/4 v13, 0x2

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_eb
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_6d

    nop

    nop

    :goto_ec
    iget v6, v8, Lekt;->a:I

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    nop

    :goto_ed
    const/4 v14, 0x0

    nop

    nop

    nop

    goto/32 :goto_196

    nop

    nop

    :goto_ee
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1ab

    nop

    nop

    nop

    nop

    nop

    :goto_ef
    move v11, v7

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

    :goto_f0
    invoke-virtual {v8}, Leks;->getAlpha()F

    move-result v7

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_f1
    invoke-virtual {v7, v9, v6}, Lyo;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_f2
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f3
    iget v7, v8, Leks;->e:F

    nop

    goto/32 :goto_12c

    nop

    nop

    nop

    :goto_f4
    invoke-virtual {v6}, Lekq;->w()V

    goto/32 :goto_142

    nop

    nop

    nop

    nop

    nop

    :goto_f5
    throw v0

    nop

    :goto_f6
    goto/32 :goto_133

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f7
    move/from16 v19, v11

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    :goto_f8
    const/4 v11, 0x1

    nop

    nop

    goto/32 :goto_fe

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f9
    const/16 v13, 0x8

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    :goto_fa
    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    :goto_fb
    invoke-static {v6, v2, v9, v12, v7}, Ldsw;->H(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_fc
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_fd
    if-nez v9, :cond_11

    nop

    nop

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_d6

    nop

    nop

    :goto_fe
    invoke-static {v13, v2, v4, v7, v11}, Ldsw;->ac(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;Ljava/lang/String;I)Lnnt;

    move-result-object v7

    nop

    nop

    goto/32 :goto_13b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ff
    const/16 v14, 0xa

    nop

    goto/32 :goto_18d

    nop

    nop

    nop

    nop

    nop

    :goto_100
    iput-object v9, v7, Lekt;->d:Landroid/graphics/PorterDuff$Mode;

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    :goto_101
    move/from16 v19, v11

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_102
    iput v7, v6, Lekp;->j:F

    nop

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    :goto_103
    if-eq v14, v15, :cond_12

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_fc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_104
    move-object/from16 v1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    :goto_105
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_106
    iget v11, v6, Lekq;->g:F

    nop

    nop

    nop

    nop

    goto/32 :goto_17d

    nop

    nop

    nop

    nop

    :goto_107
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_108
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_96

    nop

    nop

    :goto_109
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v16

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_10a
    const/4 v11, 0x0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_10b
    invoke-static {v7, v2, v14, v13, v11}, Ldsw;->H(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v11

    nop

    nop

    nop

    goto/32 :goto_144

    nop

    nop

    nop

    nop

    nop

    :goto_10c
    iput v11, v6, Lekq;->g:F

    nop

    nop

    nop

    nop

    goto/32 :goto_170

    nop

    nop

    nop

    nop

    nop

    :goto_10d
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    :goto_10e
    iput v7, v6, Lekp;->o:I

    nop

    :goto_10f
    goto/32 :goto_d0

    nop

    nop

    nop

    :goto_110
    iget v7, v6, Lekp;->d:F

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_111
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_15e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_112
    new-instance v6, Lekp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_129

    nop

    nop

    nop

    nop

    nop

    :goto_113
    invoke-static {v11}, Ldsw;->E(Ljava/lang/String;)[Ldub;

    move-result-object v7

    nop

    nop

    goto/32 :goto_16e

    nop

    nop

    nop

    nop

    nop

    :goto_114
    invoke-virtual {v6}, Lekr;->getPathName()Ljava/lang/String;

    move-result-object v9

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

    :goto_115
    if-ne v7, v11, :cond_13

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_116
    invoke-static {v1, v4, v3, v13}, Ldsw;->K(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    :goto_117
    iput-object v6, v5, Lekt;->b:Leks;

    nop

    goto/32 :goto_15b

    nop

    nop

    nop

    nop

    :goto_118
    const/4 v7, 0x3

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    :goto_119
    invoke-static {v6, v2, v9}, Ldsw;->R(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Z)Z

    move-result v9

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    :goto_11a
    return-void

    nop

    nop

    nop

    nop

    :goto_11b
    goto/32 :goto_10d

    nop

    nop

    nop

    nop

    :goto_11c
    invoke-virtual {v13, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14d

    nop

    nop

    nop

    nop

    nop

    :goto_11d
    invoke-static {v13, v2, v11, v14, v7}, Ldsw;->H(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_11e
    iget v7, v6, Lekp;->g:F

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_11f
    const/4 v7, 0x2

    nop

    nop

    goto/32 :goto_147

    nop

    nop

    :goto_120
    sget-object v14, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    nop

    nop

    :goto_121
    goto/32 :goto_14a

    nop

    nop

    :goto_122
    if-nez v13, :cond_14

    nop

    nop

    nop

    goto/32 :goto_19a

    nop

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_199

    nop

    nop

    nop

    nop

    nop

    :goto_123
    const-string v7, "strokeLineCap"

    nop

    goto/32 :goto_18b

    nop

    nop

    nop

    :goto_124
    goto/16 :goto_b5

    nop

    nop

    nop

    nop

    :goto_125
    goto/32 :goto_151

    nop

    nop

    :goto_126
    iget v7, v6, Lekp;->f:F

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

    :goto_127
    const/4 v15, 0x6

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    :goto_128
    iget v7, v6, Lekp;->e:F

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_129
    invoke-direct {v6}, Lekp;-><init>()V

    goto/32 :goto_47

    nop

    nop

    :goto_12a
    const/4 v9, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12b
    invoke-static {v9, v12}, La;->n(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v9

    nop

    nop

    nop

    goto/32 :goto_100

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12c
    const/4 v9, 0x3

    nop

    goto/32 :goto_1a8

    nop

    nop

    nop

    :goto_12d
    if-ne v7, v14, :cond_15

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    :cond_15
    goto/32 :goto_158

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12e
    const-string v15, "fillType"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    :goto_12f
    invoke-virtual/range {p0 .. p0}, Lekv;->getChangingConfigurations()I

    move-result v6

    nop

    goto/32 :goto_e2

    nop

    nop

    :goto_130
    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    nop

    nop

    goto/32 :goto_19b

    nop

    nop

    :goto_131
    iget v7, v6, Lekp;->c:F

    nop

    nop

    nop

    goto/32 :goto_145

    nop

    nop

    nop

    :goto_132
    const v0, 0x1b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_133
    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    :goto_134
    iput v7, v6, Lekp;->b:F

    nop

    nop

    nop

    nop

    goto/32 :goto_126

    nop

    nop

    nop

    nop

    nop

    :goto_135
    const/4 v15, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a7

    nop

    nop

    :goto_136
    if-nez v9, :cond_16

    nop

    goto/32 :goto_43

    nop

    :cond_16
    goto/32 :goto_63

    nop

    nop

    :goto_137
    invoke-virtual {v6}, Lekq;->getGroupName()Ljava/lang/String;

    move-result-object v7

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_138
    if-lt v13, v11, :cond_17

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :cond_17
    goto/32 :goto_64

    nop

    nop

    :goto_139
    new-instance v6, Leko;

    nop

    nop

    goto/32 :goto_146

    nop

    nop

    nop

    nop

    nop

    :goto_13a
    const/4 v10, 0x6

    nop

    nop

    nop

    goto/32 :goto_14c

    nop

    nop

    :goto_13b
    iput-object v7, v6, Lekp;->l:Lnnt;

    nop

    goto/32 :goto_110

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13c
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v14

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13d
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_155

    nop

    nop

    nop

    nop

    nop

    :goto_13e
    if-eqz v16, :cond_18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11b

    nop

    nop

    nop

    nop

    :cond_18
    goto/32 :goto_16c

    nop

    nop

    :goto_13f
    iget-object v7, v9, Lekq;->b:Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_108

    nop

    nop

    nop

    :goto_140
    invoke-virtual {v6}, Lekr;->getPathName()Ljava/lang/String;

    move-result-object v9

    nop

    nop

    nop

    nop

    goto/32 :goto_f1

    nop

    nop

    nop

    :goto_141
    iget-object v7, v0, Lekv;->b:Lekt;

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

    :goto_142
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_194

    nop

    nop

    nop

    :goto_143
    iput v7, v6, Lekp;->g:F

    nop

    nop

    nop

    nop

    goto/32 :goto_128

    nop

    nop

    nop

    nop

    nop

    :goto_144
    iput v11, v6, Lekq;->f:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_106

    nop

    nop

    :goto_145
    const-string v11, "strokeAlpha"

    nop

    nop

    goto/32 :goto_159

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_146
    invoke-direct {v6}, Leko;-><init>()V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_147
    invoke-virtual {v13, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    nop

    nop

    nop

    nop

    goto/32 :goto_157

    nop

    nop

    nop

    :goto_148
    const/4 v14, -0x1

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_149
    const/4 v11, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16b

    nop

    nop

    :goto_14a
    iput-object v14, v6, Lekp;->h:Landroid/graphics/Paint$Cap;

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_14b
    iget-object v5, v0, Lekv;->b:Lekt;

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14c
    const/4 v11, -0x1

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_14d
    if-nez v11, :cond_19

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :cond_19
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_14e
    const/4 v13, 0x3

    nop

    nop

    goto/32 :goto_10b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14f
    cmpg-float v7, v7, v14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16d

    nop

    nop

    nop

    :goto_150
    const/4 v13, 0x2

    nop

    goto/32 :goto_190

    nop

    nop

    nop

    nop

    :goto_151
    const/4 v11, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_152
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

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

    :goto_153
    invoke-virtual {v10, v12, v8}, Lyo;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_154
    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    :goto_155
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_156
    goto/32 :goto_94

    nop

    nop

    nop

    :goto_157
    if-nez v11, :cond_1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16f

    nop

    nop

    nop

    :cond_1a
    goto/32 :goto_113

    nop

    nop

    nop

    nop

    nop

    :goto_158
    const/4 v14, 0x2

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_159
    const/16 v14, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_178

    nop

    nop

    :goto_15a
    iput v11, v6, Lekq;->c:F

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15b
    sget-object v6, Lekg;->a:[I

    nop

    nop

    nop

    goto/32 :goto_1a4

    nop

    nop

    :goto_15c
    if-eqz v7, :cond_1b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    :cond_1b
    goto/32 :goto_31

    nop

    nop

    :goto_15d
    const/4 v6, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    nop

    :goto_15e
    invoke-virtual {v12, v6}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto/32 :goto_137

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15f
    iput-object v12, v8, Leks;->j:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_177

    nop

    nop

    nop

    :goto_160
    if-nez v5, :cond_1c

    nop

    goto/32 :goto_17c

    nop

    nop

    nop

    :cond_1c
    goto/32 :goto_184

    nop

    nop

    nop

    nop

    nop

    :goto_161
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    :goto_162
    iput v11, v6, Lekq;->i:F

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

    :goto_163
    invoke-static {v6, v2, v12, v14, v7}, Ldsw;->H(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v7

    nop

    nop

    goto/32 :goto_18c

    nop

    nop

    :goto_164
    const/16 v17, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_182

    nop

    nop

    nop

    :goto_165
    iget v7, v8, Leks;->h:F

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_166
    invoke-static {v7, v2, v13, v14, v11}, Ldsw;->H(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v11

    nop

    goto/32 :goto_10c

    nop

    nop

    :goto_167
    new-instance v12, Ljava/util/ArrayDeque;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_168
    invoke-static {v13, v2, v11, v14, v7}, Ldsw;->H(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    :goto_169
    if-nez v7, :cond_1d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_176

    nop

    nop

    nop

    :cond_1d
    goto/32 :goto_db

    nop

    nop

    nop

    nop

    :goto_16a
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_187

    nop

    nop

    nop

    nop

    nop

    :goto_16b
    invoke-static {v13, v2, v4, v7, v11}, Ldsw;->ac(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;Ljava/lang/String;I)Lnnt;

    move-result-object v7

    nop

    goto/32 :goto_c3

    nop

    nop

    :goto_16c
    iget-object v1, v5, Lekt;->c:Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    :goto_16d
    if-gtz v7, :cond_1e

    nop

    goto/32 :goto_156

    nop

    nop

    :cond_1e
    goto/32 :goto_f3

    nop

    nop

    :goto_16e
    iput-object v7, v6, Lekp;->m:[Ldub;

    nop

    nop

    nop

    nop

    :goto_16f
    goto/32 :goto_e0

    nop

    nop

    nop

    :goto_170
    iget v11, v6, Lekq;->h:F

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_171
    invoke-static {v14}, Ldsw;->E(Ljava/lang/String;)[Ldub;

    move-result-object v13

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    :goto_172
    move v9, v15

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    :goto_173
    cmpg-float v7, v7, v14

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_174
    iget v12, v8, Leks;->e:F

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    :goto_175
    goto/16 :goto_3b

    nop

    nop

    :goto_176
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_177
    iget-object v10, v8, Leks;->l:Lwu;

    nop

    nop

    goto/32 :goto_153

    nop

    nop

    nop

    :goto_178
    invoke-static {v13, v2, v11, v14, v7}, Ldsw;->H(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v7

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_179
    const-string v13, "rotation"

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    :goto_17a
    const/4 v15, 0x7

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

    :goto_17b
    return-void

    nop

    nop

    nop

    :goto_17c
    goto/32 :goto_14b

    nop

    nop

    nop

    nop

    :goto_17d
    const-string v13, "scaleY"

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_17e
    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_12e

    nop

    nop

    :goto_17f
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_104

    nop

    nop

    nop

    nop

    :goto_180
    const/16 v17, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_181
    iget-boolean v9, v7, Lekt;->e:Z

    nop

    nop

    goto/32 :goto_119

    nop

    nop

    :goto_182
    move v11, v7

    nop

    :goto_183
    goto/32 :goto_b4

    nop

    nop

    :goto_184
    invoke-virtual {v5, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    goto/32 :goto_17b

    nop

    nop

    nop

    nop

    :goto_185
    sget-object v14, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_186
    iput v7, v6, Lekp;->d:F

    nop

    nop

    nop

    goto/32 :goto_123

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_187
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    :goto_188
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_189
    goto/32 :goto_198

    nop

    nop

    nop

    nop

    nop

    :goto_18a
    if-gtz v9, :cond_1f

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    :cond_1f
    goto/32 :goto_14f

    nop

    nop

    nop

    nop

    :goto_18b
    const/16 v11, 0x8

    nop

    goto/32 :goto_148

    nop

    nop

    nop

    nop

    :goto_18c
    invoke-virtual {v8, v7}, Leks;->setAlpha(F)V

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    :goto_18d
    invoke-static {v13, v2, v11, v14, v7}, Ldsw;->H(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v7

    nop

    goto/32 :goto_102

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18e
    if-nez v7, :cond_20

    nop

    nop

    goto/32 :goto_f2

    nop

    nop

    :cond_20
    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18f
    const/4 v15, 0x7

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    :goto_190
    invoke-static {v7, v2, v15, v13, v11}, Ldsw;->J(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v14

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    :goto_191
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_192
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    :goto_193
    const/4 v6, 0x1

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    :goto_194
    iget-object v7, v9, Lekq;->b:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_111

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_195
    iget v11, v6, Lekq;->f:F

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_196
    cmpg-float v9, v9, v14

    nop

    nop

    nop

    nop

    goto/32 :goto_18a

    nop

    nop

    nop

    nop

    :goto_197
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :goto_198
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    :goto_199
    iput-object v13, v6, Lekq;->m:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    :goto_19a
    goto/32 :goto_f4

    nop

    nop

    nop

    nop

    nop

    :goto_19b
    if-nez v6, :cond_21

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    :cond_21
    goto/32 :goto_139

    nop

    nop

    :goto_19c
    iget v7, v8, Leks;->g:F

    nop

    goto/32 :goto_19d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19d
    const-string v9, "viewportWidth"

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

    :goto_19e
    const/4 v11, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18f

    nop

    nop

    nop

    nop

    nop

    :goto_19f
    invoke-static {v13, v2, v7, v11, v14}, Ldsw;->J(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v7

    nop

    nop

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    :goto_1a0
    iput v7, v8, Leks;->e:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_1a1
    move/from16 v16, v6

    nop

    :goto_1a2
    goto/32 :goto_1ad

    nop

    nop

    nop

    nop

    :goto_1a3
    const/4 v15, 0x7

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_1a4
    invoke-static {v1, v4, v3, v6}, Ldsw;->K(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_141

    nop

    nop

    nop

    :goto_1a5
    invoke-virtual {v12, v14}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto/32 :goto_a3

    nop

    nop

    :goto_1a6
    const/4 v11, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_115

    nop

    nop

    nop

    :goto_1a7
    invoke-static {v7, v2, v13, v15, v11}, Ldsw;->H(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v11

    nop

    nop

    goto/32 :goto_162

    nop

    nop

    :goto_1a8
    invoke-virtual {v6, v9, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    nop

    goto/32 :goto_1a0

    nop

    nop

    nop

    nop

    :goto_1a9
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

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

    :goto_1aa
    iget v7, v6, Lekp;->o:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_1ab
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_1ac
    goto/32 :goto_82

    nop

    nop

    nop

    nop

    :goto_1ad
    if-ne v14, v6, :cond_22

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :cond_22
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop
.end method

.method public final invalidateSelf()V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto/32 :goto_0

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
    iget-object v0, p0, Lekv;->e:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    invoke-super {p0}, Lekn;->invalidateSelf()V

    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method public final isAutoMirrored()Z
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lekv;->b:Lekt;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    :goto_3
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lekv;->e:Landroid/graphics/drawable/Drawable;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    iget-boolean p0, p0, Lekt;->e:Z

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isAutoMirrored()Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public final isStateful()Z
    .locals 3

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    :goto_1
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_4

    nop

    nop

    :goto_3
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_6
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_0
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_8
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_1
    goto/32 :goto_1f

    nop

    nop

    :goto_9
    iget-object p0, p0, Lekt;->c:Landroid/content/res/ColorStateList;

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

    :goto_a
    const v0, 0x1b

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_b
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_e
    goto :goto_12

    nop

    nop

    :goto_f
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Lekv;->e:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_11
    move v1, v2

    nop

    nop

    :goto_12
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-nez p0, :cond_3

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_3
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_14
    return v2

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_11

    nop

    nop

    :goto_16
    return v1

    nop

    nop

    :goto_17
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_18
    if-lez v0, :cond_4

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_4
    goto/32 :goto_3

    nop

    :goto_19
    invoke-super {p0}, Lekn;->isStateful()Z

    move-result v0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1a
    const/4 v2, 0x0

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
    if-nez p0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v0, p0, Lekv;->b:Lekt;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object p0, p0, Lekv;->b:Lekt;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v0}, Lekt;->b()Z

    move-result v0

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_1f
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p0

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

    :goto_20
    const v1, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_21
    if-eqz v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_1d

    nop

    nop

    nop
.end method

.method public final mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, v1}, Lekt;-><init>(Lekt;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-boolean v0, p0, Lekv;->g:Z

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

    :goto_2
    iget-object v1, p0, Lekv;->b:Lekt;

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

    :goto_3
    iput-boolean v0, p0, Lekv;->g:Z

    nop

    nop

    :goto_4
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_5
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    nop

    :goto_6
    return-object p0

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v0, Lekt;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_9
    goto/32 :goto_c

    nop

    :goto_a
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_e
    const v0, 0x7

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-eq v0, p0, :cond_1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

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
    if-eqz v0, :cond_2

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_2
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Lekv;->e:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v1, 0x17

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-super {p0}, Lekn;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_17
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_9

    nop

    :goto_18
    iput-object v0, p0, Lekv;->b:Lekt;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_19
    const/4 v0, 0x1

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
.end method

.method protected final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    if-nez p0, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lekv;->e:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :goto_3
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop
.end method

.method protected final onStateChange([I)Z
    .locals 5

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move v3, v2

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v4, v0, Lekt;->d:Landroid/graphics/PorterDuff$Mode;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_3
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_4
    iget-object v1, v1, Leks;->d:Lekq;

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

    :goto_5
    return p0

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v2, 0x1

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0, v1, v4}, Lekv;->c(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

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

    :goto_9
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0}, Lekt;->b()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_b
    return v3

    nop

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
    invoke-virtual {v1, p1}, Ldwc;->u([I)Z

    move-result p1

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

    :goto_e
    iput-object v1, p0, Lekv;->d:Landroid/graphics/PorterDuffColorFilter;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_f
    iget-object v0, p0, Lekv;->e:Landroid/graphics/drawable/Drawable;

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

    nop

    :goto_10
    iget-object v0, p0, Lekv;->b:Lekt;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_11
    iput-boolean v1, v0, Lekt;->k:Z

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-boolean v1, v0, Lekt;->k:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_13
    const v1, 0x1e

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0}, Lekv;->invalidateSelf()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-nez v1, :cond_1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_17
    if-nez v4, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_18
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    :cond_3
    goto/32 :goto_24

    nop

    :goto_19
    or-int/2addr v1, p1

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

    :goto_1a
    iget-object v1, v0, Lekt;->c:Landroid/content/res/ColorStateList;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const v0, 0x17

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

    :goto_1d
    invoke-virtual {p0}, Lekv;->invalidateSelf()V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v1, v0, Lekt;->b:Leks;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1f
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-nez v1, :cond_4

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

    :cond_4
    goto/32 :goto_1e

    nop

    nop

    :goto_22
    add-int v0, v0, v1

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
    if-nez p1, :cond_5

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_c

    nop

    nop

    :goto_25
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_26
    const/4 v3, 0x0

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
.end method

.method public final scheduleSelf(Ljava/lang/Runnable;J)V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-super {p0, p1, p2, p3}, Lekn;->scheduleSelf(Ljava/lang/Runnable;J)V

    goto/32 :goto_0

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Lekv;->e:Landroid/graphics/drawable/Drawable;

    nop

    nop

    goto/32 :goto_4

    nop

    nop
.end method

.method public final setAlpha(I)V
    .locals 1

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_0
    if-ne v0, p1, :cond_0

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

    :cond_0
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1
    if-nez v0, :cond_1

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

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, v0, Lekt;->b:Leks;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, v0, Lekt;->b:Leks;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    :goto_5
    invoke-virtual {v0, p1}, Leks;->setRootAlpha(I)V

    goto/32 :goto_a

    nop

    nop

    :goto_6
    invoke-virtual {v0}, Leks;->getRootAlpha()I

    move-result v0

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

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

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
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Lekv;->invalidateSelf()V

    :goto_b
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Lekv;->e:Landroid/graphics/drawable/Drawable;

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

    :goto_d
    iget-object v0, p0, Lekv;->b:Lekt;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Lekv;->b:Lekt;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public final setAutoMirrored(Z)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    :goto_0
    iget-object p0, p0, Lekv;->b:Lekt;

    nop

    nop

    goto/32 :goto_2

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

    nop

    nop

    :goto_2
    iput-boolean p1, p0, Lekt;->e:Z

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

    :goto_3
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lekv;->e:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    if-nez v0, :cond_0

    nop

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_0

    nop

    nop
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lekv;->f:Landroid/graphics/ColorFilter;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lekv;->e:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lekv;->invalidateSelf()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v0, :cond_0

    nop

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final setTint(I)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lekv;->e:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

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
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    :goto_5
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

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

    nop

    :goto_6
    invoke-virtual {p0, p1}, Lekv;->setTintList(Landroid/content/res/ColorStateList;)V

    goto/32 :goto_3

    nop

    nop

    :goto_7
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final setTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lekv;->d:Landroid/graphics/PorterDuffColorFilter;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_2
    const v0, 0x9

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x5

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

    :goto_5
    iget-object v0, v0, Lekt;->d:Landroid/graphics/PorterDuff$Mode;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_6
    iget-object v0, p0, Lekv;->e:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_7
    goto/32 :goto_16

    nop

    nop

    :goto_8
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_9
    if-ne v1, p1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_2
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Lekv;->b:Lekt;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    :goto_10
    goto/32 :goto_b

    nop

    nop

    :goto_11
    iget-object v1, v0, Lekt;->c:Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0}, Lekv;->invalidateSelf()V

    :goto_13
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p0, p1, v0}, Lekv;->c(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

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

    :goto_15
    return-void

    nop

    :goto_16
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iput-object p1, v0, Lekt;->c:Landroid/content/res/ColorStateList;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0, p1}, Lekv;->c(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v1, v0, Lekt;->d:Landroid/graphics/PorterDuff$Mode;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_2
    iget-object v0, v0, Lekt;->c:Landroid/content/res/ColorStateList;

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

    :goto_3
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lekv;->e:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_6
    iput-object p1, p0, Lekv;->d:Landroid/graphics/PorterDuffColorFilter;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_7
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0xc

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    :goto_b
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_c
    iput-object p1, v0, Lekt;->d:Landroid/graphics/PorterDuff$Mode;

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

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_e
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Lekv;->invalidateSelf()V

    :goto_12
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Lekv;->b:Lekt;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_14
    const v0, 0x9

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
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

    :goto_16
    add-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-ne v1, p1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_c

    nop

    nop

    nop
.end method

.method public final setVisible(ZZ)Z
    .locals 1

    goto/32 :goto_3

    nop

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

    nop

    :goto_1
    if-nez v0, :cond_0

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

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p0

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

    :goto_3
    iget-object v0, p0, Lekv;->e:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-super {p0, p1, p2}, Lekn;->setVisible(ZZ)Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    return p0

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop
.end method

.method public final unscheduleSelf(Ljava/lang/Runnable;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_5

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
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lekv;->e:Landroid/graphics/drawable/Drawable;

    nop

    nop

    goto/32 :goto_0

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

    :goto_5
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    goto/32 :goto_1

    nop

    nop

    :goto_6
    invoke-super {p0, p1}, Lekn;->unscheduleSelf(Ljava/lang/Runnable;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method
