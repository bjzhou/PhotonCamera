.class public final Lmif;
.super Ljava/lang/Object;

# interfaces
.implements Laew;


# instance fields
.field final synthetic a:Lmih;

.field final synthetic b:Lmfv;


# direct methods
.method public constructor <init>(Lmfv;Lmih;)V
    .locals 0

    iput-object p1, p0, Lmif;->b:Lmfv;

    iput-object p2, p0, Lmif;->a:Lmih;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Lago;)Lago;
    .locals 11

    iget-object v0, p0, Lmif;->b:Lmfv;

    new-instance v1, Lmih;

    iget-object v2, p0, Lmif;->a:Lmih;

    invoke-direct {v1, v2}, Lmih;-><init>(Lmih;)V

    const/4 v2, 0x7

    invoke-virtual {p2, v2}, Lago;->f(I)Lacr;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {p2, v3}, Lago;->f(I)Lacr;

    move-result-object v3

    iget-object v4, v0, Lmfv;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v5, v2, Lacr;->c:I

    iput v5, v4, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->n:I

    invoke-static {p1}, Lljr;->C(Landroid/view/View;)Z

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    iget-object v8, v0, Lmfv;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-boolean v9, v8, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->g:Z

    if-eqz v9, :cond_0

    invoke-virtual {p2}, Lago;->a()I

    move-result v5

    iput v5, v8, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->m:I

    iget v5, v1, Lmih;->d:I

    iget-object v8, v0, Lmfv;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v8, v8, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->m:I

    add-int/2addr v5, v8

    :cond_0
    iget-object v8, v0, Lmfv;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-boolean v9, v8, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->h:Z

    if-eqz v9, :cond_2

    if-eqz v4, :cond_1

    iget v6, v1, Lmih;->c:I

    goto :goto_0

    :cond_1
    iget v6, v1, Lmih;->a:I

    :goto_0
    iget v9, v2, Lacr;->b:I

    add-int/2addr v6, v9

    :cond_2
    iget-boolean v8, v8, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->i:Z

    if-eqz v8, :cond_4

    if-eqz v4, :cond_3

    iget v1, v1, Lmih;->a:I

    goto :goto_1

    :cond_3
    iget v1, v1, Lmih;->c:I

    :goto_1
    iget v4, v2, Lacr;->d:I

    add-int v7, v1, v4

    goto :goto_2

    :cond_4
    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v4, v0, Lmfv;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-boolean v4, v4, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->j:Z

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v4, :cond_5

    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v10, v2, Lacr;->b:I

    if-eq v4, v10, :cond_5

    iput v10, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/4 v9, 0x1

    goto :goto_3

    :cond_5
    :goto_3
    iget-object v4, v0, Lmfv;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-boolean v4, v4, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->k:Z

    if-eqz v4, :cond_6

    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v10, v2, Lacr;->d:I

    if-eq v4, v10, :cond_6

    iput v10, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_4

    :cond_6
    move v8, v9

    :goto_4
    iget-object v4, v0, Lmfv;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-boolean v4, v4, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->l:Z

    if-eqz v4, :cond_7

    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v2, v2, Lacr;->c:I

    if-eq v4, v2, :cond_7

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_5

    :cond_7
    if-eqz v8, :cond_8

    :goto_5
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p1, v6, v1, v7, v5}, Landroid/view/View;->setPadding(IIII)V

    iget-boolean p1, v0, Lmfv;->a:Z

    if-eqz p1, :cond_9

    iget-object v1, v0, Lmfv;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v2, v3, Lacr;->e:I

    iput v2, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->f:I

    :cond_9
    iget-object v0, v0, Lmfv;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-boolean v1, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->g:Z

    if-nez v1, :cond_a

    if-eqz p1, :cond_b

    :cond_a
    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->H()V

    :cond_b
    return-object p2
.end method
