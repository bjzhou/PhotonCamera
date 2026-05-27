.class public final Lcej;
.super Ljava/lang/Object;

# interfaces
.implements Lmqi;


# instance fields
.field private final synthetic a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcej;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lcej;->a:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :pswitch_0
    check-cast p1, Ljava/util/List;

    sget-object p1, Lkyd;->a:Lkyd;

    return-object p1

    :pswitch_1
    check-cast p1, Lkdl;

    iget-short p1, p1, Lkdl;->i:S

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    return-object p1

    :pswitch_2
    check-cast p1, Lgam;

    invoke-interface {p1}, Lgam;->b()Ljvs;

    move-result-object p1

    return-object p1

    :pswitch_3
    check-cast p1, Lgam;

    invoke-interface {p1}, Lgam;->a()Ljvs;

    move-result-object p1

    return-object p1

    :pswitch_4
    check-cast p1, Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkou;

    const-string v2, "Metadata"

    invoke-static {v2}, Lmoz;->z(Ljava/lang/String;)Lmqo;

    move-result-object v2

    sget-object v3, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v1, v3}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "timestamp"

    invoke-virtual {v2, v4, v3}, Lmqo;->b(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v3, Landroid/hardware/camera2/CaptureResult;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v1, v3}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "NR"

    invoke-virtual {v2, v4, v3}, Lmqo;->b(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v3, Landroid/hardware/camera2/CaptureResult;->EDGE_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v1, v3}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "EDGE"

    invoke-virtual {v2, v4, v3}, Lmqo;->b(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v3, Landroid/hardware/camera2/CaptureResult;->REPROCESS_EFFECTIVE_EXPOSURE_FACTOR:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v1, v3}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "REEF"

    invoke-virtual {v2, v4, v3}, Lmqo;->b(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v3, Landroid/hardware/camera2/CaptureResult;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v1, v3}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "Jpeg Qual"

    invoke-virtual {v2, v3, v1}, Lmqo;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2}, Lmqo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_5
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lfwt;->b(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lfwn;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-static {}, Lfwt;->e()Lfwn;

    move-result-object p1

    :goto_1
    return-object p1

    :pswitch_6
    check-cast p1, Lgxb;

    iget-object v0, p1, Lgxb;->a:Ljava/lang/Object;

    check-cast v0, Lftt;

    iget-object v0, v0, Lftt;->a:Lgrx;

    sget-object v3, Lgrx;->e:Lgrx;

    if-ne v0, v3, :cond_2

    iget-object v0, p1, Lgxb;->a:Ljava/lang/Object;

    check-cast v0, Lftt;

    iget-object v0, v0, Lftt;->b:Lgry;

    sget-object v3, Lgry;->e:Lgry;

    if-eq v0, v3, :cond_2

    iget-object p1, p1, Lgxb;->a:Ljava/lang/Object;

    check-cast p1, Lftt;

    iget-object p1, p1, Lftt;->b:Lgry;

    sget-object v0, Lgry;->f:Lgry;

    if-eq p1, v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_7
    check-cast p1, Lgrx;

    iget p1, p1, Lgrx;->h:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_8
    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    sget-object v0, Lmyj;->a:Lmyj;

    invoke-virtual {v0, p1}, Lmyk;->e(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_4

    :cond_4
    :goto_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_4
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
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
