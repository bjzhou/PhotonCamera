.class public final Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearSnapshot;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final b:Landroid/graphics/Rect;


# instance fields
.field public final a:Landroid/graphics/drawable/BitmapDrawable;

.field private final c:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    new-instance v0, Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    sput-object v0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearSnapshot;->b:Landroid/graphics/Rect;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/graphics/drawable/BitmapDrawable;Landroid/view/View;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearSnapshot;->a:Landroid/graphics/drawable/BitmapDrawable;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearSnapshot;->c:Landroid/view/View;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Landroid/view/ViewOverlay;
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p0, Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearSnapshot;->c:Landroid/view/View;

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public final b()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearSnapshot;->a()Landroid/view/ViewOverlay;

    move-result-object v0

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    iget-object p0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearSnapshot;->a:Landroid/graphics/drawable/BitmapDrawable;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, p0}, Landroid/view/ViewOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public getAlpha()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearSnapshot;->a:Landroid/graphics/drawable/BitmapDrawable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getAlpha()I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public setAlpha(I)V
    .locals 5

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearSnapshot;->a:Landroid/graphics/drawable/BitmapDrawable;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/BitmapDrawable;->copyBounds(Landroid/graphics/Rect;)V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v3}, Landroid/view/View;->getLayoutDirection()I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    const/4 v4, 0x1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_7
    sub-int v1, v2, v1

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1c

    nop

    nop

    :goto_9
    iget p1, v0, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearSnapshot;->a:Landroid/graphics/drawable/BitmapDrawable;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_d
    iget v2, v0, Landroid/graphics/Rect;->right:I

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearSnapshot;->c:Landroid/view/View;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-eq v3, v4, :cond_1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    goto/32 :goto_17

    nop

    nop

    :goto_13
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearSnapshot;->a:Landroid/graphics/drawable/BitmapDrawable;

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_14
    const v1, 0x1c

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_16
    const v0, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_17
    iget-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearSnapshot;->c:Landroid/view/View;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_18
    sget-object v0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearSnapshot;->b:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    goto/32 :goto_a

    nop

    nop

    :goto_1a
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v0, v1, p1}, Landroid/graphics/Rect;->offsetTo(II)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget v1, v0, Landroid/graphics/Rect;->left:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop
.end method
