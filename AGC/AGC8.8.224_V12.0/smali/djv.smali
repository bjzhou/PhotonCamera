.class public final Ldjv;
.super Ldjl;


# static fields
.field private static final g:Lnak;


# instance fields
.field private h:Lkaf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/data/VideoItem"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Ldjv;->g:Lnak;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ldjm;Lche;Lgyb;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Ldjl;-><init>(Landroid/content/Context;Ldjm;Lche;Lgyb;)V

    return-void
.end method

.method private final p()I
    .locals 1

    iget-object v0, p0, Ldjv;->e:Lfeb;

    iget v0, v0, Lfeb;->c:I

    if-lez v0, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Ldjv;->d:Lche;

    invoke-interface {v0}, Lche;->e()Lkaf;

    move-result-object v0

    iget v0, v0, Lkaf;->b:I

    return v0
.end method

.method private final q()I
    .locals 1

    iget-object v0, p0, Ldjv;->e:Lfeb;

    iget v0, v0, Lfeb;->e:I

    if-lez v0, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Ldjv;->d:Lche;

    invoke-interface {v0}, Lche;->e()Lkaf;

    move-result-object v0

    iget v0, v0, Lkaf;->a:I

    return v0
.end method

.method private final r()Z
    .locals 2

    iget-object v0, p0, Ldjl;->e:Lfeb;

    iget-object v0, v0, Lfeb;->d:Ljava/lang/String;

    const-string v1, "90"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "270"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final a(Lmqp;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    invoke-virtual {p1}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Ldjv;->k(Landroid/view/View;)Ldjk;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    move-object v0, p1

    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {p0, p2}, Ldjl;->j(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Ldjv;->k(Landroid/view/View;)Ldjk;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lchf;->c:Lchf;

    invoke-virtual {p2}, Lchf;->ordinal()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const v1, 0x7f0b0212

    invoke-virtual {p1, v1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object p2, v0, Ldjk;->c:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0, p1}, Ldjl;->l(Landroid/view/View;)V

    iget-object p2, v0, Ldjk;->a:Landroid/widget/ImageView;

    iget-object v0, p0, Ldjl;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Ldjv;->a:Lj$/time/format/DateTimeFormatter;

    iget-object v3, p0, Ldjv;->d:Lche;

    invoke-interface {v3}, Lche;->h()Lj$/time/Instant;

    move-result-object v3

    invoke-virtual {v2, v3}, Lj$/time/format/DateTimeFormatter;->format(Lj$/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f140587

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-object p1
.end method

.method public final c()Lchf;
    .locals 1

    sget-object v0, Lchf;->c:Lchf;

    return-object v0
.end method

.method public final i(II)Lkxr;
    .locals 2

    :try_start_0
    iget-object p1, p0, Ldjv;->c:Ldjm;

    invoke-virtual {p1}, Ldjm;->a()Lbpb;

    move-result-object p1

    iget-object p2, p0, Ldjv;->c:Ldjm;

    iget-object v0, p0, Ldjv;->d:Lche;

    invoke-static {v0}, Ldjv;->n(Lche;)Lbqb;

    move-result-object v0

    invoke-virtual {p0}, Ldjv;->o()Lkaf;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ldjm;->c(Lbqb;Lkaf;)Lbzp;

    move-result-object p2

    invoke-virtual {p1, p2}, Lbpb;->b(Lbzg;)Lbpb;

    move-result-object p1

    invoke-static {}, Ldjm;->f()Lbzp;

    move-result-object p2

    invoke-virtual {p1, p2}, Lbpb;->b(Lbzg;)Lbpb;

    move-result-object p1

    iget-object p2, p0, Ldjv;->d:Lche;

    invoke-interface {p2}, Lche;->c()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Lbpb;->e(Landroid/net/Uri;)Lbpb;

    move-result-object p1

    invoke-virtual {p1}, Lbpb;->j()Lbzj;

    move-result-object p1

    invoke-interface {p1}, Lbzj;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    new-instance p2, Lkxr;

    invoke-static {p1}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

    move-result-object p1

    sget-object v0, Likn;->a:Likn;

    invoke-direct {p2, p1}, Lkxr;-><init>(Lmqp;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    sget-object p1, Ldjv;->g:Lnak;

    invoke-virtual {p1}, Lnaf;->b()Lnaz;

    move-result-object p1

    const-string p2, "Fails to generate thumbnail"

    const/16 v0, 0x3b9

    invoke-static {p1, p2, v0}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    new-instance p1, Lkxr;

    sget-object p2, Lmpx;->a:Lmpx;

    sget-object v0, Likn;->a:Likn;

    invoke-direct {p1, p2}, Lkxr;-><init>(Lmqp;)V

    return-object p1
.end method

.method protected final m(Ldjk;)V
    .locals 4

    iget-object v0, p0, Ldjv;->c:Ldjm;

    invoke-virtual {v0}, Ldjm;->a()Lbpb;

    move-result-object v0

    iget-object v1, p0, Ldjv;->c:Ldjm;

    iget-object v2, p0, Ldjv;->d:Lche;

    invoke-static {v2}, Ldjv;->n(Lche;)Lbqb;

    move-result-object v2

    invoke-virtual {p0}, Ldjv;->o()Lkaf;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ldjm;->c(Lbqb;Lkaf;)Lbzp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbpb;->b(Lbzg;)Lbpb;

    move-result-object v0

    invoke-static {}, Ldjm;->f()Lbzp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbpb;->b(Lbzg;)Lbpb;

    move-result-object v0

    iget-object v1, p0, Ldjv;->d:Lche;

    invoke-interface {v1}, Lche;->c()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbpb;->e(Landroid/net/Uri;)Lbpb;

    move-result-object v0

    iget-object p1, p1, Ldjk;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Lbpb;->k(Landroid/widget/ImageView;)Lcab;

    move-result-object p1

    invoke-virtual {p1}, Lbzt;->c()Lbzk;

    return-void
.end method

.method public final o()Lkaf;
    .locals 4

    invoke-direct {p0}, Ldjv;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ldjv;->p()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Ldjv;->q()I

    move-result v0

    :goto_0
    invoke-direct {p0}, Ldjv;->r()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Ldjv;->q()I

    move-result v1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Ldjv;->p()I

    move-result v1

    :goto_1
    iget-object v2, p0, Ldjv;->h:Lkaf;

    if-eqz v2, :cond_2

    iget v3, v2, Lkaf;->a:I

    if-ne v0, v3, :cond_2

    iget v2, v2, Lkaf;->b:I

    if-eq v1, v2, :cond_3

    :cond_2
    new-instance v2, Lkaf;

    invoke-direct {v2, v0, v1}, Lkaf;-><init>(II)V

    iput-object v2, p0, Ldjv;->h:Lkaf;

    :cond_3
    iget-object v0, p0, Ldjv;->h:Lkaf;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Ldjv;->d:Lche;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoItem: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
