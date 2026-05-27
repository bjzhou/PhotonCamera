.class public Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;
.super Landroid/view/View;

# interfaces
.implements Lcom/google/android/apps/camera/uiutils/ViewSmoothRotationUtil$Rotatee;


# static fields
.field public static final a:Lnak;


# instance fields
.field private A:I

.field private B:I

.field private C:F

.field private D:F

.field private E:F

.field private F:F

.field private G:F

.field private H:F

.field private I:F

.field private J:F

.field private K:Landroid/graphics/Paint;

.field private L:F

.field private M:F

.field private N:F

.field private O:F

.field private P:I

.field private Q:F

.field private R:I

.field private S:F

.field private T:I

.field private U:I

.field private V:F

.field private W:F

.field private aa:I

.field private ab:F

.field private ac:J

.field private ad:Landroid/graphics/Paint;

.field private ae:Landroid/graphics/Paint;

.field private af:Landroid/graphics/Paint;

.field private ag:Landroid/text/TextPaint;

.field private ah:Landroid/view/VelocityTracker;

.field private ai:I

.field private aj:I

.field private ak:I

.field private al:I

.field private am:I

.field private an:Lmvv;

.field private ao:Lmvv;

.field public final b:Ljava/util/concurrent/atomic/AtomicReference;

.field public c:F

.field public d:F

.field public e:F

.field public f:F

.field public g:F

.field public h:F

.field public i:F

.field public j:I

.field public k:F

.field public l:I

.field public m:F

.field public n:F

.field public o:Landroid/widget/Scroller;

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Lmvv;

.field public t:Lmvv;

.field public u:Lisd;

.field private final v:I

.field private final w:F

.field private final x:Z

.field private final y:F

