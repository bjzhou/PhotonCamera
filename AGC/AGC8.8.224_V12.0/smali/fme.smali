.class public final Lfme;
.super Ljava/lang/Object;


# static fields
.field private static final d:Lnak;


# instance fields
.field public final a:Ljvs;

.field public final b:Ldbf;

.field public final c:Ljwb;

.field private final e:Z

.field private final f:Lgzm;

.field private final g:Landroid/app/Activity;

.field private final h:Ldhi;

.field private final i:Lfuj;

.field private final j:Lklj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/modules/common/AspectRatioHelper"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lfme;->d:Lnak;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcdi;Ldbf;Ldhi;Lgzm;Ljvs;Ljvs;Lfuj;Lklj;Ljvs;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljvk;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Ljvk;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lfme;->c:Ljwb;

    sget-object v0, Ldho;->bQ:Ldhj;

    invoke-interface {p4, v0}, Ldhi;->l(Ldhj;)Z

    move-result v0

    iput-boolean v0, p0, Lfme;->e:Z

    iput-object p5, p0, Lfme;->f:Lgzm;

    iput-object p6, p0, Lfme;->a:Ljvs;

    iput-object p1, p0, Lfme;->g:Landroid/app/Activity;

    iput-object p3, p0, Lfme;->b:Ldbf;

    iput-object p4, p0, Lfme;->h:Ldhi;

    iput-object p8, p0, Lfme;->i:Lfuj;

    iput-object p9, p0, Lfme;->j:Lklj;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcdi;->i()Ljuf;

    move-result-object p1

    new-instance p3, Leus;

    const/16 p4, 0x11

    invoke-direct {p3, p0, p4}, Leus;-><init>(Lfme;I)V

    sget-object p4, Lnnv;->a:Lnnv;

    invoke-interface {p7, p3, p4}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljuf;->d(Lkad;)V

    invoke-virtual {p2}, Lcdi;->i()Ljuf;

    move-result-object p1

    new-instance p3, Lecf;

    const/16 p4, 0x9

    invoke-direct {p3, p0, p7, p4}, Lecf;-><init>(Lfme;Ljvs;I)V

    sget-object p4, Lnnv;->a:Lnnv;

    invoke-interface {p6, p3, p4}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljuf;->d(Lkad;)V

    invoke-virtual {p2}, Lcdi;->i()Ljuf;

    move-result-object p1

    new-instance p2, Lecf;

    const/16 p3, 0xa

    invoke-direct {p2, p0, p7, p3}, Lecf;-><init>(Lfme;Ljvs;I)V

    sget-object p3, Lnnv;->a:Lnnv;

    invoke-interface {p10, p2, p3}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljuf;->d(Lkad;)V

    :cond_0
    return-void
.end method

.method private final e(Lklv;)I
    .locals 3

    iget-object v0, p0, Lfme;->j:Lklj;

    invoke-interface {v0, p1}, Lklj;->e(Lklv;)Lkll;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lfme;->d:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "Can\'t find camera ID with facing %s"

    const/16 v2, 0x93c

    invoke-static {v0, v1, p1, v2}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    const/16 p1, 0x5a

    return p1

    :cond_0
    iget-object p1, p0, Lfme;->j:Lklj;

    iget-object v1, p0, Lfme;->i:Lfuj;

    iget-object v2, p0, Lfme;->h:Ldhi;

    invoke-static {v0, p1, v1, v2}, Lgky;->h(Lkll;Lklj;Lfuj;Ldhi;)Lfuz;

    move-result-object p1

    invoke-virtual {p1}, Lklw;->f()I

    move-result p1

    return p1
.end method


# virtual methods
.method public final a(Lhxi;I)Z
    .locals 5

    iget-boolean v0, p0, Lfme;->e:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lfme;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lhxi;->a:Lhxj;

    sget-object v2, Lhxj;->a:Lhxj;

    const/16 v3, 0x5a

    const/4 v4, 0x1

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lfme;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lfme;->g:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v2, v2}, Ljji;->o(Landroid/content/Context;Landroid/view/Display;Ldhi;Lika;Lkog;)Lhyn;

    move-result-object p1

    sget-object v0, Lhyn;->e:Lhyn;

    if-ne p1, v0, :cond_1

    rem-int/lit16 p2, p2, 0xb4

    if-ne p2, v3, :cond_1

    return v4

    :cond_1
    return v1

    :cond_2
    iget-object p1, p1, Lhxi;->a:Lhxj;

    sget-object v0, Lhxj;->e:Lhxj;

    rem-int/lit16 p2, p2, 0xb4

    if-ne p1, v0, :cond_4

    if-nez p2, :cond_3

    return v4

    :cond_3
    return v1

    :cond_4
    if-ne p2, v3, :cond_5

    sget-object p2, Lhxj;->d:Lhxj;

    if-ne p1, p2, :cond_5

    return v4

    :cond_5
    return v1

    :cond_6
    :goto_0
    return v1
.end method

.method public final b()Z
    .locals 2

    iget-boolean v0, p0, Lfme;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfme;->b:Ldbf;

    invoke-virtual {v0}, Ldbf;->d()Lklv;

    move-result-object v0

    iget-object v1, p0, Lfme;->a:Ljvs;

    invoke-interface {v1}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhxi;

    invoke-direct {p0, v0}, Lfme;->e(Lklv;)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lfme;->a(Lhxi;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfme;->f:Lgzm;

    sget-object v1, Lgzd;->f:Lgzs;

    invoke-interface {v0, v1}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljhp;->au(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final c(Lklv;)Z
    .locals 1

    sget-object v0, Lklv;->a:Lklv;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lfme;->a:Ljvs;

    invoke-interface {p1}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lhxi;

    iget-object p1, p1, Lhxi;->a:Lhxj;

    sget-object v0, Lhxj;->d:Lhxj;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final d(Lklv;)I
    .locals 2

    iget-boolean v0, p0, Lfme;->e:Z

    if-nez v0, :cond_0

    iget-object p1, p0, Lfme;->f:Lgzm;

    sget-object v0, Lgzd;->e:Lgzs;

    invoke-interface {p1, v0}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Linb;->E(I)I

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lfme;->a:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhxi;

    invoke-direct {p0, p1}, Lfme;->e(Lklv;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lfme;->a(Lhxi;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lfme;->f:Lgzm;

    sget-object v0, Lgzd;->g:Lgzs;

    invoke-interface {p1, v0}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Linb;->E(I)I

    move-result p1

    return p1

    :cond_1
    invoke-virtual {p0, p1}, Lfme;->c(Lklv;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    return p1

    :cond_2
    iget-object p1, p0, Lfme;->f:Lgzm;

    sget-object v0, Lgzd;->e:Lgzs;

    invoke-interface {p1, v0}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Linb;->E(I)I

    move-result p1

    return p1
.end method
