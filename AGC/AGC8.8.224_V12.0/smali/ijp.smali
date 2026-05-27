.class final Lijp;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# instance fields
.field final synthetic a:Litm;


# direct methods
.method public constructor <init>(Litm;)V
    .locals 0

    iput-object p1, p0, Lijp;->a:Litm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    iget-object v0, p0, Lijp;->a:Litm;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    invoke-interface {v0, p1}, Litm;->u(F)V

    const/4 p1, 0x1

    return p1
.end method

.method public final onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    iget-object p1, p0, Lijp;->a:Litm;

    invoke-interface {p1}, Litm;->v()V

    const/4 p1, 0x1

    return p1
.end method

.method public final onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    iget-object p1, p0, Lijp;->a:Litm;

    check-cast p1, Lisi;

    iget-object v0, p1, Lisi;->E:Lita;

    invoke-virtual {v0}, Lisk;->p()V

    iget-boolean v0, p1, Lisi;->m:Z

    if-nez v0, :cond_0

    iget-object v0, p1, Lisi;->E:Lita;

    invoke-virtual {v0}, Lita;->F()V

    :cond_0
    iget-object v0, p1, Lisi;->E:Lita;

    iget v1, p1, Lisi;->Z:F

    iget-object p1, p1, Lisi;->h:Ljwb;

    invoke-interface {p1}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1, p1}, Lita;->J(IFF)V

    return-void
.end method
