.class public final Lhqp;
.super Ljava/lang/Object;

# interfaces
.implements Lhqm;
.implements Lfaz;
.implements Lfan;
.implements Lfax;
.implements Lfay;
.implements Lezh;
.implements Lezd;


# instance fields
.field public final a:Landroid/app/Activity;

.field public final b:Lcgy;

.field public final c:Ljwb;

.field public final d:Lgeh;

.field public final e:Lcdp;

.field public final f:Lgzm;

.field public final g:Lfkz;

.field public h:Leg;

.field public final i:Lgen;

.field private final j:Lmqp;

.field private final k:Lhqu;

.field private final l:Ljwb;

.field private final m:Z

.field private final n:Ldhi;

.field private final o:Ljuh;

.field private final p:Lgzn;

.field private final q:Lgto;

.field private final r:Ljew;

.field private final s:Ljew;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lmqp;Lcgy;Ljew;Lhqu;Ljwb;Ljwb;Lfak;ZLdhi;Ljuh;Lgeh;Lcdp;Lgzm;Lgzn;Lfkz;Lgto;Ljew;[B[B[B)V
    .locals 5

    move-object v0, p0

    move-object/from16 v1, p11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lhqo;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lhqo;-><init>(Lhqp;I)V

    iput-object v2, v0, Lhqp;->i:Lgen;

    move-object v2, p1

    iput-object v2, v0, Lhqp;->a:Landroid/app/Activity;

    move-object v2, p2

    iput-object v2, v0, Lhqp;->j:Lmqp;

    move-object v2, p3

    iput-object v2, v0, Lhqp;->b:Lcgy;

    move-object v2, p4

    iput-object v2, v0, Lhqp;->s:Ljew;

    move-object v2, p5

    iput-object v2, v0, Lhqp;->k:Lhqu;

    move-object v2, p6

    iput-object v2, v0, Lhqp;->c:Ljwb;

    move-object v2, p7

    iput-object v2, v0, Lhqp;->l:Ljwb;

    move v2, p9

    iput-boolean v2, v0, Lhqp;->m:Z

    move-object v2, p10

    iput-object v2, v0, Lhqp;->n:Ldhi;

    iput-object v1, v0, Lhqp;->o:Ljuh;

    move-object/from16 v2, p12

    iput-object v2, v0, Lhqp;->d:Lgeh;

    move-object/from16 v2, p13

    iput-object v2, v0, Lhqp;->e:Lcdp;

    move-object/from16 v2, p14

    iput-object v2, v0, Lhqp;->f:Lgzm;

    move-object/from16 v2, p15

    iput-object v2, v0, Lhqp;->p:Lgzn;

    move-object/from16 v2, p16

    iput-object v2, v0, Lhqp;->g:Lfkz;

    move-object/from16 v2, p17

    iput-object v2, v0, Lhqp;->q:Lgto;

    move-object/from16 v2, p18

    iput-object v2, v0, Lhqp;->r:Ljew;

    new-instance v2, Lhqn;

    move-object v4, p8

    invoke-direct {v2, p0, p8, v3}, Lhqn;-><init>(Lhqp;Lfak;I)V

    invoke-virtual {v1, v2}, Ljuh;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final f()V
    .locals 10

    iget-object v0, p0, Lhqp;->n:Ldhi;

    sget-object v1, Ldho;->bl:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lhqp;->n:Ldhi;

    sget-object v1, Ldho;->bg:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lhqp;->q:Lgto;

    iget-boolean v0, v0, Lgto;->a:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lhqp;->r:Ljew;

    invoke-virtual {v0}, Ljew;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lhqp;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lhqp;->f:Lgzm;

    sget-object v2, Lgzd;->i:Lgzs;

    invoke-interface {v1, v2}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lhqp;->n:Ldhi;

    sget-object v3, Ldho;->t:Ldhk;

    invoke-interface {v2, v3}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v1, v2, :cond_7

    invoke-static {v0}, Lcdg;->i(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    :cond_1
    const/4 v0, -0x1

    add-int/2addr v2, v0

    const/4 v3, 0x1

    if-ne v1, v2, :cond_6

    iget-object v2, p0, Lhqp;->s:Ljew;

    invoke-static {}, Ljuh;->a()V

    iget-object v2, v2, Ljew;->a:Ljava/lang/Object;

    invoke-static {}, Ljuh;->a()V

    check-cast v2, Lhqr;

    iget-object v4, v2, Lhqr;->f:Ljava/lang/Object;

    if-nez v4, :cond_5

    new-instance v4, Landroid/widget/FrameLayout;

    iget-object v5, v2, Lhqr;->b:Ljava/lang/Object;

    check-cast v5, Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iget-object v5, v2, Lhqr;->b:Ljava/lang/Object;

    check-cast v5, Landroid/content/Context;

    const v6, 0x7f0e004e

    invoke-static {v5, v6, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v5, 0x7f0b0173

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    new-instance v6, Lgdu;

    const/4 v7, 0x7

    invoke-direct {v6, v2, v7}, Lgdu;-><init>(Lhqr;I)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, v2, Lhqr;->d:Ljava/lang/Object;

    check-cast v5, Lkog;

    invoke-virtual {v5}, Lkog;->j()Z

    move-result v5

    if-eq v3, v5, :cond_2

    const v5, 0x7f130011

    goto :goto_0

    :cond_2
    const v5, 0x7f130012

    :goto_0
    iget-object v6, v2, Lhqr;->b:Ljava/lang/Object;

    check-cast v6, Landroid/content/Context;

    invoke-static {v6, v5}, Lbgd;->c(Landroid/content/Context;I)Lbgp;

    move-result-object v5

    iget-object v5, v5, Lbgp;->a:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v2, Lhqr;->e:Ljava/lang/Object;

    check-cast v6, Lbgj;

    check-cast v5, Lbga;

    invoke-virtual {v6, v5}, Lbgj;->q(Lbga;)Z

    iget-object v5, v2, Lhqr;->e:Ljava/lang/Object;

    check-cast v5, Lbgj;

    invoke-virtual {v5, v0}, Lbgj;->o(I)V

    const v0, 0x7f0b008d

    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const v5, 0x7f0b008c

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;

    invoke-virtual {v5}, Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v7, v2, Lhqr;->c:Ljava/lang/Object;

    check-cast v7, Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v7, v8

    iget v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v7, v8

    iget-object v8, v2, Lhqr;->c:Ljava/lang/Object;

    check-cast v8, Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v9, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v8, v9

    iget v9, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v8, v9

    iget v9, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v9, v9

    int-to-float v7, v7

    cmpl-float v9, v9, v7

    if-lez v9, :cond_3

    iget v0, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v0, v0

    iget v8, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v8, v8

    div-float/2addr v0, v8

    mul-float v0, v0, v7

    float-to-int v7, v7

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    float-to-int v0, v0

    iput v0, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v5, v6}, Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_3
    int-to-float v7, v8

    iget v8, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v8, v8

    cmpl-float v8, v8, v7

    if-lez v8, :cond_4

    iget v8, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v8, v8

    iget v9, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    mul-float v8, v8, v7

    float-to-int v8, v8

    iput v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    float-to-int v7, v7

    iput v7, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v5, v6}, Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    :goto_1
    iget-object v0, v2, Lhqr;->e:Ljava/lang/Object;

    iget-object v6, v2, Lhqr;->b:Ljava/lang/Object;

    check-cast v6, Landroid/content/Context;

    const v7, 0x7f14015f

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v0, v6}, Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;->b(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    iput-object v4, v2, Lhqr;->f:Ljava/lang/Object;

    :cond_5
    iget-object v0, v2, Lhqr;->e:Ljava/lang/Object;

    check-cast v0, Lbgj;

    invoke-virtual {v0}, Lbgj;->k()V

    iget-object v0, v2, Lhqr;->a:Ljava/lang/Object;

    iget-object v2, v2, Lhqr;->f:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v2, Landroid/view/View;

    check-cast v0, Lhrz;

    const/16 v4, 0x8

    const v5, 0x7f140160

    invoke-virtual {v0, v4, v5, v2}, Lhrz;->l(IILandroid/view/View;)V

    :cond_6
    iget-object v0, p0, Lhqp;->p:Lgzn;

    add-int/2addr v1, v3

    sget-object v2, Lgzd;->i:Lgzs;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lgzn;->e(Lgzb;Ljava/lang/Object;)V

    return-void

    :cond_7
    :goto_2
    iget-object v0, p0, Lhqp;->p:Lgzn;

    sget-object v1, Lgzd;->i:Lgzs;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lgzn;->e(Lgzb;Ljava/lang/Object;)V

    return-void

    :cond_8
    :goto_3
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    iget-object v0, p0, Lhqp;->n:Ldhi;

    sget-object v1, Ldho;->bg:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lhqp;->m:Z

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lhqp;->b:Lcgy;

    invoke-interface {v0}, Lcgy;->l()Lika;

    move-result-object v0

    if-eqz v0, :cond_6

    sget-object v3, Lika;->h:Lika;

    invoke-virtual {v0, v3}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    sget-object v3, Lika;->i:Lika;

    invoke-virtual {v0, v3}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object v0, p0, Lhqp;->c:Ljwb;

    invoke-interface {v0}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lhqp;->o:Ljuh;

    new-instance v1, Lhph;

    const/16 v2, 0xb

    invoke-direct {v1, p0, v2}, Lhph;-><init>(Lhqp;I)V

    invoke-virtual {v0, v1}, Ljuh;->c(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lhqp;->b()V

    iget-object v0, p0, Lhqp;->a:Landroid/app/Activity;

    const v3, 0x7f0b0053

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v3, p0, Lhqp;->a:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    iget-object v3, p0, Lhqp;->k:Lhqu;

    iget-object v4, v3, Lhqu;->b:Ljwb;

    invoke-interface {v4}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    iget-object v4, v3, Lhqu;->c:Ljwb;

    invoke-interface {v4}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, v3, Lhqu;->d:Ljwb;

    invoke-interface {v4}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v0, v3, Lhqu;->c:Ljwb;

    invoke-interface {v0, v2}, Ljwb;->bn(Ljava/lang/Object;)V

    return-void

    :cond_4
    iget-object v4, v3, Lhqu;->e:Lell;

    new-instance v5, Lhqk;

    invoke-direct {v5}, Lhqk;-><init>()V

    iput-object v0, v5, Lhqk;->b:Landroid/view/ViewGroup;

    sget-object v0, Lhqu;->a:Lj$/time/Duration;

    iput-object v0, v5, Lhqk;->a:Lj$/time/Duration;

    iput-object v4, v5, Lhqk;->f:Lell;

    const/4 v0, 0x4

    iput v0, v5, Lhqk;->h:I

    iput-boolean v1, v5, Lhqk;->d:Z

    iget-object v0, v3, Lhqu;->f:Lgeh;

    iput-object v0, v5, Lhqk;->e:Lgeh;

    iget-object v0, v3, Lhqu;->g:Lfbz;

    iput-object v0, v5, Lhqk;->g:Lfbz;

    invoke-virtual {v5}, Lhqk;->a()Lhql;

    move-result-object v0

    invoke-interface {v4, v0}, Lell;->d(Lelk;)Lkad;

    iget-object v0, v3, Lhqu;->c:Ljwb;

    invoke-interface {v0, v2}, Ljwb;->bn(Ljava/lang/Object;)V

    return-void

    :cond_5
    :goto_0
    return-void

    :cond_6
    :goto_1
    return-void

    :cond_7
    :goto_2
    iget-object v0, p0, Lhqp;->c:Ljwb;

    invoke-interface {v0, v2}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object v0, p0, Lhqp;->l:Ljwb;

    invoke-interface {v0, v2}, Ljwb;->bn(Ljava/lang/Object;)V

    return-void
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lhqp;->j:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lhqp;->j:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldnd;

    iget-object v1, p0, Lhqp;->p:Lgzn;

    sget-object v2, Lgzd;->aw:Lgzt;

    invoke-interface {v1, v2}, Lgzn;->b(Lgzb;)Ljwb;

    iget-object v1, p0, Lhqp;->b:Lcgy;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Ldnd;->a()V

    return-void
.end method

.method public final bL(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Lhqp;->f()V

    return-void
.end method

.method public final bO()V
    .locals 1

    iget-object v0, p0, Lhqp;->h:Leg;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lhqp;->a()V

    :cond_0
    return-void
.end method

.method public final bQ()V
    .locals 0

    invoke-direct {p0}, Lhqp;->f()V

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lhqp;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lhqp;->h:Leg;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Leg;->show()V

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lhqp;->h:Leg;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lff;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lhqp;->h:Leg;

    :cond_0
    iget-object v0, p0, Lhqp;->s:Ljew;

    invoke-static {}, Ljuh;->a()V

    iget-object v0, v0, Ljew;->a:Ljava/lang/Object;

    check-cast v0, Lhqr;

    invoke-virtual {v0}, Lhqr;->a()V

    return-void
.end method

.method public final y(Landroid/content/res/Configuration;)V
    .locals 0

    iget-object p1, p0, Lhqp;->h:Leg;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lff;->dismiss()V

    const/4 p1, 0x0

    iput-object p1, p0, Lhqp;->h:Leg;

    invoke-virtual {p0}, Lhqp;->a()V

    :cond_0
    return-void
.end method
