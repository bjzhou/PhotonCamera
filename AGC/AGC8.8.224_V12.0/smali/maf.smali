.class public final Lmaf;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmaf;->a:Ljava/lang/Object;

    new-instance v0, Lmic;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmic;-><init>(Lmaf;[B)V

    iput-object v0, p0, Lmaf;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentProviderClient;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmaf;->a:Ljava/lang/Object;

    iput-object p2, p0, Lmaf;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/mediapipe/framework/Packet;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmaf;->b:Ljava/lang/Object;

    iput-object p2, p0, Lmaf;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmaf;->a:Ljava/lang/Object;

    const/16 p1, 0x100

    new-array v0, p1, [Z

    iput-object v0, p0, Lmaf;->b:Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lmaf;->b:Ljava/lang/Object;

    iget-object v2, p0, Lmaf;->a:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    check-cast v1, [Z

    aput-boolean v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Llpu;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    iput-object p2, p0, Lmaf;->a:Ljava/lang/Object;

    iput-object p1, p0, Lmaf;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Llzz;Landroidx/wear/ambient/AmbientMode$AmbientController;[B[B)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmaf;->a:Ljava/lang/Object;

    iput-object p2, p0, Lmaf;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lmaf;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Ljava/util/HashMap;

    iget-object p3, p1, Lmaf;->a:Ljava/lang/Object;

    invoke-direct {p2, p3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object p2, p0, Lmaf;->a:Ljava/lang/Object;

    new-instance p2, Ljava/util/HashMap;

    iget-object p1, p1, Lmaf;->b:Ljava/lang/Object;

    invoke-direct {p2, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object p2, p0, Lmaf;->b:Ljava/lang/Object;

    move-object p1, p2

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Loeg;

    iget-object p2, p2, Loeg;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public constructor <init>(Lmqp;Llpm;Lluj;Lkwp;Lluk;[B[B[B[B)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lmaf;->b:Ljava/lang/Object;

    new-instance p2, Lpo;

    const/16 p3, 0x10

    invoke-direct {p2, p1, p3}, Lpo;-><init>(Lmqp;I)V

    invoke-static {p2}, Lljr;->aP(Lolz;)Loja;

    move-result-object p1

    iput-object p1, p0, Lmaf;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lnbq;Lnbp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmaf;->b:Ljava/lang/Object;

    iput-object p2, p0, Lmaf;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lods;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmaf;->a:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lmaf;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lmaf;->a:Ljava/lang/Object;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lmaf;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([C)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lmaf;->a:Ljava/lang/Object;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lmaf;->b:Ljava/lang/Object;

    return-void
.end method

.method private static final c(Loja;)Llul;
    .locals 0

    invoke-interface {p0}, Loja;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Llul;

    return-object p0
.end method

.method private static final d(Loja;)Llvk;
    .locals 0

    invoke-interface {p0}, Loja;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Llvk;

    return-object p0
.end method

.method private static final e(Loja;)Ljava/io/File;
    .locals 0

    invoke-interface {p0}, Loja;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/File;

    return-object p0
.end method


# virtual methods
.method public final a(Llzy;Ljava/util/List;Loku;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p3

    instance-of v1, v0, Lmae;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lmae;

    iget v2, v1, Lmae;->d:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lmae;->d:I

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Lmae;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lmae;-><init>(Lmaf;Loku;)V

    :goto_0
    iget-object v0, v1, Lmae;->b:Ljava/lang/Object;

    sget-object v3, Lolc;->a:Lolc;

    iget v4, v1, Lmae;->d:I

    packed-switch v4, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v4, v1, Lmae;->j:Ljava/util/Iterator;

    iget-object v8, v1, Lmae;->i:Llyf;

    iget-object v9, v1, Lmae;->a:Ljava/lang/Object;

    iget-object v10, v1, Lmae;->h:Ljava/util/Iterator;

    iget-object v11, v1, Lmae;->k:Ljava/util/LinkedHashMap;

    iget-object v12, v1, Lmae;->g:Lonk;

    iget-object v13, v1, Lmae;->f:Llzy;

    iget-object v14, v1, Lmae;->e:Lmaf;

    invoke-static {v0}, Lljr;->aO(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_1
    iget-object v4, v1, Lmae;->a:Ljava/lang/Object;

    iget-object v8, v1, Lmae;->h:Ljava/util/Iterator;

    iget-object v9, v1, Lmae;->k:Ljava/util/LinkedHashMap;

    iget-object v10, v1, Lmae;->g:Lonk;

    iget-object v11, v1, Lmae;->f:Llzy;

    iget-object v12, v1, Lmae;->e:Lmaf;

    invoke-static {v0}, Lljr;->aO(Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_2
    iget-object v4, v1, Lmae;->a:Ljava/lang/Object;

    iget-object v8, v1, Lmae;->h:Ljava/util/Iterator;

    iget-object v9, v1, Lmae;->k:Ljava/util/LinkedHashMap;

    iget-object v10, v1, Lmae;->g:Lonk;

    iget-object v11, v1, Lmae;->f:Llzy;

    iget-object v12, v1, Lmae;->e:Lmaf;

    invoke-static {v0}, Lljr;->aO(Ljava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_3
    iget-object v4, v1, Lmae;->a:Ljava/lang/Object;

    iget-object v8, v1, Lmae;->h:Ljava/util/Iterator;

    iget-object v9, v1, Lmae;->k:Ljava/util/LinkedHashMap;

    iget-object v10, v1, Lmae;->g:Lonk;

    iget-object v11, v1, Lmae;->f:Llzy;

    iget-object v12, v1, Lmae;->e:Lmaf;

    invoke-static {v0}, Lljr;->aO(Ljava/lang/Object;)V

    const/4 v6, 0x1

    goto/16 :goto_b

    :pswitch_4
    invoke-static {v0}, Lljr;->aO(Ljava/lang/Object;)V

    new-instance v0, Lonk;

    invoke-direct {v0}, Lonk;-><init>()V

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v10, v0

    move-object v12, v2

    move-object v9, v4

    move-object/from16 v0, p1

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Llyg;

    iget-object v13, v11, Llyg;->a:Llyf;

    iget-object v11, v11, Llyg;->b:Ljava/util/List;

    iget-object v14, v13, Llyf;->g:Ljava/lang/String;

    const/16 v15, 0x8

    const/4 v6, 0x0

    if-eqz v14, :cond_13

    iget-object v14, v13, Llyf;->h:Ljava/lang/String;

    if-nez v14, :cond_1

    goto/16 :goto_a

    :cond_1
    iget-object v14, v13, Llyf;->t:Llwz;

    iget-object v14, v14, Llwz;->d:Llul;

    sget-object v7, Llul;->c:Llul;

    if-eq v14, v7, :cond_3

    iget-object v7, v13, Llyf;->t:Llwz;

    iget-object v7, v7, Llwz;->d:Llul;

    invoke-virtual {v7}, Llul;->name()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-instance v11, Ljava/lang/IllegalStateException;

    iget-object v14, v10, Lonk;->a:Ljava/lang/Object;

    check-cast v14, Ljava/lang/Throwable;

    const-string v5, "Bad Resource airlockFileState "

    invoke-virtual {v5, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v11, v5, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v11, v10, Lonk;->a:Ljava/lang/Object;

    iget-object v5, v12, Lmaf;->a:Ljava/lang/Object;

    sget-object v7, Lodt;->t:Lodt;

    iget-object v11, v10, Lonk;->a:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Throwable;

    invoke-static {v0, v7, v11, v13, v15}, Llzy;->c(Llzy;Lodt;Ljava/lang/Throwable;Llux;I)Llur;

    move-result-object v7

    iput-object v12, v1, Lmae;->e:Lmaf;

    iput-object v0, v1, Lmae;->f:Llzy;

    iput-object v10, v1, Lmae;->g:Lonk;

    iput-object v9, v1, Lmae;->k:Ljava/util/LinkedHashMap;

    iput-object v8, v1, Lmae;->h:Ljava/util/Iterator;

    iput-object v4, v1, Lmae;->a:Ljava/lang/Object;

    iput-object v6, v1, Lmae;->i:Llyf;

    iput-object v6, v1, Lmae;->j:Ljava/util/Iterator;

    const/4 v6, 0x2

    iput v6, v1, Lmae;->d:I

    check-cast v5, Llzz;

    invoke-virtual {v5, v7, v1}, Llzz;->a(Llur;Loku;)Ljava/lang/Object;

    move-result-object v5

    if-eq v5, v3, :cond_2

    move-object v11, v0

    :goto_2
    sget-object v0, Llvk;->f:Llvk;

    const/4 v6, 0x1

    goto/16 :goto_c

    :cond_2
    return-object v3

    :cond_3
    iget-object v5, v13, Llyf;->t:Llwz;

    iget-object v5, v5, Llwz;->e:Llvk;

    sget-object v7, Llvk;->a:Llvk;

    if-ne v5, v7, :cond_5

    new-instance v5, Ljava/lang/IllegalStateException;

    iget-object v7, v10, Lonk;->a:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Throwable;

    const-string v11, "Bad Resource uploadState"

    invoke-direct {v5, v11, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v5, v10, Lonk;->a:Ljava/lang/Object;

    iget-object v5, v12, Lmaf;->a:Ljava/lang/Object;

    sget-object v7, Lodt;->t:Lodt;

    iget-object v11, v10, Lonk;->a:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Throwable;

    invoke-static {v0, v7, v11, v13, v15}, Llzy;->c(Llzy;Lodt;Ljava/lang/Throwable;Llux;I)Llur;

    move-result-object v7

    iput-object v12, v1, Lmae;->e:Lmaf;

    iput-object v0, v1, Lmae;->f:Llzy;

    iput-object v10, v1, Lmae;->g:Lonk;

    iput-object v9, v1, Lmae;->k:Ljava/util/LinkedHashMap;

    iput-object v8, v1, Lmae;->h:Ljava/util/Iterator;

    iput-object v4, v1, Lmae;->a:Ljava/lang/Object;

    iput-object v6, v1, Lmae;->i:Llyf;

    iput-object v6, v1, Lmae;->j:Ljava/util/Iterator;

    const/4 v6, 0x3

    iput v6, v1, Lmae;->d:I

    check-cast v5, Llzz;

    invoke-virtual {v5, v7, v1}, Llzz;->a(Llur;Loku;)Ljava/lang/Object;

    move-result-object v5

    if-eq v5, v3, :cond_4

    move-object v11, v0

    :goto_3
    sget-object v0, Llvk;->f:Llvk;

    const/4 v6, 0x1

    goto/16 :goto_c

    :cond_4
    return-object v3

    :cond_5
    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v2, 0x0

    goto/16 :goto_9

    :cond_6
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v11, v9

    move-object v14, v12

    move-object v9, v4

    move-object v4, v5

    move-object v12, v10

    move-object v10, v8

    move-object v8, v13

    move-object v13, v0

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llwq;

    iget-object v5, v12, Lonk;->a:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Throwable;

    new-instance v6, Lpo;

    const/16 v7, 0x13

    invoke-direct {v6, v0, v7}, Lpo;-><init>(Llwq;I)V

    invoke-static {v6}, Lljr;->aP(Lolz;)Loja;

    move-result-object v6

    new-instance v7, Lpo;

    const/16 v15, 0x14

    invoke-direct {v7, v0, v15}, Lpo;-><init>(Llwq;I)V

    invoke-static {v7}, Lljr;->aP(Lolz;)Loja;

    move-result-object v7

    new-instance v15, Lawi;

    const/4 v2, 0x2

    invoke-direct {v15, v14, v0, v2}, Lawi;-><init>(Lmaf;Llwq;I)V

    invoke-static {v15}, Lljr;->aP(Lolz;)Loja;

    move-result-object v15

    iget-object v2, v0, Llwq;->b:Lluo;

    move-object/from16 p1, v3

    sget-object v3, Lluo;->c:Lluo;

    if-ne v2, v3, :cond_7

    sget-object v2, Lmac;->a:Lmac;

    goto/16 :goto_6

    :cond_7
    invoke-static {v6}, Lmaf;->c(Loja;)Llul;

    move-result-object v2

    sget-object v3, Llul;->c:Llul;

    if-eq v2, v3, :cond_8

    invoke-static {v6}, Lmaf;->c(Loja;)Llul;

    move-result-object v2

    invoke-virtual {v2}, Llul;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lmab;

    sget-object v6, Lodt;->t:Lodt;

    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v15, "Bad Annotachment airlockFileState "

    invoke-virtual {v15, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v3, v6, v7}, Lmab;-><init>(Lodt;Ljava/lang/Throwable;)V

    move-object v2, v3

    goto/16 :goto_6

    :cond_8
    invoke-static {v7}, Lmaf;->d(Loja;)Llvk;

    move-result-object v2

    sget-object v3, Llvk;->f:Llvk;

    if-eq v2, v3, :cond_c

    invoke-static {v7}, Lmaf;->d(Loja;)Llvk;

    move-result-object v2

    sget-object v3, Llvk;->a:Llvk;

    if-ne v2, v3, :cond_9

    goto :goto_5

    :cond_9
    invoke-static {v7}, Lmaf;->d(Loja;)Llvk;

    move-result-object v2

    sget-object v3, Llvk;->g:Llvk;

    if-ne v2, v3, :cond_a

    iget-object v2, v0, Llwq;->h:Ljava/lang/String;

    if-nez v2, :cond_a

    new-instance v2, Lmab;

    sget-object v3, Lodt;->C:Lodt;

    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "No blobstoreId on uploaded Annotachment"

    invoke-direct {v6, v7, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v2, v3, v6}, Lmab;-><init>(Lodt;Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_a
    invoke-static {v15}, Lmaf;->e(Loja;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_b

    invoke-static {v15}, Lmaf;->e(Loja;)Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Annotachment file does not exist: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lmab;

    sget-object v7, Lodt;->C:Lodt;

    new-instance v15, Ljava/lang/IllegalStateException;

    invoke-virtual {v6, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v15, v2, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v3, v7, v15}, Lmab;-><init>(Lodt;Ljava/lang/Throwable;)V

    move-object v2, v3

    goto :goto_6

    :cond_b
    sget-object v2, Lmac;->a:Lmac;

    goto :goto_6

    :cond_c
    :goto_5
    invoke-static {v7}, Lmaf;->d(Loja;)Llvk;

    move-result-object v2

    invoke-virtual {v2}, Llvk;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lmab;

    sget-object v6, Lodt;->t:Lodt;

    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v15, "Bad Annotachment uploadState "

    invoke-virtual {v15, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v3, v6, v7}, Lmab;-><init>(Lodt;Ljava/lang/Throwable;)V

    move-object v2, v3

    :goto_6
    sget-object v3, Lmac;->a:Lmac;

    invoke-static {v2, v3}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    move-object/from16 v3, p1

    const/4 v0, 0x0

    goto :goto_8

    :cond_d
    instance-of v3, v2, Lmab;

    if-eqz v3, :cond_10

    check-cast v2, Lmab;

    iget-object v3, v2, Lmab;->b:Ljava/lang/Throwable;

    iput-object v3, v12, Lonk;->a:Ljava/lang/Object;

    iget-object v3, v14, Lmaf;->a:Ljava/lang/Object;

    iget-object v2, v2, Lmab;->a:Lodt;

    iget-object v5, v12, Lonk;->a:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Throwable;

    invoke-virtual {v13, v2, v5, v8, v0}, Llzy;->b(Lodt;Ljava/lang/Throwable;Llux;Llwq;)Llur;

    move-result-object v0

    iput-object v14, v1, Lmae;->e:Lmaf;

    iput-object v13, v1, Lmae;->f:Llzy;

    iput-object v12, v1, Lmae;->g:Lonk;

    iput-object v11, v1, Lmae;->k:Ljava/util/LinkedHashMap;

    iput-object v10, v1, Lmae;->h:Ljava/util/Iterator;

    iput-object v9, v1, Lmae;->a:Ljava/lang/Object;

    iput-object v8, v1, Lmae;->i:Llyf;

    iput-object v4, v1, Lmae;->j:Ljava/util/Iterator;

    const/4 v2, 0x4

    iput v2, v1, Lmae;->d:I

    check-cast v3, Llzz;

    invoke-virtual {v3, v0, v1}, Llzz;->a(Llur;Loku;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v3, p1

    if-ne v0, v3, :cond_e

    return-object v3

    :cond_e
    :goto_7
    const/4 v0, 0x1

    :goto_8
    if-eqz v0, :cond_f

    move-object v4, v9

    move-object v9, v11

    move-object v0, v13

    const/4 v2, 0x1

    move-object v13, v8

    move-object v8, v10

    move-object v10, v12

    move-object v12, v14

    goto :goto_9

    :cond_f
    move-object/from16 v2, p0

    goto/16 :goto_4

    :cond_10
    new-instance v0, Lojb;

    invoke-direct {v0}, Lojb;-><init>()V

    throw v0

    :cond_11
    move-object v4, v9

    move-object v9, v11

    move-object v0, v13

    const/4 v2, 0x0

    move-object v13, v8

    move-object v8, v10

    move-object v10, v12

    move-object v12, v14

    :goto_9
    if-eqz v2, :cond_12

    sget-object v2, Llvk;->f:Llvk;

    move-object v11, v0

    move-object v0, v2

    const/4 v6, 0x1

    goto :goto_c

    :cond_12
    iget-object v2, v13, Llyf;->t:Llwz;

    iget-object v2, v2, Llwz;->e:Llvk;

    move-object v11, v0

    move-object v0, v2

    const/4 v6, 0x1

    goto :goto_c

    :cond_13
    :goto_a
    new-instance v2, Ljava/lang/IllegalStateException;

    iget-object v5, v10, Lonk;->a:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Throwable;

    const-string v7, "No Resource partition specified"

    invoke-direct {v2, v7, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v2, v10, Lonk;->a:Ljava/lang/Object;

    iget-object v2, v12, Lmaf;->a:Ljava/lang/Object;

    sget-object v5, Lodt;->t:Lodt;

    iget-object v7, v10, Lonk;->a:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Throwable;

    invoke-static {v0, v5, v7, v13, v15}, Llzy;->c(Llzy;Lodt;Ljava/lang/Throwable;Llux;I)Llur;

    move-result-object v5

    iput-object v12, v1, Lmae;->e:Lmaf;

    iput-object v0, v1, Lmae;->f:Llzy;

    iput-object v10, v1, Lmae;->g:Lonk;

    iput-object v9, v1, Lmae;->k:Ljava/util/LinkedHashMap;

    iput-object v8, v1, Lmae;->h:Ljava/util/Iterator;

    iput-object v4, v1, Lmae;->a:Ljava/lang/Object;

    iput-object v6, v1, Lmae;->i:Llyf;

    iput-object v6, v1, Lmae;->j:Ljava/util/Iterator;

    const/4 v6, 0x1

    iput v6, v1, Lmae;->d:I

    check-cast v2, Llzz;

    invoke-virtual {v2, v5, v1}, Llzz;->a(Llur;Loku;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v3, :cond_15

    move-object v11, v0

    :goto_b
    sget-object v0, Llvk;->f:Llvk;

    :goto_c
    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_14

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v9, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_14
    :goto_d
    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, p0

    move-object v0, v11

    goto/16 :goto_1

    :cond_15
    return-object v3

    :cond_16
    new-instance v0, Lmad;

    iget-object v1, v10, Lonk;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Throwable;

    invoke-direct {v0, v9, v1}, Lmad;-><init>(Ljava/util/Map;Ljava/lang/Throwable;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Landroid/animation/ValueAnimator;)V
    .locals 2

    new-instance v0, Lljr;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lljr;-><init>([B)V

    iget-object v1, p0, Lmaf;->b:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lmaf;->a:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
