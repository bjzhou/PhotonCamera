.class public final synthetic Lbx;
.super Ljava/lang/Object;

# interfaces
.implements Laea;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lbz;I)V
    .locals 0

    iput p2, p0, Lbx;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbx;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;I)V
    .locals 0

    iput p2, p0, Lbx;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbx;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;I)V
    .locals 0

    iput p2, p0, Lbx;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbx;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcq;I)V
    .locals 0

    iput p2, p0, Lbx;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbx;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhxl;I)V
    .locals 0

    iput p2, p0, Lbx;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbx;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lotd;I)V
    .locals 0

    iput p2, p0, Lbx;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbx;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 5

    iget v0, p0, Lbx;->b:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lbx;->a:Ljava/lang/Object;

    check-cast p1, Lixt;

    check-cast v0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;

    invoke-virtual {v0, p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->a(Lixt;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lbx;->a:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Canvas;

    check-cast v0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;

    invoke-virtual {v0, p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->aB(Landroid/graphics/Canvas;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lbx;->a:Ljava/lang/Object;

    check-cast p1, Lawl;

    invoke-static {}, Lmvv;->e()Lmvq;

    move-result-object v2

    iget-object p1, p1, Lawl;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lawe;

    instance-of v4, v3, Lawe;

    if-eqz v4, :cond_0

    invoke-virtual {v2, v3}, Lmvq;->g(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lmvq;->f()Lmvv;

    move-result-object p1

    check-cast v0, Lhxl;

    iget-object v2, v0, Lhxl;->b:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    :cond_2
    move-object v2, p1

    check-cast v2, Lmyu;

    iget v2, v2, Lmyu;->c:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lawe;

    sget-object v1, Lawc;->a:Lawc;

    iget-object v2, p1, Lawe;->b:Lawc;

    if-ne v1, v2, :cond_3

    invoke-static {}, Ljji;->p()Lhxi;

    move-result-object p1

    goto :goto_1

    :cond_3
    sget-object v1, Lawc;->b:Lawc;

    if-ne v1, v2, :cond_4

    sget-object v1, Lawb;->a:Lawb;

    invoke-virtual {p1}, Lawe;->a()Lawb;

    move-result-object v2

    if-ne v1, v2, :cond_4

    invoke-static {}, Ljji;->p()Lhxi;

    move-result-object p1

    goto :goto_1

    :cond_4
    sget-object v1, Lawc;->b:Lawc;

    iget-object v2, p1, Lawe;->b:Lawc;

    if-ne v1, v2, :cond_5

    sget-object v1, Lawb;->b:Lawb;

    invoke-virtual {p1}, Lawe;->a()Lawb;

    move-result-object v2

    if-ne v1, v2, :cond_5

    iget-object p1, p1, Lawe;->a:Lavo;

    invoke-virtual {p1}, Lavo;->c()Landroid/graphics/Rect;

    move-result-object p1

    new-instance v1, Lhxi;

    sget-object v2, Lhxj;->e:Lhxj;

    invoke-static {p1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lhxi;-><init>(Lhxj;Lmqp;)V

    move-object p1, v1

    goto :goto_1

    :cond_5
    new-instance p1, Lhxi;

    sget-object v1, Lhxj;->b:Lhxj;

    sget-object v2, Lmpx;->a:Lmpx;

    invoke-direct {p1, v1, v2}, Lhxi;-><init>(Lhxj;Lmqp;)V

    :goto_1
    iget-object v1, v0, Lhxl;->a:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    iget-object v2, v2, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->a:Ljava/lang/Object;

    invoke-static {}, Ljji;->q()Lhxi;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    check-cast v2, Lfup;

    invoke-virtual {v2, p1}, Lfup;->b(Lhxi;)V

    goto :goto_2

    :cond_7
    iget-object v0, v0, Lhxl;->c:Ljwb;

    invoke-interface {v0, p1}, Ljwb;->bn(Ljava/lang/Object;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lbx;->a:Ljava/lang/Object;

    check-cast p1, Lawl;

    check-cast v0, Lost;

    invoke-virtual {v0, p1}, Lost;->s(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_3
    iget-object v0, p0, Lbx;->a:Ljava/lang/Object;

    check-cast p1, Llpg;

    check-cast v0, Lcq;

    invoke-virtual {v0}, Lcq;->T()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-boolean p1, p1, Llpg;->a:Z

    invoke-virtual {v0, p1, v1}, Lcq;->x(ZZ)V

    :cond_8
    return-void

    :pswitch_4
    iget-object v0, p0, Lbx;->a:Ljava/lang/Object;

    check-cast p1, Llpg;

    check-cast v0, Lcq;

    invoke-virtual {v0}, Lcq;->T()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-boolean p1, p1, Llpg;->a:Z

    invoke-virtual {v0, p1, v1}, Lcq;->s(ZZ)V

    :cond_9
    return-void

    :pswitch_5
    iget-object v0, p0, Lbx;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    check-cast v0, Lcq;

    invoke-virtual {v0}, Lcq;->T()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v2, 0x50

    if-ne p1, v2, :cond_a

    invoke-virtual {v0, v1}, Lcq;->r(Z)V

    :cond_a
    return-void

    :pswitch_6
    iget-object v0, p0, Lbx;->a:Ljava/lang/Object;

    check-cast p1, Landroid/content/res/Configuration;

    check-cast v0, Lcq;

    invoke-virtual {v0}, Lcq;->T()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v0, p1, v1}, Lcq;->o(Landroid/content/res/Configuration;Z)V

    :cond_b
    return-void

    :pswitch_7
    iget-object v0, p0, Lbx;->a:Ljava/lang/Object;

    check-cast p1, Landroid/content/res/Configuration;

    check-cast v0, Lbz;

    iget-object p1, v0, Lbz;->e:Lbkb;

    invoke-virtual {p1}, Lbkb;->x()V

    return-void

    :pswitch_8
    iget-object v0, p0, Lbx;->a:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    check-cast v0, Lbz;

    iget-object p1, v0, Lbz;->e:Lbkb;

    invoke-virtual {p1}, Lbkb;->x()V

    return-void

    nop

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
