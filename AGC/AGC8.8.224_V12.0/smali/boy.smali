.class public final Lboy;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lbzf;

.field public final b:Laed;

.field public final c:Lbkc;

.field public final d:Lbkc;

.field public final e:Lbkc;

.field public final f:Ldne;

.field public final g:Ldne;

.field public final h:Ldne;

.field private final i:Lbqt;

.field private final j:Lbkc;


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ldne;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Ldne;-><init>([B[B)V

    iput-object v0, p0, Lboy;->g:Ldne;

    new-instance v0, Lbzf;

    invoke-direct {v0}, Lbzf;-><init>()V

    iput-object v0, p0, Lboy;->a:Lbzf;

    new-instance v0, Laef;

    const/16 v2, 0x14

    invoke-direct {v0, v2}, Laef;-><init>(I)V

    new-instance v2, Lbtr;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lbtr;-><init>(I)V

    new-instance v4, Lcay;

    invoke-direct {v4}, Lcay;-><init>()V

    invoke-static {v0, v2, v4}, Lcbd;->a(Laed;Lcaz;Lcbc;)Laed;

    move-result-object v0

    iput-object v0, p0, Lboy;->b:Laed;

    new-instance v2, Ldne;

    invoke-direct {v2, v0}, Ldne;-><init>(Laed;)V

    iput-object v2, p0, Lboy;->h:Ldne;

    new-instance v0, Lbkc;

    invoke-direct {v0, v1, v1}, Lbkc;-><init>([C[C)V

    iput-object v0, p0, Lboy;->d:Lbkc;

    new-instance v0, Ldne;

    invoke-direct {v0, v1}, Ldne;-><init>([B)V

    iput-object v0, p0, Lboy;->f:Ldne;

    new-instance v0, Lbkc;

    invoke-direct {v0, v1, v1}, Lbkc;-><init>([B[C)V

    iput-object v0, p0, Lboy;->c:Lbkc;

    new-instance v0, Lbqt;

    invoke-direct {v0}, Lbqt;-><init>()V

    iput-object v0, p0, Lboy;->i:Lbqt;

    new-instance v0, Lbkc;

    invoke-direct {v0, v1, v1, v1, v1}, Lbkc;-><init>([B[B[B[B)V

    iput-object v0, p0, Lboy;->e:Lbkc;

    new-instance v0, Lbkc;

    invoke-direct {v0, v1, v1, v1}, Lbkc;-><init>([B[B[C)V

    iput-object v0, p0, Lboy;->j:Lbkc;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Animation"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Bitmap"

    aput-object v2, v0, v1

    const-string v1, "BitmapDrawable"

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const-string v2, "legacy_prepend_all"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v0, "legacy_append"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lboy;->f:Ldne;

    invoke-virtual {v0, v1}, Ldne;->v(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lbqq;
    .locals 1

    iget-object v0, p0, Lboy;->i:Lbqt;

    invoke-virtual {v0, p1}, Lbqt;->a(Ljava/lang/Object;)Lbqq;

    move-result-object p1

    return-object p1
.end method

.method public final b()Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lboy;->j:Lbkc;

    invoke-virtual {v0}, Lbkc;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lbou;

    invoke-direct {v0}, Lbou;-><init>()V

    throw v0
.end method

.method public final c(Ljava/lang/Object;)Ljava/util/List;
    .locals 8

    iget-object v0, p0, Lboy;->h:Ldne;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldne;->C(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_2

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lbuz;

    invoke-interface {v6, p1}, Lbuz;->a(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    if-eqz v3, :cond_0

    sub-int v2, v1, v5

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v3

    :cond_0
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    return-object v2

    :cond_3
    new-instance v1, Lbov;

    invoke-direct {v1, p1, v0}, Lbov;-><init>(Ljava/lang/Object;Ljava/util/List;)V

    throw v1

    :cond_4
    new-instance v0, Lbov;

    invoke-direct {v0, p1}, Lbov;-><init>(Ljava/lang/Object;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final d(Ljava/lang/Class;Lbpt;)V
    .locals 1

    iget-object v0, p0, Lboy;->d:Lbkc;

    invoke-virtual {v0, p1, p2}, Lbkc;->l(Ljava/lang/Class;Lbpt;)V

    return-void
.end method

.method public final e(Ljava/lang/Class;Lbqi;)V
    .locals 1

    iget-object v0, p0, Lboy;->c:Lbkc;

    invoke-virtual {v0, p1, p2}, Lbkc;->h(Ljava/lang/Class;Lbqi;)V

    return-void
.end method

.method public final f(Ljava/lang/Class;Ljava/lang/Class;Lbqh;)V
    .locals 1

    const-string v0, "legacy_append"

    invoke-virtual {p0, v0, p1, p2, p3}, Lboy;->h(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lbqh;)V

    return-void
.end method

.method public final g(Ljava/lang/Class;Ljava/lang/Class;Lbva;)V
    .locals 1

    iget-object v0, p0, Lboy;->h:Ldne;

    invoke-virtual {v0, p1, p2, p3}, Ldne;->D(Ljava/lang/Class;Ljava/lang/Class;Lbva;)V

    return-void
.end method

.method public final h(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lbqh;)V
    .locals 1

    iget-object v0, p0, Lboy;->f:Ldne;

    invoke-virtual {v0, p1, p4, p2, p3}, Ldne;->u(Ljava/lang/String;Lbqh;Ljava/lang/Class;Ljava/lang/Class;)V

    return-void
.end method

.method public final i(Lbpv;)V
    .locals 1

    iget-object v0, p0, Lboy;->j:Lbkc;

    invoke-virtual {v0, p1}, Lbkc;->j(Lbpv;)V

    return-void
.end method

.method public final j(Lbqp;)V
    .locals 1

    iget-object v0, p0, Lboy;->i:Lbqt;

    invoke-virtual {v0, p1}, Lbqt;->b(Lbqp;)V

    return-void
.end method

.method public final k(Ljava/lang/Class;Ljava/lang/Class;Lbyg;)V
    .locals 1

    iget-object v0, p0, Lboy;->e:Lbkc;

    invoke-virtual {v0, p1, p2, p3}, Lbkc;->o(Ljava/lang/Class;Ljava/lang/Class;Lbyg;)V

    return-void
.end method
