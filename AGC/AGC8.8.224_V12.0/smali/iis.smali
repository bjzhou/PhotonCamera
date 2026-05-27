.class public final Liis;
.super Ljava/lang/Object;

# interfaces
.implements Lijk;


# instance fields
.field private final a:Loiw;

.field private final synthetic b:I

.field private final c:Ljava/lang/Object;

.field private final d:Ljava/lang/Object;

.field private final e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ldfa;Lell;Loiw;Ldhi;I)V
    .locals 0

    iput p5, p0, Liis;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liis;->c:Ljava/lang/Object;

    iput-object p2, p0, Liis;->d:Ljava/lang/Object;

    iput-object p3, p0, Liis;->a:Loiw;

    iput-object p4, p0, Liis;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lhws;Loiw;Landroid/content/Context;Lcdi;I)V
    .locals 0

    iput p5, p0, Liis;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liis;->d:Ljava/lang/Object;

    iput-object p2, p0, Liis;->a:Loiw;

    iput-object p3, p0, Liis;->c:Ljava/lang/Object;

    iput-object p4, p0, Liis;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lhxb;Lhxb;Loiw;Ldhi;I)V
    .locals 0

    iput p5, p0, Liis;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liis;->e:Ljava/lang/Object;

    iput-object p2, p0, Liis;->d:Ljava/lang/Object;

    iput-object p3, p0, Liis;->a:Loiw;

    iput-object p4, p0, Liis;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Loiw;Lcdi;Lgzm;Ljuh;I)V
    .locals 0

    iput p5, p0, Liis;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liis;->a:Loiw;

    iput-object p2, p0, Liis;->c:Ljava/lang/Object;

    sget-object p1, Lgzd;->d:Lgzs;

    invoke-interface {p3, p1}, Lgzm;->a(Lgzb;)Ljvs;

    move-result-object p1

    iput-object p1, p0, Liis;->d:Ljava/lang/Object;

    iput-object p4, p0, Liis;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    iget v0, p0, Liis;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Liis;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldja;

    iget-object v0, v0, Ldja;->a:Ljava/lang/Object;

    check-cast v0, Ljew;

    const v1, 0x7f0b0179

    invoke-virtual {v0, v1}, Ljew;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/ui/gridlines/GridLinesUi;

    iget-object v1, p0, Liis;->c:Ljava/lang/Object;

    check-cast v1, Lcdi;

    invoke-virtual {v1}, Lcdi;->i()Ljuf;

    move-result-object v1

    iget-object v2, p0, Liis;->d:Ljava/lang/Object;

    new-instance v3, Lfnb;

    const/4 v4, 0x3

    invoke-direct {v3, v0, v4}, Lfnb;-><init>(Lcom/google/android/apps/camera/ui/gridlines/GridLinesUi;I)V

    iget-object v0, p0, Liis;->e:Ljava/lang/Object;

    invoke-interface {v2, v3, v0}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljuf;->d(Lkad;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Liis;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldja;

    iget-object v0, v0, Ldja;->a:Ljava/lang/Object;

    check-cast v0, Ljew;

    const v1, 0x7f0b0135

    invoke-virtual {v0, v1}, Ljew;->f(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;

    const v2, 0x7f0b01e9

    invoke-virtual {v0, v2}, Ljew;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;

    iget-object v2, p0, Liis;->c:Ljava/lang/Object;

    sget-object v3, Ldhv;->o:Ldhj;

    invoke-interface {v2, v3}, Ldhi;->l(Ldhj;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Liis;->d:Ljava/lang/Object;

    invoke-interface {v2, v0}, Lhxb;->i(Landroid/widget/LinearLayout;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Liis;->d:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lhxb;->i(Landroid/widget/LinearLayout;)V

    :goto_0
    iget-object v0, p0, Liis;->e:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lhxb;->i(Landroid/widget/LinearLayout;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Liis;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldja;

    iget-object v0, v0, Ldja;->a:Ljava/lang/Object;

    check-cast v0, Ljew;

    const v1, 0x7f0b00d8

    invoke-virtual {v0, v1}, Ljew;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/coach/CameraCoachHudView;

    iget-object v1, p0, Liis;->e:Ljava/lang/Object;

    sget-object v2, Ldgv;->r:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->l(Ldhj;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->d:Lmqp;

    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->d:Lmqp;

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldfq;

    iput-boolean v2, v1, Ldfq;->j:Z

    :cond_1
    iget-object v1, p0, Liis;->e:Ljava/lang/Object;

    sget-object v3, Ldgv;->a:Ldhk;

    invoke-interface {v1, v3}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object v1

    new-instance v3, Licl;

    const/4 v4, 0x5

    invoke-direct {v3, v0, v4}, Licl;-><init>(Lcom/google/android/apps/camera/coach/CameraCoachHudView;I)V

    invoke-virtual {v1, v3}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v1, p0, Liis;->e:Ljava/lang/Object;

    sget-object v3, Ldgv;->p:Ldhj;

    invoke-interface {v1, v3}, Ldhi;->l(Ldhj;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->b:Lmqp;

    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->b:Lmqp;

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldfz;

    iput-boolean v2, v1, Ldfz;->i:Z

    :cond_2
    iget-object v1, p0, Liis;->c:Ljava/lang/Object;

    iget-object v2, p0, Liis;->d:Ljava/lang/Object;

    check-cast v1, Ldfa;

    iget-object v3, v1, Ldfa;->f:Ljava/lang/Object;

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    move-object v4, v3

    check-cast v4, Ldfb;

    iput-object v0, v4, Ldfb;->e:Lmqp;

    iget-object v0, v4, Ldfb;->a:Lgft;

    iget-object v5, v4, Ldfb;->f:Lcdi;

    invoke-interface {v0, v3}, Lgft;->g(Lknx;)V

    invoke-virtual {v5}, Lcdi;->i()Ljuf;

    move-result-object v3

    new-instance v6, Lchq;

    const/16 v7, 0xc

    invoke-direct {v6, v4, v0, v7}, Lchq;-><init>(Ldfb;Lgft;I)V

    invoke-virtual {v3, v6}, Ljuf;->d(Lkad;)V

    invoke-virtual {v5}, Lcdi;->i()Ljuf;

    move-result-object v3

    new-instance v5, Lchq;

    const/16 v6, 0xd

    invoke-direct {v5, v4, v0, v6}, Lchq;-><init>(Ldfb;Lgft;I)V

    invoke-virtual {v3, v5}, Ljuf;->d(Lkad;)V

    iget-object v3, v4, Ldfb;->e:Lmqp;

    invoke-virtual {v3}, Lmqp;->g()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v4, Ldfb;->e:Lmqp;

    invoke-virtual {v3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/camera/coach/CameraCoachHudView;

    invoke-interface {v0}, Lgft;->c()Lkab;

    move-result-object v0

    iget v0, v0, Lkab;->e:I

    int-to-float v0, v0

    iput v0, v3, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->a:F

    :cond_3
    iget-object v0, v4, Ldfb;->f:Lcdi;

    invoke-virtual {v0}, Lcdi;->i()Ljuf;

    move-result-object v0

    iget-object v3, v4, Ldfb;->b:Ljvs;

    new-instance v5, Lcze;

    invoke-direct {v5, v4, v6}, Lcze;-><init>(Ldfb;I)V

    sget-object v4, Ljuh;->a:Ljui;

    invoke-interface {v3, v5, v4}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljuf;->d(Lkad;)V

    iget-object v0, v1, Ldfa;->a:Ljava/lang/Object;

    iget-object v3, v1, Ldfa;->f:Ljava/lang/Object;

    invoke-static {v2}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v4

    check-cast v0, Ldfv;

    iput-object v4, v0, Ldfv;->h:Lmqp;

    invoke-static {v3}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v3

    iput-object v3, v0, Ldfv;->g:Lmqp;

    iget-object v0, v1, Ldfa;->b:Ljava/lang/Object;

    iget-object v3, v1, Ldfa;->f:Ljava/lang/Object;

    invoke-static {v2}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v4

    check-cast v0, Ldgh;

    iput-object v4, v0, Ldgh;->e:Lmqp;

    invoke-static {v3}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v3

    iput-object v3, v0, Ldgh;->f:Lmqp;

    iget-object v0, v1, Ldfa;->c:Ljava/lang/Object;

    iget-object v3, v1, Ldfa;->d:Ljava/lang/Object;

    invoke-static {v3}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v3

    check-cast v0, Ldgb;

    iput-object v3, v0, Ldgb;->h:Lmqp;

    iget-object v0, v1, Ldfa;->e:Ljava/lang/Object;

    iget-object v1, v1, Ldfa;->f:Ljava/lang/Object;

    invoke-static {v2}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v2

    check-cast v0, Ldfo;

    iput-object v2, v0, Ldfo;->j:Lmqp;

    invoke-static {v1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v1

    iput-object v1, v0, Ldfo;->k:Lmqp;

    return-void

    :pswitch_2
    iget-object v0, p0, Liis;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldja;

    iget-object v0, v0, Ldja;->a:Ljava/lang/Object;

    check-cast v0, Ljew;

    const v1, 0x7f0b00fb

    invoke-virtual {v0, v1}, Ljew;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;

    iget-object v1, p0, Liis;->d:Ljava/lang/Object;

    iget-object v2, p0, Liis;->c:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    invoke-interface {v1, v0, v2}, Lhws;->e(Landroid/view/View;Landroid/content/Context;)V

    iget-object v0, p0, Liis;->e:Ljava/lang/Object;

    check-cast v0, Lcdi;

    invoke-virtual {v0}, Lcdi;->i()Ljuf;

    move-result-object v0

    iget-object v1, p0, Liis;->d:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljuf;->d(Lkad;)V

    iget-object v0, p0, Liis;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldja;

    iget-object v0, v0, Ldja;->a:Ljava/lang/Object;

    check-cast v0, Ljew;

    const v1, 0x7f0b0053

    invoke-virtual {v0, v1}, Ljew;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;

    iget-object v1, p0, Liis;->d:Ljava/lang/Object;

    sget-object v2, Lhyh;->b:Lhyh;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->d(Lhyi;Lhyh;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
