.class public final synthetic Licl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/camera/coach/CameraCoachHudView;I)V
    .locals 0

    iput p2, p0, Licl;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Licl;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/apps/camera/zoomui/view/ZoomUi;I)V
    .locals 0

    iput p2, p0, Licl;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Licl;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/googlex/gcam/FrameMetadata;I)V
    .locals 0

    iput p2, p0, Licl;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Licl;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhsl;I)V
    .locals 0

    iput p2, p0, Licl;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Licl;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lico;I)V
    .locals 0

    iput p2, p0, Licl;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Licl;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Life;I)V
    .locals 0

    iput p2, p0, Licl;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Licl;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lifu;I)V
    .locals 0

    iput p2, p0, Licl;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Licl;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Liko;I)V
    .locals 0

    iput p2, p0, Licl;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Licl;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Llhz;I[B[B)V
    .locals 0

    iput p2, p0, Licl;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Licl;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>([BI)V
    .locals 0

    iput p2, p0, Licl;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Licl;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    iget v0, p0, Licl;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Licl;->a:Ljava/lang/Object;

    move-object v6, p1

    check-cast v6, Lcom/google/googlex/gcam/OisMetadata;

    move-object v3, v0

    check-cast v3, Lcom/google/googlex/gcam/FrameMetadata;

    iget-wide v1, v3, Lcom/google/googlex/gcam/FrameMetadata;->a:J

    if-nez v6, :cond_3

    const-wide/16 v4, 0x0

    goto/16 :goto_0

    :pswitch_0
    iget-object v0, p0, Licl;->a:Ljava/lang/Object;

    check-cast p1, Lmpl;

    check-cast v0, Llhz;

    iget-object v0, v0, Llhz;->a:Ljava/lang/Object;

    invoke-interface {v0, p1}, Lmoy;->provideVideoFrame(Lmpl;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Licl;->a:Ljava/lang/Object;

    check-cast p1, Ljava/io/OutputStream;

    :try_start_0
    move-object v1, v0

    check-cast v1, [B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    sget-object v1, Lmou;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->b()Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    invoke-interface {v1, p1}, Lnah;->h(Ljava/lang/Throwable;)Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const/16 v1, 0x11db

    invoke-interface {p1, v1}, Lnah;->G(I)Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    check-cast v0, [B

    array-length v0, v0

    const-string v1, "Failed to write %d bytes of processed audio to the output stream."

    invoke-interface {p1, v1, v0}, Lnah;->p(Ljava/lang/String;I)V

    return-void

    :pswitch_2
    iget-object v0, p0, Licl;->a:Ljava/lang/Object;

    check-cast p1, Linb;

    check-cast v0, [B

    invoke-virtual {p1, v0}, Linb;->a([B)V

    return-void

    :pswitch_3
    iget-object v0, p0, Licl;->a:Ljava/lang/Object;

    check-cast p1, Landroid/view/View;

    instance-of v1, p1, Lcom/google/android/apps/camera/uiutils/ViewSmoothRotationUtil$Rotatee;

    if-eqz v1, :cond_1

    check-cast p1, Lcom/google/android/apps/camera/uiutils/ViewSmoothRotationUtil$Rotatee;

    check-cast v0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    iget-object v0, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->e:Liko;

    invoke-static {p1, v0}, Ljvd;->F(Lcom/google/android/apps/camera/uiutils/ViewSmoothRotationUtil$Rotatee;Liko;)Lmqp;

    move-result-object p1

    invoke-virtual {p1}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void

    :cond_1
    check-cast v0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    iget-object v0, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->e:Liko;

    invoke-static {p1, v0}, Ljvd;->I(Landroid/view/View;Liko;)V

    return-void

    :pswitch_4
    iget-object v0, p0, Licl;->a:Ljava/lang/Object;

    check-cast p1, Landroid/view/View;

    check-cast v0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    iget-object v0, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->e:Liko;

    invoke-static {p1, v0}, Ljvd;->I(Landroid/view/View;Liko;)V

    return-void

    :pswitch_5
    iget-object v0, p0, Licl;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast v0, Lcom/google/android/apps/camera/coach/CameraCoachHudView;

    iget-object v1, v0, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->d:Lmqp;

    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, v0, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->d:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldfq;

    int-to-float p1, p1

    iput p1, v0, Ldfq;->o:F

    :cond_2
    return-void

    :pswitch_6
    iget-object v0, p0, Licl;->a:Ljava/lang/Object;

    check-cast p1, Landroid/view/View;

    check-cast v0, Liko;

    invoke-static {p1, v0}, Ljvd;->I(Landroid/view/View;Liko;)V

    return-void

    :pswitch_7
    iget-object v0, p0, Licl;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast v0, Lifu;

    iget-object v0, v0, Lifu;->a:Lige;

    iput p1, v0, Lige;->p:I

    return-void

    :pswitch_8
    iget-object v0, p0, Licl;->a:Ljava/lang/Object;

    check-cast p1, Landroid/animation/Animator;

    check-cast v0, Life;

    iget-object p1, v0, Life;->b:Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;

    sget-object v0, Liem;->a:Liem;

    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->resetTo(Liem;)V

    return-void

    :pswitch_9
    iget-object v0, p0, Licl;->a:Ljava/lang/Object;

    check-cast p1, Ljava/util/function/Supplier;

    invoke-interface {v0, p1}, Lhsl;->j(Ljava/util/function/Supplier;)V

    return-void

    :pswitch_a
    iget-object v0, p0, Licl;->a:Ljava/lang/Object;

    check-cast p1, Licn;

    check-cast v0, Lico;

    invoke-virtual {v0, p1}, Lico;->a(Licn;)V

    return-void

    :cond_3
    iget-wide v4, v6, Lcom/google/googlex/gcam/OisMetadata;->a:J

    :goto_0
    invoke-static/range {v1 .. v6}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_ois_metadata_set(JLcom/google/googlex/gcam/FrameMetadata;JLcom/google/googlex/gcam/OisMetadata;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method public final synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 1

    iget v0, p0, Licl;->b:I

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

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
