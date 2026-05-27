.class public final synthetic Lhml;
.super Ljava/lang/Object;

# interfaces
.implements Lkai;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lgeh;I)V
    .locals 0

    iput p2, p0, Lhml;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhml;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhmm;I)V
    .locals 0

    iput p2, p0, Lhml;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhml;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhos;I)V
    .locals 0

    iput p2, p0, Lhml;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhml;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhrq;I)V
    .locals 0

    iput p2, p0, Lhml;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhml;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhrz;I)V
    .locals 0

    iput p2, p0, Lhml;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhml;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhxe;I)V
    .locals 0

    iput p2, p0, Lhml;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhml;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Libv;I)V
    .locals 0

    iput p2, p0, Lhml;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhml;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Liff;I)V
    .locals 0

    iput p2, p0, Lhml;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhml;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Liit;I)V
    .locals 0

    iput p2, p0, Lhml;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhml;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lken;I)V
    .locals 0

    iput p2, p0, Lhml;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhml;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final bn(Ljava/lang/Object;)V
    .locals 6

    iget v0, p0, Lhml;->b:I

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lhml;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_18

    check-cast v0, Liit;

    iget-object p1, v0, Liit;->d:Ldqx;

    iget-object p1, p1, Ldqx;->d:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljwb;->bn(Ljava/lang/Object;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lhml;->a:Ljava/lang/Object;

    check-cast p1, Lgle;

    iget-boolean v1, p1, Lgle;->b:Z

    if-eqz v1, :cond_3

    iget-boolean p1, p1, Lgle;->a:Z

    if-nez p1, :cond_1

    check-cast v0, Liit;

    iget-object p1, v0, Liit;->a:Ldol;

    sget-object v1, Ldoh;->a:Ldoh;

    invoke-interface {p1, v1}, Ldol;->n(Ldoh;)V

    iget-object p1, v0, Liit;->b:Ldhi;

    sget-object v1, Ldhq;->Y:Ldhj;

    invoke-interface {p1, v1}, Ldhi;->l(Ldhj;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, v0, Liit;->b:Ldhi;

    sget-object v1, Ldhb;->a:Ldhj;

    invoke-interface {p1, v1}, Ldhi;->l(Ldhj;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, v0, Liit;->a:Ldol;

    invoke-interface {p1, v3}, Ldol;->l(Z)V

    :cond_0
    return-void

    :cond_1
    check-cast v0, Liit;

    iget-object p1, v0, Liit;->a:Ldol;

    invoke-interface {p1, v4}, Ldol;->l(Z)V

    iget-object p1, v0, Liit;->b:Ldhi;

    sget-object v1, Ldhb;->a:Ldhj;

    invoke-interface {p1, v1}, Ldhi;->l(Ldhj;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, v0, Liit;->a:Ldol;

    sget-object v0, Ldoh;->a:Ldoh;

    invoke-interface {p1, v0}, Ldol;->n(Ldoh;)V

    return-void

    :cond_2
    iget-object p1, v0, Liit;->a:Ldol;

    sget-object v0, Ldoh;->c:Ldoh;

    invoke-interface {p1, v0}, Ldol;->n(Ldoh;)V

    return-void

    :cond_3
    check-cast v0, Liit;

    iget-object p1, v0, Liit;->a:Ldol;

    invoke-interface {p1, v4}, Ldol;->l(Z)V

    iget-object p1, v0, Liit;->a:Ldol;

    sget-object v0, Ldoh;->a:Ldoh;

    invoke-interface {p1, v0}, Ldol;->n(Ldoh;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lhml;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    check-cast v0, Liit;

    iget-object p1, v0, Liit;->a:Ldol;

    invoke-interface {p1}, Ldol;->k()V

    iget-object p1, v0, Liit;->a:Ldol;

    invoke-interface {p1, v4}, Ldol;->m(Z)V

    :cond_4
    return-void

    :pswitch_2
    iget-object v0, p0, Lhml;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    check-cast v0, Liit;

    iget-object p1, v0, Liit;->c:Licj;

    iget-boolean v0, p1, Licj;->l:Z

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    iput-boolean v4, p1, Licj;->l:Z

    iget-object v0, p1, Licj;->c:Lell;

    iget-object p1, p1, Licj;->j:Licf;

    invoke-interface {v0, p1}, Lell;->d(Lelk;)Lkad;

    return-void

    :cond_6
    :goto_0
    return-void

    :pswitch_3
    iget-object v0, p0, Lhml;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    check-cast v0, Libv;

    iget-object p1, v0, Libv;->d:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    iget-object p1, p1, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->k:Lika;

    invoke-virtual {v0, p1}, Libv;->x(Lika;)V

    return-void

    :pswitch_4
    iget-object v0, p0, Lhml;->a:Ljava/lang/Object;

    check-cast p1, Lhxi;

    check-cast v0, Libv;

    iget-object p1, v0, Libv;->d:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    iget-object p1, p1, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->k:Lika;

    invoke-virtual {v0, p1}, Libv;->x(Lika;)V

    return-void

    :pswitch_5
    iget-object v0, p0, Lhml;->a:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    check-cast v0, Lhxe;

    invoke-virtual {v0}, Lhxe;->j()V

    return-void

    :pswitch_6
    iget-object v0, p0, Lhml;->a:Ljava/lang/Object;

    check-cast p1, Lgyu;

    invoke-interface {v0, p1}, Liff;->ai(Lgyu;)V

    return-void

    :pswitch_7
    iget-object v0, p0, Lhml;->a:Ljava/lang/Object;

    check-cast p1, Lhxi;

    check-cast v0, Lhrz;

    iget-object p1, v0, Lhrz;->d:Lmgf;

    if-eqz p1, :cond_8

    iget-object v1, v0, Lhrz;->c:Ljvs;

    invoke-interface {v1}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhxi;

    iget-object v1, v1, Lhxi;->a:Lhxj;

    sget-object v3, Lhxj;->e:Lhxj;

    invoke-virtual {v1, v3}, Lhxj;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lmgf;->a()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v1

    invoke-virtual {v0}, Lhrz;->c()I

    move-result v0

    iput v0, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e:I

    goto :goto_1

    :cond_7
    invoke-virtual {p1}, Lmgf;->a()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e:I

    invoke-virtual {p1}, Lmgf;->a()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->C(I)V

    :goto_1
    invoke-virtual {p1}, Lmgf;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lff;->dismiss()V

    invoke-virtual {p1}, Lmgf;->show()V

    return-void

    :cond_8
    return-void

    :pswitch_8
    iget-object v0, p0, Lhml;->a:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p1

    sget-object v2, Lfjd;->s:Lfjd;

    invoke-interface {p1, v2}, Lj$/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_a

    new-array p1, v1, [Ljvs;

    check-cast v0, Lhrq;

    iget-object v1, v0, Lhrq;->e:Ldol;

    invoke-interface {v1}, Ldol;->a()Ljvs;

    move-result-object v1

    aput-object v1, p1, v4

    iget-object v1, v0, Lhrq;->e:Ldol;

    invoke-interface {v1}, Ldol;->c()Ljvs;

    move-result-object v1

    aput-object v1, p1, v3

    invoke-static {p1}, Llyh;->E([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v1, v0, Lhrq;->f:Lmqp;

    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, v0, Lhrq;->f:Lmqp;

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lire;

    invoke-interface {v1}, Lire;->b()Ljvs;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lhrq;->f:Lmqp;

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lire;

    invoke-interface {v1}, Lire;->c()Ljvs;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    iget-object v1, v0, Lhrq;->g:Lcdi;

    invoke-virtual {v1}, Lcdi;->i()Ljuf;

    move-result-object v1

    invoke-static {p1}, Ljvw;->a(Ljava/util/Collection;)Ljvs;

    move-result-object p1

    new-instance v2, Lhml;

    const/16 v3, 0xa

    invoke-direct {v2, v0, v3}, Lhml;-><init>(Lhrq;I)V

    sget-object v0, Lnnv;->a:Lnnv;

    invoke-interface {p1, v2, v0}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljuf;->d(Lkad;)V

    :cond_a
    return-void

    :pswitch_9
    iget-object v0, p0, Lhml;->a:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    check-cast v0, Lhrq;

    iget-object v5, v0, Lhrq;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eq v5, v3, :cond_b

    iget-object v5, v0, Lhrq;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_b
    iget-object v3, v0, Lhrq;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v1, :cond_d

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object v2, v0, Lhrq;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eq v2, p1, :cond_c

    iget-object v2, v0, Lhrq;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_c
    iget-object p1, v0, Lhrq;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_d
    iget-object p1, v0, Lhrq;->e:Ldol;

    invoke-virtual {v0}, Lhrq;->a()I

    move-result v1

    invoke-interface {p1, v1}, Ldol;->q(I)V

    iget-object p1, v0, Lhrq;->f:Lmqp;

    invoke-virtual {p1}, Lmqp;->g()Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, v0, Lhrq;->f:Lmqp;

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lire;

    invoke-virtual {v0}, Lhrq;->a()I

    move-result v0

    invoke-interface {p1, v0}, Lire;->j(I)V

    :cond_e
    return-void

    :pswitch_a
    iget-object v0, p0, Lhml;->a:Ljava/lang/Object;

    check-cast p1, Lgyw;

    check-cast v0, Lhos;

    iget-object p1, v0, Lhos;->j:Ljvk;

    iget-object p1, p1, Ljvk;->d:Ljava/lang/Object;

    sget-object v1, Lhnw;->e:Lhnw;

    if-eq p1, v1, :cond_f

    return-void

    :cond_f
    iget-object p1, v0, Lhos;->g:Ldbf;

    iget-object v1, v0, Lhos;->n:Ldhi;

    iget-object v3, v0, Lhos;->U:Ldja;

    iget-object v4, v0, Lhos;->S:Ldqx;

    invoke-static {p1, v1, v3, v4}, Ljhp;->ay(Ldbf;Ldhi;Ldja;Ldqx;)Ljwu;

    iget-object p1, v0, Lhos;->s:Loiw;

    check-cast p1, Lihj;

    invoke-virtual {p1}, Lihj;->a()Lihg;

    move-result-object p1

    iget-object p1, p1, Lihg;->e:Ljava/lang/Object;

    sget-object v1, Lika;->n:Lika;

    new-instance v3, Lhon;

    invoke-direct {v3, v0, v2}, Lhon;-><init>(Lhos;I)V

    check-cast p1, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;

    invoke-virtual {p1, v1, v3}, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->m(Lika;Ljava/lang/Runnable;)V

    return-void

    :pswitch_b
    iget-object v0, p0, Lhml;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_11

    check-cast v0, Lhos;

    iget-object p1, v0, Lhos;->V:Lbkc;

    invoke-static {p1}, Lcdg;->r(Lbkc;)Z

    move-result p1

    if-nez p1, :cond_10

    goto :goto_2

    :cond_10
    invoke-virtual {v0}, Lhos;->e()V

    iget-object p1, v0, Lhos;->V:Lbkc;

    invoke-virtual {p1}, Lbkc;->e()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_11

    iget-object p1, v0, Lhos;->V:Lbkc;

    invoke-virtual {p1}, Lbkc;->e()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcdg;->f(Landroid/content/Intent;)V

    return-void

    :cond_11
    :goto_2
    return-void

    :pswitch_c
    iget-object v0, p0, Lhml;->a:Ljava/lang/Object;

    check-cast p1, Lgdj;

    iget-object v1, p1, Lgdj;->a:Landroid/graphics/Rect;

    iget p1, p1, Lgdj;->c:F

    invoke-static {v1, p1}, Ljhp;->ao(Landroid/graphics/Rect;F)Ljava/util/Set;

    move-result-object p1

    invoke-interface {v0, p1}, Lken;->j(Ljava/util/Set;)V

    return-void

    :pswitch_d
    iget-object v0, p0, Lhml;->a:Ljava/lang/Object;

    check-cast p1, Lgll;

    sget-object v1, Liuz;->a:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v2, p1, Lgll;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lkfg;->u(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkfa;

    move-result-object v1

    sget-object v2, Liuz;->b:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object p1, p1, Lgll;->b:Lmvv;

    invoke-static {p1}, Lnsy;->Y(Ljava/util/Collection;)[F

    move-result-object p1

    invoke-static {v2, p1}, Lkfg;->u(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkfa;

    move-result-object p1

    invoke-static {v1, p1}, Lmwn;->I(Ljava/lang/Object;Ljava/lang/Object;)Lmwn;

    move-result-object p1

    invoke-interface {v0, p1}, Lken;->j(Ljava/util/Set;)V

    return-void

    :pswitch_e
    iget-object v0, p0, Lhml;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1, p1}, Lkfg;->u(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkfa;

    move-result-object p1

    invoke-interface {v0, p1}, Lken;->h(Lkfa;)V

    return-void

    :pswitch_f
    iget-object v0, p0, Lhml;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    check-cast v0, Lhmm;

    iget-object v1, v0, Lhmm;->n:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

    iget-object v1, v1, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->h:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_12

    return-void

    :cond_12
    iget-object v0, v0, Lhmm;->n:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eq v3, p1, :cond_13

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_13
    const/high16 p1, 0x3f000000    # 0.5f

    :goto_3
    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->u(F)V

    return-void

    :pswitch_10
    iget-object v0, p0, Lhml;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    check-cast v0, Lhmm;

    iget-object v1, v0, Lhmm;->j:Ldhi;

    sget-object v2, Ldho;->cd:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->h(Ldhj;)Lj$/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-boolean v2, v0, Lhmm;->r:Z

    cmpl-float p1, p1, v1

    if-lez p1, :cond_14

    goto :goto_4

    :cond_14
    const/4 v3, 0x0

    :goto_4
    if-ne v3, v2, :cond_15

    return-void

    :cond_15
    iget-object p1, v0, Lhmm;->a:Ljwb;

    if-eqz v3, :cond_16

    sget-object v1, Lhmu;->a:Lhmu;

    goto :goto_5

    :cond_16
    iget-object v1, v0, Lhmm;->z:Lhmu;

    :goto_5
    invoke-interface {p1, v1}, Ljwb;->bn(Ljava/lang/Object;)V

    if-eqz v3, :cond_17

    invoke-virtual {v0}, Lhmm;->i()V

    invoke-virtual {v0}, Lhmm;->h()V

    invoke-virtual {v0}, Lhmm;->e()V

    goto :goto_6

    :cond_17
    sget-object p1, Lmpx;->a:Lmpx;

    iget-object v1, v0, Lhmm;->b:Ljwb;

    invoke-interface {v1}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhmt;

    iget-object v2, v0, Lhmm;->c:Ljvs;

    invoke-interface {v2}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lhmm;->u(Lmqp;Lhmt;Z)V

    :goto_6
    iput-boolean v3, v0, Lhmm;->r:Z

    return-void

    :pswitch_11
    iget-object v0, p0, Lhml;->a:Ljava/lang/Object;

    check-cast p1, Lhmu;

    sget-object p1, Lmpx;->a:Lmpx;

    check-cast v0, Lhmm;

    iget-object v1, v0, Lhmm;->b:Ljwb;

    invoke-interface {v1}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhmt;

    iget-object v2, v0, Lhmm;->c:Ljvs;

    invoke-interface {v2}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lhmm;->u(Lmqp;Lhmt;Z)V

    return-void

    :pswitch_12
    iget-object v0, p0, Lhml;->a:Ljava/lang/Object;

    check-cast p1, Lcwx;

    const/4 p1, 0x0

    invoke-interface {v0, v4, p1}, Lgeh;->o(ZLgec;)V

    return-void

    :pswitch_13
    iget-object v0, p0, Lhml;->a:Ljava/lang/Object;

    check-cast p1, Lhmt;

    sget-object v1, Lmpx;->a:Lmpx;

    check-cast v0, Lhmm;

    iget-object v2, v0, Lhmm;->c:Ljvs;

    invoke-interface {v2}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lhmm;->u(Lmqp;Lhmt;Z)V

    return-void

    :cond_18
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
