.class public final synthetic Lhph;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/camera/toast/ToastView;I)V
    .locals 0

    iput p2, p0, Lhph;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhph;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcvr;I[B[B[B[B)V
    .locals 0

    iput p2, p0, Lhph;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhph;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhpq;I)V
    .locals 0

    iput p2, p0, Lhph;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhph;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhqp;I)V
    .locals 0

    iput p2, p0, Lhph;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhph;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhqv;I)V
    .locals 0

    iput p2, p0, Lhph;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhph;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhra;I)V
    .locals 0

    iput p2, p0, Lhph;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhph;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhrf;I)V
    .locals 0

    iput p2, p0, Lhph;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhph;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhrz;I)V
    .locals 0

    iput p2, p0, Lhph;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhph;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lhtg;I)V
    .locals 0

    iput p2, p0, Lhph;->b:I

    iput-object p1, p0, Lhph;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lhtz;I)V
    .locals 0

    iput p2, p0, Lhph;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhph;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lkad;I)V
    .locals 0

    iput p2, p0, Lhph;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhph;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    iget v0, p0, Lhph;->b:I

    const/16 v1, 0x8

    const/4 v2, 0x2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lhph;->a:Ljava/lang/Object;

    check-cast v0, Lhtz;

    invoke-virtual {v0}, Lhtz;->s()Lcom/google/android/apps/camera/ui/gridlines/GridLinesUi;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/google/android/apps/camera/ui/gridlines/GridLinesUi;->setVisibility(I)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lhph;->a:Ljava/lang/Object;

    check-cast v0, Lcvr;

    invoke-virtual {v0}, Lcvr;->u()V

    return-void

    :pswitch_1
    iget-object v0, p0, Lhph;->a:Ljava/lang/Object;

    check-cast v0, Lhtd;

    invoke-virtual {v0}, Lhtd;->a()V

    return-void

    :pswitch_2
    iget-object v0, p0, Lhph;->a:Ljava/lang/Object;

    check-cast v0, Lhrz;

    iget-object v0, v0, Lhrz;->d:Lmgf;

    if-eqz v0, :cond_0

    const v2, 0x7f0b030c

    invoke-virtual {v0, v2}, Lff;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Landroidx/core/widget/NestedScrollView;->removeAllViews()V

    invoke-virtual {v0}, Lmgf;->cancel()V

    const v2, 0x7f0b0090

    invoke-virtual {v0, v2}, Lff;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :pswitch_3
    iget-object v0, p0, Lhph;->a:Ljava/lang/Object;

    check-cast v0, Lhra;

    invoke-virtual {v0, v6}, Lhra;->k(Z)V

    return-void

    :pswitch_4
    iget-object v0, p0, Lhph;->a:Ljava/lang/Object;

    check-cast v0, Lhra;

    invoke-virtual {v0, v5}, Lhra;->k(Z)V

    return-void

    :pswitch_5
    iget-object v0, p0, Lhph;->a:Ljava/lang/Object;

    invoke-interface {v0}, Lhrf;->close()V

    return-void

    :pswitch_6
    iget-object v0, p0, Lhph;->a:Ljava/lang/Object;

    check-cast v0, Lhqv;

    invoke-virtual {v0}, Lhqv;->h()V

    return-void

    :pswitch_7
    iget-object v0, p0, Lhph;->a:Ljava/lang/Object;

    invoke-interface {v0}, Lkad;->close()V

    return-void

    :pswitch_8
    iget-object v0, p0, Lhph;->a:Ljava/lang/Object;

    check-cast v0, Lhqp;

    iget-object v2, v0, Lhqp;->f:Lgzm;

    sget-object v3, Lgzd;->b:Lgzr;

    invoke-interface {v2, v3}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, v0, Lhqp;->f:Lgzm;

    sget-object v4, Lgzd;->ax:Lgzs;

    invoke-interface {v3, v4}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v5, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-nez v2, :cond_3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, v0, Lhqp;->c:Ljwb;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljwb;->bn(Ljava/lang/Object;)V

    return-void

    :cond_3
    :goto_1
    iget-object v4, v0, Lhqp;->h:Leg;

    if-eqz v4, :cond_4

    invoke-virtual {v0}, Lhqp;->c()V

    return-void

    :cond_4
    iget-object v4, v0, Lhqp;->d:Lgeh;

    iget-object v7, v0, Lhqp;->i:Lgen;

    invoke-interface {v4, v7}, Lgeh;->n(Lgen;)V

    invoke-static {}, Ljuh;->a()V

    new-instance v4, Lmgv;

    iget-object v7, v0, Lhqp;->a:Landroid/app/Activity;

    const v8, 0x7f1503e3

    invoke-direct {v4, v7, v8}, Lmgv;-><init>(Landroid/content/Context;I)V

    new-instance v7, Lcdc;

    const/16 v8, 0x12

    invoke-direct {v7, v0, v8}, Lcdc;-><init>(Lhqp;I)V

    const v8, 0x7f1401a4

    invoke-virtual {v4, v8, v7}, Lmgv;->q(ILandroid/content/DialogInterface$OnClickListener;)V

    sget v7, Lcom/agc/Res$string;->gcam_tools_title:I

    invoke-virtual {v4, v7}, Lmgv;->s(I)V

    new-instance v7, Lhqt;

    iget-object v8, v0, Lhqp;->a:Landroid/app/Activity;

    invoke-direct {v7, v8}, Lhqt;-><init>(Landroid/content/Context;)V

    iget-object v8, v0, Lhqp;->b:Lcgy;

    iget-object v9, v0, Lhqp;->d:Lgeh;

    iget-object v10, v0, Lhqp;->e:Lcdp;

    iget-object v11, v0, Lhqp;->g:Lfkz;

    iget-boolean v12, v7, Lhqt;->a:Z

    if-eqz v12, :cond_5

    goto/16 :goto_4

    :cond_5
    invoke-static {}, Ljuh;->a()V

    invoke-virtual {v7}, Lhqt;->getContext()Landroid/content/Context;

    move-result-object v12

    move-object v14, v12

    const v13, 0x7f0e0058

    invoke-static {v12, v13, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v12, 0x7f0b0155

    invoke-virtual {v7, v12}, Lhqt;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    invoke-interface {v10}, Lcdp;->c()Z

    move-result v10

    if-eqz v10, :cond_6

    if-eqz v2, :cond_6

    const v2, 0x7f0b0308

    invoke-virtual {v7, v2}, Lhqt;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v10, Lgdu;

    invoke-direct {v10, v8, v1}, Lgdu;-><init>(Lcgy;I)V

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0b0492

    invoke-virtual {v7, v2}, Lhqt;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v10, Lgdu;

    const v1, 0x14

    invoke-direct {v10, v14, v1}, Lgdu;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0b0493

    invoke-virtual {v7, v2}, Lhqt;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v10, Lgdu;

    const v1, 0x15

    invoke-direct {v10, v14, v1}, Lgdu;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0b0494

    invoke-virtual {v7, v2}, Lhqt;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v10, Lgdu;

    const v1, 0x16

    invoke-direct {v10, v14, v1}, Lgdu;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_6
    const v1, 0x7f0b01e3

    invoke-virtual {v7, v1}, Lhqt;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    :goto_2
    if-eqz v3, :cond_7

    const v1, 0x7f0b0270

    invoke-virtual {v7, v1}, Lhqt;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Lgdu;

    const/16 v3, 0x9

    invoke-direct {v2, v9, v3}, Lgdu;-><init>(Lgeh;I)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0b023f

    invoke-virtual {v7, v1}, Lhqt;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lgdu;

    const/16 v3, 0xa

    invoke-direct {v2, v11, v3}, Lgdu;-><init>(Lfkz;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    :cond_7
    const v1, 0x7f0b023e

    invoke-virtual {v7, v1}, Lhqt;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    :goto_3
    iput-boolean v5, v7, Lhqt;->a:Z

    :goto_4
    new-instance v7, Lcom/agc/widget/FirstRunEducationView;

    iget-object v1, v0, Lhqp;->a:Landroid/app/Activity;

    invoke-direct {v7, v1}, Lcom/agc/widget/FirstRunEducationView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v7}, Lmgv;->u(Landroid/view/View;)V

    iget-object v1, v0, Lhqp;->d:Lgeh;

    iget-object v2, v0, Lhqp;->i:Lgen;

    invoke-interface {v1, v2}, Lgeh;->g(Lgen;)V

    invoke-virtual {v4}, Lef;->b()Leg;

    move-result-object v1

    iput-object v1, v0, Lhqp;->h:Leg;

    iget-object v1, v0, Lhqp;->h:Leg;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v6}, Leg;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Lhqp;->c()V

    return-void

    :pswitch_9
    iget-object v0, p0, Lhph;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/google/android/apps/camera/toast/ToastView;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/toast/ToastView;->c()V

    :try_start_0
    move-object v2, v0

    check-cast v2, Lcom/google/android/apps/camera/toast/ToastView;

    iget-object v2, v2, Lcom/google/android/apps/camera/toast/ToastView;->m:Landroid/widget/PopupWindow;

    check-cast v0, Lcom/google/android/apps/camera/toast/ToastView;

    iget-object v0, v0, Lcom/google/android/apps/camera/toast/ToastView;->n:Landroid/view/View;

    invoke-virtual {v2, v0, v6, v6, v6}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    sget-object v2, Lcom/google/android/apps/camera/toast/ToastView;->f:Lnak;

    invoke-virtual {v2}, Lnaf;->b()Lnaz;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Cannot show the toast. Error = %s"

    const/16 v4, 0xf40

    invoke-static {v2, v3, v0, v4}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    :goto_5
    iget-object v0, v1, Lcom/google/android/apps/camera/toast/ToastView;->i:Ljava/lang/Runnable;

    iget-wide v2, v1, Lcom/google/android/apps/camera/toast/ToastView;->h:J

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/apps/camera/toast/ToastView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_a
    iget-object v0, p0, Lhph;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/apps/camera/toast/ToastView;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/toast/ToastView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/apps/camera/toast/ToastView;->k:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/camera/toast/ToastView;->e:Lj$/time/Duration;

    invoke-virtual {v2}, Lj$/time/Duration;->toMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v0, v0, Lcom/google/android/apps/camera/toast/ToastView;->g:F

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    :pswitch_b
    iget-object v0, p0, Lhph;->a:Ljava/lang/Object;

    check-cast v0, Lhpq;

    iget-object v0, v0, Lhpq;->y:Lgft;

    const-class v1, Lhpq;

    invoke-interface {v0, v1}, Lgft;->b(Ljava/lang/Class;)V

    return-void

    :pswitch_c
    iget-object v0, p0, Lhph;->a:Ljava/lang/Object;

    check-cast v0, Lhpq;

    iget-object v1, v0, Lhpq;->k:Ljuh;

    new-instance v2, Lhph;

    const/4 v3, 0x3

    invoke-direct {v2, v0, v3}, Lhph;-><init>(Lhpq;I)V

    invoke-virtual {v1, v2}, Ljuh;->c(Ljava/lang/Runnable;)V

    return-void

    :pswitch_d
    iget-object v0, p0, Lhph;->a:Ljava/lang/Object;

    check-cast v0, Lhpq;

    iget-object v1, v0, Lhpq;->k:Ljuh;

    new-instance v2, Lhph;

    const/4 v3, 0x4

    invoke-direct {v2, v0, v3}, Lhph;-><init>(Lhpq;I)V

    invoke-virtual {v1, v2}, Ljuh;->c(Ljava/lang/Runnable;)V

    return-void

    :pswitch_e
    iget-object v0, p0, Lhph;->a:Ljava/lang/Object;

    check-cast v0, Lhpq;

    iget-object v1, v0, Lhpq;->k:Ljuh;

    new-instance v2, Lhph;

    invoke-direct {v2, v0, v5}, Lhph;-><init>(Lhpq;I)V

    invoke-virtual {v1, v2}, Ljuh;->c(Ljava/lang/Runnable;)V

    return-void

    :pswitch_f
    iget-object v0, p0, Lhph;->a:Ljava/lang/Object;

    check-cast v0, Lhpq;

    iget-object v1, v0, Lhpq;->M:Landroid/widget/TextView;

    if-nez v1, :cond_8

    goto :goto_7

    :cond_8
    iget-object v2, v0, Lhpq;->F:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-eq v1, v3, :cond_a

    iget-object v1, v0, Lhpq;->M:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v3, v0, Lhpq;->T:I

    sub-int v3, v2, v3

    const/16 v4, 0x1e

    if-lt v3, v4, :cond_9

    add-int/lit8 v2, v2, -0x1e

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_6

    :cond_9
    add-int/2addr v2, v4

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :goto_6
    iget-object v0, v0, Lhpq;->M:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_a
    :goto_7
    return-void

    :pswitch_10
    iget-object v0, p0, Lhph;->a:Ljava/lang/Object;

    check-cast v0, Lhpq;

    iget-object v1, v0, Lhpq;->Q:Landroid/view/ViewGroup;

    iget-object v5, v0, Lhpq;->F:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-ne v1, v3, :cond_b

    return-void

    :cond_b
    iget-object v1, v0, Lhpq;->F:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object v1, v0, Lhpq;->F:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->bringToFront()V

    iget-object v1, v0, Lhpq;->F:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v1, v0, Lhpq;->F:Landroid/widget/FrameLayout;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, v0, Lhpq;->I:Landroid/animation/ObjectAnimator;

    iget-object v1, v0, Lhpq;->I:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v2, v0, Lhpq;->o:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lhph;

    const/4 v1, 0x6

    invoke-direct {v3, v0, v1}, Lhph;-><init>(Lhpq;I)V

    const-wide/16 v6, 0x3c

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v4, v6

    invoke-interface/range {v2 .. v8}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    iput-object v1, v0, Lhpq;->L:Ljava/util/concurrent/ScheduledFuture;

    return-void

    :pswitch_11
    iget-object v0, p0, Lhph;->a:Ljava/lang/Object;

    check-cast v0, Lhpq;

    iget-object v0, v0, Lhpq;->y:Lgft;

    const-class v1, Lhpq;

    invoke-interface {v0, v1}, Lgft;->a(Ljava/lang/Class;)V

    return-void

    :pswitch_12
    iget-object v0, p0, Lhph;->a:Ljava/lang/Object;

    check-cast v0, Lhpq;

    iget-object v1, v0, Lhpq;->S:Landroid/view/ViewGroup;

    iget-object v5, v0, Lhpq;->O:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-ne v1, v3, :cond_c

    return-void

    :cond_c
    iget-object v1, v0, Lhpq;->H:Licf;

    if-eqz v1, :cond_d

    iget-object v3, v0, Lhpq;->l:Lell;

    invoke-interface {v3, v1}, Lell;->d(Lelk;)Lkad;

    :cond_d
    iget-object v1, v0, Lhpq;->O:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, v0, Lhpq;->O:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lhpq;->P:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, v0, Lhpq;->P:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->bringToFront()V

    iget-object v1, v0, Lhpq;->P:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lhpq;->O:Landroid/view/View;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    invoke-static {v1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, v0, Lhpq;->I:Landroid/animation/ObjectAnimator;

    iget-object v1, v0, Lhpq;->I:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v1, v0, Lhpq;->i:Ldhi;

    sget-object v2, Ldil;->a:Ldhj;

    invoke-interface {v1}, Ldhi;->c()V

    iget-object v1, v0, Lhpq;->o:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lhph;

    const/4 v3, 0x7

    invoke-direct {v2, v0, v3}, Lhph;-><init>(Lhpq;I)V

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x258

    invoke-interface {v1, v2, v4, v5, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    iput-object v1, v0, Lhpq;->L:Ljava/util/concurrent/ScheduledFuture;

    return-void

    :pswitch_13
    iget-object v0, p0, Lhph;->a:Ljava/lang/Object;

    check-cast v0, Lhpq;

    iget-object v1, v0, Lhpq;->d:Ldbf;

    iget-object v2, v0, Lhpq;->f:Landroid/content/Context;

    iget-object v3, v0, Lhpq;->i:Ldhi;

    iget-object v4, v0, Lhpq;->W:Ldja;

    new-instance v7, Lmvq;

    invoke-direct {v7}, Lmvq;-><init>()V

    sget-object v8, Ldil;->c:Ldhj;

    invoke-interface {v3, v8}, Ldhi;->l(Ldhj;)Z

    move-result v8

    if-eqz v8, :cond_f

    sget-object v8, Ldil;->d:Ldhj;

    invoke-interface {v3, v8}, Ldhi;->l(Ldhj;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {v1}, Ldbf;->d()Lklv;

    move-result-object v1

    invoke-virtual {v4, v2, v1}, Ldja;->m(Landroid/content/Context;Lklv;)Z

    move-result v1

    if-nez v1, :cond_e

    sget-object v1, Ljwu;->i:Ljwu;

    invoke-virtual {v7, v1}, Lmvq;->g(Ljava/lang/Object;)V

    invoke-virtual {v7}, Lmvq;->f()Lmvv;

    move-result-object v1

    goto :goto_8

    :cond_e
    sget-object v1, Ljwu;->i:Ljwu;

    invoke-virtual {v7, v1}, Lmvq;->g(Ljava/lang/Object;)V

    sget-object v1, Ljwu;->k:Ljwu;

    invoke-virtual {v7, v1}, Lmvq;->g(Ljava/lang/Object;)V

    invoke-virtual {v7}, Lmvq;->f()Lmvv;

    move-result-object v1

    goto :goto_8

    :cond_f
    sget-object v1, Ljwu;->g:Ljwu;

    invoke-virtual {v7, v1}, Lmvq;->g(Ljava/lang/Object;)V

    invoke-virtual {v7}, Lmvq;->f()Lmvv;

    move-result-object v1

    :goto_8
    invoke-static {v1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lhfj;->q:Lhfj;

    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lfjd;->r:Lfjd;

    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lhfj;->r:Lhfj;

    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget-object v2, v0, Lhpq;->t:Ljwb;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v5, :cond_10

    iget-object v0, v0, Lhpq;->i:Ldhi;

    sget-object v1, Ldil;->d:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_9

    :cond_10
    const/4 v5, 0x0

    :goto_9
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v2, v0}, Ljwb;->bn(Ljava/lang/Object;)V

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

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
