.class public final Lauo;
.super Ljava/lang/Object;

# interfaces
.implements Lahc;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Lauq;I)V
    .locals 0

    iput p2, p0, Lauo;->b:I

    iput-object p1, p0, Lauo;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;I)V
    .locals 0

    iput p2, p0, Lauo;->b:I

    iput-object p1, p0, Lauo;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Z
    .locals 4

    iget v0, p0, Lauo;->b:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lauo;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/behavior/SwipeDismissBehavior;

    invoke-virtual {v0, p1}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->u(Landroid/view/View;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lafc;->c(Landroid/view/View;)I

    move-result v0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_0
    check-cast p1, Landroidx/viewpager2/widget/ViewPager2;

    iget-object v0, p0, Lauo;->a:Ljava/lang/Object;

    iget p1, p1, Landroidx/viewpager2/widget/ViewPager2;->b:I

    add-int/2addr p1, v1

    check-cast v0, Lauq;

    invoke-virtual {v0, p1}, Lauq;->e(I)V

    return v1

    :pswitch_1
    check-cast p1, Landroidx/viewpager2/widget/ViewPager2;

    iget-object v0, p0, Lauo;->a:Ljava/lang/Object;

    iget p1, p1, Landroidx/viewpager2/widget/ViewPager2;->b:I

    add-int/lit8 p1, p1, -0x1

    check-cast v0, Lauq;

    invoke-virtual {v0, p1}, Lauq;->e(I)V

    return v1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lauo;->a:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget v3, v3, Lcom/google/android/material/behavior/SwipeDismissBehavior;->c:I

    if-nez v3, :cond_1

    if-nez v0, :cond_2

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    if-ne v3, v1, :cond_3

    if-nez v2, :cond_3

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    :goto_2
    invoke-virtual {p1, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
