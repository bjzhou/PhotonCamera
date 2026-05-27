.class public final Lgeq;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljwb;

.field public b:Lgem;

.field private final c:Lmvq;

.field private final d:Lmvq;

.field private final e:Lmvq;

.field private final f:Lmvq;

.field private g:Lgec;

.field private h:Lmvv;

.field private i:I

.field private j:I

.field private k:Lmvv;

.field private l:Lmvv;

.field private m:Lmvv;

.field private n:Ljava/util/function/Predicate;

.field private o:Ljava/util/function/Predicate;

.field private p:Ljava/util/function/BiPredicate;

.field private q:Ljava/util/function/Consumer;

.field private r:Lgek;

.field private s:Ljava/util/function/BiConsumer;

.field private t:B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmvq;

    invoke-direct {v0}, Lmvq;-><init>()V

    iput-object v0, p0, Lgeq;->c:Lmvq;

    new-instance v0, Lmvq;

    invoke-direct {v0}, Lmvq;-><init>()V

    iput-object v0, p0, Lgeq;->d:Lmvq;

    new-instance v0, Lmvq;

    invoke-direct {v0}, Lmvq;-><init>()V

    iput-object v0, p0, Lgeq;->e:Lmvq;

    new-instance v0, Lmvq;

    invoke-direct {v0}, Lmvq;-><init>()V

    iput-object v0, p0, Lgeq;->f:Lmvq;

    return-void
.end method


# virtual methods
.method public final a()Lger;
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lgeq;->h:Lmvv;

    if-nez v1, :cond_0

    sget-object v1, Lmpx;->a:Lmpx;

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lgeq;->c:Lmvq;

    invoke-virtual {v1}, Lmvq;->f()Lmvv;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgeq;->m(Lmvv;)V

    iget-object v1, v0, Lgeq;->d:Lmvq;

    invoke-virtual {v1}, Lmvq;->f()Lmvv;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgeq;->f(Lmvv;)V

    iget-object v1, v0, Lgeq;->e:Lmvq;

    invoke-virtual {v1}, Lmvq;->f()Lmvv;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgeq;->i(Lmvv;)V

    iget-object v1, v0, Lgeq;->f:Lmvq;

    invoke-virtual {v1}, Lmvq;->f()Lmvv;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgeq;->d(Lmvv;)V

    :cond_1
    iget-byte v1, v0, Lgeq;->t:B

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    iget-object v4, v0, Lgeq;->g:Lgec;

    if-eqz v4, :cond_3

    iget-object v5, v0, Lgeq;->h:Lmvv;

    if-eqz v5, :cond_3

    iget-object v8, v0, Lgeq;->a:Ljwb;

    if-eqz v8, :cond_3

    iget-object v9, v0, Lgeq;->k:Lmvv;

    if-eqz v9, :cond_3

    iget-object v10, v0, Lgeq;->l:Lmvv;

    if-eqz v10, :cond_3

    iget-object v11, v0, Lgeq;->m:Lmvv;

    if-eqz v11, :cond_3

    iget-object v12, v0, Lgeq;->n:Ljava/util/function/Predicate;

    if-eqz v12, :cond_3

    iget-object v13, v0, Lgeq;->o:Ljava/util/function/Predicate;

    if-eqz v13, :cond_3

    iget-object v14, v0, Lgeq;->p:Ljava/util/function/BiPredicate;

    if-eqz v14, :cond_3

    iget-object v15, v0, Lgeq;->q:Ljava/util/function/Consumer;

    if-eqz v15, :cond_3

    iget-object v1, v0, Lgeq;->r:Lgek;

    if-eqz v1, :cond_3

    iget-object v2, v0, Lgeq;->s:Ljava/util/function/BiConsumer;

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance v19, Lger;

    iget v6, v0, Lgeq;->i:I

    iget v7, v0, Lgeq;->j:I

    iget-object v3, v0, Lgeq;->b:Lgem;

    move-object/from16 v18, v3

    move-object/from16 v3, v19

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    invoke-direct/range {v3 .. v18}, Lger;-><init>(Lgec;Lmvv;IILjwb;Lmvv;Lmvv;Lmvv;Ljava/util/function/Predicate;Ljava/util/function/Predicate;Ljava/util/function/BiPredicate;Ljava/util/function/Consumer;Lgek;Ljava/util/function/BiConsumer;Lgem;)V

    return-object v19

    :cond_3
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lgeq;->g:Lgec;

    if-nez v2, :cond_4

    const-string v2, " category"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v2, v0, Lgeq;->h:Lmvv;

    if-nez v2, :cond_5

    const-string v2, " optionList"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-byte v2, v0, Lgeq;->t:B

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_6

    const-string v2, " labelId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget-byte v2, v0, Lgeq;->t:B

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_7

    const-string v2, " contentDescId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    iget-object v2, v0, Lgeq;->a:Ljwb;

    if-nez v2, :cond_8

    const-string v2, " property"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    iget-object v2, v0, Lgeq;->k:Lmvv;

    if-nez v2, :cond_9

    const-string v2, " labelIdList"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    iget-object v2, v0, Lgeq;->l:Lmvv;

    if-nez v2, :cond_a

    const-string v2, " contentDescIdList"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    iget-object v2, v0, Lgeq;->m:Lmvv;

    if-nez v2, :cond_b

    const-string v2, " iconIdList"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    iget-object v2, v0, Lgeq;->n:Ljava/util/function/Predicate;

    if-nez v2, :cond_c

    const-string v2, " shouldBeVisiblePredicate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    iget-object v2, v0, Lgeq;->o:Ljava/util/function/Predicate;

    if-nez v2, :cond_d

    const-string v2, " shouldBeEnabledPredicate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    iget-object v2, v0, Lgeq;->p:Ljava/util/function/BiPredicate;

    if-nez v2, :cond_e

    const-string v2, " shouldOptionBeEnabledBiPredicate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    iget-object v2, v0, Lgeq;->q:Ljava/util/function/Consumer;

    if-nez v2, :cond_f

    const-string v2, " onMenuControllerReadyConsumer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    iget-object v2, v0, Lgeq;->r:Lgek;

    if-nez v2, :cond_10

    const-string v2, " menuOptionBlockSelectionListener"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    iget-object v2, v0, Lgeq;->s:Ljava/util/function/BiConsumer;

    if-nez v2, :cond_11

    const-string v2, " showOrHideIconInMinibarBiConsumer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Missing required properties:"

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final b(Lgej;III)V
    .locals 1

    iget-object v0, p0, Lgeq;->c:Lmvq;

    invoke-virtual {v0, p1}, Lmvq;->g(Ljava/lang/Object;)V

    iget-object p1, p0, Lgeq;->d:Lmvq;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmvq;->g(Ljava/lang/Object;)V

    iget-object p1, p0, Lgeq;->e:Lmvq;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmvq;->g(Ljava/lang/Object;)V

    iget-object p1, p0, Lgeq;->f:Lmvq;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmvq;->g(Ljava/lang/Object;)V

    return-void
