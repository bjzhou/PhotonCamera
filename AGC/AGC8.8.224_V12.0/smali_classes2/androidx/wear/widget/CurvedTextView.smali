.class public Landroidx/wear/widget/CurvedTextView;
.super Landroid/view/View;

# interfaces
.implements Lauy;


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;

.field public c:I

.field private final d:Landroid/graphics/Path;

.field private final e:Landroid/graphics/Path;

.field private final f:Landroid/text/TextPaint;

.field private final g:Landroid/graphics/Rect;

.field private final h:Landroid/graphics/Rect;

.field private i:Ljava/lang/String;

.field private j:F

.field private k:F

.field private l:F

.field private m:I

.field private n:F

.field private o:I

.field private p:F

.field private q:F

.field private r:F

.field private s:F

.field private t:Landroid/graphics/Typeface;

.field private u:Z

.field private v:Landroid/text/TextUtils$TruncateAt;

.field private w:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/wear/widget/CurvedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010084

    invoke-direct {p0, p1, p2, v0}, Landroidx/wear/widget/CurvedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/wear/widget/CurvedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 11

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroidx/wear/widget/CurvedTextView;->d:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroidx/wear/widget/CurvedTextView;->e:Landroid/graphics/Path;

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroidx/wear/widget/CurvedTextView;->f:Landroid/text/TextPaint;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroidx/wear/widget/CurvedTextView;->g:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroidx/wear/widget/CurvedTextView;->h:Landroid/graphics/Rect;

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/wear/widget/CurvedTextView;->a:Z

    const-string v2, ""

    iput-object v2, p0, Landroidx/wear/widget/CurvedTextView;->i:Ljava/lang/String;

    const/4 v3, 0x0

    iput v3, p0, Landroidx/wear/widget/CurvedTextView;->j:F

    iput v3, p0, Landroidx/wear/widget/CurvedTextView;->k:F

    const v4, 0x43b3f333    # 359.9f

    iput v4, p0, Landroidx/wear/widget/CurvedTextView;->l:F

    const/4 v5, -0x1

    iput v5, p0, Landroidx/wear/widget/CurvedTextView;->m:I

    iput v3, p0, Landroidx/wear/widget/CurvedTextView;->n:F

    iput-object v2, p0, Landroidx/wear/widget/CurvedTextView;->b:Ljava/lang/String;

    const/high16 v2, 0x41c00000    # 24.0f

    iput v2, p0, Landroidx/wear/widget/CurvedTextView;->s:F

    const/4 v2, 0x0

    iput-object v2, p0, Landroidx/wear/widget/CurvedTextView;->t:Landroid/graphics/Typeface;

    iput-boolean v1, p0, Landroidx/wear/widget/CurvedTextView;->u:Z

    iput v5, p0, Landroidx/wear/widget/CurvedTextView;->c:I

    iput-object v2, p0, Landroidx/wear/widget/CurvedTextView;->v:Landroid/text/TextUtils$TruncateAt;

    const/4 v6, 0x0

    iput-boolean v6, p0, Landroidx/wear/widget/CurvedTextView;->w:Z

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    new-instance v7, Lavd;

    invoke-direct {v7}, Lavd;-><init>()V

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    iput-object v8, v7, Lavd;->a:Landroid/content/res/ColorStateList;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    sget-object v9, Lauv;->h:[I

    invoke-virtual {v8, p2, v9, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v9

    invoke-virtual {v9, v6, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    if-eq v10, v5, :cond_0

    sget-object v9, Lauv;->g:[I

    invoke-virtual {v8, v10, v9}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v8

    goto :goto_0

    :cond_0
    move-object v8, v2

    :goto_0
    if-eqz v8, :cond_1

    invoke-static {v8, v7, v1}, Landroidx/wear/widget/CurvedTextView;->h(Landroid/content/res/TypedArray;Lavd;Z)V

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    sget-object v8, Lauv;->e:[I

    invoke-virtual {p1, p2, v8, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-static {p1, v7, v6}, Landroidx/wear/widget/CurvedTextView;->h(Landroid/content/res/TypedArray;Lavd;Z)V

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroidx/wear/widget/CurvedTextView;->b:Ljava/lang/String;

    :cond_2
    const/4 p2, 0x5

    invoke-virtual {p1, p2, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    packed-switch p2, :pswitch_data_0

    iput-object v2, p0, Landroidx/wear/widget/CurvedTextView;->v:Landroid/text/TextUtils$TruncateAt;

    goto :goto_2

    :pswitch_0
    sget-object p2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    goto :goto_1

    :pswitch_1
    sget-object p2, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    goto :goto_1

    :pswitch_2
    sget-object p2, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    :goto_1
    iput-object p2, p0, Landroidx/wear/widget/CurvedTextView;->v:Landroid/text/TextUtils$TruncateAt;

    :goto_2
    const/16 p2, 0xf

    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Landroidx/wear/widget/CurvedTextView;->r:F

    invoke-static {p2, v4}, Ljava/lang/Math;->min(FF)F

    move-result p2

    iput p2, p0, Landroidx/wear/widget/CurvedTextView;->r:F

    const/16 p2, 0x10

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Landroidx/wear/widget/CurvedTextView;->q:F

    iget p3, p0, Landroidx/wear/widget/CurvedTextView;->r:F

    cmpl-float p2, p2, p3

    if-gtz p2, :cond_7

    const/16 p2, 0xd

    invoke-virtual {p1, p2, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Landroidx/wear/widget/CurvedTextView;->o:I

    const/16 p2, 0xc

    const/high16 p3, -0x40800000    # -1.0f

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    const/high16 p4, 0x43b40000    # 360.0f

    rem-float/2addr p2, p4

    iput p2, p0, Landroidx/wear/widget/CurvedTextView;->p:F

    const/16 p2, 0xe

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/wear/widget/CurvedTextView;->u:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    iget-object p1, v7, Lavd;->a:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    iput p1, p0, Landroidx/wear/widget/CurvedTextView;->c:I

    :cond_3
    iget p1, v7, Lavd;->b:F

    cmpl-float p2, p1, p3

    if-eqz p2, :cond_4

    iput p1, p0, Landroidx/wear/widget/CurvedTextView;->s:F

    :cond_4
    iget-object p1, v7, Lavd;->c:Ljava/lang/String;

    iget p2, v7, Lavd;->e:I

    iget p3, v7, Lavd;->f:I

    iget p4, v7, Lavd;->g:I

    iget-object v1, p0, Landroidx/wear/widget/CurvedTextView;->t:Landroid/graphics/Typeface;

    if-nez v1, :cond_5

    if-eqz p1, :cond_5

    invoke-static {p1, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-direct {p0, p1, p3, p4}, Landroidx/wear/widget/CurvedTextView;->g(Landroid/graphics/Typeface;II)V

    goto :goto_3

    :cond_5
    if-eqz v1, :cond_6

    invoke-direct {p0, v1, p3, p4}, Landroidx/wear/widget/CurvedTextView;->g(Landroid/graphics/Typeface;II)V

    goto :goto_3

    :cond_6
    packed-switch p2, :pswitch_data_1

    invoke-direct {p0, v2, p3, p4}, Landroidx/wear/widget/CurvedTextView;->g(Landroid/graphics/Typeface;II)V

    goto :goto_3

    :pswitch_3
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-direct {p0, p1, p3, p4}, Landroidx/wear/widget/CurvedTextView;->g(Landroid/graphics/Typeface;II)V

    goto :goto_3

    :pswitch_4
    sget-object p1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    invoke-direct {p0, p1, p3, p4}, Landroidx/wear/widget/CurvedTextView;->g(Landroid/graphics/Typeface;II)V

    goto :goto_3

    :pswitch_5
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-direct {p0, p1, p3, p4}, Landroidx/wear/widget/CurvedTextView;->g(Landroid/graphics/Typeface;II)V

    :goto_3
    iget p1, v7, Lavd;->h:F

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    iget-object p1, v7, Lavd;->i:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setFontFeatureSettings(Ljava/lang/String;)V

    iget-object p1, v7, Lavd;->j:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFontVariationSettings(Ljava/lang/String;)Z

    iget p1, p0, Landroidx/wear/widget/CurvedTextView;->s:F

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    return-void

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "MinSweepDegrees cannot be bigger than MaxSweepDegrees"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private final g(Landroid/graphics/Typeface;II)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p3, :cond_1

    const/16 v2, 0x3e8

    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, p3, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Landroidx/wear/widget/CurvedTextView;->t:Landroid/graphics/Typeface;

    iget-object p2, p0, Landroidx/wear/widget/CurvedTextView;->f:Landroid/text/TextPaint;

    invoke-virtual {p2, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void

    :cond_1
    const/4 p3, 0x0

    if-lez p2, :cond_7

    if-nez p1, :cond_2

    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_1

    :cond_2
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    :goto_1
    iget-object v2, p0, Landroidx/wear/widget/CurvedTextView;->f:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Landroidx/wear/widget/CurvedTextView;->f:Landroid/text/TextPaint;

    invoke-virtual {v2, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iput-object p1, p0, Landroidx/wear/widget/CurvedTextView;->t:Landroid/graphics/Typeface;

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result p1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    xor-int/lit8 p1, p1, -0x1

    and-int/2addr p1, p2

    iget-object p2, p0, Landroidx/wear/widget/CurvedTextView;->f:Landroid/text/TextPaint;

    and-int/lit8 v2, p1, 0x1

    if-eq v0, v2, :cond_5

    const/4 v0, 0x0

    goto :goto_3

    :cond_5
    :goto_3
    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    iget-object p2, p0, Landroidx/wear/widget/CurvedTextView;->f:Landroid/text/TextPaint;

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_6

    const/high16 p3, -0x41800000    # -0.25f

    goto :goto_4

    :cond_6
    :goto_4
    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setTextSkewX(F)V

    goto :goto_5

    :cond_7
    iget-object p2, p0, Landroidx/wear/widget/CurvedTextView;->f:Landroid/text/TextPaint;

    invoke-virtual {p2, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    iget-object p2, p0, Landroidx/wear/widget/CurvedTextView;->f:Landroid/text/TextPaint;

    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setTextSkewX(F)V

    if-eqz p1, :cond_8

    iget-object p2, p0, Landroidx/wear/widget/CurvedTextView;->f:Landroid/text/TextPaint;

    invoke-virtual {p2}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    :cond_8
    if-nez p1, :cond_a

    iget-object p2, p0, Landroidx/wear/widget/CurvedTextView;->f:Landroid/text/TextPaint;

    invoke-virtual {p2}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p2

    if-eqz p2, :cond_a

    :cond_9
    iget-object p2, p0, Landroidx/wear/widget/CurvedTextView;->f:Landroid/text/TextPaint;

    invoke-virtual {p2, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iput-object p1, p0, Landroidx/wear/widget/CurvedTextView;->t:Landroid/graphics/Typeface;

    :cond_a
    :goto_5
    invoke-virtual {p0}, Landroidx/wear/widget/CurvedTextView;->f()V

    return-void
.end method

.method private static final h(Landroid/content/res/TypedArray;Lavd;Z)V
    .locals 5

    const/4 v0, 0x3

    if-eqz p2, :cond_0

    sget-object v1, Lauv;->a:[I

    const/4 v1, 0x3

    goto :goto_0

    :cond_0
    sget-object v1, Lauv;->a:[I

    const/4 v1, 0x4

    :goto_0
    invoke-virtual {p0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p1, Lavd;->a:Landroid/content/res/ColorStateList;

    :cond_1
    xor-int/lit8 v1, p2, 0x1

    iget v2, p1, Lavd;->b:F

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v2, v2

    iput v2, p1, Lavd;->b:F

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v3, p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    :goto_1
    iget v4, p1, Lavd;->f:I

    invoke-virtual {p0, v0, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p1, Lavd;->f:I

    if-eq v3, p2, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x1

    :goto_2
    iget v0, p1, Lavd;->e:I

    invoke-virtual {p0, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p1, Lavd;->e:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    iget-boolean v0, p1, Lavd;->d:Z

    if-nez v0, :cond_4

    const/4 v0, 0x0

    iput-object v0, p1, Lavd;->c:Ljava/lang/String;

    :cond_4
    const/16 v0, 0xa

    if-eq v3, p2, :cond_5

    const/4 v2, 0x7

    goto :goto_3

    :cond_5
    const/16 v2, 0xa

    :goto_3
    invoke-virtual {p0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {p0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lavd;->c:Ljava/lang/String;

    iput-boolean v1, p1, Lavd;->d:Z

    :cond_6
    const/16 v1, 0xb

    if-eq v3, p2, :cond_7

    const/16 v2, 0xb

    goto :goto_4

    :cond_7
    const/16 v2, 0xe

    :goto_4
    iget v4, p1, Lavd;->g:I

    invoke-virtual {p0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p1, Lavd;->g:I

    if-eq v3, p2, :cond_8

    const/16 v1, 0x8

    goto :goto_5

    :cond_8
    :goto_5
    iget v2, p1, Lavd;->h:F

    invoke-virtual {p0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p1, Lavd;->h:F

    if-eq v3, p2, :cond_9

    const/16 v1, 0x9

    goto :goto_6

    :cond_9
    const/16 v1, 0xc

    :goto_6
    invoke-virtual {p0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {p0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lavd;->i:Ljava/lang/String;

    :cond_a
    if-eq v3, p2, :cond_b

    goto :goto_7

    :cond_b
    const/16 v0, 0xd

    :goto_7
    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lavd;->j:Ljava/lang/String;

    :cond_c
    return-void
.end method


# virtual methods
.method public final a()F
    .locals 1

    iget v0, p0, Landroidx/wear/widget/CurvedTextView;->l:F

    return v0
.end method

.method public final b()I
    .locals 2

    iget-object v0, p0, Landroidx/wear/widget/CurvedTextView;->f:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget-object v1, p0, Landroidx/wear/widget/CurvedTextView;->f:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public final c()V
    .locals 2

    iget v0, p0, Landroidx/wear/widget/CurvedTextView;->o:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroidx/wear/widget/CurvedTextView;->p:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CurvedTextView shall not set anchorAngleDegrees value when added into ArcLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CurvedTextView shall not set anchorType value when added intoArcLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d(F)V
    .locals 0

    iput p1, p0, Landroidx/wear/widget/CurvedTextView;->l:F

    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/CurvedTextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-boolean v3, v0, Landroidx/wear/widget/CurvedTextView;->a:Z

    const/high16 v4, 0x40000000    # 2.0f

    if-nez v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/CurvedTextView;->getTextAlignment()I

    move-result v3

    iget v5, v0, Landroidx/wear/widget/CurvedTextView;->m:I

    if-ne v3, v5, :cond_0

    move-object v3, v2

    goto/16 :goto_9

    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, v0, Landroidx/wear/widget/CurvedTextView;->a:Z

    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/CurvedTextView;->getTextAlignment()I

    move-result v5

    iput v5, v0, Landroidx/wear/widget/CurvedTextView;->m:I

    iget v5, v0, Landroidx/wear/widget/CurvedTextView;->k:F

    iget v6, v0, Landroidx/wear/widget/CurvedTextView;->r:F

    const/high16 v7, 0x43340000    # 180.0f

    const/4 v8, 0x1

    const-wide v9, 0x400921fb54442d18L    # Math.PI

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_1

    iget-object v3, v0, Landroidx/wear/widget/CurvedTextView;->b:Ljava/lang/String;

    iput-object v3, v0, Landroidx/wear/widget/CurvedTextView;->i:Ljava/lang/String;

    goto/16 :goto_2

    :cond_1
    div-float/2addr v6, v7

    float-to-double v5, v6

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v9

    iget v11, v0, Landroidx/wear/widget/CurvedTextView;->j:F

    float-to-double v11, v11

    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/CurvedTextView;->getPaddingLeft()I

    move-result v13

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v11

    double-to-int v5, v5

    sub-int/2addr v5, v13

    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/CurvedTextView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, v0, Landroidx/wear/widget/CurvedTextView;->b:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    iget-object v12, v0, Landroidx/wear/widget/CurvedTextView;->f:Landroid/text/TextPaint;

    invoke-static {v6, v3, v11, v12, v5}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v5

    iget-object v6, v0, Landroidx/wear/widget/CurvedTextView;->v:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v6}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    invoke-virtual {v5, v8}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    invoke-virtual {v5}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v5

    iget-object v6, v0, Landroidx/wear/widget/CurvedTextView;->v:Landroid/text/TextUtils$TruncateAt;

    if-nez v6, :cond_2

    iget-object v6, v0, Landroidx/wear/widget/CurvedTextView;->b:Ljava/lang/String;

    invoke-virtual {v5, v3}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v5

    invoke-virtual {v6, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    invoke-virtual {v5, v3}, Landroid/text/StaticLayout;->getEllipsisCount(I)I

    move-result v6

    if-nez v6, :cond_3

    iget-object v3, v0, Landroidx/wear/widget/CurvedTextView;->b:Ljava/lang/String;

    goto :goto_1

    :cond_3
    invoke-virtual {v5, v3}, Landroid/text/StaticLayout;->getEllipsisStart(I)I

    move-result v3

    iget-object v5, v0, Landroidx/wear/widget/CurvedTextView;->b:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    const/16 v11, 0x2026

    aput-char v11, v5, v3

    add-int/lit8 v11, v3, 0x1

    :goto_0
    add-int v12, v3, v6

    if-ge v11, v12, :cond_5

    if-ltz v11, :cond_4

    iget-object v12, v0, Landroidx/wear/widget/CurvedTextView;->b:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v11, v12, :cond_4

    const v12, 0xfeff

    aput-char v12, v5, v11

    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_5
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>([C)V

    :goto_1
    iput-object v3, v0, Landroidx/wear/widget/CurvedTextView;->i:Ljava/lang/String;

    iget v3, v0, Landroidx/wear/widget/CurvedTextView;->r:F

    iput v3, v0, Landroidx/wear/widget/CurvedTextView;->k:F

    :goto_2
    iget-boolean v3, v0, Landroidx/wear/widget/CurvedTextView;->u:Z

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    if-eq v8, v3, :cond_6

    const/high16 v3, -0x40800000    # -1.0f

    goto :goto_3

    :cond_6
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/CurvedTextView;->getTextAlignment()I

    move-result v8

    const/high16 v11, 0x3f000000    # 0.5f

    const/4 v12, 0x0

    packed-switch v8, :pswitch_data_0

    :pswitch_0
    const/high16 v6, 0x3f000000    # 0.5f

    goto :goto_4

    :pswitch_1
    goto :goto_4

    :pswitch_2
    const/4 v6, 0x0

    :goto_4
    iget v8, v0, Landroidx/wear/widget/CurvedTextView;->o:I

    packed-switch v8, :pswitch_data_1

    :pswitch_3
    const/4 v8, 0x0

    goto :goto_5

    :pswitch_4
    const/high16 v8, -0x41000000    # -0.5f

    goto :goto_5

    :pswitch_5
    const/high16 v8, 0x3f000000    # 0.5f

    :goto_5
    iget v13, v0, Landroidx/wear/widget/CurvedTextView;->p:F

    cmpl-float v5, v13, v5

    if-nez v5, :cond_7

    goto :goto_6

    :cond_7
    move v12, v13

    :goto_6
    mul-float v8, v8, v3

    iget v5, v0, Landroidx/wear/widget/CurvedTextView;->l:F

    mul-float v8, v8, v5

    add-float/2addr v12, v8

    iput v12, v0, Landroidx/wear/widget/CurvedTextView;->n:F

    neg-float v8, v3

    mul-float v11, v11, v8

    mul-float v11, v11, v5

    iget v12, v0, Landroidx/wear/widget/CurvedTextView;->k:F

    sub-float/2addr v5, v12

    mul-float v6, v6, v5

    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/CurvedTextView;->getPaddingLeft()I

    move-result v5

    int-to-float v5, v5

    iget v12, v0, Landroidx/wear/widget/CurvedTextView;->j:F

    div-float/2addr v5, v12

    float-to-double v12, v5

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v12, v9

    float-to-double v5, v6

    const-wide v14, 0x4066800000000000L    # 180.0

    mul-double v12, v12, v14

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v5, v12

    double-to-float v5, v5

    const/high16 v6, -0x3d4c0000    # -90.0f

    add-float/2addr v11, v6

    mul-float v5, v5, v3

    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/CurvedTextView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/CurvedTextView;->getHeight()I

    move-result v12

    int-to-float v12, v12

    iget-object v13, v0, Landroidx/wear/widget/CurvedTextView;->d:Landroid/graphics/Path;

    invoke-virtual {v13}, Landroid/graphics/Path;->reset()V

    iget-object v13, v0, Landroidx/wear/widget/CurvedTextView;->d:Landroid/graphics/Path;

    div-float/2addr v12, v4

    div-float/2addr v6, v4

    iget v4, v0, Landroidx/wear/widget/CurvedTextView;->j:F

    sub-float v17, v6, v4

    sub-float v18, v12, v4

    add-float v19, v6, v4

    add-float v20, v12, v4

    iget v4, v0, Landroidx/wear/widget/CurvedTextView;->k:F

    mul-float v22, v3, v4

    add-float v21, v11, v5

    move-object/from16 v16, v13

    invoke-virtual/range {v16 .. v22}, Landroid/graphics/Path;->addArc(FFFFFF)V

    if-eqz v2, :cond_a

    iget-object v4, v0, Landroidx/wear/widget/CurvedTextView;->e:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    iget v4, v0, Landroidx/wear/widget/CurvedTextView;->j:F

    iget-object v5, v0, Landroidx/wear/widget/CurvedTextView;->f:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Paint$FontMetrics;->descent:F

    mul-float v5, v5, v3

    sub-float/2addr v4, v5

    iget v5, v0, Landroidx/wear/widget/CurvedTextView;->j:F

    iget-object v13, v0, Landroidx/wear/widget/CurvedTextView;->f:Landroid/text/TextPaint;

    invoke-virtual {v13}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v13

    iget v13, v13, Landroid/graphics/Paint$FontMetrics;->ascent:F

    mul-float v13, v13, v3

    sub-float/2addr v5, v13

    iget-object v13, v0, Landroidx/wear/widget/CurvedTextView;->e:Landroid/graphics/Path;

    sub-float v17, v6, v5

    sub-float v18, v12, v5

    add-float v19, v6, v5

    add-float v20, v12, v5

    iget v7, v0, Landroidx/wear/widget/CurvedTextView;->l:F

    mul-float v22, v3, v7

    const/16 v23, 0x0

    move-object/from16 v16, v13

    move/from16 v21, v11

    invoke-virtual/range {v16 .. v23}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    iget-object v7, v0, Landroidx/wear/widget/CurvedTextView;->e:Landroid/graphics/Path;

    sub-float v25, v6, v4

    sub-float v26, v12, v4

    add-float v27, v6, v4

    add-float v28, v12, v4

    iget v13, v0, Landroidx/wear/widget/CurvedTextView;->l:F

    mul-float v16, v3, v13

    add-float v29, v11, v16

    mul-float v30, v8, v13

    const/16 v31, 0x0

    move-object/from16 v24, v7

    invoke-virtual/range {v24 .. v31}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    iget-object v7, v0, Landroidx/wear/widget/CurvedTextView;->e:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->close()V

    float-to-double v7, v6

    float-to-double v14, v11

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v14, v14, v9

    const-wide v16, 0x4066800000000000L    # 180.0

    div-double v14, v14, v16

    float-to-double v9, v5

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v20, v20, v9

    move-object v13, v2

    float-to-double v1, v4

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v22, v22, v1

    move/from16 v24, v6

    move-wide/from16 v25, v7

    float-to-double v6, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v27

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v27, v27, v9

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v14, v14, v1

    iget v8, v0, Landroidx/wear/widget/CurvedTextView;->l:F

    mul-float v3, v3, v8

    add-float/2addr v11, v3

    move-object v3, v13

    move-wide/from16 v29, v14

    float-to-double v13, v11

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    const-wide v18, 0x400921fb54442d18L    # Math.PI

    mul-double v13, v13, v18

    const-wide v15, 0x4066800000000000L    # 180.0

    div-double/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v9, v9, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v13

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget-object v5, v0, Landroidx/wear/widget/CurvedTextView;->h:Landroid/graphics/Rect;

    sub-float/2addr v12, v4

    float-to-int v8, v12

    iput v8, v5, Landroid/graphics/Rect;->top:I

    iget-object v5, v0, Landroidx/wear/widget/CurvedTextView;->h:Landroid/graphics/Rect;

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    add-double v14, v6, v29

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    add-double v6, v6, v27

    double-to-float v6, v6

    double-to-float v7, v14

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    float-to-int v6, v6

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v5, v0, Landroidx/wear/widget/CurvedTextView;->h:Landroid/graphics/Rect;

    iget v6, v0, Landroidx/wear/widget/CurvedTextView;->l:F

    const/high16 v7, 0x43340000    # 180.0f

    cmpl-float v6, v6, v7

    invoke-static/range {v25 .. v26}, Ljava/lang/Double;->isNaN(D)Z

    add-double v7, v25, v9

    double-to-float v7, v7

    invoke-static/range {v25 .. v26}, Ljava/lang/Double;->isNaN(D)Z

    add-double v8, v25, v20

    double-to-float v8, v8

    invoke-static/range {v25 .. v26}, Ljava/lang/Double;->isNaN(D)Z

    add-double v9, v25, v22

    double-to-float v9, v9

    invoke-static/range {v25 .. v26}, Ljava/lang/Double;->isNaN(D)Z

    add-double v1, v25, v1

    double-to-float v1, v1

    if-ltz v6, :cond_8

    sub-float v6, v24, v4

    float-to-int v2, v6

    goto :goto_7

    :cond_8
    invoke-static {v7, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v9, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v8, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    float-to-int v2, v2

    :goto_7
    iput v2, v5, Landroid/graphics/Rect;->left:I

    iget-object v2, v0, Landroidx/wear/widget/CurvedTextView;->h:Landroid/graphics/Rect;

    iget v5, v0, Landroidx/wear/widget/CurvedTextView;->l:F

    const/high16 v6, 0x43340000    # 180.0f

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_9

    add-float v6, v24, v4

    float-to-int v1, v6

    goto :goto_8

    :cond_9
    invoke-static {v7, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v9, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v8, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    :goto_8
    iput v1, v2, Landroid/graphics/Rect;->right:I

    goto :goto_9

    :cond_a
    move-object v3, v2

    :goto_9
    iget v1, v0, Landroidx/wear/widget/CurvedTextView;->n:F

    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/CurvedTextView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/CurvedTextView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    div-float/2addr v4, v5

    move-object/from16 v5, p1

    invoke-virtual {v5, v1, v2, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    if-eqz v3, :cond_b

    iget-object v1, v0, Landroidx/wear/widget/CurvedTextView;->e:Landroid/graphics/Path;

    invoke-virtual {v5, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/CurvedTextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, v0, Landroidx/wear/widget/CurvedTextView;->h:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_b
    invoke-super/range {p0 .. p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final e(FF)Z
    .locals 5

    invoke-virtual {p0}, Landroidx/wear/widget/CurvedTextView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroidx/wear/widget/CurvedTextView;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    iget-boolean v1, p0, Landroidx/wear/widget/CurvedTextView;->u:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroidx/wear/widget/CurvedTextView;->getPaddingTop()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/wear/widget/CurvedTextView;->getPaddingBottom()I

    move-result v1

    :goto_0
    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    iget-object v3, p0, Landroidx/wear/widget/CurvedTextView;->f:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->descent:F

    int-to-float v1, v1

    sub-float/2addr v0, v1

    sub-float v1, v0, v3

    iget-object v3, p0, Landroidx/wear/widget/CurvedTextView;->f:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->ascent:F

    add-float/2addr v1, v3

    invoke-virtual {p0}, Landroidx/wear/widget/CurvedTextView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr p1, v3

    invoke-virtual {p0}, Landroidx/wear/widget/CurvedTextView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr p2, v3

    mul-float v3, p1, p1

    mul-float v4, p2, p2

    add-float/2addr v3, v4

    mul-float v1, v1, v1

    const/4 v4, 0x0

    cmpg-float v1, v3, v1

    if-ltz v1, :cond_3

    mul-float v0, v0, v0

    cmpl-float v0, v3, v0

    if-lez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double v0, p1

    neg-float p1, p2

    float-to-double p1, p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p1

    double-to-float p1, p1

    iget p2, p0, Landroidx/wear/widget/CurvedTextView;->l:F

    div-float/2addr p2, v2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v4

    :cond_3
    :goto_1
    return v4
.end method

.method public final f()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/wear/widget/CurvedTextView;->a:Z

    invoke-virtual {p0}, Landroidx/wear/widget/CurvedTextView;->requestLayout()V

    invoke-virtual {p0}, Landroidx/wear/widget/CurvedTextView;->postInvalidate()V

    return-void
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    iget-object v0, p0, Landroidx/wear/widget/CurvedTextView;->f:Landroid/text/TextPaint;

    iget v1, p0, Landroidx/wear/widget/CurvedTextView;->c:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v0, p0, Landroidx/wear/widget/CurvedTextView;->f:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v3, p0, Landroidx/wear/widget/CurvedTextView;->i:Ljava/lang/String;

    iget-object v4, p0, Landroidx/wear/widget/CurvedTextView;->d:Landroid/graphics/Path;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Landroidx/wear/widget/CurvedTextView;->f:Landroid/text/TextPaint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object v0, p0, Landroidx/wear/widget/CurvedTextView;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected final onMeasure(II)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    iget-object p1, p0, Landroidx/wear/widget/CurvedTextView;->f:Landroid/text/TextPaint;

    iget-object p2, p0, Landroidx/wear/widget/CurvedTextView;->b:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Landroidx/wear/widget/CurvedTextView;->g:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2, v0, v1}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroidx/wear/widget/CurvedTextView;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroidx/wear/widget/CurvedTextView;->getMeasuredHeight()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    iget-boolean p2, p0, Landroidx/wear/widget/CurvedTextView;->u:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Landroidx/wear/widget/CurvedTextView;->f:Landroid/text/TextPaint;

    invoke-virtual {p2}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    invoke-virtual {p0}, Landroidx/wear/widget/CurvedTextView;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p2, v0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Landroidx/wear/widget/CurvedTextView;->f:Landroid/text/TextPaint;

    invoke-virtual {p2}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Paint$FontMetrics;->descent:F

    neg-float p2, p2

    invoke-virtual {p0}, Landroidx/wear/widget/CurvedTextView;->getPaddingBottom()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p2, v0

    :goto_0
    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    add-float/2addr p1, p2

    iput p1, p0, Landroidx/wear/widget/CurvedTextView;->j:F

    iget-object p1, p0, Landroidx/wear/widget/CurvedTextView;->g:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroidx/wear/widget/CurvedTextView;->getPaddingLeft()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Landroidx/wear/widget/CurvedTextView;->getPaddingRight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroidx/wear/widget/CurvedTextView;->j:F

    add-float/2addr p1, p2

    add-float/2addr p1, v0

    div-float/2addr p1, v1

    const p2, 0x40490fdb    # (float)Math.PI

    div-float/2addr p1, p2

    const/high16 p2, 0x43340000    # 180.0f

    mul-float p1, p1, p2

    const p2, 0x43b3f333    # 359.9f

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Landroidx/wear/widget/CurvedTextView;->k:F

    iget p2, p0, Landroidx/wear/widget/CurvedTextView;->r:F

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iget p2, p0, Landroidx/wear/widget/CurvedTextView;->q:F

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Landroidx/wear/widget/CurvedTextView;->l:F

    return-void
.end method

.method public final onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Landroidx/wear/widget/CurvedTextView;->b:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected final onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Landroidx/wear/widget/CurvedTextView;->f()V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 16

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroidx/wear/widget/CurvedTextView;->w:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/CurvedTextView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v1, v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/CurvedTextView;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, v0, Landroidx/wear/widget/CurvedTextView;->n:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    neg-double v4, v4

    float-to-double v6, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v6

    float-to-double v10, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v12, v12, v10

    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/CurvedTextView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v14

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v10, v3

    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/CurvedTextView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget-boolean v4, v0, Landroidx/wear/widget/CurvedTextView;->w:Z

    add-double/2addr v6, v10

    int-to-double v10, v3

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v6, v10

    sub-double/2addr v8, v12

    int-to-double v10, v1

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v8, v10

    double-to-float v1, v8

    double-to-float v3, v6

    const/4 v5, 0x1

    if-nez v4, :cond_2

    invoke-virtual {v0, v1, v3}, Landroidx/wear/widget/CurvedTextView;->e(FF)Z

    move-result v4

    if-eqz v4, :cond_2

    iput-boolean v5, v0, Landroidx/wear/widget/CurvedTextView;->w:Z

    :cond_2
    iget-boolean v4, v0, Landroidx/wear/widget/CurvedTextView;->w:Z

    if-eqz v4, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-eq v4, v5, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_4

    :cond_3
    iput-boolean v2, v0, Landroidx/wear/widget/CurvedTextView;->w:Z

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v3, v2

    move-object/from16 v2, p1

    invoke-virtual {v2, v1, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    :cond_5
    return v2
.end method
