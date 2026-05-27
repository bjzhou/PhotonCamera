.class final Lasi;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field final a:Lasf;

.field final b:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lasf;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lasi;->a:Lasf;

    iput-object p2, p0, Lasi;->b:Landroid/view/ViewGroup;

    return-void
.end method

.method private final a()V
    .locals 1

    iget-object v0, p0, Lasi;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lasi;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 18

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lasi;->a()V

    sget-object v1, Lasj;->a:Ljava/util/ArrayList;

    iget-object v2, v0, Lasi;->b:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-static {}, Lasj;->a()Lwy;

    move-result-object v1

    iget-object v3, v0, Lasi;->b:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Lxf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-nez v3, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, v0, Lasi;->b:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5, v3}, Lxf;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_0
    iget-object v6, v0, Lasi;->a:Lasf;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v0, Lasi;->a:Lasf;

    new-instance v6, Lash;

    invoke-direct {v6, v0, v1}, Lash;-><init>(Lasi;Lwy;)V

    invoke-virtual {v3, v6}, Lasf;->w(Lase;)V

    iget-object v1, v0, Lasi;->a:Lasf;

    iget-object v3, v0, Lasi;->b:Landroid/view/ViewGroup;

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v6}, Lasf;->n(Landroid/view/ViewGroup;Z)V

    if-eqz v5, :cond_3

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_3

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lasf;

    iget-object v8, v0, Lasi;->b:Landroid/view/ViewGroup;

    invoke-virtual {v7, v8}, Lasf;->r(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    iget-object v1, v0, Lasi;->a:Lasf;

    iget-object v8, v0, Lasi;->b:Landroid/view/ViewGroup;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, Lasf;->g:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, Lasf;->h:Ljava/util/ArrayList;

    iget-object v3, v1, Lasf;->j:Lbbc;

    iget-object v5, v1, Lasf;->k:Lbbc;

    new-instance v7, Lwy;

    iget-object v9, v3, Lbbc;->c:Ljava/lang/Object;

    check-cast v9, Lxf;

    invoke-direct {v7, v9}, Lwy;-><init>(Lxf;)V

    new-instance v9, Lwy;

    iget-object v10, v5, Lbbc;->c:Ljava/lang/Object;

    check-cast v10, Lxf;

    invoke-direct {v9, v10}, Lwy;-><init>(Lxf;)V

    const/4 v10, 0x0

    :goto_2
    iget-object v11, v1, Lasf;->f:[I

    const/4 v12, 0x4

    if-ge v10, v12, :cond_c

    aget v11, v11, v10

    packed-switch v11, :pswitch_data_0

    move-object v4, v5

    goto/16 :goto_8

    :pswitch_0
    iget-object v11, v3, Lbbc;->d:Ljava/lang/Object;

    iget-object v12, v5, Lbbc;->d:Ljava/lang/Object;

    check-cast v11, Lxc;

    invoke-virtual {v11}, Lxc;->b()I

    move-result v13

    const/4 v14, 0x0

    :goto_3
    if-ge v14, v13, :cond_7

    invoke-virtual {v11, v14}, Lxc;->e(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/View;

    if-eqz v15, :cond_5

    invoke-virtual {v1, v15}, Lasf;->v(Landroid/view/View;)Z

    move-result v16

    if-eqz v16, :cond_4

    move-object/from16 v17, v5

    invoke-virtual {v11, v14}, Lxc;->c(I)J

    move-result-wide v4

    move-object v6, v12

    check-cast v6, Lxc;

    invoke-virtual {v6, v4, v5}, Lxc;->d(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    if-eqz v4, :cond_6

    invoke-virtual {v1, v4}, Lasf;->v(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v7, v15}, Lxf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lasq;

    invoke-virtual {v9, v4}, Lxf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lasq;

    if-eqz v5, :cond_6

    if-eqz v6, :cond_6

    iget-object v2, v1, Lasf;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Lasf;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v15}, Lxf;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v9, v4}, Lxf;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_4
    move-object/from16 v17, v5

    goto :goto_4

    :cond_5
    move-object/from16 v17, v5

    :cond_6
    :goto_4
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v5, v17

    const/4 v2, 0x1

    const/4 v6, 0x0

    goto :goto_3

    :cond_7
    move-object/from16 v17, v5

    move-object/from16 v4, v17

    goto/16 :goto_8

    :pswitch_1
    move-object/from16 v17, v5

    iget-object v2, v3, Lbbc;->b:Ljava/lang/Object;

    move-object/from16 v4, v17

    iget-object v5, v4, Lbbc;->b:Ljava/lang/Object;

    check-cast v2, Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v6

    const/4 v11, 0x0

    :goto_5
    if-ge v11, v6, :cond_b

    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    if-eqz v12, :cond_8

    invoke-virtual {v1, v12}, Lasf;->v(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    move-object v14, v5

    check-cast v14, Landroid/util/SparseArray;

    invoke-virtual {v14, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    if-eqz v13, :cond_8

    invoke-virtual {v1, v13}, Lasf;->v(Landroid/view/View;)Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-virtual {v7, v12}, Lxf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lasq;

    invoke-virtual {v9, v13}, Lxf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lasq;

    if-eqz v14, :cond_8

    if-eqz v15, :cond_8

    iget-object v0, v1, Lasf;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Lasf;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v12}, Lxf;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v9, v13}, Lxf;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    goto :goto_5

    :pswitch_2
    move-object v4, v5

    iget-object v0, v3, Lbbc;->a:Ljava/lang/Object;

    iget-object v2, v4, Lbbc;->a:Ljava/lang/Object;

    check-cast v0, Lxf;

    iget v5, v0, Lxf;->d:I

    const/4 v6, 0x0

    :goto_6
    if-ge v6, v5, :cond_b

    invoke-virtual {v0, v6}, Lxf;->g(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    if-eqz v11, :cond_9

    invoke-virtual {v1, v11}, Lasf;->v(Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-virtual {v0, v6}, Lxf;->d(I)Ljava/lang/Object;

    move-result-object v12

    move-object v13, v2

    check-cast v13, Lxf;

    invoke-virtual {v13, v12}, Lxf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    if-eqz v12, :cond_9

    invoke-virtual {v1, v12}, Lasf;->v(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-virtual {v7, v11}, Lxf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lasq;

    invoke-virtual {v9, v12}, Lxf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lasq;

    if-eqz v13, :cond_9

    if-eqz v14, :cond_9

    iget-object v15, v1, Lasf;->g:Ljava/util/ArrayList;

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v13, v1, Lasf;->h:Ljava/util/ArrayList;

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v11}, Lxf;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v9, v12}, Lxf;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :pswitch_3
    move-object v4, v5

    iget v0, v7, Lxf;->d:I

    add-int/lit8 v0, v0, -0x1

    :goto_7
    if-ltz v0, :cond_b

    invoke-virtual {v7, v0}, Lxf;->d(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_a

    invoke-virtual {v1, v2}, Lasf;->v(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v9, v2}, Lxf;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lasq;

    if-eqz v2, :cond_a

    iget-object v5, v2, Lasq;->b:Landroid/view/View;

    invoke-virtual {v1, v5}, Lasf;->v(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v7, v0}, Lxf;->e(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lasq;

    iget-object v6, v1, Lasf;->g:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v1, Lasf;->h:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    :cond_b
    :goto_8
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    move-object v5, v4

    const/4 v2, 0x1

    const/4 v6, 0x0

    goto/16 :goto_2

    :cond_c
    const/4 v0, 0x0

    :goto_9
    iget v2, v7, Lxf;->d:I

    if-ge v0, v2, :cond_e

    invoke-virtual {v7, v0}, Lxf;->g(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lasq;

    iget-object v3, v2, Lasq;->b:Landroid/view/View;

    invoke-virtual {v1, v3}, Lasf;->v(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, v1, Lasf;->g:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Lasf;->h:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_e
    const/4 v6, 0x0

    :goto_a
    iget v0, v9, Lxf;->d:I

    if-ge v6, v0, :cond_10

    invoke-virtual {v9, v6}, Lxf;->g(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lasq;

    iget-object v2, v0, Lasq;->b:Landroid/view/View;

    invoke-virtual {v1, v2}, Lasf;->v(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, v1, Lasf;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Lasf;->g:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_f
    const/4 v2, 0x0

    :goto_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    :cond_10
    invoke-static {}, Lasf;->g()Lwy;

    move-result-object v0

    iget v2, v0, Lxf;->d:I

    invoke-static {v8}, Lasu;->a(Landroid/view/View;)Lasz;

    move-result-object v3

    add-int/lit8 v2, v2, -0x1

    :goto_c
    if-ltz v2, :cond_16

    invoke-virtual {v0, v2}, Lxf;->d(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator;

    if-eqz v4, :cond_15

    invoke-virtual {v0, v4}, Lxf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ldqx;

    if-eqz v5, :cond_15

    iget-object v6, v5, Ldqx;->d:Ljava/lang/Object;

    if-eqz v6, :cond_15

    iget-object v6, v5, Ldqx;->b:Ljava/lang/Object;

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    iget-object v6, v5, Ldqx;->c:Ljava/lang/Object;

    iget-object v7, v5, Ldqx;->d:Ljava/lang/Object;

    move-object v9, v7

    check-cast v9, Landroid/view/View;

    const/4 v10, 0x1

    invoke-virtual {v1, v9, v10}, Lasf;->j(Landroid/view/View;Z)Lasq;

    move-result-object v11

    invoke-virtual {v1, v9, v10}, Lasf;->i(Landroid/view/View;Z)Lasq;

    move-result-object v9

    if-nez v11, :cond_11

    if-nez v9, :cond_11

    iget-object v9, v1, Lasf;->k:Lbbc;

    iget-object v9, v9, Lbbc;->c:Ljava/lang/Object;

    check-cast v9, Lxf;

    invoke-virtual {v9, v7}, Lxf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v9, v7

    check-cast v9, Lasq;

    goto :goto_d

    :cond_11
    :goto_d
    if-nez v11, :cond_12

    if-eqz v9, :cond_15

    :cond_12
    iget-object v5, v5, Ldqx;->e:Ljava/lang/Object;

    check-cast v5, Lasf;

    check-cast v6, Lasq;

    invoke-virtual {v5, v6, v9}, Lasf;->u(Lasq;Lasq;)Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-virtual {v4}, Landroid/animation/Animator;->isRunning()Z

    move-result v5

    if-nez v5, :cond_14

    invoke-virtual {v4}, Landroid/animation/Animator;->isStarted()Z

    move-result v5

    if-eqz v5, :cond_13

    goto :goto_e

    :cond_13
    invoke-virtual {v0, v4}, Lxf;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    :cond_14
    :goto_e
    invoke-virtual {v4}, Landroid/animation/Animator;->cancel()V

    :cond_15
    :goto_f
    add-int/lit8 v2, v2, -0x1

    goto :goto_c

    :cond_16
    iget-object v9, v1, Lasf;->j:Lbbc;

    iget-object v10, v1, Lasf;->k:Lbbc;

    iget-object v11, v1, Lasf;->g:Ljava/util/ArrayList;

    iget-object v12, v1, Lasf;->h:Ljava/util/ArrayList;

    move-object v7, v1

    invoke-virtual/range {v7 .. v12}, Lasf;->E(Landroid/view/ViewGroup;Lbbc;Lbbc;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v1}, Lasf;->s()V

    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 4

    invoke-direct {p0}, Lasi;->a()V

    sget-object p1, Lasj;->a:Ljava/util/ArrayList;

    iget-object v0, p0, Lasi;->b:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Lasj;->a()Lwy;

    move-result-object p1

    iget-object v0, p0, Lasi;->b:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Lxf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lasf;

    iget-object v3, p0, Lasi;->b:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Lasf;->r(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lasi;->a:Lasf;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lasf;->o(Z)V

    return-void
.end method