.end method

.method public final c(I)V
    .locals 0

    iput p1, p0, Lgeq;->j:I

    iget-byte p1, p0, Lgeq;->t:B

    or-int/lit8 p1, p1, 0x2

    int-to-byte p1, p1

    iput-byte p1, p0, Lgeq;->t:B

    return-void
.end method

.method public final d(Lmvv;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lgeq;->l:Lmvv;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null contentDescIdList"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final varargs e([Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p1}, Lmvv;->k([Ljava/lang/Object;)Lmvv;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgeq;->d(Lmvv;)V

    return-void
.end method

.method public final f(Lmvv;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lgeq;->m:Lmvv;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null iconIdList"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final varargs g([Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p1}, Lmvv;->k([Ljava/lang/Object;)Lmvv;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgeq;->f(Lmvv;)V

    return-void
.end method

.method public final h(I)V
    .locals 0

    iput p1, p0, Lgeq;->i:I

    iget-byte p1, p0, Lgeq;->t:B

    or-int/lit8 p1, p1, 0x1

    int-to-byte p1, p1

    iput-byte p1, p0, Lgeq;->t:B

    return-void
.end method

.method public final i(Lmvv;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lgeq;->k:Lmvv;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null labelIdList"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final varargs j([Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p1}, Lmvv;->k([Ljava/lang/Object;)Lmvv;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgeq;->i(Lmvv;)V

    return-void
.end method

.method public final k(Lgek;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lgeq;->r:Lgek;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null menuOptionBlockSelectionListener"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final l(Ljava/util/function/Consumer;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lgeq;->q:Ljava/util/function/Consumer;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null onMenuControllerReadyConsumer"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final m(Lmvv;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lgeq;->h:Lmvv;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null optionList"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final varargs n([Lgej;)V
    .locals 0

    invoke-static {p1}, Lmvv;->k([Ljava/lang/Object;)Lmvv;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgeq;->m(Lmvv;)V

    return-void
.end method

.method public final o(Ljava/util/function/Predicate;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lgeq;->o:Ljava/util/function/Predicate;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null shouldBeEnabledPredicate"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final p(Ljava/util/function/BiPredicate;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lgeq;->p:Ljava/util/function/BiPredicate;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null shouldOptionBeEnabledBiPredicate"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final q(Ljava/util/function/BiConsumer;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lgeq;->s:Ljava/util/function/BiConsumer;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null showOrHideIconInMinibarBiConsumer"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final r(Lgec;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lgeq;->g:Lgec;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null category"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final s(Ljava/util/function/Predicate;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lgeq;->n:Ljava/util/function/Predicate;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null shouldBeVisiblePredicate"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final t(Lika;)V
    .locals 2

    new-instance v0, Ldaa;

    const/16 v1, 0x11

    invoke-direct {v0, p1, v1}, Ldaa;-><init>(Lika;I)V

    invoke-virtual {p0, v0}, Lgeq;->s(Ljava/util/function/Predicate;)V

    return-void
.end method
