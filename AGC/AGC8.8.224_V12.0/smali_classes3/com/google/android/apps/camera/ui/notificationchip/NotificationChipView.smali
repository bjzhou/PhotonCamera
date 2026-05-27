.class public Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;
.super Ljs;


# instance fields
.field public final a:Landroid/content/Context;

.field public b:I

.field public c:Z

.field public d:Lice;

.field public e:Lhyn;

.field public f:J

.field public g:Ljava/lang/Runnable;

.field public final h:Ljdc;

.field private i:Landroid/widget/FrameLayout$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljs;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Ljdc;

    invoke-direct {p2}, Ljdc;-><init>()V

    iput-object p2, p0, Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;->h:Ljdc;

    iput-object p1, p0, Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;->g:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b()V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;->i:Landroid/widget/FrameLayout$LayoutParams;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;->getDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Liko;->b(Landroid/view/Display;Landroid/content/Context;)Liko;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;->e:Lhyn;

    invoke-static {v3}, Ljji;->m(Lhyn;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v3, p0, Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;->i:Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/widget/FrameLayout$LayoutParams;)V

    const v3, 0x7f07054c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :cond_1
    sget-object v3, Liko;->a:Liko;

    if-ne v0, v3, :cond_2

    const v0, 0x7f07054b

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v3, p0, Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;->i:Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/widget/FrameLayout$LayoutParams;)V

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move-object v0, v2

    goto :goto_0

    :cond_2
    sget-object v2, Liko;->c:Liko;

    if-ne v0, v2, :cond_3

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;->i:Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/widget/FrameLayout$LayoutParams;)V

    iget-object v2, p0, Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;->i:Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const/16 v2, 0x51

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;->i:Landroid/widget/FrameLayout$LayoutParams;

    :goto_0
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-ne v2, v3, :cond_5

    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    if-ne v2, v3, :cond_5

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-eq v1, v2, :cond_4

    goto :goto_1

    :cond_4
    return-void

    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_6
    :goto_2
    return-void
.end method

.method public final c(I)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;->g:Ljava/lang/Runnable;

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Ljs;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v0, p0, Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;->i:Landroid/widget/FrameLayout$LayoutParams;

    return-void
.end method
