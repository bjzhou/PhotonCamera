.class public final Lger;
.super Lgea;


# instance fields
.field private final a:Lgec;

.field private final b:Lmvv;

.field private final c:I

.field private final d:I

.field private final e:Ljwb;

.field private final f:Lmvv;

.field private final g:Lmvv;

.field private final h:Lmvv;

.field private final i:Ljava/util/function/Predicate;

.field private final j:Ljava/util/function/Predicate;

.field private final k:Ljava/util/function/BiPredicate;

.field private final l:Ljava/util/function/Consumer;

.field private final m:Lgek;

.field private final n:Ljava/util/function/BiConsumer;

.field private final o:Lgem;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgea;-><init>()V

    return-void
.end method

.method public constructor <init>(Lgec;Lmvv;IILjwb;Lmvv;Lmvv;Lmvv;Ljava/util/function/Predicate;Ljava/util/function/Predicate;Ljava/util/function/BiPredicate;Ljava/util/function/Consumer;Lgek;Ljava/util/function/BiConsumer;Lgem;)V
    .locals 0

    invoke-direct {p0}, Lgea;-><init>()V

    iput-object p1, p0, Lger;->a:Lgec;

    iput-object p2, p0, Lger;->b:Lmvv;

    iput p3, p0, Lger;->c:I

    iput p4, p0, Lger;->d:I

    iput-object p5, p0, Lger;->e:Ljwb;

    iput-object p6, p0, Lger;->f:Lmvv;

    iput-object p7, p0, Lger;->g:Lmvv;

    iput-object p8, p0, Lger;->h:Lmvv;

    iput-object p9, p0, Lger;->i:Ljava/util/function/Predicate;

    iput-object p10, p0, Lger;->j:Ljava/util/function/Predicate;

    iput-object p11, p0, Lger;->k:Ljava/util/function/BiPredicate;

    iput-object p12, p0, Lger;->l:Ljava/util/function/Consumer;

    iput-object p13, p0, Lger;->m:Lgek;

    iput-object p14, p0, Lger;->n:Ljava/util/function/BiConsumer;

    iput-object p15, p0, Lger;->o:Lgem;

    return-void
.end method

.method public static o()Lgeq;
    .locals 2

    new-instance v0, Lgeq;

    invoke-direct {v0}, Lgeq;-><init>()V

    sget-object v1, Lfjd;->f:Lfjd;

    invoke-virtual {v0, v1}, Lgeq;->o(Ljava/util/function/Predicate;)V

    sget-object v1, Lgeo;->a:Lgeo;

    invoke-virtual {v0, v1}, Lgeq;->p(Ljava/util/function/BiPredicate;)V

    sget-object v1, Lfah;->f:Lfah;

    invoke-virtual {v0, v1}, Lgeq;->l(Ljava/util/function/Consumer;)V

    sget-object v1, Lgep;->a:Lgep;

    invoke-virtual {v0, v1}, Lgeq;->k(Lgek;)V

    sget-object v1, Lgna;->b:Lgna;

    invoke-virtual {v0, v1}, Lgeq;->q(Ljava/util/function/BiConsumer;)V

    return-object v0
.end method

.method private final p(Lgej;Lmvv;)I
    .locals 1

    iget-object v0, p0, Lger;->b:Lmvv;

    invoke-virtual {v0, p1}, Lmvv;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    move-object v0, p2

    check-cast v0, Lmyu;

    iget v0, v0, Lmyu;->c:I

    if-ge p1, v0, :cond_0

    invoke-virtual {p2, p1}, Lmvv;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lger;->d:I

    return v0
.end method

.method protected final b(Lgej;)I
    .locals 1

    iget-object v0, p0, Lger;->g:Lmvv;

    invoke-direct {p0, p1, v0}, Lger;->p(Lgej;Lmvv;)I

    move-result p1

    return p1
.end method

