.class public final Livn;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;I)V
    .locals 0

    iput p2, p0, Livn;->b:I

    iput-object p1, p0, Livn;->a:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;I)V
    .locals 0

    iput p2, p0, Livn;->b:I

    iput-object p1, p0, Livn;->a:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;I)V
    .locals 0

    iput p2, p0, Livn;->b:I

    iput-object p1, p0, Livn;->a:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;I)V
    .locals 0

    iput p2, p0, Livn;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Livn;->a:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 4

    iget v0, p0, Livn;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Livn;->a:Landroid/view/ViewGroup;

    move-object v2, v0

    check-cast v2, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;

    iget-boolean v3, v2, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->ad:Z

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->ab:Lixf;

    invoke-interface {v3, v0}, Lixf;->c(Landroid/view/View;)I

    move-result v0

    iget v3, v2, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->ae:I

    if-ne v0, v3, :cond_2

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Livn;->a:Landroid/view/ViewGroup;

    check-cast v0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;

    iget-boolean v3, v0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->ac:Z

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Livn;->a:Landroid/view/ViewGroup;

    check-cast v0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;

    invoke-virtual {v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->aB()V

    iget-object v0, p0, Livn;->a:Landroid/view/ViewGroup;

    check-cast v0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;

    iput-boolean v1, v0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->ac:Z

    return v1

    :cond_0
    return v2

    :pswitch_1
    iget-object v0, p0, Livn;->a:Landroid/view/ViewGroup;

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->i(I)V

    return v2

    :pswitch_2
    iget-object v0, p0, Livn;->a:Landroid/view/ViewGroup;

    check-cast v0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;

    invoke-virtual {v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Livn;->a:Landroid/view/ViewGroup;

    check-cast v0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;

    iput-boolean v2, v0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->l:Z

    return v2

    :cond_1
    :goto_0
    invoke-virtual {v2}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v2, v2, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->ac:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_2
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
