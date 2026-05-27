.class public final synthetic Lhzz;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/widget/LinearLayout;

.field private final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;II)V
    .locals 0

    iput p3, p0, Lhzz;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhzz;->b:Landroid/widget/LinearLayout;

    iput p2, p0, Lhzz;->a:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;II)V
    .locals 0

    iput p3, p0, Lhzz;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhzz;->b:Landroid/widget/LinearLayout;

    iput p2, p0, Lhzz;->a:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget p1, p0, Lhzz;->c:I

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lhzz;->b:Landroid/widget/LinearLayout;

    iget v1, p0, Lhzz;->a:I

    move-object v2, p1

    check-cast v2, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;

    iget-object v3, v2, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->d:Liap;

    invoke-interface {v3, v0}, Liap;->c(Z)V

    invoke-virtual {v2, v1, v0}, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->g(IZ)V

    iget-object v1, v2, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->d:Liap;

    invoke-interface {v1, p1, v0}, Liap;->b(Landroid/view/View;Z)V

    return-void

    :pswitch_0
    iget-object p1, p0, Lhzz;->b:Landroid/widget/LinearLayout;

    iget v1, p0, Lhzz;->a:I

    move-object v2, p1

    check-cast v2, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;

    iget-object v3, v2, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->a:Liap;

    invoke-interface {v3, v0}, Liap;->c(Z)V

    invoke-virtual {v2, v1, v0}, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->l(IZ)V

    iget-object v1, v2, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->a:Liap;

    invoke-interface {v1, p1, v0}, Liap;->b(Landroid/view/View;Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
