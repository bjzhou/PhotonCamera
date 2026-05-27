.class public final Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearSnapshot;
.super Ljava/lang/Object;


# static fields
.field private static final b:Landroid/graphics/Rect;


# instance fields
.field public final a:Landroid/graphics/drawable/BitmapDrawable;

.field private final c:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearSnapshot;->b:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/BitmapDrawable;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearSnapshot;->c:Landroid/view/View;

    iput-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearSnapshot;->a:Landroid/graphics/drawable/BitmapDrawable;

    return-void
.end method


# virtual methods
.method public final a()Landroid/view/ViewOverlay;
    .locals 1

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearSnapshot;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v0

    return-object v0
.end method

.method public final b()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearSnapshot;->a()Landroid/view/ViewOverlay;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearSnapshot;->a:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v1}, Landroid/view/ViewOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public getAlpha()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearSnapshot;->a:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getAlpha()I

    move-result v0

    return v0
.end method

.method public setAlpha(I)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearSnapshot;->a:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    sget-object p1, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearSnapshot;->b:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearSnapshot;->c:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearSnapshot;->a:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/BitmapDrawable;->copyBounds(Landroid/graphics/Rect;)V

    iget-object v3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearSnapshot;->c:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutDirection()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int v1, v2, v1

    :cond_0
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearSnapshot;->a:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method
