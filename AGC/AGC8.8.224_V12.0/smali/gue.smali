.class public final Lgue;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/lang/Object;

.field public final g:Ljava/lang/Object;

.field public final h:Ljava/lang/Object;

.field public final i:Ljava/lang/Object;

.field public final j:Ljava/lang/Object;

.field public final k:Ljava/lang/Object;

.field public final l:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ldmh;Lhgc;Lfbz;Ljwb;Ldja;Lhlq;Logd;Lgzi;Lmqp;Lmqp;Lmqp;Lmqp;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgue;->b:Ljava/lang/Object;

    iput-object p2, p0, Lgue;->c:Ljava/lang/Object;

    iput-object p3, p0, Lgue;->l:Ljava/lang/Object;

    iput-object p4, p0, Lgue;->e:Ljava/lang/Object;

    iput-object p5, p0, Lgue;->d:Ljava/lang/Object;

    iput-object p6, p0, Lgue;->f:Ljava/lang/Object;

    iput-object p7, p0, Lgue;->g:Ljava/lang/Object;

    iput-object p8, p0, Lgue;->j:Ljava/lang/Object;

    iput-object p9, p0, Lgue;->a:Ljava/lang/Object;

    iput-object p10, p0, Lgue;->k:Ljava/lang/Object;

    iput-object p11, p0, Lgue;->i:Ljava/lang/Object;

    iput-object p12, p0, Lgue;->h:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lfbk;Ljew;Lkte;Lgwf;Lgwu;Ljwb;Lgzm;Lkpo;Ljwb;Ljvs;Ljwb;Ljvs;[B[B[B[B)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p3

    iput-object v1, v0, Lgue;->k:Ljava/lang/Object;

    move-object v1, p1

    iput-object v1, v0, Lgue;->a:Ljava/lang/Object;

    move-object v1, p2

    iput-object v1, v0, Lgue;->l:Ljava/lang/Object;

    move-object v1, p4

    iput-object v1, v0, Lgue;->b:Ljava/lang/Object;

    move-object v1, p5

    iput-object v1, v0, Lgue;->c:Ljava/lang/Object;

    move-object v1, p8

    iput-object v1, v0, Lgue;->j:Ljava/lang/Object;

    move-object v1, p6

    iput-object v1, v0, Lgue;->d:Ljava/lang/Object;

    move-object v1, p12

    iput-object v1, v0, Lgue;->f:Ljava/lang/Object;

    move-object v1, p9

    iput-object v1, v0, Lgue;->e:Ljava/lang/Object;

    move-object v1, p10

    iput-object v1, v0, Lgue;->g:Ljava/lang/Object;

    move-object v1, p7

    iput-object v1, v0, Lgue;->i:Ljava/lang/Object;

    move-object v1, p11

    iput-object v1, v0, Lgue;->h:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lgml;->a:Lgml;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkfj;

    iput-object v0, p0, Lgue;->k:Ljava/lang/Object;

    sget-object v0, Lgml;->c:Lgml;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkfj;

    iput-object v0, p0, Lgue;->f:Ljava/lang/Object;

    sget-object v0, Lgml;->e:Lgml;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkfj;

    iput-object v0, p0, Lgue;->g:Ljava/lang/Object;

    sget-object v0, Lgml;->g:Lgml;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkfj;

    iput-object v0, p0, Lgue;->j:Ljava/lang/Object;

    sget-object v0, Lgml;->h:Lgml;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkfj;

    iput-object v0, p0, Lgue;->i:Ljava/lang/Object;

    sget-object v0, Lgml;->b:Lgml;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkfj;

    iput-object v0, p0, Lgue;->l:Ljava/lang/Object;

    sget-object v0, Lgml;->i:Lgml;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkfj;

    iput-object v0, p0, Lgue;->c:Ljava/lang/Object;

    sget-object v0, Lgml;->j:Lgml;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkfj;

    iput-object v0, p0, Lgue;->b:Ljava/lang/Object;

    sget-object v0, Lgml;->k:Lgml;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkfj;

    iput-object v0, p0, Lgue;->a:Ljava/lang/Object;

    sget-object v0, Lgml;->m:Lgml;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkfj;

    iput-object v0, p0, Lgue;->d:Ljava/lang/Object;

    sget-object v0, Lgml;->n:Lgml;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkfj;

    iput-object v0, p0, Lgue;->h:Ljava/lang/Object;

    sget-object v0, Lgml;->o:Lgml;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkfj;

    iput-object p1, p0, Lgue;->e:Ljava/lang/Object;

    return-void
.end method

.method private static final c(Lkfj;Ljava/util/Set;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lkfj;->c()Lkll;

    move-result-object p0

    iget-object p0, p0, Lkll;->a:Ljava/lang/String;

    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a(Lkeb;)Lgli;
    .locals 2

    new-instance v0, Lgli;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lgli;-><init>(Lgue;Lkeb;[B)V

    return-object v0
.end method

.method public final b(Lkou;)Ljava/lang/String;
    .locals 3

    invoke-interface {p1}, Lkou;->e()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lkou;->g()Ljava/util/Map;

    move-result-object p1

    check-cast p1, Lmwa;

    invoke-virtual {p1}, Lmwa;->s()Lmwn;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Llyh;->U(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    if-le v1, v2, :cond_2

    iget-object v1, p0, Lgue;->f:Ljava/lang/Object;

    invoke-static {v1, p1}, Lgue;->c(Lkfj;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lgue;->g:Ljava/lang/Object;

    invoke-static {v1, p1}, Lgue;->c(Lkfj;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    return-object v0
.end method
