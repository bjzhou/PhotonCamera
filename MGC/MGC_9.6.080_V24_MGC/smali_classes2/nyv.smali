.class final Lnyv;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PG"


# instance fields
.field private final a:Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearSnapshot;


# direct methods
.method public constructor <init>(Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearSnapshot;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    iput-object p1, p0, Lnyv;->a:Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearSnapshot;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearSnapshot;->b()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lnyv;->a:Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearSnapshot;

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

    :goto_2
    return-void

    nop

    nop

    nop
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearSnapshot;->b()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lnyv;->a:Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearSnapshot;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p1, p0, Lnyv;->a:Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearSnapshot;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

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
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->prepareToDraw()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p1, p1, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearSnapshot;->a:Landroid/graphics/drawable/BitmapDrawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1, p0}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearSnapshot;->a:Landroid/graphics/drawable/BitmapDrawable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearSnapshot;->a()Landroid/view/ViewOverlay;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Lnyv;->a:Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearSnapshot;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop
.end method
