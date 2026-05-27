.class final Lltz;
.super Lluc;


# instance fields
.field private volatile transient A:Lmqp;

.field private final a:Llud;

.field private final b:Lltv;

.field private final c:Llub;

.field private final d:Ljava/lang/Float;

.field private final e:Lmvv;

.field private final f:Lmqp;

.field private final g:Lmqp;

.field private final h:Lmqp;

.field private final i:Lmqp;

.field private final j:Lmqp;

.field private final k:Lmqp;

.field private final l:Lmqp;

.field private final m:Lmqp;

.field private final n:Lmqp;

.field private final o:Lmqp;

.field private final p:Lmqp;

.field private final q:Lmqp;

.field private final r:Lmqp;

.field private final s:Lmqp;

.field private final t:Lmqp;

.field private final u:Lmqp;

.field private final v:Lmqp;

.field private final w:Lmqp;

.field private final x:Lmqp;

.field private final y:Lmqp;

.field private final z:Lmqp;


# direct methods
.method public constructor <init>(Llud;Lltv;Llub;Ljava/lang/Float;Lmvv;Lmqp;Lmqp;Lmqp;Lmqp;Lmqp;Lmqp;Lmqp;Lmqp;Lmqp;Lmqp;Lmqp;Lmqp;Lmqp;Lmqp;Lmqp;Lmqp;Lmqp;Lmqp;Lmqp;Lmqp;Lmqp;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    invoke-direct/range {p0 .. p0}, Lluc;-><init>()V

    if-eqz v1, :cond_19

    iput-object v1, v0, Lltz;->a:Llud;

    if-eqz v2, :cond_18

    iput-object v2, v0, Lltz;->b:Lltv;

    if-eqz v3, :cond_17

    iput-object v3, v0, Lltz;->c:Llub;

    if-eqz v4, :cond_16

    iput-object v4, v0, Lltz;->d:Ljava/lang/Float;

    if-eqz v5, :cond_15

    iput-object v5, v0, Lltz;->e:Lmvv;

    if-eqz v6, :cond_14

    iput-object v6, v0, Lltz;->f:Lmqp;

    if-eqz v7, :cond_13

    iput-object v7, v0, Lltz;->g:Lmqp;

    if-eqz v8, :cond_12

    iput-object v8, v0, Lltz;->h:Lmqp;

    if-eqz v9, :cond_11

    iput-object v9, v0, Lltz;->i:Lmqp;

    if-eqz v10, :cond_10

    iput-object v10, v0, Lltz;->j:Lmqp;

    if-eqz v11, :cond_f

    iput-object v11, v0, Lltz;->k:Lmqp;

    if-eqz v12, :cond_e

    iput-object v12, v0, Lltz;->l:Lmqp;

    if-eqz v13, :cond_d

    iput-object v13, v0, Lltz;->m:Lmqp;

    if-eqz v14, :cond_c

    iput-object v14, v0, Lltz;->n:Lmqp;

    if-eqz v15, :cond_b

    iput-object v15, v0, Lltz;->o:Lmqp;

    move-object/from16 v1, p16

    if-eqz v1, :cond_a

    iput-object v1, v0, Lltz;->p:Lmqp;

    move-object/from16 v1, p17

    if-eqz v1, :cond_9

    iput-object v1, v0, Lltz;->q:Lmqp;

    move-object/from16 v1, p18

    if-eqz v1, :cond_8

    iput-object v1, v0, Lltz;->r:Lmqp;

    move-object/from16 v1, p19

    if-eqz v1, :cond_7

    iput-object v1, v0, Lltz;->s:Lmqp;

    move-object/from16 v1, p20

    if-eqz v1, :cond_6

    iput-object v1, v0, Lltz;->t:Lmqp;

    move-object/from16 v1, p21

    if-eqz v1, :cond_5

    iput-object v1, v0, Lltz;->u:Lmqp;

    move-object/from16 v1, p22

    if-eqz v1, :cond_4

    iput-object v1, v0, Lltz;->v:Lmqp;

    move-object/from16 v1, p23

    if-eqz v1, :cond_3

    iput-object v1, v0, Lltz;->w:Lmqp;

    move-object/from16 v1, p24

    if-eqz v1, :cond_2

    iput-object v1, v0, Lltz;->x:Lmqp;

    move-object/from16 v1, p25

    if-eqz v1, :cond_1

    iput-object v1, v0, Lltz;->y:Lmqp;

    move-object/from16 v1, p26

    if-eqz v1, :cond_0

    iput-object v1, v0, Lltz;->z:Lmqp;

    return-void

    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null language"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null classifications"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null shoppingInfo"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null detection"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null geo"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null calendarEvent"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null sms"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null sceneClassificationScore"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null sceneClassification"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null detectedDocument"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null frameInfo"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null textOrientation"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null linkedResults"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null wifiNetwork"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null contact"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null calendarEnd"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null calendarBegin"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_11
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null barcode"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_12
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null singleResultTextAnnotator"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_13
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null unstructuredText"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_14
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null textImage"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_15
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null boundingPolygons"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_16
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null confidence"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_17
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null engineType"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_18
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null type"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_19
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null text"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final A()Lmqp;
    .locals 10

    iget-object v0, p0, Lltz;->A:Lmqp;

    if-nez v0, :cond_5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lltz;->A:Lmqp;

    if-nez v0, :cond_4

    iget-object v0, p0, Lltz;->e:Lmvv;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lmpx;->a:Lmpx;

    goto :goto_2

    :cond_0
    move-object v1, v0

    check-cast v1, Lmyu;

    iget v1, v1, Lmyu;->c:I

    const/4 v2, 0x1

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v4, 0x0

    const/4 v3, 0x1

    const v4, 0x7f7fffff    # Float.MAX_VALUE

    const v5, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v1, :cond_2

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmdj;

    invoke-virtual {v7}, Lmdj;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    add-int/lit8 v9, v6, 0x1

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/PointF;

    iget v9, v8, Landroid/graphics/PointF;->x:F

    invoke-static {v9, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget v9, v8, Landroid/graphics/PointF;->x:F

    invoke-static {v9, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iget v9, v8, Landroid/graphics/PointF;->y:F

    invoke-static {v9, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iget v8, v8, Landroid/graphics/PointF;->y:F

    invoke-static {v8, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    goto :goto_1

    :cond_1
    move v6, v9

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v4, v5, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lltz;->A:Lmqp;

    iget-object v0, p0, Lltz;->A:Lmqp;

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "getAxisAlignedBoundingBox() cannot return null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_3
    monitor-exit p0

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_5
    :goto_4
    iget-object v0, p0, Lltz;->A:Lmqp;

    return-object v0
.end method

.method public final B()V
    .locals 0

    return-void
.end method

.method public final a()Lltv;
    .locals 1

    iget-object v0, p0, Lltz;->b:Lltv;

    return-object v0
.end method

.method public final b()Llub;
    .locals 1

    iget-object v0, p0, Lltz;->c:Llub;

    return-object v0
.end method

.method public final c()Llud;
    .locals 1

    iget-object v0, p0, Lltz;->a:Llud;

    return-object v0
.end method

.method public final d()Lmqp;
    .locals 1

    iget-object v0, p0, Lltz;->i:Lmqp;

    return-object v0
.end method

.method public final e()Lmqp;
    .locals 1

    iget-object v0, p0, Lltz;->j:Lmqp;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lluc;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lluc;

    iget-object v1, p0, Lltz;->a:Llud;

    invoke-virtual {p1}, Lluc;->c()Llud;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lltz;->b:Lltv;

    invoke-virtual {p1}, Lluc;->a()Lltv;

    move-result-object v3

    invoke-virtual {v1, v3}, Lltv;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lltz;->c:Llub;

    invoke-virtual {p1}, Lluc;->b()Llub;

    move-result-object v3

    invoke-virtual {v1, v3}, Llub;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lltz;->d:Ljava/lang/Float;

    invoke-virtual {p1}, Lluc;->z()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lltz;->e:Lmvv;

    invoke-virtual {p1}, Lluc;->y()Lmvv;

    move-result-object v3

    invoke-static {v1, v3}, Llyh;->I(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lltz;->f:Lmqp;

    invoke-virtual {p1}, Lluc;->u()Lmqp;

    move-result-object v3

    invoke-virtual {v1, v3}, Lmqp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lltz;->g:Lmqp;

    invoke-virtual {p1}, Lluc;->w()Lmqp;

    move-result-object v3

    invoke-virtual {v1, v3}, Lmqp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lltz;->h:Lmqp;

    invoke-virtual {p1}, Lluc;->s()Lmqp;

    move-result-object v3

    invoke-virtual {v1, v3}, Lmqp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lltz;->i:Lmqp;

    invoke-virtual {p1}, Lluc;->d()Lmqp;

    move-result-object v3

    invoke-virtual {v1, v3}, Lmqp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lltz;->j:Lmqp;

    invoke-virtual {p1}, Lluc;->e()Lmqp;

    move-result-object v3

    invoke-virtual {v1, v3}, Lmqp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lltz;->k:Lmqp;

    invoke-virtual {p1}, Lluc;->f()Lmqp;

    move-result-object v3

    invoke-virtual {v1, v3}, Lmqp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lluc;->B()V

    iget-object v1, p0, Lltz;->l:Lmqp;

    invoke-virtual {p1}, Lluc;->i()Lmqp;

    move-result-object v3

    invoke-virtual {v1, v3}, Lmqp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lltz;->m:Lmqp;

    invoke-virtual {p1}, Lluc;->x()Lmqp;

    move-result-object v3

    invoke-virtual {v1, v3}, Lmqp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lltz;->n:Lmqp;

    invoke-virtual {p1}, Lluc;->o()Lmqp;

    move-result-object v3

    invoke-virtual {v1, v3}, Lmqp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lltz;->o:Lmqp;

    invoke-virtual {p1}, Lluc;->v()Lmqp;

    move-result-object v3

    invoke-virtual {v1, v3}, Lmqp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lltz;->p:Lmqp;

    invoke-virtual {p1}, Lluc;->l()Lmqp;

    move-result-object v3

    invoke-virtual {v1, v3}, Lmqp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lltz;->q:Lmqp;

    invoke-virtual {p1}, Lluc;->j()Lmqp;

    move-result-object v3

    invoke-virtual {v1, v3}, Lmqp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lltz;->r:Lmqp;

    invoke-virtual {p1}, Lluc;->p()Lmqp;

    move-result-object v3

    invoke-virtual {v1, v3}, Lmqp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lltz;->s:Lmqp;

    invoke-virtual {p1}, Lluc;->q()Lmqp;

    move-result-object v3

    invoke-virtual {v1, v3}, Lmqp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lltz;->t:Lmqp;

    invoke-virtual {p1}, Lluc;->t()Lmqp;

    move-result-object v3

    invoke-virtual {v1, v3}, Lmqp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lltz;->u:Lmqp;

    invoke-virtual {p1}, Lluc;->g()Lmqp;

    move-result-object v3

    invoke-virtual {v1, v3}, Lmqp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lltz;->v:Lmqp;

    invoke-virtual {p1}, Lluc;->m()Lmqp;

    move-result-object v3

    invoke-virtual {v1, v3}, Lmqp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lltz;->w:Lmqp;

    invoke-virtual {p1}, Lluc;->k()Lmqp;

    move-result-object v3

    invoke-virtual {v1, v3}, Lmqp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lltz;->x:Lmqp;

    invoke-virtual {p1}, Lluc;->r()Lmqp;

    move-result-object v3

    invoke-virtual {v1, v3}, Lmqp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lltz;->y:Lmqp;

    invoke-virtual {p1}, Lluc;->h()Lmqp;

    move-result-object v3

    invoke-virtual {v1, v3}, Lmqp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lltz;->z:Lmqp;

    invoke-virtual {p1}, Lluc;->n()Lmqp;

    move-result-object p1

    invoke-virtual {v1, p1}, Lmqp;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final f()Lmqp;
    .locals 1

    iget-object v0, p0, Lltz;->k:Lmqp;

    return-object v0
.end method

.method public final g()Lmqp;
    .locals 1

    iget-object v0, p0, Lltz;->u:Lmqp;

    return-object v0
.end method

.method public final h()Lmqp;
    .locals 1

    iget-object v0, p0, Lltz;->y:Lmqp;

    return-object v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lltz;->a:Llud;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    iget-object v2, p0, Lltz;->b:Lltv;

    invoke-virtual {v2}, Lltv;->hashCode()I

    move-result v2

    mul-int v0, v0, v1

    xor-int/2addr v0, v2

    iget-object v2, p0, Lltz;->c:Llub;

    invoke-virtual {v2}, Llub;->hashCode()I

    move-result v2

    mul-int v0, v0, v1

    xor-int/2addr v0, v2

    iget-object v2, p0, Lltz;->d:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->hashCode()I

    move-result v2

    mul-int v0, v0, v1

    xor-int/2addr v0, v2

    iget-object v2, p0, Lltz;->e:Lmvv;

    invoke-virtual {v2}, Lmvv;->hashCode()I

    move-result v2

    mul-int v0, v0, v1

    xor-int/2addr v0, v2

    iget-object v2, p0, Lltz;->i:Lmqp;

    invoke-virtual {v2}, Lmqp;->hashCode()I

    move-result v2

    mul-int v0, v0, v1

    const v3, 0x79a31aac

    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    xor-int/2addr v0, v2

    iget-object v2, p0, Lltz;->l:Lmqp;

    invoke-virtual {v2}, Lmqp;->hashCode()I

    move-result v2

    mul-int v0, v0, v1

    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    xor-int/lit16 v0, v0, 0x4d5

    mul-int v0, v0, v1

    xor-int/2addr v0, v2

    iget-object v2, p0, Lltz;->m:Lmqp;

    invoke-virtual {v2}, Lmqp;->hashCode()I

    move-result v2

    mul-int v0, v0, v1

    xor-int/2addr v0, v2

    iget-object v2, p0, Lltz;->t:Lmqp;

    invoke-virtual {v2}, Lmqp;->hashCode()I

    move-result v2

    mul-int v0, v0, v1

    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    xor-int/2addr v0, v2

    iget-object v2, p0, Lltz;->u:Lmqp;

    invoke-virtual {v2}, Lmqp;->hashCode()I

    move-result v2

    mul-int v0, v0, v1

    xor-int/2addr v0, v2

    iget-object v2, p0, Lltz;->v:Lmqp;

    invoke-virtual {v2}, Lmqp;->hashCode()I

    move-result v2

    mul-int v0, v0, v1

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    xor-int/2addr v0, v3

    return v0
.end method

.method public final i()Lmqp;
    .locals 1

    iget-object v0, p0, Lltz;->l:Lmqp;

    return-object v0
.end method

.method public final j()Lmqp;
    .locals 1

    iget-object v0, p0, Lltz;->q:Lmqp;

    return-object v0
.end method

.method public final k()Lmqp;
    .locals 1

    iget-object v0, p0, Lltz;->w:Lmqp;

    return-object v0
.end method

.method public final l()Lmqp;
    .locals 1

    iget-object v0, p0, Lltz;->p:Lmqp;

    return-object v0
.end method

.method public final m()Lmqp;
    .locals 1

    iget-object v0, p0, Lltz;->v:Lmqp;

    return-object v0
.end method

.method public final n()Lmqp;
    .locals 1

    iget-object v0, p0, Lltz;->z:Lmqp;

    return-object v0
.end method

.method public final o()Lmqp;
    .locals 1

    iget-object v0, p0, Lltz;->n:Lmqp;

    return-object v0
.end method

.method public final p()Lmqp;
    .locals 1

    iget-object v0, p0, Lltz;->r:Lmqp;

    return-object v0
.end method

.method public final q()Lmqp;
    .locals 1

    iget-object v0, p0, Lltz;->s:Lmqp;

    return-object v0
.end method

.method public final r()Lmqp;
    .locals 1

    iget-object v0, p0, Lltz;->x:Lmqp;

    return-object v0
.end method

.method public final s()Lmqp;
    .locals 1

    iget-object v0, p0, Lltz;->h:Lmqp;

    return-object v0
.end method

.method public final t()Lmqp;
    .locals 1

    iget-object v0, p0, Lltz;->t:Lmqp;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 13

    iget-object v0, p0, Lltz;->a:Llud;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lltz;->b:Lltv;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lltz;->c:Llub;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lltz;->d:Ljava/lang/Float;

    iget-object v4, p0, Lltz;->e:Lmvv;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lltz;->i:Lmqp;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lltz;->l:Lmqp;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lltz;->m:Lmqp;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lltz;->t:Lmqp;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lltz;->u:Lmqp;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lltz;->v:Lmqp;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SemanticResult{text="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", type="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", engineType="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", confidence="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", boundingPolygons="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", textImage=Optional.absent(), unstructuredText=Optional.absent(), singleResultTextAnnotator=Optional.absent(), barcode="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", calendarBegin=Optional.absent(), calendarEnd=Optional.absent(), hasStreetAddress=false, contact="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", wifiNetwork="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", linkedResults=Optional.absent(), textOrientation=Optional.absent(), frameInfo=Optional.absent(), detectedDocument=Optional.absent(), sceneClassification=Optional.absent(), sceneClassificationScore=Optional.absent(), sms="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", calendarEvent="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", geo="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", detection=Optional.absent(), shoppingInfo=Optional.absent(), classifications=Optional.absent(), language=Optional.absent()}"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()Lmqp;
    .locals 1

    iget-object v0, p0, Lltz;->f:Lmqp;

    return-object v0
.end method

.method public final v()Lmqp;
    .locals 1

    iget-object v0, p0, Lltz;->o:Lmqp;

    return-object v0
.end method

.method public final w()Lmqp;
    .locals 1

    iget-object v0, p0, Lltz;->g:Lmqp;

    return-object v0
.end method

.method public final x()Lmqp;
    .locals 1

    iget-object v0, p0, Lltz;->m:Lmqp;

    return-object v0
.end method

.method public final y()Lmvv;
    .locals 1

    iget-object v0, p0, Lltz;->e:Lmvv;

    return-object v0
.end method

.method public final z()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lltz;->d:Ljava/lang/Float;

    return-object v0
.end method
