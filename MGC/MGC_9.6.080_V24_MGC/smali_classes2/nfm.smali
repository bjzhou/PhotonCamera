.class public final Lnfm;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Lnfh;


# instance fields
.field private final a:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private final b:Landroid/view/TextureView;

.field private final c:Landroid/view/WindowManager;

.field private final d:Landroid/view/TextureView$SurfaceTextureListener;

.field private final e:Ljava/util/ArrayList;

.field private final f:Lncc;

.field private g:I

.field private h:I

.field private i:Z

.field private final j:Landroid/graphics/RectF;

.field private k:I

.field private l:Landroid/view/Surface;

.field private m:Landroid/graphics/SurfaceTexture;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lncc;Landroid/view/WindowManager;Landroid/view/TextureView$SurfaceTextureListener;)V
    .locals 1

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lnfm;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1
    iput-object v0, p0, Lnfm;->b:Landroid/view/TextureView;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2
    new-instance v0, Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0, p1}, Landroid/view/TextureView;->setId(I)V

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_5
    new-instance v0, Landroid/view/TextureView;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_6
    iput-object p2, p0, Lnfm;->f:Lncc;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p3, p0, Lnfm;->c:Landroid/view/WindowManager;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {v0}, Lnzk;->Y(Landroid/view/View;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {v0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_d
    iput-object p4, p0, Lnfm;->d:Landroid/view/TextureView$SurfaceTextureListener;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v0, -0x1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_10
    iput v0, p0, Lnfm;->k:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_11
    const/4 v0, 0x0

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

    :goto_12
    iput-object v0, p0, Lnfm;->m:Landroid/graphics/SurfaceTexture;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    new-instance v0, Ljava/util/ArrayList;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_14
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v0, 0x0

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_17
    iput-object v0, p0, Lnfm;->l:Landroid/view/Surface;

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

    :goto_18
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iput v0, p0, Lnfm;->h:I

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1a
    iput-object v0, p0, Lnfm;->e:Ljava/util/ArrayList;

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1b
    iput-object v0, p0, Lnfm;->j:Landroid/graphics/RectF;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1c
    return-void

    nop

    nop

    :goto_1d
    iput v0, p0, Lnfm;->g:I

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_1a

    nop

    nop
.end method


# virtual methods
.method public final a()I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lnfm;->b:Landroid/view/TextureView;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result p0

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

    nop
.end method

.method public final b()I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lnfm;->b:Landroid/view/TextureView;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c(Lnpc;)Lrss;
    .locals 5

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move-object v0, v1

    nop

    :goto_1
    goto/32 :goto_35

    nop

    nop

    :goto_2
    invoke-static {p0}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v1, Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/16 :goto_2d

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_13

    nop

    :goto_7
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v2, p0, Lnfm;->b:Landroid/view/TextureView;

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Lnfm;->b:Landroid/view/TextureView;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_a
    const/4 v4, 0x0

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_d
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {v1, v0, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    float-to-int v0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_12
    return-object p0

    nop

    nop

    :goto_13
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget v2, p0, Lnfm;->g:I

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-gtz v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v0, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_17
    goto/16 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget v3, p0, Lnfm;->h:I

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    int-to-float v2, v2

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_1e
    if-eqz v0, :cond_2

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

    :cond_2
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 v2, 0x2

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_20
    invoke-static {v0, v2}, Lnjh;->b(Landroid/graphics/Bitmap;I)Lnjh;

    move-result-object p0

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

    nop

    :goto_21
    const v1, 0x17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_22
    if-lez v0, :cond_3

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_6

    nop

    :goto_23
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_25
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    goto/32 :goto_3

    nop

    nop

    :goto_26
    float-to-int v1, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_27
    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto/32 :goto_8

    nop

    nop

    :goto_28
    int-to-float v3, v3

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_29
    sget-object p0, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2c
    throw p0

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_29

    nop

    nop

    :goto_2e
    new-instance v0, Landroid/graphics/RectF;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    goto :goto_2a

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    :try_start_0
    monitor-exit p1

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_31
    invoke-direct {v1, p0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_32
    div-int/2addr v0, v2

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_33
    monitor-enter p1

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    iget-object p0, p1, Lnpc;->a:Landroid/os/Handler;

    nop

    invoke-static {v1, v0, p1, p0}, Landroid/view/PixelCopy;->request(Landroid/view/Surface;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V

    invoke-virtual {p1}, Lnpc;->b()V

    monitor-exit p1

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_7

    nop

    nop

    :goto_35
    iget-object p0, p0, Lnfm;->b:Landroid/view/TextureView;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_36
    div-int/2addr v1, v2

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v2, v0}, Landroid/view/TextureView;->getTransform(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_38
    invoke-virtual {p0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_39
    new-instance v1, Landroid/view/Surface;

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    new-instance v0, Landroid/graphics/Matrix;

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d()Lsui;
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_5

    nop

    :goto_1
    const v1, 0xc

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, p0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->addView(Landroid/view/View;I)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_8

    nop

    nop

    :goto_5
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_7
    return-object p0

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_9
    iget-object p0, p0, Lnfm;->b:Landroid/view/TextureView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_a
    invoke-static {p0}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Lnfm;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 p0, 0x0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_4

    nop
.end method

.method public final e()Lsui;
    .locals 2

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object p0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6
    const v1, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_7
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_9
    invoke-static {v0, v1}, Lrrf;->y(ZLjava/lang/Object;)V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Lnfm;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

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

    :goto_b
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->removeView(Landroid/view/View;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v0, 0x1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x6

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p0, p0, Lnfm;->b:Landroid/view/TextureView;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_10
    const-string v1, "Last Create Synchronization has not finished yet."

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

    nop

    :goto_11
    if-lez v0, :cond_0

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_1

    nop
.end method

.method public final f()V
    .locals 4

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/layout/MainActivityLayout;->p()V

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lnfm;->f:Lncc;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    :goto_5
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v0, Landroid/graphics/Matrix;

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

    :goto_7
    invoke-virtual {p0}, Lncc;->b()Lcom/google/android/apps/camera/ui/layout/MainActivityLayout;

    move-result-object p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v1, p0, Lnfm;->e:Ljava/util/ArrayList;

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_9
    const/16 v2, 0xc

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_5

    nop

    :goto_b
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lnfm;->b:Landroid/view/TextureView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v2, p0, Lnfm;->j:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget v0, p0, Lnfm;->g:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {v1, v0, v2, v3}, Lnap;-><init>(Ljava/lang/Object;I[B)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-gtz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_1f

    nop

    nop

    :goto_15
    iget v1, p0, Lnfm;->h:I

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_18
    iget v0, p0, Lnfm;->g:I

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

    :goto_19
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v0, v1}, Landroid/view/TextureView;->post(Ljava/lang/Runnable;)Z

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    int-to-float v0, v0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1d
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_1e
    iget-object v1, p0, Lnfm;->b:Landroid/view/TextureView;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_1f
    iget v0, p0, Lnfm;->h:I

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-gtz v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v1, v0}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_22
    int-to-float v1, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_23
    const/4 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_24
    new-instance v1, Lnap;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_25
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_2
    goto/32 :goto_a

    nop
.end method

.method public final g()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/view/TextureView;->requestLayout()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lnfm;->b:Landroid/view/TextureView;

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
.end method

.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p4, p0, Lnfm;->g:I

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    iget p3, p0, Lnfm;->g:I

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p2, p0, Lnfm;->c:Landroid/view/WindowManager;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Landroid/view/TextureView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput p5, p0, Lnfm;->h:I

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_5
    if-eq p3, p5, :cond_0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p1, p0, Lnfm;->b:Landroid/view/TextureView;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    iget-boolean p3, p0, Lnfm;->i:Z

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_8
    if-eq p3, p2, :cond_1

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

    :cond_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_9
    sub-int/2addr p4, p2

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

    :goto_a
    return-void

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_c
    iget p3, p0, Lnfm;->h:I

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_d
    iget p3, p0, Lnfm;->k:I

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_e
    goto :goto_12

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_10
    if-eq p3, p4, :cond_2

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_2
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto :goto_b

    nop

    :goto_12
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_13
    iput p2, p0, Lnfm;->k:I

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {p2}, Ljmo;->O(Landroid/view/WindowManager;)I

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_15
    if-ne p3, p1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_3
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iput-boolean p1, p0, Lnfm;->i:Z

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-eqz p1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_18
    sub-int/2addr p5, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_19
    iget-object p1, p0, Lnfm;->f:Lncc;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1a
    invoke-virtual {p1}, Lncc;->c()Z

    move-result p1

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

    :goto_1b
    return-void

    nop

    nop
.end method

.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0, p1, p2, p3}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    goto/32 :goto_3

    nop

    nop

    :goto_2
    iget-object p0, p0, Lnfm;->d:Landroid/view/TextureView$SurfaceTextureListener;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    iput-object v0, p0, Lnfm;->l:Landroid/view/Surface;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Lnfm;->m:Landroid/graphics/SurfaceTexture;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_6
    new-instance v0, Landroid/view/Surface;

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
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p1, 0x0

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

    :goto_1
    iget-object v0, p0, Lnfm;->d:Landroid/view/TextureView$SurfaceTextureListener;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_2
    if-nez p1, :cond_0

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lnfm;->l:Landroid/view/Surface;

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p1, p0, Lnfm;->l:Landroid/view/Surface;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    goto/32 :goto_0

    nop

    nop

    :goto_8
    return p0

    nop

    :goto_9
    invoke-interface {v0, p1}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z

    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-interface {p0, p1, p2, p3}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V

    goto/32 :goto_1

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
    iget-object p0, p0, Lnfm;->d:Landroid/view/TextureView$SurfaceTextureListener;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lnfm;->d:Landroid/view/TextureView$SurfaceTextureListener;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0, p1}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V

    goto/32 :goto_2

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
