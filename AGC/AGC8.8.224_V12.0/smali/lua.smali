.class public final Llua;
.super Ljava/lang/Object;


# instance fields
.field private A:Lmqp;

.field private B:Lmqp;

.field public a:Z

.field public b:Llud;

.field public c:Ljava/lang/Float;

.field public d:Lmqp;

.field public e:Lmqp;

.field public f:Lmqp;

.field public g:Lmqp;

.field public h:Lmqp;

.field public i:B

.field private j:Lltv;

.field private k:Llub;

.field private l:Lmvv;

.field private m:Lmqp;

.field private n:Lmqp;

.field private o:Lmqp;

.field private p:Lmqp;

.field private q:Lmqp;

.field private r:Lmqp;

.field private s:Lmqp;

.field private t:Lmqp;

.field private u:Lmqp;

.field private v:Lmqp;

.field private w:Lmqp;

.field private x:Lmqp;

.field private y:Lmqp;

.field private z:Lmqp;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Llua;->a:Z

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Llua;->a:Z

    sget-object p1, Lmpx;->a:Lmpx;

    iput-object p1, p0, Llua;->m:Lmqp;

    iput-object p1, p0, Llua;->n:Lmqp;

    iput-object p1, p0, Llua;->o:Lmqp;

    iput-object p1, p0, Llua;->d:Lmqp;

    iput-object p1, p0, Llua;->p:Lmqp;

    iput-object p1, p0, Llua;->q:Lmqp;

    iput-object p1, p0, Llua;->r:Lmqp;

    iput-object p1, p0, Llua;->e:Lmqp;

    iput-object p1, p0, Llua;->s:Lmqp;

    iput-object p1, p0, Llua;->t:Lmqp;

    iput-object p1, p0, Llua;->u:Lmqp;

    iput-object p1, p0, Llua;->v:Lmqp;

    iput-object p1, p0, Llua;->w:Lmqp;

    iput-object p1, p0, Llua;->x:Lmqp;

    iput-object p1, p0, Llua;->f:Lmqp;

    iput-object p1, p0, Llua;->g:Lmqp;

    iput-object p1, p0, Llua;->h:Lmqp;

    iput-object p1, p0, Llua;->y:Lmqp;

    iput-object p1, p0, Llua;->z:Lmqp;

    iput-object p1, p0, Llua;->A:Lmqp;

    iput-object p1, p0, Llua;->B:Lmqp;

    return-void
.end method


