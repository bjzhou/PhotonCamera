.class public final synthetic Livv;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/camera/zoomui/view/ZoomUi;I)V
    .locals 0

    iput p2, p0, Livv;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Livv;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;I)V
    .locals 0

    iput p2, p0, Livv;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Livv;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Liwg;I)V
    .locals 0

    iput p2, p0, Livv;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Livv;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget v0, p0, Livv;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object p1, p0, Livv;->a:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;

    iget-object p1, p1, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->ab:Liwg;

    invoke-virtual {p1}, Liwg;->c()V

    return-void

    :pswitch_0
    iget-object v0, p0, Livv;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    const v1, 0x7f0b03ae

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :pswitch_1
    iget-object p1, p0, Livv;->a:Ljava/lang/Object;

    sget v0, Livw;->a:I

    check-cast p1, Liwg;

    invoke-virtual {p1}, Liwg;->c()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
