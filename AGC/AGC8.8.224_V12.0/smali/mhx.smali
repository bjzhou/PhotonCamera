.class public final Lmhx;
.super Ljava/lang/Object;


# instance fields
.field public final A:Landroid/text/TextPaint;

.field public B:Landroid/animation/TimeInterpolator;

.field public C:Landroid/animation/TimeInterpolator;

.field public D:F

.field public E:I

.field public F:F

.field public G:Lbza;

.field public H:Lbza;

.field private final I:Landroid/graphics/RectF;

.field private J:F

.field private K:F

.field private L:F

.field private M:F

.field private N:F

.field private O:F

.field private P:F

.field private Q:Landroid/graphics/Typeface;

.field private R:Z

.field private S:F

.field private T:F

.field private U:F

.field private V:F

.field private W:F

.field private X:I

.field private final Y:Landroid/text/TextPaint;

.field private Z:F

.field public final a:Landroid/view/View;

.field private aa:F

.field private ab:F

.field private ac:Landroid/content/res/ColorStateList;

.field private ad:F

.field private ae:F

.field private af:F

.field private ag:Landroid/content/res/ColorStateList;

.field private ah:F

.field private ai:F

.field private aj:Landroid/text/StaticLayout;

.field private ak:F

.field private al:F

.field private am:F

.field private an:Ljava/lang/CharSequence;

.field public b:F

.field public c:Z

.field public d:F

.field public e:F

.field public f:I

.field public final g:Landroid/graphics/Rect;

.field public final h:Landroid/graphics/Rect;

.field public i:I

.field public j:I

.field public k:F

.field public l:Landroid/content/res/ColorStateList;

.field public m:Landroid/content/res/ColorStateList;

.field public n:I

.field public o:Landroid/graphics/Typeface;

.field public p:Landroid/graphics/Typeface;

.field public q:Landroid/graphics/Typeface;

.field public r:Landroid/graphics/Typeface;

.field public s:Landroid/graphics/Typeface;

.field public t:Landroid/graphics/Typeface;

.field public u:Landroid/text/TextUtils$TruncateAt;

.field public v:Ljava/lang/CharSequence;

.field public w:Ljava/lang/CharSequence;

.field public x:Z

