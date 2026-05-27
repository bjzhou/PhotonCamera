.class public final Ldm;
.super Ljava/lang/Object;


# instance fields
.field public final a:Landroid/view/ViewGroup;

.field final b:Ljava/util/ArrayList;

.field public final c:Ljava/util/ArrayList;

.field d:Z

.field e:Z


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldm;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldm;->c:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldm;->d:Z

    iput-boolean v0, p0, Ldm;->e:Z

    iput-object p1, p0, Ldm;->a:Landroid/view/ViewGroup;

    return-void
.end method

.method public static b(Landroid/view/ViewGroup;Lcq;)Ldm;
    .locals 0

    invoke-virtual {p1}, Lcq;->af()Ld;

    invoke-static {p0}, Ldm;->i(Landroid/view/ViewGroup;)Ldm;

    move-result-object p0

    return-object p0
.end method

.method public static h(Ldl;)V
    .locals 1

    iget-object v0, p0, Ldl;->a:Lbw;

    iget-object v0, v0, Lbw;->N:Landroid/view/View;

    iget p0, p0, Ldl;->e:I

    invoke-static {p0, v0}, Ldp;->u(ILandroid/view/View;)V

    return-void
.end method

.method static i(Landroid/view/ViewGroup;)Ldm;
    .locals 3

    const v0, 0x7f0b0345

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ldm;

    if-eqz v2, :cond_0

    check-cast v1, Ldm;

    return-object v1

    :cond_0
    new-instance v1, Ldm;

    invoke-direct {v1, p0}, Ldm;-><init>(Landroid/view/ViewGroup;)V

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    return-object v1
.end method