.method public final d(Lgej;)I
    .locals 1

    iget-object v0, p0, Lger;->h:Lmvv;

    invoke-direct {p0, p1, v0}, Lger;->p(Lgej;Lmvv;)I

    move-result p1

    return p1
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lger;->c:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lger;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    check-cast p1, Lger;

    iget-object v1, p0, Lger;->a:Lgec;

    iget-object v3, p1, Lger;->a:Lgec;

    invoke-virtual {v1, v3}, Lgec;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lger;->b:Lmvv;

    iget-object v3, p1, Lger;->b:Lmvv;

    invoke-static {v1, v3}, Llyh;->I(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lger;->c:I

    iget v3, p1, Lger;->c:I

    if-ne v1, v3, :cond_3

    iget v1, p0, Lger;->d:I

    iget v3, p1, Lger;->d:I

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lger;->e:Ljwb;

    iget-object v3, p1, Lger;->e:Ljwb;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lger;->f:Lmvv;

    iget-object v3, p1, Lger;->f:Lmvv;

    invoke-static {v1, v3}, Llyh;->I(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lger;->g:Lmvv;

    iget-object v3, p1, Lger;->g:Lmvv;

    invoke-static {v1, v3}, Llyh;->I(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lger;->h:Lmvv;

    iget-object v3, p1, Lger;->h:Lmvv;

    invoke-static {v1, v3}, Llyh;->I(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lger;->i:Ljava/util/function/Predicate;

    iget-object v3, p1, Lger;->i:Ljava/util/function/Predicate;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lger;->j:Ljava/util/function/Predicate;

    iget-object v3, p1, Lger;->j:Ljava/util/function/Predicate;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lger;->k:Ljava/util/function/BiPredicate;

    iget-object v3, p1, Lger;->k:Ljava/util/function/BiPredicate;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lger;->l:Ljava/util/function/Consumer;

    iget-object v3, p1, Lger;->l:Ljava/util/function/Consumer;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lger;->m:Lgek;

    iget-object v3, p1, Lger;->m:Lgek;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lger;->n:Ljava/util/function/BiConsumer;

    iget-object v3, p1, Lger;->n:Ljava/util/function/BiConsumer;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lger;->o:Lgem;

    iget-object p1, p1, Lger;->o:Lgem;

    if-nez v1, :cond_1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_1
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    return v0

    :cond_3
    :goto_1
    return v2
.end method

.method protected final f(Lgej;)I
    .locals 1

    iget-object v0, p0, Lger;->f:Lmvv;

    invoke-direct {p0, p1, v0}, Lger;->p(Lgej;Lmvv;)I

    move-result p1

    return p1
.end method

.method public final g()Lgec;
    .locals 1

    iget-object v0, p0, Lger;->a:Lgec;

    return-object v0
.end method

.method public final h()Lgem;
    .locals 1

    iget-object v0, p0, Lger;->o:Lgem;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lger;->a:Lgec;

    invoke-virtual {v0}, Lgec;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    iget-object v2, p0, Lger;->b:Lmvv;

    invoke-virtual {v2}, Lmvv;->hashCode()I

    move-result v2

    mul-int v0, v0, v1

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget v2, p0, Lger;->c:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget v2, p0, Lger;->d:I

    xor-int/2addr v0, v2

    iget-object v2, p0, Lger;->e:Ljwb;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    mul-int v0, v0, v1

    xor-int/2addr v0, v2

    iget-object v2, p0, Lger;->f:Lmvv;

    invoke-virtual {v2}, Lmvv;->hashCode()I

    move-result v2

    mul-int v0, v0, v1

    xor-int/2addr v0, v2

    iget-object v2, p0, Lger;->g:Lmvv;

    invoke-virtual {v2}, Lmvv;->hashCode()I

    move-result v2

    mul-int v0, v0, v1

    xor-int/2addr v0, v2

    iget-object v2, p0, Lger;->h:Lmvv;

    invoke-virtual {v2}, Lmvv;->hashCode()I

    move-result v2

    mul-int v0, v0, v1

    xor-int/2addr v0, v2

    iget-object v2, p0, Lger;->i:Ljava/util/function/Predicate;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    mul-int v0, v0, v1

    xor-int/2addr v0, v2

    iget-object v2, p0, Lger;->j:Ljava/util/function/Predicate;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    mul-int v0, v0, v1

    xor-int/2addr v0, v2

    iget-object v2, p0, Lger;->k:Ljava/util/function/BiPredicate;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    mul-int v0, v0, v1

    xor-int/2addr v0, v2

    iget-object v2, p0, Lger;->l:Ljava/util/function/Consumer;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    mul-int v0, v0, v1

    xor-int/2addr v0, v2

    iget-object v2, p0, Lger;->m:Lgek;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    mul-int v0, v0, v1

    xor-int/2addr v0, v2

    iget-object v2, p0, Lger;->n:Ljava/util/function/BiConsumer;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    mul-int v0, v0, v1

    xor-int/2addr v0, v2

    iget-object v2, p0, Lger;->o:Lgem;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    mul-int v0, v0, v1

    xor-int/2addr v0, v2

    return v0
.end method

.method public final i()Ljwb;
    .locals 1

    iget-object v0, p0, Lger;->e:Ljwb;

    return-object v0
.end method

.method public final j()Lmvv;
    .locals 1

    iget-object v0, p0, Lger;->b:Lmvv;

    return-object v0
.end method

.method public final k(Lgeh;)V
    .locals 1

    iget-object v0, p0, Lger;->l:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final m(Lgeh;)Z
    .locals 1

    iget-object v0, p0, Lger;->j:Ljava/util/function/Predicate;

    invoke-interface {v0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final n(Lgeh;)Z
    .locals 1

    iget-object v0, p0, Lger;->i:Ljava/util/function/Predicate;

    invoke-interface {v0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lger;->a:Lgec;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lger;->b:Lmvv;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget v3, v0, Lger;->c:I

    iget v4, v0, Lger;->d:I

    iget-object v5, v0, Lger;->e:Ljwb;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lger;->f:Lmvv;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lger;->g:Lmvv;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lger;->h:Lmvv;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v0, Lger;->i:Ljava/util/function/Predicate;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v0, Lger;->j:Ljava/util/function/Predicate;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v0, Lger;->k:Ljava/util/function/BiPredicate;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    iget-object v12, v0, Lger;->l:Ljava/util/function/Consumer;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    iget-object v13, v0, Lger;->m:Lgek;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v0, Lger;->n:Ljava/util/function/BiConsumer;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    iget-object v15, v0, Lger;->o:Lgem;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v15

    const-string v15, "SimpleMenuItemImpl{category="

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", optionList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", labelId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", contentDescId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", property="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", labelIdList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", contentDescIdList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", iconIdList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", shouldBeVisiblePredicate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", shouldBeEnabledPredicate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", shouldOptionBeEnabledBiPredicate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", onMenuControllerReadyConsumer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", menuOptionBlockSelectionListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", showOrHideIconInMinibarBiConsumer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", onHelpClickListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u(Lgec;Lgej;Z)Z
    .locals 1

    iget-object v0, p0, Lger;->m:Lgek;

    invoke-interface {v0, p1, p2, p3}, Lgek;->u(Lgec;Lgej;Z)Z

    move-result p1

    return p1
.end method

.method public final v(Lgeh;Lgej;)Z
    .locals 1

    iget-object v0, p0, Lger;->k:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final z(Lgeh;Z)V
    .locals 1

    iget-object v0, p0, Lger;->n:Ljava/util/function/BiConsumer;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
