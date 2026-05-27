.class public Lcom/google/android/apps/camera/toast/ToastView;
.super Landroid/widget/FrameLayout;


# static fields
.field public static final d:Lj$/time/Duration;

.field public static final e:Lj$/time/Duration;

.field public static final f:Lnak;


# instance fields
.field private a:Landroid/view/View;

.field public g:F

.field public h:J

.field public i:Ljava/lang/Runnable;

.field public j:Ljava/lang/Runnable;

.field public k:Ljava/lang/Runnable;

.field public l:Ljava/lang/Runnable;

.field public m:Landroid/widget/PopupWindow;

.field public n:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-wide/16 v0, 0x12c

    invoke-static {v0, v1}, Lj$/time/Duration;->ofMillis(J)Lj$/time/Duration;

    move-result-object v2

    sput-object v2, Lcom/google/android/apps/camera/toast/ToastView;->d:Lj$/time/Duration;

    invoke-static {v0, v1}, Lj$/time/Duration;->ofMillis(J)Lj$/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/camera/toast/ToastView;->e:Lj$/time/Duration;

    const-string v0, "com/google/android/apps/camera/toast/ToastView"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/camera/toast/ToastView;->f:Lnak;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object p1, Lhck;->e:Lhck;

    iput-object p1, p0, Lcom/google/android/apps/camera/toast/ToastView;->i:Ljava/lang/Runnable;

    sget-object p1, Lhck;->f:Lhck;

    iput-object p1, p0, Lcom/google/android/apps/camera/toast/ToastView;->j:Ljava/lang/Runnable;

    sget-object p1, Lhck;->g:Lhck;

    iput-object p1, p0, Lcom/google/android/apps/camera/toast/ToastView;->k:Ljava/lang/Runnable;

    sget-object p1, Lhck;->h:Lhck;

    iput-object p1, p0, Lcom/google/android/apps/camera/toast/ToastView;->l:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public b(Lhql;)V
    .locals 4

    const v0, 0x7f0b03aa

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/toast/ToastView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const v0, 0x7f0b03a9

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/toast/ToastView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {p1}, Lhql;->a()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Lcom/google/android/apps/camera/toast/ToastView;->e:Lj$/time/Duration;

    invoke-virtual {v2}, Lj$/time/Duration;->toMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    sget-object v2, Lcom/google/android/apps/camera/toast/ToastView;->d:Lj$/time/Duration;

    invoke-virtual {v2}, Lj$/time/Duration;->toMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/apps/camera/toast/ToastView;->h:J

    new-instance v0, Lhph;

    const/16 v1, 0x9

    invoke-direct {v0, p0, v1}, Lhph;-><init>(Lcom/google/android/apps/camera/toast/ToastView;I)V

    iput-object v0, p0, Lcom/google/android/apps/camera/toast/ToastView;->i:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/toast/ToastView;->g(Lhql;)V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/toast/ToastView;->e()Landroid/widget/PopupWindow;

    iget-object v0, p1, Lhql;->b:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/google/android/apps/camera/toast/ToastView;->j:Ljava/lang/Runnable;

    iget-object v0, p1, Lhql;->d:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/google/android/apps/camera/toast/ToastView;->k:Ljava/lang/Runnable;

    iget-object p1, p1, Lhql;->c:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/google/android/apps/camera/toast/ToastView;->l:Ljava/lang/Runnable;

    const p1, 0x7f0b03a7

    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/toast/ToastView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/camera/toast/ToastView;->a:Landroid/view/View;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    add-int/2addr p1, p1

    invoke-virtual {p0}, Lcom/google/android/apps/camera/toast/ToastView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    int-to-float p1, p1

    const/4 v1, 0x0

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Lcom/google/android/apps/camera/toast/ToastView;->g:F

    :cond_2
    return-void
.end method

.method public c()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/apps/camera/toast/ToastView;->a:Landroid/view/View;

    new-instance v1, Lgdu;

    const/4 v2, 0x6

    invoke-direct {v1, p0, v2}, Lgdu;-><init>(Lcom/google/android/apps/camera/toast/ToastView;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public d(Liko;)V
    .locals 0

    return-void
.end method

.method public final e()Landroid/widget/PopupWindow;
    .locals 3

    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/google/android/apps/camera/toast/ToastView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lcom/google/android/apps/camera/toast/ToastView;->m:Landroid/widget/PopupWindow;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/apps/camera/toast/ToastView;->m:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lcom/google/android/apps/camera/toast/ToastView;->m:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/camera/toast/ToastView;->i:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/toast/ToastView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/toast/ToastView;->setAlpha(F)V

    iget-object v0, p0, Lcom/google/android/apps/camera/toast/ToastView;->m:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/toast/ToastView;->removeAllViews()V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/toast/ToastView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public final g(Lhql;)V
    .locals 0

    iget-object p1, p1, Lhql;->a:Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/google/android/apps/camera/toast/ToastView;->n:Landroid/view/View;

    return-void
.end method

.method public final h()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/apps/camera/toast/ToastView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/camera/toast/ToastView;->d:Lj$/time/Duration;

    invoke-virtual {v1}, Lj$/time/Duration;->toMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lhph;

    const/16 v2, 0xa

    invoke-direct {v1, p0, v2}, Lhph;-><init>(Lcom/google/android/apps/camera/toast/ToastView;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/camera/toast/ToastView;->g:F

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method
