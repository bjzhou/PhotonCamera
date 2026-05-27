.class public final Lcq;
.super Ljava/lang/Object;


# instance fields
.field private final A:Ljava/util/Map;

.field private final B:Laea;

.field private final C:Laea;

.field private final D:Laea;

.field private final E:Laea;

.field private final F:Lcd;

.field private G:Z

.field private H:Ljava/util/ArrayList;

.field private I:Ljava/util/ArrayList;

.field private J:Ljava/util/ArrayList;

.field private final K:Ljava/lang/Runnable;

.field private final L:Ld;

.field private final M:Landroidx/wear/ambient/AmbientMode$AmbientController;

.field public final a:Lcv;

.field b:Ljava/util/ArrayList;

.field public final c:Lcf;

.field public d:Lpr;

.field public final e:Lpn;

.field public final f:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final g:Ljava/util/concurrent/CopyOnWriteArrayList;

.field h:I

.field public i:Lce;

.field public j:Lcb;

.field public k:Lbw;

.field l:Lbw;

.field public m:Lpx;

.field public n:Lpx;

.field public o:Lpx;

.field p:Ljava/util/ArrayDeque;

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:Lcs;

.field public final v:Lbby;

.field private final w:Ljava/util/ArrayList;

.field private x:Z

.field private y:Ljava/util/ArrayList;

.field private final z:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcq;->w:Ljava/util/ArrayList;

    new-instance v0, Lcv;

    invoke-direct {v0}, Lcv;-><init>()V

    iput-object v0, p0, Lcq;->a:Lcv;

    new-instance v0, Lcf;

    invoke-direct {v0, p0}, Lcf;-><init>(Lcq;)V

    iput-object v0, p0, Lcq;->c:Lcf;

    new-instance v0, Lci;

    invoke-direct {v0, p0}, Lci;-><init>(Lcq;)V

    iput-object v0, p0, Lcq;->e:Lpn;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcq;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Lj$/util/DesugarCollections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcq;->z:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Lj$/util/DesugarCollections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcq;->A:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Lj$/util/DesugarCollections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    new-instance v0, Lbby;

    invoke-direct {v0, p0}, Lbby;-><init>(Lcq;)V

    iput-object v0, p0, Lcq;->v:Lbby;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcq;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Lbx;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lbx;-><init>(Lcq;I)V

    iput-object v0, p0, Lcq;->B:Laea;

    new-instance v0, Lbx;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lbx;-><init>(Lcq;I)V

    iput-object v0, p0, Lcq;->C:Laea;

    new-instance v0, Lbx;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lbx;-><init>(Lcq;I)V

    iput-object v0, p0, Lcq;->D:Laea;

    new-instance v0, Lbx;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lbx;-><init>(Lcq;I)V

    iput-object v0, p0, Lcq;->E:Laea;

    new-instance v0, Landroidx/wear/ambient/AmbientMode$AmbientController;

    invoke-direct {v0, p0}, Landroidx/wear/ambient/AmbientMode$AmbientController;-><init>(Lcq;)V

    iput-object v0, p0, Lcq;->M:Landroidx/wear/ambient/AmbientMode$AmbientController;

    const/4 v0, -0x1

    iput v0, p0, Lcq;->h:I

    new-instance v0, Lcj;

    invoke-direct {v0, p0}, Lcj;-><init>(Lcq;)V

    iput-object v0, p0, Lcq;->F:Lcd;

    new-instance v0, Ld;

    invoke-direct {v0}, Ld;-><init>()V

    iput-object v0, p0, Lcq;->L:Ld;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcq;->p:Ljava/util/ArrayDeque;

    new-instance v0, Lbe;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Lbe;-><init>(Lcq;I)V

    iput-object v0, p0, Lcq;->K:Ljava/lang/Runnable;

    return-void
.end method

