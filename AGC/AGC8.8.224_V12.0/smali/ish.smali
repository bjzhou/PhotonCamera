.class public final Lish;
.super Ljava/lang/Object;

# interfaces
.implements Litk;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lckk;I)V
    .locals 0

    iput p2, p0, Lish;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lish;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lisi;I)V
    .locals 0

    iput p2, p0, Lish;->b:I

    iput-object p1, p0, Lish;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final m(I)V
    .locals 9

    iget v0, p0, Lish;->b:I

    const/4 v1, 0x1

    const/4 v2, 0x7

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lish;->a:Ljava/lang/Object;

    check-cast v0, Lckk;

    iget-boolean v3, v0, Lckk;->u:Z

    if-nez v3, :cond_7

    if-eq p1, v2, :cond_7

    if-eq p1, v1, :cond_7

    invoke-virtual {v0}, Lckk;->e()V

    goto/16 :goto_2

    :pswitch_0
    const/4 v0, 0x0

    const/4 v3, 0x3

    if-ne p1, v3, :cond_5

    iget-object p1, p0, Lish;->a:Ljava/lang/Object;

    check-cast p1, Lisi;

    invoke-virtual {p1}, Lisi;->Y()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p1, Lisi;->ak:Ljew;

    const-string v5, "wide_selfie_tooltip_display_count"

    invoke-virtual {v4, v5}, Ljew;->X(Ljava/lang/String;)I

    move-result v4

    const/4 v6, 0x2

    if-le v4, v6, :cond_0

    const/4 p1, 0x3

    goto/16 :goto_1

    :cond_0
    iget-object v4, p1, Lisi;->g:Ljwb;

    check-cast v4, Ljvk;

    iget-object v4, v4, Ljvk;->d:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget v7, p1, Lisi;->aa:F

    iget-object v8, p1, Lisi;->g:Ljwb;

    check-cast v8, Ljvk;

    iget-object v8, v8, Ljvk;->d:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    div-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v7, v7

    mul-float v4, v4, v7

    iget-object v7, p1, Lisi;->h:Ljwb;

    invoke-interface {v7}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    cmpg-float v4, v7, v4

    if-gez v4, :cond_1

    iget-object p1, p1, Lisi;->ak:Ljew;

    invoke-virtual {p1, v5, v3}, Ljew;->aa(Ljava/lang/String;I)V

    const/4 p1, 0x3

    goto/16 :goto_1

    :cond_1
    iget-object v4, p1, Lisi;->ak:Ljew;

    invoke-virtual {v4, v5}, Ljew;->X(Ljava/lang/String;)I

    move-result v4

    if-ge v4, v6, :cond_2

    iget-object v4, p1, Lisi;->ak:Ljew;

    invoke-virtual {v4, v5}, Ljew;->Z(Ljava/lang/String;)I

    :cond_2
    new-instance v4, Lifx;

    iget-object v5, p1, Lisi;->J:Landroid/content/res/Resources;

    const v6, 0x7f1405f4

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lifx;-><init>(Ljava/lang/String;)V

    iget-object v5, p1, Lisi;->K:Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;

    invoke-virtual {v4, v5}, Lifx;->q(Landroid/view/View;)V

    invoke-interface {v4}, Lify;->i()V

    invoke-interface {v4}, Lifz;->k()V

    const/16 v5, 0x3e8

    iput v5, v4, Lifx;->d:I

    iget-object v5, p1, Lisi;->J:Landroid/content/res/Resources;

    const v6, 0x7f0c00d1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    add-int/lit16 v5, v5, -0x3e8

    iput v5, v4, Lifx;->e:I

    new-instance v5, Lfeo;

    const/16 v6, 0x8

    invoke-direct {v5, p1, v6}, Lfeo;-><init>(Lisi;I)V

    invoke-interface {v4, v5}, Liga;->d(Ljava/util/function/Supplier;)V

    new-instance v5, Liqg;

    const/16 v6, 0x10

    invoke-direct {v5, p1, v6}, Liqg;-><init>(Lisi;I)V

    invoke-interface {v4, v5}, Liga;->e(Ljava/lang/Runnable;)V

    const/4 v5, 0x4

    iput v5, v4, Lifx;->m:I

    iget-object v5, p1, Lisi;->k:Lell;

    iput-object v5, v4, Lifx;->i:Lell;

    iput-boolean v0, v4, Lifx;->f:Z

    invoke-interface {v4}, Liga;->l()V

    invoke-interface {v4}, Liga;->a()Lkad;

    move-result-object v4

    iget-object v5, p1, Lisi;->I:Lmqp;

    invoke-virtual {v5}, Lmqp;->g()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p1, Lisi;->I:Lmqp;

    invoke-virtual {v5}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkad;

    invoke-interface {v5}, Lkad;->close()V

    :cond_3
    invoke-static {v4}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v5

    iput-object v5, p1, Lisi;->I:Lmqp;

    iget-object p1, p1, Lisi;->e:Ljuf;

    invoke-virtual {p1, v4}, Ljuf;->d(Lkad;)V

    goto :goto_0

    :cond_4
    :goto_0
    const/4 p1, 0x3

    :cond_5
    :goto_1
    iget-object v3, p0, Lish;->a:Ljava/lang/Object;

    if-eq p1, v2, :cond_6

    const/4 v1, 0x0

    :cond_6
    check-cast v3, Lisi;

    iput-boolean v1, v3, Lisi;->W:Z

    return-void

    :cond_7
    :goto_2
    iput p1, v0, Lckk;->w:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
