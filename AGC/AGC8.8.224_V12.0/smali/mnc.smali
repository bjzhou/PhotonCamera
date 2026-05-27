.class abstract Lmnc;
.super Ljava/lang/Object;

# interfaces
.implements Lmnt;


# instance fields
.field private final a:Lmnt;

.field private final b:Ljava/util/UUID;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/UUID;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmnc;->c:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lmnc;->a:Lmnt;

    iput-object p2, p0, Lmnc;->b:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lmnt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmnc;->c:Ljava/lang/String;

    iput-object p2, p0, Lmnc;->a:Lmnt;

    invoke-interface {p2}, Lmnt;->c()Ljava/util/UUID;

    move-result-object p1

    iput-object p1, p0, Lmnc;->b:Ljava/util/UUID;

    return-void
.end method


# virtual methods
.method public final a()Lmnt;
    .locals 1

    iget-object v0, p0, Lmnc;->a:Lmnt;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmnc;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/util/UUID;
    .locals 1

    iget-object v0, p0, Lmnc;->b:Ljava/util/UUID;

    return-object v0
.end method

.method public final close()V
    .locals 6

    sget-object v0, Lmoc;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmob;

    iget-object v1, v0, Lmob;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne p0, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-interface {p0}, Lmnt;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lmnt;->b()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Tried to end span %s, but that span is not the current span. The current span is %s."

    invoke-static {v2, v5, v3, v4}, Lmoz;->t(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1}, Lmnt;->a()Lmnt;

    move-result-object v1

    invoke-static {v0, v1}, Lmoc;->c(Lmob;Lmnt;)Lmnt;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 16

    sget-object v0, Lmoc;->a:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p0

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v1}, Lmnt;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-interface {v1}, Lmnt;->a()Lmnt;

    move-result-object v1

    if-eqz v1, :cond_0

    add-int/lit8 v3, v3, 0x4

    goto :goto_0

    :cond_1
    const/16 v1, 0xfa

    const-string v5, " -> "

    if-le v2, v1, :cond_1b

    add-int/lit8 v1, v2, -0x1

    new-array v6, v2, [Ljava/lang/String;

    move-object/from16 v7, p0

    :goto_1
    if-ltz v1, :cond_2

    invoke-interface {v7}, Lmnt;->b()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v1

    invoke-interface {v7}, Lmnt;->a()Lmnt;

    move-result-object v7

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    invoke-static {}, Lmwa;->i()Lmvw;

    move-result-object v1

    invoke-static {v6}, Lmwn;->G([Ljava/lang/Object;)Lmwn;

    move-result-object v7

    invoke-virtual {v7}, Lmwn;->cz()Lnac;

    move-result-object v7

    const/4 v8, 0x0

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v10, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v9, v8}, Lmvw;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    move v8, v10

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Lmvw;->b()Lmwa;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lmyz;

    iget v8, v7, Lmyz;->c:I

    shr-int/lit8 v9, v2, 0x2

    const/4 v11, 0x1

    if-le v8, v9, :cond_4

    const/4 v10, 0x0

    goto/16 :goto_d

    :cond_4
    add-int/lit8 v8, v2, 0x1

    new-array v12, v8, [I

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v2, :cond_5

    aget-object v14, v6, v13

    invoke-virtual {v1, v14}, Lmwa;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    aput v14, v12, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_5
    iget v1, v7, Lmyz;->c:I

    aput v1, v12, v2

    new-instance v1, Lmns;

    invoke-direct {v1, v12}, Lmns;-><init>([I)V

    const/4 v7, 0x0

    :goto_4
    const/4 v12, -0x1

    if-ge v7, v8, :cond_e

    iget v13, v1, Lmns;->f:I

    add-int/2addr v13, v11

    iput v13, v1, Lmns;->f:I

    iget-object v13, v1, Lmns;->a:[I

    aget v13, v13, v7

    const/4 v14, 0x0

    :goto_5
    iget v15, v1, Lmns;->f:I

    if-lez v15, :cond_d

    iget v15, v1, Lmns;->e:I

    const/high16 v10, 0x40000000    # 2.0f

    if-nez v15, :cond_9

    iget-object v15, v1, Lmns;->c:Lmnq;

    iget-object v15, v15, Lmnq;->d:Ljava/util/Map;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v15, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_7

    new-instance v15, Lmnq;

    invoke-direct {v15, v7, v10}, Lmnq;-><init>(II)V

    iget-object v10, v1, Lmns;->c:Lmnq;

    iget-object v10, v10, Lmnq;->d:Ljava/util/Map;

    invoke-interface {v10, v4, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v14, :cond_6

    iget-object v4, v1, Lmns;->c:Lmnq;

    iput-object v4, v14, Lmnq;->c:Lmnq;

    :cond_6
    iget v4, v1, Lmns;->f:I

    add-int/2addr v4, v12

    iput v4, v1, Lmns;->f:I

    invoke-virtual {v1}, Lmns;->a()V

    const/4 v14, 0x0

    goto :goto_5

    :cond_7
    if-eqz v14, :cond_8

    iget-object v4, v1, Lmns;->c:Lmnq;

    iput-object v4, v14, Lmnq;->c:Lmnq;

    :cond_8
    iput v7, v1, Lmns;->d:I

    iget v4, v1, Lmns;->e:I

    add-int/2addr v4, v11

    iput v4, v1, Lmns;->e:I

    invoke-virtual {v1}, Lmns;->b()V

    goto/16 :goto_6

    :cond_9
    iget-object v4, v1, Lmns;->a:[I

    iget-object v15, v1, Lmns;->c:Lmnq;

    iget-object v15, v15, Lmnq;->d:Ljava/util/Map;

    iget v0, v1, Lmns;->d:I

    aget v0, v4, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmnq;

    iget v0, v0, Lmnq;->a:I

    iget v15, v1, Lmns;->e:I

    add-int/2addr v0, v15

    aget v0, v4, v0

    if-ne v0, v13, :cond_b

    if-eqz v14, :cond_a

    iget-object v0, v1, Lmns;->c:Lmnq;

    iput-object v0, v14, Lmnq;->c:Lmnq;

    :cond_a
    add-int/lit8 v15, v15, 0x1

    iput v15, v1, Lmns;->e:I

    invoke-virtual {v1}, Lmns;->b()V

    goto :goto_6

    :cond_b
    iget-object v0, v1, Lmns;->c:Lmnq;

    iget-object v0, v0, Lmnq;->d:Ljava/util/Map;

    iget-object v4, v1, Lmns;->a:[I

    iget v15, v1, Lmns;->d:I

    aget v4, v4, v15

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmnq;

    new-instance v4, Lmnq;

    iget v15, v0, Lmnq;->a:I

    iget v10, v1, Lmns;->e:I

    add-int/2addr v10, v15

    add-int/2addr v10, v12

    invoke-direct {v4, v15, v10}, Lmnq;-><init>(II)V

    iget-object v10, v1, Lmns;->c:Lmnq;

    iget-object v10, v10, Lmnq;->d:Ljava/util/Map;

    iget-object v15, v1, Lmns;->a:[I

    iget v12, v1, Lmns;->d:I

    aget v12, v15, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v10, v12, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v10, v4, Lmnq;->d:Ljava/util/Map;

    iget-object v12, v1, Lmns;->a:[I

    iget v15, v4, Lmnq;->b:I

    add-int/2addr v15, v11

    aget v12, v12, v15

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v10, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v10, v4, Lmnq;->b:I

    add-int/2addr v10, v11

    iput v10, v0, Lmnq;->a:I

    if-eqz v14, :cond_c

    iput-object v4, v14, Lmnq;->c:Lmnq;

    :cond_c
    new-instance v0, Lmnq;

    const/high16 v10, 0x40000000    # 2.0f

    invoke-direct {v0, v7, v10}, Lmnq;-><init>(II)V

    iget-object v10, v4, Lmnq;->d:Ljava/util/Map;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v10, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, v1, Lmns;->f:I

    const/4 v10, -0x1

    add-int/2addr v0, v10

    iput v0, v1, Lmns;->f:I

    invoke-virtual {v1}, Lmns;->a()V

    move-object v14, v4

    const/4 v12, -0x1

    goto/16 :goto_5

    :cond_d
    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_4

    :cond_e
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    new-instance v4, Lmnp;

    iget-object v7, v1, Lmns;->b:Lmnq;

    const/4 v8, -0x1

    const/4 v10, 0x0

    invoke-direct {v4, v7, v10, v8, v8}, Lmnp;-><init>(Lmnq;III)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    :cond_f
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_13

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmnp;

    iget-object v8, v7, Lmnp;->d:Ljava/lang/Object;

    check-cast v8, Lmnq;

    iget-object v8, v8, Lmnq;->d:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lmnq;

    iget v12, v7, Lmnp;->b:I

    iget v13, v7, Lmnp;->c:I

    iget v14, v10, Lmnq;->a:I

    iget v15, v10, Lmnq;->b:I

    invoke-virtual {v1, v12, v13, v14, v15}, Lmns;->c(IIII)Z

    move-result v12

    if-nez v12, :cond_11

    iget-object v12, v10, Lmnq;->d:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_10

    iget v12, v7, Lmnp;->b:I

    iget v13, v7, Lmnp;->c:I

    iget v14, v10, Lmnq;->a:I

    add-int v15, v14, v13

    sub-int/2addr v15, v12

    invoke-virtual {v1, v12, v13, v14, v15}, Lmns;->c(IIII)Z

    move-result v12

    if-eqz v12, :cond_10

    goto :goto_8

    :cond_10
    new-instance v12, Lmnp;

    iget v13, v10, Lmnq;->a:I

    iget v14, v10, Lmnq;->b:I

    invoke-direct {v12, v10, v11, v13, v14}, Lmnp;-><init>(Lmnq;III)V

    goto :goto_9

    :cond_11
    :goto_8
    new-instance v12, Lmnp;

    iget v13, v7, Lmnp;->a:I

    add-int/2addr v13, v11

    iget v14, v7, Lmnp;->b:I

    iget v15, v7, Lmnp;->c:I

    invoke-direct {v12, v10, v13, v14, v15}, Lmnp;-><init>(Lmnq;III)V

    :goto_9
    iget v10, v4, Lmnp;->a:I

    iget v13, v12, Lmnp;->a:I

    if-ge v10, v13, :cond_12

    move-object v4, v12

    :cond_12
    invoke-virtual {v0, v12}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto :goto_7

    :cond_13
    iget-object v0, v1, Lmns;->a:[I

    array-length v0, v0

    iget v7, v4, Lmnp;->c:I

    add-int/2addr v7, v11

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v7, v1, Lmns;->b:Lmnq;

    const/4 v8, 0x0

    :goto_a
    iget-object v10, v1, Lmns;->a:[I

    iget v12, v4, Lmnp;->b:I

    sub-int v13, v0, v12

    rem-int v13, v8, v13

    add-int/2addr v12, v13

    aget v10, v10, v12

    iget-object v7, v7, Lmnq;->d:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmnq;

    if-nez v7, :cond_14

    goto :goto_c

    :cond_14
    iget v10, v7, Lmnq;->a:I

    :goto_b
    iget v12, v7, Lmnq;->b:I

    add-int/2addr v12, v11

    if-ge v10, v12, :cond_1a

    iget-object v12, v1, Lmns;->a:[I

    array-length v13, v12

    if-ge v10, v13, :cond_1a

    iget v13, v4, Lmnp;->b:I

    sub-int v14, v0, v13

    rem-int v14, v8, v14

    add-int/2addr v13, v14

    aget v13, v12, v13

    aget v12, v12, v10

    if-ne v13, v12, :cond_15

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_b

    :cond_15
    :goto_c
    new-instance v1, Lmnr;

    iget v4, v4, Lmnp;->b:I

    sub-int v7, v0, v4

    div-int/2addr v8, v7

    invoke-direct {v1, v4, v0, v8}, Lmnr;-><init>(III)V

    iget v0, v1, Lmnr;->c:I

    iget v4, v1, Lmnr;->b:I

    iget v7, v1, Lmnr;->a:I

    sub-int/2addr v4, v7

    mul-int v0, v0, v4

    if-ge v0, v9, :cond_16

    const/4 v10, 0x0

    goto :goto_d

    :cond_16
    move-object v10, v1

    :goto_d
    const-string v0, ""

    if-nez v10, :cond_17

    goto :goto_10

    :cond_17
    iget v1, v10, Lmnr;->b:I

    iget v4, v10, Lmnr;->a:I

    sub-int/2addr v1, v4

    iget v7, v10, Lmnr;->c:I

    mul-int v1, v1, v7

    if-lez v4, :cond_18

    invoke-static {v6, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_e

    :cond_18
    move-object v4, v0

    :goto_e
    iget v7, v10, Lmnr;->a:I

    add-int/2addr v7, v1

    if-ge v7, v2, :cond_19

    invoke-static {v6, v7, v2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_19
    :goto_f
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x4

    new-array v7, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v4, v7, v2

    iget v2, v10, Lmnr;->a:I

    iget v4, v10, Lmnr;->b:I

    invoke-static {v6, v2, v4}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v11

    iget v2, v10, Lmnr;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v7, v4

    const/4 v2, 0x3

    aput-object v0, v7, v2

    const-string v0, "%s{%s}x%d%s"

    invoke-static {v1, v0, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_10
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1e

    goto :goto_11

    :cond_1a
    goto/16 :goto_a

    :cond_1b
    :goto_11
    new-array v0, v3, [C

    move-object/from16 v1, p0

    :goto_12
    if-eqz v1, :cond_1d

    invoke-interface {v1}, Lmnt;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v4, v0, v3}, Ljava/lang/String;->getChars(II[CI)V

    invoke-interface {v1}, Lmnt;->a()Lmnt;

    move-result-object v1

    if-eqz v1, :cond_1c

    add-int/lit8 v3, v3, -0x4

    const/4 v2, 0x4

    invoke-virtual {v5, v6, v2, v0, v3}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_12

    :cond_1c
    const/4 v2, 0x4

    goto :goto_12

    :cond_1d
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    move-object v0, v1

    :cond_1e
    return-object v0
.end method
