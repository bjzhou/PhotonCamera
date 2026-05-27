.class public final synthetic Ldoi;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnHoverListener;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/camera/evcomp/EvCompSlider;I)V
    .locals 0

    iput p2, p0, Ldoi;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldoi;->a:Landroid/view/View;

    return-void
.end method

.method public synthetic constructor <init>(Ldoj;I)V
    .locals 0

    iput p2, p0, Ldoi;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldoi;->a:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    iget p2, p0, Ldoi;->b:I

    const/4 v0, 0x1

    const/16 v1, 0x8

    const/4 v2, 0x0

    packed-switch p2, :pswitch_data_0

    iget-object p2, p0, Ldoi;->a:Landroid/view/View;

    check-cast p2, Lcom/google/android/apps/camera/evcomp/EvCompSlider;

    iget-object p2, p2, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->a:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return v0

    :pswitch_0
    iget-object p2, p0, Ldoi;->a:Landroid/view/View;

    check-cast p2, Ldoj;

    iget-object p2, p2, Ldoj;->a:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return v0

    :cond_0
    return v2

    :cond_1
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
