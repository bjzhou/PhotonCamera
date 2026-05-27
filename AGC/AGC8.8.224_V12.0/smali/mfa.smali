.class public final Lmfa;
.super Ljava/lang/Object;

# interfaces
.implements Laew;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;I)V
    .locals 0

    iput p2, p0, Lmfa;->b:I

    iput-object p1, p0, Lmfa;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 0

    iput p2, p0, Lmfa;->b:I

    iput-object p1, p0, Lmfa;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lmgf;I)V
    .locals 0

    iput p2, p0, Lmfa;->b:I

    iput-object p1, p0, Lmfa;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Lago;)Lago;
    .locals 4

    iget p1, p0, Lmfa;->b:I

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lmfa;->a:Ljava/lang/Object;

    check-cast p1, Lmgf;

    iget-object v0, p1, Lmgf;->g:Lmge;

    if-eqz v0, :cond_8

    iget-object p1, p1, Lmgf;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object p1, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->D:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_0
    iget-object p1, p0, Lmfa;->a:Ljava/lang/Object;

    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iget-object v1, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->e:Lago;

    invoke-static {v1, p2}, Laeb;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    iput-object p2, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->e:Lago;

    invoke-virtual {p2}, Lago;->d()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->f:Z

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setWillNotDraw(Z)V

    invoke-virtual {p2}, Lago;->q()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result v0

    :goto_2
    if-ge v2, v0, :cond_4

    invoke-virtual {p1, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lafb;->p(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Laal;

    iget-object v1, v1, Laal;->a:Laai;

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Lago;->q()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->requestLayout()V

    :cond_5
    return-object p2

    :pswitch_1
    iget-object p1, p0, Lmfa;->a:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Lafb;->p(Landroid/view/View;)Z

    move-result v1

    if-eq v0, v1, :cond_6

    const/4 v0, 0x0

    goto :goto_4

    :cond_6
    move-object v0, p2

    :goto_4
    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout;

    iget-object v1, p1, Lcom/google/android/material/appbar/AppBarLayout;->c:Lago;

    invoke-static {v1, v0}, Laeb;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    iput-object v0, p1, Lcom/google/android/material/appbar/AppBarLayout;->c:Lago;

    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->k()V

    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->requestLayout()V

    :cond_7
    return-object p2

    :cond_8
    :goto_5
    iget-object p1, p0, Lmfa;->a:Ljava/lang/Object;

    new-instance v0, Lmge;

    check-cast p1, Lmgf;

    iget-object v1, p1, Lmgf;->b:Landroid/widget/FrameLayout;

    invoke-direct {v0, v1, p2}, Lmge;-><init>(Landroid/view/View;Lago;)V

    iput-object v0, p1, Lmgf;->g:Lmge;

    iget-object p1, p0, Lmfa;->a:Ljava/lang/Object;

    check-cast p1, Lmgf;

    iget-object v0, p1, Lmgf;->g:Lmge;

    invoke-virtual {p1}, Lmgf;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmge;->d(Landroid/view/Window;)V

    iget-object p1, p0, Lmfa;->a:Ljava/lang/Object;

    check-cast p1, Lmgf;

    iget-object v0, p1, Lmgf;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object p1, p1, Lmgf;->g:Lmge;

    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->x(Lmfy;)V

    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
