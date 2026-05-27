.class public Lcom/google/android/apps/camera/evcomp/EvCompView;
.super Landroid/widget/FrameLayout;


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:Ljwb;

.field public final c:I

.field public d:Landroid/widget/CheckBox;

.field public e:Landroid/widget/ImageButton;

.field public f:Lcom/google/android/apps/camera/evcomp/EvCompSlider;

.field public g:Lcom/google/android/apps/camera/evcomp/EvCompSlider;

.field public h:Ldoj;

.field public i:Ldoj;

.field public j:Liko;

.field public k:F

.field public l:F

.field private final m:Landroid/view/accessibility/AccessibilityManager;

.field private final n:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final o:I

.field private final p:I

.field private final q:I

.field private r:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->a:Ljava/util/ArrayList;

    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p2, Ljvk;

    sget-object v0, Ldoh;->a:Ldoh;

    invoke-direct {p2, v0}, Ljvk;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->b:Ljwb;

    sget-object p2, Liko;->a:Liko;

    iput-object p2, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->j:Liko;

    const-string p2, "accessibility"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->m:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070136

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->p:I

    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07012f

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->c:I

    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070131

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->o:I

    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070135

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->q:I

    sget-object v1, Ldok;->a:Ldok;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x7f0801f7

    const v5, 0x7f06048e

    const v6, 0x7f080138

    const v7, 0x7f1400a7

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/apps/camera/evcomp/EvCompView;->c(Ldok;FFIIII)Ldoj;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->h:Ldoj;

    sget-object v1, Ldok;->b:Ldok;

    const v4, 0x7f0801f8

    const v5, 0x7f060486

    const v6, 0x7f080139

    const v7, 0x7f14049b

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/apps/camera/evcomp/EvCompView;->c(Ldok;FFIIII)Ldoj;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->i:Ldoj;

    return-void
.end method

.method public static d(F)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "%+.1f"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "^[-+](0(\\.0*)?)$"

    const-string v1, "$1"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final o(ILdoj;)F
    .locals 4

    iget v0, p2, Ldoj;->e:F

    iget v1, p2, Ldoj;->f:F

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->a()I

    move-result v1

    int-to-float v1, v1

    iget p2, p2, Ldoj;->f:F

    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->a()I

    move-result v2

    int-to-float v2, v2

    mul-float p2, p2, v2

    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->a()I

    move-result v2

    int-to-float v2, v2

    int-to-float p1, p1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr p1, v2

    sub-float/2addr p1, p2

    mul-float v0, v0, v1

    div-float/2addr p1, v0

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p2, p1

    invoke-static {p2}, Lcom/google/android/apps/camera/evcomp/EvCompView;->p(F)F

    move-result p1

    return p1
.end method

.method private static p(F)F
    .locals 1

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float p0, p0, v0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v0

    return p0
.end method

.method private final q(IFF)I
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->a()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->a()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->a()I

    move-result v2

    int-to-float v2, v2

    mul-float p2, p2, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float/2addr p2, v0

    float-to-int p2, p2

    if-ge p1, p2, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    mul-float p3, p3, v2

    sub-float/2addr p3, v0

    float-to-int p2, p3

    if-le p1, p2, :cond_1

    return p2

    :cond_1
    :goto_0
    return p1
.end method


