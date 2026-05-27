.class public final synthetic Ldcc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Landroid/content/Intent;I)V
    .locals 0

    iput p2, p0, Ldcc;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldcc;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/res/Configuration;I)V
    .locals 0

    iput p2, p0, Ldcc;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldcc;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;I)V
    .locals 0

    iput p2, p0, Ldcc;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldcc;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/googlex/gcam/ShotParams;I)V
    .locals 0

    iput p2, p0, Ldcc;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldcc;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lczv;I)V
    .locals 0

    iput p2, p0, Ldcc;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldcc;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ldbf;I)V
    .locals 0

    iput p2, p0, Ldcc;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldcc;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lddf;I)V
    .locals 0

    iput p2, p0, Ldcc;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldcc;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lddn;I)V
    .locals 0

    iput p2, p0, Ldcc;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldcc;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ldja;I[B)V
    .locals 0

    iput p2, p0, Ldcc;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldcc;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lfaj;I)V
    .locals 0

    iput p2, p0, Ldcc;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldcc;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lfaz;I)V
    .locals 0

    iput p2, p0, Ldcc;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldcc;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lfum;I)V
    .locals 0

    iput p2, p0, Ldcc;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldcc;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 8

    iget v0, p0, Ldcc;->b:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ldcc;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    check-cast v0, Lfum;

    iget-object v0, v0, Lfum;->a:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_0
    iget-object v0, p0, Ldcc;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    check-cast v0, Lfum;

    invoke-virtual {v0, p1}, Lfum;->b(Ljava/lang/String;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Ldcc;->a:Ljava/lang/Object;

    check-cast p1, Lfaz;

    invoke-interface {v0, p1}, Lfaj;->a(Lfaz;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Ldcc;->a:Ljava/lang/Object;

    check-cast p1, Lfaj;

    sget v1, Lfak;->l:I

    invoke-interface {p1, v0}, Lfaj;->a(Lfaz;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Ldcc;->a:Ljava/lang/Object;

    check-cast p1, Lfaj;

    invoke-interface {p1, v0}, Lfaj;->a(Lfaz;)V

    return-void

    :pswitch_4
    iget-object v0, p0, Ldcc;->a:Ljava/lang/Object;

    check-cast p1, Lfaz;

    invoke-interface {v0, p1}, Lfaj;->a(Lfaz;)V

    return-void

    :pswitch_5
    iget-object v0, p0, Ldcc;->a:Ljava/lang/Object;

    check-cast p1, Lfaz;

    sget v1, Lezx;->e:I

    instance-of v1, p1, Lezd;

    if-eqz v1, :cond_0

    check-cast p1, Lezd;

    check-cast v0, Landroid/content/res/Configuration;

    invoke-interface {p1, v0}, Lezd;->y(Landroid/content/res/Configuration;)V

    :cond_0
    return-void

    :pswitch_6
    iget-object v0, p0, Ldcc;->a:Ljava/lang/Object;

    check-cast p1, Lfaz;

    sget v1, Lezx;->e:I

    instance-of v1, p1, Lezh;

    if-eqz v1, :cond_1

    check-cast p1, Lezh;

    check-cast v0, Landroid/content/Intent;

    invoke-interface {p1, v0}, Lezh;->bL(Landroid/content/Intent;)V

    :cond_1
    return-void

    :pswitch_7
    iget-object v0, p0, Ldcc;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    check-cast v0, Lcom/google/googlex/gcam/ShotParams;

    iget-wide v1, v0, Lcom/google/googlex/gcam/ShotParams;->a:J

    invoke-static {v1, v2, v0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_little_cpu_freq_option_set(JLcom/google/googlex/gcam/ShotParams;F)V

    return-void

    :pswitch_8
    iget-object v0, p0, Ldcc;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    check-cast v0, Lcom/google/googlex/gcam/ShotParams;

    iget-wide v1, v0, Lcom/google/googlex/gcam/ShotParams;->a:J

    invoke-static {v1, v2, v0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_mid_cpu_freq_option_set(JLcom/google/googlex/gcam/ShotParams;F)V

    return-void

    :pswitch_9
    iget-object v0, p0, Ldcc;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    check-cast v0, Lcom/google/googlex/gcam/ShotParams;

    iget-wide v1, v0, Lcom/google/googlex/gcam/ShotParams;->a:J

    invoke-static {v1, v2, v0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_big_cpu_freq_option_set(JLcom/google/googlex/gcam/ShotParams;F)V

    return-void

    :pswitch_a
    iget-object v0, p0, Ldcc;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    check-cast v0, Lcom/google/googlex/gcam/ShotParams;

    iget-wide v1, v0, Lcom/google/googlex/gcam/ShotParams;->a:J

    invoke-static {v1, v2, v0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_psaf_log_scene_brightness_threshold_override_set(JLcom/google/googlex/gcam/ShotParams;F)V

    return-void

    :pswitch_b
    iget-object v0, p0, Ldcc;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    check-cast v0, Lcom/google/googlex/gcam/ShotParams;

    iget-wide v1, v0, Lcom/google/googlex/gcam/ShotParams;->a:J

    invoke-static {v1, v2, v0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_psaf_max_exposure_time_ms_set(JLcom/google/googlex/gcam/ShotParams;F)V

    return-void

    :pswitch_c
    iget-object v0, p0, Ldcc;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    check-cast v0, Lcom/google/googlex/gcam/ShotParams;

    iget-wide v1, v0, Lcom/google/googlex/gcam/ShotParams;->a:J

    invoke-static {v1, v2, v0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_shasta_factor_set(JLcom/google/googlex/gcam/ShotParams;F)V

    return-void

    :pswitch_d
    iget-object v0, p0, Ldcc;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast v0, Lcom/google/googlex/gcam/ShotParams;

    iget-wide v1, v0, Lcom/google/googlex/gcam/ShotParams;->a:J

    invoke-static {v1, v2, v0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_pecan_override_set(JLcom/google/googlex/gcam/ShotParams;I)V

    return-void

    :pswitch_e
    iget-object v0, p0, Ldcc;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    check-cast v0, Lcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;

    invoke-virtual {v0, p1}, Lcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;->b(F)V

    return-void

    :pswitch_f
    iget-object v0, p0, Ldcc;->a:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/drawable/Drawable;

    check-cast v0, Lddn;

    iput-object p1, v0, Lddn;->c:Landroid/graphics/drawable/Drawable;

    return-void

    :pswitch_10
    iget-object v0, p0, Ldcc;->a:Ljava/lang/Object;

    check-cast p1, Lddd;

    check-cast v0, Lddf;

    iget-object v0, v0, Lddf;->a:Lcom/google/android/apps/camera/camerafatalerror/CameraFatalErrorTrackerDatabase;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/camerafatalerror/CameraFatalErrorTrackerDatabase;->y()Ldcy;

    move-result-object v0

    new-instance v1, Ldcx;

    invoke-direct {v1, p1}, Ldcx;-><init>(Lddd;)V

    invoke-virtual {v0, v1}, Ldcy;->b(Ldcx;)V

    return-void

    :pswitch_11
    iget-object v0, p0, Ldcc;->a:Ljava/lang/Object;

    check-cast p1, Lddd;

    check-cast v0, Ldja;

    iget-object v3, v0, Ldja;->a:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/apps/camera/camerafatalerror/CameraFatalErrorTrackerDatabase;

    invoke-virtual {v3}, Lcom/google/android/apps/camera/camerafatalerror/CameraFatalErrorTrackerDatabase;->y()Ldcy;

    move-result-object v3

    iget-object v4, v0, Ldja;->c:Ljava/lang/Object;

    check-cast v4, Lcvr;

    invoke-virtual {v4}, Lcvr;->d()I

    move-result v4

    sget-object v5, Lddd;->d:Lddd;

    if-eq p1, v5, :cond_3

    sget-object v5, Lddd;->c:Lddd;

    if-eq p1, v5, :cond_3

    sget-object v5, Lddd;->b:Lddd;

    if-ne p1, v5, :cond_2

    goto :goto_0

    :cond_2
    goto :goto_1

    :cond_3
    :goto_0
    iget-object v0, v0, Ldja;->c:Ljava/lang/Object;

    check-cast v0, Lcvr;

    invoke-virtual {v0}, Lcvr;->f()I

    move-result v4

    :goto_1
    move-object v0, v3

    check-cast v0, Lddc;

    iget-object v5, v0, Lddc;->a:Lapt;

    invoke-virtual {v5}, Lapt;->l()V

    iget-object v5, v0, Lddc;->b:Laqa;

    invoke-virtual {v5}, Laqa;->e()Larf;

    move-result-object v5

    iget-object v6, v0, Lddc;->c:Lbze;

    invoke-virtual {p1}, Lddd;->ordinal()I

    move-result p1

    int-to-long v6, p1

    invoke-virtual {v5, v2, v6, v7}, Lare;->e(IJ)V

    int-to-long v6, v4

    invoke-virtual {v5, v1, v6, v7}, Lare;->e(IJ)V

    iget-object p1, v0, Lddc;->a:Lapt;

    invoke-virtual {p1}, Lapt;->m()V

    :try_start_0
    invoke-virtual {v5}, Larf;->a()I

    check-cast v3, Lddc;

    iget-object p1, v3, Lddc;->a:Lapt;

    invoke-virtual {p1}, Lapt;->q()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, v0, Lddc;->a:Lapt;

    invoke-virtual {p1}, Lapt;->o()V

    iget-object p1, v0, Lddc;->b:Laqa;

    invoke-virtual {p1, v5}, Laqa;->g(Larf;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object v1, v0, Lddc;->a:Lapt;

    invoke-virtual {v1}, Lapt;->o()V

    iget-object v0, v0, Lddc;->b:Laqa;

    invoke-virtual {v0, v5}, Laqa;->g(Larf;)V

    throw p1

    :pswitch_12
    iget-object v0, p0, Ldcc;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    check-cast v0, Lczv;

    iget-object v3, v0, Lczv;->q:Ljew;

    invoke-virtual {v3, p1}, Ljew;->X(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_6

    iget v3, v0, Lczv;->n:I

    iget-object v4, v0, Lczv;->j:Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;

    invoke-virtual {v4, v3}, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->b(I)I

    move-result v4

    iget-object v5, v0, Lczv;->j:Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;

    invoke-virtual {v5, v3}, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, v0, Lczv;->a:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_5

    if-nez v5, :cond_4

    goto/16 :goto_3

    :cond_4
    iget-object v6, v0, Lczv;->j:Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;

    iget-object v7, v6, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->c:Lmtb;

    invoke-virtual {v6, v3}, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->b(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v3}, Lmtb;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5}, Landroid/view/View;->requestLayout()V

    iget-object v3, v0, Lczv;->k:Lkad;

    invoke-interface {v3}, Lkad;->close()V

    iget-object v3, v0, Lczv;->i:Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v3, v6}, Liko;->b(Landroid/view/Display;Landroid/content/Context;)Liko;

    move-result-object v3

    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0705eb

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v3}, Liko;->ordinal()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    goto :goto_3

    :pswitch_13
    new-instance v3, Lifx;

    invoke-direct {v3, v1}, Lifx;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5, v6}, Lifx;->h(Landroid/view/View;I)V

    invoke-interface {v3}, Lify;->i()V

    goto :goto_2

    :pswitch_14
    new-instance v3, Lifx;

    invoke-direct {v3, v1}, Lifx;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5, v6}, Lifx;->j(Landroid/view/View;I)V

    invoke-interface {v3}, Lify;->i()V

    goto :goto_2

    :pswitch_15
    new-instance v3, Lifx;

    invoke-direct {v3, v1}, Lifx;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lifx;->q(Landroid/view/View;)V

    invoke-interface {v3}, Lify;->i()V

    :goto_2
    invoke-interface {v3}, Lifz;->k()V

    invoke-interface {v3}, Liga;->l()V

    iput-boolean v2, v3, Lifx;->g:Z

    const/16 v1, 0x12c

    iput v1, v3, Lifx;->d:I

    const/16 v1, 0xed8

    iput v1, v3, Lifx;->e:I

    const/4 v1, 0x6

    iput v1, v3, Lifx;->m:I

    new-instance v1, Lbbh;

    const/16 v2, 0x9

    invoke-direct {v1, v0, v4, v2}, Lbbh;-><init>(Lczv;II)V

    iget-object v2, v0, Lczv;->f:Ljuh;

    invoke-interface {v3, v1, v2}, Liga;->f(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    const/4 v1, 0x0

    iput-boolean v1, v3, Lifx;->f:Z

    iget-object v1, v0, Lczv;->d:Lell;

    iput-object v1, v3, Lifx;->i:Lell;

    invoke-interface {v3}, Liga;->a()Lkad;

    move-result-object v1

    iput-object v1, v0, Lczv;->k:Lkad;

    iget-object v1, v0, Lczv;->o:Lcdi;

    invoke-virtual {v1}, Lcdi;->i()Ljuf;

    move-result-object v1

    iget-object v2, v0, Lczv;->k:Lkad;

    invoke-virtual {v1, v2}, Ljuf;->d(Lkad;)V

    :cond_5
    :goto_3
    iget-object v0, v0, Lczv;->q:Ljew;

    invoke-virtual {v0, p1}, Ljew;->Z(Ljava/lang/String;)I

    return-void

    :cond_6
    return-void

    :pswitch_16
    iget-object v0, p0, Ldcc;->a:Ljava/lang/Object;

    check-cast p1, Ldbv;

    check-cast v0, Ldbf;

    iget-object v0, v0, Ldbf;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_16
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

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
        :pswitch_13
    .end packed-switch
.end method

.method public final synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 1

    iget v0, p0, Ldcc;->b:I

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

    :pswitch_8
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1

    :pswitch_9
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1

    :pswitch_a
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1

    :pswitch_b
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1

    :pswitch_c
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1

    :pswitch_d
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1

    :pswitch_e
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1

    :pswitch_f
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1

    :pswitch_10
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1

    :pswitch_11
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1

    :pswitch_12
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1

    :pswitch_13
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1

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
