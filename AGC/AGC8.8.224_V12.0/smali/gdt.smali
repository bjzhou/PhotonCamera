.class public final synthetic Lgdt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;

.field private final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcdi;Lfme;I)V
    .locals 0

    iput p3, p0, Lgdt;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgdt;->a:Ljava/lang/Object;

    iput-object p2, p0, Lgdt;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/apps/camera/ui/captureframe/CaptureFrameUi;Landroid/graphics/Canvas;I)V
    .locals 0

    iput p3, p0, Lgdt;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgdt;->b:Ljava/lang/Object;

    iput-object p2, p0, Lgdt;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;Lifr;I)V
    .locals 0

    iput p3, p0, Lgdt;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgdt;->a:Ljava/lang/Object;

    iput-object p2, p0, Lgdt;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcvr;Lkli;I[B)V
    .locals 0

    iput p3, p0, Lgdt;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgdt;->a:Ljava/lang/Object;

    iput-object p2, p0, Lgdt;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lgxy;Lkae;I)V
    .locals 0

    iput p3, p0, Lgdt;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgdt;->a:Ljava/lang/Object;

    iput-object p2, p0, Lgdt;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lifd;Lmqp;I)V
    .locals 0

    iput p3, p0, Lgdt;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgdt;->a:Ljava/lang/Object;

    iput-object p2, p0, Lgdt;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Set;Ljava/util/Set;I)V
    .locals 0

    iput p3, p0, Lgdt;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgdt;->a:Ljava/lang/Object;

    iput-object p2, p0, Lgdt;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;I)V
    .locals 0

    iput p3, p0, Lgdt;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgdt;->a:Ljava/lang/Object;

    iput-object p2, p0, Lgdt;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 20

    move-object/from16 v0, p0

    iget v1, v0, Lgdt;->c:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, Lgdt;->a:Ljava/lang/Object;

    iget-object v2, v0, Lgdt;->b:Ljava/lang/Object;

    move-object/from16 v3, p1

    check-cast v3, Landroid/animation/Animator;

    check-cast v1, Lifd;

    iget-object v1, v1, Lifd;->a:Life;

    iget-object v1, v1, Life;->b:Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;

    iget-object v1, v1, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->inFlightSpecBuilder:Lifq;

    check-cast v2, Lmqp;

    invoke-virtual {v1, v2}, Lifq;->h(Lmqp;)V

    return-void

    :pswitch_0
    iget-object v1, v0, Lgdt;->a:Ljava/lang/Object;

    iget-object v2, v0, Lgdt;->b:Ljava/lang/Object;

    move-object/from16 v3, p1

    check-cast v3, Landroid/animation/Animator;

    check-cast v1, Lifd;

    iget-object v1, v1, Lifd;->a:Life;

    iget-object v1, v1, Life;->b:Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;

    iget-object v1, v1, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->inFlightSpecBuilder:Lifq;

    check-cast v2, Lmqp;

    invoke-virtual {v1, v2}, Lifq;->h(Lmqp;)V

    return-void

    :pswitch_1
    iget-object v1, v0, Lgdt;->a:Ljava/lang/Object;

    iget-object v2, v0, Lgdt;->b:Ljava/lang/Object;

    move-object/from16 v3, p1

    check-cast v3, Landroid/animation/Animator;

    check-cast v2, Lifr;

    check-cast v1, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->lambda$animateMainButton$1$com-google-android-apps-camera-ui-shutterbutton-ShutterButton(Lifr;Landroid/animation/Animator;)V

    return-void

    :pswitch_2
    iget-object v1, v0, Lgdt;->b:Ljava/lang/Object;

    iget-object v2, v0, Lgdt;->a:Ljava/lang/Object;

    move-object/from16 v3, p1

    check-cast v3, Lhsf;

    check-cast v1, Lcom/google/android/apps/camera/ui/captureframe/CaptureFrameUi;

    iget-object v1, v1, Lcom/google/android/apps/camera/ui/captureframe/CaptureFrameUi;->a:Landroid/graphics/RectF;

    iget-object v4, v3, Lhsf;->c:Lcom/google/android/apps/camera/ui/captureframe/CaptureFrameUi;

    invoke-virtual {v4}, Lcom/google/android/apps/camera/ui/captureframe/CaptureFrameUi;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const v5, 0x3db851ec    # 0.09f

    mul-float v4, v4, v5

    iget v5, v3, Lhsf;->d:I

    add-int/lit8 v5, v5, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, -0x40800000    # -1.0f

    packed-switch v5, :pswitch_data_1

    new-instance v8, Landroid/graphics/RectF;

    iget v5, v1, Landroid/graphics/RectF;->right:F

    iget v7, v3, Lhsf;->b:F

    add-float/2addr v7, v7

    sub-float/2addr v5, v7

    iget v7, v1, Landroid/graphics/RectF;->bottom:F

    iget v9, v3, Lhsf;->b:F

    add-float/2addr v9, v9

    sub-float/2addr v7, v9

    iget v9, v1, Landroid/graphics/RectF;->right:F

    iget v10, v1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v8, v5, v7, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v12, v3, Lhsf;->a:Landroid/graphics/Paint;

    check-cast v2, Landroid/graphics/Canvas;

    const/4 v9, 0x0

    const/high16 v10, 0x42b40000    # 90.0f

    const/4 v11, 0x0

    move-object v7, v2

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget v5, v1, Landroid/graphics/RectF;->right:F

    sub-float v14, v5, v4

    iget v15, v1, Landroid/graphics/RectF;->bottom:F

    iget v5, v1, Landroid/graphics/RectF;->right:F

    iget v7, v3, Lhsf;->b:F

    sub-float/2addr v5, v7

    add-float v16, v5, v6

    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v7, v3, Lhsf;->a:Landroid/graphics/Paint;

    move-object v13, v2

    move/from16 v17, v5

    move-object/from16 v18, v7

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v14, v1, Landroid/graphics/RectF;->right:F

    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    sub-float v15, v5, v4

    iget v4, v1, Landroid/graphics/RectF;->right:F

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget v5, v3, Lhsf;->b:F

    sub-float/2addr v1, v5

    add-float v17, v1, v6

    iget-object v1, v3, Lhsf;->a:Landroid/graphics/Paint;

    move/from16 v16, v4

    move-object/from16 v18, v1

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void

    :pswitch_3
    new-instance v9, Landroid/graphics/RectF;

    iget v5, v1, Landroid/graphics/RectF;->left:F

    iget v8, v1, Landroid/graphics/RectF;->bottom:F

    iget v10, v3, Lhsf;->b:F

    add-float/2addr v10, v10

    sub-float/2addr v8, v10

    iget v10, v1, Landroid/graphics/RectF;->left:F

    iget v11, v3, Lhsf;->b:F

    add-float/2addr v11, v11

    add-float/2addr v10, v11

    iget v11, v1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v9, v5, v8, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v13, v3, Lhsf;->a:Landroid/graphics/Paint;

    check-cast v2, Landroid/graphics/Canvas;

    const/high16 v11, 0x42b40000    # 90.0f

    const/4 v12, 0x0

    move-object v8, v2

    move v10, v11

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget v5, v1, Landroid/graphics/RectF;->left:F

    iget v8, v3, Lhsf;->b:F

    add-float/2addr v5, v8

    add-float v15, v5, v7

    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    iget v7, v1, Landroid/graphics/RectF;->left:F

    add-float v17, v7, v4

    iget v7, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v8, v3, Lhsf;->a:Landroid/graphics/Paint;

    move-object v14, v2

    move/from16 v16, v5

    move/from16 v18, v7

    move-object/from16 v19, v8

    invoke-virtual/range {v14 .. v19}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v15, v1, Landroid/graphics/RectF;->left:F

    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    sub-float v16, v5, v4

    iget v4, v1, Landroid/graphics/RectF;->left:F

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget v5, v3, Lhsf;->b:F

    sub-float/2addr v1, v5

    add-float v18, v1, v6

    iget-object v1, v3, Lhsf;->a:Landroid/graphics/Paint;

    move/from16 v17, v4

    move-object/from16 v19, v1

    invoke-virtual/range {v14 .. v19}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void

    :pswitch_4
    new-instance v9, Landroid/graphics/RectF;

    iget v5, v1, Landroid/graphics/RectF;->right:F

    iget v8, v3, Lhsf;->b:F

    add-float/2addr v8, v8

    sub-float/2addr v5, v8

    iget v8, v1, Landroid/graphics/RectF;->top:F

    iget v10, v1, Landroid/graphics/RectF;->right:F

    iget v11, v1, Landroid/graphics/RectF;->top:F

    iget v12, v3, Lhsf;->b:F

    add-float/2addr v12, v12

    add-float/2addr v11, v12

    invoke-direct {v9, v5, v8, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v13, v3, Lhsf;->a:Landroid/graphics/Paint;

    check-cast v2, Landroid/graphics/Canvas;

    const/high16 v10, 0x43870000    # 270.0f

    const/high16 v11, 0x42b40000    # 90.0f

    const/4 v12, 0x0

    move-object v8, v2

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget v5, v1, Landroid/graphics/RectF;->right:F

    sub-float v15, v5, v4

    iget v5, v1, Landroid/graphics/RectF;->top:F

    iget v8, v1, Landroid/graphics/RectF;->right:F

    iget v9, v3, Lhsf;->b:F

    sub-float/2addr v8, v9

    add-float v17, v8, v6

    iget v6, v1, Landroid/graphics/RectF;->top:F

    iget-object v8, v3, Lhsf;->a:Landroid/graphics/Paint;

    move-object v14, v2

    move/from16 v16, v5

    move/from16 v18, v6

    move-object/from16 v19, v8

    invoke-virtual/range {v14 .. v19}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v15, v1, Landroid/graphics/RectF;->right:F

    iget v5, v1, Landroid/graphics/RectF;->top:F

    iget v6, v3, Lhsf;->b:F

    add-float/2addr v5, v6

    add-float v16, v5, v7

    iget v5, v1, Landroid/graphics/RectF;->right:F

    iget v1, v1, Landroid/graphics/RectF;->top:F

    add-float v18, v1, v4

    iget-object v1, v3, Lhsf;->a:Landroid/graphics/Paint;

    move/from16 v17, v5

    move-object/from16 v19, v1

    invoke-virtual/range {v14 .. v19}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void

    :pswitch_5
    new-instance v9, Landroid/graphics/RectF;

    iget v5, v1, Landroid/graphics/RectF;->left:F

    iget v6, v1, Landroid/graphics/RectF;->top:F

    iget v8, v1, Landroid/graphics/RectF;->left:F

    iget v10, v3, Lhsf;->b:F

    add-float/2addr v10, v10

    add-float/2addr v8, v10

    iget v10, v1, Landroid/graphics/RectF;->top:F

    iget v11, v3, Lhsf;->b:F

    add-float/2addr v11, v11

    add-float/2addr v10, v11

    invoke-direct {v9, v5, v6, v8, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v13, v3, Lhsf;->a:Landroid/graphics/Paint;

    check-cast v2, Landroid/graphics/Canvas;

    const/high16 v10, 0x43340000    # 180.0f

    const/high16 v11, 0x42b40000    # 90.0f

    const/4 v12, 0x0

    move-object v8, v2

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget v5, v1, Landroid/graphics/RectF;->left:F

    iget v6, v3, Lhsf;->b:F

    add-float/2addr v5, v6

    add-float v15, v5, v7

    iget v5, v1, Landroid/graphics/RectF;->top:F

    iget v6, v1, Landroid/graphics/RectF;->left:F

    add-float v17, v6, v4

    iget v6, v1, Landroid/graphics/RectF;->top:F

    iget-object v8, v3, Lhsf;->a:Landroid/graphics/Paint;

    move-object v14, v2

    move/from16 v16, v5

    move/from16 v18, v6

    move-object/from16 v19, v8

    invoke-virtual/range {v14 .. v19}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v15, v1, Landroid/graphics/RectF;->left:F

    iget v5, v1, Landroid/graphics/RectF;->top:F

    iget v6, v3, Lhsf;->b:F

    add-float/2addr v5, v6

    add-float v16, v5, v7

    iget v5, v1, Landroid/graphics/RectF;->left:F

    iget v1, v1, Landroid/graphics/RectF;->top:F

    add-float v18, v1, v4

    iget-object v1, v3, Lhsf;->a:Landroid/graphics/Paint;

    move/from16 v17, v5

    move-object/from16 v19, v1

    invoke-virtual/range {v14 .. v19}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void

    :pswitch_6
    iget-object v1, v0, Lgdt;->a:Ljava/lang/Object;

    iget-object v2, v0, Lgdt;->b:Ljava/lang/Object;

    move-object/from16 v3, p1

    check-cast v3, Lhgx;

    sget v4, Lhfb;->f:I

    iget-boolean v3, v3, Lhgx;->b:Z

    if-eqz v3, :cond_1

    check-cast v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    return-void

    :cond_1
    check-cast v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    return-void

    :pswitch_7
    iget-object v1, v0, Lgdt;->a:Ljava/lang/Object;

    iget-object v2, v0, Lgdt;->b:Ljava/lang/Object;

    move-object/from16 v3, p1

    check-cast v3, Lgxm;

    check-cast v2, Lkae;

    check-cast v1, Lgxy;

    invoke-interface {v3, v1, v2}, Lgxm;->p(Lgxy;Lkae;)V

    return-void

    :pswitch_8
    iget-object v1, v0, Lgdt;->a:Ljava/lang/Object;

    iget-object v2, v0, Lgdt;->b:Ljava/lang/Object;

    move-object/from16 v3, p1

    check-cast v3, Lgeh;

    sget-object v4, Lgff;->a:Lnak;

    check-cast v1, Lcdi;

    invoke-virtual {v1}, Lcdi;->i()Ljuf;

    move-result-object v1

    check-cast v2, Lfme;

    iget-object v2, v2, Lfme;->c:Ljwb;

    new-instance v4, Lgdl;

    const/16 v5, 0xc

    invoke-direct {v4, v3, v5}, Lgdl;-><init>(Lgeh;I)V

    sget-object v3, Lnnv;->a:Lnnv;

    invoke-interface {v2, v4, v3}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljuf;->d(Lkad;)V

    return-void

    :pswitch_9
    iget-object v1, v0, Lgdt;->a:Ljava/lang/Object;

    iget-object v2, v0, Lgdt;->b:Ljava/lang/Object;

    move-object/from16 v3, p1

    check-cast v3, Lcwx;

    check-cast v1, Lcvr;

    iget-object v1, v1, Lcvr;->a:Ljava/lang/Object;

    invoke-interface {v2}, Lkli;->c()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_a
    iget-object v1, v0, Lgdt;->a:Ljava/lang/Object;

    iget-object v2, v0, Lgdt;->b:Ljava/lang/Object;

    move-object/from16 v3, p1

    check-cast v3, Lgei;

    invoke-interface {v3}, Lgei;->g()Lgec;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v3}, Lgei;->g()Lgec;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public final synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 1

    iget v0, p0, Lgdt;->c:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1

    :pswitch_0
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1

    :pswitch_3
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1

    :pswitch_4
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1

    :pswitch_5
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1

    :pswitch_6
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1

    :pswitch_7
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
