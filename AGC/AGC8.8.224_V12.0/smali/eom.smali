.class public final Leom;
.super Lhsc;

# interfaces
.implements Lepz;


# instance fields
.field public final a:Ljava/util/List;

.field public b:Leqg;

.field public c:Z

.field public d:Leqg;

.field public final e:Ljew;

.field private final i:Ldhi;

.field private final j:Lkog;

.field private k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lhrz;Ljew;Ldhi;Lkog;[B[B[B[B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lhsc;-><init>(Landroid/content/Context;Lhrz;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Leom;->c:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Leom;->a:Ljava/util/List;

    iput-object p4, p0, Leom;->i:Ldhi;

    iput-object p3, p0, Leom;->e:Ljew;

    iput-object p5, p0, Leom;->j:Lkog;

    return-void
.end method

.method private static final f(Lbgj;Lbga;)V
    .locals 0

    invoke-virtual {p0, p1}, Lbgj;->q(Lbga;)Z

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lbgj;->o(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    iget-object v0, p0, Leom;->d:Leqg;

    if-eqz v0, :cond_5

    iget-object v0, p0, Leom;->a:Ljava/util/List;

    sget-object v1, Lnjs;->e:Lnjs;

    invoke-virtual {v1}, Lnws;->O()Lnwn;

    move-result-object v1

    iget v2, p0, Leom;->k:I

    iget-object v3, v1, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_0
    iget-object v3, v1, Lnwn;->b:Lnws;

    check-cast v3, Lnjs;

    add-int/lit8 v4, v2, -0x1

    if-eqz v2, :cond_4

    iput v4, v3, Lnjs;->c:I

    iget v2, v3, Lnjs;->a:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v3, Lnjs;->a:I

    iget-object v2, p0, Leom;->d:Leqg;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Leqg;->ordinal()I

    move-result v2

    iget-object v3, v1, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_1
    iget-object v3, v1, Lnwn;->b:Lnws;

    move-object v4, v3

    check-cast v4, Lnjs;

    iget v5, v4, Lnjs;->a:I

    or-int/lit8 v5, v5, 0x1

    iput v5, v4, Lnjs;->a:I

    iput v2, v4, Lnjs;->b:I

    iget-object v2, p0, Lhsc;->h:Lhsb;

    if-eqz v2, :cond_2

    iget v2, v2, Lhsb;->d:I

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_3
    iget-object v3, v1, Lnwn;->b:Lnws;

    check-cast v3, Lnjs;

    iget v4, v3, Lnjs;->a:I

    or-int/lit8 v4, v4, 0x4

    iput v4, v3, Lnjs;->a:I

    iput v2, v3, Lnjs;->d:I

    invoke-virtual {v1}, Lnwn;->i()Lnws;

    move-result-object v1

    check-cast v1, Lnjs;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_4
    const/4 v0, 0x0

    throw v0

    :cond_5
    return-void
.end method

.method public final b(Leqg;I)V
    .locals 19

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v0, p2

    iput v0, v6, Leom;->k:I

    const/4 v0, 0x0

    iput-object v0, v6, Leom;->d:Leqg;

    const/4 v8, 0x0

    iput-boolean v8, v6, Leom;->c:Z

    iget-object v0, v6, Leom;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, v6, Leom;->g:Landroid/content/Context;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Lbgj;

    invoke-direct {v10}, Lbgj;-><init>()V

    iget-object v1, v6, Leom;->j:Lkog;

    invoke-virtual {v1}, Lkog;->j()Z

    move-result v1

    const/4 v2, 0x1

    if-eq v2, v1, :cond_0

    const/high16 v1, 0x7f130000

    goto :goto_0

    :cond_0
    const v1, 0x7f130001

    :goto_0
    invoke-static {v0, v1}, Lbgd;->c(Landroid/content/Context;I)Lbgp;

    move-result-object v1

    iget-object v1, v1, Lbgp;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Lbga;

    invoke-static {v10, v1}, Leom;->f(Lbgj;Lbga;)V

    new-instance v11, Lbgj;

    invoke-direct {v11}, Lbgj;-><init>()V

    iget-object v1, v6, Leom;->j:Lkog;

    invoke-virtual {v1}, Lkog;->j()Z

    move-result v1

    if-eq v2, v1, :cond_1

    const v1, 0x7f130022

    goto :goto_1

    :cond_1
    const v1, 0x7f130023

    :goto_1
    invoke-static {v0, v1}, Lbgd;->c(Landroid/content/Context;I)Lbgp;

    move-result-object v1

    iget-object v1, v1, Lbgp;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Lbga;

    invoke-static {v11, v1}, Leom;->f(Lbgj;Lbga;)V

    new-instance v1, Ljava/util/EnumMap;

    const-class v2, Leqg;

    invoke-direct {v1, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v2, Leqg;->c:Leqg;

    sget-object v3, Leqg;->c:Leqg;

    const v4, 0x7f1402d0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lhsa;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    const v4, 0x7f1402cd

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v10}, Ligo;->j(Ljava/lang/Object;)Ligo;

    move-result-object v4

    const v12, 0x7f1402d1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ligo;->i(Ljava/lang/Object;)Ligo;

    move-result-object v12

    const v8, 0x7f1402d2

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ligo;->i(Ljava/lang/Object;)Ligo;

    move-result-object v8

    const v7, 0x7f1402d3

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ligo;->i(Ljava/lang/Object;)Ligo;

    move-result-object v7

    invoke-static {v4, v12, v8, v7}, Lmvv;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmvv;

    move-result-object v4

    const v7, 0x7f1402ce

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    const v7, 0x7f1402cc

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    const v7, 0x7f1402dd

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object v12, v15

    move-object v8, v15

    move-object v15, v4

    invoke-direct/range {v12 .. v18}, Lhsa;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3, v5, v8}, Leol;->a(Leqg;Ljava/lang/String;Lhsa;)Leol;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Leqg;->b:Leqg;

    const v3, 0x7f1402d9

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lhsa;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    const v3, 0x7f1402d6

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v11}, Ligo;->j(Ljava/lang/Object;)Ligo;

    move-result-object v3

    const v8, 0x7f1402da

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ligo;->i(Ljava/lang/Object;)Ligo;

    move-result-object v8

    const v12, 0x7f1402db

    invoke-virtual {v0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ligo;->i(Ljava/lang/Object;)Ligo;

    move-result-object v12

    const v15, 0x7f1402dc

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ligo;->i(Ljava/lang/Object;)Ligo;

    move-result-object v15

    invoke-static {v3, v8, v12, v15}, Lmvv;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmvv;

    move-result-object v15

    const v3, 0x7f1402d7

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    const v3, 0x7f1402d5

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object v12, v5

    invoke-direct/range {v12 .. v18}, Lhsa;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v4, v5}, Leol;->a(Leqg;Ljava/lang/String;Lhsa;)Leol;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v6, Leom;->i:Ldhi;

    sget-object v2, Ldhx;->d:Ldhk;

    invoke-interface {v0, v2}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Leqg;->a(I)Leqg;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leol;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, v6, Leom;->i:Ldhi;

    sget-object v2, Ldhx;->f:Ldhj;

    invoke-interface {v0, v2}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    invoke-virtual/range {p0 .. p0}, Lhsc;->c()Landroid/view/View;

    move-result-object v7

    invoke-static {v9}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lefv;->e:Lefv;

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leol;

    iget-object v1, v1, Leol;->c:Lhsa;

    iget-object v1, v1, Lhsa;->d:Ljava/lang/Object;

    check-cast v1, Lmyu;

    iget v3, v1, Lmyu;->c:I

    new-instance v4, Leoj;

    invoke-direct {v4, v6, v10, v11}, Leoj;-><init>(Leom;Lbgj;Lbgj;)V

    new-instance v5, Leoi;

    invoke-direct {v5, v9, v0}, Leoi;-><init>(Ljava/util/List;I)V

    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual/range {v0 .. v5}, Lhsc;->d(Landroid/view/View;Ljava/util/List;ILmlb;Lmli;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v0

    invoke-static {v9}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v1

    new-instance v2, Ldaa;

    const/16 v3, 0x8

    move-object/from16 v4, p1

    invoke-direct {v2, v4, v3}, Ldaa;-><init>(Leqg;I)V

    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_6

    iput-object v4, v6, Leom;->b:Leqg;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Leol;

    iget-object v3, v3, Leol;->a:Leqg;

    invoke-virtual {v3, v4}, Leqg;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroidx/viewpager2/widget/ViewPager2;->d(IZ)V

    :cond_6
    new-instance v0, Leok;

    invoke-direct {v0, v11, v10, v7}, Leok;-><init>(Lbgj;Lbgj;Landroid/view/View;)V

    invoke-virtual {v7, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    new-instance v0, Landroidx/wear/ambient/AmbientMode$AmbientController;

    invoke-direct {v0, v6}, Landroidx/wear/ambient/AmbientMode$AmbientController;-><init>(Leom;)V

    const/4 v1, 0x2

    invoke-virtual {v6, v1, v7, v0}, Lhsc;->e(ILandroid/view/View;Landroidx/wear/ambient/AmbientMode$AmbientController;)V

    return-void
.end method
