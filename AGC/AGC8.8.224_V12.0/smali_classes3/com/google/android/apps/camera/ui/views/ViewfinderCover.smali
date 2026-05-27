.class public Lcom/google/android/apps/camera/ui/views/ViewfinderCover;
.super Lcom/google/android/apps/camera/ui/layout/GcaLayout;

# interfaces
.implements Libf;
.implements Ldbv;


# static fields
.field private static final i:Lnak;


# instance fields
.field public c:Landroid/widget/ImageView;

.field public d:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field public e:Z

.field public f:Ljava/util/concurrent/Callable;

.field public final g:Libg;

.field public h:Z

.field private j:Landroid/widget/TextView;

.field private final k:Ldhi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/ui/views/ViewfinderCover"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->i:Lnak;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/camera/ui/layout/GcaLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->e:Z

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->h:Z

    new-instance p2, Libg;

    invoke-direct {p2, p0}, Libg;-><init>(Landroid/view/ViewGroup;)V

    iput-object p2, p0, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->g:Libg;

    check-cast p1, Lcdd;

    invoke-interface {p1}, Lcdd;->a()Ldhi;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->k:Ldhi;

    return-void
.end method

.method private final n(Landroid/graphics/Rect;)I
    .locals 4

    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->a:Lmrl;

    invoke-interface {v0}, Lmrl;->a()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->k:Ldhi;

    sget-object v3, Ldho;->bq:Ldhj;

    invoke-interface {v2, v3}, Ldhi;->l(Ldhj;)Z

    move-result v2

    if-eqz v2, :cond_2

    check-cast v0, Lhyt;

    iget-object v0, v0, Lhyt;->a:Lhys;

    iget-object v0, v0, Lhys;->g:Liko;

    sget-object v2, Liko;->a:Liko;

    if-ne v0, v2, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-static {v0, p1}, Ljzr;->k(II)Ljzr;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-static {v0, p1}, Ljzr;->k(II)Ljzr;

    move-result-object p1

    :goto_0
    sget-object v0, Ljzr;->b:Ljzr;

    invoke-virtual {p1, v0}, Ljzr;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07070c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1

    :cond_2
    return v1
.end method

.method private static final o(Lhyt;)Landroid/graphics/Rect;
    .locals 2

    iget-object v0, p0, Lhyt;->a:Lhys;

    iget-object v0, v0, Lhys;->i:Lhyn;

    sget-object v1, Lhyn;->c:Lhyn;

    invoke-virtual {v0, v1}, Lhyn;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lhyn;->b:Lhyn;

    invoke-virtual {v0, v1}, Lhyn;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lhyt;->d:Lhyw;

    invoke-static {p0}, Llkj;->C(Ljava/lang/Object;)V

    iget-object v0, p0, Lhyw;->h:Landroid/util/Size;

    iget-object v1, p0, Lhyw;->g:Landroid/util/Size;

    invoke-virtual {p0, v0, v1}, Lhyw;->r(Landroid/util/Size;Landroid/util/Size;)Landroid/graphics/Rect;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p0, Lhyt;->b:Lhyq;

    iget-object p0, p0, Lhyq;->e:Landroid/graphics/Rect;

    :goto_1
    return-object p0
.end method


