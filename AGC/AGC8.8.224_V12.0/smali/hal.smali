.class public final Lhal;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lnak;


# instance fields
.field private final b:Lfuj;

.field private final c:Lgzi;

.field private final d:Ldhi;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljwb;

.field private final h:Ljwb;

.field private final i:Ljwb;

.field private final j:Ljvs;

.field private final k:Lfme;

.field private final l:Ljvs;

.field private final m:Lkha;

.field private final n:Ljuf;

.field private final o:Lklx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/settings/resolution/ResolutionSetting"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lhal;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Lfuj;Lgzi;Lklx;Lkha;Lgzn;Ljwb;Lcdi;Ldhi;Ljvs;Lfme;Ljvs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhal;->b:Lfuj;

    iput-object p2, p0, Lhal;->c:Lgzi;

    iput-object p3, p0, Lhal;->o:Lklx;

    iput-object p4, p0, Lhal;->m:Lkha;

    iput-object p8, p0, Lhal;->d:Ldhi;

    sget-object p1, Lgzd;->e:Lgzs;

    invoke-interface {p5, p1}, Lgzn;->b(Lgzb;)Ljwb;

    move-result-object p1

    iput-object p1, p0, Lhal;->g:Ljwb;

    sget-object p2, Lgzd;->g:Lgzs;

    invoke-interface {p5, p2}, Lgzn;->b(Lgzb;)Ljwb;

    move-result-object p2

    iput-object p2, p0, Lhal;->h:Ljwb;

    iput-object p6, p0, Lhal;->i:Ljwb;

    invoke-virtual {p7}, Lcdi;->i()Ljuf;

    move-result-object p3

    iput-object p3, p0, Lhal;->n:Ljuf;

    iput-object p9, p0, Lhal;->j:Ljvs;

    iput-object p10, p0, Lhal;->k:Lfme;

    iput-object p11, p0, Lhal;->l:Ljvs;

    sget-object p4, Ldho;->ac:Ldhj;

    invoke-interface {p8, p4}, Ldhi;->j(Ldhj;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p4, p0, Lhal;->e:Ljava/lang/String;

    sget-object p4, Ldho;->ad:Ldhj;

    invoke-interface {p8, p4}, Ldhi;->j(Ldhj;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p4, p0, Lhal;->f:Ljava/lang/String;

    new-instance p4, Lguy;

    const/16 p5, 0xc

    invoke-direct {p4, p0, p5}, Lguy;-><init>(Lhal;I)V

    sget-object p5, Lnnv;->a:Lnnv;

    invoke-interface {p6, p4, p5}, Ljwb;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljuf;->d(Lkad;)V

    new-instance p4, Lguy;

    const/16 p5, 0xa

    invoke-direct {p4, p0, p5}, Lguy;-><init>(Lhal;I)V

    sget-object p5, Lnnv;->a:Lnnv;

    invoke-interface {p1, p4, p5}, Ljwb;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljuf;->d(Lkad;)V

    sget-object p1, Ldho;->bQ:Ldhj;

    invoke-interface {p8, p1}, Ldhi;->l(Ldhj;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lguy;

    const/16 p4, 0xb

    invoke-direct {p1, p0, p4}, Lguy;-><init>(Lhal;I)V

    sget-object p4, Lnnv;->a:Lnnv;

    invoke-interface {p2, p1, p4}, Ljwb;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljuf;->d(Lkad;)V

    :cond_0
    sget-object p1, Ldho;->bQ:Ldhj;

    invoke-interface {p8, p1}, Ldhi;->l(Ldhj;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lguy;

    const/16 p2, 0x9

    invoke-direct {p1, p0, p2}, Lguy;-><init>(Lhal;I)V

    sget-object p2, Lnnv;->a:Lnnv;

    invoke-interface {p9, p1, p2}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljuf;->d(Lkad;)V

    new-instance p1, Lguy;

    const/16 p2, 0x8

    invoke-direct {p1, p0, p2}, Lguy;-><init>(Lhal;I)V

    sget-object p2, Lnnv;->a:Lnnv;

    invoke-interface {p11, p1, p2}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljuf;->d(Lkad;)V

    :cond_1
    return-void
.end method

.method private final d(ILklv;Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lhal;->m:Lkha;

    iget-object v0, v0, Lkha;->a:Lklj;

    invoke-interface {v0, p2}, Lklj;->e(Lklv;)Lkll;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p1, Lhal;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->b()Lnaz;

    move-result-object p1

    const-string p3, "Unable to fetch camera ID for facing value: %s"

    const/16 v0, 0xd46

    invoke-static {p1, p3, p2, v0}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    return-void

    :cond_0
    iget-object v1, p0, Lhal;->m:Lkha;

    iget-object v1, v1, Lkha;->a:Lklj;

    iget-object v2, p0, Lhal;->b:Lfuj;

    iget-object v3, p0, Lhal;->d:Ldhi;

    invoke-static {v0, v1, v2, v3}, Lgky;->h(Lkll;Lklj;Lfuj;Ldhi;)Lfuz;

    move-result-object v0

    invoke-static {p2}, Lhap;->b(Lklv;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object p1, Lhal;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->b()Lnaz;

    move-result-object p1

    const-string p3, "Undefined picture size setting key for facing %s."

    const/16 v0, 0xd45

    invoke-static {p1, p3, p2, v0}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    return-void

    :cond_1
    const/16 v2, 0x100

    invoke-interface {v0, v2}, Lkli;->x(I)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lhak;

    invoke-direct {v2, p1}, Lhak;-><init>(I)V

    invoke-interface {v0, v2}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object v2

    invoke-interface {v0, v2}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v2, p0, Lhal;->d:Ldhi;

    sget-object v3, Ldho;->bk:Ldhj;

    invoke-interface {v2, v3}, Ldhi;->j(Ldhj;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lklv;->a:Lklv;

    if-ne p2, v3, :cond_2

    invoke-static {p1}, Linb;->F(I)Ljzr;

    move-result-object p1

    sget-object p2, Ljzr;->a:Ljzr;

    invoke-virtual {p1, p2}, Ljzr;->m(Ljzr;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {v2}, Lkba;->e(Ljava/lang/String;)Lkaf;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p1

    sget-object p2, Lye;->b:Lye;

    invoke-static {p2}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object p2

    invoke-interface {p1, p2}, Lj$/util/stream/Stream;->sorted(Ljava/util/Comparator;)Lj$/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    const/4 v0, 0x1

    xor-int/2addr p2, v0

    invoke-static {p2}, Lmoz;->p(Z)V

    const-string p2, "full"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v2, 0x0

    if-eqz p2, :cond_3

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkaf;

    goto :goto_0

    :cond_3
    const-string p2, "medium"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-le p2, v0, :cond_4

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lkaf;

    invoke-virtual {p3}, Lkaf;->b()J

    move-result-wide v3

    const-wide/32 v5, 0x500000

    cmp-long v0, v3, v5

    if-gez v0, :cond_5

    move-object p1, p3

    goto :goto_0

    :cond_6
    sget-object p2, Lhal;->a:Lnak;

    invoke-virtual {p2}, Lnaf;->c()Lnaz;

    move-result-object p2

    const-string p3, "Invalid resolution setting, using default."

    const/16 v0, 0xd42

    invoke-static {p2, p3, v0}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkaf;

    :goto_0
    iget-object p2, p0, Lhal;->c:Lgzi;

    invoke-static {p1}, Lkba;->g(Lkaf;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Lgzi;->k(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Lkll;Lklv;)Lkaf;
    .locals 9

    sget-object v0, Lklv;->a:Lklv;

    sget-object v1, Lklv;->b:Lklv;

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lhal;->e:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v1, Lklv;->a:Lklv;

    if-ne p2, v1, :cond_1

    iget-object v1, p0, Lhal;->f:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v1, ""

    :goto_0
    iget-object v2, p0, Lhal;->c:Lgzi;

    if-ne p2, v0, :cond_2

    const-string p2, "pref_camera_picturesize_front_key"

    goto :goto_1

    :cond_2
    const-string p2, "pref_camera_picturesize_back_key"

    :goto_1
    invoke-virtual {v2, p2}, Lgzi;->n(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    iget-object v4, p0, Lhal;->c:Lgzi;

    invoke-virtual {v4, p2}, Lgzi;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkba;->e(Ljava/lang/String;)Lkaf;

    move-result-object v4

    if-eqz v4, :cond_5

    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    if-nez v6, :cond_3

    const/4 v5, 0x0

    goto :goto_3

    :cond_3
    new-instance v6, Ljava/util/HashSet;

    invoke-static {v5}, Llyh;->E([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v4, v6}, Ljhp;->as(Lkaf;Ljava/util/Set;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v5, 0x1

    :goto_3
    goto :goto_4

    :cond_6
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_4
    iget-object v6, p0, Lhal;->o:Lklx;

    iget-object v7, p0, Lhal;->b:Lfuj;

    iget-object v8, p0, Lhal;->d:Ldhi;

    invoke-static {p1, v6, v7, v8}, Lgky;->h(Lkll;Lklj;Lfuj;Ldhi;)Lfuz;

    move-result-object p1

    const/16 v6, 0x100

    invoke-virtual {p1, v6}, Lklw;->x(I)Ljava/util/List;

    move-result-object p1

    if-eqz v4, :cond_7

    iget v6, v4, Lkaf;->a:I

    if-lez v6, :cond_7

    iget v6, v4, Lkaf;->b:I

    if-lez v6, :cond_7

    invoke-interface {p1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_5

    :cond_7
    const/4 v2, 0x0

    :goto_5
    if-eqz v0, :cond_8

    if-nez v5, :cond_8

    if-nez v2, :cond_9

    :cond_8
    invoke-static {p1, v1}, Ljhp;->ar(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkba;->f(Ljava/util/List;)Lkaf;

    move-result-object v4

    iget-object p1, p0, Lhal;->c:Lgzi;

    invoke-static {v4}, Lkba;->g(Lkaf;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lgzi;->k(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lhal;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    const-string p2, "Picture size setting is not set. Selecting fallback: %s"

    const/16 v0, 0xd41

    invoke-static {p1, p2, v4, v0}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    :cond_9
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v4
.end method

.method public final b(Lklv;)V
    .locals 5

    invoke-static {p1}, Lhap;->b(Lklv;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lhal;->c:Lgzi;

    invoke-virtual {v1, v0}, Lgzi;->n(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lhal;->o:Lklx;

    invoke-virtual {v1, p1}, Lklx;->e(Lklv;)Lkll;

    move-result-object v1

    if-nez v1, :cond_2

    sget-object v0, Lhal;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "Failed to retrieve a camera id for facing: %s"

    const/16 v2, 0xd44

    invoke-static {v0, v1, p1, v2}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    return-void

    :cond_2
    iget-object v2, p0, Lhal;->o:Lklx;

    iget-object v3, p0, Lhal;->b:Lfuj;

    iget-object v4, p0, Lhal;->d:Ldhi;

    invoke-static {v1, v2, v3, v4}, Lgky;->h(Lkll;Lklj;Lfuj;Ldhi;)Lfuz;

    move-result-object v1

    sget-object v2, Lklv;->b:Lklv;

    if-ne p1, v2, :cond_3

    iget-object p1, p0, Lhal;->e:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lhal;->f:Ljava/lang/String;

    :goto_0
    const/16 v2, 0x100

    invoke-virtual {v1, v2}, Lklw;->x(I)Ljava/util/List;

    move-result-object v1

    invoke-static {v1, p1}, Ljhp;->ar(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkba;->f(Ljava/util/List;)Lkaf;

    move-result-object p1

    iget-object v1, p0, Lhal;->c:Lgzi;

    invoke-static {p1}, Lkba;->g(Lkaf;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lgzi;->k(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Lhal;->i:Ljwb;

    invoke-interface {v0}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lhal;->k:Lfme;

    sget-object v2, Lklv;->b:Lklv;

    invoke-virtual {v1, v2}, Lfme;->d(Lklv;)I

    move-result v1

    sget-object v2, Lklv;->b:Lklv;

    invoke-direct {p0, v1, v2, v0}, Lhal;->d(ILklv;Ljava/lang/String;)V

    iget-object v1, p0, Lhal;->k:Lfme;

    sget-object v2, Lklv;->a:Lklv;

    invoke-virtual {v1, v2}, Lfme;->d(Lklv;)I

    move-result v1

    sget-object v2, Lklv;->a:Lklv;

    invoke-direct {p0, v1, v2, v0}, Lhal;->d(ILklv;Ljava/lang/String;)V

    return-void
.end method
