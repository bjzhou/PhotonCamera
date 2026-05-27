.class public final synthetic Lfun;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lfum;I)V
    .locals 0

    iput p2, p0, Lfun;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfun;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lgdv;I)V
    .locals 0

    iput p2, p0, Lfun;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfun;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lgej;I)V
    .locals 0

    iput p2, p0, Lfun;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfun;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lgfi;I)V
    .locals 0

    iput p2, p0, Lfun;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfun;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lgxy;I)V
    .locals 0

    iput p2, p0, Lfun;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfun;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    iput p2, p0, Lfun;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfun;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/concurrent/Executor;I)V
    .locals 0

    iput p2, p0, Lfun;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfun;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljvk;I)V
    .locals 0

    iput p2, p0, Lfun;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfun;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljwb;I)V
    .locals 0

    iput p2, p0, Lfun;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfun;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lkhr;I)V
    .locals 0

    iput p2, p0, Lfun;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfun;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 18

    move-object/from16 v1, p0

    iget v0, v1, Lfun;->b:I

    const/4 v2, 0x0

    const/16 v3, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, v1, Lfun;->a:Ljava/lang/Object;

    move-object/from16 v2, p1

    check-cast v2, Lgxm;

    check-cast v0, Lgxy;

    invoke-interface {v2, v0}, Lgxm;->k(Lgxy;)V

    return-void

    :pswitch_0
    iget-object v0, v1, Lfun;->a:Ljava/lang/Object;

    move-object/from16 v2, p1

    check-cast v2, Lgxm;

    check-cast v0, Lgxy;

    invoke-interface {v2, v0}, Lgxm;->x(Lgxy;)V

    return-void

    :pswitch_1
    iget-object v0, v1, Lfun;->a:Ljava/lang/Object;

    move-object/from16 v3, p1

    check-cast v3, Landroid/animation/Animator;

    check-cast v0, Lcom/google/android/apps/camera/rewind/RewindThumbnailScrollView;

    iput-object v2, v0, Lcom/google/android/apps/camera/rewind/RewindThumbnailScrollView;->e:Landroid/animation/ObjectAnimator;

    return-void

    :pswitch_2
    iget-object v0, v1, Lfun;->a:Ljava/lang/Object;

    move-object/from16 v2, p1

    check-cast v2, Lkee;

    check-cast v0, Lkhr;

    invoke-interface {v2, v0}, Lkee;->c(Lkhr;)V

    return-void

    :pswitch_3
    iget-object v0, v1, Lfun;->a:Ljava/lang/Object;

    move-object/from16 v2, p1

    check-cast v2, Lgfn;

    iget-object v3, v2, Lgfn;->b:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    if-nez v3, :cond_0

    sget-object v3, Lgfn;->a:Lnak;

    invoke-virtual {v3}, Lnaf;->c()Lnaz;

    move-result-object v3

    check-cast v3, Lnah;

    const/16 v4, 0xa33

    invoke-interface {v3, v4}, Lnah;->G(I)Lnaz;

    move-result-object v3

    check-cast v3, Lnah;

    invoke-virtual {v2}, Lgfn;->a()Lgec;

    move-result-object v2

    const-string v4, "enableOption: nonexistent option %s for category %s"

    invoke-interface {v3, v4, v0, v2}, Lnah;->z(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, v2, Lgfn;->b:Ljava/util/Map;

    iget-object v2, v2, Lgfn;->g:Lgej;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    if-eq v3, v0, :cond_1

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    const/16 v0, 0xff

    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setImageAlpha(I)V

    :cond_1
    return-void

    :pswitch_4
    iget-object v0, v1, Lfun;->a:Ljava/lang/Object;

    move-object/from16 v2, p1

    check-cast v2, Lgfn;

    check-cast v0, Lgej;

    invoke-virtual {v2, v0}, Lgfn;->f(Lgej;)V

    return-void

    :pswitch_5
    iget-object v0, v1, Lfun;->a:Ljava/lang/Object;

    move-object/from16 v2, p1

    check-cast v2, Lgfn;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lgfn;->b(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lgfn;->setEnabled(Z)V

    return-void

    :pswitch_6
    iget-object v0, v1, Lfun;->a:Ljava/lang/Object;

    move-object/from16 v2, p1

    check-cast v2, Lgfn;

    check-cast v0, Lgej;

    invoke-virtual {v2, v0}, Lgfn;->c(Lgej;)V

    return-void

    :pswitch_7
    iget-object v0, v1, Lfun;->a:Ljava/lang/Object;

    move-object/from16 v2, p1

    check-cast v2, Landroid/animation/Animator;

    check-cast v0, Lgfi;

    iget-object v0, v0, Lgfi;->a:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return-void

    :pswitch_8
    iget-object v0, v1, Lfun;->a:Ljava/lang/Object;

    move-object/from16 v2, p1

    check-cast v2, Landroid/animation/Animator;

    check-cast v0, Lgfi;

    iget-object v0, v0, Lgfi;->a:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    return-void

    :pswitch_9
    iget-object v0, v1, Lfun;->a:Ljava/lang/Object;

    move-object/from16 v2, p1

    check-cast v2, Lgeh;

    sget-object v4, Lgff;->a:Lnak;

    invoke-interface {v2}, Lgeh;->I()Ljuf;

    move-result-object v4

    new-instance v5, Lgdl;

    invoke-direct {v5, v2, v3}, Lgdl;-><init>(Lgeh;I)V

    sget-object v2, Lnnv;->a:Lnnv;

    invoke-interface {v0, v5, v2}, Ljwb;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljuf;->d(Lkad;)V

    return-void

    :pswitch_a
    iget-object v0, v1, Lfun;->a:Ljava/lang/Object;

    move-object/from16 v12, p1

    check-cast v12, Lgei;

    invoke-interface {v12}, Lgei;->i()Ljwb;

    move-result-object v3

    move-object v4, v0

    check-cast v4, Lgdv;

    iget-object v6, v4, Lgdv;->i:Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;

    invoke-virtual {v6}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v12, v6}, Lged;->b(Lgei;Landroid/content/res/Resources;)Lges;

    move-result-object v8

    invoke-interface {v3}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v6

    move-object v9, v6

    check-cast v9, Lgej;

    sget-object v6, Lgej;->a:Lgej;

    if-ne v9, v6, :cond_2

    sget-object v6, Lgdv;->a:Lnak;

    invoke-virtual {v6}, Lnaf;->c()Lnaz;

    move-result-object v6

    invoke-interface {v3}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v3

    const-string v7, "Property value %s is not associated with a MenuOption."

    const/16 v10, 0xa1a

    invoke-static {v6, v7, v3, v10}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    :cond_2
    invoke-interface {v12}, Lgei;->j()Lmvv;

    move-result-object v3

    invoke-static {v3}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v3

    new-instance v6, Lgdn;

    const/4 v7, 0x2

    invoke-direct {v6, v4, v12, v7}, Lgdn;-><init>(Lgdv;Lgei;I)V

    invoke-interface {v3, v6}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v3

    sget-object v6, Lmtf;->a:Lj$/util/stream/Collector;

    invoke-interface {v3, v6}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmvv;

    invoke-interface {v12, v0}, Lgei;->m(Lgeh;)Z

    move-result v0

    iget-object v4, v4, Lgdv;->h:Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;

    invoke-interface {v12}, Lgei;->x()I

    move-result v15

    invoke-interface {v12}, Lgei;->h()Lgem;

    move-result-object v11

    if-eqz v0, :cond_3

    const/4 v14, 0x0

    goto :goto_0

    :cond_3
    invoke-interface {v12}, Lgei;->c()I

    move-result v6

    move v14, v6

    :goto_0
    invoke-interface {v12}, Lgei;->l()Z

    move-result v16

    monitor-enter v4

    :try_start_0
    new-instance v13, Lgfn;

    invoke-virtual {v4}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v10, v4, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;->f:Lgel;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v17, 0x0

    move-object v6, v13

    move-object v2, v13

    move v13, v15

    move v5, v14

    move/from16 v14, v17

    move v1, v15

    move/from16 v15, v16

    invoke-direct/range {v6 .. v15}, Lgfn;-><init>(Landroid/content/Context;Lges;Lgej;Lgel;Lgem;Lgek;IZZ)V

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v6

    invoke-virtual {v2, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->setId(I)V

    if-nez v5, :cond_4

    const/4 v5, 0x0

    goto :goto_1

    :cond_4
    invoke-virtual {v4}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {v2}, Lgfn;->e()V

    if-nez v0, :cond_5

    invoke-virtual {v2, v5}, Lgfn;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lgfn;->setEnabled(Z)V

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    const/4 v5, 0x0

    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_7

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, v2, Lgfn;->c:Lges;

    iget-object v6, v6, Lges;->d:Lmvv;

    invoke-virtual {v6, v5}, Lmvv;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lget;

    iget-object v6, v6, Lget;->a:Lgej;

    invoke-virtual {v2, v6}, Lgfn;->c(Lgej;)V

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_7
    :goto_3
    const/4 v5, 0x0

    :goto_4
    invoke-virtual {v4}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;->a()I

    move-result v0

    if-ge v5, v0, :cond_9

    iget-object v0, v4, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v3, v0, Lgfn;

    if-eqz v3, :cond_8

    check-cast v0, Lgfn;

    iget v0, v0, Lgfn;->d:I

    if-ge v1, v0, :cond_8

    goto :goto_5

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_9
    :goto_5
    iget-object v0, v4, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    iget-object v0, v4, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v4

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_b
    move-object/from16 v1, p0

    iget-object v0, v1, Lfun;->a:Ljava/lang/Object;

    move-object/from16 v2, p1

    check-cast v2, Lgec;

    check-cast v0, Lgdv;

    iget-object v3, v0, Lgdv;->h:Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;

    monitor-enter v3

    :try_start_1
    iget-object v0, v3, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;->b:Ljava/util/ArrayList;

    new-instance v4, Lgdp;

    const/4 v5, 0x5

    invoke-direct {v4, v3, v2, v5}, Lgdp;-><init>(Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;Lgec;I)V

    invoke-static {v0, v4}, Lj$/util/Collection$-EL;->removeIf(Ljava/util/Collection;Ljava/util/function/Predicate;)Z

    monitor-exit v3

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :pswitch_c
    iget-object v0, v1, Lfun;->a:Ljava/lang/Object;

    move-object/from16 v2, p1

    check-cast v2, Lgei;

    invoke-interface {v2, v0}, Lgei;->k(Lgeh;)V

    return-void

    :pswitch_d
    iget-object v0, v1, Lfun;->a:Ljava/lang/Object;

    move-object/from16 v2, p1

    check-cast v2, Lgei;

    invoke-interface {v2}, Lgei;->i()Ljwb;

    move-result-object v3

    invoke-interface {v2}, Lgei;->g()Lgec;

    move-result-object v2

    invoke-interface {v3}, Ljwb;->bm()Ljava/lang/Object;

    check-cast v0, Lgdv;

    iget-object v4, v0, Lgdv;->q:Ljuf;

    new-instance v5, Lecf;

    const/16 v6, 0xe

    invoke-direct {v5, v0, v2, v6}, Lecf;-><init>(Lgdv;Lgec;I)V

    iget-object v0, v0, Lgdv;->c:Ljuh;

    invoke-interface {v3, v5, v0}, Ljwb;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljuf;->d(Lkad;)V

    return-void

    :pswitch_e
    const/4 v0, 0x0

    iget-object v2, v1, Lfun;->a:Ljava/lang/Object;

    move-object/from16 v3, p1

    check-cast v3, Lgei;

    invoke-interface {v3, v2}, Lgei;->n(Lgeh;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v3, v2}, Lgei;->m(Lgeh;)Z

    move-result v5

    if-eqz v5, :cond_a

    goto :goto_6

    :cond_a
    const/4 v4, 0x0

    :goto_6
    invoke-interface {v3, v2, v4}, Lgei;->z(Lgeh;Z)V

    return-void

    :pswitch_f
    iget-object v0, v1, Lfun;->a:Ljava/lang/Object;

    move-object/from16 v2, p1

    check-cast v2, Lgei;

    check-cast v0, Lgdv;

    invoke-virtual {v0, v2}, Lgdv;->x(Lgei;)V

    return-void

    :pswitch_10
    iget-object v0, v1, Lfun;->a:Ljava/lang/Object;

    move-object/from16 v2, p1

    check-cast v2, Ljava/lang/Integer;

    check-cast v0, Ljvk;

    invoke-virtual {v0, v2}, Ljvk;->bn(Ljava/lang/Object;)V

    return-void

    :pswitch_11
    iget-object v0, v1, Lfun;->a:Ljava/lang/Object;

    move-object/from16 v2, p1

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_12
    iget-object v0, v1, Lfun;->a:Ljava/lang/Object;

    move-object/from16 v2, p1

    check-cast v2, Ljava/lang/String;

    check-cast v0, Lfum;

    invoke-virtual {v0, v2}, Lfum;->a(Ljava/lang/String;)V

    return-void

    :pswitch_13
    iget-object v0, v1, Lfun;->a:Ljava/lang/Object;

    move-object/from16 v2, p1

    check-cast v2, Ljava/lang/String;

    check-cast v0, Lfum;

    invoke-virtual {v0, v2}, Lfum;->a(Ljava/lang/String;)V

    return-void

    nop

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

.method public final synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 1

    iget v0, p0, Lfun;->b:I

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

    :pswitch_b
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1

    :pswitch_c
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1

    :pswitch_d
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1

    :pswitch_e
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1

    :pswitch_f
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1

    :pswitch_10
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1

    :pswitch_11
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1

    :pswitch_12
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1

    :pswitch_13
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1

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
