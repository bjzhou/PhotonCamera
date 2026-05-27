.class final Lisn;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field final synthetic a:Lita;


# direct methods
.method public constructor <init>(Lita;)V
    .locals 0

    iput-object p1, p0, Lisn;->a:Lita;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lisn;->a:Lita;

    iget-object p1, p1, Lita;->j:Ljwb;

    invoke-interface {p1}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lisn;->a:Lita;

    iget v1, v0, Lita;->F:F

    cmpg-float p1, p1, v1

    if-gez p1, :cond_0

    iget-object p1, v0, Lita;->j:Ljwb;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljwb;->bn(Ljava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Lisn;->a:Lita;

    iget-object p1, p1, Lita;->s:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->D()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lisn;->a:Lita;

    invoke-virtual {p1}, Lita;->C()V

    return-void

    :cond_1
    iget-object p1, p0, Lisn;->a:Lita;

    invoke-virtual {p1}, Lisk;->k()V

    return-void
.end method
