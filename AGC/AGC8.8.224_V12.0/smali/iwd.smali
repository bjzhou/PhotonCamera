.class public final synthetic Liwd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnGenericMotionListener;


# instance fields
.field public final synthetic a:Liwf;


# direct methods
.method public synthetic constructor <init>(Liwf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liwd;->a:Liwf;

    return-void
.end method


# virtual methods
.method public final onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    iget-object v0, p0, Liwd;->a:Liwf;

    iget-boolean v1, v0, Liwf;->c:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/16 v3, 0x8

    if-ne v1, v3, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    const/high16 v3, 0x400000

    if-ne v1, v3, :cond_4

    const/16 v1, 0x1a

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result p2

    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lly;->W()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    neg-float p2, p2

    iget v1, v0, Liwf;->b:F

    mul-float p2, p2, v1

    iget v1, v0, Liwf;->d:I

    int-to-float v1, v1

    add-float/2addr p2, v1

    float-to-int p2, p2

    iput p2, v0, Liwf;->d:I

    invoke-virtual {p1, v2, p2}, Landroid/support/v7/widget/RecyclerView;->ac(II)V

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lly;->V()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    neg-float p2, p2

    iget v1, v0, Liwf;->a:F

    mul-float p2, p2, v1

    iget v1, v0, Liwf;->d:I

    int-to-float v1, v1

    add-float/2addr p2, v1

    float-to-int p2, p2

    iput p2, v0, Liwf;->d:I

    invoke-virtual {p1, p2, v2}, Landroid/support/v7/widget/RecyclerView;->ac(II)V

    return v4

    :cond_4
    :goto_0
    return v2
.end method
