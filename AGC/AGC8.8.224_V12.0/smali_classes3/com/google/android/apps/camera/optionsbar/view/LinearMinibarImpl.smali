.class public Lcom/google/android/apps/camera/optionsbar/view/LinearMinibarImpl;
.super Landroid/support/v7/widget/LinearLayoutCompat;

# interfaces
.implements Lgeu;


# static fields
.field public static final synthetic a:I

.field private static final b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const v0, 0x7f0b0229

    const v1, 0x7f0b022a

    const v2, 0x7f0b0227

    const v3, 0x7f0b0228

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/camera/optionsbar/view/LinearMinibarImpl;->b:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;)V

    sput-object p0, LAGC;->linearMinibarImpl:Lcom/google/android/apps/camera/optionsbar/view/LinearMinibarImpl;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sput-object p0, LAGC;->linearMinibarImpl:Lcom/google/android/apps/camera/optionsbar/view/LinearMinibarImpl;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sput-object p0, LAGC;->linearMinibarImpl:Lcom/google/android/apps/camera/optionsbar/view/LinearMinibarImpl;

    return-void
.end method

.method private final o()Landroid/view/View;
    .locals 1

    const v0, 0x7f0b0226

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/optionsbar/view/LinearMinibarImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private final u()Landroid/view/View;
    .locals 1

    const v0, 0x7f0b022b

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/optionsbar/view/LinearMinibarImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private final v()Landroid/view/View;
    .locals 1

    const v0, 0x7f0b022c

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/optionsbar/view/LinearMinibarImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private final w()Landroid/view/View;
    .locals 1

    const v0, 0x7f0b022e

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/optionsbar/view/LinearMinibarImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private final x()Landroid/view/View;
    .locals 1

    const v0, 0x7f0b022f

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/optionsbar/view/LinearMinibarImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private final y()Landroid/widget/ImageView;
    .locals 1

    const v0, 0x7f0b022d

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/optionsbar/view/LinearMinibarImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/apps/camera/optionsbar/view/LinearMinibarImpl;->o()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/google/android/apps/camera/optionsbar/view/LinearMinibarImpl;->y()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public final b(Liko;Lhyn;)V
    .locals 2

    sget-object v0, Lhyn;->d:Lhyn;

    invoke-virtual {p2, v0}, Lhyn;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Liko;->d()Liko;

    move-result-object p1

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/apps/camera/optionsbar/view/LinearMinibarImpl;->getChildCount()I

    move-result v0

    if-ge p2, v0, :cond_2

    invoke-virtual {p0, p2}, Lcom/google/android/apps/camera/optionsbar/view/LinearMinibarImpl;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/apps/camera/optionsbar/view/LinearMinibarImpl;->o()Landroid/view/View;

    move-result-object v1

    if-eq v0, v1, :cond_1

    invoke-static {v0, p1}, Ljvd;->I(Landroid/view/View;Liko;)V

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final c()V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/apps/camera/optionsbar/view/LinearMinibarImpl;->o()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->rotationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/optionsbar/view/LinearMinibarImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f140378

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/apps/camera/optionsbar/view/LinearMinibarImpl;->o()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final d()V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/apps/camera/optionsbar/view/LinearMinibarImpl;->o()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->rotationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/optionsbar/view/LinearMinibarImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f140379

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/apps/camera/optionsbar/view/LinearMinibarImpl;->o()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final e(IZILjava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/google/android/apps/camera/optionsbar/view/LinearMinibarImpl;->b:[I

    aget p1, v0, p1

    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/optionsbar/view/LinearMinibarImpl;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-nez p2, :cond_0

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_0
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p1, p4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public final f(Lgyq;)V
    .locals 2

    sget-object v0, Lika;->a:Lika;

    sget-object v0, Lgyq;->a:Lgyq;

    invoke-virtual {p1}, Lgyq;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0x8

    packed-switch p1, :pswitch_data_0

    invoke-direct {p0}, Lcom/google/android/apps/camera/optionsbar/view/LinearMinibarImpl;->v()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/google/android/apps/camera/optionsbar/view/LinearMinibarImpl;->u()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/apps/camera/optionsbar/view/LinearMinibarImpl;->v()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/google/android/apps/camera/optionsbar/view/LinearMinibarImpl;->u()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/apps/camera/optionsbar/view/LinearMinibarImpl;->v()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/google/android/apps/camera/optionsbar/view/LinearMinibarImpl;->u()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final g(Lika;)V
    .locals 1

    sget-object v0, Lika;->a:Lika;

    sget-object v0, Lgyq;->a:Lgyq;

    invoke-virtual {p1}, Lika;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/apps/camera/optionsbar/view/LinearMinibarImpl;->y()Landroid/widget/ImageView;

    move-result-object p1

    const v0, 0x7f080380

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/apps/camera/optionsbar/view/LinearMinibarImpl;->y()Landroid/widget/ImageView;

    move-result-object p1

    const v0, 0x7f080242

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :pswitch_2
    invoke-direct {p0}, Lcom/google/android/apps/camera/optionsbar/view/LinearMinibarImpl;->y()Landroid/widget/ImageView;

    move-result-object p1

    const v0, 0x7f08022e

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :pswitch_3
    invoke-direct {p0}, Lcom/google/android/apps/camera/optionsbar/view/LinearMinibarImpl;->y()Landroid/widget/ImageView;

    move-result-object p1

    const v0, 0x7f080253

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :pswitch_4
    invoke-direct {p0}, Lcom/google/android/apps/camera/optionsbar/view/LinearMinibarImpl;->y()Landroid/widget/ImageView;

    move-result-object p1

    const v0, 0x7f08026e

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :pswitch_5
    invoke-direct {p0}, Lcom/google/android/apps/camera/optionsbar/view/LinearMinibarImpl;->y()Landroid/widget/ImageView;

    move-result-object p1

    const v0, 0x7f080246

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :pswitch_6
    invoke-direct {p0}, Lcom/google/android/apps/camera/optionsbar/view/LinearMinibarImpl;->y()Landroid/widget/ImageView;

    move-result-object p1

    const v0, 0x7f0801f2

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final h(Z)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/apps/camera/optionsbar/view/LinearMinibarImpl;->y()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x1

    if-eq v1, p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public final i()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/apps/camera/optionsbar/view/LinearMinibarImpl;->o()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final j(Z)V
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/google/android/apps/camera/optionsbar/view/LinearMinibarImpl;->x()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/google/android/apps/camera/optionsbar/view/LinearMinibarImpl;->w()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/android/apps/camera/optionsbar/view/LinearMinibarImpl;->w()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/google/android/apps/camera/optionsbar/view/LinearMinibarImpl;->x()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final k()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/apps/camera/optionsbar/view/LinearMinibarImpl;->w()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/google/android/apps/camera/optionsbar/view/LinearMinibarImpl;->x()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final l()Z
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/apps/camera/optionsbar/view/LinearMinibarImpl;->u()Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-direct {p0}, Lcom/google/android/apps/camera/optionsbar/view/LinearMinibarImpl;->v()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-direct {p0}, Lcom/google/android/apps/camera/optionsbar/view/LinearMinibarImpl;->w()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-direct {p0}, Lcom/google/android/apps/camera/optionsbar/view/LinearMinibarImpl;->x()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Lj$/util/DesugarArrays;->stream([Ljava/lang/Object;)Lj$/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lfjd;->i:Lfjd;

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public final m()Z
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/apps/camera/optionsbar/view/LinearMinibarImpl;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/optionsbar/view/LinearMinibarImpl;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/google/android/apps/camera/optionsbar/view/LinearMinibarImpl;->o()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public final n()V
    .locals 0

    return-void
.end method

.method protected final onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->onFinishInflate()V

    invoke-static {p0}, Linb;->k(Landroid/view/View;)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/optionsbar/view/LinearMinibarImpl;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method
