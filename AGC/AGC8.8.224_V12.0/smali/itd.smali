.class Litd;
.super Litc;


# instance fields
.field final synthetic b:Litf;


# direct methods
.method public constructor <init>(Litf;)V
    .locals 0

    iput-object p1, p0, Litd;->b:Litf;

    invoke-direct {p0}, Litc;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Litd;->b:Litf;

    iget-object v0, v0, Litf;->d:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->setVisibility(I)V

    iget-object v0, p0, Litd;->b:Litf;

    iget-object v0, v0, Litf;->e:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    iget-object v0, p0, Litd;->b:Litf;

    iget-object v0, v0, Litf;->f:Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->setEnabled(Z)V

    return-void
.end method
