.class public final synthetic Lfzr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lfzi;I)V
    .locals 0

    iput p2, p0, Lfzr;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfzr;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lfzs;I)V
    .locals 0

    iput p2, p0, Lfzr;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfzr;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lfzt;I)V
    .locals 0

    iput p2, p0, Lfzr;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfzr;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lfzu;I)V
    .locals 0

    iput p2, p0, Lfzr;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfzr;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lfzv;I)V
    .locals 0

    iput p2, p0, Lfzr;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfzr;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lgap;I)V
    .locals 0

    iput p2, p0, Lfzr;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfzr;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lgcr;I)V
    .locals 0

    iput p2, p0, Lfzr;->b:I

    iput-object p1, p0, Lfzr;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lgdv;I)V
    .locals 0

    iput p2, p0, Lfzr;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfzr;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lgfy;I)V
    .locals 0

    iput p2, p0, Lfzr;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfzr;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lggt;I)V
    .locals 0

    iput p2, p0, Lfzr;->b:I

    iput-object p1, p0, Lfzr;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lggw;I)V
    .locals 0

    iput p2, p0, Lfzr;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfzr;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lghe;I)V
    .locals 0

    iput p2, p0, Lfzr;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfzr;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lknz;I)V
    .locals 0

    iput p2, p0, Lfzr;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfzr;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget v0, p0, Lfzr;->b:I

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lfzr;->a:Ljava/lang/Object;

    check-cast v0, Lghe;

    iget-object v1, v0, Lghe;->g:Lccg;

    iget-object v1, v1, Lccg;->a:Lika;

    sget-object v2, Lika;->m:Lika;

    if-eq v1, v2, :cond_12

    iget-object v1, v0, Lghe;->g:Lccg;

    iget-object v0, v0, Lghe;->o:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Lccg;->b(Ljava/lang/Runnable;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lfzr;->a:Ljava/lang/Object;

    check-cast v0, Lggw;

    iget-object v1, v0, Lggw;->c:Ljwb;

    check-cast v1, Ljvk;

    iget-object v1, v1, Ljvk;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    iget-object v0, v0, Lggw;->d:Lnph;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Lnph;->e(Ljava/lang/Object;)Z

    return-void

    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lfzr;->a:Ljava/lang/Object;

    check-cast v0, Lggt;

    iget-object v1, v0, Lggt;->a:Lccg;

    iget-object v0, v0, Lggt;->d:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Lccg;->b(Ljava/lang/Runnable;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lfzr;->a:Ljava/lang/Object;

    check-cast v0, Lggt;

    iget-object v1, v0, Lggt;->a:Lccg;

    iget-object v0, v0, Lggt;->d:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Lccg;->c(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lfzr;->a:Ljava/lang/Object;

    check-cast v0, Lggt;

    iget-object v0, v0, Lggt;->c:Lnph;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v3}, Lnph;->e(Ljava/lang/Object;)Z

    :cond_2
    return-void

    :pswitch_3
    iget-object v0, p0, Lfzr;->a:Ljava/lang/Object;

    check-cast v0, Lgfy;

    iget-object v0, v0, Lgfy;->a:Landroid/content/Context;

    invoke-static {v0}, Ljnp;->a(Landroid/content/Context;)Ljns;

    move-result-object v6

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v8, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v8, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sget-wide v1, Ljnw;->a:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_3

    sget-object v1, Ljfo;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :goto_1
    const/4 v5, 0x3

    const-string v1, "com.google.android.apps.camera#"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget-wide v0, Ljnw;->a:J

    const-wide/16 v2, 0x7d0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    invoke-static/range {v5 .. v10}, Ljpw;->d(ILjns;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;J)Z

    return-void

    :pswitch_4
    iget-object v0, p0, Lfzr;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lgfy;

    iget-object v2, v1, Lgfy;->a:Landroid/content/Context;

    invoke-static {v2}, Lgfw;->a(Landroid/content/Context;)V

    iget-object v2, v1, Lgfy;->c:Lchs;

    new-instance v3, Lgfx;

    invoke-direct {v3, v1}, Lgfx;-><init>(Lgfy;)V

    invoke-virtual {v2, v3}, Lchs;->a(Lchr;)Lkad;

    iget-object v2, v1, Lgfy;->d:Ljuh;

    iget-object v1, v1, Lgfy;->b:Lezy;

    invoke-static {v2, v1, v0}, Lfcr;->d(Ljuh;Lezy;Lfaz;)V

    return-void

    :pswitch_5
    iget-object v0, p0, Lfzr;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lknz;

    iget-object v1, v1, Lknz;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    move-object v3, v0

    check-cast v3, Lknz;

    iget v3, v3, Lknz;->h:I

    add-int/2addr v3, v2

    move-object v2, v0

    check-cast v2, Lknz;

    iput v3, v2, Lknz;->h:I

    check-cast v0, Lknz;

    iget-object v0, v0, Lknz;->d:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    monitor-exit v1

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :pswitch_6
    iget-object v0, p0, Lfzr;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lknz;

    iget-object v1, v1, Lknz;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2
    move-object v2, v0

    check-cast v2, Lknz;

    iget v2, v2, Lknz;->h:I

    if-lez v2, :cond_4

    add-int/lit8 v2, v2, -0x1

    move-object v3, v0

    check-cast v3, Lknz;

    iput v2, v3, Lknz;->h:I

    :cond_4
    if-nez v2, :cond_5

    check-cast v0, Lknz;

    iget-object v0, v0, Lknz;->d:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    :cond_5
    monitor-exit v1

    return-void

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :pswitch_7
    iget-object v0, p0, Lfzr;->a:Ljava/lang/Object;

    check-cast v0, Lgdv;

    iget-object v1, v0, Lgdv;->l:Ljava/util/Set;

    invoke-static {v1}, Lmwn;->F(Ljava/util/Collection;)Lmwn;

    move-result-object v1

    iget-object v2, v0, Lgdv;->l:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    new-instance v2, Lfun;

    const/16 v3, 0x8

    invoke-direct {v2, v0, v3}, Lfun;-><init>(Lgdv;I)V

    invoke-static {v1, v2}, Lj$/util/Collection$-EL;->forEach(Ljava/util/Collection;Ljava/util/function/Consumer;)V

    iget-object v2, v0, Lgdv;->o:Lmwn;

    invoke-static {v2}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v2

    new-instance v3, Ldaa;

    const/16 v4, 0xe

    invoke-direct {v3, v1, v4}, Ldaa;-><init>(Lmwn;I)V

    invoke-interface {v2, v3}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v2

    invoke-virtual {v0, v2}, Lgdv;->f(Lj$/util/stream/Stream;)V

    iget-object v2, v0, Lgdv;->o:Lmwn;

    invoke-static {v2}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v2

    new-instance v3, Ldaa;

    const/16 v4, 0xf

    invoke-direct {v3, v1, v4}, Ldaa;-><init>(Lmwn;I)V

    invoke-interface {v2, v3}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lfun;

    const/4 v3, 0x4

    invoke-direct {v2, v0, v3}, Lfun;-><init>(Lgdv;I)V

    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void

    :pswitch_8
    iget-object v0, p0, Lfzr;->a:Ljava/lang/Object;

    check-cast v0, Lgdv;

    iget-object v2, v0, Lgdv;->d:Lkbc;

    const-string v5, "updateOptionsBar"

    invoke-interface {v2, v5}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v2, v0, Lgdv;->b:Ljwb;

    invoke-interface {v2}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lika;

    iget-object v5, v0, Lgdv;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    iget-object v5, v0, Lgdv;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v5, v0, Lgdv;->l:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->clear()V

    iget-object v5, v0, Lgdv;->i:Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;

    invoke-virtual {v5}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;->isEnabled()Z

    move-result v5

    iget-object v6, v0, Lgdv;->i:Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;

    invoke-virtual {v6}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;->h()V

    iget-object v6, v0, Lgdv;->i:Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;

    iget-object v7, v6, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;->f:Landroid/widget/ImageButton;

    invoke-virtual {v7}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-eqz v7, :cond_6

    iget-object v7, v6, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;->f:Landroid/widget/ImageButton;

    invoke-virtual {v7}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewManager;

    iget-object v6, v6, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;->f:Landroid/widget/ImageButton;

    invoke-interface {v7, v6}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    :cond_6
    iget-object v6, v0, Lgdv;->i:Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;

    invoke-virtual {v6}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;->e()Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;

    move-result-object v6

    monitor-enter v6

    :try_start_3
    iget-object v7, v6, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v7, v6, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;->b:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    sget-object v6, Lika;->h:Lika;

    if-eq v2, v6, :cond_7

    sget-object v6, Lika;->i:Lika;

    if-ne v2, v6, :cond_8

    :cond_7
    iget-object v2, v0, Lgdv;->i:Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;

    iget-object v6, v0, Lgdv;->f:Lgef;

    iget-object v7, v2, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;->g:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x106000d

    invoke-virtual {v7, v8, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v7

    iget-object v8, v2, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;->f:Landroid/widget/ImageButton;

    const v9, 0x7f080307

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v8, v2, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;->f:Landroid/widget/ImageButton;

    iget-object v9, v2, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;->g:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f14002f

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v8, v2, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;->f:Landroid/widget/ImageButton;

    invoke-virtual {v8, v7}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    iget-object v7, v2, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;->f:Landroid/widget/ImageButton;

    new-instance v8, Lgdu;

    const/4 v9, 0x2

    invoke-direct {v8, v6, v9}, Lgdu;-><init>(Lgef;I)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, v2, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;->f:Landroid/widget/ImageButton;

    sget-object v7, Lgfj;->a:Lgfj;

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    iget v7, v2, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;->k:I

    invoke-direct {v6, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;->d()Landroid/widget/RelativeLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getId()I

    move-result v7

    const/16 v8, 0x11

    invoke-virtual {v6, v8, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v7, v2, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;->f:Landroid/widget/ImageButton;

    invoke-virtual {v7, v6}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;->d()Landroid/widget/RelativeLayout;

    move-result-object v6

    iget-object v2, v2, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;->f:Landroid/widget/ImageButton;

    invoke-virtual {v6, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    :cond_8
    iget-object v2, v0, Lgdv;->i:Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;

    invoke-virtual {v2}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;->b()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f07056c

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual {v2}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f07056d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    invoke-virtual {v2}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;->e()Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;

    move-result-object v7

    const v8, 0x7f080301

    invoke-virtual {v7, v8}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;->setBackgroundResource(I)V

    invoke-virtual {v2}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;->e()Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;

    move-result-object v7

    invoke-virtual {v7, v3, v6, v3, v6}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;->setPadding(IIII)V

    invoke-virtual {v2}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;->e()Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    instance-of v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v6, :cond_9

    move-object v6, v3

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v4, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v4, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {v2}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;->e()Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9
    invoke-virtual {v2}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;->e()Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;->setAlpha(F)V

    invoke-virtual {v2}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;->e()Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;->setVisibility(I)V

    invoke-virtual {v2}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;->c()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lgdv;->o:Lmwn;

    invoke-static {v1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgdv;->f(Lj$/util/stream/Stream;)V

    iget-object v1, v0, Lgdv;->o:Lmwn;

    invoke-virtual {v1}, Lmwn;->cz()Lnac;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgei;

    invoke-virtual {v0, v2}, Lgdv;->x(Lgei;)V

    goto :goto_2

    :cond_a
    if-eqz v5, :cond_b

    iget-object v1, v0, Lgdv;->i:Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;->i()V

    :cond_b
    iget-object v0, v0, Lgdv;->d:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    return-void

    :catchall_3
    move-exception v0

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v0

    :pswitch_9
    iget-object v0, p0, Lfzr;->a:Ljava/lang/Object;

    check-cast v0, Lgdv;

    iget-object v1, v0, Lgdv;->o:Lmwn;

    new-instance v2, Lfun;

    const/4 v3, 0x5

    invoke-direct {v2, v0, v3}, Lfun;-><init>(Lgdv;I)V

    invoke-static {v1, v2}, Lj$/util/Collection$-EL;->forEach(Ljava/util/Collection;Ljava/util/function/Consumer;)V

    iget-object v1, v0, Lgdv;->n:Lgdm;

    invoke-virtual {v0}, Lgdv;->B()Z

    move-result v0

    invoke-virtual {v1, v0}, Lgdm;->i(Z)V

    return-void

    :pswitch_a
    iget-object v0, p0, Lfzr;->a:Ljava/lang/Object;

    check-cast v0, Lgcr;

    iget-object v1, v0, Lgcr;->a:Lfbz;

    sget v0, Lmvv;->d:I

    const/4 v2, 0x1

    const-string v3, "api2_lost_images"

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    sget-object v9, Lmyu;->a:Lmvv;

    sget-object v10, Lkbo;->m:Lkbo;

    const/4 v11, 0x0

    move-object v8, v9

    invoke-interface/range {v1 .. v11}, Lfbz;->V(ILjava/lang/String;Ljava/lang/Throwable;IIILjava/util/List;Ljava/util/List;Lkbo;Z)V

    return-void

    :pswitch_b
    iget-object v0, p0, Lfzr;->a:Ljava/lang/Object;

    check-cast v0, Lgap;

    iget-object v0, v0, Lgap;->c:Ljvx;

    invoke-static {v0}, Llkj;->C(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljvx;->c()V

    return-void

    :pswitch_c
    iget-object v0, p0, Lfzr;->a:Ljava/lang/Object;

    check-cast v0, Lfzu;

    iget-boolean v1, v0, Lfzu;->a:Z

    if-nez v1, :cond_c

    iget-object v1, v0, Lfzu;->b:Lfzv;

    iget-object v1, v1, Lfzv;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_c

    iput-boolean v2, v0, Lfzu;->a:Z

    iget-object v0, v0, Lfzu;->b:Lfzv;

    invoke-virtual {v0}, Lfzv;->g()V

    :cond_c
    return-void

    :pswitch_d
    iget-object v0, p0, Lfzr;->a:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lfzt;

    invoke-virtual {v3}, Lfzt;->c()V

    iget-object v3, v3, Lfzt;->d:Lfzv;

    iget-object v3, v3, Lfzv;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_10

    monitor-enter v0

    :try_start_5
    move-object v3, v0

    check-cast v3, Lfzt;

    iget v3, v3, Lfzt;->b:I

    add-int/2addr v3, v2

    move-object v5, v0

    check-cast v5, Lfzt;

    iput v3, v5, Lfzt;->b:I

    move-object v5, v0

    check-cast v5, Lfzt;

    iget v5, v5, Lfzt;->a:I

    if-gt v3, v5, :cond_d

    goto :goto_3

    :cond_d
    const/4 v2, 0x0

    :goto_3
    invoke-static {v2}, Lmoz;->p(Z)V

    move-object v2, v0

    check-cast v2, Lfzt;

    iget v2, v2, Lfzt;->b:I

    int-to-float v2, v2

    move-object v3, v0

    check-cast v3, Lfzt;

    iget v3, v3, Lfzt;->a:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    cmpl-float v1, v2, v1

    if-nez v1, :cond_e

    move-object v1, v0

    check-cast v1, Lfzt;

    iget-object v1, v1, Lfzt;->d:Lfzv;

    iget-object v1, v1, Lfzv;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_e
    move-object v1, v0

    check-cast v1, Lfzt;

    iget-wide v3, v1, Lfzt;->c:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_f

    move-object v1, v0

    check-cast v1, Lfzt;

    iget-object v1, v1, Lfzt;->d:Lfzv;

    iget-object v1, v1, Lfzv;->a:Lfte;

    iget-object v1, v1, Lfte;->b:Lftf;

    invoke-interface {v1, v2, v3, v4}, Lftf;->f(FJ)V

    goto :goto_4

    :cond_f
    move-object v1, v0

    check-cast v1, Lfzt;

    iget v1, v1, Lfzt;->a:I

    move-object v3, v0

    check-cast v3, Lfzt;

    iget v3, v3, Lfzt;->b:I

    sub-int/2addr v1, v3

    move-object v3, v0

    check-cast v3, Lfzt;

    iget-object v3, v3, Lfzt;->d:Lfzv;

    iget-object v3, v3, Lfzv;->a:Lfte;

    iget-object v3, v3, Lfte;->b:Lftf;

    invoke-interface {v3, v2, v1}, Lftf;->e(FI)V

    :goto_4
    monitor-exit v0

    return-void

    :catchall_4
    move-exception v1

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    throw v1

    :cond_10
    return-void

    :pswitch_e
    iget-object v0, p0, Lfzr;->a:Ljava/lang/Object;

    check-cast v0, Lfzt;

    invoke-virtual {v0}, Lfzt;->c()V

    return-void

    :pswitch_f
    iget-object v0, p0, Lfzr;->a:Ljava/lang/Object;

    check-cast v0, Lfzs;

    invoke-virtual {v0}, Lfzs;->d()V

    return-void

    :pswitch_10
    iget-object v0, p0, Lfzr;->a:Ljava/lang/Object;

    check-cast v0, Lfzs;

    invoke-virtual {v0}, Lfzs;->c()V

    return-void

    :pswitch_11
    iget-object v0, p0, Lfzr;->a:Ljava/lang/Object;

    check-cast v0, Lfzs;

    invoke-virtual {v0}, Lfzs;->i()V

    return-void

    :pswitch_12
    iget-object v0, p0, Lfzr;->a:Ljava/lang/Object;

    check-cast v0, Lfzi;

    iget-object v1, v0, Lfzi;->a:Lkbc;

    const-string v2, "Low Priority OneCamera Shutdown"

    invoke-interface {v1, v2}, Lkbc;->e(Ljava/lang/String;)V

    invoke-virtual {v0}, Lfzi;->a()V

    iget-object v0, v0, Lfzi;->a:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    return-void

    :pswitch_13
    iget-object v0, p0, Lfzr;->a:Ljava/lang/Object;

    check-cast v0, Lfzv;

    iget-object v1, v0, Lfzv;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v0, v0, Lfzv;->a:Lfte;

    iget-object v0, v0, Lfte;->b:Lftf;

    invoke-interface {v0}, Lftf;->a()V

    :cond_11
    return-void

    :cond_12
    iget-object v1, v0, Lghe;->h:Lcbt;

    invoke-virtual {v1}, Lcbt;->d()V

    iget-object v1, v0, Lghe;->h:Lcbt;

    iget-object v0, v0, Lghe;->o:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Lcbt;->b(Ljava/lang/Runnable;)V

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
