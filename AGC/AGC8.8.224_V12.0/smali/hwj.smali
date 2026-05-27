.class public final synthetic Lhwj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lhwp;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lhwp;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhwj;->a:Lhwp;

    iput-object p2, p0, Lhwj;->b:Landroid/view/View;

    iput p3, p0, Lhwj;->c:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 12

    iget-object v0, p0, Lhwj;->a:Lhwp;

    iget-object p1, p0, Lhwj;->b:Landroid/view/View;

    iget v1, p0, Lhwj;->c:I

    iget-object v2, v0, Lhwp;->d:Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;

    iget-wide v2, v2, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->f:D

    iget-object v4, v0, Lhwp;->c:Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;

    iget-object v4, v4, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->i:Ljava/util/Set;

    invoke-interface {v4, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    int-to-double v4, v1

    cmpl-double p1, v2, v4

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lhwp;->g()V

    iget-object p1, v0, Lhwp;->d:Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->setEnabled(Z)V

    const-wide/16 v6, 0xc8

    new-instance p1, Lakf;

    invoke-direct {p1}, Lakf;-><init>()V

    const/4 v1, 0x2

    invoke-virtual {v0, v4, v5, v1}, Lhwp;->p(DI)Landroid/animation/AnimatorListenerAdapter;

    move-result-object v8

    const-wide/16 v9, 0x0

    const/4 v11, 0x2

    move-wide v1, v2

    move-wide v3, v4

    move-wide v5, v6

    move-object v7, p1

    invoke-virtual/range {v0 .. v11}, Lhwp;->q(DDJLandroid/animation/TimeInterpolator;Landroid/animation/AnimatorListenerAdapter;JI)V

    :cond_0
    return-void
.end method
