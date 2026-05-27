.class public final Lgev;
.super Lgea;


# instance fields
.field public final a:Landroid/graphics/drawable/Drawable;

.field public final b:Landroid/graphics/drawable/Drawable;

.field private final c:Ljwb;

.field private final d:Lihg;

.field private final e:Lmvv;

.field private final f:Ldhi;

.field private final g:Ljvs;

.field private final h:Ljvs;

.field private final i:Lfme;


# direct methods
.method public constructor <init>(Lgzn;Landroid/content/res/Resources;Lihg;Ldhi;Lfme;Ljvs;)V
    .locals 7

    invoke-direct {p0}, Lgea;-><init>()V

    iput-object p3, p0, Lgev;->d:Lihg;

    sget-object p3, Lgej;->ah:Lgej;

    sget-object v0, Lgej;->ai:Lgej;

    invoke-static {p3, v0}, Lmvv;->m(Ljava/lang/Object;Ljava/lang/Object;)Lmvv;

    move-result-object p3

    iput-object p3, p0, Lgev;->e:Lmvv;

    new-instance p3, Lgeb;

    sget-object v0, Lgzd;->e:Lgzs;

    invoke-interface {p1, v0}, Lgzn;->b(Lgzb;)Ljwb;

    move-result-object v1

    sget-object p1, Lgzd;->e:Lgzs;

    invoke-virtual {p1, p4}, Lgzb;->c(Ldhi;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljava/lang/Integer;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lgej;->ah:Lgej;

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Lgej;->ai:Lgej;

    move-object v0, p3

    invoke-direct/range {v0 .. v6}, Lgeb;-><init>(Ljwb;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p3, p0, Lgev;->c:Ljwb;

    const p1, 0x7f080258

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lgev;->a:Landroid/graphics/drawable/Drawable;

    const p1, 0x7f080256

    invoke-virtual {p2, p1, p3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lgev;->b:Landroid/graphics/drawable/Drawable;

    iput-object p4, p0, Lgev;->f:Ldhi;

    iput-object p5, p0, Lgev;->i:Lfme;

    iget-object p1, p5, Lfme;->c:Ljwb;

    iput-object p1, p0, Lgev;->g:Ljvs;

    iput-object p6, p0, Lgev;->h:Ljvs;

    return-void
.end method

.method public static final o(ILandroid/graphics/drawable/Drawable;)V
    .locals 2

    filled-new-array {p0}, [I

    move-result-object p0

    const-string v0, "level"

    invoke-static {p1, v0, p0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0xfa

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p0

    new-instance p1, Lakf;

    invoke-direct {p1}, Lakf;-><init>()V

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const v0, 0x7f140086

    return v0
.end method

.method protected final b(Lgej;)I
    .locals 2

    sget-object v0, Liko;->a:Liko;

    sget-object v0, Lika;->a:Lika;

    sget-object v0, Lgej;->a:Lgej;

    invoke-virtual {p1}, Lgej;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Invalid option: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const p1, 0x7f1401b9

    return p1

    :pswitch_1
    const p1, 0x7f1404aa

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x3b
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final e()I
    .locals 1

    const v0, 0x7f140086

    return v0
.end method

.method protected final f(Lgej;)I
    .locals 2

    sget-object v0, Liko;->a:Liko;

    sget-object v0, Lika;->a:Lika;

    sget-object v0, Lgej;->a:Lgej;

    invoke-virtual {p1}, Lgej;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Invalid option: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const p1, 0x7f1401b8

    return p1

    :pswitch_1
    const p1, 0x7f1404a9

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x3b
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final g()Lgec;
    .locals 1

    sget-object v0, Lgec;->z:Lgec;

    return-object v0
.end method

.method public final i()Ljwb;
    .locals 1

    iget-object v0, p0, Lgev;->c:Ljwb;

    return-object v0
.end method

.method public final j()Lmvv;
    .locals 1

    iget-object v0, p0, Lgev;->e:Lmvv;

    return-object v0
.end method

.method public final k(Lgeh;)V
    .locals 5

    iget-object v0, p0, Lgev;->d:Lihg;

    iget-object v0, v0, Lihg;->c:Ljava/lang/Object;

    new-instance v1, Lgew;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lgew;-><init>(Lgev;I)V

    check-cast v0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->c(Likj;)V

    move-object v0, p1

    check-cast v0, Lgdv;

    iget-object v1, v0, Lgdv;->q:Ljuf;

    iget-object v2, p0, Lgev;->g:Ljvs;

    new-instance v3, Lgdl;

    const/4 v4, 0x5

    invoke-direct {v3, p1, v4}, Lgdl;-><init>(Lgeh;I)V

    sget-object v4, Lnnv;->a:Lnnv;

    invoke-interface {v2, v3, v4}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljuf;->d(Lkad;)V

    iget-object v0, v0, Lgdv;->q:Ljuf;

    iget-object v1, p0, Lgev;->h:Ljvs;

    new-instance v2, Lgdl;

    const/4 v3, 0x6

    invoke-direct {v2, p1, v3}, Lgdl;-><init>(Lgeh;I)V

    sget-object p1, Lnnv;->a:Lnnv;

    invoke-interface {v1, v2, p1}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljuf;->d(Lkad;)V

    return-void
.end method

.method public final n(Lgeh;)Z
    .locals 3

    iget-object v0, p0, Lgev;->g:Ljvs;

    check-cast v0, Ljvk;

    iget-object v0, v0, Ljvk;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lgev;->f:Ldhi;

    sget-object v2, Ldho;->bQ:Ldhj;

    invoke-interface {v0, v2}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lgev;->i:Lfme;

    iget-object v2, v0, Lfme;->b:Ldbf;

    invoke-virtual {v2}, Ldbf;->d()Lklv;

    move-result-object v2

    invoke-virtual {v0, v2}, Lfme;->c(Lklv;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    sget-object v0, Liko;->a:Liko;

    sget-object v0, Lika;->a:Lika;

    sget-object v0, Lgej;->a:Lgej;

    invoke-interface {p1}, Lgeh;->b()Lika;

    move-result-object p1

    invoke-virtual {p1}, Lika;->ordinal()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    return v1

    :sswitch_0
    const/4 p1, 0x1

    return p1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_0
        0xb -> :sswitch_0
        0xc -> :sswitch_0
    .end sparse-switch
.end method

.method public final y(Lgej;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    sget-object p2, Liko;->a:Liko;

    sget-object p2, Lika;->a:Lika;

    sget-object p2, Lgej;->a:Lgej;

    invoke-virtual {p1}, Lgej;->ordinal()I

    move-result p2

    packed-switch p2, :pswitch_data_0

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Invalid option: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_0
    iget-object p1, p0, Lgev;->a:Landroid/graphics/drawable/Drawable;

    return-object p1

    :pswitch_1
    iget-object p1, p0, Lgev;->b:Landroid/graphics/drawable/Drawable;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x3b
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