# virtual methods
.method public final a(Lklv;)Lnou;
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lklv;->b:Lklv;

    if-ne p1, v1, :cond_0

    const p1, 0x7f08015e

    goto :goto_0

    :cond_0
    const p1, 0x7f08015d

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iput-object p1, p0, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->d:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->g:Libg;

    sget-object v1, Lika;->a:Lika;

    sget-object v2, Lhck;->k:Lhck;

    new-instance v3, Liii;

    invoke-direct {v3, p0}, Liii;-><init>(Lcom/google/android/apps/camera/ui/views/ViewfinderCover;)V

    new-instance v4, Liig;

    invoke-direct {v4, p1}, Liig;-><init>(Lnph;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Libg;->p(Lika;Ljava/lang/Runnable;Libf;Libc;)V

    return-object p1
.end method

.method public final b()Lmqp;
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->a:Lmrl;

    invoke-interface {v0}, Lmrl;->a()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lmpx;->a:Lmpx;

    return-object v0

    :cond_0
    check-cast v0, Lhyt;

    invoke-static {v0}, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->o(Lhyt;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {}, Libd;->a()Lllz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lllz;->e(Landroid/graphics/Rect;)V

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->n(Landroid/graphics/Rect;)I

    move-result v0

    invoke-virtual {v1, v0}, Lllz;->d(I)V

    invoke-virtual {v1}, Lllz;->c()Libd;

    move-result-object v0

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lmqp;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->f:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmqp;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->i:Lnak;

    invoke-virtual {v1}, Lnaf;->b()Lnaz;

    move-result-object v1

    const-string v2, "Failed to create snapshot"

    const/16 v3, 0x10b3

    invoke-static {v1, v2, v3, v0}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    sget-object v0, Lmpx;->a:Lmpx;

    return-object v0
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->g:Libg;

    invoke-virtual {v0}, Libg;->f()V

    return-void
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->g:Libg;

    invoke-virtual {v0}, Libg;->g()V

    return-void
.end method

.method public final f(Lika;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->c:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    sget-object v2, Lika;->a:Lika;

    if-ne p1, v2, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lijy;->b(Lika;)Lijy;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v2, v3}, Lijy;->a(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_3

    sget-object v0, Lika;->a:Lika;

    if-ne p1, v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lijy;->b(Lika;)Lijy;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Lijy;->d(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    :goto_1
    sget-object v0, Lika;->l:Lika;

    if-ne p1, v0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->k:Ldhi;

    sget-object v2, Ldhx;->f:Ldhj;

    invoke-interface {v0, v2}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->k:Ldhi;

    sget-object v2, Ldhx;->d:Ldhk;

    invoke-interface {v0, v2}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    const v0, 0x7f1402ec

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_4
    iget-object p1, p0, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->j:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->e:Z

    return v0
.end method

.method public final h()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final i()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->g:Libg;

    iget-object v1, v0, Libg;->w:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v0}, Libg;->m()V

    iget-object v0, v0, Libg;->w:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public final j()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->g:Libg;

    sget-object v1, Lika;->a:Lika;

    iget v1, v0, Libg;->F:I

    add-int/lit8 v2, v1, -0x1

    if-eqz v1, :cond_0

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {v0}, Libg;->d()V

    return-void

    :cond_0
    const/4 v0, 0x0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final k()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->g:Libg;

    invoke-virtual {v0}, Libg;->l()V

    return-void
.end method

.method public final l(Lika;Liij;Ljava/lang/Runnable;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->g:Libg;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Liih;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Liih;-><init>(Liij;I)V

    invoke-virtual {v0, p1, p3, p0, v1}, Libg;->p(Lika;Ljava/lang/Runnable;Libf;Libc;)V

    return-void
.end method

.method public final m(Lika;Ljava/lang/Runnable;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->g:Libg;

    sget-object v1, Lhck;->j:Lhck;

    new-instance v2, Liih;

    const/4 v3, 0x1

    invoke-direct {v2, p2, v3}, Liih;-><init>(Ljava/lang/Runnable;I)V

    invoke-virtual {v0, p1, v1, p0, v2}, Libg;->p(Lika;Ljava/lang/Runnable;Libf;Libc;)V

    return-void
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->g:Libg;

    iget-object v1, v0, Libg;->k:Lmqp;

    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    return-void

    :cond_0
    iget v1, v0, Libg;->z:I

    if-lez v1, :cond_1

    const/4 v1, 0x0

    const/16 v2, 0x1f

    invoke-virtual {p1, v1, v1, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    iget-object v1, v0, Libg;->m:Libd;

    iget-object v1, v1, Libd;->a:Landroid/graphics/Rect;

    iget v2, v0, Libg;->z:I

    iget-object v3, v0, Libg;->i:Landroid/graphics/Paint;

    invoke-static {p1, v1, v2, v3}, Libg;->c(Landroid/graphics/Canvas;Landroid/graphics/Rect;ILandroid/graphics/Paint;)V

    :cond_1
    iget-object v1, v0, Libg;->k:Lmqp;

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lihc;

    iget-object v1, v1, Lihc;->a:Landroid/graphics/Bitmap;

    iget-object v2, v0, Libg;->l:Landroid/graphics/Rect;

    iget-object v3, v0, Libg;->m:Libd;

    iget-object v3, v3, Libd;->a:Landroid/graphics/Rect;

    iget-object v4, v0, Libg;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget v1, v0, Libg;->z:I

    if-lez v1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    iget v1, v0, Libg;->n:I

    if-lez v1, :cond_3

    iget-object v2, v0, Libg;->h:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, v0, Libg;->m:Libd;

    iget-object v1, v1, Libd;->a:Landroid/graphics/Rect;

    iget v2, v0, Libg;->z:I

    iget-object v3, v0, Libg;->h:Landroid/graphics/Paint;

    invoke-static {p1, v1, v2, v3}, Libg;->c(Landroid/graphics/Canvas;Landroid/graphics/Rect;ILandroid/graphics/Paint;)V

    :cond_3
    iget-object p1, v0, Libg;->o:Lmqp;

    invoke-virtual {p1}, Lmqp;->g()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, v0, Libg;->j:Landroid/os/Handler;

    iget-object v1, v0, Libg;->o:Lmqp;

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object p1, Lmpx;->a:Lmpx;

    iput-object p1, v0, Libg;->o:Lmqp;

    :cond_4
    return-void
.end method

.method public final onFinishInflate()V
    .locals 2

    invoke-super {p0}, Lcom/google/android/apps/camera/ui/layout/GcaLayout;->onFinishInflate()V

    const v0, 0x7f0b03f4

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->c:Landroid/widget/ImageView;

    const v0, 0x7f0b03f5

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->j:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->g:Libg;

    iget-object v1, p0, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->c:Landroid/widget/ImageView;

    iput-object v1, v0, Libg;->w:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->j:Landroid/widget/TextView;

    iput-object v1, v0, Libg;->x:Landroid/view/View;

    invoke-virtual {v0}, Libg;->f()V

    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->g:Libg;

    invoke-virtual {v0}, Libg;->g()V

    return-void
.end method

.method protected final onLayout(ZIIII)V
    .locals 17

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p5}, Lcom/google/android/apps/camera/ui/layout/GcaLayout;->onLayout(ZIIII)V

    iget-object v1, v0, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->a:Lmrl;

    invoke-interface {v1}, Lmrl;->a()Ljava/lang/Object;

    move-result-object v1

    iget-boolean v2, v0, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->h:Z

    if-eqz v2, :cond_d

    if-eqz v1, :cond_d

    check-cast v1, Lhyt;

    iget-object v2, v1, Lhyt;->b:Lhyq;

    iget-boolean v2, v2, Lhyq;->r:Z

    if-eqz v2, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->h:Z

    invoke-static {v1}, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->o(Lhyt;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {}, Libd;->a()Lllz;

    move-result-object v3

    invoke-virtual {v3, v1}, Lllz;->e(Landroid/graphics/Rect;)V

    invoke-direct {v0, v1}, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->n(Landroid/graphics/Rect;)I

    move-result v1

    invoke-virtual {v3, v1}, Lllz;->d(I)V

    invoke-virtual {v3}, Lllz;->c()Libd;

    move-result-object v1

    iget-object v3, v0, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->g:Libg;

    iget v4, v3, Libg;->F:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-interface/range {p0 .. p0}, Libf;->g()Z

    move-result v4

    const/4 v6, 0x4

    if-eqz v4, :cond_c

    iput v6, v3, Libg;->F:I

    iget-object v4, v3, Libg;->k:Lmqp;

    invoke-virtual {v4}, Lmqp;->g()Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, v3, Libg;->D:Lklv;

    iget-object v6, v3, Libg;->C:Ldbx;

    invoke-interface {v6}, Ldbx;->d()Lklv;

    move-result-object v6

    if-ne v4, v6, :cond_a

    iget-object v4, v3, Libg;->q:Ljvs;

    invoke-interface {v4}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget v6, v3, Libg;->p:F

    cmpl-float v6, v6, v4

    if-gtz v6, :cond_b

    iget-object v6, v3, Libg;->q:Ljvs;

    invoke-interface {v6}, Ljvs;->bm()Ljava/lang/Object;

    iget-object v6, v1, Libd;->a:Landroid/graphics/Rect;

    iget-object v7, v3, Libg;->m:Libd;

    iget-object v7, v7, Libd;->a:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-wide/16 v7, 0x12c

    const v9, 0x3f4ccccd    # 0.8f

    const/4 v10, 0x1

    const/4 v11, 0x2

    if-eqz v6, :cond_4

    iget-object v1, v3, Libg;->m:Libd;

    iget-object v1, v1, Libd;->a:Landroid/graphics/Rect;

    iget-boolean v1, v3, Libg;->y:Z

    if-eqz v1, :cond_b

    iget v1, v3, Libg;->p:F

    cmpg-float v1, v1, v4

    if-ltz v1, :cond_2

    invoke-virtual {v3}, Libg;->o()Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_2
    iget-object v1, v3, Libg;->l:Landroid/graphics/Rect;

    iget v5, v3, Libg;->p:F

    invoke-virtual {v3}, Libg;->o()Z

    move-result v6

    if-eqz v6, :cond_3

    div-float/2addr v4, v9

    :cond_3
    div-float/2addr v5, v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v5

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    div-int/2addr v4, v11

    div-int/2addr v5, v11

    sub-int v9, v6, v4

    add-int/2addr v6, v4

    sub-int v4, v1, v5

    add-int/2addr v1, v5

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v9, v4, v6, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v1, v5, Landroid/graphics/Rect;->left:I

    if-ltz v1, :cond_b

    iget v1, v5, Landroid/graphics/Rect;->top:I

    if-ltz v1, :cond_b

    iget-object v1, v3, Libg;->f:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, v3, Libg;->f:Landroid/animation/AnimatorSet;

    iget-object v1, v3, Libg;->f:Landroid/animation/AnimatorSet;

    new-array v4, v10, [Landroid/animation/Animator;

    iget-object v6, v3, Libg;->l:Landroid/graphics/Rect;

    iget-object v9, v3, Libg;->e:Landroid/view/animation/BaseInterpolator;

    new-instance v11, Liba;

    invoke-direct {v11, v3, v10}, Liba;-><init>(Libg;I)V

    invoke-static {v6, v5, v9, v11}, Libg;->b(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/animation/TimeInterpolator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v1, v3, Libg;->f:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v1, v3, Libg;->f:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_4
    iget-object v4, v3, Libg;->k:Lmqp;

    invoke-virtual {v4}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lihc;

    invoke-virtual {v4}, Lihc;->a()Landroid/graphics/Rect;

    move-result-object v4

    iget-object v6, v3, Libg;->l:Landroid/graphics/Rect;

    invoke-virtual {v6, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v12

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v13

    if-le v12, v13, :cond_5

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-float v13, v12

    invoke-static {v6}, Libg;->a(Landroid/graphics/Rect;)F

    move-result v6

    mul-float v13, v13, v6

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v6

    goto :goto_0

    :cond_5
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-float v13, v12

    invoke-static {v6}, Libg;->a(Landroid/graphics/Rect;)F

    move-result v6

    div-float/2addr v13, v6

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v6

    move/from16 v16, v12

    move v12, v6

    move/from16 v6, v16

    :goto_0
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v13

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    div-int/2addr v6, v11

    sub-int v14, v13, v6

    div-int/2addr v12, v11

    sub-int v15, v4, v12

    add-int/2addr v13, v6

    add-int/2addr v4, v12

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v14, v15, v13, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    :cond_6
    iget-object v4, v3, Libg;->k:Lmqp;

    invoke-virtual {v4}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lihc;

    iget-object v12, v1, Libd;->a:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v13

    iget v14, v4, Lihc;->b:I

    add-int/2addr v14, v14

    div-int/2addr v13, v14

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v14

    iget v15, v4, Lihc;->b:I

    add-int/2addr v15, v15

    div-int/2addr v14, v15

    invoke-virtual {v12}, Landroid/graphics/Rect;->centerX()I

    move-result v15

    iget v9, v4, Lihc;->b:I

    div-int/2addr v15, v9

    invoke-virtual {v12}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    iget v4, v4, Lihc;->b:I

    div-int/2addr v9, v4

    sub-int v4, v15, v13

    sub-int v12, v9, v14

    add-int/2addr v15, v13

    add-int/2addr v9, v14

    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13, v4, v12, v15, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3}, Libg;->o()Z

    move-result v4

    if-eq v10, v4, :cond_7

    const/high16 v9, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_7
    const v9, 0x3f4ccccd    # 0.8f

    :goto_1
    invoke-static {v6}, Libg;->a(Landroid/graphics/Rect;)F

    move-result v4

    invoke-static {v13}, Libg;->a(Landroid/graphics/Rect;)F

    move-result v12

    const/4 v14, 0x0

    cmpl-float v14, v12, v14

    if-nez v14, :cond_8

    sget-object v4, Libg;->a:Lnak;

    invoke-virtual {v4}, Lnaf;->c()Lnaz;

    move-result-object v4

    const-string v9, "Invalid aspect ratio in fitToRect: %s"

    const/16 v12, 0xff0

    invoke-static {v4, v9, v13, v12}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    goto :goto_3

    :cond_8
    cmpg-float v4, v12, v4

    if-gez v4, :cond_9

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float v12, v12, v4

    goto :goto_2

    :cond_9
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float v12, v4, v12

    move/from16 v16, v12

    move v12, v4

    move/from16 v4, v16

    :goto_2
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v13

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v12, v14

    mul-float v12, v12, v9

    div-float/2addr v4, v14

    mul-float v4, v4, v9

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v9

    sub-int v12, v13, v9

    add-int/2addr v13, v9

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    sub-int v9, v6, v4

    add-int/2addr v6, v4

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v12, v9, v13, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v6, v4

    :goto_3
    iget-object v4, v3, Libg;->f:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->cancel()V

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, v3, Libg;->f:Landroid/animation/AnimatorSet;

    iget-object v4, v3, Libg;->f:Landroid/animation/AnimatorSet;

    new-array v5, v5, [Landroid/animation/Animator;

    iget-object v9, v3, Libg;->m:Libd;

    iget-object v9, v9, Libd;->a:Landroid/graphics/Rect;

    iget-object v12, v1, Libd;->a:Landroid/graphics/Rect;

    iget-object v13, v3, Libg;->e:Landroid/view/animation/BaseInterpolator;

    new-instance v14, Liba;

    invoke-direct {v14, v3, v2}, Liba;-><init>(Libg;I)V

    invoke-static {v9, v12, v13, v14}, Libg;->b(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/animation/TimeInterpolator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;

    move-result-object v9

    aput-object v9, v5, v2

    iget-object v2, v3, Libg;->l:Landroid/graphics/Rect;

    iget-object v9, v3, Libg;->e:Landroid/view/animation/BaseInterpolator;

    new-instance v12, Liba;

    invoke-direct {v12, v3, v11}, Liba;-><init>(Libg;I)V

    invoke-static {v2, v6, v9, v12}, Libg;->b(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/animation/TimeInterpolator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;

    move-result-object v2

    aput-object v2, v5, v10

    iget-object v2, v3, Libg;->m:Libd;

    iget v2, v2, Libd;->b:I

    iget v1, v1, Libd;->b:I

    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    new-instance v9, Lafx;

    const/16 v10, 0x13

    invoke-direct {v9, v3, v10}, Lafx;-><init>(Libg;I)V

    filled-new-array {v2, v1}, [I

    move-result-object v1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v1, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    aput-object v1, v5, v11

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v1, v3, Libg;->f:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v1, v3, Libg;->f:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_a
    iget-object v1, v3, Libg;->C:Ldbx;

    invoke-interface {v1}, Ldbx;->d()Lklv;

    move-result-object v1

    iput-object v1, v3, Libg;->D:Lklv;

    return-void

    :cond_b
    :goto_4
    return-void

    :cond_c
    iput v6, v3, Libg;->F:I

    return-void

    :cond_d
    :goto_5
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