# virtual methods
.method final a()I
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->b()I

    move-result v0

    iget v1, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->c:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final b()I
    .locals 5

    sget-object v0, Ldoh;->a:Ldoh;

    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->b:Ljwb;

    check-cast v0, Ljvk;

    iget-object v0, v0, Ljvk;->d:Ljava/lang/Object;

    check-cast v0, Ldoh;

    invoke-virtual {v0}, Ldoh;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070127

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f07012e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->d:Landroid/widget/CheckBox;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->b:Ljwb;

    check-cast v1, Ljvk;

    iget-object v1, v1, Ljvk;->d:Ljava/lang/Object;

    check-cast v1, Ldoh;

    sget-object v2, Ldoh;->c:Ldoh;

    invoke-virtual {v1, v2}, Ldoh;->equals(Ljava/lang/Object;)Z

    move-result v1

    const v2, 0x7f07012a

    if-eqz v1, :cond_1

    add-int v1, v0, v0

    iget v3, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->c:I

    add-int/2addr v3, v3

    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v3

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->d:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->c:I

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->d:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    int-to-float v1, v1

    const v3, 0x3f59999a    # 0.85f

    mul-float v2, v2, v3

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_2

    int-to-float v0, v0

    const v1, 0x3f4ccccd    # 0.8f

    mul-float v0, v0, v1

    float-to-int v0, v0

    :cond_2
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Ldok;FFIIII)Ldoj;
    .locals 4

    new-instance v0, Ldoj;

    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ldoj;-><init>(Landroid/content/Context;)V

    iget v1, v0, Ldoj;->c:I

    iget v2, v0, Ldoj;->b:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Ldoj;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p6, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p6

    new-instance v2, Landroid/graphics/drawable/InsetDrawable;

    div-int/lit8 v1, v1, 0x2

    invoke-direct {v2, p6, v1}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {v0, v2}, Ldoj;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, p4}, Ldoj;->setImageResource(I)V

    invoke-virtual {v0}, Ldoj;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const p6, 0x7f070130

    invoke-virtual {p4, p6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    int-to-float p4, p4

    invoke-virtual {v0, p4}, Ldoj;->setElevation(F)V

    sget-object p4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, p4}, Ldoj;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v0, p1}, Ldoj;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Ldoj;->setFocusable(Z)V

    invoke-virtual {v0}, Ldoj;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ldoj;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance p1, Ldoi;

    const/4 p4, 0x0

    invoke-direct {p1, v0, p4}, Ldoi;-><init>(Ldoj;I)V

    invoke-virtual {v0, p1}, Ldoj;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p4, -0x2

    invoke-direct {p1, p4, p4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Ldoj;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    cmpl-float p1, p2, p3

    if-gtz p1, :cond_0

    iput p2, v0, Ldoj;->f:F

    iput p3, v0, Ldoj;->e:F

    invoke-virtual {v0}, Ldoj;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p5, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Min value is greater than max value"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final e(Ldoj;F)V
    .locals 6

    invoke-virtual {p1}, Ldoj;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070132

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget v2, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->o:I

    iget v3, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->c:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const v1, 0x800015

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget v1, p1, Ldoj;->f:F

    iget v2, p1, Ldoj;->e:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v4, v2, v3

    if-gtz v4, :cond_2

    const/4 v4, 0x0

    cmpg-float v5, v2, v4

    if-ltz v5, :cond_2

    cmpg-float v5, v1, v4

    if-ltz v5, :cond_2

    cmpl-float v5, v1, v3

    if-gtz v5, :cond_2

    cmpl-float v5, v1, v2

    if-gtz v5, :cond_2

    cmpl-float v5, p2, v3

    if-gtz v5, :cond_1

    cmpg-float v4, p2, v4

    if-ltz v4, :cond_1

    sub-float v4, v2, v1

    sub-float/2addr v3, p2

    mul-float v4, v4, v3

    add-float/2addr v4, v1

    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->a()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->a()I

    move-result v5

    int-to-float v5, v5

    mul-float v4, v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    sub-float/2addr v4, v3

    float-to-int v3, v4

    invoke-direct {p0, v3, v1, v2}, Lcom/google/android/apps/camera/evcomp/EvCompView;->q(IFF)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v1, p1, Ldoj;->d:F

    sub-float v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {p1, p2}, Ldoj;->a(F)V

    const p2, 0x3c23d70a    # 0.01f

    cmpl-float p2, v1, p2

    if-lez p2, :cond_0

    invoke-virtual {p1, v0}, Ldoj;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fraction is not illegal: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid min/max"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final f(Liko;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0, p1}, Ljvd;->H(Landroid/view/View;Liko;)V

    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->d:Landroid/widget/CheckBox;

    invoke-static {v0, p1}, Ljvd;->I(Landroid/view/View;Liko;)V

    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->e:Landroid/widget/ImageButton;

    invoke-static {v0, p1}, Ljvd;->I(Landroid/view/View;Liko;)V

    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->h:Ldoj;

    invoke-static {v0, p1}, Ljvd;->I(Landroid/view/View;Liko;)V

    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->i:Ldoj;

    invoke-static {v0, p1}, Ljvd;->I(Landroid/view/View;Liko;)V

    return-void
.end method

.method public final g(F)V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->h:Ldoj;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/apps/camera/evcomp/EvCompView;->e(Ldoj;F)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fraction is not illegal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final h(F)V
    .locals 3

    iput p1, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->k:F

    iget-object p1, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->b:Ljwb;

    check-cast p1, Ljvk;

    iget-object p1, p1, Ljvk;->d:Ljava/lang/Object;

    check-cast p1, Ldoh;

    sget-object v0, Ldoh;->a:Ldoh;

    invoke-virtual {p1, v0}, Ldoh;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->k:F

    invoke-static {v2}, Lcom/google/android/apps/camera/evcomp/EvCompView;->p(F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const v0, 0x7f140178

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->k:F

    invoke-static {v2}, Lcom/google/android/apps/camera/evcomp/EvCompView;->p(F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const v0, 0x7f1400a6

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->f:Lcom/google/android/apps/camera/evcomp/EvCompSlider;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final i(F)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->b:Ljwb;

    check-cast v0, Ljvk;

    iget-object v0, v0, Ljvk;->d:Ljava/lang/Object;

    check-cast v0, Ldoh;

    sget-object v1, Ldoh;->a:Ldoh;

    invoke-virtual {v0, v1}, Ldoh;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->i:Ldoj;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/apps/camera/evcomp/EvCompView;->e(Ldoj;F)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fraction is not illegal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final j(F)V
    .locals 3

    iput p1, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->l:F

    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->l:F

    invoke-static {v1}, Lcom/google/android/apps/camera/evcomp/EvCompView;->p(F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f14049a

    invoke-virtual {p1, v1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->g:Lcom/google/android/apps/camera/evcomp/EvCompSlider;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final k()V
    .locals 3

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v1, 0x800015

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070132

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget v2, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->c:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->d:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07012a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget-object v2, Ldoh;->a:Ldoh;

    iget-object v2, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->b:Ljwb;

    check-cast v2, Ljvk;

    iget-object v2, v2, Ljvk;->d:Ljava/lang/Object;

    check-cast v2, Ldoh;

    invoke-virtual {v2}, Ldoh;->ordinal()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->b()I

    move-result v2

    add-int/2addr v2, v1

    iget v1, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->c:I

    add-int/2addr v2, v1

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->b()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v1

    iget v1, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->c:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v2, v1

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :goto_0
    iget-object v1, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->d:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final l()V
    .locals 4

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v1, 0x800015

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->e:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->q:I

    iget v3, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->p:I

    sub-int/2addr v2, v3

    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v2, v1

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07012c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget-object v2, Ldoh;->a:Ldoh;

    iget-object v2, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->b:Ljwb;

    check-cast v2, Ljvk;

    iget-object v2, v2, Ljvk;->d:Ljava/lang/Object;

    check-cast v2, Ldoh;

    invoke-virtual {v2}, Ldoh;->ordinal()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->b()I

    move-result v2

    add-int/2addr v2, v1

    iget v1, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->c:I

    add-int/2addr v2, v1

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->b()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v1

    iget v1, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->c:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v2, v1

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :goto_0
    iget-object v1, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->e:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final m()V
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070132

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget v2, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->c:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget v3, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->q:I

    iget v4, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->p:I

    sub-int/2addr v3, v4

    iget-object v4, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->m:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->q:I

    add-int/2addr v4, v4

    goto :goto_0

    :cond_0
    iget v4, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->q:I

    :goto_0
    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->b()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->b()I

    move-result v6

    invoke-direct {v5, v4, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v4, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->b:Ljwb;

    check-cast v4, Ljvk;

    iget-object v4, v4, Ljvk;->d:Ljava/lang/Object;

    check-cast v4, Ldoh;

    sget-object v6, Ldoh;->c:Ldoh;

    invoke-virtual {v4, v6}, Ldoh;->equals(Ljava/lang/Object;)Z

    move-result v4

    const v6, 0x7f0600bb

    const v7, 0x7f06048f

    const v8, 0x7f060487

    const/16 v10, 0xdb

    const/4 v11, 0x0

    if-eqz v4, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->b()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v2

    iget-object v2, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->f:Lcom/google/android/apps/camera/evcomp/EvCompSlider;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->b()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v8, v11}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v8

    invoke-static {v8, v10}, Lacp;->d(II)I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f06048b

    invoke-virtual {v13, v14, v11}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v13

    invoke-static {v13, v10}, Lacp;->d(II)I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v9, 0x7f0600ba

    invoke-virtual {v15, v9, v11}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v9

    invoke-virtual {v2, v12, v8, v13, v9}, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->a(IIII)V

    iget-object v2, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->g:Lcom/google/android/apps/camera/evcomp/EvCompSlider;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->b()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v14, v11}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v9

    invoke-static {v9, v10}, Lacp;->d(II)I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v7, v11}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v7

    invoke-static {v7, v10}, Lacp;->d(II)I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v6, v11}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v6

    invoke-virtual {v2, v8, v9, v7, v6}, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->a(IIII)V

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const v2, 0x800015

    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v4, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v2, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->g:Lcom/google/android/apps/camera/evcomp/EvCompSlider;

    invoke-virtual {v2, v5}, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->g:Lcom/google/android/apps/camera/evcomp/EvCompSlider;

    invoke-virtual {v2}, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->requestLayout()V

    iget-object v2, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->g:Lcom/google/android/apps/camera/evcomp/EvCompSlider;

    invoke-virtual {v2}, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->invalidate()V

    goto :goto_1

    :cond_1
    iget-object v2, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->f:Lcom/google/android/apps/camera/evcomp/EvCompSlider;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->b()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8, v11}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    invoke-static {v5, v10}, Lacp;->d(II)I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v7, v11}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v7

    invoke-static {v7, v10}, Lacp;->d(II)I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v6, v11}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v6

    invoke-virtual {v2, v4, v5, v7, v6}, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->a(IIII)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->b()I

    move-result v2

    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const v2, 0x800015

    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :goto_1
    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-object v1, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->f:Lcom/google/android/apps/camera/evcomp/EvCompSlider;

    invoke-virtual {v1, v3}, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->f:Lcom/google/android/apps/camera/evcomp/EvCompSlider;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->requestLayout()V

    iget-object v1, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->f:Lcom/google/android/apps/camera/evcomp/EvCompSlider;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->invalidate()V

    return-void
