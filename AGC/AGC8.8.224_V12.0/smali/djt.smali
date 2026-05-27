.class public final Ldjt;
.super Ldjl;


# static fields
.field private static final h:Lnak;


# instance fields
.field public g:Lmqp;

.field private final i:Lhkv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/data/PhotoItem"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Ldjt;->h:Lnak;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ldjm;Lche;Lhkv;Lgyb;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p5}, Ldjl;-><init>(Landroid/content/Context;Ldjm;Lche;Lgyb;)V

    sget-object p1, Lmpx;->a:Lmpx;

    iput-object p1, p0, Ldjt;->g:Lmqp;

    iput-object p4, p0, Ldjt;->i:Lhkv;

    return-void
.end method


# virtual methods
.method public final a(Lmqp;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    invoke-virtual {p1}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Ldjt;->k(Landroid/view/View;)Ldjk;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    move-object v0, p1

    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {p0, p2}, Ldjl;->j(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Ldjt;->k(Landroid/view/View;)Ldjk;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lchf;->b:Lchf;

    invoke-virtual {p2}, Lchf;->ordinal()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const v1, 0x7f0b0212

    invoke-virtual {p1, v1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object p2, v0, Ldjk;->b:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p2, p0, Ldjt;->e:Lfeb;

    iget-boolean p2, p2, Lfeb;->h:Z

    const/4 v2, 0x0

    if-eqz p2, :cond_2

    iget-object p2, v0, Ldjk;->c:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->isClickable()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, v0, Ldjk;->c:Landroid/widget/ImageView;

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object p2, v0, Ldjk;->c:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    invoke-virtual {p0, p1}, Ldjl;->l(Landroid/view/View;)V

    iget-object p2, v0, Ldjk;->a:Landroid/widget/ImageView;

    iget-object v0, p0, Ldjt;->d:Lche;

    invoke-interface {v0}, Lche;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Ldjl;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1402af

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_3
    iget-object v0, p0, Ldjl;->e:Lfeb;

    iget-boolean v1, v0, Lfeb;->f:Z

    const v3, 0x7f140385

    if-nez v1, :cond_6

    iget-boolean v1, v0, Lfeb;->g:Z

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    iget-boolean v0, v0, Lfeb;->h:Z

    if-eqz v0, :cond_5

    const v3, 0x7f1403ad

    goto :goto_2

    :cond_5
    const v3, 0x7f14039e

    goto :goto_2

    :cond_6
    :goto_2
    iget-object v0, p0, Ldjl;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v4, Ldjt;->a:Lj$/time/format/DateTimeFormatter;

    iget-object v5, p0, Ldjt;->d:Lche;

    invoke-interface {v5}, Lche;->h()Lj$/time/Instant;

    move-result-object v5

    invoke-virtual {v4, v5}, Lj$/time/format/DateTimeFormatter;->format(Lj$/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-virtual {v0, v3, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_3
    return-object p1
.end method

.method public final c()Lchf;
    .locals 1

    sget-object v0, Lchf;->b:Lchf;

    return-object v0
.end method

.method public final i(II)Lkxr;
    .locals 3

    iget-object v0, p0, Ldjl;->d:Lche;

    invoke-interface {v0}, Lche;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lche;->d()Lgxy;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p0, Ldjt;->i:Lhkv;

    invoke-virtual {p2, p1}, Lhkv;->a(Lgxy;)Landroid/graphics/Bitmap;

    move-result-object p2

    iget-object v0, p0, Ldjt;->i:Lhkv;

    invoke-virtual {v0, p1}, Lhkv;->b(Lgxy;)Ljava/lang/Integer;

    move-result-object p1

    new-instance v0, Lkxr;

    invoke-static {p2}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

    move-result-object p2

    sget-object v1, Likn;->a:Likn;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {v0, p2, p1}, Lkxr;-><init>(Lmqp;I)V

    return-object v0

    :cond_1
    new-instance v1, Lkaf;

    invoke-direct {v1, p1, p2}, Lkaf;-><init>(II)V

    invoke-interface {v0}, Lche;->c()Landroid/net/Uri;

    :try_start_0
    iget-object p1, p0, Ldjt;->c:Ldjm;

    invoke-virtual {p1}, Ldjm;->a()Lbpb;

    move-result-object p1

    iget-object p2, p0, Ldjt;->c:Ldjm;

    invoke-static {v0}, Ldjt;->n(Lche;)Lbqb;

    move-result-object v2

    invoke-virtual {p2, v2, v1}, Ldjm;->c(Lbqb;Lkaf;)Lbzp;

    move-result-object p2

    invoke-virtual {p1, p2}, Lbpb;->b(Lbzg;)Lbpb;

    move-result-object p1

    invoke-interface {v0}, Lche;->c()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Lbpb;->e(Landroid/net/Uri;)Lbpb;

    move-result-object p1

    invoke-virtual {p1}, Lbpb;->j()Lbzj;

    move-result-object p1

    invoke-interface {p1}, Lbzj;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-interface {v0}, Lche;->c()Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    new-instance p2, Lkxr;

    invoke-static {p1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object p1

    sget-object v1, Likn;->a:Likn;

    invoke-direct {p2, p1}, Lkxr;-><init>(Lmqp;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    :goto_1
    sget-object p2, Ldjt;->h:Lnak;

    invoke-virtual {p2}, Lnaf;->b()Lnaz;

    move-result-object p2

    invoke-interface {v0}, Lche;->c()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "Failed to generate thumbnail for %s"

    const/16 v2, 0x3b6

    invoke-static {p2, v1, v0, v2, p1}, Ld;->i(Lnaz;Ljava/lang/String;Ljava/lang/Object;CLjava/lang/Throwable;)V

    new-instance p1, Lkxr;

    sget-object p2, Lmpx;->a:Lmpx;

    sget-object v0, Likn;->a:Likn;

    invoke-direct {p1, p2}, Lkxr;-><init>(Lmqp;)V

    return-object p1
.end method

.method protected final m(Ldjk;)V
    .locals 7

    iget-object v0, p0, Ldjl;->d:Lche;

    invoke-interface {v0}, Lche;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ldjt;->d:Lche;

    invoke-interface {v0}, Lche;->d()Lgxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Ldjk;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Ldjt;->i:Lhkv;

    invoke-virtual {v1, v0}, Lhkv;->a(Lgxy;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Ldjt;->i:Lhkv;

    invoke-virtual {v2, v0}, Lhkv;->b(Lgxy;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Ljvd;->J(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    :cond_0
    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :cond_1
    sget-object v0, Ldjt;->h:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "renderThumbnail: No placeholder. Use default resource."

    const/16 v2, 0x3b7

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    const v0, 0x7f0607a0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_2
    iget-object v0, p0, Ldjt;->d:Lche;

    invoke-interface {v0}, Lche;->c()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Ldjt;->c:Ldjm;

    iget-object v2, p0, Ldjt;->d:Lche;

    invoke-static {v2}, Ldjt;->n(Lche;)Lbqb;

    move-result-object v2

    iget-object v3, p0, Ldjt;->f:Lkaf;

    invoke-virtual {v1, v2, v3}, Ldjm;->c(Lbqb;Lkaf;)Lbzp;

    move-result-object v1

    iget-object v2, p0, Ldjt;->d:Lche;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Lche;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkqi;->a(Ljava/lang/String;)Lkqi;

    move-result-object v2

    sget-object v3, Lkqi;->b:Lkqi;

    if-ne v2, v3, :cond_3

    invoke-virtual {v1}, Lbzg;->p()Lbzg;

    move-result-object v1

    check-cast v1, Lbzp;

    :cond_3
    iget-object v2, p0, Ldjt;->g:Lmqp;

    invoke-virtual {v2}, Lmqp;->g()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Ldjt;->g:Lmqp;

    invoke-virtual {v2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lbzg;->v(Landroid/graphics/drawable/Drawable;)Lbzg;

    move-result-object v1

    check-cast v1, Lbzp;

    iget-object v2, p0, Ldjt;->c:Ldjm;

    invoke-virtual {v2}, Ldjm;->b()Lbpb;

    move-result-object v2

    invoke-virtual {v2, v1}, Lbpb;->b(Lbzg;)Lbpb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbpb;->e(Landroid/net/Uri;)Lbpb;

    move-result-object v0

    goto :goto_1

    :cond_4
    iget-object v2, p0, Ldjt;->c:Ldjm;

    invoke-virtual {v2}, Ldjm;->b()Lbpb;

    move-result-object v2

    invoke-virtual {v2, v1}, Lbpb;->b(Lbzg;)Lbpb;

    move-result-object v1

    iget-object v2, p0, Ldjt;->c:Ldjm;

    iget-object v3, p0, Ldjt;->d:Lche;

    invoke-static {v3}, Ldjt;->n(Lche;)Lbqb;

    move-result-object v3

    iget-object v4, v2, Ldjm;->a:Lkaf;

    iget v2, v2, Ldjm;->b:I

    int-to-double v5, v2

    invoke-static {}, Ldjm;->e()Lkaf;

    move-result-object v2

    invoke-static {v4, v5, v6, v2}, Ldjm;->d(Lkaf;DLkaf;)Lkaf;

    move-result-object v2

    new-instance v4, Lbzp;

    invoke-direct {v4}, Lbzp;-><init>()V

    invoke-virtual {v4, v3}, Lbzg;->z(Lbqb;)Lbzg;

    move-result-object v3

    check-cast v3, Lbzp;

    invoke-virtual {v3}, Lbzg;->K()Lbzg;

    move-result-object v3

    check-cast v3, Lbzp;

    invoke-virtual {v3}, Lbzg;->q()Lbzg;

    move-result-object v3

    check-cast v3, Lbzp;

    iget v4, v2, Lkaf;->a:I

    iget v2, v2, Lkaf;->b:I

    invoke-virtual {v3, v4, v2}, Lbzg;->u(II)Lbzg;

    move-result-object v2

    check-cast v2, Lbzp;

    sget-object v3, Lbyc;->b:Lbqe;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lbzg;->y(Lbqe;Ljava/lang/Object;)Lbzg;

    move-result-object v2

    check-cast v2, Lbzp;

    iget-object v3, p0, Ldjt;->c:Ldjm;

    invoke-virtual {v3}, Ldjm;->b()Lbpb;

    move-result-object v3

    invoke-virtual {v3, v2}, Lbpb;->b(Lbzg;)Lbpb;

    move-result-object v2

    invoke-virtual {v2, v0}, Lbpb;->e(Landroid/net/Uri;)Lbpb;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbpb;->g(Lbpb;)Lbpb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbpb;->e(Landroid/net/Uri;)Lbpb;

    move-result-object v0

    :goto_1
    iget-object p1, p1, Ldjk;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Lbpb;->k(Landroid/widget/ImageView;)Lcab;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Ldjt;->d:Lche;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhotoItem: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
