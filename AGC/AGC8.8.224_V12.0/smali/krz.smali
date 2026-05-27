.class public final Lkrz;
.super Ljava/lang/Object;


# static fields
.field private static final c:I


# instance fields
.field public final a:Landroid/util/LruCache;

.field public b:Lpbj;

.field private final d:Landroid/util/LruCache;

.field private final e:Landroid/content/Context;

.field private final f:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "DEFAULT"

    invoke-static {v0}, Lkwp;->aw(Ljava/lang/String;)I

    move-result v0

    sput v0, Lkrz;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/util/LruCache;Landroid/util/LruCache;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkrz;->e:Landroid/content/Context;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lkrz;->f:Ljava/lang/Integer;

    iput-object p3, p0, Lkrz;->d:Landroid/util/LruCache;

    iput-object p4, p0, Lkrz;->a:Landroid/util/LruCache;

    return-void
.end method

.method private static e(Ljava/util/List;Lmvv;)Ljava/util/Map;
    .locals 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1}, Lmvv;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-ge v2, v3, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Lmvv;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpbd;

    iget v2, v1, Lpbd;->a:I

    and-int/2addr v2, v5

    if-eqz v2, :cond_0

    iget v2, v1, Lpbd;->c:I

    goto :goto_1

    :cond_0
    sget v2, Lkrz;->c:I

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Lnws;->ad(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnwn;

    invoke-virtual {v3, v1}, Lnwn;->s(Lnws;)V

    iget-object v1, v3, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_1
    iget-object v1, v3, Lnwn;->b:Lnws;

    check-cast v1, Lpbd;

    iget v5, v1, Lpbd;->a:I

    and-int/lit8 v5, v5, -0x3

    iput v5, v1, Lpbd;->a:I

    iput v4, v1, Lpbd;->c:I

    invoke-virtual {v3}, Lnwn;->i()Lnws;

    move-result-object v1

    check-cast v1, Lpbd;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    new-instance p0, Lkry;

    new-array v0, v5, [Ljava/lang/Object;

    aput-object v1, v0, v4

    invoke-virtual {p1}, Lmvv;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "CollectionBasisHolder index(%d) exceeds list size(%d)"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lkry;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    return-object v0
.end method


# virtual methods
.method public final a(I)Lpbg;
    .locals 2

    iget-object v0, p0, Lkrz;->d:Landroid/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpbg;

    if-nez v0, :cond_2

    iget-object v0, p0, Lkrz;->b:Lpbj;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lkrz;->c()Lpbj;

    move-result-object v0

    iput-object v0, p0, Lkrz;->b:Lpbj;

    :cond_0
    iget-object v0, p0, Lkrz;->b:Lpbj;

    iget-object v0, v0, Lpbj;->a:Lnxt;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpbg;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lkrz;->d:Landroid/util/LruCache;

    invoke-virtual {v1, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public final b(I)Lpbg;
    .locals 0

    invoke-virtual {p0, p1}, Lkrz;->a(I)Lpbg;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final c()Lpbj;
    .locals 17

    move-object/from16 v1, p0

    iget-object v0, v1, Lkrz;->e:Landroid/content/Context;

    if-eqz v0, :cond_17

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v2, v1, Lkrz;->f:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {v2}, Lnvy;->I(Ljava/io/InputStream;)Lnvy;

    move-result-object v0

    sget-object v5, Lpbj;->f:Lpbj;

    invoke-virtual {v5}, Lnws;->O()Lnwn;

    move-result-object v5

    sget-object v6, Lnwh;->a:Lnwh;

    invoke-virtual {v5, v0, v6}, Lnwn;->r(Lnvy;Lnwh;)V

    invoke-virtual {v5}, Lnwn;->i()Lnws;

    move-result-object v0

    check-cast v0, Lpbj;

    iget-object v5, v0, Lpbj;->c:Lnxa;

    iget-object v6, v0, Lpbj;->d:Lnwy;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ne v7, v8, :cond_15

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iget-object v8, v0, Lpbj;->e:Lnxa;

    invoke-static {v8}, Lmvv;->j(Ljava/util/Collection;)Lmvv;

    move-result-object v8

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpbg;

    iget-object v12, v11, Lpbg;->e:Lnwy;

    invoke-static {v12, v8}, Lkrz;->e(Ljava/util/List;Lmvv;)Ljava/util/Map;

    move-result-object v12

    iget-object v13, v11, Lpbg;->f:Lnwy;

    iget-object v14, v11, Lpbg;->g:Lnwz;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v15

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v3, "TagNumbersList[%d] and CollectionBasisFieldList[%d] must have same size"

    if-ne v15, v4, :cond_e

    :try_start_2
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-static/range {v16 .. v16}, Lmvv;->l(Ljava/lang/Object;)Lmvv;

    move-result-object v9

    invoke-static {v9, v8}, Lkrz;->e(Ljava/util/List;Lmvv;)Ljava/util/Map;

    move-result-object v9

    sget-object v16, Lpbc;->e:Lpbc;

    invoke-virtual/range {v16 .. v16}, Lnws;->O()Lnwn;

    move-result-object v1

    invoke-virtual {v1, v9}, Lnwn;->aD(Ljava/util/Map;)V

    invoke-virtual {v1}, Lnwn;->i()Lnws;

    move-result-object v1

    check-cast v1, Lpbc;

    invoke-interface {v4, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, p0

    goto :goto_1

    :cond_0
    iget-object v1, v11, Lpbg;->c:Lnxa;

    iget-object v9, v11, Lpbg;->d:Lnwz;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v13

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v14

    if-ne v13, v14, :cond_d

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v13, 0x5

    if-eqz v9, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lpbc;

    iget-object v15, v14, Lpbc;->d:Lnwy;

    invoke-static {v15, v8}, Lkrz;->e(Ljava/util/List;Lmvv;)Ljava/util/Map;

    move-result-object v15

    invoke-interface {v4, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    invoke-virtual {v14, v13}, Lnws;->ad(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lnwn;

    invoke-virtual {v13, v14}, Lnwn;->s(Lnws;)V

    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lpbc;

    invoke-virtual {v13, v14}, Lnwn;->s(Lnws;)V

    invoke-virtual {v13}, Lnwn;->i()Lnws;

    move-result-object v13

    check-cast v13, Lpbc;

    goto :goto_3

    :cond_1
    invoke-virtual {v14, v13}, Lnws;->ad(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lnwn;

    invoke-virtual {v13, v14}, Lnwn;->s(Lnws;)V

    invoke-virtual {v13, v15}, Lnwn;->aD(Ljava/util/Map;)V

    iget-object v14, v13, Lnwn;->b:Lnws;

    invoke-virtual {v14}, Lnws;->ac()Z

    move-result v14

    if-nez v14, :cond_2

    invoke-virtual {v13}, Lnwn;->p()V

    :cond_2
    iget-object v14, v13, Lnwn;->b:Lnws;

    check-cast v14, Lpbc;

    sget-object v15, Lnwt;->b:Lnwt;

    iput-object v15, v14, Lpbc;->d:Lnwy;

    invoke-virtual {v13}, Lnwn;->i()Lnws;

    move-result-object v13

    check-cast v13, Lpbc;

    :goto_3
    invoke-interface {v4, v9, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    invoke-virtual {v11, v13}, Lnws;->ad(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnwn;

    invoke-virtual {v1, v11}, Lnwn;->s(Lnws;)V

    iget-object v3, v1, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_4
    iget-object v3, v1, Lnwn;->b:Lnws;

    check-cast v3, Lpbg;

    iget-object v9, v3, Lpbg;->a:Lnxt;

    iget-boolean v11, v9, Lnxt;->b:Z

    if-nez v11, :cond_5

    invoke-virtual {v9}, Lnxt;->a()Lnxt;

    move-result-object v9

    iput-object v9, v3, Lpbg;->a:Lnxt;

    :cond_5
    iget-object v3, v3, Lpbg;->a:Lnxt;

    invoke-interface {v3, v12}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object v3, v1, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_6
    iget-object v3, v1, Lnwn;->b:Lnws;

    check-cast v3, Lpbg;

    sget-object v9, Lnwt;->b:Lnwt;

    iput-object v9, v3, Lpbg;->e:Lnwy;

    iget-object v3, v1, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_7
    iget-object v3, v1, Lnwn;->b:Lnws;

    check-cast v3, Lpbg;

    iget-object v9, v3, Lpbg;->b:Lnxt;

    iget-boolean v11, v9, Lnxt;->b:Z

    if-nez v11, :cond_8

    invoke-virtual {v9}, Lnxt;->a()Lnxt;

    move-result-object v9

    iput-object v9, v3, Lpbg;->b:Lnxt;

    :cond_8
    iget-object v3, v3, Lpbg;->b:Lnxt;

    invoke-interface {v3, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object v3, v1, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_9
    iget-object v3, v1, Lnwn;->b:Lnws;

    check-cast v3, Lpbg;

    sget-object v4, Lnxp;->b:Lnxp;

    iput-object v4, v3, Lpbg;->d:Lnwz;

    iget-object v3, v1, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_a
    iget-object v3, v1, Lnwn;->b:Lnws;

    check-cast v3, Lpbg;

    sget-object v4, Lnyi;->b:Lnyi;

    iput-object v4, v3, Lpbg;->c:Lnxa;

    iget-object v3, v1, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_b

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_b
    iget-object v3, v1, Lnwn;->b:Lnws;

    move-object v4, v3

    check-cast v4, Lpbg;

    sget-object v9, Lnwt;->b:Lnwt;

    iput-object v9, v4, Lpbg;->f:Lnwy;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_c
    iget-object v3, v1, Lnwn;->b:Lnws;

    check-cast v3, Lpbg;

    sget-object v4, Lnxp;->b:Lnxp;

    iput-object v4, v3, Lpbg;->g:Lnwz;

    invoke-virtual {v1}, Lnwn;->i()Lnws;

    move-result-object v1

    check-cast v1, Lpbg;

    invoke-interface {v7, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, p0

    goto/16 :goto_0

    :cond_d
    new-instance v0, Lkry;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lkry;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    new-instance v0, Lkry;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v1, v5

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v1, v5

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lkry;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    sget-object v1, Lpbj;->f:Lpbj;

    invoke-virtual {v1}, Lnws;->O()Lnwn;

    move-result-object v1

    iget-object v3, v1, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_10

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_10
    iget-object v3, v1, Lnwn;->b:Lnws;

    check-cast v3, Lpbj;

    iget-object v4, v3, Lpbj;->a:Lnxt;

    iget-boolean v5, v4, Lnxt;->b:Z

    if-nez v5, :cond_11

    invoke-virtual {v4}, Lnxt;->a()Lnxt;

    move-result-object v4

    iput-object v4, v3, Lpbj;->a:Lnxt;

    :cond_11
    iget-object v3, v3, Lpbj;->a:Lnxt;

    invoke-interface {v3, v7}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object v0, v0, Lpbj;->b:Lnxt;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iget-object v3, v1, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_12

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_12
    iget-object v3, v1, Lnwn;->b:Lnws;

    check-cast v3, Lpbj;

    iget-object v4, v3, Lpbj;->b:Lnxt;

    iget-boolean v5, v4, Lnxt;->b:Z

    if-nez v5, :cond_13

    invoke-virtual {v4}, Lnxt;->a()Lnxt;

    move-result-object v4

    iput-object v4, v3, Lpbj;->b:Lnxt;

    :cond_13
    iget-object v3, v3, Lpbj;->b:Lnxt;

    invoke-interface {v3, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-virtual {v1}, Lnwn;->i()Lnws;

    move-result-object v0

    check-cast v0, Lpbj;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_14

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_14
    return-object v0

    :cond_15
    :try_start_4
    new-instance v0, Lkry;

    const-string v1, "ProtoHashNamesList[%d] and MessagesList[%d] must have same size"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v3, v6

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lkry;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    if-eqz v2, :cond_16

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v2, v0

    :try_start_6
    const-class v0, Ljava/lang/Throwable;

    const-string v3, "addSuppressed"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Throwable;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    :cond_16
    :goto_4
    :try_start_7
    throw v1
    :try_end_7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_7} :catch_1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_17
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No context to load resource from"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method

.method public final d(I)Z
    .locals 0

    invoke-virtual {p0, p1}, Lkrz;->a(I)Lpbg;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
