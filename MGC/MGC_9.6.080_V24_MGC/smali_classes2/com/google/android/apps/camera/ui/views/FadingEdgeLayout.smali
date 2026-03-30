.class public Lcom/google/android/apps/camera/ui/views/FadingEdgeLayout;
.super Landroid/widget/FrameLayout;
.source "PG"


# static fields
.field private static final a:[I

.field private static final b:[F


# instance fields
.field private c:Z

.field private d:Landroid/graphics/Paint;

.field private e:Landroid/graphics/Rect;


# direct methods
.method private final 166277962e993c138a6b1f0c9b571cc0m()V
    .locals 3

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_0
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_7
    new-instance v1, Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_c
    const v0, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_d
    iput-object v1, p0, Lcom/google/android/apps/camera/ui/views/FadingEdgeLayout;->d:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_e
    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_11
    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

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

    :goto_2
    goto/32 :goto_e

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        -0x1000000
        -0x1000000
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3e19999a    # 0.15f
        0x3e99999a    # 0.3f
        0x3f400000    # 0.75f
        0x3f6e147b    # 0.93f
        0x3f800000    # 1.0f
    .end array-data

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    sput-object v1, Lcom/google/android/apps/camera/ui/views/FadingEdgeLayout;->a:[I

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6
    new-array v1, v0, [I

    nop

    nop

    nop

    nop

    nop

    fill-array-data v1, :array_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_7
    sput-object v0, Lcom/google/android/apps/camera/ui/views/FadingEdgeLayout;->b:[F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_9
    const/4 v0, 0x6

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-array v0, v0, [F

    nop

    nop

    nop

    nop

    nop

    fill-array-data v0, :array_1

    goto/32 :goto_7

    nop

    nop

    :goto_c
    const v1, 0xc

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_d
    goto/32 :goto_4

    nop

    nop

    :goto_e
    goto/32 :goto_9

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p1, 0x1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-boolean p1, p0, Lcom/google/android/apps/camera/ui/views/FadingEdgeLayout;->c:Z

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    goto/32 :goto_0

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

    :goto_4
    invoke-direct {p0}, Lcom/google/android/apps/camera/ui/views/FadingEdgeLayout;->166277962e993c138a6b1f0c9b571cc0m()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    iput-boolean p1, p0, Lcom/google/android/apps/camera/ui/views/FadingEdgeLayout;->c:Z

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

    :goto_1
    invoke-direct {p0}, Lcom/google/android/apps/camera/ui/views/FadingEdgeLayout;->166277962e993c138a6b1f0c9b571cc0m()V

    goto/32 :goto_2

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

    nop

    :goto_3
    const/4 p1, 0x1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    const/4 p1, 0x1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Lcom/google/android/apps/camera/ui/views/FadingEdgeLayout;->166277962e993c138a6b1f0c9b571cc0m()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-boolean p1, p0, Lcom/google/android/apps/camera/ui/views/FadingEdgeLayout;->c:Z

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop
.end method


# virtual methods
.method protected final declared-synchronized dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    const v1, 0x14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_8
    monitor-enter p0

    nop

    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/FadingEdgeLayout;->e:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/FadingEdgeLayout;->getWidth()I

    move-result v0

    nop

    int-to-float v4, v0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/FadingEdgeLayout;->getHeight()I

    move-result v0

    nop

    int-to-float v5, v0

    nop

    nop

    nop

    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    move-object v1, p1

    nop

    nop

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    move-result v0

    nop

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lcom/google/android/apps/camera/ui/views/FadingEdgeLayout;->e:Landroid/graphics/Rect;

    nop

    iget-object v2, p0, Lcom/google/android/apps/camera/ui/views/FadingEdgeLayout;->d:Landroid/graphics/Paint;

    nop

    nop

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    :try_start_2
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_d
    throw p1

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_2

    nop

    nop
.end method

.method protected final onLayout(ZIIII)V
    .locals 8

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :goto_1
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_2
    new-instance p1, Landroid/graphics/LinearGradient;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_3
    iput-boolean p1, p0, Lcom/google/android/apps/camera/ui/views/FadingEdgeLayout;->c:Z

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    new-instance p2, Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p2, p0, Lcom/google/android/apps/camera/ui/views/FadingEdgeLayout;->e:Landroid/graphics/Rect;

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

    :goto_6
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_8
    int-to-float v4, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_9
    iget-boolean p1, p0, Lcom/google/android/apps/camera/ui/views/FadingEdgeLayout;->c:Z

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

    nop

    :goto_a
    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_b
    const/4 p1, 0x0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/views/FadingEdgeLayout;->d:Landroid/graphics/Paint;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_e
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/FadingEdgeLayout;->getWidth()I

    move-result p3

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/FadingEdgeLayout;->getHeight()I

    move-result p4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_10
    sget-object v5, Lcom/google/android/apps/camera/ui/views/FadingEdgeLayout;->a:[I

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/FadingEdgeLayout;->getWidth()I

    move-result p2

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_14
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/FadingEdgeLayout;->getHeight()I

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_15
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    :cond_0
    goto/32 :goto_1f

    nop

    :goto_16
    int-to-float v3, p2

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

    nop

    :goto_17
    sget-object v6, Lcom/google/android/apps/camera/ui/views/FadingEdgeLayout;->b:[F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_19
    invoke-direct {p2, p1, p1, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1a
    return-void

    nop

    :goto_1b
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    move-object v0, p1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1d
    if-nez p1, :cond_1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    :goto_1e
    const v1, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_1b

    nop

    nop

    :goto_20
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_22
    const v0, 0x1d

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop
.end method
