.class final Luv;
.super Loln;

# interfaces
.implements Lomo;


# annotations
.annotation runtime Lolj;
    b = "androidx.camera.camera2.pipe.compat.VirtualCameraManager$requestLoop$2"
    c = "VirtualCameraManager.kt"
    d = "invokeSuspend"
    e = {
        0x62,
        0x6d,
        0x81,
        0xae,
        0xb7,
        0xc3
    }
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field c:I

.field final synthetic d:Ldqx;

.field private synthetic e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ldqx;Loku;[B[B[B)V
    .locals 0

    iput-object p1, p0, Luv;->d:Ldqx;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Loln;-><init>(ILoku;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lopu;

    check-cast p2, Loku;

    invoke-virtual {p0, p1, p2}, Lolf;->c(Ljava/lang/Object;Loku;)Loku;

    move-result-object p1

    sget-object p2, Lojk;->a:Lojk;

    check-cast p1, Luv;

    invoke-virtual {p1, p2}, Luv;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v1, p0

    sget-object v0, Lolc;->a:Lolc;

    iget v2, v1, Luv;->c:I

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch v2, :pswitch_data_0

    iget-object v2, v1, Luv;->b:Ljava/lang/Object;

    check-cast v2, Ljn;

    iget-object v6, v1, Luv;->a:Ljava/lang/Object;

    iget-object v7, v1, Luv;->e:Ljava/lang/Object;

    check-cast v7, Lopu;

    invoke-static/range {p1 .. p1}, Lljr;->aO(Ljava/lang/Object;)V

    move-object v8, v1

    move-object/from16 v17, v6

    move-object v6, v2

    move-object/from16 v2, v17

    goto :goto_0

    :pswitch_0
    iget-object v2, v1, Luv;->b:Ljava/lang/Object;

    check-cast v2, Ljn;

    iget-object v6, v1, Luv;->a:Ljava/lang/Object;

    iget-object v7, v1, Luv;->e:Ljava/lang/Object;

    check-cast v7, Lopu;

    invoke-static/range {p1 .. p1}, Lljr;->aO(Ljava/lang/Object;)V

    move-object v9, v1

    move-object v8, v7

    move-object/from16 v7, p1

    goto/16 :goto_d

    :pswitch_1
    iget-object v2, v1, Luv;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    iget-object v6, v1, Luv;->a:Ljava/lang/Object;

    iget-object v7, v1, Luv;->e:Ljava/lang/Object;

    check-cast v7, Lopu;

    invoke-static/range {p1 .. p1}, Lljr;->aO(Ljava/lang/Object;)V

    move-object v8, v1

    goto/16 :goto_b

    :pswitch_2
    iget-object v2, v1, Luv;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    iget-object v6, v1, Luv;->a:Ljava/lang/Object;

    iget-object v7, v1, Luv;->e:Ljava/lang/Object;

    check-cast v7, Lopu;

    invoke-static/range {p1 .. p1}, Lljr;->aO(Ljava/lang/Object;)V

    move-object v8, v1

    goto/16 :goto_8

    :pswitch_3
    iget-object v2, v1, Luv;->a:Ljava/lang/Object;

    iget-object v6, v1, Luv;->e:Ljava/lang/Object;

    check-cast v6, Lopu;

    invoke-static/range {p1 .. p1}, Lljr;->aO(Ljava/lang/Object;)V

    move-object v8, v1

    goto :goto_1

    :pswitch_4
    iget-object v2, v1, Luv;->a:Ljava/lang/Object;

    iget-object v6, v1, Luv;->e:Ljava/lang/Object;

    check-cast v6, Lopu;

    invoke-static/range {p1 .. p1}, Lljr;->aO(Ljava/lang/Object;)V

    move-object v8, v1

    goto :goto_2

    :pswitch_5
    invoke-static/range {p1 .. p1}, Lljr;->aO(Ljava/lang/Object;)V

    iget-object v2, v1, Luv;->e:Ljava/lang/Object;

    move-object v6, v2

    check-cast v6, Lopu;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v1

    goto :goto_1

    :goto_0
    move-object v9, v2

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-object v6, v7

    :cond_0
    :goto_1
    iget-object v7, v8, Luv;->d:Ldqx;

    iput-object v6, v8, Luv;->e:Ljava/lang/Object;

    iput-object v2, v8, Luv;->a:Ljava/lang/Object;

    iput-object v5, v8, Luv;->b:Ljava/lang/Object;

    iput v4, v8, Luv;->c:I

    invoke-virtual {v7, v2, v8}, Ldqx;->e(Ljava/util/List;Loku;)Ljava/lang/Object;

    move-result-object v7

    if-eq v7, v0, :cond_22

    :goto_2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Ljn;

    instance-of v10, v10, Lue;

    if-eqz v10, :cond_1

    goto :goto_3

    :cond_2
    move-object v9, v5

    :goto_3
    instance-of v7, v9, Lue;

    if-eqz v7, :cond_3

    check-cast v9, Lue;

    goto :goto_4

    :cond_3
    move-object v9, v5

    :goto_4
    if-eqz v9, :cond_5

    move-object v7, v2

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v7, v8, Luv;->d:Ldqx;

    iget-object v7, v7, Ldqx;->e:Ljava/lang/Object;

    iget-object v10, v9, Lue;->a:Landroidx/wear/ambient/AmbientDelegate;

    invoke-interface {v7, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, v8, Luv;->d:Ldqx;

    iget-object v7, v7, Ldqx;->e:Ljava/lang/Object;

    iget-object v10, v9, Lue;->a:Landroidx/wear/ambient/AmbientDelegate;

    invoke-interface {v7, v10}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_4
    new-instance v7, Lus;

    invoke-direct {v7, v9, v5}, Lus;-><init>(Lue;Loku;)V

    invoke-static {v6, v5, v7, v3}, Lone;->j(Lopu;Lola;Lomo;I)Lora;

    iget-object v7, v9, Lue;->a:Landroidx/wear/ambient/AmbientDelegate;

    iput-object v6, v8, Luv;->e:Ljava/lang/Object;

    iput-object v2, v8, Luv;->a:Ljava/lang/Object;

    const/4 v9, 0x2

    iput v9, v8, Luv;->c:I

    invoke-virtual {v7, v8}, Landroidx/wear/ambient/AmbientDelegate;->i(Loku;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v0, :cond_0

    return-object v0

    :cond_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    invoke-interface {v2, v7}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v7

    :cond_6
    invoke-interface {v7}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v7}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljn;

    instance-of v9, v9, Luf;

    if-eqz v9, :cond_6

    invoke-interface {v7}, Ljava/util/ListIterator;->nextIndex()I

    move-result v7

    goto :goto_5

    :cond_7
    const/4 v7, -0x1

    :goto_5
    const/4 v9, 0x0

    if-ltz v7, :cond_d

    const/4 v10, 0x0

    :goto_6
    move-object v11, v2

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v12, Ljn;

    instance-of v13, v12, Lug;

    if-eqz v13, :cond_8

    check-cast v12, Lug;

    iget-object v12, v12, Lug;->a:Luz;

    invoke-static {v12}, Lld;->c(Luk;)V

    :cond_8
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    if-eq v10, v7, :cond_9

    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_9
    iget-object v7, v8, Luv;->d:Ldqx;

    iget-object v7, v7, Ldqx;->e:Ljava/lang/Object;

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/wear/ambient/AmbientDelegate;

    new-instance v10, Lut;

    invoke-direct {v10, v9, v5, v5}, Lut;-><init>(Landroidx/wear/ambient/AmbientDelegate;Loku;[B)V

    invoke-static {v6, v5, v10, v3}, Lone;->j(Lopu;Lola;Lomo;I)Lora;

    goto :goto_7

    :cond_a
    iget-object v7, v8, Luv;->d:Ldqx;

    iget-object v7, v7, Ldqx;->e:Ljava/lang/Object;

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object/from16 v17, v6

    move-object v6, v2

    move-object v2, v7

    move-object/from16 v7, v17

    :cond_b
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/wear/ambient/AmbientDelegate;

    iput-object v7, v8, Luv;->e:Ljava/lang/Object;

    iput-object v6, v8, Luv;->a:Ljava/lang/Object;

    iput-object v2, v8, Luv;->b:Ljava/lang/Object;

    iput v3, v8, Luv;->c:I

    invoke-virtual {v9, v8}, Landroidx/wear/ambient/AmbientDelegate;->i(Loku;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v0, :cond_b

    return-object v0

    :cond_c
    iget-object v2, v8, Luv;->d:Ldqx;

    iget-object v2, v2, Ldqx;->e:Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    move-object v2, v6

    move-object v6, v7

    goto/16 :goto_1

    :cond_d
    move-object v7, v2

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v9, Ljn;

    instance-of v10, v9, Lug;

    if-eqz v10, :cond_21

    move-object v10, v9

    check-cast v10, Lug;

    iget-object v11, v10, Lug;->a:Luz;

    invoke-virtual {v11}, Luz;->b()Ljo;

    move-result-object v11

    instance-of v11, v11, Lts;

    if-nez v11, :cond_e

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_e
    iget-object v7, v10, Lug;->a:Luz;

    iget-object v7, v7, Luz;->a:Ljava/lang/String;

    iget-object v11, v8, Luv;->d:Ldqx;

    iget-object v11, v11, Ldqx;->e:Ljava/lang/Object;

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_f
    :goto_9
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_10

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    move-object v14, v13

    check-cast v14, Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {v14}, Landroidx/wear/ambient/AmbientDelegate;->j()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v7}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    xor-int/2addr v14, v4

    if-eqz v14, :cond_f

    invoke-interface {v12, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_10
    invoke-interface {v12}, Ljava/util/Collection;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_14

    iget-object v7, v8, Luv;->d:Ldqx;

    iget-object v7, v7, Ldqx;->e:Ljava/lang/Object;

    invoke-interface {v7, v12}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_11

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/wear/ambient/AmbientDelegate;

    new-instance v10, Luu;

    invoke-direct {v10, v9, v5, v5}, Luu;-><init>(Landroidx/wear/ambient/AmbientDelegate;Loku;[B)V

    invoke-static {v6, v5, v10, v3}, Lone;->j(Lopu;Lola;Lomo;I)Lora;

    goto :goto_a

    :cond_11
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object/from16 v17, v6

    move-object v6, v2

    move-object v2, v7

    move-object/from16 v7, v17

    :cond_12
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/wear/ambient/AmbientDelegate;

    iput-object v7, v8, Luv;->e:Ljava/lang/Object;

    iput-object v6, v8, Luv;->a:Ljava/lang/Object;

    iput-object v2, v8, Luv;->b:Ljava/lang/Object;

    const/4 v10, 0x4

    iput v10, v8, Luv;->c:I

    invoke-virtual {v9, v8}, Landroidx/wear/ambient/AmbientDelegate;->i(Loku;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v0, :cond_12

    return-object v0

    :cond_13
    move-object v2, v6

    move-object v6, v7

    goto/16 :goto_1

    :cond_14
    iget-object v11, v8, Luv;->d:Ldqx;

    iget-object v11, v11, Ldqx;->e:Ljava/lang/Object;

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_15
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_16

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object v13, v12

    check-cast v13, Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {v13}, Landroidx/wear/ambient/AmbientDelegate;->j()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v7}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_15

    goto :goto_c

    :cond_16
    move-object v12, v5

    :goto_c
    check-cast v12, Landroidx/wear/ambient/AmbientDelegate;

    if-nez v12, :cond_19

    iget-object v11, v8, Luv;->d:Ldqx;

    iget-object v10, v10, Lug;->b:Lvy;

    iput-object v6, v8, Luv;->e:Ljava/lang/Object;

    iput-object v2, v8, Luv;->a:Ljava/lang/Object;

    iput-object v9, v8, Luv;->b:Ljava/lang/Object;

    const/4 v12, 0x5

    iput v12, v8, Luv;->c:I

    invoke-virtual {v11, v7, v10, v6, v8}, Ldqx;->d(Ljava/lang/String;Lvy;Lopu;Loku;)Ljava/lang/Object;

    move-result-object v7

    if-eq v7, v0, :cond_18

    move-object/from16 v17, v6

    move-object v6, v2

    move-object v2, v9

    move-object v9, v8

    move-object/from16 v8, v17

    :goto_d
    check-cast v7, Lup;

    iget-object v10, v7, Lup;->b:Landroidx/wear/ambient/AmbientDelegate;

    if-eqz v10, :cond_17

    iget-object v2, v9, Luv;->d:Ldqx;

    iget-object v2, v2, Ldqx;->e:Ljava/lang/Object;

    invoke-interface {v2, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_17
    move-object v10, v2

    check-cast v10, Lug;

    iget-object v10, v10, Lug;->a:Luz;

    iget-object v7, v7, Lup;->a:Lqy;

    invoke-virtual {v10, v7}, Luz;->a(Lqy;)V

    move-object v7, v6

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_e
    move-object v2, v6

    move-object v6, v8

    move-object v8, v9

    goto/16 :goto_1

    :cond_18
    return-object v0

    :cond_19
    iget-object v11, v10, Lug;->a:Luz;

    iput-object v6, v8, Luv;->e:Ljava/lang/Object;

    iput-object v2, v8, Luv;->a:Ljava/lang/Object;

    iput-object v9, v8, Luv;->b:Ljava/lang/Object;

    const/4 v7, 0x6

    iput v7, v8, Luv;->c:I

    iget-object v7, v12, Landroidx/wear/ambient/AmbientDelegate;->c:Ljava/lang/Object;

    move-object v10, v7

    check-cast v10, Lvr;

    iget-object v13, v10, Lvr;->b:Ljava/lang/Object;

    monitor-enter v13

    :try_start_0
    move-object v14, v7

    check-cast v14, Lvr;

    iget-boolean v14, v14, Lvr;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v14, :cond_1a

    monitor-exit v13

    move-object v7, v5

    goto :goto_f

    :cond_1a
    :try_start_1
    move-object v14, v7

    check-cast v14, Lvr;

    iget v14, v14, Lvr;->c:I

    add-int/2addr v14, v4

    move-object v15, v7

    check-cast v15, Lvr;

    iput v14, v15, Lvr;->c:I

    if-ne v14, v4, :cond_1c

    move-object v14, v7

    check-cast v14, Lvr;

    iget-object v14, v14, Lvr;->d:Lora;

    if-eqz v14, :cond_1b

    invoke-static {v14}, Lopx;->k(Lora;)V

    :cond_1b
    check-cast v7, Lvr;

    iput-object v5, v7, Lvr;->d:Lora;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1c
    monitor-exit v13

    new-instance v7, Lapp;

    invoke-direct {v7, v10}, Lapp;-><init>(Lvr;)V

    :goto_f
    iget-object v10, v12, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    iput-object v11, v12, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    if-eqz v10, :cond_1d

    invoke-static {v10}, Lld;->c(Luk;)V

    :cond_1d
    iget-object v10, v12, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    check-cast v10, Lsj;

    iget-object v13, v10, Lsj;->b:Louo;

    new-instance v15, Luy;

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object v10, v15

    move-object v12, v7

    move-object v7, v15

    move-object/from16 v15, v16

    invoke-direct/range {v10 .. v15}, Luy;-><init>(Luz;Lapp;Lott;Loku;[B)V

    invoke-static {v7, v8}, Lopx;->d(Lomo;Loku;)Ljava/lang/Object;

    move-result-object v7

    sget-object v10, Lolc;->a:Lolc;

    if-eq v7, v10, :cond_1e

    sget-object v7, Lojk;->a:Lojk;

    :cond_1e
    if-eq v7, v10, :cond_1f

    sget-object v7, Lojk;->a:Lojk;

    :cond_1f
    if-eq v7, v0, :cond_20

    move-object v7, v6

    move-object v6, v9

    goto/16 :goto_0

    :cond_20
    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v13

    throw v0

    :cond_21
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Check failed."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Ljava/lang/Object;Loku;)Loku;
    .locals 7

    new-instance v6, Luv;

    iget-object v1, p0, Luv;->d:Ldqx;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Luv;-><init>(Ldqx;Loku;[B[B[B)V

    iput-object p1, v6, Luv;->e:Ljava/lang/Object;

    return-object v6
.end method
