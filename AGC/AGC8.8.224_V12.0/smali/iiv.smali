.class public final Liiv;
.super Ljava/lang/Object;

# interfaces
.implements Lijk;


# instance fields
.field private final a:Lmqp;

.field private final b:Loiw;

.field private final synthetic c:I

.field private final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lmqp;Lhxt;Loiw;I)V
    .locals 0

    iput p4, p0, Liiv;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liiv;->a:Lmqp;

    iput-object p2, p0, Liiv;->d:Ljava/lang/Object;

    iput-object p3, p0, Liiv;->b:Loiw;

    return-void
.end method

.method public constructor <init>(Lmqp;Loiw;Landroid/content/Context;I)V
    .locals 0

    iput p4, p0, Liiv;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liiv;->a:Lmqp;

    iput-object p2, p0, Liiv;->b:Loiw;

    iput-object p3, p0, Liiv;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget v0, p0, Liiv;->c:I

    const v1, 0x7f0b0162

    const v2, 0x7f0b0053

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Liiv;->b:Loiw;

    check-cast v0, Lihj;

    invoke-virtual {v0}, Lihj;->a()Lihg;

    move-result-object v0

    iget-object v1, v0, Lihg;->q:Ljava/lang/Object;

    iget-object v0, v0, Lihg;->c:Ljava/lang/Object;

    iget-object v2, p0, Liiv;->a:Lmqp;

    invoke-virtual {v2}, Lmqp;->g()Z

    move-result v2

    if-eqz v2, :cond_3

    check-cast v1, Ljew;

    const v2, 0x7f0b01c5

    invoke-virtual {v1, v2}, Ljew;->f(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iget-object v3, p0, Liiv;->a:Lmqp;

    invoke-virtual {v3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Leqi;

    invoke-interface {v3, v2}, Leqi;->c(Landroid/view/ViewStub;)V

    iget-object v2, p0, Liiv;->a:Lmqp;

    move-object v3, v0

    check-cast v3, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;

    iput-object v2, v3, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->m:Lmqp;

    invoke-virtual {v3}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->a()Lhys;

    move-result-object v2

    iget-object v2, v2, Lhys;->i:Lhyn;

    invoke-virtual {v3}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->a()Lhys;

    move-result-object v4

    iget-object v4, v4, Lhys;->g:Liko;

    invoke-virtual {v3, v2, v4}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->m(Lhyn;Liko;)V

    const v2, 0x7f0b018a

    invoke-virtual {v1, v2}, Ljew;->f(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    sget-object v2, Lhyh;->a:Lhyh;

    goto/16 :goto_0

    :pswitch_0
    iget-object v0, p0, Liiv;->a:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Liiv;->b:Loiw;

    check-cast v0, Lihj;

    invoke-virtual {v0}, Lihj;->a()Lihg;

    move-result-object v0

    iget-object v0, v0, Lihg;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

    iget-object v1, p0, Liiv;->a:Lmqp;

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhms;

    iget-object v2, p0, Liiv;->d:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    invoke-interface {v1, v0, v2}, Lhms;->k(Landroid/view/View;Landroid/content/Context;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Liiv;->a:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Liiv;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldja;

    iget-object v0, v0, Ldja;->a:Ljava/lang/Object;

    check-cast v0, Ljew;

    const v1, 0x7f0b0076

    invoke-virtual {v0, v1}, Ljew;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iget-object v1, p0, Liiv;->a:Lmqp;

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lckq;

    iget-object v3, p0, Liiv;->d:Ljava/lang/Object;

    check-cast v3, Landroid/content/Context;

    invoke-interface {v1, v0, v3}, Lckq;->l(Landroid/view/ViewStub;Landroid/content/Context;)V

    iget-object v0, p0, Liiv;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldja;

    iget-object v0, v0, Ldja;->a:Ljava/lang/Object;

    check-cast v0, Ljew;

    invoke-virtual {v0, v2}, Ljew;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;

    iget-object v1, p0, Liiv;->a:Lmqp;

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhyi;

    sget-object v2, Lhyh;->b:Lhyh;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->d(Lhyi;Lhyh;)V

    :cond_1
    return-void

    :pswitch_2
    iget-object v0, p0, Liiv;->a:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Liiv;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldja;

    iget-object v0, v0, Ldja;->a:Ljava/lang/Object;

    check-cast v0, Ljew;

    invoke-virtual {v0, v2}, Ljew;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

    iget-object v1, p0, Liiv;->a:Lmqp;

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhms;

    iget-object v2, p0, Liiv;->d:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    invoke-interface {v1, v0, v2}, Lhms;->k(Landroid/view/View;Landroid/content/Context;)V

    return-void

    :cond_3
    check-cast v1, Ljew;

    const v2, 0x7f0b018b

    invoke-virtual {v1, v2}, Ljew;->f(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    sget-object v2, Lhyh;->b:Lhyh;

    :goto_0
    iget-object v3, p0, Liiv;->d:Ljava/lang/Object;

    check-cast v3, Lhxt;

    invoke-virtual {v3, v1}, Lhxt;->c(Landroid/view/ViewStub;)V

    iget-object v1, p0, Liiv;->d:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->d(Lhyi;Lhyh;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
