.class public final synthetic Liiz;
.super Ljava/lang/Object;

# interfaces
.implements Lkai;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lije;I)V
    .locals 0

    iput p2, p0, Liiz;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liiz;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Liol;I)V
    .locals 0

    iput p2, p0, Liiz;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liiz;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Liqj;I)V
    .locals 0

    iput p2, p0, Liiz;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liiz;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Liqu;I)V
    .locals 0

    iput p2, p0, Liiz;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liiz;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lisi;I)V
    .locals 0

    iput p2, p0, Liiz;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liiz;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Runnable;I)V
    .locals 0

    iput p2, p0, Liiz;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liiz;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljwf;I)V
    .locals 0

    iput p2, p0, Liiz;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liiz;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljyi;I)V
    .locals 0

    iput p2, p0, Liiz;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liiz;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lkit;I)V
    .locals 0

    iput p2, p0, Liiz;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liiz;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lkkk;I)V
    .locals 0

    iput p2, p0, Liiz;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liiz;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final bn(Ljava/lang/Object;)V
    .locals 8

    iget v0, p0, Liiz;->b:I

    const-string v1, "UI has not inflated"

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Liiz;->a:Ljava/lang/Object;

    check-cast p1, Lkoq;

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v1}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    if-nez p1, :cond_18

    return-void

    :pswitch_0
    iget-object v0, p0, Liiz;->a:Ljava/lang/Object;

    check-cast p1, Lmqp;

    invoke-virtual {p1}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/Surface;

    check-cast v0, Lkit;

    invoke-virtual {v0, p1}, Lkit;->b(Landroid/view/Surface;)V

    :cond_0
    return-void

    :pswitch_1
    iget-object v0, p0, Liiz;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    check-cast v0, Ljyi;

    invoke-virtual {v0}, Ljyi;->h()V

    return-void

    :pswitch_2
    iget-object v0, p0, Liiz;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    check-cast v0, Ljyi;

    invoke-virtual {v0}, Ljyi;->h()V

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long p1, v1, v3

    if-nez p1, :cond_2

    const-string p1, "AudioEncoder"

    const-string v1, "Empty video recording detected, not adding audio."

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    check-cast v0, Ljyi;

    iget-object p1, v0, Ljyi;->O:Lnph;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lnph;->e(Ljava/lang/Object;)Z

    :cond_2
    return-void

    :pswitch_3
    iget-object v0, p0, Liiz;->a:Ljava/lang/Object;

    check-cast v0, Ljvk;

    invoke-virtual {v0, p1}, Ljvk;->bn(Ljava/lang/Object;)V

    return-void

    :pswitch_4
    iget-object p1, p0, Liiz;->a:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :pswitch_5
    iget-object v0, p0, Liiz;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    check-cast v0, Lisi;

    iget-object v1, v0, Lisi;->d:Ldhi;

    sget-object v2, Ldho;->a:Ldhk;

    invoke-interface {v1, v2}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Lj$/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    cmpl-float p1, p1, v2

    if-lez p1, :cond_3

    iget-object p1, v0, Lisi;->M:Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;

    invoke-virtual {v1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1}, Lmvv;->l(Ljava/lang/Object;)Lmvv;

    move-result-object v1

    iput-object v1, p1, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->s:Lmvv;

    goto :goto_0

    :cond_3
    iget-object p1, v0, Lisi;->M:Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;

    sget v1, Lmvv;->d:I

    sget-object v1, Lmyu;->a:Lmvv;

    iput-object v1, p1, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->s:Lmvv;

    :goto_0
    invoke-virtual {v0}, Lisi;->p()V

    iget-object p1, v0, Lisi;->M:Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;

    invoke-virtual {v0}, Lisi;->g()F

    move-result v1

    iput v1, p1, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->n:F

    iget-boolean p1, v0, Lisi;->m:Z

    if-eqz p1, :cond_4

    iget-object p1, v0, Lisi;->h:Ljwb;

    invoke-interface {p1}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Lisi;->j(F)I

    move-result p1

    iget-object v1, v0, Lisi;->K:Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;

    iget-object v2, v0, Lisi;->h:Ljwb;

    invoke-interface {v2}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v3, v0, Lisi;->g:Ljwb;

    check-cast v3, Ljvk;

    iget-object v3, v3, Ljvk;->d:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v0}, Lisi;->b()F

    move-result v0

    invoke-virtual {v1, p1, v2, v3, v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->e(IFFF)V

    :cond_4
    return-void

    :pswitch_6
    iget-object v0, p0, Liiz;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    check-cast v0, Lisi;

    iget-boolean v1, v0, Lisi;->Y:Z

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lisi;->ae(F)V

    iget-object v1, v0, Lisi;->O:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    iget-object v2, v0, Lisi;->K:Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v3, v0, Lisi;->g:Ljwb;

    check-cast v3, Ljvk;

    iget-object v3, v3, Ljvk;->d:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v0}, Lisi;->b()F

    move-result v0

    invoke-virtual {v2, p1, v3, v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->b(FFF)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->z(Ljava/lang/String;)V

    return-void

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lisi;->j(F)I

    move-result v1

    iget-object v2, v0, Lisi;->K:Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v3, v0, Lisi;->g:Ljwb;

    check-cast v3, Ljvk;

    iget-object v3, v3, Ljvk;->d:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v0}, Lisi;->b()F

    move-result v0

    invoke-virtual {v2, v1, p1, v3, v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->e(IFFF)V

    return-void

    :pswitch_7
    iget-object v0, p0, Liiz;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_9

    move-object p1, v0

    check-cast p1, Lisi;

    iget-object v1, p1, Lisi;->n:Lkog;

    iget-boolean v1, v1, Lkog;->l:Z

    if-eqz v1, :cond_9

    iget-object v0, p1, Lisi;->M:Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;

    iget-object v1, p1, Lisi;->d:Ldhi;

    sget-object v2, Ldho;->cd:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->h(Ldhj;)Lj$/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v3, v1, v2

    if-gez v3, :cond_6

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_6
    const v2, 0x40fccccd    # 7.9f

    cmpl-float v3, v1, v2

    if-lez v3, :cond_7

    const v1, 0x40fccccd    # 7.9f

    :cond_7
    :goto_1
    iput v1, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->g:F

    iget-object v0, p1, Lisi;->M:Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->i()V

    iget-object v0, p1, Lisi;->M:Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p1, Lisi;->E:Lita;

    invoke-virtual {v0}, Lisk;->a()V

    iget-object v0, p1, Lisi;->E:Lita;

    invoke-virtual {v0}, Lisk;->k()V

    :cond_8
    invoke-virtual {p1}, Lisi;->R()V

    return-void

    :cond_9
    check-cast v0, Lisi;

    iget-object p1, v0, Lisi;->M:Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;

    invoke-virtual {v0}, Lisi;->d()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->k(F)V

    invoke-virtual {v0}, Lisi;->R()V

    return-void

    :pswitch_8
    iget-object v0, p0, Liiz;->a:Ljava/lang/Object;

    check-cast p1, Ldbw;

    check-cast v0, Liqu;

    iget-object p1, v0, Liqu;->f:Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;

    if-nez p1, :cond_a

    sget-object p1, Liqu;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    const-string v0, "UI haven\'t not inflated"

    const/16 v1, 0x1139

    invoke-static {p1, v0, v1}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return-void

    :cond_a
    invoke-virtual {v0, v3, v5}, Liqu;->d(ZZ)V

    return-void

    :pswitch_9
    iget-object v0, p0, Liiz;->a:Ljava/lang/Object;

    check-cast p1, Lika;

    check-cast v0, Liqu;

    iget-object p1, v0, Liqu;->f:Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;

    if-nez p1, :cond_b

    sget-object p1, Liqu;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    const/16 v0, 0x1138

    invoke-static {p1, v1, v0}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return-void

    :cond_b
    iget-boolean p1, v0, Liqu;->d:Z

    if-eqz p1, :cond_c

    return-void

    :cond_c
    invoke-virtual {v0, v3, v5}, Liqu;->d(ZZ)V

    return-void

    :pswitch_a
    iget-object v0, p0, Liiz;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    check-cast v0, Liqu;

    iget-object v2, v0, Liqu;->f:Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;

    if-nez v2, :cond_d

    sget-object p1, Liqu;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    const/16 v0, 0x1136

    invoke-static {p1, v1, v0}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return-void

    :cond_d
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_e

    return-void

    :cond_e
    invoke-virtual {v0}, Liqu;->f()V

    return-void

    :pswitch_b
    iget-object v0, p0, Liiz;->a:Ljava/lang/Object;

    check-cast p1, Lklv;

    check-cast v0, Liqj;

    invoke-virtual {v0}, Liqj;->n()V

    return-void

    :pswitch_c
    iget-object v0, p0, Liiz;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    check-cast v0, Liqj;

    invoke-virtual {v0}, Liqj;->q()V

    return-void

    :pswitch_d
    iget-object v0, p0, Liiz;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    check-cast v0, Liol;

    invoke-virtual {v0}, Liol;->b()V

    return-void

    :pswitch_e
    iget-object v0, p0, Liiz;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    check-cast v0, Lije;

    iget-object v0, v0, Lije;->c:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lffs;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljfc;->j(I)I

    move-result p1

    sget-object v1, Lhmu;->a:Lhmu;

    add-int/lit8 p1, p1, -0x1

    packed-switch p1, :pswitch_data_1

    goto :goto_2

    :pswitch_f
    const/4 v2, 0x2

    goto :goto_2

    :pswitch_10
    const/4 v2, 0x1

    :goto_2
    iput v2, v0, Lffs;->a:I

    invoke-virtual {v0}, Lffs;->a()V

    return-void

    :pswitch_11
    iget-object v0, p0, Liiz;->a:Ljava/lang/Object;

    check-cast p1, Lgyu;

    check-cast v0, Lije;

    iget-object v1, v0, Lije;->y:Lcdi;

    invoke-virtual {v1}, Lcdi;->f()Z

    move-result v1

    if-eqz v1, :cond_f

    goto/16 :goto_5

    :cond_f
    sget-object v1, Lgyu;->d:Lgyu;

    if-ne p1, v1, :cond_11

    iget-object p1, v0, Lije;->j:Logd;

    invoke-interface {p1}, Logd;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lclc;

    invoke-virtual {p1}, Lclc;->f()Z

    move-result p1

    if-nez p1, :cond_13

    iget-object p1, v0, Lije;->j:Logd;

    invoke-interface {p1}, Logd;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lclc;

    iget-object v1, p1, Lclc;->a:Ljvk;

    iget-object v1, v1, Ljvk;->d:Ljava/lang/Object;

    sget-object v2, Lclj;->a:Lclj;

    iget-object v4, p1, Lclc;->a:Ljvk;

    iget-object v4, v4, Ljvk;->d:Ljava/lang/Object;

    if-ne v1, v2, :cond_10

    const/4 v3, 0x1

    goto :goto_3

    :cond_10
    :goto_3
    const-string v1, "Cannot transition to IDLE from %s"

    invoke-static {v3, v1, v4}, Lmoz;->s(ZLjava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lclj;->b:Lclj;

    invoke-virtual {p1, v1}, Lclc;->d(Lclj;)V

    iget-object p1, v0, Lije;->h:Lgeh;

    invoke-interface {p1}, Lgeh;->G()Z

    move-result p1

    if-nez p1, :cond_13

    iget-object p1, v0, Lije;->j:Logd;

    invoke-interface {p1}, Logd;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lclc;

    invoke-virtual {p1}, Lclc;->c()V

    return-void

    :cond_11
    iget-object p1, v0, Lije;->j:Logd;

    invoke-interface {p1}, Logd;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lclc;

    invoke-virtual {p1}, Lclc;->f()Z

    move-result p1

    if-eqz p1, :cond_13

    iget-object p1, v0, Lije;->j:Logd;

    invoke-interface {p1}, Logd;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lclc;

    iget-object v1, p1, Lclc;->a:Ljvk;

    iget-object v1, v1, Ljvk;->d:Ljava/lang/Object;

    sget-object v2, Lclj;->b:Lclj;

    iget-object v4, p1, Lclc;->a:Ljvk;

    iget-object v4, v4, Ljvk;->d:Ljava/lang/Object;

    if-ne v1, v2, :cond_12

    const/4 v3, 0x1

    goto :goto_4

    :cond_12
    :goto_4
    const-string v1, "Cannot transition to DISABLED from %s"

    invoke-static {v3, v1, v4}, Lmoz;->s(ZLjava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lclj;->a:Lclj;

    invoke-virtual {p1, v1}, Lclc;->d(Lclj;)V

    iget-object p1, v0, Lije;->h:Lgeh;

    invoke-interface {p1}, Lgeh;->G()Z

    move-result p1

    if-nez p1, :cond_13

    iget-object p1, v0, Lije;->j:Logd;

    invoke-interface {p1}, Logd;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lclc;

    invoke-virtual {p1}, Lclc;->a()V

    return-void

    :cond_13
    :goto_5
    return-void

    :pswitch_12
    iget-object v0, p0, Liiz;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    packed-switch p1, :pswitch_data_2

    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Invalid Macro Focus state."

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :pswitch_13
    sget-object p1, Lhmu;->c:Lhmu;

    goto :goto_6

    :pswitch_14
    sget-object p1, Lhmu;->b:Lhmu;

    goto :goto_6

    :pswitch_15
    sget-object p1, Lhmu;->a:Lhmu;

    :goto_6
    check-cast v0, Lije;

    iget-object v1, v0, Lije;->v:Ljwb;

    invoke-interface {v1}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhmu;

    invoke-virtual {v1, p1}, Lhmu;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    iget-object v1, v0, Lije;->v:Ljwb;

    invoke-interface {v1, p1}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object v1, v0, Lije;->x:Lfbz;

    sget-object v3, Lnla;->e:Lnla;

    invoke-virtual {v3}, Lnws;->O()Lnwn;

    move-result-object v3

    invoke-virtual {p1}, Lhmu;->ordinal()I

    move-result v6

    const/4 v7, 0x4

    packed-switch v6, :pswitch_data_3

    const/4 v2, 0x1

    goto :goto_7

    :pswitch_16
    const/4 v2, 0x2

    goto :goto_7

    :pswitch_17
    const/4 v2, 0x4

    goto :goto_7

    :goto_7
    :pswitch_18
    iget-object v6, v3, Lnwn;->b:Lnws;

    invoke-virtual {v6}, Lnws;->ac()Z

    move-result v6

    if-nez v6, :cond_14

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_14
    iget-object v6, v3, Lnwn;->b:Lnws;

    check-cast v6, Lnla;

    add-int/lit8 v2, v2, -0x1

    iput v2, v6, Lnla;->b:I

    iget v2, v6, Lnla;->a:I

    or-int/2addr v2, v5

    iput v2, v6, Lnla;->a:I

    iget-object v2, v0, Lije;->r:Ljwb;

    invoke-interface {v2}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lika;

    invoke-static {v2}, Lijy;->e(Lika;)I

    move-result v2

    iget-object v5, v3, Lnwn;->b:Lnws;

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_15

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_15
    iget-object v5, v3, Lnwn;->b:Lnws;

    move-object v6, v5

    check-cast v6, Lnla;

    add-int/lit8 v2, v2, -0x1

    iput v2, v6, Lnla;->c:I

    iget v2, v6, Lnla;->a:I

    or-int/2addr v2, v4

    iput v2, v6, Lnla;->a:I

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_16

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_16
    iget-object v2, v3, Lnwn;->b:Lnws;

    check-cast v2, Lnla;

    iput v4, v2, Lnla;->d:I

    iget v4, v2, Lnla;->a:I

    or-int/2addr v4, v7

    iput v4, v2, Lnla;->a:I

    invoke-virtual {v3}, Lnwn;->i()Lnws;

    move-result-object v2

    check-cast v2, Lnla;

    invoke-static {v2}, Lmvv;->l(Ljava/lang/Object;)Lmvv;

    move-result-object v2

    invoke-interface {v1, v2}, Lfbz;->x(Ljava/util/List;)V

    sget-object v1, Lhmu;->c:Lhmu;

    invoke-virtual {p1, v1}, Lhmu;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    iget-object v0, v0, Lije;->p:Lgzn;

    sget-object v1, Lgzd;->n:Lgzr;

    invoke-static {p1}, Lhmu;->b(Lhmu;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lgzn;->e(Lgzb;Ljava/lang/Object;)V

    :cond_17
    return-void

    :cond_18
    check-cast v0, Lkkk;

    invoke-virtual {v0}, Lkkk;->a()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
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
        :pswitch_10
        :pswitch_f
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
        :pswitch_13
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_16
    .end packed-switch
.end method