# virtual methods
.method public final a()Lluc;
    .locals 30

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Llua;->d()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Llua;->d()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Confidence must be in range [0, 1]."

    invoke-static {v1, v2}, Lmoz;->q(ZLjava/lang/Object;)V

    iget-object v1, v0, Llua;->l:Lmvv;

    if-eqz v1, :cond_10

    move-object v2, v1

    check-cast v2, Lmyu;

    iget v2, v2, Lmyu;->c:I

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v2, :cond_3

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmdj;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v6, Lmdj;->a:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x2

    if-le v7, v8, :cond_1

    const/4 v7, 0x1

    goto :goto_2

    :cond_1
    const/4 v7, 0x0

    :goto_2
    const-string v8, "At least 3 points are required for a bounding polygon."

    invoke-static {v7, v8}, Lmoz;->q(ZLjava/lang/Object;)V

    invoke-virtual {v6}, Lmdj;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    add-int/lit8 v8, v5, 0x1

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/PointF;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_3

    :cond_2
    move v5, v8

    goto :goto_1

    :cond_3
    invoke-virtual/range {p0 .. p0}, Llua;->b()Lltv;

    move-result-object v1

    sget-object v2, Lltv;->m:Lltv;

    if-eq v1, v2, :cond_5

    invoke-virtual/range {p0 .. p0}, Llua;->b()Lltv;

    move-result-object v1

    sget-object v2, Lltv;->E:Lltv;

    if-ne v1, v2, :cond_4

    goto :goto_4

    :cond_4
    const-string v1, "TextImage should not be set for non-FULL_RAW_TEXT result."

    invoke-static {v3, v1}, Lmoz;->q(ZLjava/lang/Object;)V

    goto :goto_5

    :cond_5
    :goto_4
    const-string v1, "TextImage is required with FULL_RAW_TEXT result."

    invoke-static {v4, v1}, Lmoz;->q(ZLjava/lang/Object;)V

    :goto_5
    invoke-virtual/range {p0 .. p0}, Llua;->b()Lltv;

    move-result-object v1

    sget-object v2, Lltv;->r:Lltv;

    if-ne v1, v2, :cond_6

    const-string v1, "UnstructuredText is required with UNSTRUCTURED_TEXT result."

    invoke-static {v4, v1}, Lmoz;->q(ZLjava/lang/Object;)V

    goto :goto_6

    :cond_6
    const-string v1, "UnstructuredText should not be set for non-UNSTRUCTURED_TEXT result."

    invoke-static {v3, v1}, Lmoz;->q(ZLjava/lang/Object;)V

    :goto_6
    iget-boolean v1, v0, Llua;->a:Z

    if-eqz v1, :cond_7

    invoke-static {}, Llty;->a()Lltx;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Llua;->b()Lltv;

    move-result-object v2

    invoke-virtual {v2}, Lltv;->ordinal()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_8

    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Llua;->c()Llud;

    move-result-object v2

    iget-object v2, v2, Llud;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lltx;->e(Ljava/lang/String;)V

    goto :goto_7

    :pswitch_2
    invoke-virtual {v1}, Lltx;->c()Lmvq;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Llua;->c()Llud;

    move-result-object v4

    iget-object v4, v4, Llud;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lmvq;->g(Ljava/lang/Object;)V

    goto :goto_7

    :pswitch_3
    invoke-virtual {v1}, Lltx;->b()Lmvq;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Llua;->c()Llud;

    move-result-object v4

    iget-object v4, v4, Llud;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lmvq;->g(Ljava/lang/Object;)V

    goto :goto_7

    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Llua;->c()Llud;

    move-result-object v2

    iget-object v2, v2, Llud;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lltx;->d(Ljava/lang/String;)V

    :goto_7
    invoke-virtual {v1}, Lltx;->a()Llty;

    move-result-object v1

    invoke-virtual {v0, v1}, Llua;->f(Llty;)V

    :cond_7
    :goto_8
    iget-byte v1, v0, Llua;->i:B

    if-ne v1, v3, :cond_9

    iget-object v1, v0, Llua;->b:Llud;

    if-eqz v1, :cond_9

    iget-object v1, v0, Llua;->j:Lltv;

    if-eqz v1, :cond_9

    iget-object v1, v0, Llua;->k:Llub;

    if-eqz v1, :cond_9

    iget-object v1, v0, Llua;->c:Ljava/lang/Float;

    if-eqz v1, :cond_9

    iget-object v1, v0, Llua;->l:Lmvv;

    if-nez v1, :cond_8

    goto :goto_9

    :cond_8
    new-instance v1, Lltz;

    move-object v2, v1

    iget-object v3, v0, Llua;->b:Llud;

    iget-object v4, v0, Llua;->j:Lltv;

    iget-object v5, v0, Llua;->k:Llub;

    iget-object v6, v0, Llua;->c:Ljava/lang/Float;

    iget-object v7, v0, Llua;->l:Lmvv;

    iget-object v8, v0, Llua;->m:Lmqp;

    iget-object v9, v0, Llua;->n:Lmqp;

    iget-object v10, v0, Llua;->o:Lmqp;

    iget-object v11, v0, Llua;->d:Lmqp;

    iget-object v12, v0, Llua;->p:Lmqp;

    iget-object v13, v0, Llua;->q:Lmqp;

    iget-object v14, v0, Llua;->r:Lmqp;

    iget-object v15, v0, Llua;->e:Lmqp;

    move-object/from16 v29, v1

    iget-object v1, v0, Llua;->s:Lmqp;

    move-object/from16 v16, v1

    iget-object v1, v0, Llua;->t:Lmqp;

    move-object/from16 v17, v1

    iget-object v1, v0, Llua;->u:Lmqp;

    move-object/from16 v18, v1

    iget-object v1, v0, Llua;->v:Lmqp;

    move-object/from16 v19, v1

    iget-object v1, v0, Llua;->w:Lmqp;

    move-object/from16 v20, v1

    iget-object v1, v0, Llua;->x:Lmqp;

    move-object/from16 v21, v1

    iget-object v1, v0, Llua;->f:Lmqp;

    move-object/from16 v22, v1

    iget-object v1, v0, Llua;->g:Lmqp;

    move-object/from16 v23, v1

    iget-object v1, v0, Llua;->h:Lmqp;

    move-object/from16 v24, v1

    iget-object v1, v0, Llua;->y:Lmqp;

    move-object/from16 v25, v1

    iget-object v1, v0, Llua;->z:Lmqp;

    move-object/from16 v26, v1

    iget-object v1, v0, Llua;->A:Lmqp;

    move-object/from16 v27, v1

    iget-object v1, v0, Llua;->B:Lmqp;

    move-object/from16 v28, v1

    invoke-direct/range {v2 .. v28}, Lltz;-><init>(Llud;Lltv;Llub;Ljava/lang/Float;Lmvv;Lmqp;Lmqp;Lmqp;Lmqp;Lmqp;Lmqp;Lmqp;Lmqp;Lmqp;Lmqp;Lmqp;Lmqp;Lmqp;Lmqp;Lmqp;Lmqp;Lmqp;Lmqp;Lmqp;Lmqp;Lmqp;)V

    return-object v29

    :cond_9
    :goto_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Llua;->b:Llud;

    if-nez v2, :cond_a

    const-string v2, " text"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    iget-object v2, v0, Llua;->j:Lltv;

    if-nez v2, :cond_b

    const-string v2, " type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    iget-object v2, v0, Llua;->k:Llub;

    if-nez v2, :cond_c

    const-string v2, " engineType"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    iget-object v2, v0, Llua;->c:Ljava/lang/Float;

    if-nez v2, :cond_d

    const-string v2, " confidence"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    iget-object v2, v0, Llua;->l:Lmvv;

    if-nez v2, :cond_e

    const-string v2, " boundingPolygons"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    iget-byte v2, v0, Llua;->i:B

    if-nez v2, :cond_f

    const-string v2, " hasStreetAddress"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Missing required properties:"

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_10
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Property \"boundingPolygons\" has not been set"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_b

    :goto_a
    throw v1

    :goto_b
    goto :goto_a

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected final b()Lltv;
    .locals 2

    iget-object v0, p0, Llua;->j:Lltv;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Property \"type\" has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c()Llud;
    .locals 2

    iget-object v0, p0, Llua;->b:Llud;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Property \"text\" has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final d()Ljava/lang/Float;
    .locals 2

    iget-object v0, p0, Llua;->c:Ljava/lang/Float;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Property \"confidence\" has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e(Lmvv;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Llua;->l:Lmvv;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null boundingPolygons"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final f(Llty;)V
    .locals 0

    invoke-static {p1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object p1

    iput-object p1, p0, Llua;->r:Lmqp;

    return-void
.end method

.method public final g(Llub;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Llua;->k:Llub;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null engineType"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final h(Lltv;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Llua;->j:Lltv;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null type"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
