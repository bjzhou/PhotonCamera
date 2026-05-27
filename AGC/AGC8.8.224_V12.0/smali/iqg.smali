.class public final synthetic Liqg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Liqj;I)V
    .locals 0

    iput p2, p0, Liqg;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liqg;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Liqu;I)V
    .locals 0

    iput p2, p0, Liqg;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liqg;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lirc;I)V
    .locals 0

    iput p2, p0, Liqg;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liqg;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lisi;I)V
    .locals 0

    iput p2, p0, Liqg;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liqg;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lita;I)V
    .locals 0

    iput p2, p0, Liqg;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liqg;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    move-object/from16 v1, p0

    iget v0, v1, Liqg;->b:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, v1, Liqg;->a:Ljava/lang/Object;

    check-cast v0, Lita;

    iget-object v0, v0, Lita;->l:Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;

    invoke-virtual {v0, v3}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->setAccessibilityLiveRegion(I)V

    return-void

    :pswitch_0
    iget-object v0, v1, Liqg;->a:Ljava/lang/Object;

    check-cast v0, Lisk;

    invoke-virtual {v0}, Lisk;->a()V

    return-void

    :pswitch_1
    iget-object v0, v1, Liqg;->a:Ljava/lang/Object;

    check-cast v0, Lisi;

    invoke-virtual {v0}, Lisi;->o()V

    return-void

    :pswitch_2
    iget-object v0, v1, Liqg;->a:Ljava/lang/Object;

    check-cast v0, Lisi;

    iput-boolean v3, v0, Lisi;->T:Z

    iget-object v2, v0, Lisi;->E:Lita;

    invoke-virtual {v2}, Lisk;->p()V

    iget-object v2, v0, Lisi;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v2, v0, Lisi;->O:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    invoke-virtual {v2}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->D()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lisi;->M()V

    :cond_0
    return-void

    :pswitch_3
    iget-object v0, v1, Liqg;->a:Ljava/lang/Object;

    check-cast v0, Lisi;

    iget-object v0, v0, Lisi;->ak:Ljew;

    const-string v2, "wide_selfie_tooltip_display_count"

    invoke-virtual {v0, v2}, Ljew;->Z(Ljava/lang/String;)I

    return-void

    :pswitch_4
    iget-object v0, v1, Liqg;->a:Ljava/lang/Object;

    check-cast v0, Lirc;

    invoke-virtual {v0}, Lirc;->m()V

    return-void

    :pswitch_5
    iget-object v0, v1, Liqg;->a:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lirc;

    iget-boolean v3, v3, Lirc;->l:Z

    if-nez v3, :cond_1

    check-cast v0, Liqw;

    invoke-virtual {v0, v2}, Liqw;->cp(Z)V

    :cond_1
    return-void

    :pswitch_6
    iget-object v0, v1, Liqg;->a:Ljava/lang/Object;

    check-cast v0, Liqu;

    iget-object v0, v0, Liqu;->e:Landroid/widget/ImageButton;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void

    :pswitch_7
    iget-object v0, v1, Liqg;->a:Ljava/lang/Object;

    check-cast v0, Liqu;

    iget-object v0, v0, Liqu;->e:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void

    :pswitch_8
    iget-object v0, v1, Liqg;->a:Ljava/lang/Object;

    check-cast v0, Liqj;

    iget-object v2, v0, Liqj;->j:Lipw;

    sget-object v3, Lips;->b:Lips;

    invoke-virtual {v3}, Lnws;->O()Lnwn;

    move-result-object v3

    iget-object v0, v0, Liqj;->o:Ljwb;

    invoke-interface {v0}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v4, v3, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_2
    iget-object v4, v3, Lnwn;->b:Lnws;

    check-cast v4, Lips;

    iput v0, v4, Lips;->a:F

    invoke-virtual {v3}, Lnwn;->i()Lnws;

    move-result-object v0

    check-cast v0, Lips;

    invoke-virtual {v0}, Lnve;->J()[B

    move-result-object v0

    const-string v3, "/zoom_value"

    invoke-virtual {v2, v3, v0}, Lipw;->d(Ljava/lang/String;[B)V

    return-void

    :pswitch_9
    iget-object v0, v1, Liqg;->a:Ljava/lang/Object;

    check-cast v0, Liqj;

    iget-object v0, v0, Liqj;->j:Lipw;

    const-string v2, "/stop_countdown"

    invoke-virtual {v0, v2, v4}, Lipw;->d(Ljava/lang/String;[B)V

    return-void

    :pswitch_a
    iget-object v0, v1, Liqg;->a:Ljava/lang/Object;

    check-cast v0, Liqj;

    iget-object v2, v0, Liqj;->j:Lipw;

    sget-object v3, Lipr;->d:Lipr;

    invoke-virtual {v3}, Lnws;->O()Lnwn;

    move-result-object v3

    iget-object v4, v0, Liqj;->n:Litm;

    invoke-interface {v4}, Litm;->d()F

    move-result v4

    iget-object v5, v3, Lnwn;->b:Lnws;

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_3
    iget-object v5, v3, Lnwn;->b:Lnws;

    check-cast v5, Lipr;

    iput v4, v5, Lipr;->b:F

    iget-object v4, v0, Liqj;->n:Litm;

    invoke-interface {v4}, Litm;->e()F

    move-result v4

    iget-object v5, v3, Lnwn;->b:Lnws;

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_4
    iget-object v5, v3, Lnwn;->b:Lnws;

    check-cast v5, Lipr;

    iput v4, v5, Lipr;->a:F

    iget-object v0, v0, Liqj;->n:Litm;

    invoke-interface {v0}, Litm;->g()F

    move-result v0

    iget-object v4, v3, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_5
    iget-object v4, v3, Lnwn;->b:Lnws;

    check-cast v4, Lipr;

    iput v0, v4, Lipr;->c:F

    invoke-virtual {v3}, Lnwn;->i()Lnws;

    move-result-object v0

    check-cast v0, Lipr;

    invoke-virtual {v0}, Lnve;->J()[B

    move-result-object v0

    const-string v3, "/zoom_limit"

    invoke-virtual {v2, v3, v0}, Lipw;->d(Ljava/lang/String;[B)V

    return-void

    :pswitch_b
    iget-object v0, v1, Liqg;->a:Ljava/lang/Object;

    check-cast v0, Liqj;

    iget-object v0, v0, Liqj;->j:Lipw;

    const-string v2, "/support_feature_version"

    invoke-static {}, Liqb;->a()[B

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lipw;->d(Ljava/lang/String;[B)V

    return-void

    :pswitch_c
    iget-object v0, v1, Liqg;->a:Ljava/lang/Object;

    check-cast v0, Liqj;

    iget-object v3, v0, Liqj;->j:Lipw;

    invoke-virtual {v3}, Lipw;->c()Z

    move-result v3

    if-eqz v3, :cond_8

    sget-object v3, Liqj;->a:Lnak;

    invoke-virtual {v3}, Lnaf;->c()Lnaz;

    move-result-object v3

    const-string v5, "Wearable device exists."

    const/16 v6, 0x110e

    invoke-static {v3, v5, v6}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    iget-object v3, v0, Liqj;->j:Lipw;

    invoke-virtual {v3}, Lipw;->a()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    iget-object v3, v0, Liqj;->k:Ljwb;

    invoke-interface {v3}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_0

    :cond_6
    iget-object v3, v0, Liqj;->j:Lipw;

    const-string v5, "/notify_wear"

    invoke-virtual {v3, v5, v4}, Lipw;->d(Ljava/lang/String;[B)V

    iget-object v3, v0, Liqj;->k:Ljwb;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v4}, Ljwb;->bn(Ljava/lang/Object;)V

    iput-boolean v2, v0, Liqj;->u:Z

    return-void

    :cond_7
    :goto_0
    return-void

    :cond_8
    sget-object v0, Liqj;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v2, "Wearable device doesn\'t exist."

    const/16 v3, 0x110d

    invoke-static {v0, v2, v3}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return-void

    :pswitch_d
    iget-object v0, v1, Liqg;->a:Ljava/lang/Object;

    check-cast v0, Liqj;

    iget-boolean v2, v0, Liqj;->u:Z

    if-eqz v2, :cond_9

    iget-object v0, v0, Liqj;->j:Lipw;

    const-string v2, "/cancel_notify_wear"

    invoke-virtual {v0, v2, v4}, Lipw;->d(Ljava/lang/String;[B)V

    :cond_9
    return-void

    :pswitch_e
    iget-object v4, v1, Liqg;->a:Ljava/lang/Object;

    move-object v5, v4

    check-cast v5, Liqj;

    invoke-virtual {v5}, Liqj;->s()Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    iget-boolean v0, v5, Liqj;->v:Z

    const-wide/16 v6, 0x3e8

    if-nez v0, :cond_c

    iget-object v0, v5, Liqj;->j:Lipw;

    sget-object v2, Lipo;->c:Lipo;

    invoke-virtual {v2}, Lnws;->O()Lnwn;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v8, v2, Lnwn;->b:Lnws;

    invoke-virtual {v8}, Lnws;->ac()Z

    move-result v8

    if-nez v8, :cond_b

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_b
    iget-object v8, v2, Lnwn;->b:Lnws;

    check-cast v8, Lipo;

    iput-wide v3, v8, Lipo;->b:J

    invoke-virtual {v2}, Lnwn;->i()Lnws;

    move-result-object v2

    check-cast v2, Lipo;

    invoke-virtual {v2}, Lnve;->J()[B

    move-result-object v2

    const-string v3, "/empty_preview"

    invoke-virtual {v0, v3, v2}, Lipw;->d(Ljava/lang/String;[B)V

    invoke-virtual {v5, v6, v7}, Liqj;->m(J)V

    return-void

    :cond_c
    iget-wide v8, v5, Liqj;->c:J

    cmp-long v0, v8, v6

    if-ltz v0, :cond_d

    const/high16 v0, 0x40800000    # 4.0f

    goto :goto_1

    :cond_d
    const-wide/16 v10, 0x1f4

    cmp-long v0, v8, v10

    if-ltz v0, :cond_e

    const/high16 v0, 0x40400000    # 3.0f

    goto :goto_1

    :cond_e
    const-wide/16 v10, 0x12c

    cmp-long v0, v8, v10

    if-ltz v0, :cond_f

    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_1

    :cond_f
    const-wide/16 v10, 0x96

    cmp-long v0, v8, v10

    if-ltz v0, :cond_10

    const/high16 v0, 0x3fc00000    # 1.5f

    goto :goto_1

    :cond_10
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    :try_start_0
    move-object v8, v4

    check-cast v8, Liqj;

    iget-object v8, v8, Liqj;->l:Lkbc;

    const-string v9, "GetPreviewForWear"

    invoke-interface {v8, v9}, Lkbc;->e(Ljava/lang/String;)V

    move-object v8, v4

    check-cast v8, Liqj;

    iget-object v8, v8, Liqj;->z:Lknz;

    invoke-virtual {v8}, Lknz;->a()Lkab;

    move-result-object v8

    invoke-virtual {v8}, Lkab;->a()I

    move-result v8

    move-object v9, v4

    check-cast v9, Liqj;

    iget-object v9, v9, Liqj;->r:Ligx;

    move-object v10, v4

    check-cast v10, Liqj;

    iget v10, v10, Liqj;->e:I

    int-to-float v10, v10

    div-float/2addr v10, v0

    float-to-int v10, v10

    move-object v11, v4

    check-cast v11, Liqj;

    iget v11, v11, Liqj;->f:I

    int-to-float v11, v11

    div-float/2addr v11, v0

    float-to-int v0, v11

    iget-object v11, v9, Ligx;->e:Lkbc;

    const-string v12, "getScreenshot"

    invoke-interface {v11, v12}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v15, v9, Ligx;->b:Ljava/lang/Object;

    monitor-enter v15
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v11, v9, Ligx;->h:Ligq;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v12, v11, Ligq;->b:Landroid/view/SurfaceView;

    invoke-virtual {v12}, Landroid/view/SurfaceView;->getWidth()I

    move-result v11

    invoke-virtual {v12}, Landroid/view/SurfaceView;->getHeight()I

    move-result v13

    invoke-static {v11, v13}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-virtual {v12}, Landroid/view/SurfaceView;->getHeight()I

    move-result v13

    invoke-virtual {v12}, Landroid/view/SurfaceView;->getWidth()I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    int-to-float v11, v11

    int-to-float v10, v10

    div-float v10, v11, v10

    int-to-float v13, v13

    int-to-float v0, v0

    div-float v0, v13, v0

    invoke-static {v10, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    div-float/2addr v11, v0

    float-to-int v14, v11

    div-float/2addr v13, v0

    float-to-int v0, v13

    iget-object v10, v9, Ligx;->i:Lmqp;

    new-instance v11, Ligt;

    invoke-direct {v11, v9, v14, v0, v12}, Ligt;-><init>(Ligx;IILandroid/view/SurfaceView;)V

    invoke-virtual {v10, v11}, Lmqp;->b(Lmqi;)Lmqp;

    move-result-object v13

    new-instance v11, Ligu;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v16, 0x0

    move-object v10, v11

    move-object v6, v11

    move-object v11, v9

    move-object v7, v13

    move v13, v14

    move v14, v0

    move-object/from16 v17, v15

    move/from16 v15, v16

    :try_start_2
    invoke-direct/range {v10 .. v15}, Ligu;-><init>(Ligx;Landroid/view/SurfaceView;III)V

    invoke-virtual {v7, v6}, Lmqp;->d(Lmrl;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iget-object v6, v9, Ligx;->e:Lkbc;

    invoke-interface {v6}, Lkbc;->f()V

    monitor-exit v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v8, :cond_11

    :try_start_3
    iget-object v6, v9, Ligx;->e:Lkbc;

    const-string v7, "getScreenshot#flipAndRotate"

    invoke-interface {v6, v7}, Lkbc;->e(Ljava/lang/String;)V

    invoke-static {v0, v8, v3}, Ligx;->a(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v6

    iget-object v7, v9, Ligx;->e:Lkbc;

    invoke-interface {v7}, Lkbc;->f()V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v0, v6

    :cond_11
    iget-object v4, v5, Liqj;->l:Lkbc;

    invoke-interface {v4}, Lkbc;->f()V

    if-eqz v0, :cond_12

    invoke-virtual {v5, v0, v2}, Liqj;->o(Landroid/graphics/Bitmap;Z)V

    :cond_12
    const-wide/16 v6, 0x3e8

    invoke-virtual {v5, v6, v7}, Liqj;->m(J)V

    iput-wide v6, v5, Liqj;->c:J

    iput-boolean v3, v5, Liqj;->v:Z

    return-void

    :catchall_0
    move-exception v0

    move-object/from16 v17, v15

    :goto_2
    :try_start_4
    monitor-exit v17
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_6
    sget-object v2, Liqj;->a:Lnak;

    invoke-virtual {v2}, Lnaf;->c()Lnaz;

    move-result-object v2

    check-cast v2, Lnah;

    invoke-interface {v2, v0}, Lnah;->h(Ljava/lang/Throwable;)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v2, 0x1110

    invoke-interface {v0, v2}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v2, "Error when viewfinder.getScreenshot"

    invoke-interface {v0, v2}, Lnah;->o(Ljava/lang/String;)V

    check-cast v4, Liqj;

    const-wide/16 v2, 0x32

    invoke-virtual {v4, v2, v3}, Liqj;->m(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    iget-object v0, v5, Liqj;->l:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    return-void

    :goto_3
    iget-object v2, v5, Liqj;->l:Lkbc;

    invoke-interface {v2}, Lkbc;->f()V

    throw v0

    :pswitch_f
    iget-object v0, v1, Liqg;->a:Ljava/lang/Object;

    check-cast v0, Liqj;

    iget-object v0, v0, Liqj;->j:Lipw;

    const-string v2, "/support_feature_version"

    invoke-static {}, Liqb;->a()[B

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lipw;->d(Ljava/lang/String;[B)V

    return-void

    :pswitch_10
    iget-object v0, v1, Liqg;->a:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Liqj;

    iget-object v3, v2, Liqj;->m:Ljava/lang/Object;

    monitor-enter v3

    :try_start_7
    check-cast v0, Liqj;

    iget-object v0, v0, Liqj;->x:Ljava/lang/String;

    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_13

    iget-object v2, v2, Liqj;->j:Lipw;

    sget-object v3, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v3, "/mode_ready"

    invoke-virtual {v2, v3, v0}, Lipw;->d(Ljava/lang/String;[B)V

    return-void

    :cond_13
    iget-object v0, v2, Liqj;->j:Lipw;

    const-string v2, "/mode_exit"

    invoke-virtual {v0, v2, v4}, Lipw;->d(Ljava/lang/String;[B)V

    return-void

    :catchall_3
    move-exception v0

    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v0

    :pswitch_11
    iget-object v0, v1, Liqg;->a:Ljava/lang/Object;

    check-cast v0, Liqj;

    iget-object v0, v0, Liqj;->j:Lipw;

    const-string v2, "/exit_astro_mode"

    invoke-virtual {v0, v2, v4}, Lipw;->d(Ljava/lang/String;[B)V

    return-void

    :pswitch_12
    iget-object v0, v1, Liqg;->a:Ljava/lang/Object;

    check-cast v0, Liqj;

    iget-object v2, v0, Liqj;->j:Lipw;

    sget-object v3, Lipl;->b:Lipl;

    invoke-virtual {v3}, Lnws;->O()Lnwn;

    move-result-object v3

    iget-object v0, v0, Liqj;->q:Ldbf;

    invoke-virtual {v0}, Ldbf;->d()Lklv;

    move-result-object v0

    invoke-virtual {v0}, Lklv;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v4, v3, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_14

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_14
    iget-object v4, v3, Lnwn;->b:Lnws;

    check-cast v4, Lipl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, v4, Lipl;->a:Ljava/lang/String;

    invoke-virtual {v3}, Lnwn;->i()Lnws;

    move-result-object v0

    check-cast v0, Lipl;

    invoke-virtual {v0}, Lnve;->J()[B

    move-result-object v0

    const-string v3, "/camera_facing"

    invoke-virtual {v2, v3, v0}, Lipw;->d(Ljava/lang/String;[B)V

    return-void

    :pswitch_13
    iget-object v0, v1, Liqg;->a:Ljava/lang/Object;

    check-cast v0, Liqj;

    iget-object v0, v0, Liqj;->j:Lipw;

    const-string v2, "/mode_exit"

    invoke-virtual {v0, v2, v4}, Lipw;->d(Ljava/lang/String;[B)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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