.method public static j(Lwy;Ljava/util/Collection;)V
    .locals 1

    invoke-virtual {p0}, Lwy;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lafh;->h(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final l()V
    .locals 6

    iget-object v0, p0, Ldm;->b:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldl;

    iget v4, v3, Ldl;->f:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    iget-object v4, v3, Ldl;->a:Lbw;

    invoke-virtual {v4}, Lbw;->requireView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    invoke-static {v4}, Ldp;->s(I)I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Ldl;->e(II)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Lbw;)Ldl;
    .locals 5

    iget-object v0, p0, Ldm;->b:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldl;

    iget-object v4, v3, Ldl;->a:Lbw;

    invoke-virtual {v4, p1}, Lbw;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, v3, Ldl;->c:Z

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    return-object v3

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method final c()V
    .locals 38

    move-object/from16 v1, p0

    iget-boolean v2, v1, Ldm;->e:Z

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget-object v2, v1, Ldm;->a:Landroid/view/ViewGroup;

    invoke-static {v2}, Lafe;->e(Landroid/view/View;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Ldm;->d()V

    iput-boolean v3, v1, Ldm;->d:Z

    return-void

    :cond_1
    iget-object v2, v1, Ldm;->b:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    iget-object v4, v1, Ldm;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5b

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, v1, Ldm;->c:Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v5, v1, Ldm;->c:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x2

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ldl;

    invoke-static {v6}, Lcq;->S(I)Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SpecialEffectsController: Cancelling operation "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v5}, Ldl;->d()V

    iget-boolean v6, v5, Ldl;->d:Z

    if-nez v6, :cond_2

    iget-object v6, v1, Ldm;->c:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-direct/range {p0 .. p0}, Ldm;->l()V

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, v1, Ldm;->b:Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v5, v1, Ldm;->b:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iget-object v5, v1, Ldm;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ldl;

    invoke-virtual {v7}, Ldl;->b()V

    goto :goto_1

    :cond_5
    iget-boolean v5, v1, Ldm;->d:Z

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v14, 0x0

    move-object v13, v14

    move-object v15, v13

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ldl;

    iget-object v9, v8, Ldl;->a:Lbw;

    iget-object v9, v9, Lbw;->N:Landroid/view/View;

    invoke-static {v9}, Ldp;->t(Landroid/view/View;)I

    move-result v9

    iget v10, v8, Ldl;->e:I

    add-int/lit8 v11, v10, -0x1

    if-eqz v10, :cond_7

    packed-switch v11, :pswitch_data_0

    :cond_6
    goto :goto_2

    :pswitch_0
    if-eq v9, v6, :cond_6

    move-object v13, v8

    goto :goto_2

    :pswitch_1
    if-ne v9, v6, :cond_6

    if-nez v15, :cond_6

    move-object v15, v8

    goto :goto_2

    :cond_7
    throw v14

    :cond_8
    invoke-static {v6}, Lcq;->S(I)Z

    move-result v7

    if-eqz v7, :cond_9

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Executing operations from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_9
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    const/4 v10, -0x1

    add-int/2addr v8, v10

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ldl;

    iget-object v8, v8, Ldl;->a:Lbw;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v10, v16

    check-cast v10, Ldl;

    iget-object v10, v10, Ldl;->a:Lbw;

    iget-object v10, v10, Lbw;->Q:Lbs;

    iget-object v6, v8, Lbw;->Q:Lbs;

    iget v3, v6, Lbs;->b:I

    iput v3, v10, Lbs;->b:I

    iget v3, v6, Lbs;->c:I

    iput v3, v10, Lbs;->c:I

    iget v3, v6, Lbs;->d:I

    iput v3, v10, Lbs;->d:I

    iget v3, v6, Lbs;->e:I

    iput v3, v10, Lbs;->e:I

    const/4 v3, 0x0

    const/4 v6, 0x2

    const/4 v10, -0x1

    goto :goto_3

    :cond_a
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldl;

    new-instance v8, Lexj;

    invoke-direct {v8, v14}, Lexj;-><init>([B)V

    invoke-virtual {v4, v8}, Ldl;->f(Lexj;)V

    new-instance v9, Lbf;

    invoke-direct {v9, v4, v8, v5, v14}, Lbf;-><init>(Ldl;Lexj;Z[B)V

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v10, Lexj;

    invoke-direct {v10, v14}, Lexj;-><init>([B)V

    invoke-virtual {v4, v10}, Ldl;->f(Lexj;)V

    new-instance v9, Lbh;

    if-eqz v5, :cond_b

    if-ne v4, v15, :cond_c

    const/16 v18, 0x1

    goto :goto_5

    :cond_b
    if-ne v4, v13, :cond_c

    const/16 v18, 0x1

    goto :goto_5

    :cond_c
    const/16 v18, 0x0

    :goto_5
    const/16 v19, 0x0

    move-object v8, v9

    move-object v14, v9

    move-object v9, v4

    move-object/from16 v22, v11

    move v11, v5

    move-object v6, v12

    move/from16 v12, v18

    move-object/from16 v18, v3

    move-object v3, v13

    move-object/from16 v13, v19

    invoke-direct/range {v8 .. v13}, Lbh;-><init>(Ldl;Lexj;ZZ[B)V

    invoke-interface {v6, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v8, Lbd;

    move-object/from16 v9, v22

    const/4 v10, 0x1

    invoke-direct {v8, v9, v4, v10}, Lbd;-><init>(Ljava/util/List;Ldl;I)V

    invoke-virtual {v4, v8}, Ldl;->c(Ljava/lang/Runnable;)V

    move-object v13, v3

    move-object v12, v6

    move-object v11, v9

    move-object/from16 v3, v18

    const/4 v14, 0x0

    goto :goto_4

    :cond_d
    move-object v9, v11

    move-object v6, v12

    move-object v3, v13

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v10, 0x0

    :cond_e
    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_14

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lbh;

    invoke-virtual {v11}, Lbg;->c()Z

    move-result v12

    if-nez v12, :cond_e

    iget-object v12, v11, Lbh;->c:Ljava/lang/Object;

    invoke-virtual {v11, v12}, Lbh;->a(Ljava/lang/Object;)Ldf;

    move-result-object v12

    iget-object v13, v11, Lbh;->e:Ljava/lang/Object;

    invoke-virtual {v11, v13}, Lbh;->a(Ljava/lang/Object;)Ldf;

    move-result-object v13

    if-eqz v12, :cond_10

    if-eqz v13, :cond_10

    if-ne v12, v13, :cond_f

    goto :goto_7

    :cond_f
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Mixing framework transitions and AndroidX transitions is not allowed. Fragment "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v11, Lbg;->a:Ldl;

    iget-object v5, v5, Ldl;->a:Lbw;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " returned Transition "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v11, Lbh;->c:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " which uses a different Transition  type than its shared element transition "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v11, Lbh;->e:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_10
    :goto_7
    if-nez v12, :cond_11

    move-object v12, v13

    :cond_11
    if-nez v10, :cond_12

    move-object v10, v12

    goto :goto_6

    :cond_12
    if-eqz v12, :cond_e

    if-ne v10, v12, :cond_13

    goto :goto_6

    :cond_13
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Mixing framework transitions and AndroidX transitions is not allowed. Fragment "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v11, Lbg;->a:Ldl;

    iget-object v5, v5, Ldl;->a:Lbw;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " returned Transition "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v11, Lbh;->c:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " which uses a different Transition  type than other Fragments."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_14
    if-nez v10, :cond_16

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lbh;

    iget-object v10, v6, Lbg;->a:Ldl;

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-interface {v4, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6}, Lbg;->b()V

    goto :goto_8

    :cond_15
    move-object/from16 v35, v3

    move-object/from16 v33, v4

    move-object/from16 v29, v7

    move-object/from16 v31, v9

    move-object/from16 v21, v15

    goto/16 :goto_21

    :cond_16
    new-instance v11, Landroid/view/View;

    iget-object v12, v1, Ldm;->a:Landroid/view/ViewGroup;

    invoke-virtual {v12}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Lwy;

    invoke-direct {v8}, Lwy;-><init>()V

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    move-object/from16 v29, v7

    const/4 v7, 0x0

    const/16 v28, 0x0

    const/16 v30, 0x0

    :goto_9
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_28

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v31, v9

    move-object/from16 v9, v22

    check-cast v9, Lbh;

    iget-object v9, v9, Lbh;->e:Ljava/lang/Object;

    if-eqz v9, :cond_27

    if-eqz v15, :cond_27

    if-eqz v3, :cond_27

    invoke-virtual {v10, v9}, Ldf;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v10, v7}, Ldf;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iget-object v9, v3, Ldl;->a:Lbw;

    invoke-virtual {v9}, Lbw;->k()Ljava/util/ArrayList;

    move-result-object v9

    move-object/from16 v32, v6

    iget-object v6, v15, Ldl;->a:Lbw;

    invoke-virtual {v6}, Lbw;->k()Ljava/util/ArrayList;

    move-result-object v6

    move-object/from16 v33, v4

    iget-object v4, v15, Ldl;->a:Lbw;

    invoke-virtual {v4}, Lbw;->l()Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v34, v11

    const/4 v11, 0x0

    :goto_a
    move-object/from16 v35, v12

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v11, v12, :cond_18

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v12

    move-object/from16 v22, v4

    const/4 v4, -0x1

    if-eq v12, v4, :cond_17

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v4, v21

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v9, v12, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_17
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v4, v22

    move-object/from16 v12, v35

    goto :goto_a

    :cond_18
    iget-object v4, v3, Ldl;->a:Lbw;

    invoke-virtual {v4}, Lbw;->l()Ljava/util/ArrayList;

    move-result-object v4

    if-nez v5, :cond_19

    iget-object v6, v15, Ldl;->a:Lbw;

    invoke-virtual {v6}, Lbw;->y()Laaa;

    move-result-object v6

    iget-object v11, v3, Ldl;->a:Lbw;

    invoke-virtual {v11}, Lbw;->x()Laaa;

    move-result-object v11

    goto :goto_b

    :cond_19
    iget-object v6, v15, Ldl;->a:Lbw;

    invoke-virtual {v6}, Lbw;->x()Laaa;

    move-result-object v6

    iget-object v11, v3, Ldl;->a:Lbw;

    invoke-virtual {v11}, Lbw;->y()Laaa;

    move-result-object v11

    :goto_b
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v12

    move-object/from16 v21, v7

    const/4 v7, 0x0

    :goto_c
    if-ge v7, v12, :cond_1a

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    move/from16 v23, v12

    move-object/from16 v12, v22

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v37, v10

    move-object/from16 v10, v22

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v8, v12, v10}, Lxf;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    move/from16 v12, v23

    move-object/from16 v10, v37

    goto :goto_c

    :cond_1a
    move-object/from16 v37, v10

    const/4 v7, 0x2

    invoke-static {v7}, Lcq;->S(I)Z

    move-result v10

    if-eqz v10, :cond_1c

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    const/4 v10, 0x0

    :goto_d
    if-ge v10, v7, :cond_1b

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    add-int/lit8 v10, v10, 0x1

    goto :goto_d

    :cond_1b
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v7

    const/4 v10, 0x0

    :goto_e
    if-ge v10, v7, :cond_1c

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    add-int/lit8 v10, v10, 0x1

    goto :goto_e

    :cond_1c
    new-instance v7, Lwy;

    invoke-direct {v7}, Lwy;-><init>()V

    iget-object v10, v15, Ldl;->a:Lbw;

    iget-object v10, v10, Lbw;->N:Landroid/view/View;

    invoke-virtual {v1, v7, v10}, Ldm;->g(Ljava/util/Map;Landroid/view/View;)V

    invoke-virtual {v7, v9}, Lwy;->a(Ljava/util/Collection;)Z

    if-eqz v6, :cond_1e

    const/4 v3, 0x2

    invoke-static {v3}, Lcq;->S(I)Z

    move-result v3

    if-eqz v3, :cond_1d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Executing exit callback for operation "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1d
    const/4 v3, 0x0

    throw v3

    :cond_1e
    invoke-virtual {v7}, Lwy;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v8, v6}, Lwy;->a(Ljava/util/Collection;)Z

    new-instance v6, Lwy;

    invoke-direct {v6}, Lwy;-><init>()V

    iget-object v10, v3, Ldl;->a:Lbw;

    iget-object v10, v10, Lbw;->N:Landroid/view/View;

    invoke-virtual {v1, v6, v10}, Ldm;->g(Ljava/util/Map;Landroid/view/View;)V

    invoke-virtual {v6, v4}, Lwy;->a(Ljava/util/Collection;)Z

    invoke-virtual {v8}, Lwy;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-virtual {v6, v10}, Lwy;->a(Ljava/util/Collection;)Z

    if-eqz v11, :cond_20

    const/4 v4, 0x2

    invoke-static {v4}, Lcq;->S(I)Z

    move-result v4

    if-eqz v4, :cond_1f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Executing enter callback for operation "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1f
    const/4 v3, 0x0

    throw v3

    :cond_20
    sget v10, Lcy;->c:I

    iget v10, v8, Lxf;->d:I

    const/4 v11, -0x1

    add-int/2addr v10, v11

    :goto_f
    if-ltz v10, :cond_22

    invoke-virtual {v8, v10}, Lxf;->g(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v6, v12}, Lxf;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_21

    invoke-virtual {v8, v10}, Lxf;->e(I)Ljava/lang/Object;

    :cond_21
    add-int/lit8 v10, v10, -0x1

    goto :goto_f

    :cond_22
    invoke-virtual {v8}, Lwy;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-static {v7, v10}, Ldm;->j(Lwy;Ljava/util/Collection;)V

    invoke-virtual {v8}, Lwy;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-static {v6, v10}, Ldm;->j(Lwy;Ljava/util/Collection;)V

    invoke-virtual {v8}, Lxf;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_23

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v9, v31

    move-object/from16 v6, v32

    move-object/from16 v4, v33

    move-object/from16 v11, v34

    move-object/from16 v12, v35

    move-object/from16 v10, v37

    const/4 v7, 0x0

    goto/16 :goto_9

    :cond_23
    iget-object v10, v3, Ldl;->a:Lbw;

    iget-object v12, v15, Ldl;->a:Lbw;

    const/4 v11, 0x1

    invoke-static {v10, v12, v5, v7, v11}, Lcy;->a(Lbw;Lbw;ZLwy;Z)V

    iget-object v10, v1, Ldm;->a:Landroid/view/ViewGroup;

    new-instance v11, Lbc;

    invoke-direct {v11, v3, v15, v5, v6}, Lbc;-><init>(Ldl;Ldl;ZLwy;)V

    invoke-static {v10, v11}, Laex;->b(Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Lwy;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_24

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v7, v9}, Lxf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    move-object/from16 v9, v21

    move-object/from16 v10, v37

    invoke-virtual {v10, v9, v7}, Ldf;->j(Ljava/lang/Object;Landroid/view/View;)V

    move-object/from16 v30, v7

    goto :goto_10

    :cond_24
    move-object/from16 v9, v21

    move-object/from16 v10, v37

    :goto_10
    invoke-virtual {v6}, Lwy;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_26

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Lxf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    if-eqz v4, :cond_25

    iget-object v6, v1, Ldm;->a:Landroid/view/ViewGroup;

    new-instance v7, Lbd;

    move-object/from16 v11, v35

    const/4 v12, 0x0

    invoke-direct {v7, v4, v11, v12}, Lbd;-><init>(Landroid/view/View;Landroid/graphics/Rect;I)V

    invoke-static {v6, v7}, Laex;->b(Landroid/view/View;Ljava/lang/Runnable;)V

    const/16 v28, 0x1

    goto :goto_11

    :cond_25
    move-object/from16 v11, v35

    goto :goto_11

    :cond_26
    move-object/from16 v11, v35

    :goto_11
    move-object/from16 v4, v34

    invoke-virtual {v10, v9, v4, v13}, Ldf;->k(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v22, v10

    move-object/from16 v23, v9

    move-object/from16 v26, v9

    move-object/from16 v27, v14

    invoke-virtual/range {v22 .. v27}, Ldf;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object/from16 v6, v33

    invoke-interface {v6, v15, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v6, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v9

    move-object v12, v11

    move-object/from16 v9, v31

    move-object v11, v4

    move-object v4, v6

    move-object/from16 v6, v32

    goto/16 :goto_9

    :cond_27
    move-object/from16 v32, v6

    move-object v6, v4

    move-object v4, v11

    move-object v11, v12

    move-object v12, v11

    move-object/from16 v9, v31

    move-object v11, v4

    move-object v4, v6

    move-object/from16 v6, v32

    goto/16 :goto_9

    :cond_28
    move-object/from16 v32, v6

    move-object/from16 v31, v9

    move-object v6, v4

    move-object v4, v11

    move-object v11, v12

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {v32 .. v32}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object/from16 v19, v8

    const/4 v8, 0x0

    const/4 v12, 0x0

    :goto_12
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_35

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v33, v9

    move-object/from16 v9, v21

    check-cast v9, Lbh;

    invoke-virtual {v9}, Lbg;->c()Z

    move-result v21

    if-eqz v21, :cond_29

    move-object/from16 v21, v8

    iget-object v8, v9, Lbg;->a:Ldl;

    move-object/from16 v34, v12

    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-interface {v6, v8, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v9}, Lbg;->b()V

    move-object/from16 v35, v3

    goto :goto_14

    :cond_29
    move-object/from16 v21, v8

    move-object/from16 v34, v12

    iget-object v8, v9, Lbh;->c:Ljava/lang/Object;

    invoke-virtual {v10, v8}, Ldf;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iget-object v12, v9, Lbg;->a:Ldl;

    if-eqz v7, :cond_2b

    if-eq v12, v15, :cond_2a

    if-ne v12, v3, :cond_2b

    const/16 v22, 0x1

    goto :goto_13

    :cond_2a
    const/16 v22, 0x1

    goto :goto_13

    :cond_2b
    const/16 v22, 0x0

    :goto_13
    if-nez v8, :cond_2d

    if-nez v22, :cond_2c

    move-object/from16 v35, v3

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v6, v12, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v9}, Lbg;->b()V

    goto :goto_14

    :cond_2c
    move-object/from16 v35, v3

    :goto_14
    move-object/from16 v8, v21

    move-object/from16 v9, v33

    move-object/from16 v12, v34

    move-object/from16 v3, v35

    goto :goto_12

    :cond_2d
    move-object/from16 v35, v3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v36, v7

    iget-object v7, v12, Ldl;->a:Lbw;

    iget-object v7, v7, Lbw;->N:Landroid/view/View;

    invoke-virtual {v1, v3, v7}, Ldm;->f(Ljava/util/ArrayList;Landroid/view/View;)V

    if-eqz v22, :cond_2f

    if-ne v12, v15, :cond_2e

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    goto :goto_15

    :cond_2e
    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_2f
    :goto_15
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_30

    invoke-virtual {v10, v8, v4}, Ldf;->d(Ljava/lang/Object;Landroid/view/View;)V

    move-object/from16 v22, v4

    move-object/from16 v37, v13

    goto :goto_16

    :cond_30
    invoke-virtual {v10, v8, v3}, Ldf;->e(Ljava/lang/Object;Ljava/util/ArrayList;)V

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v22, v10

    move-object/from16 v23, v8

    move-object/from16 v24, v8

    move-object/from16 v25, v3

    invoke-virtual/range {v22 .. v27}, Ldf;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    iget v7, v12, Ldl;->e:I

    move-object/from16 v22, v4

    const/4 v4, 0x3

    if-ne v7, v4, :cond_31

    move-object/from16 v4, v31

    invoke-interface {v4, v12}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v31, v4

    iget-object v4, v12, Ldl;->a:Lbw;

    iget-object v4, v4, Lbw;->N:Landroid/view/View;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v4, v12, Ldl;->a:Lbw;

    iget-object v4, v4, Lbw;->N:Landroid/view/View;

    invoke-virtual {v10, v8, v4, v7}, Ldf;->h(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    iget-object v4, v1, Ldm;->a:Landroid/view/ViewGroup;

    new-instance v7, Lbe;

    move-object/from16 v37, v13

    const/4 v13, 0x0

    invoke-direct {v7, v3, v13}, Lbe;-><init>(Ljava/util/ArrayList;I)V

    invoke-static {v4, v7}, Laex;->b(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_16

    :cond_31
    move-object/from16 v37, v13

    :goto_16
    iget v4, v12, Ldl;->e:I

    const/4 v7, 0x2

    if-ne v4, v7, :cond_33

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eqz v28, :cond_32

    invoke-virtual {v10, v8, v11}, Ldf;->i(Ljava/lang/Object;Landroid/graphics/Rect;)V

    move-object/from16 v3, v30

    goto :goto_17

    :cond_32
    move-object/from16 v3, v30

    goto :goto_17

    :cond_33
    move-object/from16 v3, v30

    invoke-virtual {v10, v8, v3}, Ldf;->j(Ljava/lang/Object;Landroid/view/View;)V

    :goto_17
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v6, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v4, v9, Lbh;->d:Z

    if-eqz v4, :cond_34

    move-object/from16 v4, v34

    invoke-virtual {v10, v4, v8}, Ldf;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v30, v3

    move-object/from16 v8, v21

    move-object/from16 v4, v22

    move-object/from16 v9, v33

    move-object/from16 v3, v35

    move-object/from16 v7, v36

    move-object/from16 v13, v37

    goto/16 :goto_12

    :cond_34
    move-object/from16 v4, v34

    move-object/from16 v7, v21

    invoke-virtual {v10, v7, v8}, Ldf;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v30, v3

    move-object v12, v4

    move-object/from16 v4, v22

    move-object/from16 v9, v33

    move-object/from16 v3, v35

    move-object/from16 v7, v36

    move-object/from16 v13, v37

    goto/16 :goto_12

    :cond_35
    move-object/from16 v35, v3

    move-object/from16 v36, v7

    move-object v7, v8

    move-object v4, v12

    move-object/from16 v37, v13

    move-object/from16 v9, v36

    invoke-virtual {v10, v4, v7, v9}, Ldf;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_48

    :try_start_1
    invoke-interface/range {v32 .. v32}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_18
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_3e

    :try_start_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lbh;

    invoke-virtual {v7}, Lbg;->c()Z

    move-result v8

    if-nez v8, :cond_3d

    iget-object v8, v7, Lbh;->c:Ljava/lang/Object;

    iget-object v11, v7, Lbg;->a:Ldl;

    if-eqz v9, :cond_37

    if-eq v11, v15, :cond_36

    move-object/from16 v13, v35

    if-ne v11, v13, :cond_38

    const/4 v12, 0x1

    goto :goto_19

    :cond_36
    move-object/from16 v13, v35

    const/4 v12, 0x1

    goto :goto_19

    :cond_37
    move-object/from16 v13, v35

    :cond_38
    const/4 v12, 0x0

    :goto_19
    if-nez v8, :cond_3a

    if-eqz v12, :cond_39

    goto :goto_1a

    :cond_39
    move-object/from16 v35, v13

    goto :goto_18

    :cond_3a
    :goto_1a
    iget-object v8, v1, Ldm;->a:Landroid/view/ViewGroup;

    invoke-static {v8}, Lafe;->f(Landroid/view/View;)Z

    move-result v8

    if-nez v8, :cond_3c

    const/4 v8, 0x2

    invoke-static {v8}, Lcq;->S(I)Z

    move-result v12

    if-eqz v12, :cond_3b

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SpecialEffectsController: Container "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Ldm;->a:Landroid/view/ViewGroup;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " has not been laid out. Completing operation "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_3b
    invoke-virtual {v7}, Lbg;->b()V

    move-object/from16 v35, v13

    goto :goto_18

    :cond_3c
    iget-object v8, v7, Lbg;->a:Ldl;

    iget-object v8, v8, Ldl;->a:Lbw;

    iget-object v8, v7, Lbg;->b:Lexj;

    new-instance v12, Lbd;

    move-object/from16 v21, v4

    const/4 v4, 0x2

    invoke-direct {v12, v7, v11, v4}, Lbd;-><init>(Lbh;Ldl;I)V

    invoke-virtual {v10, v3, v8, v12}, Ldf;->p(Ljava/lang/Object;Lexj;Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v35, v13

    move-object/from16 v4, v21

    goto :goto_18

    :cond_3d
    move-object/from16 v21, v4

    move-object/from16 v13, v35

    goto :goto_18

    :cond_3e
    move-object/from16 v13, v35

    :try_start_3
    iget-object v4, v1, Ldm;->a:Landroid/view/ViewGroup;

    invoke-static {v4}, Lafe;->f(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_47

    const/4 v4, 0x4

    invoke-static {v5, v4}, Lcy;->b(Ljava/util/ArrayList;I)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v8, 0x0

    :goto_1b
    if-ge v8, v7, :cond_3f

    :try_start_4
    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    invoke-static {v11}, Lafh;->h(Landroid/view/View;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lafh;->o(Landroid/view/View;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    add-int/lit8 v8, v8, 0x1

    goto :goto_1b

    :cond_3f
    const/4 v7, 0x2

    :try_start_5
    invoke-static {v7}, Lcq;->S(I)Z

    move-result v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v8, :cond_41

    :try_start_6
    invoke-interface/range {v37 .. v37}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_1c
    if-ge v8, v7, :cond_40

    move-object/from16 v11, v37

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    move/from16 v21, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v35, v13

    const-string v13, "View: "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " Name: "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12}, Lafh;->h(Landroid/view/View;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v37, v11

    move/from16 v7, v21

    move-object/from16 v13, v35

    goto :goto_1c

    :cond_40
    move-object/from16 v35, v13

    move-object/from16 v11, v37

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_1d
    if-ge v8, v7, :cond_42

    invoke-interface {v14, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v21, v7

    const-string v7, "View: "

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " Name: "

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12}, Lafh;->h(Landroid/view/View;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    add-int/lit8 v8, v8, 0x1

    move/from16 v7, v21

    goto :goto_1d

    :cond_41
    move-object/from16 v35, v13

    move-object/from16 v11, v37

    :cond_42
    :try_start_7
    iget-object v7, v1, Ldm;->a:Landroid/view/ViewGroup;

    invoke-virtual {v10, v7, v3}, Ldf;->f(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    iget-object v3, v1, Ldm;->a:Landroid/view/ViewGroup;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v12, 0x0

    :goto_1e
    if-ge v12, v7, :cond_46

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    move-object/from16 v21, v15

    invoke-static {v13}, Lafh;->h(Landroid/view/View;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v15, :cond_43

    move-object/from16 v33, v6

    goto :goto_20

    :cond_43
    const/4 v1, 0x0

    invoke-static {v13, v1}, Lafh;->o(Landroid/view/View;Ljava/lang/String;)V

    move-object/from16 v13, v19

    invoke-interface {v13, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v1, v19

    check-cast v1, Ljava/lang/String;

    move-object/from16 v19, v13

    const/4 v13, 0x0

    :goto_1f
    if-ge v13, v7, :cond_45

    move-object/from16 v33, v6

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_44

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {v1, v15}, Lafh;->o(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_20

    :cond_44
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v6, v33

    goto :goto_1f

    :cond_45
    move-object/from16 v33, v6

    :goto_20
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, p0

    move-object/from16 v15, v21

    move-object/from16 v6, v33

    goto :goto_1e

    :cond_46
    move-object/from16 v33, v6

    move-object/from16 v21, v15

    new-instance v1, Lgkp;

    const/16 v28, 0x1

    move-object/from16 v22, v1

    move/from16 v23, v7

    move-object/from16 v24, v14

    move-object/from16 v25, v4

    move-object/from16 v26, v11

    move-object/from16 v27, v8

    invoke-direct/range {v22 .. v28}, Lgkp;-><init>(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    invoke-static {v3, v1}, Laex;->b(Landroid/view/View;Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    invoke-static {v5, v1}, Lcy;->b(Ljava/util/ArrayList;I)V

    invoke-virtual {v10, v9, v11, v14}, Ldf;->l(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_21

    :cond_47
    move-object/from16 v33, v6

    move-object/from16 v35, v13

    move-object/from16 v21, v15

    goto :goto_21

    :cond_48
    move-object/from16 v33, v6

    move-object/from16 v21, v15

    :goto_21
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v1, v33

    invoke-interface {v1, v3}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object/from16 v4, p0

    :try_start_8
    iget-object v11, v4, Ldm;->a:Landroid/view/ViewGroup;

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v12

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    const/4 v10, 0x0

    :goto_22
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_51

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v15, v5

    check-cast v15, Lbf;

    invoke-virtual {v15}, Lbg;->c()Z

    move-result v5

    if-eqz v5, :cond_49

    invoke-virtual {v15}, Lbg;->b()V

    goto :goto_22

    :cond_49
    invoke-virtual {v15, v12}, Lbf;->a(Landroid/content/Context;)Lbby;

    move-result-object v5

    if-nez v5, :cond_4a

    invoke-virtual {v15}, Lbg;->b()V

    goto :goto_22

    :cond_4a
    iget-object v9, v5, Lbby;->a:Ljava/lang/Object;

    if-nez v9, :cond_4b

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22

    :cond_4b
    iget-object v8, v15, Lbg;->a:Ldl;

    iget-object v5, v8, Ldl;->a:Lbw;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4d

    const/4 v6, 0x2

    invoke-static {v6}, Lcq;->S(I)Z

    move-result v7

    if-eqz v7, :cond_4c

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring Animator set on "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " as this Fragment was involved in a Transition."

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4c
    invoke-virtual {v15}, Lbg;->b()V

    goto :goto_22

    :cond_4d
    iget v6, v8, Ldl;->e:I

    const/4 v10, 0x3

    if-ne v6, v10, :cond_4e

    const/16 v18, 0x1

    goto :goto_23

    :cond_4e
    const/16 v18, 0x0

    :goto_23
    if-eqz v18, :cond_4f

    move-object/from16 v7, v31

    invoke-interface {v7, v8}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_24

    :cond_4f
    move-object/from16 v7, v31

    :goto_24
    iget-object v6, v5, Lbw;->N:Landroid/view/View;

    invoke-virtual {v11, v6}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    new-instance v5, Lay;

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object v6, v11

    move-object/from16 v22, v7

    move-object/from16 v7, v20

    move-object/from16 v23, v8

    move/from16 v8, v18

    move-object/from16 v18, v9

    move-object/from16 v9, v23

    const/16 v24, 0x3

    move-object v10, v15

    invoke-direct/range {v5 .. v10}, Lay;-><init>(Landroid/view/ViewGroup;Landroid/view/View;ZLdl;Lbf;)V

    move-object/from16 v9, v18

    check-cast v9, Landroid/animation/Animator;

    move-object/from16 v5, v19

    invoke-virtual {v9, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v9, v18

    check-cast v9, Landroid/animation/Animator;

    move-object/from16 v5, v20

    invoke-virtual {v9, v5}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    move-object/from16 v9, v18

    check-cast v9, Landroid/animation/Animator;

    invoke-virtual {v9}, Landroid/animation/Animator;->start()V

    const/4 v5, 0x2

    invoke-static {v5}, Lcq;->S(I)Z

    move-result v6

    if-eqz v6, :cond_50

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Animator from operation "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, v23

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " has started."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_25

    :cond_50
    move-object/from16 v6, v23

    :goto_25
    iget-object v5, v15, Lbg;->b:Lexj;

    new-instance v7, Laz;

    move-object/from16 v9, v18

    check-cast v9, Landroid/animation/Animator;

    invoke-direct {v7, v9, v6}, Laz;-><init>(Landroid/animation/Animator;Ldl;)V

    invoke-virtual {v5, v7}, Lexj;->a(Ladj;)V

    move-object/from16 v31, v22

    const/4 v10, 0x1

    goto/16 :goto_22

    :cond_51
    move-object/from16 v22, v31

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    const/4 v5, 0x0

    :goto_26
    if-ge v5, v1, :cond_58

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lbf;

    iget-object v7, v6, Lbg;->a:Ldl;

    iget-object v8, v7, Ldl;->a:Lbw;

    if-eqz v3, :cond_53

    const/4 v7, 0x2

    invoke-static {v7}, Lcq;->S(I)Z

    move-result v9

    if-eqz v9, :cond_52

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ignoring Animation set on "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " as Animations cannot run alongside Transitions."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_52
    invoke-virtual {v6}, Lbg;->b()V

    const/4 v15, 0x1

    goto :goto_28

    :cond_53
    if-eqz v10, :cond_55

    const/4 v7, 0x2

    invoke-static {v7}, Lcq;->S(I)Z

    move-result v9

    if-eqz v9, :cond_54

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ignoring Animation set on "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " as Animations cannot run alongside Animators."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_54
    invoke-virtual {v6}, Lbg;->b()V

    const/4 v15, 0x1

    goto :goto_28

    :cond_55
    iget-object v8, v8, Lbw;->N:Landroid/view/View;

    invoke-virtual {v6, v12}, Lbf;->a(Landroid/content/Context;)Lbby;

    move-result-object v9

    invoke-static {v9}, Labf;->c(Ljava/lang/Object;)V

    iget-object v9, v9, Lbby;->b:Ljava/lang/Object;

    invoke-static {v9}, Labf;->c(Ljava/lang/Object;)V

    iget v14, v7, Ldl;->e:I

    const/4 v15, 0x1

    if-eq v14, v15, :cond_56

    check-cast v9, Landroid/view/animation/Animation;

    invoke-virtual {v8, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v6}, Lbg;->b()V

    goto :goto_27

    :cond_56
    invoke-virtual {v11, v8}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    new-instance v14, Lca;

    check-cast v9, Landroid/view/animation/Animation;

    invoke-direct {v14, v9, v11, v8}, Lca;-><init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V

    new-instance v9, Lba;

    invoke-direct {v9, v7, v11, v8, v6}, Lba;-><init>(Ldl;Landroid/view/ViewGroup;Landroid/view/View;Lbf;)V

    invoke-virtual {v14, v9}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v8, v14}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v9, 0x2

    invoke-static {v9}, Lcq;->S(I)Z

    move-result v14

    if-eqz v14, :cond_57

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Animation from operation "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " has started."

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_57
    :goto_27
    iget-object v9, v6, Lbg;->b:Lexj;

    new-instance v14, Lbb;

    invoke-direct {v14, v8, v11, v6, v7}, Lbb;-><init>(Landroid/view/View;Landroid/view/ViewGroup;Lbf;Ldl;)V

    invoke-virtual {v9, v14}, Lexj;->a(Ladj;)V

    :goto_28
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_26

    :cond_58
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v1

    const/4 v11, 0x0

    :goto_29
    if-ge v11, v1, :cond_59

    move-object/from16 v3, v22

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ldl;

    invoke-static {v5}, Ldm;->h(Ldl;)V

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v22, v3

    goto :goto_29

    :cond_59
    move-object/from16 v3, v22

    invoke-interface {v3}, Ljava/util/List;->clear()V

    const/4 v1, 0x2

    invoke-static {v1}, Lcq;->S(I)Z

    move-result v1

    if-eqz v1, :cond_5a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Completed executing operations from "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v15, v21

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v13, v35

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_5a
    const/4 v1, 0x0

    iput-boolean v1, v4, Ldm;->d:Z

    goto :goto_2a

    :catchall_0
    move-exception v0

    move-object/from16 v4, p0

    goto :goto_2b

    :cond_5b
    move-object v4, v1

    :goto_2a
    monitor-exit v2

    return-void

    :catchall_1
    move-exception v0

    move-object v4, v1

    :goto_2b
    move-object v1, v0

    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v1

    :catchall_2
    move-exception v0

    goto :goto_2b

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final d()V
    .locals 8

    iget-object v0, p0, Ldm;->a:Landroid/view/ViewGroup;

    invoke-static {v0}, Lafe;->e(Landroid/view/View;)Z

    move-result v0

    iget-object v1, p0, Ldm;->b:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Ldm;->l()V

    iget-object v2, p0, Ldm;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldl;

    invoke-virtual {v3}, Ldl;->b()V

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Ldm;->c:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldl;

    invoke-static {v4}, Lcq;->S(I)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SpecialEffectsController: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    const-string v5, ""

    goto :goto_2

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Container "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Ldm;->a:Landroid/view/ViewGroup;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " is not attached to window. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Cancelling running operation "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v3}, Ldl;->d()V

    goto :goto_1

    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Ldm;->b:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldl;

    invoke-static {v4}, Lcq;->S(I)Z

    move-result v5

    if-eqz v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SpecialEffectsController: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_4

    const-string v6, ""

    goto :goto_4

    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Container "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Ldm;->a:Landroid/view/ViewGroup;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " is not attached to window. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_4
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "Cancelling pending operation "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v3}, Ldl;->d()V

    goto :goto_3

    :cond_6
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method

.method final e()V
    .locals 7

    iget-object v0, p0, Ldm;->b:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Ldm;->l()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Ldm;->e:Z

    iget-object v2, p0, Ldm;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_2

    iget-object v3, p0, Ldm;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldl;

    iget-object v4, v3, Ldl;->a:Lbw;

    iget-object v4, v4, Lbw;->N:Landroid/view/View;

    invoke-static {v4}, Ldp;->t(Landroid/view/View;)I

    move-result v4

    iget v5, v3, Ldl;->e:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    if-eq v4, v6, :cond_1

    iget-object v2, v3, Ldl;->a:Lbw;

    iget-object v2, v2, Lbw;->Q:Lbs;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v1, v2, Lbs;->s:Z

    :goto_1
    iput-boolean v1, p0, Ldm;->e:Z

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    :goto_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method

.method public final f(Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 4

    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0}, Laft;->c(Landroid/view/ViewGroup;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0, p1, v2}, Ldm;->f(Ljava/util/ArrayList;Landroid/view/View;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_3
    return-void
.end method

.method public final g(Ljava/util/Map;Landroid/view/View;)V
    .locals 4

    invoke-static {p2}, Lafh;->h(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0, p1, v2}, Ldm;->g(Ljava/util/Map;Landroid/view/View;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final k(IILjea;)V
    .locals 8

    iget-object v0, p0, Ldm;->b:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    new-instance v5, Lexj;

    const/4 v1, 0x0

    invoke-direct {v5, v1}, Lexj;-><init>([B)V

    iget-object v1, p3, Ljea;->c:Ljava/lang/Object;

    check-cast v1, Lbw;

    invoke-virtual {p0, v1}, Ldm;->a(Lbw;)Ldl;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, p2}, Ldl;->e(II)V

    monitor-exit v0

    return-void

    :cond_0
    new-instance v7, Ldk;

    const/4 v6, 0x0

    move-object v1, v7

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Ldk;-><init>(IILjea;Lexj;[B)V

    iget-object p1, p0, Ldm;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Lbd;

    const/4 p2, 0x3

    invoke-direct {p1, p0, v7, p2}, Lbd;-><init>(Ldm;Ldk;I)V

    invoke-virtual {v7, p1}, Ldl;->c(Ljava/lang/Runnable;)V

    new-instance p1, Lbd;

    const/4 p2, 0x4

    invoke-direct {p1, p0, v7, p2}, Lbd;-><init>(Ldm;Ldk;I)V

    invoke-virtual {v7, p1}, Ldl;->c(Ljava/lang/Runnable;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