.method public static S(I)Z
    .locals 1

    const-string v0, "FragmentManager"

    invoke-static {v0, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final X(Lbw;)Z
    .locals 3

    iget-boolean v0, p0, Lbw;->J:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lbw;->K:Z

    if-nez v0, :cond_3

    :cond_0
    iget-object p0, p0, Lbw;->A:Lcq;

    iget-object p0, p0, Lcq;->a:Lcv;

    invoke-virtual {p0}, Lcv;->e()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbw;

    if-eqz v2, :cond_2

    invoke-static {v2}, Lcq;->X(Lbw;)Z

    move-result v1

    :cond_2
    if-eqz v1, :cond_1

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    return v0
.end method

.method static final Y(Lbw;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget-boolean v1, p0, Lbw;->K:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lbw;->y:Lcq;

    if-eqz v1, :cond_3

    iget-object p0, p0, Lbw;->B:Lbw;

    invoke-static {p0}, Lcq;->Y(Lbw;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    :cond_3
    return v0
.end method

.method static final aa(Lbw;)V
    .locals 2

    const/4 v0, 0x2

    invoke-static {v0}, Lcq;->S(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "show: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    iget-boolean v0, p0, Lbw;->F:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbw;->F:Z

    iget-boolean v0, p0, Lbw;->S:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lbw;->S:Z

    :cond_1
    return-void
.end method

.method private final ag(Lbw;)Landroid/view/ViewGroup;
    .locals 2

    iget-object v0, p1, Lbw;->M:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget v0, p1, Lbw;->D:I

    const/4 v1, 0x0

    if-gtz v0, :cond_1

    return-object v1

    :cond_1
    iget-object v0, p0, Lcq;->j:Lcb;

    invoke-virtual {v0}, Lcb;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcq;->j:Lcb;

    iget p1, p1, Lbw;->D:I

    invoke-virtual {v0, p1}, Lcb;->a(I)Landroid/view/View;

    move-result-object p1

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/view/ViewGroup;

    return-object p1

    :cond_2
    return-object v1
.end method

.method private final ah()Ljava/util/Set;
    .locals 3

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcq;->a:Lcv;

    invoke-virtual {v1}, Lcv;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljea;

    iget-object v2, v2, Ljea;->c:Ljava/lang/Object;

    check-cast v2, Lbw;

    iget-object v2, v2, Lbw;->M:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcq;->af()Ld;

    invoke-static {v2}, Ldm;->i(Landroid/view/ViewGroup;)Ldm;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private final ai()V
    .locals 2

    invoke-virtual {p0}, Lcq;->V()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not perform this action after onSaveInstanceState"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final aj()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcq;->x:Z

    iget-object v0, p0, Lcq;->I:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcq;->H:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private final ak()V
    .locals 1

    iget-boolean v0, p0, Lcq;->G:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcq;->G:Z

    invoke-direct {p0}, Lcq;->aq()V

    :cond_0
    return-void
.end method

.method private final al()V
    .locals 2

    invoke-direct {p0}, Lcq;->ah()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldm;

    invoke-virtual {v1}, Ldm;->d()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final am(Z)V
    .locals 2

    iget-boolean v0, p0, Lcq;->x:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcq;->i:Lce;

    if-nez v0, :cond_1

    iget-boolean p1, p0, Lcq;->t:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "FragmentManager has been destroyed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "FragmentManager has not been attached to a host."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcq;->i:Lce;

    iget-object v1, v1, Lce;->d:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_4

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcq;->ai()V

    :cond_2
    iget-object p1, p0, Lcq;->H:Ljava/util/ArrayList;

    if-nez p1, :cond_3

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcq;->H:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcq;->I:Ljava/util/ArrayList;

    return-void

    :cond_3
    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Must be called from main thread of fragment host"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "FragmentManager is already executing transactions"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final an(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    move/from16 v4, p3

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lau;

    iget-boolean v5, v5, Lau;->s:Z

    iget-object v6, v0, Lcq;->J:Ljava/util/ArrayList;

    if-nez v6, :cond_0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v0, Lcq;->J:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    :goto_0
    iget-object v6, v0, Lcq;->J:Ljava/util/ArrayList;

    iget-object v7, v0, Lcq;->a:Lcv;

    invoke-virtual {v7}, Lcv;->f()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v6, v0, Lcq;->l:Lbw;

    move v8, v4

    const/4 v9, 0x0

    :goto_1
    const/4 v10, 0x0

    if-ge v8, v3, :cond_b

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lau;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-nez v14, :cond_7

    iget-object v14, v0, Lcq;->J:Ljava/util/ArrayList;

    const/4 v15, 0x0

    :goto_2
    iget-object v7, v13, Lau;->d:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v15, v7, :cond_8

    iget-object v7, v13, Lau;->d:Ljava/util/ArrayList;

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcw;

    iget v11, v7, Lcw;->a:I

    const/16 v12, 0x9

    packed-switch v11, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_6

    :pswitch_1
    iget-object v11, v13, Lau;->d:Ljava/util/ArrayList;

    new-instance v4, Lcw;

    invoke-direct {v4, v12, v6, v10}, Lcw;-><init>(ILbw;[B)V

    invoke-virtual {v11, v15, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v4, 0x1

    iput-boolean v4, v7, Lcw;->c:Z

    iget-object v4, v7, Lcw;->b:Lbw;

    add-int/lit8 v15, v15, 0x1

    move-object v6, v4

    goto/16 :goto_6

    :pswitch_2
    iget-object v4, v7, Lcw;->b:Lbw;

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v4, v7, Lcw;->b:Lbw;

    if-ne v4, v6, :cond_6

    iget-object v6, v13, Lau;->d:Ljava/util/ArrayList;

    new-instance v7, Lcw;

    invoke-direct {v7, v12, v4}, Lcw;-><init>(ILbw;)V

    invoke-virtual {v6, v15, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v15, v15, 0x1

    move-object v6, v10

    goto/16 :goto_6

    :pswitch_3
    iget-object v4, v7, Lcw;->b:Lbw;

    iget v11, v4, Lbw;->D:I

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v17

    const/16 v16, -0x1

    add-int/lit8 v17, v17, -0x1

    move/from16 v10, v17

    const/16 v17, 0x0

    :goto_3
    if-ltz v10, :cond_4

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v12, v18

    check-cast v12, Lbw;

    iget v2, v12, Lbw;->D:I

    if-ne v2, v11, :cond_3

    if-ne v12, v4, :cond_1

    move/from16 v18, v11

    const/16 v17, 0x1

    goto :goto_5

    :cond_1
    if-ne v12, v6, :cond_2

    iget-object v2, v13, Lau;->d:Ljava/util/ArrayList;

    new-instance v6, Lcw;

    move/from16 v18, v11

    const/4 v1, 0x0

    const/16 v11, 0x9

    invoke-direct {v6, v11, v12, v1}, Lcw;-><init>(ILbw;[B)V

    invoke-virtual {v2, v15, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v15, v15, 0x1

    move-object v6, v1

    goto :goto_4

    :cond_2
    move/from16 v18, v11

    const/4 v1, 0x0

    const/16 v11, 0x9

    :goto_4
    new-instance v2, Lcw;

    const/4 v11, 0x3

    invoke-direct {v2, v11, v12, v1}, Lcw;-><init>(ILbw;[B)V

    iget v1, v7, Lcw;->d:I

    iput v1, v2, Lcw;->d:I

    iget v1, v7, Lcw;->f:I

    iput v1, v2, Lcw;->f:I

    iget v1, v7, Lcw;->e:I

    iput v1, v2, Lcw;->e:I

    iget v1, v7, Lcw;->g:I

    iput v1, v2, Lcw;->g:I

    iget-object v1, v13, Lau;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v15, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    add-int/2addr v15, v1

    goto :goto_5

    :cond_3
    move/from16 v18, v11

    :goto_5
    add-int/lit8 v10, v10, -0x1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v11, v18

    const/16 v12, 0x9

    goto :goto_3

    :cond_4
    if-eqz v17, :cond_5

    iget-object v1, v13, Lau;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v15, v15, -0x1

    goto :goto_6

    :cond_5
    const/4 v1, 0x1

    iput v1, v7, Lcw;->a:I

    iput-boolean v1, v7, Lcw;->c:Z

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :pswitch_4
    iget-object v1, v7, Lcw;->b:Lbw;

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_6
    const/4 v1, 0x1

    add-int/2addr v15, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v4, p3

    const/4 v10, 0x0

    goto/16 :goto_2

    :cond_7
    iget-object v1, v0, Lcq;->J:Ljava/util/ArrayList;

    iget-object v2, v13, Lau;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, -0x1

    add-int/2addr v2, v4

    :goto_7
    if-ltz v2, :cond_8

    iget-object v4, v13, Lau;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcw;

    iget v7, v4, Lcw;->a:I

    packed-switch v7, :pswitch_data_1

    :pswitch_5
    goto :goto_8

    :pswitch_6
    iget-object v7, v4, Lcw;->h:Lakr;

    iput-object v7, v4, Lcw;->i:Lakr;

    goto :goto_8

    :pswitch_7
    iget-object v4, v4, Lcw;->b:Lbw;

    move-object v6, v4

    goto :goto_8

    :pswitch_8
    const/4 v6, 0x0

    goto :goto_8

    :pswitch_9
    iget-object v4, v4, Lcw;->b:Lbw;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :pswitch_a
    iget-object v4, v4, Lcw;->b:Lbw;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_8
    add-int/lit8 v2, v2, -0x1

    goto :goto_7

    :cond_8
    if-nez v9, :cond_a

    iget-boolean v1, v13, Lau;->j:Z

    if-eqz v1, :cond_9

    goto :goto_9

    :cond_9
    const/4 v9, 0x0

    goto :goto_a

    :cond_a
    :goto_9
    const/4 v9, 0x1

    :goto_a
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v4, p3

    goto/16 :goto_1

    :cond_b
    iget-object v1, v0, Lcq;->J:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    if-nez v5, :cond_e

    iget v1, v0, Lcq;->h:I

    if-lez v1, :cond_e

    move/from16 v1, p3

    :goto_b
    if-ge v1, v3, :cond_e

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lau;

    iget-object v4, v4, Lau;->d:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_c
    if-ge v6, v5, :cond_d

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcw;

    iget-object v7, v7, Lcw;->b:Lbw;

    if-eqz v7, :cond_c

    iget-object v8, v7, Lbw;->y:Lcq;

    if-eqz v8, :cond_c

    invoke-virtual {v0, v7}, Lcq;->ad(Lbw;)Ljea;

    move-result-object v7

    iget-object v8, v0, Lcq;->a:Lcv;

    invoke-virtual {v8, v7}, Lcv;->l(Ljea;)V

    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_e
    move-object/from16 v2, p1

    move/from16 v1, p3

    :goto_d
    if-ge v1, v3, :cond_14

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lau;

    move-object/from16 v5, p2

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const-string v7, "Unknown cmd: "

    if-eqz v6, :cond_11

    const/4 v6, -0x1

    invoke-virtual {v4, v6}, Lau;->a(I)V

    iget-object v8, v4, Lau;->d:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/2addr v8, v6

    :goto_e
    if-ltz v8, :cond_10

    iget-object v6, v4, Lau;->d:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcw;

    iget-object v9, v6, Lcw;->b:Lbw;

    if-eqz v9, :cond_f

    const/4 v10, 0x0

    iput-boolean v10, v9, Lbw;->s:Z

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lbw;->t(Z)V

    iget v10, v4, Lau;->i:I

    sparse-switch v10, :sswitch_data_0

    const/4 v10, 0x0

    goto :goto_f

    :sswitch_0
    const/16 v10, 0x1004

    goto :goto_f

    :sswitch_1
    const/16 v10, 0x1001

    goto :goto_f

    :sswitch_2
    const/16 v10, 0x2005

    goto :goto_f

    :sswitch_3
    const/16 v10, 0x1003

    goto :goto_f

    :sswitch_4
    const/16 v10, 0x2002

    :goto_f
    invoke-virtual {v9, v10}, Lbw;->s(I)V

    iget-object v10, v4, Lau;->r:Ljava/util/ArrayList;

    iget-object v11, v4, Lau;->q:Ljava/util/ArrayList;

    invoke-virtual {v9, v10, v11}, Lbw;->u(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_f
    iget v10, v6, Lcw;->a:I

    packed-switch v10, :pswitch_data_2

    :pswitch_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v6, Lcw;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_c
    iget-object v10, v4, Lau;->a:Lcq;

    iget-object v6, v6, Lcw;->h:Lakr;

    invoke-virtual {v10, v9, v6}, Lcq;->L(Lbw;Lakr;)V

    goto/16 :goto_10

    :pswitch_d
    iget-object v6, v4, Lau;->a:Lcq;

    invoke-virtual {v6, v9}, Lcq;->M(Lbw;)V

    goto/16 :goto_10

    :pswitch_e
    iget-object v6, v4, Lau;->a:Lcq;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcq;->M(Lbw;)V

    goto/16 :goto_10

    :pswitch_f
    iget v10, v6, Lcw;->d:I

    iget v11, v6, Lcw;->e:I

    iget v12, v6, Lcw;->f:I

    iget v6, v6, Lcw;->g:I

    invoke-virtual {v9, v10, v11, v12, v6}, Lbw;->q(IIII)V

    iget-object v6, v4, Lau;->a:Lcq;

    const/4 v10, 0x1

    invoke-virtual {v6, v9, v10}, Lcq;->K(Lbw;Z)V

    iget-object v6, v4, Lau;->a:Lcq;

    invoke-virtual {v6, v9}, Lcq;->m(Lbw;)V

    goto :goto_10

    :pswitch_10
    iget v10, v6, Lcw;->d:I

    iget v11, v6, Lcw;->e:I

    iget v12, v6, Lcw;->f:I

    iget v6, v6, Lcw;->g:I

    invoke-virtual {v9, v10, v11, v12, v6}, Lbw;->q(IIII)V

    iget-object v6, v4, Lau;->a:Lcq;

    invoke-virtual {v6, v9}, Lcq;->l(Lbw;)V

    goto :goto_10

    :pswitch_11
    iget v10, v6, Lcw;->d:I

    iget v11, v6, Lcw;->e:I

    iget v12, v6, Lcw;->f:I

    iget v6, v6, Lcw;->g:I

    invoke-virtual {v9, v10, v11, v12, v6}, Lbw;->q(IIII)V

    iget-object v6, v4, Lau;->a:Lcq;

    const/4 v10, 0x1

    invoke-virtual {v6, v9, v10}, Lcq;->K(Lbw;Z)V

    iget-object v6, v4, Lau;->a:Lcq;

    invoke-virtual {v6, v9}, Lcq;->F(Lbw;)V

    goto :goto_10

    :pswitch_12
    iget v10, v6, Lcw;->d:I

    iget v11, v6, Lcw;->e:I

    iget v12, v6, Lcw;->f:I

    iget v6, v6, Lcw;->g:I

    invoke-virtual {v9, v10, v11, v12, v6}, Lbw;->q(IIII)V

    iget-object v6, v4, Lau;->a:Lcq;

    invoke-static {v9}, Lcq;->aa(Lbw;)V

    goto :goto_10

    :pswitch_13
    iget v10, v6, Lcw;->d:I

    iget v11, v6, Lcw;->e:I

    iget v12, v6, Lcw;->f:I

    iget v6, v6, Lcw;->g:I

    invoke-virtual {v9, v10, v11, v12, v6}, Lbw;->q(IIII)V

    iget-object v6, v4, Lau;->a:Lcq;

    invoke-virtual {v6, v9}, Lcq;->ac(Lbw;)Ljea;

    goto :goto_10

    :pswitch_14
    iget v10, v6, Lcw;->d:I

    iget v11, v6, Lcw;->e:I

    iget v12, v6, Lcw;->f:I

    iget v6, v6, Lcw;->g:I

    invoke-virtual {v9, v10, v11, v12, v6}, Lbw;->q(IIII)V

    iget-object v6, v4, Lau;->a:Lcq;

    const/4 v10, 0x1

    invoke-virtual {v6, v9, v10}, Lcq;->K(Lbw;Z)V

    iget-object v6, v4, Lau;->a:Lcq;

    invoke-virtual {v6, v9}, Lcq;->I(Lbw;)V

    :goto_10
    add-int/lit8 v8, v8, -0x1

    goto/16 :goto_e

    :cond_10
    const/4 v11, 0x0

    const/4 v12, 0x0

    goto/16 :goto_13

    :cond_11
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lau;->a(I)V

    iget-object v6, v4, Lau;->d:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v10, 0x0

    :goto_11
    if-ge v10, v6, :cond_13

    iget-object v8, v4, Lau;->d:Ljava/util/ArrayList;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcw;

    iget-object v9, v8, Lcw;->b:Lbw;

    if-eqz v9, :cond_12

    const/4 v11, 0x0

    iput-boolean v11, v9, Lbw;->s:Z

    invoke-virtual {v9, v11}, Lbw;->t(Z)V

    iget v11, v4, Lau;->i:I

    invoke-virtual {v9, v11}, Lbw;->s(I)V

    iget-object v11, v4, Lau;->q:Ljava/util/ArrayList;

    iget-object v12, v4, Lau;->r:Ljava/util/ArrayList;

    invoke-virtual {v9, v11, v12}, Lbw;->u(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_12
    iget v11, v8, Lcw;->a:I

    packed-switch v11, :pswitch_data_3

    :pswitch_15
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v8, Lcw;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_16
    iget-object v11, v4, Lau;->a:Lcq;

    iget-object v8, v8, Lcw;->i:Lakr;

    invoke-virtual {v11, v9, v8}, Lcq;->L(Lbw;Lakr;)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    goto/16 :goto_12

    :pswitch_17
    iget-object v8, v4, Lau;->a:Lcq;

    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Lcq;->M(Lbw;)V

    const/4 v12, 0x0

    goto/16 :goto_12

    :pswitch_18
    const/4 v11, 0x0

    iget-object v8, v4, Lau;->a:Lcq;

    invoke-virtual {v8, v9}, Lcq;->M(Lbw;)V

    const/4 v12, 0x0

    goto/16 :goto_12

    :pswitch_19
    const/4 v11, 0x0

    iget v12, v8, Lcw;->d:I

    iget v13, v8, Lcw;->e:I

    iget v14, v8, Lcw;->f:I

    iget v8, v8, Lcw;->g:I

    invoke-virtual {v9, v12, v13, v14, v8}, Lbw;->q(IIII)V

    iget-object v8, v4, Lau;->a:Lcq;

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v12}, Lcq;->K(Lbw;Z)V

    iget-object v8, v4, Lau;->a:Lcq;

    invoke-virtual {v8, v9}, Lcq;->l(Lbw;)V

    const/4 v12, 0x0

    goto :goto_12

    :pswitch_1a
    const/4 v11, 0x0

    iget v12, v8, Lcw;->d:I

    iget v13, v8, Lcw;->e:I

    iget v14, v8, Lcw;->f:I

    iget v8, v8, Lcw;->g:I

    invoke-virtual {v9, v12, v13, v14, v8}, Lbw;->q(IIII)V

    iget-object v8, v4, Lau;->a:Lcq;

    invoke-virtual {v8, v9}, Lcq;->m(Lbw;)V

    const/4 v12, 0x0

    goto :goto_12

    :pswitch_1b
    const/4 v11, 0x0

    iget v12, v8, Lcw;->d:I

    iget v13, v8, Lcw;->e:I

    iget v14, v8, Lcw;->f:I

    iget v8, v8, Lcw;->g:I

    invoke-virtual {v9, v12, v13, v14, v8}, Lbw;->q(IIII)V

    iget-object v8, v4, Lau;->a:Lcq;

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v12}, Lcq;->K(Lbw;Z)V

    iget-object v8, v4, Lau;->a:Lcq;

    invoke-static {v9}, Lcq;->aa(Lbw;)V

    const/4 v12, 0x0

    goto :goto_12

    :pswitch_1c
    const/4 v11, 0x0

    iget v12, v8, Lcw;->d:I

    iget v13, v8, Lcw;->e:I

    iget v14, v8, Lcw;->f:I

    iget v8, v8, Lcw;->g:I

    invoke-virtual {v9, v12, v13, v14, v8}, Lbw;->q(IIII)V

    iget-object v8, v4, Lau;->a:Lcq;

    invoke-virtual {v8, v9}, Lcq;->F(Lbw;)V

    const/4 v12, 0x0

    goto :goto_12

    :pswitch_1d
    const/4 v11, 0x0

    iget v12, v8, Lcw;->d:I

    iget v13, v8, Lcw;->e:I

    iget v14, v8, Lcw;->f:I

    iget v8, v8, Lcw;->g:I

    invoke-virtual {v9, v12, v13, v14, v8}, Lbw;->q(IIII)V

    iget-object v8, v4, Lau;->a:Lcq;

    invoke-virtual {v8, v9}, Lcq;->I(Lbw;)V

    const/4 v12, 0x0

    goto :goto_12

    :pswitch_1e
    const/4 v11, 0x0

    iget v12, v8, Lcw;->d:I

    iget v13, v8, Lcw;->e:I

    iget v14, v8, Lcw;->f:I

    iget v8, v8, Lcw;->g:I

    invoke-virtual {v9, v12, v13, v14, v8}, Lbw;->q(IIII)V

    iget-object v8, v4, Lau;->a:Lcq;

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v12}, Lcq;->K(Lbw;Z)V

    iget-object v8, v4, Lau;->a:Lcq;

    invoke-virtual {v8, v9}, Lcq;->ac(Lbw;)Ljea;

    :goto_12
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_11

    :cond_13
    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_13
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_d

    :cond_14
    move-object/from16 v5, p2

    const/4 v12, 0x0

    add-int/lit8 v1, v3, -0x1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move/from16 v4, p3

    :goto_14
    if-ge v4, v3, :cond_19

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lau;

    if-eqz v1, :cond_16

    iget-object v7, v6, Lau;->d:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, -0x1

    add-int/2addr v7, v8

    :goto_15
    if-ltz v7, :cond_18

    iget-object v8, v6, Lau;->d:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcw;

    iget-object v8, v8, Lcw;->b:Lbw;

    if-eqz v8, :cond_15

    invoke-virtual {v0, v8}, Lcq;->ad(Lbw;)Ljea;

    move-result-object v8

    invoke-virtual {v8}, Ljea;->e()V

    :cond_15
    add-int/lit8 v7, v7, -0x1

    goto :goto_15

    :cond_16
    iget-object v6, v6, Lau;->d:Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/4 v10, 0x0

    :goto_16
    if-ge v10, v7, :cond_18

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcw;

    iget-object v8, v8, Lcw;->b:Lbw;

    if-eqz v8, :cond_17

    invoke-virtual {v0, v8}, Lcq;->ad(Lbw;)Ljea;

    move-result-object v8

    invoke-virtual {v8}, Ljea;->e()V

    :cond_17
    add-int/lit8 v10, v10, 0x1

    goto :goto_16

    :cond_18
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    :cond_19
    iget v4, v0, Lcq;->h:I

    const/4 v6, 0x1

    invoke-virtual {v0, v4, v6}, Lcq;->G(IZ)V

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    move/from16 v6, p3

    :goto_17
    if-ge v6, v3, :cond_1c

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lau;

    iget-object v7, v7, Lau;->d:Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    const/4 v10, 0x0

    :goto_18
    if-ge v10, v8, :cond_1b

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcw;

    iget-object v9, v9, Lcw;->b:Lbw;

    if-eqz v9, :cond_1a

    iget-object v9, v9, Lbw;->M:Landroid/view/ViewGroup;

    if-eqz v9, :cond_1a

    invoke-static {v9, v0}, Ldm;->b(Landroid/view/ViewGroup;Lcq;)Ldm;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1a
    add-int/lit8 v10, v10, 0x1

    goto :goto_18

    :cond_1b
    add-int/lit8 v6, v6, 0x1

    goto :goto_17

    :cond_1c
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_19
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ldm;

    iput-boolean v1, v6, Ldm;->d:Z

    invoke-virtual {v6}, Ldm;->e()V

    invoke-virtual {v6}, Ldm;->c()V

    goto :goto_19

    :cond_1d
    move/from16 v1, p3

    :goto_1a
    if-ge v1, v3, :cond_20

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lau;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1f

    iget v6, v4, Lau;->c:I

    if-ltz v6, :cond_1e

    const/4 v6, -0x1

    iput v6, v4, Lau;->c:I

    goto :goto_1b

    :cond_1e
    const/4 v6, -0x1

    goto :goto_1b

    :cond_1f
    const/4 v6, -0x1

    :goto_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_20
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_a
        :pswitch_5
        :pswitch_9
        :pswitch_5
        :pswitch_5
        :pswitch_9
        :pswitch_a
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_4
        0x1003 -> :sswitch_3
        0x1004 -> :sswitch_2
        0x2002 -> :sswitch_1
        0x2005 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_14
        :pswitch_b
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_15
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
    .end packed-switch
.end method

.method private final ao(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_7

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lau;

    iget-boolean v3, v3, Lau;->s:Z

    if-nez v3, :cond_4

    if-eq v2, v1, :cond_1

    invoke-direct {p0, p1, p2, v2, v1}, Lcq;->an(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    :cond_1
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    if-ge v2, v0, :cond_3

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lau;

    iget-boolean v3, v3, Lau;->s:Z

    if-nez v3, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    invoke-direct {p0, p1, p2, v1, v2}, Lcq;->an(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    add-int/lit8 v1, v2, -0x1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    if-eq v2, v0, :cond_6

    invoke-direct {p0, p1, p2, v2, v0}, Lcq;->an(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    :cond_6
    return-void

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Internal error with the back stack records"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method private final ap(Lbw;)V
    .locals 3

    invoke-direct {p0, p1}, Lcq;->ag(Lbw;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lbw;->e()I

    move-result v1

    invoke-virtual {p1}, Lbw;->f()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1}, Lbw;->g()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1}, Lbw;->h()I

    move-result v2

    add-int/2addr v1, v2

    if-lez v1, :cond_1

    const v1, 0x7f0b03fa

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbw;

    invoke-virtual {p1}, Lbw;->v()Z

    move-result p1

    invoke-virtual {v0, p1}, Lbw;->t(Z)V

    :cond_1
    return-void
.end method

.method private final aq()V
    .locals 2

    iget-object v0, p0, Lcq;->a:Lcv;

    invoke-virtual {v0}, Lcv;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljea;

    invoke-virtual {p0, v1}, Lcq;->ae(Ljea;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final ar(Ljava/lang/RuntimeException;)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Activity state:"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ldh;

    invoke-direct {v0}, Ldh;-><init>()V

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iget-object v0, p0, Lcq;->i:Lce;

    const-string v3, "Failed dumping state"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "  "

    if-eqz v0, :cond_0

    :try_start_0
    new-array v5, v5, [Ljava/lang/String;

    check-cast v0, Lby;

    iget-object v0, v0, Lby;->a:Lbz;

    invoke-virtual {v0, v6, v4, v2, v5}, Lbz;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    :try_start_1
    new-array v0, v5, [Ljava/lang/String;

    invoke-virtual {p0, v6, v4, v2, v0}, Lcq;->C(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    throw p1
.end method

.method public static f(Landroid/view/View;)Lbw;
    .locals 2

    :goto_0
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-static {p0}, Lcq;->g(Landroid/view/View;)Lbw;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of v1, p0, Landroid/view/View;

    if-eqz v1, :cond_1

    check-cast p0, Landroid/view/View;

    goto :goto_0

    :cond_1
    move-object p0, v0

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method static g(Landroid/view/View;)Lbw;
    .locals 1

    const v0, 0x7f0b0166

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lbw;

    if-eqz v0, :cond_0

    check-cast p0, Lbw;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final A(I)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcq;->x:Z

    iget-object v2, p0, Lcq;->a:Lcv;

    iget-object v2, v2, Lcv;->b:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljea;

    if-eqz v3, :cond_0

    iput p1, v3, Ljea;->a:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, v1}, Lcq;->G(IZ)V

    invoke-direct {p0}, Lcq;->ah()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldm;

    invoke-virtual {v2}, Ldm;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_2
    iput-boolean v1, p0, Lcq;->x:Z

    invoke-virtual {p0, v0}, Lcq;->ab(Z)V

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v1, p0, Lcq;->x:Z

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public final B()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcq;->s:Z

    iget-object v1, p0, Lcq;->u:Lcs;

    iput-boolean v0, v1, Lcs;->g:Z

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcq;->A(I)V

    return-void
.end method

.method public final C(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcq;->a:Lcv;

    iget-object v1, v0, Lcv;->b:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Active Fragments:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, v0, Lcv;->b:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljea;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v2, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v2, v2, Ljea;->c:Ljava/lang/Object;

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    check-cast v2, Lbw;

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p2, p3, p4}, Lbw;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v2, "null"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p2, v0, Lcv;->a:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 p4, 0x0

    if-lez p2, :cond_2

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Added Fragments:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p2, :cond_2

    iget-object v2, v0, Lcv;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbw;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Lbw;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcq;->y:Ljava/util/ArrayList;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_3

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Fragments Created Menus:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_2
    if-ge v0, p2, :cond_3

    iget-object v1, p0, Lcq;->y:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbw;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  #"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ": "

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Lbw;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    iget-object p2, p0, Lcq;->b:Ljava/util/ArrayList;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_4

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Back Stack:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_3
    if-ge v0, p2, :cond_4

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcq;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lau;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Lau;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    "

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, p3}, Lau;->e(Ljava/lang/String;Ljava/io/PrintWriter;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Back Stack Index: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcq;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lcq;->w:Ljava/util/ArrayList;

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Lcq;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Pending Actions:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_4
    if-ge p4, v0, :cond_5

    iget-object v1, p0, Lcq;->w:Ljava/util/ArrayList;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  #"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ": "

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_4

    :cond_5
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "FragmentManager misc state:"

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mHost="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcq;->i:Lce;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mContainer="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcq;->j:Lcb;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object p2, p0, Lcq;->k:Lbw;

    if-eqz p2, :cond_6

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mParent="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcq;->k:Lbw;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_6
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mCurState="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcq;->h:I

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string p2, " mStateSaved="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcq;->r:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " mStopped="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcq;->s:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " mDestroyed="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcq;->t:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    iget-boolean p2, p0, Lcq;->q:Z

    if-eqz p2, :cond_7

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "  mNeedMenuInvalidate="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcq;->q:Z

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Z)V

    :cond_7
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method final D(Lco;Z)V
    .locals 2

    if-nez p2, :cond_2

    iget-object v0, p0, Lcq;->i:Lce;

    if-nez v0, :cond_1

    iget-boolean p1, p0, Lcq;->t:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "FragmentManager has been destroyed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "FragmentManager has not been attached to a host."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-direct {p0}, Lcq;->ai()V

    :cond_2
    iget-object v0, p0, Lcq;->w:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcq;->i:Lce;

    if-nez v1, :cond_4

    if-eqz p2, :cond_3

    monitor-exit v0

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Activity has been destroyed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    iget-object p2, p0, Lcq;->w:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcq;->w:Ljava/util/ArrayList;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p2, p0, Lcq;->w:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_5

    iget-object p2, p0, Lcq;->i:Lce;

    iget-object p2, p2, Lce;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcq;->K:Ljava/lang/Runnable;

    invoke-virtual {p2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p2, p0, Lcq;->i:Lce;

    iget-object p2, p2, Lce;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcq;->K:Ljava/lang/Runnable;

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcq;->N()V

    :cond_5
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception p2

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p2

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method final E(Lco;Z)V
    .locals 1

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcq;->i:Lce;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcq;->t:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    invoke-direct {p0, p2}, Lcq;->am(Z)V

    iget-object p2, p0, Lcq;->H:Ljava/util/ArrayList;

    iget-object v0, p0, Lcq;->I:Ljava/util/ArrayList;

    invoke-interface {p1, p2, v0}, Lco;->g(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcq;->x:Z

    :try_start_0
    iget-object p1, p0, Lcq;->H:Ljava/util/ArrayList;

    iget-object p2, p0, Lcq;->I:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2}, Lcq;->ao(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcq;->aj()V

    invoke-virtual {p0}, Lcq;->N()V

    invoke-direct {p0}, Lcq;->ak()V

    iget-object p1, p0, Lcq;->a:Lcv;

    invoke-virtual {p1}, Lcv;->h()V

    return-void

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lcq;->aj()V

    throw p1
.end method

.method final F(Lbw;)V
    .locals 2

    const/4 v0, 0x2

    invoke-static {v0}, Lcq;->S(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hide: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    iget-boolean v0, p1, Lbw;->F:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lbw;->F:Z

    iget-boolean v1, p1, Lbw;->S:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p1, Lbw;->S:Z

    invoke-direct {p0, p1}, Lcq;->ap(Lbw;)V

    :cond_1
    return-void
.end method

.method final G(IZ)V
    .locals 5

    iget-object v0, p0, Lcq;->i:Lce;

    if-nez v0, :cond_1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No activity"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-nez p2, :cond_3

    iget p2, p0, Lcq;->h:I

    if-eq p1, p2, :cond_2

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    :goto_1
    iput p1, p0, Lcq;->h:I

    iget-object p1, p0, Lcq;->a:Lcv;

    iget-object p2, p1, Lcv;->a:Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_5

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbw;

    iget-object v4, p1, Lcv;->b:Ljava/util/HashMap;

    iget-object v3, v3, Lbw;->k:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljea;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljea;->e()V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    iget-object p2, p1, Lcv;->b:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_6
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljea;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljea;->e()V

    iget-object v2, v0, Ljea;->c:Ljava/lang/Object;

    check-cast v2, Lbw;

    iget-boolean v3, v2, Lbw;->r:Z

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Lbw;->w()Z

    move-result v3

    if-nez v3, :cond_6

    iget-boolean v2, v2, Lbw;->s:Z

    invoke-virtual {p1, v0}, Lcv;->m(Ljea;)V

    goto :goto_3

    :cond_7
    invoke-direct {p0}, Lcq;->aq()V

    iget-boolean p1, p0, Lcq;->q:Z

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcq;->i:Lce;

    if-eqz p1, :cond_8

    iget p2, p0, Lcq;->h:I

    const/4 v0, 0x7

    if-ne p2, v0, :cond_8

    invoke-virtual {p1}, Lce;->e()V

    iput-boolean v1, p0, Lcq;->q:Z

    :cond_8
    return-void
.end method

.method public final H()V
    .locals 2

    iget-object v0, p0, Lcq;->i:Lce;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcq;->r:Z

    iput-boolean v0, p0, Lcq;->s:Z

    iget-object v1, p0, Lcq;->u:Lcs;

    iput-boolean v0, v1, Lcs;->g:Z

    iget-object v0, p0, Lcq;->a:Lcv;

    invoke-virtual {v0}, Lcv;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbw;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lbw;->A:Lcq;

    invoke-virtual {v1}, Lcq;->H()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method final I(Lbw;)V
    .locals 3

    const/4 v0, 0x2

    invoke-static {v0}, Lcq;->S(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remove: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " nesting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lbw;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p1}, Lbw;->w()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iget-boolean v2, p1, Lbw;->G:Z

    if-eqz v2, :cond_2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    iget-object v0, p0, Lcq;->a:Lcv;

    invoke-virtual {v0, p1}, Lcv;->i(Lbw;)V

    invoke-static {p1}, Lcq;->X(Lbw;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lcq;->q:Z

    :cond_3
    iput-boolean v1, p1, Lbw;->r:Z

    invoke-direct {p0, p1}, Lcq;->ap(Lbw;)V

    return-void
.end method

.method final J(Landroid/os/Parcelable;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "result_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v5, v0, Lcq;->i:Lce;

    iget-object v5, v5, Lce;->c:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const/4 v5, 0x7

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iget-object v5, v0, Lcq;->A:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "fragment_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v6, v0, Lcq;->i:Lce;

    iget-object v6, v6, Lce;->c:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const/16 v6, 0x9

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    iget-object v3, v0, Lcq;->a:Lcv;

    iget-object v4, v3, Lcv;->c:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    iget-object v3, v3, Lcv;->c:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    const-string v2, "state"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcr;

    if-nez v1, :cond_4

    return-void

    :cond_4
    iget-object v3, v0, Lcq;->a:Lcv;

    iget-object v3, v3, Lcv;->b:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    iget-object v3, v1, Lcr;->a:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_2
    const/4 v7, 0x0

    const-string v8, "): "

    const/4 v9, 0x2

    if-ge v6, v4, :cond_9

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iget-object v11, v0, Lcq;->a:Lcv;

    invoke-virtual {v11, v10, v7}, Lcv;->a(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v7

    if-eqz v7, :cond_8

    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Lcu;

    iget-object v11, v0, Lcq;->u:Lcs;

    iget-object v10, v10, Lcu;->b:Ljava/lang/String;

    iget-object v11, v11, Lcs;->b:Ljava/util/HashMap;

    invoke-virtual {v11, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v15, v10

    check-cast v15, Lbw;

    if-eqz v15, :cond_6

    invoke-static {v9}, Lcq;->S(I)Z

    move-result v10

    if-eqz v10, :cond_5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "restoreSaveState: re-attaching retained "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_5
    new-instance v10, Ljea;

    iget-object v13, v0, Lcq;->v:Lbby;

    iget-object v14, v0, Lcq;->a:Lcv;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v12, v10

    move-object/from16 v16, v7

    invoke-direct/range {v12 .. v19}, Ljea;-><init>(Lbby;Lcv;Lbw;Landroid/os/Bundle;[B[B[B)V

    goto :goto_3

    :cond_6
    new-instance v10, Ljea;

    iget-object v13, v0, Lcq;->v:Lbby;

    iget-object v14, v0, Lcq;->a:Lcv;

    iget-object v11, v0, Lcq;->i:Lce;

    iget-object v11, v11, Lce;->c:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcq;->h()Lcd;

    move-result-object v16

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v12, v10

    move-object/from16 v17, v7

    invoke-direct/range {v12 .. v20}, Ljea;-><init>(Lbby;Lcv;Ljava/lang/ClassLoader;Lcd;Landroid/os/Bundle;[B[B[B)V

    :goto_3
    iget-object v11, v10, Ljea;->c:Ljava/lang/Object;

    move-object v12, v11

    check-cast v12, Lbw;

    iput-object v7, v12, Lbw;->g:Landroid/os/Bundle;

    iput-object v0, v12, Lbw;->y:Lcq;

    invoke-static {v9}, Lcq;->S(I)Z

    move-result v7

    if-eqz v7, :cond_7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "restoreSaveState: active ("

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v12, Lbw;->k:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_7
    iget-object v7, v0, Lcq;->i:Lce;

    iget-object v7, v7, Lce;->c:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljea;->f(Ljava/lang/ClassLoader;)V

    iget-object v7, v0, Lcq;->a:Lcv;

    invoke-virtual {v7, v10}, Lcv;->l(Ljea;)V

    iget v7, v0, Lcq;->h:I

    iput v7, v10, Ljea;->a:I

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    :cond_9
    iget-object v2, v0, Lcq;->u:Lcs;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v2, v2, Lcs;->b:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbw;

    iget-object v6, v0, Lcq;->a:Lcv;

    iget-object v10, v3, Lbw;->k:Ljava/lang/String;

    invoke-virtual {v6, v10}, Lcv;->j(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a

    invoke-static {v9}, Lcq;->S(I)Z

    move-result v6

    if-eqz v6, :cond_b

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Discarding retained Fragment "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " that was not found in the set of active Fragments "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcr;->a:Ljava/util/ArrayList;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_b
    iget-object v6, v0, Lcq;->u:Lcs;

    invoke-virtual {v6, v3}, Lcs;->e(Lbw;)V

    iput-object v0, v3, Lbw;->y:Lcq;

    new-instance v6, Ljea;

    iget-object v11, v0, Lcq;->v:Lbby;

    iget-object v12, v0, Lcq;->a:Lcv;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v10, v6

    move-object v13, v3

    invoke-direct/range {v10 .. v16}, Ljea;-><init>(Lbby;Lcv;Lbw;[B[B[B)V

    iput v4, v6, Ljea;->a:I

    invoke-virtual {v6}, Ljea;->e()V

    iput-boolean v4, v3, Lbw;->r:Z

    invoke-virtual {v6}, Ljea;->e()V

    goto :goto_4

    :cond_c
    iget-object v2, v0, Lcq;->a:Lcv;

    iget-object v3, v1, Lcr;->b:Ljava/util/ArrayList;

    iget-object v6, v2, Lcv;->a:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    if-eqz v3, :cond_f

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcv;->b(Ljava/lang/String;)Lbw;

    move-result-object v10

    if-eqz v10, :cond_e

    invoke-static {v9}, Lcq;->S(I)Z

    move-result v11

    if-eqz v11, :cond_d

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "restoreSaveState: added ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_d
    invoke-virtual {v2, v10}, Lcv;->g(Lbw;)V

    goto :goto_5

    :cond_e
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No instantiated fragment for ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    iget-object v2, v1, Lcr;->c:[Lav;

    if-eqz v2, :cond_16

    array-length v2, v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v0, Lcq;->b:Ljava/util/ArrayList;

    const/4 v2, 0x0

    :goto_6
    iget-object v3, v1, Lcr;->c:[Lav;

    array-length v6, v3

    if-ge v2, v6, :cond_17

    aget-object v3, v3, v2

    new-instance v6, Lau;

    invoke-direct {v6, v0}, Lau;-><init>(Lcq;)V

    const/4 v7, 0x0

    const/4 v10, 0x0

    :goto_7
    iget-object v11, v3, Lav;->a:[I

    array-length v12, v11

    if-ge v7, v12, :cond_12

    new-instance v12, Lcw;

    invoke-direct {v12}, Lcw;-><init>()V

    add-int/lit8 v13, v7, 0x1

    aget v7, v11, v7

    iput v7, v12, Lcw;->a:I

    invoke-static {v9}, Lcq;->S(I)Z

    move-result v7

    if-eqz v7, :cond_10

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Instantiate "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " op #"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " base fragment #"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v3, Lav;->a:[I

    aget v11, v11, v13

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_10
    invoke-static {}, Lakr;->values()[Lakr;

    move-result-object v7

    iget-object v11, v3, Lav;->c:[I

    aget v11, v11, v10

    aget-object v7, v7, v11

    iput-object v7, v12, Lcw;->h:Lakr;

    invoke-static {}, Lakr;->values()[Lakr;

    move-result-object v7

    iget-object v11, v3, Lav;->d:[I

    aget v11, v11, v10

    aget-object v7, v7, v11

    iput-object v7, v12, Lcw;->i:Lakr;

    iget-object v7, v3, Lav;->a:[I

    add-int/lit8 v11, v13, 0x1

    aget v13, v7, v13

    if-eqz v13, :cond_11

    const/4 v13, 0x1

    goto :goto_8

    :cond_11
    const/4 v13, 0x0

    :goto_8
    iput-boolean v13, v12, Lcw;->c:Z

    add-int/lit8 v13, v11, 0x1

    aget v11, v7, v11

    iput v11, v12, Lcw;->d:I

    add-int/lit8 v14, v13, 0x1

    aget v13, v7, v13

    iput v13, v12, Lcw;->e:I

    add-int/lit8 v15, v14, 0x1

    aget v14, v7, v14

    iput v14, v12, Lcw;->f:I

    add-int/lit8 v16, v15, 0x1

    aget v7, v7, v15

    iput v7, v12, Lcw;->g:I

    iput v11, v6, Lau;->e:I

    iput v13, v6, Lau;->f:I

    iput v14, v6, Lau;->g:I

    iput v7, v6, Lau;->h:I

    invoke-virtual {v6, v12}, Lcx;->l(Lcw;)V

    add-int/lit8 v10, v10, 0x1

    move/from16 v7, v16

    goto/16 :goto_7

    :cond_12
    iget v7, v3, Lav;->e:I

    iput v7, v6, Lau;->i:I

    iget-object v7, v3, Lav;->f:Ljava/lang/String;

    iput-object v7, v6, Lau;->l:Ljava/lang/String;

    iput-boolean v4, v6, Lau;->j:Z

    iget v7, v3, Lav;->h:I

    iput v7, v6, Lau;->m:I

    iget-object v7, v3, Lav;->i:Ljava/lang/CharSequence;

    iput-object v7, v6, Lau;->n:Ljava/lang/CharSequence;

    iget v7, v3, Lav;->j:I

    iput v7, v6, Lau;->o:I

    iget-object v7, v3, Lav;->k:Ljava/lang/CharSequence;

    iput-object v7, v6, Lau;->p:Ljava/lang/CharSequence;

    iget-object v7, v3, Lav;->l:Ljava/util/ArrayList;

    iput-object v7, v6, Lau;->q:Ljava/util/ArrayList;

    iget-object v7, v3, Lav;->m:Ljava/util/ArrayList;

    iput-object v7, v6, Lau;->r:Ljava/util/ArrayList;

    iget-boolean v7, v3, Lav;->n:Z

    iput-boolean v7, v6, Lau;->s:Z

    iget v7, v3, Lav;->g:I

    iput v7, v6, Lau;->c:I

    const/4 v7, 0x0

    :goto_9
    iget-object v10, v3, Lav;->b:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v7, v10, :cond_14

    iget-object v10, v3, Lav;->b:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    if-eqz v10, :cond_13

    iget-object v11, v6, Lau;->d:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcw;

    invoke-virtual {v0, v10}, Lcq;->c(Ljava/lang/String;)Lbw;

    move-result-object v10

    iput-object v10, v11, Lcw;->b:Lbw;

    :cond_13
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    :cond_14
    invoke-virtual {v6, v4}, Lau;->a(I)V

    invoke-static {v9}, Lcq;->S(I)Z

    move-result v3

    if-eqz v3, :cond_15

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "restoreAllState: back stack #"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " (index "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v6, Lau;->c:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v3, Ldh;

    invoke-direct {v3}, Ldh;-><init>()V

    new-instance v7, Ljava/io/PrintWriter;

    invoke-direct {v7, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v3, "  "

    invoke-virtual {v6, v3, v7, v5}, Lau;->f(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    invoke-virtual {v7}, Ljava/io/PrintWriter;->close()V

    :cond_15
    iget-object v3, v0, Lcq;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_6

    :cond_16
    iput-object v7, v0, Lcq;->b:Ljava/util/ArrayList;

    :cond_17
    iget-object v2, v0, Lcq;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v3, v1, Lcr;->d:I

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v2, v1, Lcr;->e:Ljava/lang/String;

    if-eqz v2, :cond_18

    invoke-virtual {v0, v2}, Lcq;->c(Ljava/lang/String;)Lbw;

    move-result-object v2

    iput-object v2, v0, Lcq;->l:Lbw;

    invoke-virtual {v0, v2}, Lcq;->v(Lbw;)V

    :cond_18
    iget-object v2, v1, Lcr;->f:Ljava/util/ArrayList;

    if-eqz v2, :cond_19

    :goto_a
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v5, v3, :cond_19

    iget-object v3, v0, Lcq;->z:Ljava/util/Map;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v6, v1, Lcr;->g:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lax;

    invoke-interface {v3, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_19
    new-instance v2, Ljava/util/ArrayDeque;

    iget-object v1, v1, Lcr;->h:Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    iput-object v2, v0, Lcq;->p:Ljava/util/ArrayDeque;

    return-void
.end method

.method final K(Lbw;Z)V
    .locals 1

    invoke-direct {p0, p1}, Lcq;->ag(Lbw;)Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcc;

    if-eqz v0, :cond_0

    check-cast p1, Lcc;

    xor-int/lit8 p2, p2, 0x1

    iput-boolean p2, p1, Lcc;->a:Z

    :cond_0
    return-void
.end method

.method final L(Lbw;Lakr;)V
    .locals 2

    iget-object v0, p1, Lbw;->k:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcq;->c(Ljava/lang/String;)Lbw;

    move-result-object v0

    invoke-virtual {p1, v0}, Lbw;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lbw;->z:Lce;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lbw;->y:Lcq;

    if-ne v0, p0, :cond_1

    :cond_0
    iput-object p2, p1, Lbw;->V:Lakr;

    return-void

    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not an active fragment of FragmentManager "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method final M(Lbw;)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p1, Lbw;->k:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcq;->c(Ljava/lang/String;)Lbw;

    move-result-object v0

    invoke-virtual {p1, v0}, Lbw;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lbw;->z:Lce;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lbw;->y:Lcq;

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not an active fragment of FragmentManager "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcq;->l:Lbw;

    iput-object p1, p0, Lcq;->l:Lbw;

    invoke-virtual {p0, v0}, Lcq;->v(Lbw;)V

    iget-object p1, p0, Lcq;->l:Lbw;

    invoke-virtual {p0, p1}, Lcq;->v(Lbw;)V

    return-void
.end method

.method public final N()V
    .locals 4

    iget-object v0, p0, Lcq;->w:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcq;->w:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcq;->e:Lpn;

    invoke-virtual {v1, v2}, Lpn;->d(Z)V

    monitor-exit v0

    return-void

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcq;->e:Lpn;

    invoke-virtual {p0}, Lcq;->a()I

    move-result v1

    const/4 v3, 0x0

    if-lez v1, :cond_1

    iget-object v1, p0, Lcq;->k:Lbw;

    invoke-virtual {p0, v1}, Lcq;->U(Lbw;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Lpn;->d(Z)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method final O(Landroid/view/MenuItem;)Z
    .locals 4

    iget v0, p0, Lcq;->h:I

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcq;->a:Lcv;

    invoke-virtual {v0}, Lcv;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbw;

    if-eqz v2, :cond_1

    iget-boolean v3, v2, Lbw;->F:Z

    if-nez v3, :cond_1

    iget-object v2, v2, Lbw;->A:Lcq;

    invoke-virtual {v2, p1}, Lcq;->O(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public final P(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 8

    iget v0, p0, Lcq;->h:I

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcq;->a:Lcv;

    invoke-virtual {v0}, Lcv;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbw;

    if-eqz v4, :cond_1

    invoke-static {v4}, Lcq;->Y(Lbw;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-boolean v5, v4, Lbw;->F:Z

    if-nez v5, :cond_1

    iget-boolean v5, v4, Lbw;->J:Z

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    iget-boolean v5, v4, Lbw;->K:Z

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    iget-object v7, v4, Lbw;->A:Lcq;

    invoke-virtual {v7, p1, p2}, Lcq;->P(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v7

    or-int/2addr v5, v7

    if-eqz v5, :cond_1

    if-nez v2, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_3
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcq;->y:Ljava/util/ArrayList;

    if-eqz p1, :cond_6

    :goto_2
    iget-object p1, p0, Lcq;->y:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_6

    iget-object p1, p0, Lcq;->y:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbw;

    if-eqz v2, :cond_5

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    iput-object v2, p0, Lcq;->y:Ljava/util/ArrayList;

    return v3
.end method

.method public final Q(Landroid/view/MenuItem;)Z
    .locals 4

    iget v0, p0, Lcq;->h:I

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcq;->a:Lcv;

    invoke-virtual {v0}, Lcv;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbw;

    if-eqz v2, :cond_1

    iget-boolean v3, v2, Lbw;->F:Z

    if-nez v3, :cond_1

    iget-object v2, v2, Lbw;->A:Lcq;

    invoke-virtual {v2, p1}, Lcq;->Q(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public final R(Landroid/view/Menu;)Z
    .locals 6

    iget v0, p0, Lcq;->h:I

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcq;->a:Lcv;

    invoke-virtual {v0}, Lcv;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbw;

    if-eqz v3, :cond_1

    invoke-static {v3}, Lcq;->Y(Lbw;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, v3, Lbw;->F:Z

    if-nez v4, :cond_1

    iget-boolean v4, v3, Lbw;->J:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    iget-boolean v4, v3, Lbw;->K:Z

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    iget-object v3, v3, Lbw;->A:Lcq;

    invoke-virtual {v3, p1}, Lcq;->R(Landroid/view/Menu;)Z

    move-result v3

    or-int/2addr v3, v4

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method public final T()Z
    .locals 3

    iget-object v0, p0, Lcq;->k:Lbw;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lbw;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lbw;->getParentFragmentManager()Lcq;

    move-result-object v0

    invoke-virtual {v0}, Lcq;->T()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method final U(Lbw;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p1, Lbw;->y:Lcq;

    iget-object v2, v1, Lcq;->l:Lbw;

    invoke-virtual {p1, v2}, Lbw;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, v1, Lcq;->k:Lbw;

    invoke-virtual {p0, p1}, Lcq;->U(Lbw;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final V()Z
    .locals 1

    iget-boolean v0, p0, Lcq;->r:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcq;->s:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final W()Z
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcq;->ab(Z)V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcq;->am(Z)V

    iget-object v2, p0, Lcq;->l:Lbw;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lbw;->getChildFragmentManager()Lcq;

    move-result-object v2

    invoke-virtual {v2}, Lcq;->W()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcq;->H:Ljava/util/ArrayList;

    iget-object v3, p0, Lcq;->I:Ljava/util/ArrayList;

    const/4 v4, -0x1

    invoke-virtual {p0, v2, v3, v4, v0}, Lcq;->Z(Ljava/util/ArrayList;Ljava/util/ArrayList;II)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcq;->x:Z

    :try_start_0
    iget-object v1, p0, Lcq;->H:Ljava/util/ArrayList;

    iget-object v2, p0, Lcq;->I:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2}, Lcq;->ao(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcq;->aj()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcq;->aj()V

    throw v0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcq;->N()V

    invoke-direct {p0}, Lcq;->ak()V

    iget-object v1, p0, Lcq;->a:Lcv;

    invoke-virtual {v1}, Lcv;->h()V

    move v1, v0

    :goto_1
    return v1
.end method

.method final Z(Ljava/util/ArrayList;Ljava/util/ArrayList;II)Z
    .locals 4

    iget-object v0, p0, Lcq;->b:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p3, -0x1

    goto :goto_3

    :cond_0
    if-gez p3, :cond_2

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    goto :goto_3

    :cond_1
    iget-object p3, p0, Lcq;->b:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/2addr p3, v2

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lcq;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v2

    :goto_0
    if-ltz v0, :cond_4

    iget-object v3, p0, Lcq;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lau;

    iget v3, v3, Lau;->c:I

    if-ne p3, v3, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    :goto_1
    if-gez v0, :cond_5

    move p3, v0

    goto :goto_3

    :cond_5
    if-nez p4, :cond_7

    iget-object p3, p0, Lcq;->b:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/2addr p3, v2

    if-ne v0, p3, :cond_6

    const/4 p3, -0x1

    goto :goto_3

    :cond_6
    add-int/lit8 p3, v0, 0x1

    goto :goto_3

    :cond_7
    :goto_2
    if-lez v0, :cond_8

    iget-object p4, p0, Lcq;->b:Ljava/util/ArrayList;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lau;

    iget p4, p4, Lau;->c:I

    if-ne p3, p4, :cond_8

    move v0, v3

    goto :goto_2

    :cond_8
    move p3, v0

    goto :goto_3

    :cond_9
    const/4 p3, -0x1

    :goto_3
    if-gez p3, :cond_a

    return v1

    :cond_a
    iget-object p4, p0, Lcq;->b:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    add-int/2addr p4, v2

    :goto_4
    const/4 v0, 0x1

    if-lt p4, p3, :cond_b

    iget-object v1, p0, Lcq;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lau;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p4, p4, -0x1

    goto :goto_4

    :cond_b
    return v0
.end method

.method public final a()I
    .locals 1

    iget-object v0, p0, Lcq;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ab(Z)V
    .locals 6

    invoke-direct {p0, p1}, Lcq;->am(Z)V

    :goto_0
    iget-object p1, p0, Lcq;->H:Ljava/util/ArrayList;

    iget-object v0, p0, Lcq;->I:Ljava/util/ArrayList;

    iget-object v1, p0, Lcq;->w:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcq;->w:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    goto :goto_2

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcq;->w:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    iget-object v5, p0, Lcq;->w:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lco;

    invoke-interface {v5, p1, v0}, Lco;->g(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    or-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    :try_start_2
    iget-object p1, p0, Lcq;->w:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcq;->i:Lce;

    iget-object p1, p1, Lce;->d:Landroid/os/Handler;

    iget-object v0, p0, Lcq;->K:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v4, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcq;->x:Z

    :try_start_3
    iget-object p1, p0, Lcq;->H:Ljava/util/ArrayList;

    iget-object v0, p0, Lcq;->I:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0}, Lcq;->ao(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-direct {p0}, Lcq;->aj()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lcq;->aj()V

    throw p1

    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcq;->N()V

    invoke-direct {p0}, Lcq;->ak()V

    iget-object p1, p0, Lcq;->a:Lcv;

    invoke-virtual {p1}, Lcv;->h()V

    return-void

    :catchall_1
    move-exception p1

    :try_start_4
    iget-object v0, p0, Lcq;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcq;->i:Lce;

    iget-object v0, v0, Lce;->d:Landroid/os/Handler;

    iget-object v2, p0, Lcq;->K:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    throw p1

    :catchall_2
    move-exception p1

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method final ac(Lbw;)Ljea;
    .locals 3

    iget-object v0, p1, Lbw;->mPreviousWho:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {p1, v0}, Lajr;->a(Lbw;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x2

    invoke-static {v0}, Lcq;->S(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0, p1}, Lcq;->ad(Lbw;)Ljea;

    move-result-object v0

    iput-object p0, p1, Lbw;->y:Lcq;

    iget-object v1, p0, Lcq;->a:Lcv;

    invoke-virtual {v1, v0}, Lcv;->l(Ljea;)V

    iget-boolean v1, p1, Lbw;->G:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcq;->a:Lcv;

    invoke-virtual {v1, p1}, Lcv;->g(Lbw;)V

    const/4 v1, 0x0

    iput-boolean v1, p1, Lbw;->r:Z

    iget-object v2, p1, Lbw;->N:Landroid/view/View;

    if-nez v2, :cond_2

    iput-boolean v1, p1, Lbw;->S:Z

    :cond_2
    invoke-static {p1}, Lcq;->X(Lbw;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcq;->q:Z

    :cond_3
    return-object v0
.end method

.method final ad(Lbw;)Ljea;
    .locals 8

    iget-object v0, p0, Lcq;->a:Lcv;

    iget-object v1, p1, Lbw;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcv;->k(Ljava/lang/String;)Ljea;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljea;

    iget-object v2, p0, Lcq;->v:Lbby;

    iget-object v3, p0, Lcq;->a:Lcv;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    move-object v4, p1

    invoke-direct/range {v1 .. v7}, Ljea;-><init>(Lbby;Lcv;Lbw;[B[B[B)V

    iget-object p1, p0, Lcq;->i:Lce;

    iget-object p1, p1, Lce;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljea;->f(Ljava/lang/ClassLoader;)V

    iget p1, p0, Lcq;->h:I

    iput p1, v0, Ljea;->a:I

    return-object v0
.end method

.method final ae(Ljea;)V
    .locals 2

    iget-object v0, p1, Ljea;->c:Ljava/lang/Object;

    check-cast v0, Lbw;

    iget-boolean v1, v0, Lbw;->O:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcq;->x:Z

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcq;->G:Z

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, v0, Lbw;->O:Z

    invoke-virtual {p1}, Ljea;->e()V

    :cond_1
    return-void
.end method

.method final af()Ld;
    .locals 1

    iget-object v0, p0, Lcq;->k:Lbw;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lbw;->y:Lcq;

    invoke-virtual {v0}, Lcq;->af()Ld;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcq;->L:Ld;

    return-object v0
.end method

.method final b()Landroid/os/Bundle;
    .locals 14

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0}, Lcq;->ah()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldm;

    iget-boolean v4, v2, Ldm;->e:Z

    if-eqz v4, :cond_0

    iput-boolean v3, v2, Ldm;->e:Z

    invoke-virtual {v2}, Ldm;->c()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcq;->al()V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcq;->ab(Z)V

    iput-boolean v1, p0, Lcq;->r:Z

    iget-object v2, p0, Lcq;->u:Lcs;

    iput-boolean v1, v2, Lcs;->g:Z

    iget-object v1, p0, Lcq;->a:Lcv;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, v1, Lcv;->b:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v4, v1, Lcv;->b:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x2

    if-eqz v5, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljea;

    if-eqz v5, :cond_2

    iget-object v7, v5, Ljea;->c:Ljava/lang/Object;

    move-object v8, v7

    check-cast v8, Lbw;

    iget-object v9, v8, Lbw;->k:Ljava/lang/String;

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    iget-object v11, v5, Ljea;->c:Ljava/lang/Object;

    check-cast v11, Lbw;

    iget v12, v11, Lbw;->f:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_3

    iget-object v11, v11, Lbw;->g:Landroid/os/Bundle;

    if-eqz v11, :cond_3

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_3
    new-instance v11, Lcu;

    iget-object v12, v5, Ljea;->c:Ljava/lang/Object;

    check-cast v12, Lbw;

    invoke-direct {v11, v12}, Lcu;-><init>(Lbw;)V

    const-string v12, "state"

    invoke-virtual {v10, v12, v11}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v11, v5, Ljea;->c:Ljava/lang/Object;

    check-cast v11, Lbw;

    iget v11, v11, Lbw;->f:I

    if-ltz v11, :cond_9

    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    iget-object v12, v5, Ljea;->c:Ljava/lang/Object;

    check-cast v12, Lbw;

    invoke-virtual {v12, v11}, Lbw;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-virtual {v11}, Landroid/os/Bundle;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_4

    const-string v12, "savedInstanceState"

    invoke-virtual {v10, v12, v11}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_4
    iget-object v12, v5, Ljea;->b:Ljava/lang/Object;

    iget-object v13, v5, Ljea;->c:Ljava/lang/Object;

    check-cast v13, Lbw;

    check-cast v12, Lbby;

    invoke-virtual {v12, v13, v11, v3}, Lbby;->z(Lbw;Landroid/os/Bundle;Z)V

    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    iget-object v12, v5, Ljea;->c:Ljava/lang/Object;

    check-cast v12, Lbw;

    iget-object v12, v12, Lbw;->ac:Lbza;

    invoke-virtual {v12, v11}, Lbza;->i(Landroid/os/Bundle;)V

    invoke-virtual {v11}, Landroid/os/Bundle;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_5

    const-string v12, "registryState"

    invoke-virtual {v10, v12, v11}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_5
    iget-object v11, v5, Ljea;->c:Ljava/lang/Object;

    check-cast v11, Lbw;

    iget-object v11, v11, Lbw;->A:Lcq;

    invoke-virtual {v11}, Lcq;->b()Landroid/os/Bundle;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/Bundle;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_6

    const-string v12, "childFragmentManager"

    invoke-virtual {v10, v12, v11}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_6
    iget-object v11, v5, Ljea;->c:Ljava/lang/Object;

    check-cast v11, Lbw;

    iget-object v11, v11, Lbw;->N:Landroid/view/View;

    if-eqz v11, :cond_7

    invoke-virtual {v5}, Ljea;->g()V

    :cond_7
    iget-object v11, v5, Ljea;->c:Ljava/lang/Object;

    check-cast v11, Lbw;

    iget-object v11, v11, Lbw;->h:Landroid/util/SparseArray;

    if-eqz v11, :cond_8

    const-string v12, "viewState"

    invoke-virtual {v10, v12, v11}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_8
    iget-object v11, v5, Ljea;->c:Ljava/lang/Object;

    check-cast v11, Lbw;

    iget-object v11, v11, Lbw;->i:Landroid/os/Bundle;

    if-eqz v11, :cond_9

    const-string v12, "viewRegistryState"

    invoke-virtual {v10, v12, v11}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_9
    iget-object v5, v5, Ljea;->c:Ljava/lang/Object;

    check-cast v5, Lbw;

    iget-object v5, v5, Lbw;->l:Landroid/os/Bundle;

    if-eqz v5, :cond_a

    const-string v11, "arguments"

    invoke-virtual {v10, v11, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_a
    invoke-virtual {v1, v9, v10}, Lcv;->a(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    iget-object v5, v8, Lbw;->k:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v6}, Lcq;->S(I)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Saved state of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v8, Lbw;->g:Landroid/os/Bundle;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_b
    iget-object v1, p0, Lcq;->a:Lcv;

    iget-object v1, v1, Lcv;->c:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_c

    goto/16 :goto_8

    :cond_c
    iget-object v4, p0, Lcq;->a:Lcv;

    iget-object v5, v4, Lcv;->a:Ljava/util/ArrayList;

    monitor-enter v5

    :try_start_0
    iget-object v7, v4, Lcv;->a:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_d

    monitor-exit v5

    move-object v7, v8

    goto :goto_3

    :cond_d
    new-instance v7, Ljava/util/ArrayList;

    iget-object v9, v4, Lcv;->a:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v4, v4, Lcv;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_e
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lbw;

    iget-object v10, v9, Lbw;->k:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v6}, Lcq;->S(I)Z

    move-result v10

    if-eqz v10, :cond_e

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "saveAllState: adding fragment ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v9, Lbw;->k:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_f
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    iget-object v4, p0, Lcq;->b:Ljava/util/ArrayList;

    if-eqz v4, :cond_12

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_12

    new-array v8, v4, [Lav;

    :goto_4
    if-ge v3, v4, :cond_11

    new-instance v5, Lav;

    iget-object v9, p0, Lcq;->b:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lau;

    invoke-direct {v5, v9}, Lav;-><init>(Lau;)V

    aput-object v5, v8, v3

    invoke-static {v6}, Lcq;->S(I)Z

    move-result v5

    if-eqz v5, :cond_10

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "saveAllState: adding back stack #"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcq;->b:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_11
    goto :goto_5

    :cond_12
    :goto_5
    new-instance v3, Lcr;

    invoke-direct {v3}, Lcr;-><init>()V

    iput-object v2, v3, Lcr;->a:Ljava/util/ArrayList;

    iput-object v7, v3, Lcr;->b:Ljava/util/ArrayList;

    iput-object v8, v3, Lcr;->c:[Lav;

    iget-object v2, p0, Lcq;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    iput v2, v3, Lcr;->d:I

    iget-object v2, p0, Lcq;->l:Lbw;

    if-eqz v2, :cond_13

    iget-object v2, v2, Lbw;->k:Ljava/lang/String;

    iput-object v2, v3, Lcr;->e:Ljava/lang/String;

    :cond_13
    iget-object v2, v3, Lcr;->f:Ljava/util/ArrayList;

    iget-object v4, p0, Lcq;->z:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v2, v3, Lcr;->g:Ljava/util/ArrayList;

    iget-object v4, p0, Lcq;->z:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, p0, Lcq;->p:Ljava/util/ArrayDeque;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, v3, Lcr;->h:Ljava/util/ArrayList;

    const-string v2, "state"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v2, p0, Lcq;->A:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcq;->A:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    const-string v5, "result_"

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_6

    :cond_14
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    const-string v5, "fragment_"

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_7

    :cond_15
    :goto_8
    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_a

    :goto_9
    throw v0

    :goto_a
    goto :goto_9
.end method

.method final c(Ljava/lang/String;)Lbw;
    .locals 1

    iget-object v0, p0, Lcq;->a:Lcv;

    invoke-virtual {v0, p1}, Lcv;->b(Ljava/lang/String;)Lbw;

    move-result-object p1

    return-object p1
.end method

.method public final d(I)Lbw;
    .locals 4

    iget-object v0, p0, Lcq;->a:Lcv;

    iget-object v1, v0, Lcv;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, v0, Lcv;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbw;

    if-eqz v2, :cond_0

    iget v3, v2, Lbw;->C:I

    if-ne v3, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcv;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljea;

    if-eqz v1, :cond_2

    iget-object v2, v1, Ljea;->c:Ljava/lang/Object;

    move-object v1, v2

    check-cast v1, Lbw;

    iget v1, v1, Lbw;->C:I

    if-ne v1, p1, :cond_2

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    check-cast v2, Lbw;

    return-object v2
.end method

.method public final e(Ljava/lang/String;)Lbw;
    .locals 4

    iget-object v0, p0, Lcq;->a:Lcv;

    iget-object v1, v0, Lcv;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, v0, Lcv;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbw;

    if-eqz v2, :cond_0

    iget-object v3, v2, Lbw;->E:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcv;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljea;

    if-eqz v1, :cond_2

    iget-object v2, v1, Ljea;->c:Ljava/lang/Object;

    move-object v1, v2

    check-cast v1, Lbw;

    iget-object v1, v1, Lbw;->E:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    check-cast v2, Lbw;

    return-object v2
.end method

.method public final h()Lcd;
    .locals 1

    iget-object v0, p0, Lcq;->k:Lbw;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lbw;->y:Lcq;

    invoke-virtual {v0}, Lcq;->h()Lcd;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcq;->F:Lcd;

    return-object v0
.end method

.method public final i()Lcx;
    .locals 1

    new-instance v0, Lau;

    invoke-direct {v0, p0}, Lau;-><init>(Lcq;)V

    return-object v0
.end method

.method public final j(Lct;)V
    .locals 1

    iget-object v0, p0, Lcq;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final k(Lce;Lcb;Lbw;)V
    .locals 4

    iget-object v0, p0, Lcq;->i:Lce;

    if-nez v0, :cond_10

    iput-object p1, p0, Lcq;->i:Lce;

    iput-object p2, p0, Lcq;->j:Lcb;

    iput-object p3, p0, Lcq;->k:Lbw;

    if-eqz p3, :cond_0

    new-instance p2, Lck;

    invoke-direct {p2}, Lck;-><init>()V

    invoke-virtual {p0, p2}, Lcq;->j(Lct;)V

    goto :goto_0

    :cond_0
    instance-of p2, p1, Lct;

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Lcq;->j(Lct;)V

    :cond_1
    :goto_0
    iget-object p2, p0, Lcq;->k:Lbw;

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcq;->N()V

    :cond_2
    instance-of p2, p1, Lps;

    if-eqz p2, :cond_4

    move-object p2, p1

    check-cast p2, Lby;

    iget-object p2, p2, Lby;->a:Lbz;

    iget-object p2, p2, Lpl;->g:Lpr;

    iput-object p2, p0, Lcq;->d:Lpr;

    if-eqz p3, :cond_3

    move-object v0, p3

    goto :goto_1

    :cond_3
    move-object v0, p1

    :goto_1
    iget-object v1, p0, Lcq;->e:Lpn;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Lakv;->getLifecycle()Laks;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Laks;->a:Lakr;

    sget-object v3, Lakr;->a:Lakr;

    if-eq v2, v3, :cond_4

    new-instance v2, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;

    invoke-direct {v2, p2, v0, v1}, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;-><init>(Lpr;Laks;Lpn;)V

    invoke-virtual {v1, v2}, Lpn;->b(Lph;)V

    invoke-virtual {p2}, Lpr;->d()V

    iget-object p2, p2, Lpr;->b:Lolz;

    iput-object p2, v1, Lpn;->d:Lolz;

    :cond_4
    const/4 p2, 0x0

    if-eqz p3, :cond_6

    iget-object p1, p3, Lbw;->y:Lcq;

    iget-object p1, p1, Lcq;->u:Lcs;

    iget-object v0, p1, Lcs;->c:Ljava/util/HashMap;

    iget-object v1, p3, Lbw;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcs;

    if-nez v0, :cond_5

    new-instance v0, Lcs;

    iget-boolean v1, p1, Lcs;->e:Z

    invoke-direct {v0, v1}, Lcs;-><init>(Z)V

    iget-object p1, p1, Lcs;->c:Ljava/util/HashMap;

    iget-object v1, p3, Lbw;->k:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    :goto_2
    iput-object v0, p0, Lcq;->u:Lcs;

    goto :goto_3

    :cond_6
    instance-of v0, p1, Lalw;

    if-eqz v0, :cond_7

    invoke-interface {p1}, Lalw;->getViewModelStore$ar$class_merging$ar$class_merging()Lbkb;

    move-result-object p1

    sget-object v0, Lcs;->a:Lalt;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lalx;->a:Lalx;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v2, Lcs;

    invoke-static {v2, p1, v0, v1}, Lach;->c(Ljava/lang/Class;Lbkb;Lalt;Lalz;)Lalr;

    move-result-object p1

    check-cast p1, Lcs;

    iput-object p1, p0, Lcq;->u:Lcs;

    goto :goto_3

    :cond_7
    new-instance p1, Lcs;

    invoke-direct {p1, p2}, Lcs;-><init>(Z)V

    iput-object p1, p0, Lcq;->u:Lcs;

    :goto_3
    iget-object p1, p0, Lcq;->u:Lcs;

    invoke-virtual {p0}, Lcq;->V()Z

    move-result v0

    iput-boolean v0, p1, Lcs;->g:Z

    iget-object v0, p0, Lcq;->a:Lcv;

    iput-object p1, v0, Lcv;->d:Lcs;

    iget-object p1, p0, Lcq;->i:Lce;

    instance-of v0, p1, Laqn;

    if-eqz v0, :cond_8

    if-nez p3, :cond_8

    invoke-interface {p1}, Laqn;->getSavedStateRegistry()Laqm;

    move-result-object p1

    new-instance v0, Lcg;

    invoke-direct {v0, p0, p2}, Lcg;-><init>(Lcq;I)V

    const-string v1, "android:support:fragments"

    invoke-virtual {p1, v1, v0}, Laqm;->b(Ljava/lang/String;Laql;)V

    invoke-virtual {p1, v1}, Laqm;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p0, p1}, Lcq;->J(Landroid/os/Parcelable;)V

    :cond_8
    iget-object p1, p0, Lcq;->i:Lce;

    instance-of v0, p1, Lqb;

    if-eqz v0, :cond_a

    invoke-interface {p1}, Lqb;->c()Lqa;

    move-result-object p1

    if-eqz p3, :cond_9

    iget-object v0, p3, Lbw;->k:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_9
    const-string v0, ""

    :goto_4
    new-instance v1, Lqg;

    invoke-direct {v1}, Lqg;-><init>()V

    new-instance v2, Lcl;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcl;-><init>(Lcq;I)V

    const-string v3, "FragmentManager:"

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "StartActivityForResult"

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v1, v2}, Lqa;->a(Ljava/lang/String;Lqe;Lpw;)Lpx;

    move-result-object v1

    iput-object v1, p0, Lcq;->m:Lpx;

    new-instance v1, Lcm;

    invoke-direct {v1}, Lcm;-><init>()V

    new-instance v2, Lcl;

    invoke-direct {v2, p0, p2}, Lcl;-><init>(Lcq;I)V

    const-string p2, "StartIntentSenderForResult"

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v1, v2}, Lqa;->a(Ljava/lang/String;Lqe;Lpw;)Lpx;

    move-result-object p2

    iput-object p2, p0, Lcq;->n:Lpx;

    new-instance p2, Lqf;

    invoke-direct {p2}, Lqf;-><init>()V

    new-instance v1, Lch;

    invoke-direct {v1, p0}, Lch;-><init>(Lcq;)V

    const-string v2, "RequestPermissions"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2, v1}, Lqa;->a(Ljava/lang/String;Lqe;Lpw;)Lpx;

    move-result-object p1

    iput-object p1, p0, Lcq;->o:Lpx;

    :cond_a
    iget-object p1, p0, Lcq;->i:Lce;

    instance-of p2, p1, Laca;

    if-eqz p2, :cond_b

    iget-object p2, p0, Lcq;->B:Laea;

    invoke-interface {p1, p2}, Laca;->d(Laea;)V

    :cond_b
    iget-object p1, p0, Lcq;->i:Lce;

    instance-of p2, p1, Lacb;

    if-eqz p2, :cond_c

    iget-object p2, p0, Lcq;->C:Laea;

    check-cast p1, Lby;

    iget-object p1, p1, Lby;->a:Lbz;

    iget-object p1, p1, Lpl;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    iget-object p1, p0, Lcq;->i:Lce;

    instance-of p2, p1, Ldi;

    if-eqz p2, :cond_d

    iget-object p2, p0, Lcq;->D:Laea;

    check-cast p1, Lby;

    iget-object p1, p1, Lby;->a:Lbz;

    iget-object p1, p1, Lpl;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    iget-object p1, p0, Lcq;->i:Lce;

    instance-of p2, p1, Ldj;

    if-eqz p2, :cond_e

    iget-object p2, p0, Lcq;->E:Laea;

    check-cast p1, Lby;

    iget-object p1, p1, Lby;->a:Lbz;

    iget-object p1, p1, Lpl;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    iget-object p1, p0, Lcq;->i:Lce;

    instance-of p2, p1, Laep;

    if-eqz p2, :cond_f

    if-nez p3, :cond_f

    iget-object p2, p0, Lcq;->M:Landroidx/wear/ambient/AmbientMode$AmbientController;

    check-cast p1, Lby;

    iget-object p1, p1, Lby;->a:Lbz;

    iget-object p1, p1, Lpl;->p:Lva;

    iget-object p3, p1, Lva;->a:Ljava/lang/Object;

    check-cast p3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p3, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p1, Lva;->b:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_f
    return-void

    :cond_10
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Already attached"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final l(Lbw;)V
    .locals 3

    const/4 v0, 0x2

    invoke-static {v0}, Lcq;->S(I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    iget-boolean v1, p1, Lbw;->G:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    iput-boolean v1, p1, Lbw;->G:Z

    iget-boolean v1, p1, Lbw;->q:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcq;->a:Lcv;

    invoke-virtual {v1, p1}, Lcv;->g(Lbw;)V

    invoke-static {v0}, Lcq;->S(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add from attach: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-static {p1}, Lcq;->X(Lbw;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcq;->q:Z

    :cond_2
    return-void
.end method

.method final m(Lbw;)V
    .locals 3

    const/4 v0, 0x2

    invoke-static {v0}, Lcq;->S(I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "detach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    iget-boolean v1, p1, Lbw;->G:Z

    if-nez v1, :cond_3

    const/4 v1, 0x1

    iput-boolean v1, p1, Lbw;->G:Z

    iget-boolean v2, p1, Lbw;->q:Z

    if-eqz v2, :cond_3

    invoke-static {v0}, Lcq;->S(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove from detach: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v0, p0, Lcq;->a:Lcv;

    invoke-virtual {v0, p1}, Lcv;->i(Lbw;)V

    invoke-static {p1}, Lcq;->X(Lbw;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcq;->q:Z

    :cond_2
    invoke-direct {p0, p1}, Lcq;->ap(Lbw;)V

    :cond_3
    return-void
.end method

.method public final n()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcq;->r:Z

    iput-boolean v0, p0, Lcq;->s:Z

    iget-object v1, p0, Lcq;->u:Lcs;

    iput-boolean v0, v1, Lcs;->g:Z

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcq;->A(I)V

    return-void
.end method

.method final o(Landroid/content/res/Configuration;Z)V
    .locals 3

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcq;->i:Lce;

    instance-of v0, v0, Laca;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Do not call dispatchConfigurationChanged() on host. Host implements OnConfigurationChangedProvider and automatically dispatches configuration changes to fragments."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcq;->ar(Ljava/lang/RuntimeException;)V

    :cond_0
    iget-object v0, p0, Lcq;->a:Lcv;

    invoke-virtual {v0}, Lcv;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbw;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lbw;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    if-eqz p2, :cond_1

    iget-object v1, v1, Lbw;->A:Lcq;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcq;->o(Landroid/content/res/Configuration;Z)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method final p()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcq;->r:Z

    iput-boolean v0, p0, Lcq;->s:Z

    iget-object v1, p0, Lcq;->u:Lcs;

    iput-boolean v0, v1, Lcs;->g:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcq;->A(I)V

    return-void
.end method

.method public final q()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcq;->t:Z

    invoke-virtual {p0, v0}, Lcq;->ab(Z)V

    invoke-direct {p0}, Lcq;->al()V

    iget-object v1, p0, Lcq;->i:Lce;

    instance-of v2, v1, Lalw;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcq;->a:Lcv;

    iget-object v0, v0, Lcv;->d:Lcs;

    iget-boolean v0, v0, Lcs;->f:Z

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lce;->c:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v1

    xor-int/2addr v0, v1

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcq;->z:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lax;

    iget-object v1, v1, Lax;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcq;->a:Lcv;

    iget-object v3, v3, Lcv;->d:Lcs;

    invoke-virtual {v3, v2}, Lcs;->c(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcq;->A(I)V

    iget-object v0, p0, Lcq;->i:Lce;

    instance-of v1, v0, Lacb;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcq;->C:Laea;

    check-cast v0, Lby;

    iget-object v0, v0, Lby;->a:Lbz;

    iget-object v0, v0, Lpl;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_3
    iget-object v0, p0, Lcq;->i:Lce;

    instance-of v1, v0, Laca;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcq;->B:Laea;

    invoke-interface {v0, v1}, Laca;->f(Laea;)V

    :cond_4
    iget-object v0, p0, Lcq;->i:Lce;

    instance-of v1, v0, Ldi;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcq;->D:Laea;

    check-cast v0, Lby;

    iget-object v0, v0, Lby;->a:Lbz;

    iget-object v0, v0, Lpl;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_5
    iget-object v0, p0, Lcq;->i:Lce;

    instance-of v1, v0, Ldj;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcq;->E:Laea;

    check-cast v0, Lby;

    iget-object v0, v0, Lby;->a:Lbz;

    iget-object v0, v0, Lpl;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_6
    iget-object v0, p0, Lcq;->i:Lce;

    instance-of v1, v0, Laep;

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcq;->M:Landroidx/wear/ambient/AmbientMode$AmbientController;

    check-cast v0, Lby;

    iget-object v0, v0, Lby;->a:Lbz;

    iget-object v0, v0, Lpl;->p:Lva;

    iget-object v3, v0, Lva;->a:Ljava/lang/Object;

    check-cast v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v3, v0, Lva;->c:Ljava/lang/Object;

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labh;

    if-nez v1, :cond_7

    iget-object v0, v0, Lva;->b:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_2

    :cond_7
    throw v2

    :cond_8
    :goto_2
    iput-object v2, p0, Lcq;->i:Lce;

    iput-object v2, p0, Lcq;->j:Lcb;

    iput-object v2, p0, Lcq;->k:Lbw;

    iget-object v0, p0, Lcq;->d:Lpr;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcq;->e:Lpn;

    iget-object v0, v0, Lpn;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lph;

    invoke-interface {v1}, Lph;->b()V

    goto :goto_3

    :cond_9
    iput-object v2, p0, Lcq;->d:Lpr;

    :cond_a
    iget-object v0, p0, Lcq;->m:Lpx;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lpx;->a()V

    iget-object v0, p0, Lcq;->n:Lpx;

    invoke-virtual {v0}, Lpx;->a()V

    iget-object v0, p0, Lcq;->o:Lpx;

    invoke-virtual {v0}, Lpx;->a()V

    :cond_b
    return-void
.end method

.method final r(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcq;->i:Lce;

    instance-of v0, v0, Lacb;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Do not call dispatchLowMemory() on host. Host implements OnTrimMemoryProvider and automatically dispatches low memory callbacks to fragments."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcq;->ar(Ljava/lang/RuntimeException;)V

    :cond_0
    iget-object v0, p0, Lcq;->a:Lcv;

    invoke-virtual {v0}, Lcv;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbw;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lbw;->onLowMemory()V

    if-eqz p1, :cond_1

    iget-object v1, v1, Lbw;->A:Lcq;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcq;->r(Z)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method final s(ZZ)V
    .locals 3

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcq;->i:Lce;

    instance-of v0, v0, Ldi;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Do not call dispatchMultiWindowModeChanged() on host. Host implements OnMultiWindowModeChangedProvider and automatically dispatches multi-window mode changes to fragments."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcq;->ar(Ljava/lang/RuntimeException;)V

    :cond_0
    iget-object v0, p0, Lcq;->a:Lcv;

    invoke-virtual {v0}, Lcv;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbw;

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    iget-object v1, v1, Lbw;->A:Lcq;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcq;->s(ZZ)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final t()V
    .locals 2

    iget-object v0, p0, Lcq;->a:Lcv;

    invoke-virtual {v0}, Lcv;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbw;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lbw;->A:Lcq;

    invoke-virtual {v1}, Lcq;->t()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "FragmentManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcq;->k:Lbw;

    const-string v2, "}"

    const-string v3, "{"

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcq;->k:Lbw;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcq;->i:Lce;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcq;->i:Lce;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u(Landroid/view/Menu;)V
    .locals 3

    iget v0, p0, Lcq;->h:I

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcq;->a:Lcv;

    invoke-virtual {v0}, Lcv;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbw;

    if-eqz v1, :cond_1

    iget-boolean v2, v1, Lbw;->F:Z

    if-nez v2, :cond_1

    iget-object v1, v1, Lbw;->A:Lcq;

    invoke-virtual {v1, p1}, Lcq;->u(Landroid/view/Menu;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final v(Lbw;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p1, Lbw;->k:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcq;->c(Ljava/lang/String;)Lbw;

    move-result-object v0

    invoke-virtual {p1, v0}, Lbw;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lbw;->y:Lcq;

    invoke-virtual {v0, p1}, Lcq;->U(Lbw;)Z

    move-result v0

    iget-object v1, p1, Lbw;->p:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v1, v0, :cond_1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Lbw;->p:Ljava/lang/Boolean;

    iget-object p1, p1, Lbw;->A:Lcq;

    invoke-virtual {p1}, Lcq;->N()V

    iget-object v0, p1, Lcq;->l:Lbw;

    invoke-virtual {p1, v0}, Lcq;->v(Lbw;)V

    :cond_1
    return-void
.end method

.method public final w()V
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcq;->A(I)V

    return-void
.end method

.method final x(ZZ)V
    .locals 3

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcq;->i:Lce;

    instance-of v0, v0, Ldj;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Do not call dispatchPictureInPictureModeChanged() on host. Host implements OnPictureInPictureModeChangedProvider and automatically dispatches picture-in-picture mode changes to fragments."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcq;->ar(Ljava/lang/RuntimeException;)V

    :cond_0
    iget-object v0, p0, Lcq;->a:Lcv;

    invoke-virtual {v0}, Lcv;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbw;

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    iget-object v1, v1, Lbw;->A:Lcq;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcq;->x(ZZ)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final y()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcq;->r:Z

    iput-boolean v0, p0, Lcq;->s:Z

    iget-object v1, p0, Lcq;->u:Lcs;

    iput-boolean v0, v1, Lcs;->g:Z

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcq;->A(I)V

    return-void
.end method

.method public final z()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcq;->r:Z

    iput-boolean v0, p0, Lcq;->s:Z

    iget-object v1, p0, Lcq;->u:Lcs;

    iput-boolean v0, v1, Lcs;->g:Z

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcq;->A(I)V

    return-void
.end method