.field private final z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/zoomui/view/ZoomSliderView"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p3, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Litj;->b:Litj;

    invoke-direct {p3, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->b:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 p3, 0x0

    iput p3, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->N:F

    sget-object v0, Lirr;->a:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060a91

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    const/16 v1, 0xe

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->A:I

    invoke-static {p0}, Linb;->h(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->B:I

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0708df

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const/16 v3, 0xf

    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->C:F

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0708da

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const/16 v3, 0xc

    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->E:F

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0708d9

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const/16 v3, 0xa

    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->F:F

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0708d1

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const/4 v3, 0x1

    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->D:F

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0708ad

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    const/16 v4, 0x10

    invoke-virtual {p2, v4, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->O:F

    const v0, 0x7f0401a5

    invoke-static {p0, v0}, Lkwp;->l(Landroid/view/View;I)I

    move-result v0

    const/4 v4, 0x7

    invoke-virtual {p2, v4, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->P:I

    const/16 v0, 0xb

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p2, v0, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->c:F

    const/16 v0, 0x9

    const/high16 v5, 0x41b00000    # 22.0f

    invoke-virtual {p2, v0, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->d:F

    const/4 v0, 0x2

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-virtual {p2, v0, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->h:F

    const/4 v0, 0x4

    const v7, 0x3d23d70a    # 0.04f

    invoke-virtual {p2, v0, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->S:F

    const/16 v0, 0xd

    const/16 v7, 0x19

    invoke-virtual {p2, v0, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->T:I

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v7, 0x7f0708d2

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v7, 0x41c80000    # 25.0f

    div-float/2addr v0, v7

    const/4 v7, 0x5

    invoke-virtual {p2, v7, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->i:F

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v7, 0x7f0708d4

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ab:F

    const v0, 0x3f333333    # 0.7f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    const/high16 v9, 0x40800000    # 4.0f

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    const/high16 v10, 0x41a00000    # 20.0f

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-static {v0, v4, v8, v9, v10}, Lmwn;->L(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmwn;

    move-result-object v0

    invoke-virtual {v0}, Lmvm;->v()Lmvv;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->an:Lmvv;

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->l()V

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-static {v0, v4, v8, v6}, Lmwn;->K(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmwn;

    move-result-object v0

    invoke-virtual {v0}, Lmvm;->v()Lmvv;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ao:Lmvv;

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0c00d2

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->R:I

    iput-boolean v1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->p:Z

    iput-boolean v1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->q:Z

    iput-boolean v3, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->r:Z

    iput p3, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->W:F

    iget p3, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->F:F

    add-float/2addr p3, p3

    iput p3, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->G:F

    iget p3, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->E:F

    add-float/2addr p3, p3

    iput p3, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->H:F

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    iput p2, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->v:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result p2

    iput p2, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->w:F

    instance-of p3, p1, Lcdd;

    if-eqz p3, :cond_0

    move-object p3, p1

    check-cast p3, Lcdd;

    invoke-interface {p3}, Lcdd;->a()Ldhi;

    move-result-object p3

    sget-object v0, Ldho;->ak:Ldhj;

    invoke-interface {p3, v0}, Ldhi;->l(Ldhj;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->x:Z

    sget-object v0, Ldho;->al:Ldhj;

    invoke-interface {p3, v0}, Ldhi;->h(Ldhj;)Lj$/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->y:F

    invoke-static {p3}, Lkba;->s(Ldhi;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->z:Z

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->x:Z

    iput v5, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->y:F

    iput-boolean v1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->z:Z

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->g()V

    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ad:Landroid/graphics/Paint;

    iget v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->A:I

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ae:Landroid/graphics/Paint;

    iget v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->B:I

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->af:Landroid/graphics/Paint;

    iget v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->P:I

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    const-string p3, "google-sans-text"

    invoke-static {p3, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p3

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0708cc

    invoke-virtual {v4, v5, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    new-instance v4, Landroid/text/TextPaint;

    invoke-direct {v4, v3}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v4, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ag:Landroid/text/TextPaint;

    iget v5, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->O:F

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v4, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ag:Landroid/text/TextPaint;

    iget v5, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->B:I

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v4, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ag:Landroid/text/TextPaint;

    invoke-virtual {v4, p3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object p3, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ag:Landroid/text/TextPaint;

    invoke-virtual {p3, v0}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    new-instance p3, Landroid/widget/Scroller;

    invoke-direct {p3, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->o:Landroid/widget/Scroller;

    const/16 v0, 0x7d0

    invoke-virtual {p3, v0}, Landroid/widget/Scroller;->extendDuration(I)V

    iget-object p3, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->o:Landroid/widget/Scroller;

    const v0, 0x3c23d70a    # 0.01f

    add-float/2addr p2, v0

    invoke-virtual {p3, p2}, Landroid/widget/Scroller;->setFriction(F)V

    iget-boolean p2, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->z:Z

    if-nez p2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0708e0

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    const v0, 0x7f060a92

    invoke-virtual {p2, v0, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    const v4, 0x7f0708dd

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->C:F

    iput v4, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->F:F

    iput v4, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->E:F

    const v4, 0x7f0708cf

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->D:F

    iput v4, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->G:F

    iput v4, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->H:F

    const v4, 0x7f0708d6

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->I:F

    const v4, 0x7f0708d7

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->J:F

    const v4, 0x7f0708ce

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ab:F

    const v4, 0x7f0708dc

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    iput v4, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->L:F

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v4, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->K:Landroid/graphics/Paint;

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->K:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->K:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p3, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->K:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object p3, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->af:Landroid/graphics/Paint;

    invoke-static {p0}, Linb;->h(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p3, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->af:Landroid/graphics/Paint;

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p3, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->af:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p3, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ad:Landroid/graphics/Paint;

    invoke-static {p0}, Linb;->d(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p3, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ad:Landroid/graphics/Paint;

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p3, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ad:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p3, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ad:Landroid/graphics/Paint;

    const v0, 0x7f0708de

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p3, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ae:Landroid/graphics/Paint;

    invoke-static {p0}, Linb;->h(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p3, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ae:Landroid/graphics/Paint;

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p3, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ae:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p3, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ae:Landroid/graphics/Paint;

    const v0, 0x7f0708d0

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance p3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v0, 0x7f040662

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextAppearance(I)V

    invoke-virtual {p3, v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    const v0, 0x7f0708cd

    invoke-virtual {p2, v0, p1, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ag:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/util/TypedValue;->getFloat()F

    move-result p1

    invoke-virtual {p3, p1}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    iget-object p1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ag:Landroid/text/TextPaint;

    const p3, 0x7f0708db

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object p1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ag:Landroid/text/TextPaint;

    invoke-static {p0}, Linb;->h(Landroid/view/View;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setColor(I)V

    iget-object p1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ag:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p1

    iget p2, p1, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget p1, p1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    add-float/2addr p2, p1

    div-float/2addr p2, v7

    iput p2, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->M:F

    return-void
.end method

.method private final n(I)I
    .locals 4

    const/high16 v0, 0x40000000    # 2.0f

    iget v1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->e:F

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->e:F

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    sub-double/2addr v0, v2

    iget v2, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->f:F

    iget v3, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->e:F

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    int-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v0

    double-to-float p1, v2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method private final o()V
    .locals 7

    iget v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->h:F

    iget v1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->m:F

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget v2, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->k:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->m:F

    iget v2, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->j:I

    iget v3, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->i:F

    div-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v3, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->l:I

    mul-int v1, v1, v3

    add-int/2addr v2, v1

    int-to-float v1, v2

    const/high16 v2, 0x41c80000    # 25.0f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->h:F

    iget-object v1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->u:Lisd;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->t:Lmvv;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->h:F

    int-to-float v4, v4

    sub-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x3d4ccccd    # 0.05f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_0

    iput v4, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->h:F

    goto :goto_1

    :cond_0
    cmpl-float v5, v4, v0

    if-nez v5, :cond_1

    goto :goto_3

    :cond_1
    iget v5, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->h:F

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v6

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_3

    iget v5, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->h:F

    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v6

    cmpl-float v5, v5, v6

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->u:Lisd;

    iget-boolean v1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->p:Z

    invoke-virtual {v0, v4, v1}, Lisd;->a(FZ)V

    iput v4, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->h:F

    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->u:Lisd;

    iget v1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->h:F

    iget-boolean v2, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->p:Z

    invoke-virtual {v0, v1, v2}, Lisd;->a(FZ)V

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->invalidate()V

    return-void
.end method

.method private final p(Landroid/graphics/Canvas;FFF)V
    .locals 6

    iget-boolean v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->z:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->C:F

    sub-float/2addr p3, v0

    sub-float v2, p3, p4

    add-float v4, p3, p4

    iget-object v5, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ae:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, p2

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ae:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private final q(Landroid/graphics/Canvas;FFF)V
    .locals 7

    iget-boolean v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->z:Z

    if-eqz v0, :cond_0

    sub-float v3, p3, p4

    add-float v5, p3, p4

    iget-object v6, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ad:Landroid/graphics/Paint;

    move-object v1, p1

    move v2, p2

    move v4, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ad:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 1

    iget v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->N:F

    return v0
.end method

.method public final synthetic b()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public final synthetic c()Ljava/lang/String;
    .locals 1

    const-string v0, "rotationDegree"

    return-object v0
.end method

.method public final computeScroll()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->o:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->o:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->o:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getFinalX()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->o:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->m:F

    invoke-direct {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->o()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->u:Lisd;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lisd;->b()V

    :cond_1
    return-void
.end method

.method public final d(F)F
    .locals 10

    iget-object v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->an:Lmvv;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmvv;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->an:Lmvv;

    invoke-virtual {v4}, Lmvv;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    iget-object v4, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->an:Lmvv;

    invoke-virtual {v4, v1}, Lmvv;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    cmpl-float v5, v3, v2

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->t:Lmvv;

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v5, v6}, Lmvv;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v5, p1, v5

    if-lez v5, :cond_0

    iget-object v5, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->t:Lmvv;

    invoke-virtual {v5, v1}, Lmvv;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_0

    div-float v0, v4, v3

    iget-object v5, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->t:Lmvv;

    invoke-virtual {v5, v6}, Lmvv;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    sub-float v5, p1, v5

    iget-object v7, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->t:Lmvv;

    invoke-virtual {v7, v1}, Lmvv;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v8, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->t:Lmvv;

    invoke-virtual {v8, v6}, Lmvv;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sub-int/2addr v7, v6

    int-to-float v6, v7

    div-float/2addr v5, v6

    float-to-double v6, v0

    float-to-double v8, v5

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-float v0, v5

    mul-float v3, v3, v0

    move v0, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    move v3, v4

    goto :goto_0

    :cond_1
    const/4 p1, 0x5

    invoke-static {v0, p1}, Lkba;->r(FI)F

    move-result p1

    return p1
.end method

.method public final e(F)F
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->an:Lmvv;

    invoke-virtual {v4}, Lmvv;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    iget-object v4, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->an:Lmvv;

    invoke-virtual {v4, v0}, Lmvv;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    cmpl-float v5, v3, v1

    if-eqz v5, :cond_0

    cmpl-float v5, p1, v3

    if-ltz v5, :cond_0

    cmpg-float v5, p1, v4

    if-gtz v5, :cond_0

    iget-object v2, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->t:Lmvv;

    invoke-virtual {v2, v0}, Lmvv;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v5, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->t:Lmvv;

    add-int/lit8 v6, v0, -0x1

    invoke-virtual {v5, v6}, Lmvv;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int/2addr v2, v5

    iget-object v5, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->t:Lmvv;

    invoke-virtual {v5, v6}, Lmvv;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    div-float v6, p1, v3

    div-float v3, v4, v3

    float-to-double v7, v3

    float-to-double v9, v6

    invoke-static {v9, v10}, Ljava/lang/Math;->log(D)D

    move-result-wide v9

    invoke-static {v7, v8}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    div-double/2addr v9, v6

    double-to-float v3, v9

    int-to-float v2, v2

    mul-float v3, v3, v2

    add-float/2addr v5, v3

    move v2, v5

    :cond_0
    add-int/lit8 v0, v0, 0x1

    move v3, v4

    goto :goto_0

    :cond_1
    return v2
.end method

.method public final f()I
    .locals 4

    iget v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->R:I

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->n(I)I

    move-result v0

    int-to-float v1, v0

    const/high16 v2, 0x41b00000    # 22.0f

    cmpl-float v3, v1, v2

    if-gtz v3, :cond_1

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    iget v1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->Q:F

    iget v2, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->g:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    iget v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->R:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->n(I)I

    move-result v0

    return v0
.end method

.method public final g()V
    .locals 5

    iget v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->c:F

    const/high16 v1, 0x41c80000    # 25.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->j:I

    iget v2, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->d:F

    mul-float v2, v2, v1

    float-to-int v2, v2

    iput v2, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->U:I

    iget v3, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->h:F

    mul-float v3, v3, v1

    iget v4, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->S:F

    mul-float v4, v4, v1

    float-to-int v1, v4

    iput v1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->l:I

    float-to-int v3, v3

    sub-int/2addr v3, v0

    int-to-float v3, v3

    int-to-float v1, v1

    div-float/2addr v3, v1

    iget v4, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->i:F

    mul-float v3, v3, v4

    iput v3, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->m:F

    sub-int/2addr v2, v0

    int-to-float v0, v2

    div-float/2addr v0, v1

    mul-float v0, v0, v4

    iput v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->k:F

    iget v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->am:I

    if-eqz v0, :cond_0

    int-to-float v0, v0

    div-float/2addr v0, v4

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->aa:I

    :cond_0
    return-void
.end method

.method protected final getLeftFadingEdgeStrength()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method protected final getRightFadingEdgeStrength()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public final h()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->setEnabled(Z)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->setVisibility(I)V

    return-void
.end method

.method public final i()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->an:Lmvv;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lmvv;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->an:Lmvv;

    invoke-static {v0}, Llyh;->S(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget v1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->g:F

    cmpg-float v0, v1, v0

    if-gez v0, :cond_0

    iput v1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->f:F

    iget-object v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ao:Lmvv;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->j(Lmvv;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ao:Lmvv;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->j(Lmvv;)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->f()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->d:F

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->g()V

    return-void
.end method

.method public final j(Lmvv;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ao:Lmvv;

    invoke-static {}, Lmwn;->D()Lmwl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmwl;->h(Ljava/lang/Iterable;)V

    iget-object v1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->s:Lmvv;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lmvv;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->s:Lmvv;

    invoke-static {v1}, Llyh;->S(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {p1}, Llyh;->S(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    cmpl-float p1, v1, p1

    if-lez p1, :cond_0

    iget p1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->f:F

    cmpg-float p1, v1, p1

    if-gez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->s:Lmvv;

    invoke-virtual {v0, p1}, Lmwl;->h(Ljava/lang/Iterable;)V

    :cond_0
    iget p1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->f:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmwl;->g(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lmwl;->f()Lmwn;

    move-result-object p1

    invoke-virtual {p1}, Lmvm;->v()Lmvv;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->an:Lmvv;

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->l()V

    return-void
.end method

.method public final k(F)V
    .locals 0

    iput p1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->f:F

    iput p1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->Q:F

    iput p1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->g:F

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->m()V

    return-void
.end method

.method public final l()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->an:Lmvv;

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcwd;

    const/16 v2, 0x12

    invoke-direct {v1, p0, v2}, Lcwd;-><init>(Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;I)V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lmtf;->a:Lj$/util/stream/Collector;

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmvv;

    iput-object v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->t:Lmvv;

    return-void
.end method

.method public final m()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->f()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->d:F

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->g()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->an:Lmvv;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lmvv;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->an:Lmvv;

    invoke-static {v0}, Llyh;->S(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget v1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->f:F

    cmpg-float v0, v1, v0

    if-gez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ao:Lmvv;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->j(Lmvv;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->i()V

    :cond_2
    return-void
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v3, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ab:F

    sub-float/2addr v1, v3

    iget-boolean v3, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->z:Z

    if-eqz v3, :cond_0

    iget v3, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->L:F

    add-float/2addr v1, v3

    :cond_0
    iget v3, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->m:F

    iget v4, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->aj:I

    int-to-float v4, v4

    sub-float v5, v3, v4

    iget v6, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->i:F

    const/high16 v8, 0x41200000    # 10.0f

    mul-float v9, v6, v8

    iget v10, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->l:I

    int-to-float v11, v10

    iget v12, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->j:I

    mul-float v9, v9, v11

    div-float/2addr v9, v8

    div-float/2addr v5, v9

    float-to-int v5, v5

    add-int/2addr v5, v12

    add-int v9, v10, v10

    int-to-float v9, v9

    const/high16 v13, 0x41c80000    # 25.0f

    mul-float v9, v9, v13

    const/high16 v14, 0x40800000    # 4.0f

    mul-float v9, v9, v14

    float-to-int v9, v9

    sub-int/2addr v5, v9

    if-ge v5, v12, :cond_1

    move v5, v12

    :cond_1
    iget v15, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->aa:I

    add-int v16, v5, v9

    add-int v16, v16, v15

    iget v15, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->U:I

    add-int v9, v16, v9

    if-le v9, v15, :cond_2

    goto :goto_0

    :cond_2
    move v15, v9

    :goto_0
    sub-int v9, v5, v12

    int-to-float v9, v9

    div-float/2addr v9, v11

    mul-float v9, v9, v6

    sub-float/2addr v3, v9

    iget v6, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->T:I

    mul-int v10, v10, v6

    sub-float/2addr v4, v3

    :goto_1
    if-gt v5, v15, :cond_10

    rem-int v3, v5, v10

    if-nez v3, :cond_f

    iget v3, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->am:I

    int-to-float v3, v3

    iget v6, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->i:F

    mul-float v6, v6, v13

    mul-float v6, v6, v14

    int-to-float v9, v5

    div-float/2addr v9, v13

    iget-object v11, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->t:Lmvv;

    invoke-static {v11}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v11

    new-instance v12, Litp;

    invoke-direct {v12, v9}, Litp;-><init>(F)V

    invoke-interface {v11, v12}, Lj$/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v11

    const/high16 v12, 0x40400000    # 3.0f

    div-float/2addr v6, v12

    sub-float/2addr v3, v6

    const/high16 v6, 0x40c00000    # 6.0f

    const/high16 v16, 0x40a00000    # 5.0f

    if-eqz v11, :cond_c

    iget v11, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->i:F

    mul-float v11, v11, v13

    mul-float v17, v11, v14

    div-float v17, v17, v12

    cmpl-float v12, v4, v17

    if-lez v12, :cond_a

    cmpg-float v12, v4, v3

    if-gez v12, :cond_a

    iget v3, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->D:F

    invoke-direct {v0, v7, v4, v1, v3}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->p(Landroid/graphics/Canvas;FFF)V

    invoke-virtual {v0, v9}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->d(F)F

    move-result v3

    iget v6, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->n:F

    div-float/2addr v3, v6

    const/4 v6, 0x3

    invoke-static {v3, v6}, Lkba;->r(FI)F

    move-result v3

    iget v9, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->y:F

    cmpl-float v9, v3, v9

    if-lez v9, :cond_3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    :cond_3
    const/high16 v9, 0x3f800000    # 1.0f

    const-string v11, "%.01f"

    const/4 v12, 0x0

    const/4 v14, 0x1

    cmpl-float v16, v3, v9

    if-ltz v16, :cond_4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    new-array v2, v14, [Ljava/lang/Object;

    mul-float v16, v3, v8

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v8

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v2, v12

    invoke-static {v13, v11, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move/from16 v18, v10

    goto :goto_2

    :cond_4
    iget-boolean v2, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->x:Z

    if-eqz v2, :cond_5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    new-array v6, v14, [Ljava/lang/Object;

    mul-float v13, v3, v8

    move/from16 v18, v10

    float-to-double v9, v13

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    const-wide/high16 v19, 0x4024000000000000L    # 10.0

    div-double v9, v9, v19

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v6, v12

    invoke-static {v2, v11, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_5
    move/from16 v18, v10

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    new-array v6, v14, [Ljava/lang/Object;

    mul-float v9, v3, v8

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v8

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v6, v12

    invoke-static {v2, v11, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v6

    if-ltz v3, :cond_7

    const-string v3, ".0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2, v12, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_6
    goto :goto_3

    :cond_7
    const/4 v3, 0x3

    invoke-virtual {v2, v14, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_3
    iget-object v3, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ag:Landroid/text/TextPaint;

    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v3, v6

    sub-float v6, v4, v3

    iget v9, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ab:F

    add-float/2addr v9, v9

    add-float/2addr v9, v1

    iget-boolean v10, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->z:Z

    if-eqz v10, :cond_8

    add-float/2addr v3, v6

    iget v10, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->M:F

    add-float/2addr v10, v9

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v11, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->N:F

    invoke-virtual {v7, v11, v3, v10}, Landroid/graphics/Canvas;->rotate(FFF)V

    :cond_8
    iget-object v3, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ag:Landroid/text/TextPaint;

    invoke-virtual {v7, v2, v6, v9, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-boolean v2, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->z:Z

    if-eqz v2, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    const/high16 v9, 0x41c80000    # 25.0f

    const/high16 v10, 0x40800000    # 4.0f

    const/high16 v11, 0x40000000    # 2.0f

    goto/16 :goto_4

    :cond_9
    const/high16 v9, 0x41c80000    # 25.0f

    const/high16 v10, 0x40800000    # 4.0f

    const/high16 v11, 0x40000000    # 2.0f

    goto/16 :goto_4

    :cond_a
    move/from16 v18, v10

    const/high16 v2, 0x40000000    # 2.0f

    div-float v9, v11, v2

    cmpl-float v2, v4, v9

    if-lez v2, :cond_b

    mul-float v11, v11, v16

    div-float/2addr v11, v6

    add-float/2addr v3, v11

    cmpg-float v2, v4, v3

    if-gez v2, :cond_b

    iget v2, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->H:F

    invoke-direct {v0, v7, v4, v1, v2}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->p(Landroid/graphics/Canvas;FFF)V

    const/high16 v9, 0x41c80000    # 25.0f

    const/high16 v10, 0x40800000    # 4.0f

    const/high16 v11, 0x40000000    # 2.0f

    goto :goto_4

    :cond_b
    iget v2, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->G:F

    invoke-direct {v0, v7, v4, v1, v2}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->p(Landroid/graphics/Canvas;FFF)V

    const/high16 v9, 0x41c80000    # 25.0f

    const/high16 v10, 0x40800000    # 4.0f

    const/high16 v11, 0x40000000    # 2.0f

    goto :goto_4

    :cond_c
    move/from16 v18, v10

    iget v2, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->i:F

    const/high16 v9, 0x41c80000    # 25.0f

    mul-float v2, v2, v9

    const/high16 v10, 0x40800000    # 4.0f

    mul-float v14, v2, v10

    div-float/2addr v14, v12

    cmpl-float v11, v4, v14

    if-lez v11, :cond_d

    cmpg-float v11, v4, v3

    if-gez v11, :cond_d

    iget v2, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->C:F

    invoke-direct {v0, v7, v4, v1, v2}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->q(Landroid/graphics/Canvas;FFF)V

    const/high16 v11, 0x40000000    # 2.0f

    goto :goto_4

    :cond_d
    const/high16 v11, 0x40000000    # 2.0f

    div-float v12, v2, v11

    cmpl-float v12, v4, v12

    if-lez v12, :cond_e

    mul-float v2, v2, v16

    div-float/2addr v2, v6

    add-float/2addr v3, v2

    cmpg-float v2, v4, v3

    if-gez v2, :cond_e

    iget v2, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->E:F

    invoke-direct {v0, v7, v4, v1, v2}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->q(Landroid/graphics/Canvas;FFF)V

    goto :goto_4

    :cond_e
    iget v2, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->F:F

    invoke-direct {v0, v7, v4, v1, v2}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->q(Landroid/graphics/Canvas;FFF)V

    goto :goto_4

    :cond_f
    move/from16 v18, v10

    const/high16 v9, 0x41c80000    # 25.0f

    const/high16 v10, 0x40800000    # 4.0f

    const/high16 v11, 0x40000000    # 2.0f

    :goto_4
    iget v2, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->l:I

    add-int/2addr v5, v2

    iget v2, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->i:F

    add-float/2addr v4, v2

    move/from16 v10, v18

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v13, 0x41c80000    # 25.0f

    const/high16 v14, 0x40800000    # 4.0f

    goto/16 :goto_1

    :cond_10
    iget-boolean v2, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->z:Z

    if-eqz v2, :cond_11

    iget v2, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->C:F

    add-float/2addr v1, v2

    iget v2, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->I:F

    sub-float v8, v1, v2

    iget v1, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->aj:I

    int-to-float v1, v1

    iget v3, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->J:F

    sub-float v4, v1, v3

    sub-float v5, v8, v2

    add-float v6, v1, v3

    add-float v9, v8, v2

    iget-object v10, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->K:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v4

    move v3, v5

    move v4, v6

    move v5, v9

    move-object v6, v10

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v1, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->aj:I

    int-to-float v1, v1

    iget v2, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->J:F

    sub-float v3, v1, v2

    iget v4, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->I:F

    sub-float v5, v8, v4

    add-float v6, v1, v2

    add-float/2addr v8, v4

    iget-object v9, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->af:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v3

    move v3, v5

    move v4, v6

    move v5, v8

    move-object v6, v9

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void

    :cond_11
    iget v2, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->aj:I

    int-to-float v2, v2

    iget v3, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->D:F

    iget-object v4, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->af:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v1, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected final onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->am:I

    shr-int/lit8 p2, p1, 0x1

    iput p2, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->aj:I

    iget p2, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->aa:I

    if-nez p2, :cond_0

    int-to-float p1, p1

    iget p2, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->i:F

    div-float/2addr p1, p2

    iget p2, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->l:I

    int-to-float p2, p2

    mul-float p1, p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->aa:I

    :cond_0
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 19

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->isEnabled()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    return v5

    :cond_0
    iget-object v4, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ah:Landroid/view/VelocityTracker;

    if-nez v4, :cond_1

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ah:Landroid/view/VelocityTracker;

    :cond_1
    iget-object v4, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ah:Landroid/view/VelocityTracker;

    move-object/from16 v6, p1

    invoke-virtual {v4, v6}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/high16 v4, 0x41c80000    # 25.0f

    const/4 v7, 0x1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    iput-boolean v5, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->q:Z

    iget-object v1, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->u:Lisd;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Lisd;->b()V

    goto/16 :goto_3

    :pswitch_1
    iget v1, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ak:I

    sub-int v1, v2, v1

    iget-boolean v6, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->q:Z

    if-nez v6, :cond_2

    iget v4, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->al:I

    sub-int v4, v3, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-lt v1, v4, :cond_9

    iget v1, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ai:I

    sub-int v1, v2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v4, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->v:I

    if-lt v1, v4, :cond_9

    iput-boolean v7, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->q:Z

    goto/16 :goto_3

    :cond_2
    iget-boolean v6, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->r:Z

    const/4 v8, 0x0

    if-nez v6, :cond_3

    goto :goto_0

    :cond_3
    iget v6, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->V:F

    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iget v9, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->k:F

    invoke-static {v6, v9}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iput v6, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->V:F

    iget v9, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->j:I

    iget v10, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->i:F

    div-float/2addr v6, v10

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iget v10, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->l:I

    mul-int v6, v6, v10

    add-int/2addr v9, v6

    int-to-float v6, v9

    div-float/2addr v6, v4

    iput v6, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->h:F

    iget-object v6, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->t:Lmvv;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    :cond_4
    if-ge v5, v9, :cond_5

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget v11, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->h:F

    int-to-float v10, v10

    sub-float/2addr v11, v10

    add-int/lit8 v5, v5, 0x1

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    const v12, 0x3d4ccccd    # 0.05f

    cmpg-float v11, v11, v12

    if-gez v11, :cond_4

    iget v5, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->h:F

    sub-float/2addr v5, v10

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    iget v5, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->W:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v4, v5, v4

    if-gtz v4, :cond_5

    iget v4, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->W:F

    int-to-float v1, v1

    add-float/2addr v4, v1

    iput v4, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->W:F

    goto :goto_1

    :cond_5
    :goto_0
    iget v4, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->m:F

    neg-int v1, v1

    int-to-float v1, v1

    add-float/2addr v1, v1

    add-float/2addr v4, v1

    iput v4, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->m:F

    iput v4, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->V:F

    iput v8, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->W:F

    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->o()V

    goto/16 :goto_3

    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    iget-wide v10, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ac:J

    sub-long/2addr v8, v10

    long-to-float v1, v8

    const/high16 v8, 0x43480000    # 200.0f

    cmpg-float v1, v1, v8

    if-gez v1, :cond_6

    iget-object v1, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->u:Lisd;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Lisd;->b()V

    goto/16 :goto_3

    :cond_6
    iget-object v1, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ah:Landroid/view/VelocityTracker;

    const/16 v8, 0x3e8

    const/high16 v9, 0x447a0000    # 1000.0f

    invoke-virtual {v1, v8, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v1, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ah:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-lt v9, v8, :cond_7

    iget-object v10, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->o:Landroid/widget/Scroller;

    iget v4, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->m:F

    float-to-int v11, v4

    const/4 v12, 0x0

    neg-int v13, v1

    const/4 v14, 0x0

    const/4 v15, 0x0

    iget v1, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->k:F

    float-to-int v1, v1

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v16, v1

    invoke-virtual/range {v10 .. v18}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    iget-object v1, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->u:Lisd;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Lisd;->b()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->invalidate()V

    goto :goto_2

    :cond_7
    iget-boolean v1, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->q:Z

    if-nez v1, :cond_8

    iget v1, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->m:F

    iget v8, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->am:I

    int-to-float v8, v8

    iget v9, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ai:I

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v8, v10

    int-to-float v9, v9

    sub-float/2addr v8, v9

    sub-float/2addr v1, v8

    iget v8, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->j:I

    iget v9, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->i:F

    div-float/2addr v1, v9

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v9, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->l:I

    mul-int v1, v1, v9

    add-int/2addr v8, v1

    int-to-float v1, v8

    div-float/2addr v1, v4

    new-instance v4, Leug;

    const/4 v8, 0x7

    invoke-direct {v4, v0, v1, v8}, Leug;-><init>(Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;FI)V

    const-wide/16 v8, 0xa

    invoke-virtual {v0, v4, v8, v9}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_8
    iget-object v1, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->u:Lisd;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Lisd;->b()V

    :goto_2
    iput-boolean v5, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->q:Z

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ac:J

    goto :goto_3

    :pswitch_3
    iget-object v1, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->o:Landroid/widget/Scroller;

    invoke-virtual {v1, v7}, Landroid/widget/Scroller;->forceFinished(Z)V

    iput v2, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ai:I

    iput-boolean v5, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->q:Z

    iput-boolean v7, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->p:Z

    iget-object v1, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->u:Lisd;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v1, Lisd;->a:Lisi;

    invoke-virtual {v4}, Lisi;->m()V

    iget-object v1, v1, Lisd;->a:Lisi;

    iget-object v1, v1, Lisi;->E:Lita;

    invoke-virtual {v1}, Lisk;->n()V

    :cond_9
    :goto_3
    iput v2, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ak:I

    iput v3, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->al:I

    return v7

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final setRotationDegree(F)V
    .locals 0

    iput p1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->N:F

    iget-boolean p1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->z:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->invalidate()V

    :cond_0
    return-void
.end method