.end method

.method public final n(Landroid/view/View;Landroid/view/MotionEvent;)[F
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    move-object v4, v1

    check-cast v4, Ldoj;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_1

    iget-object v1, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->j:Liko;

    invoke-static {v1}, Liko;->e(Liko;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    :goto_0
    iput v1, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->r:F

    goto/16 :goto_7

    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v2, :cond_a

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v5, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->j:Liko;

    invoke-static {v5}, Liko;->e(Liko;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    goto :goto_1

    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    :goto_1
    iget-object v7, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->j:Liko;

    sget-object v8, Liko;->c:Liko;

    invoke-virtual {v7, v8}, Liko;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget v7, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    int-to-float v7, v7

    iget v8, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->r:F

    add-float/2addr v7, v8

    sub-float/2addr v7, v5

    float-to-int v7, v7

    goto :goto_2

    :cond_3
    iget v7, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    int-to-float v7, v7

    add-float/2addr v7, v5

    iget v8, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->r:F

    sub-float/2addr v7, v8

    float-to-int v7, v7

    :goto_2
    iget v8, v4, Ldoj;->f:F

    iget v9, v4, Ldoj;->e:F

    invoke-direct {v0, v7, v8, v9}, Lcom/google/android/apps/camera/evcomp/EvCompView;->q(IFF)I

    move-result v7

    iget v8, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int v8, v7, v8

    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v9, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->b:Ljwb;

    check-cast v9, Ljvk;

    iget-object v9, v9, Ljvk;->d:Ljava/lang/Object;

    check-cast v9, Ldoh;

    sget-object v10, Ldoh;->c:Ldoh;

    invoke-virtual {v9, v10}, Ldoh;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    sget-object v8, Lmpx;->a:Lmpx;

    goto :goto_5

    :cond_4
    iget-object v9, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->a:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-gt v9, v6, :cond_5

    sget-object v8, Lmpx;->a:Lmpx;

    goto :goto_5

    :cond_5
    invoke-virtual {v4}, Ldoj;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout$LayoutParams;

    sget-object v11, Lmpx;->a:Lmpx;

    iget-object v12, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->a:Ljava/util/ArrayList;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x0

    :goto_3
    if-ge v14, v13, :cond_8

    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ldoj;

    invoke-virtual {v15, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_6

    invoke-virtual {v15}, Ldoj;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    move-object/from16 v6, v16

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    iget v10, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move-object/from16 v16, v9

    iget v9, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int/2addr v10, v9

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v9

    iget v10, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->c:I

    if-ge v9, v10, :cond_7

    iget v9, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v9, v8

    iget v10, v15, Ldoj;->f:F

    iget v11, v15, Ldoj;->e:F

    invoke-direct {v0, v9, v10, v11}, Lcom/google/android/apps/camera/evcomp/EvCompView;->q(IFF)I

    move-result v9

    iput v9, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v11

    goto :goto_4

    :cond_6
    move-object/from16 v16, v9

    :cond_7
    :goto_4
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v9, v16

    const/4 v6, 0x1

    goto :goto_3

    :cond_8
    move-object v8, v11

    :goto_5
    iput v5, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->r:F

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->requestLayout()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->invalidate()V

    invoke-direct {v0, v7, v4}, Lcom/google/android/apps/camera/evcomp/EvCompView;->o(ILdoj;)F

    move-result v2

    invoke-virtual {v4, v2}, Ldoj;->a(F)V

    const/4 v4, 0x0

    aput v2, v3, v4

    invoke-virtual {v8}, Lmqp;->g()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->a:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldoj;

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {v8}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v0, v5, v4}, Lcom/google/android/apps/camera/evcomp/EvCompView;->o(ILdoj;)F

    move-result v5

    invoke-virtual {v4, v5}, Ldoj;->a(F)V

    const/4 v4, 0x1

    aput v5, v3, v4

    goto :goto_6

    :cond_9
    const/4 v4, 0x1

    goto :goto_6

    :cond_a
    const/4 v4, 0x1

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v4, :cond_b

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->r:F

    :cond_b
    :goto_7
    return-object v3

    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method protected final onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0b01e5

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->d:Landroid/widget/CheckBox;

    const v0, 0x7f0b0141

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->e:Landroid/widget/ImageButton;

    const v0, 0x7f0b0140

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/evcomp/EvCompSlider;

    iput-object v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->f:Lcom/google/android/apps/camera/evcomp/EvCompSlider;

    const v0, 0x7f0b0142

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/evcomp/EvCompSlider;

    iput-object v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->g:Lcom/google/android/apps/camera/evcomp/EvCompSlider;

    sget-object v0, Lgfj;->b:Lgfj;

    iget-object v1, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->f:Lcom/google/android/apps/camera/evcomp/EvCompSlider;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->g:Lcom/google/android/apps/camera/evcomp/EvCompSlider;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method protected final onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-object p2, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->m:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p1, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    return-void

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->j:Liko;

    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/evcomp/EvCompView;->f(Liko;)V

    return-void
.end method

.method public final onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->m()V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->k()V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->l()V

    return-void
.end method

.method public final setVisibility(I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->a:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldoj;

    invoke-virtual {v1, p1}, Ldoj;->setVisibility(I)V

    goto :goto_0

    :cond_0
    return-void
.end method