.field public y:[I

.field public z:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    iput v0, p0, Lmhx;->i:I

    iput v0, p0, Lmhx;->j:I

    const/high16 v0, 0x41700000    # 15.0f

    iput v0, p0, Lmhx;->k:F

    iput v0, p0, Lmhx;->J:F

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    iput-object v0, p0, Lmhx;->u:Landroid/text/TextUtils$TruncateAt;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmhx;->x:Z

    iput v0, p0, Lmhx;->E:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lmhx;->F:F

    iput-object p1, p0, Lmhx;->a:Landroid/view/View;

    new-instance v0, Landroid/text/TextPaint;

    const/16 v1, 0x81

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lmhx;->Y:Landroid/text/TextPaint;

    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1, v0}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, p0, Lmhx;->A:Landroid/text/TextPaint;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmhx;->h:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmhx;->g:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lmhx;->I:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lmhx;->a()F

    move-result v0

    iput v0, p0, Lmhx;->e:F

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmhx;->e(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public static j(Landroid/graphics/Rect;IIII)Z
    .locals 1

    iget v0, p0, Landroid/graphics/Rect;->left:I

    if-ne v0, p1, :cond_0

    iget p1, p0, Landroid/graphics/Rect;->top:I

    if-ne p1, p2, :cond_0

    iget p1, p0, Landroid/graphics/Rect;->right:I

    if-ne p1, p3, :cond_0

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    if-ne p0, p4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static k(FFFLandroid/animation/TimeInterpolator;)F
    .locals 0

    if-eqz p3, :cond_0

    invoke-interface {p3, p2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p2

    :cond_0
    sget-object p3, Lmev;->a:Landroid/animation/TimeInterpolator;

    sub-float/2addr p1, p0

    mul-float p2, p2, p1

    add-float/2addr p0, p2

    return p0
.end method

.method private static l(IIF)I
    .locals 7

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    int-to-float v5, v5

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float p0, p0

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v6, p2

    mul-float v0, v0, v6

    mul-float v1, v1, p2

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-float v2, v2, v6

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-float v4, v4, v6

    mul-float v5, v5, p2

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v2

    mul-float p0, p0, v6

    mul-float p1, p1, p2

    add-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-static {v0, v1, v2, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method private final m(Landroid/content/res/ColorStateList;)I
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lmhx;->y:[I

    if-eqz v1, :cond_1

    invoke-virtual {p1, v1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    return p1

    :cond_1
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    return p1
.end method

.method private final n(FZ)V
    .locals 12

    iget-object v0, p0, Lmhx;->v:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lmhx;->h:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lmhx;->g:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {p1, v2}, Lmhx;->p(FF)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    iget p1, p0, Lmhx;->J:F

    iget p2, p0, Lmhx;->ah:F

    iput v2, p0, Lmhx;->S:F

    iget-object v1, p0, Lmhx;->o:Landroid/graphics/Typeface;

    goto :goto_2

    :cond_1
    iget v3, p0, Lmhx;->k:F

    iget v5, p0, Lmhx;->D:F

    iget-object v6, p0, Lmhx;->r:Landroid/graphics/Typeface;

    invoke-static {p1, v4}, Lmhx;->p(FF)Z

    move-result v7

    if-eqz v7, :cond_2

    iput v2, p0, Lmhx;->S:F

    goto :goto_0

    :cond_2
    iget v7, p0, Lmhx;->k:F

    iget v8, p0, Lmhx;->J:F

    iget-object v9, p0, Lmhx;->C:Landroid/animation/TimeInterpolator;

    invoke-static {v7, v8, p1, v9}, Lmhx;->k(FFFLandroid/animation/TimeInterpolator;)F

    move-result p1

    iget v7, p0, Lmhx;->k:F

    div-float/2addr p1, v7

    iput p1, p0, Lmhx;->S:F

    :goto_0
    iget p1, p0, Lmhx;->J:F

    iget v7, p0, Lmhx;->k:F

    div-float/2addr p1, v7

    mul-float v7, v1, p1

    if-eqz p2, :cond_3

    move v0, v1

    move p1, v3

    move p2, v5

    move-object v1, v6

    goto :goto_2

    :cond_3
    cmpl-float p2, v7, v0

    if-lez p2, :cond_4

    div-float/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    move v0, p1

    goto :goto_1

    :cond_4
    move v0, v1

    :goto_1
    move p1, v3

    move p2, v5

    move-object v1, v6

    :goto_2
    const/4 v3, 0x0

    const/4 v5, 0x1

    cmpl-float v6, v0, v4

    if-lez v6, :cond_9

    iget v6, p0, Lmhx;->T:F

    iget v7, p0, Lmhx;->ai:F

    iget-object v8, p0, Lmhx;->Q:Landroid/graphics/Typeface;

    iget-object v9, p0, Lmhx;->aj:Landroid/text/StaticLayout;

    if-eqz v9, :cond_5

    invoke-virtual {v9}, Landroid/text/StaticLayout;->getWidth()I

    move-result v9

    int-to-float v9, v9

    cmpl-float v9, v0, v9

    if-eqz v9, :cond_5

    const/4 v9, 0x1

    goto :goto_3

    :cond_5
    const/4 v9, 0x0

    :goto_3
    cmpl-float v6, v6, p1

    if-nez v6, :cond_7

    cmpl-float v6, v7, p2

    if-nez v6, :cond_7

    if-nez v9, :cond_7

    if-ne v8, v1, :cond_7

    iget-boolean v6, p0, Lmhx;->z:Z

    if-eqz v6, :cond_6

    const/4 v6, 0x1

    goto :goto_4

    :cond_6
    const/4 v6, 0x0

    goto :goto_4

    :cond_7
    const/4 v6, 0x1

    :goto_4
    iput p1, p0, Lmhx;->T:F

    iput p2, p0, Lmhx;->ai:F

    iput-object v1, p0, Lmhx;->Q:Landroid/graphics/Typeface;

    iput-boolean v3, p0, Lmhx;->z:Z

    iget-object p1, p0, Lmhx;->Y:Landroid/text/TextPaint;

    iget p2, p0, Lmhx;->S:F

    cmpl-float p2, p2, v2

    if-eqz p2, :cond_8

    const/4 p2, 0x1

    goto :goto_5

    :cond_8
    const/4 p2, 0x0

    :goto_5
    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setLinearText(Z)V

    goto :goto_6

    :cond_9
    const/4 v6, 0x0

    :goto_6
    iget-object p1, p0, Lmhx;->w:Ljava/lang/CharSequence;

    if-eqz p1, :cond_b

    if-eqz v6, :cond_a

    goto :goto_7

    :cond_a
    return-void

    :cond_b
    :goto_7
    iget-object p1, p0, Lmhx;->Y:Landroid/text/TextPaint;

    iget p2, p0, Lmhx;->T:F

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object p1, p0, Lmhx;->Y:Landroid/text/TextPaint;

    iget-object p2, p0, Lmhx;->Q:Landroid/graphics/Typeface;

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object p1, p0, Lmhx;->Y:Landroid/text/TextPaint;

    iget p2, p0, Lmhx;->ai:F

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    iget-object p1, p0, Lmhx;->v:Ljava/lang/CharSequence;

    iget-object p2, p0, Lmhx;->a:Landroid/view/View;

    invoke-static {p2}, Lafc;->c(Landroid/view/View;)I

    move-result p2

    iget-boolean v1, p0, Lmhx;->x:Z

    if-ne p2, v5, :cond_c

    const/4 p2, 0x1

    goto :goto_8

    :cond_c
    const/4 p2, 0x0

    :goto_8
    if-eqz v1, :cond_10

    if-eqz p2, :cond_d

    sget-object p2, Ladz;->b:Llpg;

    goto :goto_9

    :cond_d
    sget-object p2, Ladz;->a:Llpg;

    :goto_9
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-eqz p1, :cond_f

    if-ltz v1, :cond_f

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    sub-int/2addr v6, v1

    if-ltz v6, :cond_f

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x2

    :goto_a
    if-ge v7, v1, :cond_e

    if-ne v8, v6, :cond_e

    invoke-interface {p1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v8

    sparse-switch v8, :sswitch_data_0

    const/4 v8, 0x2

    goto :goto_b

    :sswitch_0
    const/4 v8, 0x0

    goto :goto_b

    :sswitch_1
    const/4 v8, 0x1

    :goto_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    :cond_e
    packed-switch v8, :pswitch_data_0

    iget-boolean p2, p2, Llpg;->a:Z

    goto :goto_c

    :pswitch_0
    const/4 p2, 0x0

    goto :goto_c

    :pswitch_1
    const/4 p2, 0x1

    goto :goto_c

    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_10
    :goto_c
    iput-boolean p2, p0, Lmhx;->R:Z

    invoke-direct {p0}, Lmhx;->q()Z

    move-result p1

    if-eqz p1, :cond_11

    iget p1, p0, Lmhx;->E:I

    goto :goto_d

    :cond_11
    const/4 p1, 0x1

    :goto_d
    if-ne p1, v5, :cond_12

    :try_start_0
    sget-object p1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    move-object v1, p1

    const/4 p1, 0x1

    goto :goto_10

    :cond_12
    iget v1, p0, Lmhx;->i:I

    invoke-static {v1, p2}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v1

    and-int/lit8 v1, v1, 0x7

    sparse-switch v1, :sswitch_data_1

    iget-boolean v1, p0, Lmhx;->R:Z

    goto :goto_f

    :sswitch_2
    iget-boolean v1, p0, Lmhx;->R:Z

    if-eqz v1, :cond_14

    :cond_13
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_10

    :cond_14
    :goto_e
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_10

    :sswitch_3
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_10

    :goto_f
    if-eqz v1, :cond_13

    goto :goto_e

    :goto_10
    iget-object v6, p0, Lmhx;->v:Ljava/lang/CharSequence;

    iget-object v7, p0, Lmhx;->Y:Landroid/text/TextPaint;

    float-to-int v0, v0

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v8

    iget-object v9, p0, Lmhx;->u:Landroid/text/TextUtils$TruncateAt;

    iget v10, p0, Lmhx;->F:F

    if-nez v6, :cond_15

    const-string v6, ""

    goto :goto_11

    :cond_15
    :goto_11
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-ne p1, v5, :cond_16

    int-to-float p1, v0

    invoke-static {v6, v7, p1, v9}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v6

    const/4 p1, 0x1

    :cond_16
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v11

    invoke-static {v11, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    if-eqz p2, :cond_17

    if-ne p1, v5, :cond_17

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    :cond_17
    invoke-static {v6, v3, v8, v7, v0}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    invoke-virtual {v0, v3}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    if-eqz p2, :cond_18

    sget-object p2, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_12

    :cond_18
    sget-object p2, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    :goto_12
    invoke-virtual {v0, p2}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    if-eqz v9, :cond_19

    invoke-virtual {v0, v9}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    :cond_19
    invoke-virtual {v0, p1}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    cmpl-float p2, v10, v2

    if-eqz p2, :cond_1a

    invoke-virtual {v0, v4, v10}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    :cond_1a
    if-le p1, v5, :cond_1b

    invoke-virtual {v0, v5}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    :cond_1b
    invoke-virtual {v0}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object p1
    :try_end_0
    .catch Lmid; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_13

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lmid;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v0, "CollapsingTextHelper"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    :goto_13
    invoke-static {p1}, Labf;->c(Ljava/lang/Object;)V

    iput-object p1, p0, Lmhx;->aj:Landroid/text/StaticLayout;

    invoke-virtual {p1}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lmhx;->w:Ljava/lang/CharSequence;

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0xe -> :sswitch_1
        0xf -> :sswitch_1
        0x10 -> :sswitch_0
        0x11 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_3
        0x5 -> :sswitch_2
    .end sparse-switch
.end method

.method private final o(F)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmhx;->n(FZ)V

    iget-object p1, p0, Lmhx;->a:Landroid/view/View;

    invoke-static {p1}, Lafb;->g(Landroid/view/View;)V

    return-void
.end method

.method private static p(FF)Z
    .locals 0

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const p1, 0x3727c5ac    # 1.0E-5f

    cmpg-float p0, p0, p1

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final q()Z
    .locals 2

    iget v0, p0, Lmhx;->E:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    iget-boolean v0, p0, Lmhx;->R:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmhx;->c:Z

    if-eqz v0, :cond_1

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static final r(Landroid/text/TextPaint;Ljava/lang/CharSequence;)F
    .locals 2

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result p0

    return p0
.end method


# virtual methods
.method public final a()F
    .locals 3

    iget v0, p0, Lmhx;->d:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Lmhx;->m:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0}, Lmhx;->m(Landroid/content/res/ColorStateList;)I

    move-result v0

    return v0
.end method

.method public final c()V
    .locals 8

    iget v0, p0, Lmhx;->b:F

    iget-boolean v1, p0, Lmhx;->c:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmhx;->I:Landroid/graphics/RectF;

    iget v2, p0, Lmhx;->e:F

    cmpg-float v2, v0, v2

    if-gez v2, :cond_0

    iget-object v2, p0, Lmhx;->g:Landroid/graphics/Rect;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lmhx;->h:Landroid/graphics/Rect;

    :goto_0
    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lmhx;->I:Landroid/graphics/RectF;

    iget-object v2, p0, Lmhx;->g:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lmhx;->h:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget-object v4, p0, Lmhx;->B:Landroid/animation/TimeInterpolator;

    invoke-static {v2, v3, v0, v4}, Lmhx;->k(FFFLandroid/animation/TimeInterpolator;)F

    move-result v2

    iput v2, v1, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lmhx;->I:Landroid/graphics/RectF;

    iget v2, p0, Lmhx;->K:F

    iget v3, p0, Lmhx;->L:F

    iget-object v4, p0, Lmhx;->B:Landroid/animation/TimeInterpolator;

    invoke-static {v2, v3, v0, v4}, Lmhx;->k(FFFLandroid/animation/TimeInterpolator;)F

    move-result v2

    iput v2, v1, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lmhx;->I:Landroid/graphics/RectF;

    iget-object v2, p0, Lmhx;->g:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget-object v3, p0, Lmhx;->h:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget-object v4, p0, Lmhx;->B:Landroid/animation/TimeInterpolator;

    invoke-static {v2, v3, v0, v4}, Lmhx;->k(FFFLandroid/animation/TimeInterpolator;)F

    move-result v2

    iput v2, v1, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lmhx;->I:Landroid/graphics/RectF;

    iget-object v2, p0, Lmhx;->g:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget-object v3, p0, Lmhx;->h:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    iget-object v4, p0, Lmhx;->B:Landroid/animation/TimeInterpolator;

    invoke-static {v2, v3, v0, v4}, Lmhx;->k(FFFLandroid/animation/TimeInterpolator;)F

    move-result v2

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    :goto_1
    iget-boolean v1, p0, Lmhx;->c:Z

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_3

    iget v1, p0, Lmhx;->e:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    iget v1, p0, Lmhx;->M:F

    iput v1, p0, Lmhx;->O:F

    iget v1, p0, Lmhx;->K:F

    iput v1, p0, Lmhx;->P:F

    invoke-direct {p0, v2}, Lmhx;->o(F)V

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    iget v1, p0, Lmhx;->N:F

    iput v1, p0, Lmhx;->O:F

    iget v1, p0, Lmhx;->L:F

    iget v4, p0, Lmhx;->f:I

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v1, v4

    iput v1, p0, Lmhx;->P:F

    invoke-direct {p0, v3}, Lmhx;->o(F)V

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_3
    iget v1, p0, Lmhx;->M:F

    iget v4, p0, Lmhx;->N:F

    iget-object v5, p0, Lmhx;->B:Landroid/animation/TimeInterpolator;

    invoke-static {v1, v4, v0, v5}, Lmhx;->k(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iput v1, p0, Lmhx;->O:F

    iget v1, p0, Lmhx;->K:F

    iget v4, p0, Lmhx;->L:F

    iget-object v5, p0, Lmhx;->B:Landroid/animation/TimeInterpolator;

    invoke-static {v1, v4, v0, v5}, Lmhx;->k(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iput v1, p0, Lmhx;->P:F

    invoke-direct {p0, v0}, Lmhx;->o(F)V

    move v1, v0

    :goto_2
    sub-float v4, v3, v0

    sget-object v5, Lmev;->b:Landroid/animation/TimeInterpolator;

    invoke-static {v2, v3, v4, v5}, Lmhx;->k(FFFLandroid/animation/TimeInterpolator;)F

    move-result v4

    sub-float v4, v3, v4

    iput v4, p0, Lmhx;->al:F

    iget-object v4, p0, Lmhx;->a:Landroid/view/View;

    invoke-static {v4}, Lafb;->g(Landroid/view/View;)V

    sget-object v4, Lmev;->b:Landroid/animation/TimeInterpolator;

    invoke-static {v3, v2, v0, v4}, Lmhx;->k(FFFLandroid/animation/TimeInterpolator;)F

    move-result v4

    iput v4, p0, Lmhx;->am:F

    iget-object v4, p0, Lmhx;->a:Landroid/view/View;

    invoke-static {v4}, Lafb;->g(Landroid/view/View;)V

    iget-object v4, p0, Lmhx;->m:Landroid/content/res/ColorStateList;

    iget-object v5, p0, Lmhx;->l:Landroid/content/res/ColorStateList;

    if-eq v4, v5, :cond_4

    iget-object v4, p0, Lmhx;->Y:Landroid/text/TextPaint;

    invoke-direct {p0, v5}, Lmhx;->m(Landroid/content/res/ColorStateList;)I

    move-result v5

    invoke-virtual {p0}, Lmhx;->b()I

    move-result v6

    invoke-static {v5, v6, v1}, Lmhx;->l(IIF)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lmhx;->Y:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lmhx;->b()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/text/TextPaint;->setColor(I)V

    :goto_3
    iget v1, p0, Lmhx;->ah:F

    iget v4, p0, Lmhx;->D:F

    cmpl-float v5, v1, v4

    if-eqz v5, :cond_5

    iget-object v5, p0, Lmhx;->Y:Landroid/text/TextPaint;

    sget-object v6, Lmev;->b:Landroid/animation/TimeInterpolator;

    invoke-static {v4, v1, v0, v6}, Lmhx;->k(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    invoke-virtual {v5, v1}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    goto :goto_4

    :cond_5
    iget-object v4, p0, Lmhx;->Y:Landroid/text/TextPaint;

    invoke-virtual {v4, v1}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    :goto_4
    iget v1, p0, Lmhx;->ad:F

    iget v4, p0, Lmhx;->Z:F

    const/4 v5, 0x0

    invoke-static {v1, v4, v0, v5}, Lmhx;->k(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iput v1, p0, Lmhx;->U:F

    iget v1, p0, Lmhx;->ae:F

    iget v4, p0, Lmhx;->aa:F

    invoke-static {v1, v4, v0, v5}, Lmhx;->k(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iput v1, p0, Lmhx;->V:F

    iget v1, p0, Lmhx;->af:F

    iget v4, p0, Lmhx;->ab:F

    invoke-static {v1, v4, v0, v5}, Lmhx;->k(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iput v1, p0, Lmhx;->W:F

    iget-object v1, p0, Lmhx;->ag:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lmhx;->m(Landroid/content/res/ColorStateList;)I

    move-result v1

    iget-object v4, p0, Lmhx;->ac:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v4}, Lmhx;->m(Landroid/content/res/ColorStateList;)I

    move-result v4

    invoke-static {v1, v4, v0}, Lmhx;->l(IIF)I

    move-result v1

    iput v1, p0, Lmhx;->X:I

    iget-object v4, p0, Lmhx;->Y:Landroid/text/TextPaint;

    iget v5, p0, Lmhx;->U:F

    iget v6, p0, Lmhx;->V:F

    iget v7, p0, Lmhx;->W:F

    invoke-virtual {v4, v5, v6, v7, v1}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    iget-boolean v1, p0, Lmhx;->c:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lmhx;->Y:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getAlpha()I

    move-result v1

    iget v4, p0, Lmhx;->e:F

    cmpg-float v5, v0, v4

    if-gtz v5, :cond_6

    iget v5, p0, Lmhx;->d:F

    invoke-static {v3, v2, v5, v4, v0}, Lmev;->a(FFFFF)F

    move-result v0

    goto :goto_5

    :cond_6
    invoke-static {v2, v3, v4, v3, v0}, Lmev;->a(FFFFF)F

    move-result v0

    :goto_5
    int-to-float v1, v1

    iget-object v2, p0, Lmhx;->Y:Landroid/text/TextPaint;

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setAlpha(I)V

    :cond_7
    iget-object v0, p0, Lmhx;->a:Landroid/view/View;

    invoke-static {v0}, Lafb;->g(Landroid/view/View;)V

    return-void
.end method

.method public final d(Landroid/graphics/Canvas;)V
    .locals 11

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v7

    iget-object v0, p0, Lmhx;->w:Ljava/lang/CharSequence;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lmhx;->I:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    iget-object v0, p0, Lmhx;->I:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    iget-object v0, p0, Lmhx;->Y:Landroid/text/TextPaint;

    iget v1, p0, Lmhx;->T:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    iget v0, p0, Lmhx;->O:F

    iget v1, p0, Lmhx;->P:F

    iget v2, p0, Lmhx;->S:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lmhx;->c:Z

    if-nez v3, :cond_0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_0
    invoke-direct {p0}, Lmhx;->q()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lmhx;->c:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lmhx;->b:F

    iget v3, p0, Lmhx;->e:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5

    :cond_1
    iget v0, p0, Lmhx;->O:F

    iget-object v2, p0, Lmhx;->aj:Landroid/text/StaticLayout;

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget-object v2, p0, Lmhx;->Y:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getAlpha()I

    move-result v9

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-boolean v0, p0, Lmhx;->c:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lmhx;->Y:Landroid/text/TextPaint;

    iget v1, p0, Lmhx;->am:F

    int-to-float v2, v9

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAlpha(I)V

    iget-object v0, p0, Lmhx;->Y:Landroid/text/TextPaint;

    iget v1, p0, Lmhx;->U:F

    iget v2, p0, Lmhx;->V:F

    iget v3, p0, Lmhx;->W:F

    iget v4, p0, Lmhx;->X:I

    invoke-virtual {v0}, Landroid/text/TextPaint;->getAlpha()I

    move-result v5

    invoke-static {v4, v5}, Lkwp;->k(II)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    iget-object v0, p0, Lmhx;->aj:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    iget-boolean v0, p0, Lmhx;->c:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lmhx;->Y:Landroid/text/TextPaint;

    iget v1, p0, Lmhx;->al:F

    int-to-float v2, v9

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAlpha(I)V

    :cond_3
    iget-object v0, p0, Lmhx;->Y:Landroid/text/TextPaint;

    iget v1, p0, Lmhx;->U:F

    iget v2, p0, Lmhx;->V:F

    iget v3, p0, Lmhx;->W:F

    iget v4, p0, Lmhx;->X:I

    invoke-virtual {v0}, Landroid/text/TextPaint;->getAlpha()I

    move-result v5

    invoke-static {v4, v5}, Lkwp;->k(II)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    iget-object v0, p0, Lmhx;->aj:Landroid/text/StaticLayout;

    invoke-virtual {v0, v8}, Landroid/text/StaticLayout;->getLineBaseline(I)I

    move-result v0

    const/4 v2, 0x0

    iget-object v1, p0, Lmhx;->an:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    int-to-float v10, v0

    const/4 v4, 0x0

    iget-object v6, p0, Lmhx;->Y:Landroid/text/TextPaint;

    move-object v0, p1

    move v5, v10

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lmhx;->Y:Landroid/text/TextPaint;

    iget v1, p0, Lmhx;->U:F

    iget v2, p0, Lmhx;->V:F

    iget v3, p0, Lmhx;->W:F

    iget v4, p0, Lmhx;->X:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    iget-boolean v0, p0, Lmhx;->c:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lmhx;->an:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u2026"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_4
    move-object v1, v0

    :goto_0
    iget-object v0, p0, Lmhx;->Y:Landroid/text/TextPaint;

    invoke-virtual {v0, v9}, Landroid/text/TextPaint;->setAlpha(I)V

    const/4 v2, 0x0

    iget-object v0, p0, Lmhx;->aj:Landroid/text/StaticLayout;

    invoke-virtual {v0, v8}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    iget-object v6, p0, Lmhx;->Y:Landroid/text/TextPaint;

    move-object v0, p1

    move v5, v10

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lmhx;->aj:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    :cond_6
    :goto_1
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :cond_7
    return-void
.end method

.method public final e(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lmhx;->q:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    invoke-static {p1, v0}, Lmjy;->c(Landroid/content/res/Configuration;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lmhx;->p:Landroid/graphics/Typeface;

    :cond_0
    iget-object v0, p0, Lmhx;->t:Landroid/graphics/Typeface;

    if-eqz v0, :cond_1

    invoke-static {p1, v0}, Lmjy;->c(Landroid/content/res/Configuration;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lmhx;->s:Landroid/graphics/Typeface;

    :cond_1
    iget-object p1, p0, Lmhx;->p:Landroid/graphics/Typeface;

    if-nez p1, :cond_2

    iget-object p1, p0, Lmhx;->q:Landroid/graphics/Typeface;

    :cond_2
    iput-object p1, p0, Lmhx;->o:Landroid/graphics/Typeface;

    iget-object p1, p0, Lmhx;->s:Landroid/graphics/Typeface;

    if-nez p1, :cond_3

    iget-object p1, p0, Lmhx;->t:Landroid/graphics/Typeface;

    :cond_3
    iput-object p1, p0, Lmhx;->r:Landroid/graphics/Typeface;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lmhx;->g(Z)V

    return-void
.end method

.method public final f()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmhx;->g(Z)V

    return-void
.end method

.method public final g(Z)V
    .locals 6

    iget-object v0, p0, Lmhx;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    iget-object v0, p0, Lmhx;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    if-eqz p1, :cond_8

    const/4 p1, 0x1

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, p1}, Lmhx;->n(FZ)V

    iget-object v0, p0, Lmhx;->w:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lmhx;->aj:Landroid/text/StaticLayout;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lmhx;->Y:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v4, p0, Lmhx;->u:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v3, v2, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lmhx;->an:Ljava/lang/CharSequence;

    :cond_2
    iget-object v0, p0, Lmhx;->an:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v3, p0, Lmhx;->Y:Landroid/text/TextPaint;

    invoke-static {v3, v0}, Lmhx;->r(Landroid/text/TextPaint;Ljava/lang/CharSequence;)F

    move-result v0

    iput v0, p0, Lmhx;->ak:F

    goto :goto_0

    :cond_3
    iput v2, p0, Lmhx;->ak:F

    :goto_0
    iget v0, p0, Lmhx;->j:I

    iget-boolean v3, p0, Lmhx;->R:Z

    invoke-static {v0, v3}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    and-int/lit8 v3, v0, 0x70

    const/high16 v4, 0x40000000    # 2.0f

    sparse-switch v3, :sswitch_data_0

    iget-object v3, p0, Lmhx;->Y:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->descent()F

    move-result v3

    iget-object v5, p0, Lmhx;->Y:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->ascent()F

    move-result v5

    sub-float/2addr v3, v5

    div-float/2addr v3, v4

    iget-object v5, p0, Lmhx;->h:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v3

    iput v5, p0, Lmhx;->L:F

    goto :goto_1

    :sswitch_0
    iget-object v3, p0, Lmhx;->h:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    iget-object v5, p0, Lmhx;->Y:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->ascent()F

    move-result v5

    add-float/2addr v3, v5

    iput v3, p0, Lmhx;->L:F

    goto :goto_1

    :sswitch_1
    iget-object v3, p0, Lmhx;->h:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iput v3, p0, Lmhx;->L:F

    :goto_1
    const v3, 0x800007

    and-int/2addr v0, v3

    sparse-switch v0, :sswitch_data_1

    iget-object v0, p0, Lmhx;->h:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iput v0, p0, Lmhx;->N:F

    goto :goto_2

    :sswitch_2
    iget-object v0, p0, Lmhx;->h:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget v5, p0, Lmhx;->ak:F

    sub-float/2addr v0, v5

    iput v0, p0, Lmhx;->N:F

    goto :goto_2

    :sswitch_3
    iget-object v0, p0, Lmhx;->h:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    iget v5, p0, Lmhx;->ak:F

    div-float/2addr v5, v4

    sub-float/2addr v0, v5

    iput v0, p0, Lmhx;->N:F

    :goto_2
    invoke-direct {p0, v2, p1}, Lmhx;->n(FZ)V

    iget-object p1, p0, Lmhx;->aj:Landroid/text/StaticLayout;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/text/StaticLayout;->getHeight()I

    move-result p1

    int-to-float p1, p1

    goto :goto_3

    :cond_4
    const/4 p1, 0x0

    :goto_3
    iget-object v0, p0, Lmhx;->aj:Landroid/text/StaticLayout;

    if-eqz v0, :cond_5

    iget v5, p0, Lmhx;->E:I

    if-le v5, v1, :cond_5

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getWidth()I

    move-result v0

    int-to-float v2, v0

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lmhx;->w:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lmhx;->Y:Landroid/text/TextPaint;

    invoke-static {v1, v0}, Lmhx;->r(Landroid/text/TextPaint;Ljava/lang/CharSequence;)F

    move-result v2

    goto :goto_4

    :cond_6
    :goto_4
    iget-object v0, p0, Lmhx;->aj:Landroid/text/StaticLayout;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    goto :goto_5

    :cond_7
    const/4 v0, 0x0

    :goto_5
    iput v0, p0, Lmhx;->n:I

    iget v0, p0, Lmhx;->i:I

    iget-boolean v1, p0, Lmhx;->R:Z

    invoke-static {v0, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    and-int/lit8 v1, v0, 0x70

    sparse-switch v1, :sswitch_data_2

    div-float/2addr p1, v4

    iget-object v1, p0, Lmhx;->g:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, p1

    iput v1, p0, Lmhx;->K:F

    goto :goto_6

    :sswitch_4
    iget-object v1, p0, Lmhx;->g:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    sub-float/2addr v1, p1

    iget-object p1, p0, Lmhx;->Y:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/text/TextPaint;->descent()F

    move-result p1

    add-float/2addr v1, p1

    iput v1, p0, Lmhx;->K:F

    goto :goto_6

    :sswitch_5
    iget-object p1, p0, Lmhx;->g:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    iput p1, p0, Lmhx;->K:F

    :goto_6
    and-int p1, v0, v3

    sparse-switch p1, :sswitch_data_3

    iget-object p1, p0, Lmhx;->g:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    iput p1, p0, Lmhx;->M:F

    goto :goto_7

    :sswitch_6
    iget-object p1, p0, Lmhx;->g:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    int-to-float p1, p1

    sub-float/2addr p1, v2

    iput p1, p0, Lmhx;->M:F

    goto :goto_7

    :sswitch_7
    iget-object p1, p0, Lmhx;->g:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v2, v4

    sub-float/2addr p1, v2

    iput p1, p0, Lmhx;->M:F

    :goto_7
    iget p1, p0, Lmhx;->b:F

    invoke-direct {p0, p1}, Lmhx;->o(F)V

    invoke-virtual {p0}, Lmhx;->c()V

    return-void

    :cond_8
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_3
        0x5 -> :sswitch_2
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x30 -> :sswitch_5
        0x50 -> :sswitch_4
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        0x1 -> :sswitch_7
        0x5 -> :sswitch_6
    .end sparse-switch
.end method

.method public final h(I)V
    .locals 3

    new-instance v0, Lmjs;

    iget-object v1, p0, Lmhx;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lmjs;-><init>(Landroid/content/Context;I)V

    iget-object p1, v0, Lmjs;->i:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lmhx;->m:Landroid/content/res/ColorStateList;

    :cond_0
    iget p1, v0, Lmjs;->j:F

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_1

    iput p1, p0, Lmhx;->J:F

    :cond_1
    iget-object p1, v0, Lmjs;->a:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_2

    iput-object p1, p0, Lmhx;->ac:Landroid/content/res/ColorStateList;

    :cond_2
    iget p1, v0, Lmjs;->e:F

    iput p1, p0, Lmhx;->aa:F

    iget p1, v0, Lmjs;->f:F

    iput p1, p0, Lmhx;->ab:F

    iget p1, v0, Lmjs;->g:F

    iput p1, p0, Lmhx;->Z:F

    iget p1, v0, Lmjs;->h:F

    iput p1, p0, Lmhx;->ah:F

    iget-object p1, p0, Lmhx;->H:Lbza;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lbza;->d()V

    :cond_3
    new-instance p1, Lbza;

    new-instance v1, Lmhw;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lmhw;-><init>(Lmhx;I)V

    invoke-virtual {v0}, Lmjs;->a()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Lbza;-><init>(Lmjp;Landroid/graphics/Typeface;)V

    iput-object p1, p0, Lmhx;->H:Lbza;

    iget-object p1, p0, Lmhx;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lmhx;->H:Lbza;

    invoke-virtual {v0, p1, v1}, Lmjs;->d(Landroid/content/Context;Lbza;)V

    invoke-virtual {p0}, Lmhx;->f()V

    return-void
.end method

.method public final i(I)V
    .locals 3

    new-instance v0, Lmjs;

    iget-object v1, p0, Lmhx;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lmjs;-><init>(Landroid/content/Context;I)V

    iget-object p1, v0, Lmjs;->i:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lmhx;->l:Landroid/content/res/ColorStateList;

    :cond_0
    iget p1, v0, Lmjs;->j:F

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_1

    iput p1, p0, Lmhx;->k:F

    :cond_1
    iget-object p1, v0, Lmjs;->a:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_2

    iput-object p1, p0, Lmhx;->ag:Landroid/content/res/ColorStateList;

    :cond_2
    iget p1, v0, Lmjs;->e:F

    iput p1, p0, Lmhx;->ae:F

    iget p1, v0, Lmjs;->f:F

    iput p1, p0, Lmhx;->af:F

    iget p1, v0, Lmjs;->g:F

    iput p1, p0, Lmhx;->ad:F

    iget p1, v0, Lmjs;->h:F

    iput p1, p0, Lmhx;->D:F

    iget-object p1, p0, Lmhx;->G:Lbza;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lbza;->d()V

    :cond_3
    new-instance p1, Lbza;

    new-instance v1, Lmhw;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lmhw;-><init>(Lmhx;I)V

    invoke-virtual {v0}, Lmjs;->a()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Lbza;-><init>(Lmjp;Landroid/graphics/Typeface;)V

    iput-object p1, p0, Lmhx;->G:Lbza;

    iget-object p1, p0, Lmhx;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lmhx;->G:Lbza;

    invoke-virtual {v0, p1, v1}, Lmjs;->d(Landroid/content/Context;Lbza;)V

    invoke-virtual {p0}, Lmhx;->f()V

    return-void
.end method
