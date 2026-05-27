.class public final Lifi;
.super Ljava/lang/Object;

# interfaces
.implements Liff;


# static fields
.field private static final g:Lmvv;


# instance fields
.field public final a:Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/util/List;

.field d:Z

.field e:Z

.field public final f:Lijx;

.field private final h:Landroid/os/Handler;

.field private final i:Lmqp;

.field private final j:Life;

.field private final k:Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;

.field private l:Lika;

.field private final m:Litm;

.field private final n:Logd;

.field private o:Liem;

.field private final p:Lifj;

.field private final q:Ljew;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lika;->r:Lika;

    sget-object v1, Lika;->p:Lika;

    sget-object v2, Lika;->k:Lika;

    invoke-static {v0, v1, v2}, Lmvv;->n(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmvv;

    move-result-object v0

    sput-object v0, Lifi;->g:Lmvv;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;Landroid/os/Handler;Lmqp;Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;Lijx;Litm;Logd;Ljew;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p9, Lika;->b:Lika;

    iput-object p9, p0, Lifi;->l:Lika;

    new-instance p9, Lifg;

    invoke-direct {p9, p0}, Lifg;-><init>(Lifi;)V

    iput-object p9, p0, Lifi;->p:Lifj;

    iput-object p1, p0, Lifi;->a:Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;

    iput-object p2, p0, Lifi;->h:Landroid/os/Handler;

    iput-object p3, p0, Lifi;->i:Lmqp;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->getMode()Liem;

    move-result-object p2

    iput-object p2, p0, Lifi;->o:Liem;

    iput-object p7, p0, Lifi;->n:Logd;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lifi;->c:Ljava/util/List;

    new-instance p3, Ljava/lang/Object;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lifi;->b:Ljava/lang/Object;

    new-instance p7, Life;

    invoke-direct {p7, p1}, Life;-><init>(Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;)V

    iput-object p7, p0, Lifi;->j:Life;

    iput-object p4, p0, Lifi;->k:Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;

    iput-object p5, p0, Lifi;->f:Lijx;

    iput-object p6, p0, Lifi;->m:Litm;

    iput-object p8, p0, Lifi;->q:Ljew;

    invoke-virtual {p1, p9}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->setListener(Lifj;)V

    new-instance p4, Lifh;

    invoke-direct {p4, p0}, Lifh;-><init>(Lifi;)V

    invoke-virtual {p0, p4}, Lifi;->e(Lifj;)Lkad;

    monitor-enter p3

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->isEnabled()Z

    move-result p4

    iput-boolean p4, p0, Lifi;->d:Z

    invoke-virtual {p1}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->isClickEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lifi;->e:Z

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const-string p1, "Expect only the pressedStateAnimation listener at this stage."

    invoke-static {p2, p1}, Lmoz;->q(ZLjava/lang/Object;)V

    monitor-exit p3

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private final ar(Liem;)V
    .locals 1

    sget-object v0, Liem;->a:Liem;

    sget-object v0, Lika;->a:Lika;

    invoke-virtual {p1}, Liem;->ordinal()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    return-void

    :sswitch_0
    iput-object p1, p0, Lifi;->o:Liem;

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_0
        0x4 -> :sswitch_0
        0xd -> :sswitch_0
        0x10 -> :sswitch_0
        0x13 -> :sswitch_0
        0x1a -> :sswitch_0
    .end sparse-switch
.end method

.method private final as(Liem;)V
    .locals 2

    invoke-direct {p0, p1}, Lifi;->ar(Liem;)V

    iget-object v0, p0, Lifi;->a:Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;

    iget-object v1, p0, Lifi;->j:Life;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->setMode(Liem;Life;)V

    iget-object v0, p0, Lifi;->i:Lmqp;

    check-cast v0, Lmqt;

    iget-object v0, v0, Lmqt;->a:Ljava/lang/Object;

    check-cast v0, Lifs;

    invoke-interface {v0, p1}, Lifs;->b(Liem;)V

    iget-object v0, p0, Lifi;->n:Logd;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Liem;->name()Ljava/lang/String;

    move-result-object p1

    const-string v0, "IDLE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    iget-object v0, p0, Lifi;->n:Logd;

    invoke-interface {v0}, Logd;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lipk;

    invoke-interface {v0, p1}, Lipk;->k(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final A(Z)V
    .locals 1

    iget-object v0, p0, Lifi;->a:Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->setEnableLongPressMotion(Z)V

    return-void
.end method

.method public final B(Liek;)V
    .locals 1

    iget-object v0, p0, Lifi;->a:Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->setLongPressMotionListener(Liek;)V

    return-void
.end method

.method public final C(I)V
    .locals 4

    iget-object v0, p0, Lifi;->k:Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->b(IJZ)V

    return-void
.end method

.method public final D(IJZ)V
    .locals 1

    iget-object v0, p0, Lifi;->k:Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->b(IJZ)V

    return-void
.end method

.method public final E(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lifi;->am(ZZ)V

    return-void
.end method

.method public final F()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v0}, Lifi;->an(ZZZ)V

    return-void
.end method

.method public final G(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v0}, Lifi;->an(ZZZ)V

    return-void
.end method

.method public final H()V
    .locals 1

    sget-object v0, Liem;->K:Liem;

    invoke-direct {p0, v0}, Lifi;->as(Liem;)V

    return-void
.end method

.method public final I()V
    .locals 1

    sget-object v0, Liem;->g:Liem;

    invoke-direct {p0, v0}, Lifi;->as(Liem;)V

    return-void
.end method

.method public final J()V
    .locals 1

    sget-object v0, Liem;->f:Liem;

    invoke-direct {p0, v0}, Lifi;->as(Liem;)V

    return-void
.end method

.method public final K()V
    .locals 1

    invoke-virtual {p0}, Lifi;->aq()V

    sget-object v0, Liem;->m:Liem;

    invoke-direct {p0, v0}, Lifi;->as(Liem;)V

    return-void
.end method

.method public final L()V
    .locals 1

    sget-object v0, Liem;->x:Liem;

    invoke-direct {p0, v0}, Lifi;->as(Liem;)V

    return-void
.end method

.method public final M()V
    .locals 1

    sget-object v0, Liem;->w:Liem;

    invoke-direct {p0, v0}, Lifi;->as(Liem;)V

    return-void
.end method

.method public final N()V
    .locals 1

    sget-object v0, Liem;->v:Liem;

    invoke-direct {p0, v0}, Lifi;->as(Liem;)V

    return-void
.end method

.method public final O()V
    .locals 1

    sget-object v0, Liem;->H:Liem;

    invoke-direct {p0, v0}, Lifi;->as(Liem;)V

    return-void
.end method

.method public final P()V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lifi;->G(Z)V

    iget-object v1, p0, Lifi;->m:Litm;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Litm;->I(Z)V

    :cond_0
    sget-object v0, Liem;->I:Liem;

    invoke-direct {p0, v0}, Lifi;->as(Liem;)V

    return-void
.end method

.method public final Q()V
    .locals 1

    sget-object v0, Liem;->C:Liem;

    invoke-direct {p0, v0}, Lifi;->as(Liem;)V

    return-void
.end method

.method public final R()V
    .locals 1

    sget-object v0, Liem;->i:Liem;

    invoke-direct {p0, v0}, Lifi;->as(Liem;)V

    return-void
.end method

.method public final S()V
    .locals 1

    sget-object v0, Liem;->j:Liem;

    invoke-direct {p0, v0}, Lifi;->as(Liem;)V

    return-void
.end method

.method public final T()V
    .locals 1

    sget-object v0, Liem;->p:Liem;

    invoke-direct {p0, v0}, Lifi;->as(Liem;)V

    return-void
.end method

.method public final U()V
    .locals 1

    sget-object v0, Liem;->s:Liem;

    invoke-direct {p0, v0}, Lifi;->as(Liem;)V

    return-void
.end method

.method public final V()V
    .locals 1

    sget-object v0, Liem;->f:Liem;

    invoke-direct {p0, v0}, Lifi;->as(Liem;)V

    return-void
.end method

.method public final W()V
    .locals 1

    sget-object v0, Liem;->E:Liem;

    invoke-direct {p0, v0}, Lifi;->as(Liem;)V

    iget-object v0, p0, Lifi;->a:Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->startTimelapseCircleAnimation()V

    return-void
.end method

.method public final X()V
    .locals 1

    sget-object v0, Liem;->k:Liem;

    invoke-direct {p0, v0}, Lifi;->as(Liem;)V

    return-void
.end method

.method public final Y()V
    .locals 1

    sget-object v0, Liem;->J:Liem;

    invoke-direct {p0, v0}, Lifi;->as(Liem;)V

    return-void
.end method

.method public final Z()V
    .locals 1

    iget-object v0, p0, Lifi;->o:Liem;

    invoke-direct {p0, v0}, Lifi;->as(Liem;)V

    iget-object v0, p0, Lifi;->n:Logd;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Logd;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lipk;

    invoke-interface {v0}, Lipk;->b()V

    :cond_0
    return-void
.end method

.method public final a(Lklv;)Lnou;
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lifi;->E(Z)V

    const/4 p1, 0x0

    invoke-static {p1}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object p1

    return-object p1
.end method

.method public final aa()V
    .locals 1

    sget-object v0, Liem;->e:Liem;

    invoke-direct {p0, v0}, Lifi;->as(Liem;)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lifi;->al(F)V

    return-void
.end method

.method public final ab()V
    .locals 2

    invoke-virtual {p0}, Lifi;->ap()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lifi;->a:Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->setPressed(Z)V

    :cond_0
    sget-object v0, Liem;->a:Liem;

    invoke-direct {p0, v0}, Lifi;->as(Liem;)V

    return-void
.end method

.method public final ac()V
    .locals 2

    invoke-virtual {p0}, Lifi;->ap()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lifi;->a:Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->setPressed(Z)V

    :cond_0
    sget-object v0, Liem;->a:Liem;

    invoke-direct {p0, v0}, Lifi;->as(Liem;)V

    return-void
.end method

.method public final ad()V
    .locals 2

    iget-object v0, p0, Lifi;->l:Lika;

    sget-object v1, Lika;->t:Lika;

    if-ne v0, v1, :cond_0

    sget-object v0, Liem;->M:Liem;

    invoke-direct {p0, v0}, Lifi;->as(Liem;)V

    goto :goto_0

    :cond_0
    sget-object v0, Liem;->e:Liem;

    invoke-direct {p0, v0}, Lifi;->as(Liem;)V

    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lifi;->al(F)V

    return-void
.end method

.method public final ae()V
    .locals 1

    sget-object v0, Liem;->G:Liem;

    invoke-direct {p0, v0}, Lifi;->as(Liem;)V

    iget-object v0, p0, Lifi;->a:Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->stopTimelapseCircleAnimation()V

    return-void
.end method

.method public final af(Lika;)V
    .locals 2

    iget-object v0, p0, Lifi;->a:Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->setApplicationMode(Lika;)V

    sget-object v0, Liem;->a:Liem;

    sget-object v0, Lika;->a:Lika;

    invoke-virtual {p1}, Lika;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    :pswitch_1
    sget-object v0, Liem;->M:Liem;

    invoke-direct {p0, v0}, Lifi;->as(Liem;)V

    goto :goto_1

    :pswitch_2
    sget-object v0, Liem;->D:Liem;

    invoke-direct {p0, v0}, Lifi;->as(Liem;)V

    goto :goto_1

    :pswitch_3
    sget-object v0, Liem;->t:Liem;

    invoke-direct {p0, v0}, Lifi;->as(Liem;)V

    goto :goto_1

    :pswitch_4
    sget-object v0, Liem;->A:Liem;

    invoke-direct {p0, v0}, Lifi;->as(Liem;)V

    goto :goto_1

    :pswitch_5
    sget-object v0, Liem;->a:Liem;

    invoke-direct {p0, v0}, Lifi;->as(Liem;)V

    goto :goto_1

    :pswitch_6
    sget-object v0, Liem;->c:Liem;

    invoke-direct {p0, v0}, Lifi;->as(Liem;)V

    goto :goto_1

    :pswitch_7
    sget-object v0, Liem;->L:Liem;

    invoke-direct {p0, v0}, Lifi;->as(Liem;)V

    goto :goto_1

    :pswitch_8
    sget-object v0, Liem;->l:Liem;

    invoke-direct {p0, v0}, Lifi;->as(Liem;)V

    goto :goto_1

    :pswitch_9
    sget-object v0, Liem;->e:Liem;

    invoke-direct {p0, v0}, Lifi;->as(Liem;)V

    goto :goto_1

    :pswitch_a
    iget-object v0, p0, Lifi;->a:Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->getCurrentSpec()Lifr;

    move-result-object v0

    iget-object v0, v0, Lifr;->w:Lgyu;

    sget-object v1, Lgyu;->d:Lgyu;

    if-ne v0, v1, :cond_0

    sget-object v0, Liem;->J:Liem;

    goto :goto_0

    :cond_0
    sget-object v0, Liem;->a:Liem;

    :goto_0
    invoke-direct {p0, v0}, Lifi;->as(Liem;)V

    iget-object v0, p0, Lifi;->i:Lmqp;

    check-cast v0, Lmqt;

    iget-object v0, v0, Lmqt;->a:Ljava/lang/Object;

    check-cast v0, Lifs;

    invoke-interface {v0}, Lifs;->d()V

    goto :goto_1

    :pswitch_b
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Unsupported mode "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_1
    iput-object p1, p0, Lifi;->l:Lika;

    sget-object v0, Lifi;->g:Lmvv;

    invoke-virtual {v0, p1}, Lmvv;->contains(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eq v0, p1, :cond_1

    const/4 p1, 0x0

    goto :goto_2

    :cond_1
    const/4 p1, 0x4

    :goto_2
    iget-object v0, p0, Lifi;->a:Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->getVisibility()I

    move-result v0

    if-ne p1, v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lifi;->a:Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;

    invoke-static {p1, v0}, Limz;->a(ILandroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_9
        :pswitch_6
        :pswitch_5
        :pswitch_9
        :pswitch_b
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_b
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_b
        :pswitch_1
    .end packed-switch
.end method

.method public final ag()V
    .locals 1

    invoke-virtual {p0}, Lifi;->aq()V

    sget-object v0, Liem;->j:Liem;

    invoke-direct {p0, v0}, Lifi;->as(Liem;)V

    return-void
.end method

.method public final ah()V
    .locals 1

    sget-object v0, Liem;->D:Liem;

    invoke-direct {p0, v0}, Lifi;->as(Liem;)V

    return-void
.end method

.method public final ai(Lgyu;)V
    .locals 3

    iget-object v0, p0, Lifi;->a:Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->getCurrentSpec()Lifr;

    move-result-object v0

    iget-object v0, v0, Lifr;->v:Liem;

    invoke-direct {p0, v0}, Lifi;->ar(Liem;)V

    sget-object v1, Liem;->a:Liem;

    sget-object v1, Lika;->a:Lika;

    invoke-virtual {v0}, Liem;->ordinal()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    return-void

    :sswitch_0
    iget-object v1, p0, Lifi;->a:Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;

    iget-object v2, p0, Lifi;->j:Life;

    invoke-virtual {v1, v0, p1, v2}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->setMode(Liem;Lgyu;Life;)V

    return-void

    :sswitch_1
    sget-object v0, Lgyu;->d:Lgyu;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lifi;->a:Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;

    sget-object v1, Liem;->J:Liem;

    iget-object v2, p0, Lifi;->j:Life;

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->setMode(Liem;Lgyu;Life;)V

    return-void

    :cond_0
    iget-object v0, p0, Lifi;->a:Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;

    sget-object v1, Liem;->a:Liem;

    iget-object v2, p0, Lifi;->j:Life;

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->setMode(Liem;Lgyu;Life;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_0
        0xd -> :sswitch_0
        0x10 -> :sswitch_0
        0x13 -> :sswitch_0
        0x18 -> :sswitch_0
        0x1a -> :sswitch_0
        0x23 -> :sswitch_1
    .end sparse-switch
.end method

.method public final aj()V
    .locals 1

    sget-object v0, Liem;->j:Liem;

    invoke-direct {p0, v0}, Lifi;->as(Liem;)V

    return-void
.end method

.method public final ak()V
    .locals 1

    iget-object v0, p0, Lifi;->a:Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->updateTimelapseProgressState()V

    return-void
.end method

.method final al(F)V
    .locals 1

    iget-object v0, p0, Lifi;->a:Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->animateToScale(F)V

    return-void
.end method

.method public final am(ZZ)V
    .locals 3

    iget-object v0, p0, Lifi;->b:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p2, :cond_0

    :try_start_0
    iput-boolean p1, p0, Lifi;->e:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    const/4 p2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lifi;->ao()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    :goto_1
    iget-object p1, p0, Lifi;->h:Landroid/os/Handler;

    new-instance v1, Lbnd;

    const/16 v2, 0x12

    invoke-direct {v1, p0, p2, v2}, Lbnd;-><init>(Lifi;ZI)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final an(ZZZ)V
    .locals 3

    iget-object v0, p0, Lifi;->b:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p2, :cond_0

    :try_start_0
    iput-boolean p1, p0, Lifi;->d:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    const/4 p2, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lifi;->ao()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    :goto_1
    iget-object p1, p0, Lifi;->h:Landroid/os/Handler;

    new-instance v2, Liqr;

    invoke-direct {v2, p0, v1, p3, p2}, Liqr;-><init>(Lifi;ZZI)V

    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final ao()Z
    .locals 3

    iget-object v0, p0, Lifi;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lifi;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final ap()Z
    .locals 1

    iget-object v0, p0, Lifi;->q:Ljew;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljew;->M()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final aq()V
    .locals 2

    iget-object v0, p0, Lifi;->a:Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->setEnabled(Z)V

    return-void
.end method

.method public final b()Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;
    .locals 1

    iget-object v0, p0, Lifi;->a:Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;

    return-object v0
.end method

.method public final c()Lkad;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v0, v1}, Lifi;->an(ZZZ)V

    new-instance v0, Lhbq;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Lhbq;-><init>(Lifi;I)V

    return-object v0
.end method

.method public final synthetic d()Lkad;
    .locals 2

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Liff;->E(Z)V

    new-instance v0, Lhbq;

    const/16 v1, 0xf

    invoke-direct {v0, p0, v1}, Lhbq;-><init>(Liff;I)V

    return-object v0
.end method

.method public final e(Lifj;)Lkad;
    .locals 4

    iget-object v0, p0, Lifi;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lifi;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lifi;->ao()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lifi;->d:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lifi;->an(ZZZ)V

    iget-boolean v1, p0, Lifi;->e:Z

    invoke-virtual {p0, v1, v2}, Lifi;->am(ZZ)V

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lgss;

    const/16 v1, 0x14

    invoke-direct {v0, p0, p1, v1}, Lgss;-><init>(Lifi;Lifj;I)V

    return-object v0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final f()V
    .locals 1

    sget-object v0, Liem;->L:Liem;

    invoke-direct {p0, v0}, Lifi;->as(Liem;)V

    return-void
.end method

.method public final g()V
    .locals 1

    sget-object v0, Liem;->y:Liem;

    invoke-direct {p0, v0}, Lifi;->as(Liem;)V

    return-void
.end method

.method public final h()V
    .locals 1

    sget-object v0, Liem;->n:Liem;

    invoke-direct {p0, v0}, Lifi;->as(Liem;)V

    return-void
.end method

.method public final i()V
    .locals 1

    sget-object v0, Liem;->q:Liem;

    invoke-direct {p0, v0}, Lifi;->as(Liem;)V

    return-void
.end method

.method public final j()V
    .locals 1

    sget-object v0, Liem;->t:Liem;

    invoke-direct {p0, v0}, Lifi;->as(Liem;)V

    iget-object v0, p0, Lifi;->n:Logd;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Logd;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lipk;

    invoke-interface {v0}, Lipk;->c()V

    :cond_0
    return-void
.end method

.method public final k()V
    .locals 1

    sget-object v0, Liem;->l:Liem;

    invoke-direct {p0, v0}, Lifi;->as(Liem;)V

    return-void
.end method

.method public final l()V
    .locals 1

    sget-object v0, Liem;->t:Liem;

    invoke-direct {p0, v0}, Lifi;->as(Liem;)V

    return-void
.end method

.method public final m()V
    .locals 1

    sget-object v0, Liem;->A:Liem;

    invoke-direct {p0, v0}, Lifi;->as(Liem;)V

    return-void
.end method

.method public final n()V
    .locals 1

    sget-object v0, Liem;->L:Liem;

    invoke-direct {p0, v0}, Lifi;->as(Liem;)V

    return-void
.end method

.method public final o()V
    .locals 1

    sget-object v0, Liem;->n:Liem;

    invoke-direct {p0, v0}, Lifi;->as(Liem;)V

    return-void
.end method

.method public final p()V
    .locals 1

    sget-object v0, Liem;->q:Liem;

    invoke-direct {p0, v0}, Lifi;->as(Liem;)V

    return-void
.end method

.method public final q()V
    .locals 3

    iget-object v0, p0, Lifi;->k:Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;

    iget-object v1, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->i:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->i:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    iget-object v1, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->j:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->j:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->a()V

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->b:I

    const/4 v2, 0x0

    iput v2, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->c:F

    iput-boolean v1, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->h:Z

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->g:Z

    iput v1, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->k:I

    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->invalidate()V

    return-void
.end method

.method public final r()V
    .locals 1

    const v0, 0x3f4ccccd    # 0.8f

    invoke-virtual {p0, v0}, Lifi;->al(F)V

    return-void
.end method

.method public final s()V
    .locals 1

    const v0, 0x3f4ccccd    # 0.8f

    invoke-virtual {p0, v0}, Lifi;->al(F)V

    iget-object v0, p0, Lifi;->a:Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->pauseTimelapseAnimationState()V

    return-void
.end method

.method public final t()V
    .locals 1

    iget-object v0, p0, Lifi;->a:Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->performClick()Z

    return-void
.end method

.method public final u()V
    .locals 1

    iget-object v0, p0, Lifi;->a:Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->performShutterButtonDown()V

    return-void
.end method

.method public final v()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lifi;->al(F)V

    return-void
.end method

.method public final w()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lifi;->al(F)V

    iget-object v0, p0, Lifi;->a:Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->resumeTimelapseAnimationState()V

    return-void
.end method

.method public final x()V
    .locals 1

    sget-object v0, Liem;->a:Liem;

    invoke-direct {p0, v0}, Lifi;->as(Liem;)V

    return-void
.end method

.method public final y()V
    .locals 1

    sget-object v0, Liem;->e:Liem;

    invoke-direct {p0, v0}, Lifi;->as(Liem;)V

    return-void
.end method

.method public final z(Z)V
    .locals 2

    iget-object v0, p0, Lifi;->a:Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;

    iget-object v1, p0, Lifi;->j:Life;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->runPressedStateAnimation(ZLife;)V

    return-void
.end method
