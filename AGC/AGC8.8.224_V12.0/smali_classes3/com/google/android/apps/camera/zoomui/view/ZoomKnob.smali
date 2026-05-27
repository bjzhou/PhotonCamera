.class public Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;
.super Ljs;


# static fields
.field private static final i:Lnak;


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final b:Landroid/content/res/Resources;

.field public final c:I

.field public final d:I

.field public final e:Ljava/util/concurrent/atomic/AtomicReference;

.field public f:I

.field public g:F

.field public h:Landroid/widget/SeekBar;

.field private final j:I

.field private k:Z

.field private l:Z

.field private m:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/zoomui/view/ZoomKnob"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->i:Lnak;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Ljs;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p2, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Litj;->b:Litj;

    invoke-direct {p2, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->e:Ljava/util/concurrent/atomic/AtomicReference;

    iput-boolean v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->k:Z

    iput-boolean v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->l:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->b:Landroid/content/res/Resources;

    const v0, 0x7f0708ca

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->j:I

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0708b0

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->d:I

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0708ab

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sub-int/2addr p2, v0

    div-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->c:I

    instance-of p2, p1, Lcdd;

    if-eqz p2, :cond_0

    check-cast p1, Lcdd;

    invoke-interface {p1}, Lcdd;->a()Ldhi;

    move-result-object p1

    sget-object p2, Ldho;->a:Ldhk;

    invoke-interface {p1}, Ldhi;->g()V

    sget-object p2, Ldho;->ak:Ldhj;

    invoke-interface {p1, p2}, Ldhi;->l(Ldhj;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->l:Z

    sget-object p2, Ldho;->al:Ldhj;

    invoke-interface {p1, p2}, Ldhi;->h(Ldhj;)Lj$/util/Optional;

    move-result-object p2

    invoke-virtual {p2}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->m:F

    sget-object p2, Ldho;->ah:Ldhj;

    invoke-interface {p1, p2}, Ldhi;->l(Ldhj;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->k:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(FF)F
    .locals 2

    sget-object v0, Litj;->a:Litj;

    iget-object v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Litj;

    invoke-virtual {v0}, Litj;->ordinal()I

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    iget-object p2, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Not a supported normalization setting: "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    return p1

    :pswitch_1
    return p2

    :pswitch_2
    cmpg-float p2, p1, v1

    if-gez p2, :cond_0

    return v1

    :cond_0
    return p1

    :pswitch_3
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(FFF)Ljava/lang/String;
    .locals 5

    invoke-virtual {p0, p2, p3}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->a(FF)F

    move-result v0

    div-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    sget-object v1, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->i:Lnak;

    invoke-virtual {v1}, Lnaf;->c()Lnaz;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v3, "Invalid zoom value: %g"

    const/16 v4, 0x1161

    invoke-static {v2, v3, v0, v4}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    invoke-virtual {v1}, Lnaf;->c()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v1, 0x1162

    invoke-interface {v0, v1}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    const-string v2, "Zoom ratio: %g, Min zoom: %g, BaseZoom: %g"

    invoke-interface {v0, v2, v1, p2, p3}, Lnah;->B(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move v0, p1

    :goto_1
    const/high16 p2, 0x42c80000    # 100.0f

    mul-float v0, v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

    int-to-double p2, p2

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p2, v0

    double-to-float p2, p2

    new-instance p3, Ljava/math/BigDecimal;

    float-to-double v0, p2

    invoke-direct {p3, v0, v1}, Ljava/math/BigDecimal;-><init>(D)V

    sget-object p2, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    const/4 v0, 0x2

    invoke-virtual {p3, v0, p2}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p2

    invoke-virtual {p2}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide p2

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->l:Z

    if-eqz v1, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v1

    if-gez p1, :cond_2

    sget-object p1, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    goto :goto_2

    :cond_2
    sget-object p1, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    :goto_2
    invoke-virtual {v0, p1}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    invoke-virtual {v0, p2, p3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-boolean v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->k:Z

    const-string v1, "\u00d7"

    if-eqz v0, :cond_4

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    mul-double v2, v2, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-float v0, v2

    const/high16 v2, 0x41200000    # 10.0f

    div-float/2addr v0, v2

    iget v2, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->m:F

    cmpl-float v2, v0, v2

    if-gez v2, :cond_3

    float-to-int v2, v0

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-nez v0, :cond_4

    :cond_3
    new-instance p1, Ljava/text/DecimalFormat;

    const-string v0, "0"

    invoke-direct {p1, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-static {p2, p3}, Ljava/lang/Math;->round(D)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_3
    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    goto :goto_3
.end method

.method public final c(Z)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->b:Landroid/content/res/Resources;

    const v2, 0x7f0708af

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->b:Landroid/content/res/Resources;

    const v3, 0x7f0708ab

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->f:I

    add-int/2addr v1, v2

    const/4 v3, 0x1

    if-eq v3, p1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final d(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->h:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->h:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method public final e(IFFF)V
    .locals 3

    iget v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->j:I

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->g:F

    mul-float v0, v0, v1

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    float-to-int v0, v0

    const v2, -0xc350

    add-int/2addr p1, v2

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    int-to-float p1, p1

    mul-float v0, v0, p1

    const p1, 0x47435000    # 50000.0f

    div-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/4 p1, 0x0

    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p0, v1}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, p2, p3, p4}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->b(FFF)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
