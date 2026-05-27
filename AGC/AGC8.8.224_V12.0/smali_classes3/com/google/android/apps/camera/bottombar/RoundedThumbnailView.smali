.class public Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;
.super Landroid/widget/ImageButton;


# static fields
.field private static final HIT_STATE_CIRCLE_OPACITY_SHOW:F = 0.7f

.field private static final HIT_STATE_DURATION_MS:J = 0x96L

.field private static final MAX_THUMBNAIL_BITMAP_SIZE:I = 0x200

.field private static final PLACEHOLDER_ICON_COLOR:I = -0xa09c98

.field private static final RIPPLE_DURATION_MS:J = 0xc8L

.field private static final RIPPLE_OPACITY_BEGIN:F = 0.4f

.field private static final RIPPLE_OPACITY_END:F = 0.0f

.field private static final RIPPLE_START_DELAY_MS:J = 0x64L

.field private static final THUMBNAIL_FLASH_CIRCLE_OPACITY_BEGIN:F = 0.8f

.field private static final THUMBNAIL_FLASH_CIRCLE_OPACITY_END:F = 0.0f

.field private static final THUMBNAIL_FLASH_DURATION_MS:J = 0xc8L

.field private static final THUMBNAIL_REVEAL_CIRCLE_OPACITY_BEGIN:F = 0.5f

.field private static final THUMBNAIL_REVEAL_CIRCLE_OPACITY_END:F = 0.0f

.field private static final THUMBNAIL_SHRINK_DURATION_MS:J = 0xc8L

.field private static final THUMBNAIL_STRETCH_DURATION_MS:J = 0xc8L

.field private static final logger:Lnak;


# instance fields
.field private backgroundRequest:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView$RevealRequest;

.field private badgeOffset:F

.field private badgePaint:Landroid/graphics/Paint;

.field private badgeSize:F

.field private borderStrokePaint:Landroid/graphics/Paint;

.field private burstFlashAnimator:Landroid/animation/ValueAnimator;

.field private callback:Lmqp;

.field private currentHitStateCircleOpacity:F

.field private currentRevealCircleOpacity:F

.field private currentRippleRingDiameter:F

.field private currentRippleRingOpacity:F

.field private currentRippleRingThickness:F

.field private currentThumbnailDiameter:F

.field private foregroundRequest:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView$RevealRequest;

.field private hitStateCirclePaint:Landroid/graphics/Paint;

.field private final hitStateFadeOutAnimator:Landroid/animation/ValueAnimator;

.field private innerStrokeWidth:F

.field private final onClickListener:Landroid/view/View$OnClickListener;

.field private optionalOnClickListener:Lmqp;

.field private pendingRequest:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView$RevealRequest;

.field private revealCirclePaint:Landroid/graphics/Paint;

.field private rippleAnimator:Landroid/animation/ValueAnimator;

.field private ripplePaint:Landroid/graphics/Paint;

.field private rippleRingDiameterBegin:F

.field private rippleRingDiameterEnd:F

.field private rippleRingThicknessBegin:F

.field private rippleRingThicknessEnd:F

.field private showLockedBadge:Z

.field private shrinkTouchArea:Z

.field private thumbnailAnimatorSet:Landroid/animation/AnimatorSet;

.field private thumbnailPadding:F

.field private thumbnailShrinkDiameterBegin:F

.field private thumbnailShrinkDiameterEnd:F

.field private thumbnailStretchDiameterBegin:F

.field private thumbnailStretchDiameterEnd:F

.field private thumbnailTypeIconSize:F

.field private touchShrinkSize:I

.field private viewRect:Landroid/graphics/RectF;


