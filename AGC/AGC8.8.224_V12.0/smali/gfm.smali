.class public final synthetic Lgfm;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;

.field private final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/ImageView;I)V
    .locals 0

    iput p3, p0, Lgfm;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgfm;->b:Ljava/lang/Object;

    iput-object p2, p0, Lgfm;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;Lika;I)V
    .locals 0

    iput p3, p0, Lgfm;->c:I

    iput-object p1, p0, Lgfm;->b:Ljava/lang/Object;

    iput-object p2, p0, Lgfm;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;Lika;I)V
    .locals 0

    iput p3, p0, Lgfm;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgfm;->b:Ljava/lang/Object;

    iput-object p2, p0, Lgfm;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lgfn;Lgem;I)V
    .locals 0

    iput p3, p0, Lgfm;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgfm;->a:Ljava/lang/Object;

    iput-object p2, p0, Lgfm;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lgfn;Lget;I)V
    .locals 0

    iput p3, p0, Lgfm;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgfm;->a:Ljava/lang/Object;

    iput-object p2, p0, Lgfm;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhdu;Ljava/lang/Runnable;I)V
    .locals 0

    iput p3, p0, Lgfm;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgfm;->b:Ljava/lang/Object;

    iput-object p2, p0, Lgfm;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhgj;Landroidx/wear/ambient/AmbientModeSupport$AmbientController;I[B[B[B[B)V
    .locals 0

    iput p3, p0, Lgfm;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgfm;->a:Ljava/lang/Object;

    iput-object p2, p0, Lgfm;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhmm;Lika;I)V
    .locals 0

    iput p3, p0, Lgfm;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgfm;->b:Ljava/lang/Object;

    iput-object p2, p0, Lgfm;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    iget v0, p0, Lgfm;->c:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object p1, p0, Lgfm;->b:Ljava/lang/Object;

    iget-object v0, p0, Lgfm;->a:Ljava/lang/Object;

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_19

    goto/16 :goto_8

    :pswitch_0
    iget-object p1, p0, Lgfm;->b:Ljava/lang/Object;

    iget-object v0, p0, Lgfm;->a:Ljava/lang/Object;

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-static {p1}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->c(Landroid/widget/FrameLayout;)I

    move-result p1

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lgfm;->b:Ljava/lang/Object;

    iget-object v1, p0, Lgfm;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;->f:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->isRunning()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;

    invoke-virtual {v2}, Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;->d:Lfbz;

    if-eqz v2, :cond_1

    sget-object v4, Lika;->p:Lika;

    invoke-virtual {v4}, Lika;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v1

    check-cast v5, Lika;

    invoke-virtual {v5}, Lika;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lfbz;->ac(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {p1}, Lnom;->h(Landroid/view/View;)V

    iget-object p1, v0, Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;->j:Lmqp;

    invoke-virtual {p1}, Lmqp;->g()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, v0, Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;->j:Lmqp;

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Licc;

    check-cast v1, Lika;

    invoke-interface {p1, v1}, Licc;->g(Lika;)V

    :cond_2
    return-void

    :pswitch_2
    iget-object v0, p0, Lgfm;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    iget-boolean v0, v0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->f:Z

    if-nez v0, :cond_3

    sget-object p1, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    const-string v0, "Ignore mode chip click, mode switcher is disabled."

    const/16 v1, 0x101a

    invoke-static {p1, v0, v1}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return-void

    :cond_3
    invoke-static {p1}, Lnom;->h(Landroid/view/View;)V

    iget-object p1, p0, Lgfm;->b:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    iget-object v0, p1, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->h:Lfbz;

    if-eqz v0, :cond_4

    iget-object p1, p1, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->k:Lika;

    invoke-virtual {p1}, Lika;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lgfm;->a:Ljava/lang/Object;

    check-cast v1, Lika;

    invoke-virtual {v1}, Lika;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, p1, v1}, Lfbz;->ac(ILjava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object p1, p0, Lgfm;->b:Ljava/lang/Object;

    iget-object v0, p0, Lgfm;->a:Ljava/lang/Object;

    check-cast v0, Lika;

    check-cast p1, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->h(Lika;)V

    return-void

    :pswitch_3
    iget-object p1, p0, Lgfm;->b:Ljava/lang/Object;

    iget-object v0, p0, Lgfm;->a:Ljava/lang/Object;

    check-cast p1, Lhmm;

    iget-object v1, p1, Lhmm;->n:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

    iget-object v1, v1, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->d:Ljwb;

    check-cast v1, Ljvk;

    iget-object v1, v1, Ljvk;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    iget-object v1, p1, Lhmm;->j:Ldhi;

    sget-object v2, Ldho;->cf:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->l(Ldhj;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p1, Lhmm;->a:Ljwb;

    invoke-interface {v1}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhmu;

    sget-object v2, Lhmu;->c:Lhmu;

    invoke-virtual {v1, v2}, Lhmu;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_2

    :cond_6
    :goto_1
    return-void

    :cond_7
    :goto_2
    iget-object v1, p1, Lhmm;->j:Ldhi;

    invoke-interface {v1}, Ldhi;->e()V

    iget-object v1, p1, Lhmm;->b:Ljwb;

    invoke-interface {v1}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhmt;

    sget-object v2, Lhmt;->c:Lhmt;

    invoke-virtual {v1, v2}, Lhmt;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p1, Lhmm;->j:Ldhi;

    sget-object v2, Ldho;->cf:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->l(Ldhj;)Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v1, Lhmu;->b:Lhmu;

    goto :goto_3

    :cond_8
    sget-object v1, Lhmu;->c:Lhmu;

    goto :goto_3

    :cond_9
    iget-object v1, p1, Lhmm;->a:Ljwb;

    invoke-interface {v1}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhmu;

    sget-object v2, Lhmu;->a:Lhmu;

    invoke-virtual {v1, v2}, Lhmu;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p1, Lhmm;->j:Ldhi;

    sget-object v2, Ldho;->cf:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->l(Ldhj;)Z

    move-result v1

    if-eqz v1, :cond_a

    sget-object v1, Lhmu;->b:Lhmu;

    goto :goto_3

    :cond_a
    sget-object v1, Lhmu;->c:Lhmu;

    goto :goto_3

    :cond_b
    sget-object v1, Lhmu;->a:Lhmu;

    :goto_3
    iput-object v1, p1, Lhmm;->z:Lhmu;

    iget-object v2, p1, Lhmm;->a:Ljwb;

    invoke-interface {v2, v1}, Ljwb;->bn(Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Lhmm;->p(Lhmu;)V

    iget-object v2, p1, Lhmm;->j:Ldhi;

    sget-object v5, Ldho;->ce:Ldhj;

    invoke-interface {v2, v5}, Ldhi;->l(Ldhj;)Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_4

    :cond_c
    iget-object v2, p1, Lhmm;->l:Lgzn;

    sget-object v5, Lgzd;->al:Lgzs;

    iget v6, v1, Lhmu;->d:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Lgzn;->e(Lgzb;Ljava/lang/Object;)V

    sget-object v2, Lhmu;->c:Lhmu;

    invoke-virtual {v1, v2}, Lhmu;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    iget-object v2, p1, Lhmm;->l:Lgzn;

    sget-object v5, Lgzd;->n:Lgzr;

    invoke-static {v1}, Lhmu;->b(Lhmu;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Lgzn;->e(Lgzb;Ljava/lang/Object;)V

    :cond_d
    :goto_4
    iget-object v2, p1, Lhmm;->B:Lmvq;

    invoke-virtual {v1}, Lhmu;->ordinal()I

    move-result v1

    const/4 v5, 0x2

    const/4 v6, 0x4

    packed-switch v1, :pswitch_data_1

    const/4 v3, 0x1

    goto :goto_5

    :pswitch_4
    const/4 v3, 0x2

    goto :goto_5

    :pswitch_5
    const/4 v3, 0x4

    goto :goto_5

    :goto_5
    :pswitch_6
    sget-object v1, Lnla;->e:Lnla;

    invoke-virtual {v1}, Lnws;->O()Lnwn;

    move-result-object v1

    iget-object v7, v1, Lnwn;->b:Lnws;

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v7

    if-nez v7, :cond_e

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_e
    iget-object v7, v1, Lnwn;->b:Lnws;

    check-cast v7, Lnla;

    add-int/lit8 v3, v3, -0x1

    iput v3, v7, Lnla;->b:I

    iget v3, v7, Lnla;->a:I

    or-int/2addr v3, v4

    iput v3, v7, Lnla;->a:I

    check-cast v0, Lika;

    invoke-static {v0}, Lijy;->e(Lika;)I

    move-result v0

    iget-object v3, v1, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_f

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_f
    iget-object v3, v1, Lnwn;->b:Lnws;

    move-object v7, v3

    check-cast v7, Lnla;

    add-int/lit8 v0, v0, -0x1

    iput v0, v7, Lnla;->c:I

    iget v0, v7, Lnla;->a:I

    or-int/2addr v0, v5

    iput v0, v7, Lnla;->a:I

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_10
    iget-object v0, v1, Lnwn;->b:Lnws;

    check-cast v0, Lnla;

    iput v4, v0, Lnla;->d:I

    iget v3, v0, Lnla;->a:I

    or-int/2addr v3, v6

    iput v3, v0, Lnla;->a:I

    invoke-virtual {v1}, Lnwn;->i()Lnws;

    move-result-object v0

    check-cast v0, Lnla;

    invoke-virtual {v2, v0}, Lmvq;->g(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lhmm;->t()V

    return-void

    :pswitch_7
    iget-object p1, p0, Lgfm;->a:Ljava/lang/Object;

    iget-object v0, p0, Lgfm;->b:Ljava/lang/Object;

    check-cast p1, Lhgj;

    iget-boolean v1, p1, Lhgj;->e:Z

    if-eqz v1, :cond_11

    check-cast v0, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    invoke-virtual {v0}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->j()V

    return-void

    :cond_11
    iget-object p1, p1, Lhgj;->c:Landroid/content/pm/ResolveInfo;

    check-cast v0, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    iget-object v1, v0, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->a:Ljava/lang/Object;

    check-cast v1, Lhey;

    iget-object v1, v1, Lhey;->n:Lgzn;

    sget-object v2, Lgzd;->U:Lgzr;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lgzn;->e(Lgzb;Ljava/lang/Object;)V

    iget-object v0, v0, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->a:Ljava/lang/Object;

    check-cast v0, Lhey;

    iget-object v0, v0, Lhey;->c:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhfq;

    invoke-virtual {v0, p1}, Lhfq;->l(Landroid/content/pm/ResolveInfo;)V

    return-void

    :pswitch_8
    iget-object p1, p0, Lgfm;->b:Ljava/lang/Object;

    iget-object v0, p0, Lgfm;->a:Ljava/lang/Object;

    check-cast p1, Lhcr;

    iget-object v1, p1, Lhcr;->d:Lfbz;

    iget-object p1, p1, Lhcr;->a:Lhdz;

    iget-object p1, p1, Lhdz;->a:Ljava/lang/String;

    invoke-interface {v1, v3, p1}, Lfbz;->ae(ILjava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    :pswitch_9
    iget-object p1, p0, Lgfm;->a:Ljava/lang/Object;

    iget-object v0, p0, Lgfm;->b:Ljava/lang/Object;

    check-cast p1, Lgfn;

    iget-object v1, p1, Lgfn;->f:Lgek;

    if-eqz v1, :cond_13

    iget-object v3, p1, Lgfn;->c:Lges;

    iget-object v3, v3, Lges;->a:Lgec;

    move-object v5, v0

    check-cast v5, Lget;

    iget-object v5, v5, Lget;->a:Lgej;

    iget-object v6, p1, Lgfn;->g:Lgej;

    if-ne v6, v5, :cond_12

    const/4 v2, 0x1

    goto :goto_6

    :cond_12
    :goto_6
    invoke-interface {v1, v3, v5, v2}, Lgek;->u(Lgec;Lgej;Z)Z

    move-result v1

    if-nez v1, :cond_14

    :cond_13
    iget-object v1, p1, Lgfn;->e:Lgel;

    if-eqz v1, :cond_14

    check-cast v0, Lget;

    iget-object v0, v0, Lget;->a:Lgej;

    iget-object p1, p1, Lgfn;->c:Lges;

    iget-object p1, p1, Lges;->a:Lgec;

    invoke-interface {v1, v0, p1, v4}, Lgel;->bU(Lgej;Lgec;I)V

    :cond_14
    return-void

    :pswitch_a
    iget-object p1, p0, Lgfm;->a:Ljava/lang/Object;

    iget-object v0, p0, Lgfm;->b:Ljava/lang/Object;

    if-eqz v0, :cond_15

    check-cast p1, Lgfn;

    iget-object v1, p1, Lgfn;->g:Lgej;

    invoke-virtual {p1}, Lgfn;->isEnabled()Z

    move-result p1

    invoke-interface {v0, v1, p1}, Lgem;->a(Lgej;Z)V

    :cond_15
    return-void

    :pswitch_b
    iget-object p1, p0, Lgfm;->a:Ljava/lang/Object;

    iget-object v0, p0, Lgfm;->b:Ljava/lang/Object;

    check-cast p1, Lgfn;

    iget-object v1, p1, Lgfn;->f:Lgek;

    if-eqz v1, :cond_17

    iget-object v3, p1, Lgfn;->c:Lges;

    iget-object v3, v3, Lges;->a:Lgec;

    move-object v5, v0

    check-cast v5, Lget;

    iget-object v5, v5, Lget;->a:Lgej;

    iget-object v6, p1, Lgfn;->g:Lgej;

    if-ne v6, v5, :cond_16

    const/4 v2, 0x1

    goto :goto_7

    :cond_16
    :goto_7
    invoke-interface {v1, v3, v5, v2}, Lgek;->u(Lgec;Lgej;Z)Z

    move-result v1

    if-nez v1, :cond_18

    :cond_17
    iget-object v1, p1, Lgfn;->e:Lgel;

    if-eqz v1, :cond_18

    check-cast v0, Lget;

    iget-object v0, v0, Lget;->a:Lgej;

    iget-object p1, p1, Lgfn;->c:Lges;

    iget-object p1, p1, Lges;->a:Lgec;

    invoke-interface {v1, v0, p1, v4}, Lgel;->bU(Lgej;Lgec;I)V

    :cond_18
    return-void

    :cond_19
    const/4 v1, 0x0

    :goto_8
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-static {p1}, Lcom/google/android/apps/camera/ui/preference/MaterialManagedSwitchPreference;->aj(Landroid/widget/FrameLayout;)I

    move-result p1

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method
