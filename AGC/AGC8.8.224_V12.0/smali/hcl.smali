.class public final Lhcl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 0

    iput p2, p0, Lhcl;->b:I

    iput-object p1, p0, Lhcl;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;I)V
    .locals 0

    iput p2, p0, Lhcl;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhcl;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;I)V
    .locals 0

    iput p2, p0, Lhcl;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhcl;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lhcq;I)V
    .locals 0

    iput p2, p0, Lhcl;->b:I

    iput-object p1, p0, Lhcl;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lhrz;I)V
    .locals 0

    iput p2, p0, Lhcl;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhcl;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhxe;I)V
    .locals 0

    iput p2, p0, Lhcl;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhcl;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Libo;I)V
    .locals 0

    iput p2, p0, Lhcl;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhcl;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Licy;I)V
    .locals 0

    iput p2, p0, Lhcl;->b:I

    iput-object p1, p0, Lhcl;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 4

    iget v0, p0, Lhcl;->b:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object p1, p0, Lhcl;->a:Ljava/lang/Object;

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    return-void

    :pswitch_0
    iget-object p1, p0, Lhcl;->a:Ljava/lang/Object;

    check-cast p1, Licy;

    invoke-virtual {p1}, Licy;->a()Licw;

    move-result-object p1

    iget-object p2, p0, Lhcl;->a:Ljava/lang/Object;

    check-cast p2, Licy;

    invoke-virtual {p2}, Licy;->getContentView()Landroid/view/View;

    move-result-object p2

    iget p3, p1, Licw;->e:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iget-object p3, p0, Lhcl;->a:Ljava/lang/Object;

    check-cast p3, Licy;

    iget-object p3, p3, Licy;->h:Liko;

    sget-object p4, Liko;->b:Liko;

    iget-object p5, p0, Lhcl;->a:Ljava/lang/Object;

    check-cast p5, Licy;

    iget-object p5, p5, Licy;->a:Landroid/view/View;

    iget-boolean p6, p1, Licw;->f:Z

    invoke-static {p5, p6}, Licy;->h(Landroid/view/View;Z)I

    move-result p5

    int-to-float p5, p5

    iget-object p6, p0, Lhcl;->a:Ljava/lang/Object;

    check-cast p6, Licy;

    iget-object p6, p6, Licy;->a:Landroid/view/View;

    invoke-virtual {p6}, Landroid/view/View;->getMeasuredWidth()I

    move-result p6

    int-to-float p6, p6

    iget-boolean p7, p1, Licw;->f:Z

    invoke-static {p2, p7}, Licy;->h(Landroid/view/View;Z)I

    move-result p7

    int-to-float p7, p7

    iget p8, p1, Licw;->g:I

    int-to-float p8, p8

    iget-object p9, p0, Lhcl;->a:Ljava/lang/Object;

    check-cast p9, Licy;

    iget p9, p9, Licy;->g:I

    int-to-float p9, p9

    iget-boolean v0, p1, Licw;->f:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result v0

    :goto_0
    iget-boolean v3, p1, Licw;->f:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lhcl;->a:Ljava/lang/Object;

    check-cast v3, Licy;

    iget v3, v3, Licy;->i:I

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lhcl;->a:Ljava/lang/Object;

    check-cast v3, Licy;

    iget v3, v3, Licy;->j:I

    :goto_1
    if-ne p3, p4, :cond_2

    const/4 p3, -0x1

    goto :goto_2

    :cond_2
    const/4 p3, 0x1

    :goto_2
    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p6, p4

    div-float/2addr p9, p4

    mul-float p8, p8, p9

    int-to-float p3, p3

    mul-float p3, p3, p6

    add-float/2addr p5, p3

    add-float/2addr p7, p8

    add-float p3, v0, p5

    int-to-float p6, v3

    sub-float/2addr p3, p7

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    iget-object p8, p0, Lhcl;->a:Ljava/lang/Object;

    check-cast p8, Licy;

    iget p9, p8, Licy;->f:I

    div-float/2addr p6, p4

    int-to-float p9, p9

    iget p8, p8, Licy;->g:I

    int-to-float p8, p8

    sub-float/2addr p6, p9

    div-float/2addr p8, p4

    sub-float/2addr p6, p8

    invoke-static {p3, p6}, Ljava/lang/Math;->min(FF)F

    move-result p3

    sub-float/2addr p7, v0

    cmpl-float p4, p5, p7

    if-ltz p4, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    :goto_3
    iget-boolean p1, p1, Licw;->f:Z

    if-eqz p1, :cond_4

    int-to-float p1, v1

    mul-float p1, p1, p3

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    goto :goto_4

    :cond_4
    int-to-float p1, v1

    mul-float p1, p1, p3

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    :goto_4
    iget-object p1, p0, Lhcl;->a:Ljava/lang/Object;

    check-cast p1, Licy;

    invoke-virtual {p1}, Licy;->getContentView()Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lhcl;->a:Ljava/lang/Object;

    check-cast p2, Licy;

    iget-object p2, p2, Licy;->e:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void

    :pswitch_1
    iget-object p1, p0, Lhcl;->a:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;->b()V

    return-void

    :pswitch_2
    iget-object p1, p0, Lhcl;->a:Ljava/lang/Object;

    check-cast p1, Libo;

    iget-object p2, p1, Libo;->g:Landroid/widget/TextView;

    if-eqz p2, :cond_5

    invoke-virtual {p1, p2}, Libo;->e(Landroid/widget/TextView;)V

    :cond_5
    return-void

    :pswitch_3
    iget-object p1, p0, Lhcl;->a:Ljava/lang/Object;

    check-cast p1, Lhxe;

    iget-object p2, p1, Lhxe;->c:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Landroid/text/Layout;->getLineCount()I

    move-result p3

    if-lez p3, :cond_6

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result p2

    if-lez p2, :cond_6

    invoke-virtual {p1}, Lhxe;->k()V

    :cond_6
    return-void

    :pswitch_4
    iget-object p2, p0, Lhcl;->a:Ljava/lang/Object;

    if-eq p3, p7, :cond_7

    new-instance p3, Lhxc;

    check-cast p2, Lhxe;

    invoke-direct {p3, p2, v2}, Lhxc;-><init>(Lhxe;I)V

    invoke-virtual {p1, p3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_7
    return-void

    :pswitch_5
    iget-object p1, p0, Lhcl;->a:Ljava/lang/Object;

    check-cast p1, Lhrz;

    iget-object p2, p1, Lhrz;->d:Lmgf;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p3, p1, Lhrz;->g:I

    if-ne p3, v1, :cond_8

    invoke-virtual {p2}, Lmgf;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p3, p2, Landroid/content/res/Configuration;->orientation:I

    goto :goto_5

    :cond_8
    :goto_5
    iput p3, p1, Lhrz;->g:I

    const/4 p2, 0x2

    if-ne p3, p2, :cond_9

    iget-object p2, p1, Lhrz;->d:Lmgf;

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Lmgf;->a()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p2

    const/4 p3, 0x3

    invoke-virtual {p2, p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->C(I)V

    goto :goto_6

    :cond_9
    iget-object p2, p1, Lhrz;->i:Landroidx/core/widget/NestedScrollView;

    if-eqz p2, :cond_a

    invoke-virtual {p2, v2}, Landroidx/core/widget/NestedScrollView;->canScrollVertically(I)Z

    move-result p2

    if-eqz p2, :cond_a

    iget-object p2, p1, Lhrz;->d:Lmgf;

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Lmgf;->a()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p2

    const/4 p3, 0x4

    invoke-virtual {p2, p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->C(I)V

    :cond_a
    :goto_6
    iget-object p2, p1, Lhrz;->e:Lhry;

    if-eqz p2, :cond_b

    iget p1, p1, Lhrz;->g:I

    invoke-interface {p2, p1}, Lhry;->b(I)V

    :cond_b
    return-void

    :pswitch_6
    iget-object p1, p0, Lhcl;->a:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;

    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->b(IIII)V

    return-void

    :pswitch_7
    if-ne p2, p6, :cond_d

    if-ne p3, p7, :cond_d

    if-ne p4, p8, :cond_d

    if-eq p5, p9, :cond_c

    goto :goto_7

    :cond_c
    return-void

    :cond_d
    :goto_7
    iget-object p1, p0, Lhcl;->a:Ljava/lang/Object;

    check-cast p1, Lhcq;

    invoke-virtual {p1}, Lhcq;->j()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