# direct methods
.method static bridge synthetic -$$Nest$fgetcallback(Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;)Lmqp;
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->callback:Lmqp;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetforegroundRequest(Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;)Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView$RevealRequest;
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->foregroundRequest:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView$RevealRequest;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetoptionalOnClickListener(Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;)Lmqp;
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->optionalOnClickListener:Lmqp;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputburstFlashAnimator(Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;Landroid/animation/ValueAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->burstFlashAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputrippleAnimator(Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;Landroid/animation/ValueAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->rippleAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputthumbnailAnimatorSet(Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;Landroid/animation/AnimatorSet;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->thumbnailAnimatorSet:Landroid/animation/AnimatorSet;

    return-void
.end method

.method static bridge synthetic -$$Nest$mprocessRevealRequests(Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->processRevealRequests()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetlogger()Lnak;
    .locals 1

    sget-object v0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->logger:Lnak;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/bottombar/RoundedThumbnailView"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->logger:Lnak;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object p1, Lmpx;->a:Lmpx;

    iput-object p1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->callback:Lmqp;

    iput-object p1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->optionalOnClickListener:Lmqp;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->shrinkTouchArea:Z

    const/4 p2, 0x2

    new-array p2, p2, [F

    fill-array-data p2, :array_0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->hitStateFadeOutAnimator:Landroid/animation/ValueAnimator;

    iput-boolean p1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->showLockedBadge:Z

    new-instance p1, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView$1;

    invoke-direct {p1, p0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView$1;-><init>(Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;)V

    iput-object p1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->initialize()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f333333    # 0.7f
        0x0
    .end array-data
.end method

.method private clearAnimations()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->thumbnailAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->thumbnailAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->thumbnailAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iput-object v1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->thumbnailAnimatorSet:Landroid/animation/AnimatorSet;

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->rippleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->rippleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->rippleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iput-object v1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->rippleAnimator:Landroid/animation/ValueAnimator;

    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->burstFlashAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->burstFlashAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->burstFlashAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iput-object v1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->burstFlashAnimator:Landroid/animation/ValueAnimator;

    :cond_2
    return-void
.end method

.method private drawLockedFolderBadge(Landroid/graphics/Canvas;FF)V
    .locals 5

    iget v0, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->badgeOffset:F

    add-float v1, p2, v0

    add-float/2addr v0, p3

    iget v2, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->badgeSize:F

    iget v3, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->innerStrokeWidth:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget-object v4, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->badgePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/apps/camera/bottombar/R$drawable;->quantum_gm_ic_lock_vd_theme_24:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p0}, Linb;->g(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget v1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->badgeOffset:F

    add-float/2addr v1, p2

    iget v2, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->badgeSize:F

    const/high16 v4, 0x40800000    # 4.0f

    div-float v4, v2, v4

    float-to-int v2, v2

    sub-float/2addr v1, v4

    float-to-int v1, v1

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v1

    invoke-virtual {v0, v1, v1, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->borderStrokePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->innerStrokeWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v0, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->badgeOffset:F

    add-float/2addr p2, v0

    add-float/2addr p3, v0

    iget v0, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->badgeSize:F

    iget v1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->innerStrokeWidth:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v3

    iget-object v1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->borderStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private getColor(I)I
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    return p1
.end method

.method private initialize()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-super {p0, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;)V

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->setClickable(Z)V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/apps/camera/bottombar/R$dimen;->rounded_thumbnail_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->thumbnailPadding:F

    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/apps/camera/bottombar/R$dimen;->rounded_thumbnail_diameter_min:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->thumbnailStretchDiameterBegin:F

    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/apps/camera/bottombar/R$dimen;->rounded_thumbnail_diameter_max:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->thumbnailStretchDiameterEnd:F

    iput v1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->thumbnailShrinkDiameterBegin:F

    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/apps/camera/bottombar/R$dimen;->rounded_thumbnail_diameter_normal:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->thumbnailShrinkDiameterEnd:F

    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/apps/camera/bottombar/R$dimen;->rounded_thumbnail_type_icon_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->thumbnailTypeIconSize:F

    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/apps/camera/bottombar/R$dimen;->rounded_thumbnail_ripple_ring_diameter_max:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->rippleRingDiameterEnd:F

    new-instance v2, Landroid/graphics/RectF;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->viewRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/apps/camera/bottombar/R$dimen;->rounded_thumbnail_ripple_ring_diameter_min:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->rippleRingDiameterBegin:F

    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/apps/camera/bottombar/R$dimen;->rounded_thumbnail_ripple_ring_thick_max:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->rippleRingThicknessBegin:F

    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/apps/camera/bottombar/R$dimen;->rounded_thumbnail_ripple_ring_thick_min:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->rippleRingThicknessEnd:F

    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/apps/camera/bottombar/R$dimen;->rounded_thumbnail_shrink_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->touchShrinkSize:I

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->hitStateCirclePaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->hitStateCirclePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->hitStateFadeOutAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x96

    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->hitStateFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->hitStateFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->ripplePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->ripplePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->revealCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->revealCirclePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->borderStrokePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/google/android/apps/camera/bottombar/R$dimen;->rounded_thumbnail_inner_stroke_width:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->innerStrokeWidth:F

    iget-object v3, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->borderStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->borderStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->badgePaint:Landroid/graphics/Paint;

    invoke-static {p0}, Linb;->l(Landroid/view/View;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->badgePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/apps/camera/bottombar/R$dimen;->badge_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->badgeSize:F

    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/apps/camera/bottombar/R$dimen;->badge_offset_from_center:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->badgeOffset:F

    sget-object v0, Likn;->a:Likn;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->getDefaultThumbnail(Likn;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->setThumbnail(Landroid/graphics/Bitmap;IZ)V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/apps/camera/bottombar/R$dimen;->camera_switch_button_ripple_diameter:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    move-object v2, v0

    check-cast v2, Landroid/graphics/drawable/RippleDrawable;

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/RippleDrawable;->setRadius(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method private processRevealRequests()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->foregroundRequest:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView$RevealRequest;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView$RevealRequest;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->foregroundRequest:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView$RevealRequest;

    iput-object v0, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->backgroundRequest:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView$RevealRequest;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->foregroundRequest:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView$RevealRequest;

    :cond_0
    return-void
.end method

.method private runBurstFlashAnimation()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->foregroundRequest:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView$RevealRequest;

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->backgroundRequest:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView$RevealRequest;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView$RevealRequest;->finishRippleAnimation()V

    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->backgroundRequest:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView$RevealRequest;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView$RevealRequest;->finishThumbnailAnimation()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->backgroundRequest:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView$RevealRequest;

    iput-object v0, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->foregroundRequest:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView$RevealRequest;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->pendingRequest:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView$RevealRequest;

    invoke-direct {p0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->clearAnimations()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10c000d

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [F

    iget v3, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->thumbnailStretchDiameterBegin:F

    aput v3, v2, v0

    const/4 v0, 0x1

    iget v3, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->thumbnailShrinkDiameterEnd:F

    aput v3, v2, v0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->burstFlashAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->burstFlashAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->burstFlashAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->burstFlashAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->burstFlashAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView$4;

    invoke-direct {v1, p0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView$4;-><init>(Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->burstFlashAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private runPendingRequestAnimation()V
    .locals 9

    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->pendingRequest:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView$RevealRequest;

    invoke-static {v0}, Llkj;->C(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView$RevealRequest;->isAnimationDisabled()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iput-object v2, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->backgroundRequest:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView$RevealRequest;

    iget-object v3, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->foregroundRequest:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView$RevealRequest;

    if-eqz v3, :cond_0

    iput-object v3, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->backgroundRequest:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView$RevealRequest;

    invoke-virtual {v3}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView$RevealRequest;->finishRippleAnimation()V

    iget-object v3, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->backgroundRequest:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView$RevealRequest;

    invoke-virtual {v3}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView$RevealRequest;->finishThumbnailAnimation()V

    :cond_0
    iget-object v3, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->pendingRequest:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView$RevealRequest;

    iput-object v3, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->foregroundRequest:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView$RevealRequest;

    iput-object v2, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->pendingRequest:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView$RevealRequest;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->thumbnailAnimatorSet:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->thumbnailShrinkDiameterEnd:F

    iput v0, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->currentThumbnailDiameter:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->currentRevealCircleOpacity:F

    invoke-static {v3}, Llkj;->C(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView$RevealRequest;->finishThumbnailAnimation()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->rippleAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->foregroundRequest:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView$RevealRequest;

    invoke-static {v0}, Llkj;->C(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView$RevealRequest;->finishRippleAnimation()V

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->invalidate()V

    return-void

    :cond_3
    invoke-direct {p0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->clearAnimations()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10c000d

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [F

    iget v5, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->thumbnailStretchDiameterBegin:F

    aput v5, v4, v0

    iget v5, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->thumbnailStretchDiameterEnd:F

    aput v5, v4, v1

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    const-wide/16 v5, 0xc8

    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v4, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v7, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView$$ExternalSyntheticLambda3;

    invoke-direct {v7, p0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView$$ExternalSyntheticLambda3;-><init>(Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;)V

    invoke-virtual {v4, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v7, v3, [F

    iget v8, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->thumbnailShrinkDiameterBegin:F

    aput v8, v7, v0

    iget v8, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->thumbnailShrinkDiameterEnd:F

    aput v8, v7, v1

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v7, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView$$ExternalSyntheticLambda4;-><init>(Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;)V

    invoke-virtual {v7, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->thumbnailAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v8, v3, [Landroid/animation/Animator;

    aput-object v4, v8, v0

    aput-object v7, v8, v1

    invoke-virtual {v2, v8}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    iget-object v2, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->thumbnailAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v4, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView$2;

    invoke-direct {v4, p0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView$2;-><init>(Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;)V

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v2, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->thumbnailAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x10c000e

    invoke-static {v2, v4}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    new-array v3, v3, [F

    iget v4, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->rippleRingDiameterBegin:F

    aput v4, v3, v0

    iget v0, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->rippleRingDiameterEnd:F

    aput v0, v3, v1

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->rippleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->rippleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->rippleAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView$3;

    invoke-direct {v1, p0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView$3;-><init>(Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->rippleAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView$$ExternalSyntheticLambda5;-><init>(Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->rippleAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->rippleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->foregroundRequest:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView$RevealRequest;

    invoke-static {v0}, Llkj;->C(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView$RevealRequest;->getAccessibilityString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private stopBurstFlashAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->burstFlashAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->shrinkTouchArea:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->touchShrinkSize:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public flashThumbnail()V
    .locals 0

    invoke-static {}, Ljuh;->a()V

    invoke-direct {p0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->runBurstFlashAnimation()V

    return-void
.end method

.method public getDefaultThumbnail(Likn;)Landroid/graphics/Bitmap;
    .locals 5

    iget v0, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->thumbnailShrinkDiameterEnd:F

    float-to-int v0, v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    sget v2, Lcom/google/android/apps/camera/bottombar/R$color;->indicator_background:I

    invoke-direct {p0, v2}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    sget-object v2, Likn;->a:Likn;

    invoke-virtual {p1}, Likn;->ordinal()I

    move-result p1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v3, Lcom/google/android/apps/camera/bottombar/R$drawable;->quantum_gm_ic_lock_vd_theme_24:I

    invoke-virtual {p1, v3, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v3, Lcom/google/android/apps/camera/bottombar/R$drawable;->ic_videocam_thumbnail:I

    invoke-virtual {p1, v3, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v3, Lcom/google/android/apps/camera/bottombar/R$drawable;->ic_burst_thumbnail:I

    invoke-virtual {p1, v3, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v3, Lcom/google/android/apps/camera/bottombar/R$drawable;->ic_camera_thumbnail:I

    invoke-virtual {p1, v3, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v3, Lcom/google/android/apps/camera/bottombar/R$drawable;->quantum_gm_ic_lock_vd_theme_24:I

    invoke-virtual {p1, v3, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p0}, Linb;->g(Landroid/view/View;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-static {p0}, Linb;->l(Landroid/view/View;)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto :goto_0

    :pswitch_5
    const p1, -0xa09c98

    invoke-virtual {v1, p1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    return-object v1

    :goto_0
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    if-eqz v2, :cond_0

    int-to-float v0, v0

    iget v3, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->thumbnailTypeIconSize:F

    sub-float/2addr v0, v3

    float-to-int v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    float-to-int v0, v0

    add-int/2addr v3, v0

    invoke-virtual {v2, v0, v0, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getRippleRingMaxDiameterDp()F
    .locals 1

    iget v0, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->rippleRingDiameterEnd:F

    return v0
.end method

.method public getThumbnailFinalDiameter()F
    .locals 1

    iget v0, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->thumbnailShrinkDiameterEnd:F

    return v0
.end method

.method public getThumbnailPadding()F
    .locals 1

    iget v0, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->thumbnailPadding:F

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public synthetic lambda$initialize$0$com-google-android-apps-camera-bottombar-RoundedThumbnailView(Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object p1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->callback:Lmqp;

    invoke-virtual {p1}, Lmqp;->g()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->callback:Lmqp;

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView$Callback;

    invoke-interface {p1}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView$Callback;->onLongPress()Z

    move-result p1

    return p1

    :cond_1
    return v0
.end method

.method public synthetic lambda$initialize$1$com-google-android-apps-camera-bottombar-RoundedThumbnailView(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->currentHitStateCircleOpacity:F

    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->invalidate()V

    return-void
.end method

.method public synthetic lambda$runBurstFlashAnimation$5$com-google-android-apps-camera-bottombar-RoundedThumbnailView(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->currentThumbnailDiameter:F

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    const v0, -0x40b33333    # -0.8f

    mul-float p1, p1, v0

    const v0, 0x3f4ccccd    # 0.8f

    add-float/2addr p1, v0

    iput p1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->currentRevealCircleOpacity:F

    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->invalidate()V

    return-void
.end method

.method public synthetic lambda$runPendingRequestAnimation$2$com-google-android-apps-camera-bottombar-RoundedThumbnailView(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->currentThumbnailDiameter:F

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    const/high16 v0, -0x41000000    # -0.5f

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    iput p1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->currentRevealCircleOpacity:F

    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->invalidate()V

    return-void
.end method

.method public synthetic lambda$runPendingRequestAnimation$3$com-google-android-apps-camera-bottombar-RoundedThumbnailView(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->currentThumbnailDiameter:F

    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->invalidate()V

    return-void
.end method

.method public synthetic lambda$runPendingRequestAnimation$4$com-google-android-apps-camera-bottombar-RoundedThumbnailView(Landroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->currentRippleRingDiameter:F

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    iget v0, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->rippleRingThicknessBegin:F

    iget v1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->rippleRingThicknessEnd:F

    sub-float/2addr v1, v0

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->currentRippleRingThickness:F

    const v0, -0x41333333    # -0.4f

    mul-float p1, p1, v0

    const v0, 0x3ecccccd    # 0.4f

    add-float/2addr p1, v0

    iput p1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->currentRippleRingOpacity:F

    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->rippleRingDiameterEnd:F

    iget v3, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->thumbnailShrinkDiameterEnd:F

    iget-object v4, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->viewRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    div-float/2addr v1, v4

    iget-object v5, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->backgroundRequest:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView$RevealRequest;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView$RevealRequest;->getThumbnailPaint()Landroid/graphics/Paint;

    move-result-object v5

    if-eqz v5, :cond_0

    div-float v6, v3, v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, v6, v6, v0, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v7, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->viewRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v7, v0, v1, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget v5, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->innerStrokeWidth:F

    div-float/2addr v5, v6

    iget-object v6, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->borderStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    div-float/2addr v5, v4

    sub-float v5, v0, v5

    iget-object v6, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->borderStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    iget-object v5, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->foregroundRequest:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView$RevealRequest;

    const/4 v6, 0x0

    const/high16 v7, 0x437f0000    # 255.0f

    if-eqz v5, :cond_3

    iget v5, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->currentRippleRingThickness:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    iget-object v5, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->rippleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->ripplePaint:Landroid/graphics/Paint;

    iget v8, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->currentRippleRingOpacity:F

    mul-float v8, v8, v7

    float-to-int v8, v8

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v5, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->ripplePaint:Landroid/graphics/Paint;

    iget v8, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->currentRippleRingThickness:F

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v5, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->currentRippleRingDiameter:F

    div-float/2addr v5, v4

    iget-object v8, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->ripplePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v5, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    iget v5, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->currentThumbnailDiameter:F

    iget v8, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->rippleRingDiameterEnd:F

    div-float/2addr v5, v8

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, v5, v5, v0, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v8, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->foregroundRequest:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView$RevealRequest;

    invoke-static {v8}, Llkj;->C(Ljava/lang/Object;)V

    invoke-virtual {v8}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView$RevealRequest;->getThumbnailPaint()Landroid/graphics/Paint;

    move-result-object v8

    if-eqz v8, :cond_2

    iget-object v9, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->viewRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v9, v0, v1, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget v8, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->innerStrokeWidth:F

    div-float/2addr v8, v5

    iget-object v5, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->borderStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    div-float/2addr v8, v4

    sub-float v5, v0, v8

    iget-object v8, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->borderStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v5, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_2
    iget-object v5, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->revealCirclePaint:Landroid/graphics/Paint;

    iget v8, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->currentRevealCircleOpacity:F

    mul-float v8, v8, v7

    float-to-int v8, v8

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v5, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->rippleRingDiameterEnd:F

    div-float/2addr v5, v4

    iget-object v8, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->revealCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v5, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    iget-boolean v5, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->showLockedBadge:Z

    if-eqz v5, :cond_4

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->drawLockedFolderBadge(Landroid/graphics/Canvas;FF)V

    :cond_4
    iget v5, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->currentHitStateCircleOpacity:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    div-float/2addr v3, v2

    invoke-virtual {p1, v3, v3, v0, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v2, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->hitStateCirclePaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->currentHitStateCircleOpacity:F

    mul-float v3, v3, v7

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v2, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->rippleRingDiameterEnd:F

    div-float/2addr v2, v4

    iget-object v3, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->hitStateCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_5
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    iget p1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->rippleRingDiameterEnd:F

    float-to-int p1, p1

    invoke-virtual {p0, p1, p1}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->setMeasuredDimension(II)V

    return-void
.end method

.method public resetThumbnailView()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->setPressed(Z)V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->invalidate()V

    return-void
.end method

.method public setCallback(Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView$Callback;)V
    .locals 0

    invoke-static {p1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->callback:Lmqp;

    return-void
.end method

.method public setClickable(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setClickable(Z)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    invoke-static {p1}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->optionalOnClickListener:Lmqp;

    return-void
.end method

.method public setPressed(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setPressed(Z)V

    if-eqz p1, :cond_0

    const p1, 0x3f333333    # 0.7f

    iput p1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->currentHitStateCircleOpacity:F

    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->invalidate()V

    return-void

    :cond_0
    iget p1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->currentHitStateCircleOpacity:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->hitStateFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    return-void
.end method

.method public setThumbnail(Landroid/graphics/Bitmap;IZ)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljuh;->a()V

    iput-boolean p3, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->showLockedBadge:Z

    iget-object p3, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->pendingRequest:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView$RevealRequest;

    if-nez p3, :cond_0

    iget p3, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->rippleRingDiameterEnd:F

    const-string v0, ""

    invoke-static {p3, v0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView$RevealRequest;->createNonAnimatedRevealRequest(FLjava/lang/String;)Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView$RevealRequest;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->pendingRequest:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView$RevealRequest;

    :cond_0
    iget-object p3, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->pendingRequest:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView$RevealRequest;

    invoke-virtual {p3, p1, p2}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView$RevealRequest;->setThumbnailBitmap(Landroid/graphics/Bitmap;I)V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->backgroundRequest:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView$RevealRequest;

    iput-object p1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->foregroundRequest:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView$RevealRequest;

    :cond_1
    invoke-direct {p0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->runPendingRequestAnimation()V

    return-void
.end method

.method public startRevealThumbnailAnimation(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Ljuh;->a()V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0, p1}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView$RevealRequest;->createAnimatedRevealRequest(FLjava/lang/String;)Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView$RevealRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->pendingRequest:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView$RevealRequest;

    return-void
.end method

.method public stopFlashThumbnail()V
    .locals 0

    invoke-static {}, Ljuh;->a()V

    invoke-direct {p0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->stopBurstFlashAnimation()V

    return-void
.end method
