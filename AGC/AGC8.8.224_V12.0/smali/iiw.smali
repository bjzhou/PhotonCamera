.class public final synthetic Liiw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcmc;


# direct methods
.method public synthetic constructor <init>(Lcmc;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liiw;->a:Lcmc;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Liiw;->a:Lcmc;

    iget-object v2, v1, Lcmc;->a:Ljava/lang/Object;

    check-cast v2, Liiy;

    iget-object v2, v2, Liiy;->g:Lkbc;

    const-string v3, "MarsWirer#mainThread"

    invoke-interface {v2, v3}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v2, v1, Lcmc;->a:Ljava/lang/Object;

    check-cast v2, Liiy;

    iget-object v3, v2, Liiy;->d:Loiw;

    invoke-interface {v3}, Loiw;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldja;

    iget-object v3, v3, Ldja;->a:Ljava/lang/Object;

    check-cast v3, Ljew;

    const v4, 0x7f0b01fb

    invoke-virtual {v3, v4}, Ljew;->f(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/camera/ui/mars/MarsSwitch;

    iput-object v3, v2, Liiy;->j:Lcom/google/android/apps/camera/ui/mars/MarsSwitch;

    iget-object v2, v1, Lcmc;->a:Ljava/lang/Object;

    check-cast v2, Liiy;

    iget-object v2, v2, Liiy;->c:Ldhi;

    sget-object v3, Ldho;->cm:Ldhj;

    invoke-interface {v2, v3}, Ldhi;->l(Ldhj;)Z

    move-result v2

    const v3, 0x7f140287

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcmc;->a:Ljava/lang/Object;

    check-cast v2, Liiy;

    iget-object v5, v2, Liiy;->b:Lhzo;

    iget-object v6, v2, Liiy;->j:Lcom/google/android/apps/camera/ui/mars/MarsSwitch;

    new-instance v7, Licz;

    iget-object v2, v2, Liiy;->a:Landroid/content/Context;

    new-instance v14, Lida;

    sget-object v9, Lgyb;->a:Lgyb;

    const v8, 0x7f14013e

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const v11, 0x7f0802e8

    const v8, 0x7f14013d

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object v8, v14

    move-object v12, v13

    invoke-direct/range {v8 .. v13}, Lida;-><init>(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    new-instance v8, Lida;

    sget-object v16, Lgyb;->b:Lgyb;

    const v9, 0x7f14028b

    invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    const v18, 0x7f08035b

    const v9, 0x7f140284

    invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    const v9, 0x7f140289

    invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object v15, v8

    invoke-direct/range {v15 .. v20}, Lida;-><init>(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v14, v8}, Lmvv;->m(Ljava/lang/Object;Ljava/lang/Object;)Lmvv;

    move-result-object v2

    sget-object v8, Lgyb;->a:Lgyb;

    invoke-direct {v7, v2, v8}, Licz;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    iget-object v2, v1, Lcmc;->a:Ljava/lang/Object;

    check-cast v2, Liiy;

    iget-object v8, v2, Liiy;->i:Lhsl;

    iget-object v2, v2, Liiy;->e:Loiw;

    check-cast v2, Lihj;

    invoke-virtual {v2}, Lihj;->a()Lihg;

    move-result-object v2

    iget-object v2, v2, Lihg;->g:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

    invoke-virtual {v2}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iput-object v6, v5, Lhzo;->k:Lcom/google/android/apps/camera/ui/mars/MarsSwitch;

    new-instance v9, Licy;

    iget-object v10, v5, Lhzo;->b:Landroid/content/Context;

    invoke-direct {v9, v10, v2, v7}, Licy;-><init>(Landroid/content/Context;Landroid/view/View;Licz;)V

    iput-object v9, v5, Lhzo;->m:Licy;

    iget-object v2, v5, Lhzo;->m:Licy;

    invoke-virtual {v2, v3}, Licy;->c(I)V

    iget-object v2, v5, Lhzo;->m:Licy;

    iget-object v3, v5, Lhzo;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x7f0703f7

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Licy;->k:I

    iget-object v2, v5, Lhzo;->m:Licy;

    new-instance v3, Lgdu;

    const/16 v7, 0x11

    invoke-direct {v3, v5, v7}, Lgdu;-><init>(Lhzo;I)V

    invoke-virtual {v2, v3}, Licy;->d(Landroid/view/View$OnClickListener;)V

    iget-object v2, v5, Lhzo;->m:Licy;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v3, Lhzl;

    invoke-direct {v3, v5, v4}, Lhzl;-><init>(Lhzo;I)V

    iput-object v3, v2, Licy;->d:Licx;

    new-instance v3, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    invoke-direct {v3, v5}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;-><init>(Lhzo;)V

    iput-object v3, v2, Licy;->l:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    iget-boolean v3, v5, Lhzo;->j:Z

    if-eqz v3, :cond_1

    sget-object v3, Lgyb;->b:Lgyb;

    goto :goto_0

    :cond_1
    sget-object v3, Lgyb;->a:Lgyb;

    :goto_0
    invoke-virtual {v2, v3}, Licy;->e(Ljava/lang/Object;)V

    iput-boolean v4, v5, Lhzo;->j:Z

    :goto_1
    invoke-virtual {v6, v4}, Lcom/google/android/apps/camera/ui/mars/MarsSwitch;->setVisibility(I)V

    invoke-virtual {v5, v8}, Lhzo;->g(Lhsl;)V

    goto :goto_3

    :cond_2
    iget-object v2, v1, Lcmc;->a:Ljava/lang/Object;

    check-cast v2, Liiy;

    iget-object v5, v2, Liiy;->b:Lhzo;

    iget-object v6, v2, Liiy;->j:Lcom/google/android/apps/camera/ui/mars/MarsSwitch;

    new-instance v7, Lict;

    iget-object v2, v2, Liiy;->a:Landroid/content/Context;

    invoke-direct {v7, v2}, Lict;-><init>(Landroid/content/Context;)V

    iget-object v2, v1, Lcmc;->a:Ljava/lang/Object;

    check-cast v2, Liiy;

    iget-object v2, v2, Liiy;->i:Lhsl;

    iput-object v7, v5, Lhzo;->p:Lict;

    iput-object v6, v5, Lhzo;->k:Lcom/google/android/apps/camera/ui/mars/MarsSwitch;

    iget-object v8, v6, Lcom/google/android/apps/camera/ui/mars/MarsSwitch;->a:Lcom/google/android/apps/camera/ui/popupmenu/PopupMenuView;

    iput-object v8, v5, Lhzo;->l:Lcom/google/android/apps/camera/ui/popupmenu/PopupMenuView;

    iget-object v8, v5, Lhzo;->l:Lcom/google/android/apps/camera/ui/popupmenu/PopupMenuView;

    invoke-virtual {v8, v3, v7}, Lcom/google/android/apps/camera/ui/popupmenu/PopupMenuView;->d(ILict;)V

    iget-object v3, v5, Lhzo;->l:Lcom/google/android/apps/camera/ui/popupmenu/PopupMenuView;

    iget-object v3, v3, Lcom/google/android/apps/camera/ui/popupmenu/PopupMenuView;->b:Landroid/widget/ImageButton;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    new-instance v7, Lgdu;

    const/16 v8, 0x12

    invoke-direct {v7, v5, v8}, Lgdu;-><init>(Lhzo;I)V

    invoke-virtual {v3, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, v5, Lhzo;->p:Lict;

    new-instance v7, Lhzk;

    invoke-direct {v7, v5, v4}, Lhzk;-><init>(Lhzo;I)V

    invoke-virtual {v3, v7, v4}, Lict;->a(Lics;Z)V

    iget-object v3, v5, Lhzo;->p:Lict;

    iget-boolean v7, v5, Lhzo;->j:Z

    if-eqz v7, :cond_3

    sget-object v7, Lgyb;->b:Lgyb;

    goto :goto_2

    :cond_3
    sget-object v7, Lgyb;->a:Lgyb;

    :goto_2
    invoke-virtual {v3, v7}, Lict;->c(Ljava/lang/Object;)V

    iput-boolean v4, v5, Lhzo;->j:Z

    new-instance v3, Lhqj;

    const/4 v7, 0x2

    invoke-direct {v3, v5, v7}, Lhqj;-><init>(Lhzo;I)V

    iget-object v7, v5, Lhzo;->i:Lgeh;

    invoke-interface {v7, v3}, Lgeh;->g(Lgen;)V

    iget-object v7, v5, Lhzo;->o:Ljuf;

    new-instance v9, Lgss;

    invoke-direct {v9, v5, v3, v8}, Lgss;-><init>(Lhzo;Lgen;I)V

    invoke-virtual {v7, v9}, Ljuf;->d(Lkad;)V

    iget-object v3, v5, Lhzo;->o:Ljuf;

    iget-object v7, v5, Lhzo;->h:Liff;

    new-instance v8, Lhzn;

    invoke-direct {v8, v5}, Lhzn;-><init>(Lhzo;)V

    invoke-interface {v7, v8}, Liff;->e(Lifj;)Lkad;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljuf;->d(Lkad;)V

    invoke-virtual {v6, v4}, Lcom/google/android/apps/camera/ui/mars/MarsSwitch;->setVisibility(I)V

    invoke-virtual {v5, v2}, Lhzo;->g(Lhsl;)V

    :goto_3
    iget-object v2, v1, Lcmc;->a:Ljava/lang/Object;

    check-cast v2, Liiy;

    iget-object v2, v2, Liiy;->d:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldja;

    iget-object v2, v2, Ldja;->a:Ljava/lang/Object;

    check-cast v2, Ljew;

    const v3, 0x7f0b0053

    invoke-virtual {v2, v3}, Ljew;->f(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;

    iget-object v3, v1, Lcmc;->a:Ljava/lang/Object;

    check-cast v3, Liiy;

    iget-object v4, v3, Liiy;->j:Lcom/google/android/apps/camera/ui/mars/MarsSwitch;

    iget-object v3, v3, Liiy;->b:Lhzo;

    iput-object v4, v2, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->d:Lcom/google/android/apps/camera/ui/mars/MarsSwitch;

    iput-object v3, v2, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->e:Lhzo;

    invoke-virtual {v2}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->a()Lhys;

    move-result-object v3

    iget-object v3, v3, Lhys;->i:Lhyn;

    invoke-virtual {v2}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->a()Lhys;

    move-result-object v4

    iget-object v4, v4, Lhys;->g:Liko;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->k(Lhyn;Liko;)V

    iget-object v3, v1, Lcmc;->a:Ljava/lang/Object;

    check-cast v3, Liiy;

    iget-object v4, v3, Liiy;->j:Lcom/google/android/apps/camera/ui/mars/MarsSwitch;

    iget-object v3, v3, Liiy;->e:Loiw;

    check-cast v3, Lihj;

    invoke-virtual {v3}, Lihj;->a()Lihg;

    move-result-object v3

    iget-object v3, v3, Lihg;->g:Ljava/lang/Object;

    check-cast v3, Landroid/view/View;

    iput-object v3, v4, Lcom/google/android/apps/camera/ui/mars/MarsSwitch;->b:Landroid/view/View;

    invoke-virtual {v4}, Lcom/google/android/apps/camera/ui/mars/MarsSwitch;->a()V

    iget-object v3, v1, Lcmc;->a:Ljava/lang/Object;

    check-cast v3, Liiy;

    iget-object v3, v3, Liiy;->b:Lhzo;

    iget-object v4, v3, Lhzo;->e:Lgzm;

    sget-object v5, Lgzd;->au:Lgzr;

    invoke-interface {v4, v5}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, v3, Lhzo;->e:Lgzm;

    sget-object v5, Lgzd;->av:Lgzs;

    invoke-interface {v4, v5}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x3

    if-ge v4, v5, :cond_4

    iget-object v4, v3, Lhzo;->d:Ljuh;

    new-instance v5, Lhxc;

    const/16 v6, 0xf

    invoke-direct {v5, v3, v6}, Lhxc;-><init>(Lhzo;I)V

    invoke-virtual {v4, v5}, Ljuh;->execute(Ljava/lang/Runnable;)V

    :cond_4
    iget-object v3, v1, Lcmc;->a:Ljava/lang/Object;

    check-cast v3, Liiy;

    iget-object v4, v3, Liiy;->h:Lezx;

    iget-object v3, v3, Liiy;->b:Lhzo;

    invoke-virtual {v4, v3}, Lfak;->e(Lfaz;)V

    new-instance v3, Liix;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Liix;-><init>(Lcmc;[B)V

    invoke-virtual {v2, v3}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->s(Ljvd;)V

    iget-object v1, v1, Lcmc;->a:Ljava/lang/Object;

    check-cast v1, Liiy;

    iget-object v1, v1, Liiy;->g:Lkbc;

    invoke-interface {v1}, Lkbc;->f()V

    return-void
.end method
