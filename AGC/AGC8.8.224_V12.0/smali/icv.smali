.class public final synthetic Licv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/camera/ui/views/MainActivityLayout;I)V
    .locals 0

    iput p2, p0, Licv;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Licv;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/apps/camera/util/ui/GcaTextView;I)V
    .locals 0

    iput p2, p0, Licv;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Licv;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lici;I)V
    .locals 0

    iput p2, p0, Licv;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Licv;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Licy;I)V
    .locals 0

    iput p2, p0, Licv;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Licv;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Liee;I)V
    .locals 0

    iput p2, p0, Licv;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Licv;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Liee;I[B)V
    .locals 0

    iput p2, p0, Licv;->b:I

    iput-object p1, p0, Licv;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lije;I)V
    .locals 0

    iput p2, p0, Licv;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Licv;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lilj;I)V
    .locals 0

    iput p2, p0, Licv;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Licv;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Liof;I)V
    .locals 0

    iput p2, p0, Licv;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Licv;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;I)V
    .locals 0

    iput p2, p0, Licv;->b:I

    iput-object p1, p0, Licv;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljvq;I[B[B)V
    .locals 0

    iput p2, p0, Licv;->b:I

    iput-object p1, p0, Licv;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget v0, p0, Licv;->b:I

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Licv;->a:Ljava/lang/Object;

    check-cast v0, Liof;

    iget-object v0, v0, Liof;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void

    :pswitch_0
    iget-object v0, p0, Licv;->a:Ljava/lang/Object;

    check-cast v0, Liof;

    iget-object v0, v0, Liof;->g:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void

    :pswitch_1
    iget-object v0, p0, Licv;->a:Ljava/lang/Object;

    check-cast v0, Liof;

    iget-object v0, v0, Liof;->l:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    return-void

    :pswitch_2
    iget-object v0, p0, Licv;->a:Ljava/lang/Object;

    check-cast v0, Liof;

    iget-object v0, v0, Liof;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void

    :pswitch_3
    iget-object v0, p0, Licv;->a:Ljava/lang/Object;

    check-cast v0, Liof;

    iget-object v0, v0, Liof;->g:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void

    :pswitch_4
    iget-object v0, p0, Licv;->a:Ljava/lang/Object;

    check-cast v0, Liof;

    iget-object v0, v0, Liof;->l:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :pswitch_5
    iget-object v0, p0, Licv;->a:Ljava/lang/Object;

    check-cast v0, Ljvq;

    iget-boolean v1, v0, Ljvq;->a:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Ljvq;->b:Ljava/lang/Object;

    invoke-static {v0}, Llkj;->C(Ljava/lang/Object;)V

    iget-object v0, p0, Licv;->a:Ljava/lang/Object;

    check-cast v0, Ljvq;

    iget-object v0, v0, Ljvq;->c:Ljava/lang/Object;

    invoke-static {v0}, Llkj;->C(Ljava/lang/Object;)V

    iget-object v0, p0, Licv;->a:Ljava/lang/Object;

    check-cast v0, Ljvq;

    iget-object v1, v0, Ljvq;->c:Ljava/lang/Object;

    iget-object v0, v0, Ljvq;->b:Ljava/lang/Object;

    check-cast v0, Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    invoke-interface {v1, v0}, Lioe;->b(I)V

    iget-object v0, p0, Licv;->a:Ljava/lang/Object;

    check-cast v0, Ljvq;

    iget-object v0, v0, Ljvq;->b:Ljava/lang/Object;

    check-cast v0, Landroid/widget/VideoView;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, p0, v1, v2}, Landroid/widget/VideoView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_6
    iget-object v0, p0, Licv;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/apps/camera/util/ui/GcaTextView;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/util/ui/GcaTextView;->setSelected(Z)V

    return-void

    :pswitch_7
    iget-object v0, p0, Licv;->a:Ljava/lang/Object;

    check-cast v0, Lilj;

    iget-object v1, v0, Lilj;->e:Lgzm;

    sget-object v3, Lgzd;->ag:Lgzs;

    invoke-interface {v1, v3}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, v2

    iget-object v2, v0, Lilj;->f:Lgzn;

    sget-object v3, Lgzd;->ag:Lgzs;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lgzn;->e(Lgzb;Ljava/lang/Object;)V

    iget-object v4, v0, Lilj;->g:Lfbz;

    const/16 v5, 0x8

    iget-wide v6, v0, Lilj;->l:J

    iget-wide v8, v0, Lilj;->i:J

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v4 .. v11}, Lfbz;->al(IJJII)V

    return-void

    :pswitch_8
    iget-object v0, p0, Licv;->a:Ljava/lang/Object;

    check-cast v0, Lilj;

    iget-object v0, v0, Lilj;->b:Lill;

    invoke-interface {v0}, Lill;->f()V

    return-void

    :pswitch_9
    iget-object v0, p0, Licv;->a:Ljava/lang/Object;

    check-cast v0, Lije;

    iget-object v1, v0, Lije;->h:Lgeh;

    invoke-interface {v1}, Lgeh;->e()Lnou;

    move-result-object v1

    new-instance v2, Licv;

    const/4 v3, 0x6

    invoke-direct {v2, v0, v3}, Licv;-><init>(Lije;I)V

    sget-object v0, Lnnv;->a:Lnnv;

    invoke-interface {v1, v2, v0}, Lnou;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void

    :pswitch_a
    iget-object v0, p0, Licv;->a:Ljava/lang/Object;

    check-cast v0, Lije;

    iget-object v1, v0, Lije;->d:Lfey;

    invoke-virtual {v1}, Lfey;->g()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lije;->k:Ldhi;

    sget-object v4, Ldhv;->a:Ldhk;

    invoke-interface {v1}, Ldhi;->d()V

    iget-object v1, v0, Lije;->q:Lgzm;

    sget-object v4, Lgzd;->ax:Lgzs;

    invoke-interface {v1, v4}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljfc;->j(I)I

    move-result v1

    if-eq v1, v2, :cond_3

    iget-object v1, v0, Lije;->i:Ldbf;

    invoke-virtual {v1}, Ldbf;->d()Lklv;

    move-result-object v1

    sget-object v4, Lklv;->a:Lklv;

    if-ne v1, v4, :cond_1

    iget-object v1, v0, Lije;->m:Ljvs;

    check-cast v1, Ljvk;

    iget-object v1, v1, Ljvk;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    sget-object v4, Lgcc;->c:Lgcc;

    iget-object v4, v4, Lgcc;->d:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    iget-object v1, v0, Lije;->i:Ldbf;

    invoke-virtual {v1}, Ldbf;->d()Lklv;

    move-result-object v1

    sget-object v4, Lklv;->b:Lklv;

    if-ne v1, v4, :cond_2

    iget-object v1, v0, Lije;->l:Ljvs;

    check-cast v1, Ljvk;

    iget-object v1, v1, Ljvk;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    sget-object v4, Lgcc;->c:Lgcc;

    iget-object v4, v4, Lgcc;->d:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lije;->n:Lebl;

    iget-object v1, v1, Lebl;->b:Ljvs;

    invoke-interface {v1}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Lije;->o:Lhmb;

    invoke-virtual {v1}, Lhmb;->a()Ljvs;

    move-result-object v1

    invoke-interface {v1}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iget-object v4, v0, Lije;->g:Ljvs;

    invoke-interface {v4}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgyq;

    iget-object v5, v0, Lije;->f:Ldqj;

    invoke-virtual {v5}, Ldqj;->c()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, v0, Lije;->k:Ldhi;

    sget-object v6, Ldhc;->e:Ldhj;

    invoke-interface {v5, v6}, Ldhi;->l(Ldhj;)Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v5, Lgyq;->a:Lgyq;

    if-eq v4, v5, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    if-eqz v1, :cond_5

    iget-object v1, v0, Lije;->h:Lgeh;

    invoke-interface {v1}, Lgeh;->t()V

    :cond_5
    if-eqz v2, :cond_6

    iget-object v0, v0, Lije;->h:Lgeh;

    invoke-interface {v0, v4}, Lgeh;->r(Lgyq;)V

    :cond_6
    return-void

    :pswitch_b
    iget-object v0, p0, Licv;->a:Ljava/lang/Object;

    check-cast v0, Lije;

    iget-object v1, v0, Lije;->b:Ljuh;

    new-instance v2, Licv;

    const/16 v3, 0xa

    invoke-direct {v2, v0, v3}, Licv;-><init>(Lije;I)V

    invoke-virtual {v1, v2}, Ljuh;->c(Ljava/lang/Runnable;)V

    return-void

    :pswitch_c
    iget-object v0, p0, Licv;->a:Ljava/lang/Object;

    check-cast v0, Lije;

    iget-object v1, v0, Lije;->b:Ljuh;

    new-instance v2, Licv;

    const/16 v3, 0x9

    invoke-direct {v2, v0, v3}, Licv;-><init>(Lije;I)V

    invoke-virtual {v1, v2}, Ljuh;->c(Ljava/lang/Runnable;)V

    return-void

    :pswitch_d
    iget-object v0, p0, Licv;->a:Ljava/lang/Object;

    check-cast v0, Lije;

    iget-object v0, v0, Lije;->h:Lgeh;

    sget-object v1, Lgyq;->a:Lgyq;

    invoke-interface {v0, v1}, Lgeh;->r(Lgyq;)V

    return-void

    :pswitch_e
    iget-object v0, p0, Licv;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->invalidate()V

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void

    :pswitch_f
    iget-object v0, p0, Licv;->a:Ljava/lang/Object;

    check-cast v0, Liee;

    iput v2, v0, Liee;->a:I

    invoke-virtual {v0}, Liee;->k()V

    return-void

    :pswitch_10
    iget-object v0, p0, Licv;->a:Ljava/lang/Object;

    check-cast v0, Liee;

    invoke-virtual {v0}, Liee;->f()V

    return-void

    :pswitch_11
    iget-object v0, p0, Licv;->a:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lidq;

    invoke-interface {v1}, Lidq;->a()V

    goto :goto_2

    :cond_7
    return-void

    :pswitch_12
    iget-object v0, p0, Licv;->a:Ljava/lang/Object;

    check-cast v0, Lici;

    iget-object v0, v0, Lici;->b:Ljvk;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljvk;->bn(Ljava/lang/Object;)V

    return-void

    :pswitch_13
    iget-object v0, p0, Licv;->a:Ljava/lang/Object;

    check-cast v0, Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

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
