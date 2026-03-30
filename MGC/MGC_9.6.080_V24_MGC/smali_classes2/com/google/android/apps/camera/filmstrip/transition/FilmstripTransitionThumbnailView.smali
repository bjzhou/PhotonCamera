.class public Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionThumbnailView;
.super Landroid/view/View;
.source "PG"


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Landroid/graphics/Bitmap;

.field public c:Landroid/graphics/Paint;

.field private d:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionThumbnailView;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    :goto_2
    const/high16 p1, -0x40800000    # -1.0f

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionThumbnailView;->setWillNotDraw(Z)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 p1, 0x0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance p1, Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput p1, p0, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionThumbnailView;->d:F

    nop

    goto/32 :goto_4

    nop

    nop
.end method


# virtual methods
.method public final a()Landroid/graphics/Bitmap;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    :goto_1
    iget-object v0, p0, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionThumbnailView;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object p0, p0, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionThumbnailView;->b:Landroid/graphics/Bitmap;

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    return-object p0

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop
.end method

.method public final b(F)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    iput p1, p0, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionThumbnailView;->d:F

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionThumbnailView;->invalidate()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionThumbnailView;->c:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    nop

    nop

    div-int/lit8 v2, v2, 0x2

    nop

    nop

    int-to-float v2, v2

    nop

    nop

    nop

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    nop

    div-int/lit8 v3, v3, 0x2

    nop

    int-to-float v3, v3

    nop

    nop

    nop

    iget p0, p0, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionThumbnailView;->d:F

    nop

    nop

    nop

    nop

    invoke-virtual {p1, v2, v3, p0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    monitor-exit v0

    nop

    return-void

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_3
    cmpg-float v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    iget v0, p0, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionThumbnailView;->d:F

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

    :goto_6
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    goto/32 :goto_5

    nop

    nop

    :goto_7
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_8
    throw p0

    nop

    nop

    :goto_9
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_6

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x1e

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x1e

    nop

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

    :goto_10
    iget-object v0, p0, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionThumbnailView;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-ltz v0, :cond_1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method
