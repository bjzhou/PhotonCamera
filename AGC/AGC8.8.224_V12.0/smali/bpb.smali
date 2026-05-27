.class public final Lbpb;
.super Lbzg;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private A:Ljava/util/List;

.field private B:Lbpb;

.field private C:Lbpb;

.field private D:Ljava/lang/Float;

.field private E:Z

.field private F:Z

.field private G:Z

.field private final u:Landroid/content/Context;

.field private final v:Lbpd;

.field private final w:Ljava/lang/Class;

.field private final x:Lboq;

.field private y:Lbpe;

.field private z:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lbzp;

    invoke-direct {v0}, Lbzp;-><init>()V

    sget-object v1, Lbry;->b:Lbry;

    invoke-virtual {v0, v1}, Lbzg;->o(Lbry;)Lbzg;

    move-result-object v0

    check-cast v0, Lbzp;

    sget-object v1, Lbos;->d:Lbos;

    invoke-virtual {v0, v1}, Lbzg;->w(Lbos;)Lbzg;

    move-result-object v0

    check-cast v0, Lbzp;

    invoke-virtual {v0}, Lbzg;->L()Lbzg;

    move-result-object v0

    check-cast v0, Lbzp;

    return-void
.end method

.method protected constructor <init>(Lbol;Lbpd;Ljava/lang/Class;Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Lbzg;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbpb;->E:Z

    iput-object p2, p0, Lbpb;->v:Lbpd;

    iput-object p3, p0, Lbpb;->w:Ljava/lang/Class;

    iput-object p4, p0, Lbpb;->u:Landroid/content/Context;

    iget-object p4, p2, Lbpd;->a:Lbol;

    iget-object p4, p4, Lbol;->b:Lboq;

    iget-object v0, p4, Lboq;->d:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbpe;

    if-nez v0, :cond_1

    iget-object p4, p4, Lboq;->d:Ljava/util/Map;

    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_0
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbpe;

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    sget-object v0, Lboq;->a:Lbpe;

    :cond_2
    iput-object v0, p0, Lbpb;->y:Lbpe;

    iget-object p1, p1, Lbol;->b:Lboq;

    iput-object p1, p0, Lbpb;->x:Lboq;

    iget-object p1, p2, Lbpd;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lbzo;

    invoke-virtual {p0, p3}, Lbpb;->a(Lbzo;)Lbpb;

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Lbpd;->e()Lbzp;

    move-result-object p1

    invoke-virtual {p0, p1}, Lbpb;->b(Lbzg;)Lbpb;

    return-void
.end method

.method private final Q(Ljava/lang/Object;Lbzz;Lbzo;Lbzm;Lbpe;Lbos;IILbzg;Ljava/util/concurrent/Executor;)Lbzk;
    .locals 20

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p9

    iget-object v0, v11, Lbpb;->C:Lbpb;

    if-eqz v0, :cond_0

    new-instance v0, Lbzh;

    move-object/from16 v1, p4

    invoke-direct {v0, v12, v1}, Lbzh;-><init>(Ljava/lang/Object;Lbzm;)V

    move-object v5, v0

    move-object v14, v5

    goto :goto_0

    :cond_0
    move-object/from16 v1, p4

    const/4 v0, 0x0

    move-object v14, v0

    move-object v5, v1

    :goto_0
    iget-object v0, v11, Lbpb;->B:Lbpb;

    if-eqz v0, :cond_5

    iget-boolean v1, v11, Lbpb;->G:Z

    if-nez v1, :cond_4

    iget-object v1, v0, Lbpb;->y:Lbpe;

    iget-boolean v2, v0, Lbpb;->E:Z

    const/4 v15, 0x1

    if-ne v15, v2, :cond_1

    move-object/from16 v16, p5

    goto :goto_1

    :cond_1
    move-object/from16 v16, v1

    :goto_1
    const/16 v1, 0x8

    invoke-super {v0, v1}, Lbzg;->F(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, v0, Lbzg;->c:Lbos;

    move-object/from16 v17, v0

    goto :goto_3

    :cond_2
    sget-object v0, Lbpa;->b:[I

    invoke-virtual/range {p6 .. p6}, Lbos;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, v11, Lbzg;->c:Lbos;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "unknown priority: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object v0, Lbos;->a:Lbos;

    goto :goto_2

    :pswitch_1
    sget-object v0, Lbos;->b:Lbos;

    goto :goto_2

    :pswitch_2
    sget-object v0, Lbos;->c:Lbos;

    :goto_2
    move-object/from16 v17, v0

    :goto_3
    iget-object v0, v11, Lbpb;->B:Lbpb;

    iget v1, v0, Lbzg;->i:I

    iget v0, v0, Lbzg;->h:I

    invoke-static/range {p7 .. p8}, Lcaw;->n(II)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v11, Lbpb;->B:Lbpb;

    invoke-virtual {v2}, Lbzg;->G()Z

    move-result v2

    if-nez v2, :cond_3

    iget v0, v13, Lbzg;->i:I

    iget v1, v13, Lbzg;->h:I

    move/from16 v18, v0

    move/from16 v19, v1

    goto :goto_4

    :cond_3
    move/from16 v19, v0

    move/from16 v18, v1

    :goto_4
    new-instance v10, Lbzs;

    invoke-direct {v10, v12, v5}, Lbzs;-><init>(Ljava/lang/Object;Lbzm;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p9

    move-object v5, v10

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 p4, v10

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lbpb;->R(Ljava/lang/Object;Lbzz;Lbzo;Lbzg;Lbzm;Lbpe;Lbos;IILjava/util/concurrent/Executor;)Lbzk;

    move-result-object v10

    iput-boolean v15, v11, Lbpb;->G:Z

    iget-object v9, v11, Lbpb;->B:Lbpb;

    move-object v0, v9

    move-object/from16 v4, p4

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move/from16 v7, v18

    move/from16 v8, v19

    move-object v15, v10

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lbpb;->Q(Ljava/lang/Object;Lbzz;Lbzo;Lbzm;Lbpe;Lbos;IILbzg;Ljava/util/concurrent/Executor;)Lbzk;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v11, Lbpb;->G:Z

    move-object/from16 v1, p4

    iput-object v15, v1, Lbzs;->a:Lbzk;

    iput-object v0, v1, Lbzs;->b:Lbzk;

    move-object v15, v1

    goto :goto_5

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p9

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lbpb;->R(Ljava/lang/Object;Lbzz;Lbzo;Lbzg;Lbzm;Lbpe;Lbos;IILjava/util/concurrent/Executor;)Lbzk;

    move-result-object v10

    move-object v15, v10

    :goto_5
    if-nez v14, :cond_6

    return-object v15

    :cond_6
    iget-object v0, v11, Lbpb;->C:Lbpb;

    iget v1, v0, Lbzg;->i:I

    iget v0, v0, Lbzg;->h:I

    invoke-static/range {p7 .. p8}, Lcaw;->n(II)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, v11, Lbpb;->C:Lbpb;

    invoke-virtual {v2}, Lbzg;->G()Z

    move-result v2

    if-nez v2, :cond_7

    iget v0, v13, Lbzg;->i:I

    iget v1, v13, Lbzg;->h:I

    move v7, v0

    move v8, v1

    goto :goto_6

    :cond_7
    move v8, v0

    move v7, v1

    :goto_6
    iget-object v9, v11, Lbpb;->C:Lbpb;

    iget-object v5, v9, Lbpb;->y:Lbpe;

    iget-object v6, v9, Lbzg;->c:Lbos;

    move-object v0, v9

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v4, v14

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lbpb;->Q(Ljava/lang/Object;Lbzz;Lbzo;Lbzm;Lbpe;Lbos;IILbzg;Ljava/util/concurrent/Executor;)Lbzk;

    move-result-object v0

    iput-object v15, v14, Lbzh;->a:Lbzk;

    iput-object v0, v14, Lbzh;->b:Lbzk;

    return-object v14

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private final R(Ljava/lang/Object;Lbzz;Lbzo;Lbzg;Lbzm;Lbpe;Lbos;IILjava/util/concurrent/Executor;)Lbzk;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v7, p4

    move-object/from16 v14, p5

    move-object/from16 v10, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v16, p10

    iget-object v2, v0, Lbpb;->u:Landroid/content/Context;

    iget-object v1, v0, Lbpb;->x:Lboq;

    move-object v3, v1

    iget-object v5, v0, Lbpb;->z:Ljava/lang/Object;

    iget-object v6, v0, Lbpb;->w:Ljava/lang/Class;

    iget-object v13, v0, Lbpb;->A:Ljava/util/List;

    iget-object v15, v1, Lboq;->h:Llij;

    move-object/from16 v1, p6

    iget-object v1, v1, Lbpe;->a:Lbze;

    new-instance v21, Lbzr;

    move-object/from16 v1, v21

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v1 .. v20}, Lbzr;-><init>(Landroid/content/Context;Lboq;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lbzg;IILbos;Lbzz;Lbzo;Ljava/util/List;Lbzm;Llij;Ljava/util/concurrent/Executor;[B[B[B[B)V

    return-object v21
.end method

.method private final S(Lbzz;Lbzo;Lbzg;Ljava/util/concurrent/Executor;)V
    .locals 14

    move-object v11, p0

    move-object v12, p1

    move-object/from16 v13, p3

    invoke-static {p1}, Lbze;->v(Ljava/lang/Object;)V

    iget-boolean v0, v11, Lbpb;->F:Z

    if-eqz v0, :cond_3

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v4, 0x0

    iget-object v5, v11, Lbpb;->y:Lbpe;

    iget-object v6, v13, Lbzg;->c:Lbos;

    iget v7, v13, Lbzg;->i:I

    iget v8, v13, Lbzg;->h:I

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    invoke-direct/range {v0 .. v10}, Lbpb;->Q(Ljava/lang/Object;Lbzz;Lbzo;Lbzm;Lbpe;Lbos;IILbzg;Ljava/util/concurrent/Executor;)Lbzk;

    move-result-object v0

    invoke-interface {p1}, Lbzz;->c()Lbzk;

    move-result-object v1

    invoke-interface {v0, v1}, Lbzk;->m(Lbzk;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, v13, Lbzg;->g:Z

    if-nez v2, :cond_0

    invoke-interface {v1}, Lbzk;->l()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    invoke-static {v1}, Lbze;->v(Ljava/lang/Object;)V

    invoke-interface {v1}, Lbzk;->n()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v1}, Lbzk;->b()V

    :cond_1
    return-void

    :cond_2
    iget-object v1, v11, Lbpb;->v:Lbpd;

    invoke-virtual {v1, p1}, Lbpd;->f(Lbzz;)V

    invoke-interface {p1, v0}, Lbzz;->k(Lbzk;)V

    iget-object v1, v11, Lbpb;->v:Lbpd;

    invoke-virtual {v1, p1, v0}, Lbpd;->m(Lbzz;Lbzk;)V

    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must call #load() before calling #into()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(Lbzo;)Lbpb;
    .locals 1

    iget-boolean v0, p0, Lbzg;->q:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lbpb;->c()Lbpb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbpb;->a(Lbzo;)Lbpb;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lbpb;->A:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbpb;->A:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lbpb;->A:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {p0}, Lbzg;->O()V

    return-object p0
.end method

.method public final b(Lbzg;)Lbpb;
    .locals 0

    invoke-static {p1}, Lbze;->v(Ljava/lang/Object;)V

    invoke-super {p0, p1}, Lbzg;->h(Lbzg;)Lbzg;

    move-result-object p1

    check-cast p1, Lbpb;

    return-object p1
.end method

.method public final c()Lbpb;
    .locals 3

    invoke-super {p0}, Lbzg;->i()Lbzg;

    move-result-object v0

    check-cast v0, Lbpb;

    iget-object v1, v0, Lbpb;->y:Lbpe;

    invoke-virtual {v1}, Lbpe;->a()Lbpe;

    move-result-object v1

    iput-object v1, v0, Lbpb;->y:Lbpe;

    iget-object v1, v0, Lbpb;->A:Ljava/util/List;

    if-eqz v1, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, v0, Lbpb;->A:Ljava/util/List;

    :cond_0
    iget-object v1, v0, Lbpb;->B:Lbpb;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lbpb;->c()Lbpb;

    move-result-object v1

    iput-object v1, v0, Lbpb;->B:Lbpb;

    :cond_1
    iget-object v1, v0, Lbpb;->C:Lbpb;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lbpb;->c()Lbpb;

    move-result-object v1

    iput-object v1, v0, Lbpb;->C:Lbpb;

    :cond_2
    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lbpb;->c()Lbpb;

    move-result-object v0

    return-object v0
.end method

.method public final d(Landroid/graphics/drawable/Drawable;)Lbpb;
    .locals 1

    invoke-virtual {p0, p1}, Lbpb;->f(Ljava/lang/Object;)Lbpb;

    move-result-object p1

    sget-object v0, Lbry;->a:Lbry;

    invoke-static {v0}, Lbzp;->c(Lbry;)Lbzp;

    move-result-object v0

    invoke-virtual {p1, v0}, Lbpb;->b(Lbzg;)Lbpb;

    move-result-object p1

    return-object p1
.end method

.method public final e(Landroid/net/Uri;)Lbpb;
    .locals 6

    invoke-virtual {p0, p1}, Lbpb;->f(Ljava/lang/Object;)Lbpb;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v1, "android.resource"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object p1, p0, Lbpb;->u:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-virtual {v0, p1}, Lbzg;->A(Landroid/content/res/Resources$Theme;)Lbzg;

    move-result-object p1

    check-cast p1, Lbpb;

    iget-object v0, p0, Lbpb;->u:Landroid/content/Context;

    sget v1, Lcad;->b:I

    sget-object v1, Lcae;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcae;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbqb;

    if-nez v2, :cond_2

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "AppVersionSignature"

    const-string v5, "Cannot resolve info for"

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    new-instance v3, Lcah;

    invoke-direct {v3, v2}, Lcah;-><init>(Ljava/lang/Object;)V

    sget-object v2, Lcae;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v1, v3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lbqb;

    if-nez v2, :cond_2

    move-object v2, v3

    :cond_2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    new-instance v1, Lcad;

    invoke-direct {v1, v0, v2}, Lcad;-><init>(ILbqb;)V

    invoke-virtual {p1, v1}, Lbzg;->z(Lbqb;)Lbzg;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lbpb;

    :goto_2
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lbpb;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lbpb;

    invoke-super {p0, p1}, Lbzg;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbpb;->w:Ljava/lang/Class;

    iget-object v2, p1, Lbpb;->w:Ljava/lang/Class;

    invoke-static {v0, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbpb;->y:Lbpe;

    iget-object v2, p1, Lbpb;->y:Lbpe;

    invoke-virtual {v0, v2}, Lbpe;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbpb;->z:Ljava/lang/Object;

    iget-object v2, p1, Lbpb;->z:Ljava/lang/Object;

    invoke-static {v0, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbpb;->A:Ljava/util/List;

    iget-object v2, p1, Lbpb;->A:Ljava/util/List;

    invoke-static {v0, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbpb;->B:Lbpb;

    iget-object v2, p1, Lbpb;->B:Lbpb;

    invoke-static {v0, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbpb;->C:Lbpb;

    iget-object v2, p1, Lbpb;->C:Lbpb;

    invoke-static {v0, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lbpb;->D:Ljava/lang/Float;

    const/4 v0, 0x0

    invoke-static {v0, v0}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lbpb;->E:Z

    iget-boolean v2, p1, Lbpb;->E:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lbpb;->F:Z

    iget-boolean p1, p1, Lbpb;->F:Z

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final f(Ljava/lang/Object;)Lbpb;
    .locals 1

    iget-boolean v0, p0, Lbzg;->q:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lbpb;->c()Lbpb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbpb;->f(Ljava/lang/Object;)Lbpb;

    move-result-object p1

    return-object p1

    :cond_0
    iput-object p1, p0, Lbpb;->z:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lbpb;->F:Z

    invoke-virtual {p0}, Lbzg;->O()V

    return-object p0
.end method

.method public final g(Lbpb;)Lbpb;
    .locals 1

    iget-boolean v0, p0, Lbzg;->q:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lbpb;->c()Lbpb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbpb;->g(Lbpb;)Lbpb;

    move-result-object p1

    return-object p1

    :cond_0
    iput-object p1, p0, Lbpb;->B:Lbpb;

    invoke-virtual {p0}, Lbzg;->O()V

    return-object p0
.end method

.method public final bridge synthetic h(Lbzg;)Lbzg;
    .locals 0

    invoke-virtual {p0, p1}, Lbpb;->b(Lbzg;)Lbpb;

    move-result-object p1

    return-object p1
.end method

.method public final hashCode()I
    .locals 2

    invoke-super {p0}, Lbzg;->hashCode()I

    move-result v0

    iget-object v1, p0, Lbpb;->w:Ljava/lang/Class;

    invoke-static {v1, v0}, Lcaw;->d(Ljava/lang/Object;I)I

    move-result v0

    iget-object v1, p0, Lbpb;->y:Lbpe;

    invoke-static {v1, v0}, Lcaw;->d(Ljava/lang/Object;I)I

    move-result v0

    iget-object v1, p0, Lbpb;->z:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcaw;->d(Ljava/lang/Object;I)I

    move-result v0

    iget-object v1, p0, Lbpb;->A:Ljava/util/List;

    invoke-static {v1, v0}, Lcaw;->d(Ljava/lang/Object;I)I

    move-result v0

    iget-object v1, p0, Lbpb;->B:Lbpb;

    invoke-static {v1, v0}, Lcaw;->d(Ljava/lang/Object;I)I

    move-result v0

    iget-object v1, p0, Lbpb;->C:Lbpb;

    invoke-static {v1, v0}, Lcaw;->d(Ljava/lang/Object;I)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcaw;->d(Ljava/lang/Object;I)I

    move-result v0

    iget-boolean v1, p0, Lbpb;->E:Z

    invoke-static {v1, v0}, Lcaw;->c(II)I

    move-result v0

    iget-boolean v1, p0, Lbpb;->F:Z

    invoke-static {v1, v0}, Lcaw;->c(II)I

    move-result v0

    return v0
.end method

.method public final bridge synthetic i()Lbzg;
    .locals 1

    invoke-virtual {p0}, Lbpb;->c()Lbpb;

    move-result-object v0

    return-object v0
.end method

.method public final j()Lbzj;
    .locals 2

    new-instance v0, Lbzn;

    invoke-direct {v0}, Lbzn;-><init>()V

    sget-object v1, Lcao;->b:Ljava/util/concurrent/Executor;

    invoke-direct {p0, v0, v0, p0, v1}, Lbpb;->S(Lbzz;Lbzo;Lbzg;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public final k(Landroid/widget/ImageView;)Lcab;
    .locals 3

    invoke-static {}, Lcaw;->h()V

    invoke-static {p1}, Lbze;->v(Ljava/lang/Object;)V

    const/16 v0, 0x800

    invoke-super {p0, v0}, Lbzg;->F(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lbzg;->l:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lbpa;->a:[I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lbpb;->c()Lbpb;

    move-result-object v0

    invoke-virtual {v0}, Lbzg;->r()Lbzg;

    move-result-object v0

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0}, Lbpb;->c()Lbpb;

    move-result-object v0

    sget-object v1, Lbwm;->a:Lbwm;

    new-instance v2, Lbwu;

    invoke-direct {v2}, Lbwu;-><init>()V

    invoke-super {v0, v1, v2}, Lbzg;->s(Lbwm;Lbqj;)Lbzg;

    move-result-object v0

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Lbpb;->c()Lbpb;

    move-result-object v0

    invoke-virtual {v0}, Lbzg;->r()Lbzg;

    move-result-object v0

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0}, Lbpb;->c()Lbpb;

    move-result-object v0

    sget-object v1, Lbwm;->c:Lbwm;

    new-instance v2, Lbwb;

    invoke-direct {v2}, Lbwb;-><init>()V

    invoke-virtual {v0, v1, v2}, Lbzg;->t(Lbwm;Lbqj;)Lbzg;

    move-result-object v0

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_0
    move-object v0, p0

    :goto_1
    iget-object v1, p0, Lbpb;->x:Lboq;

    iget-object v2, p0, Lbpb;->w:Ljava/lang/Class;

    iget-object v1, v1, Lboq;->g:Lbze;

    const-class v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lbzu;

    invoke-direct {v1, p1}, Lbzu;-><init>(Landroid/widget/ImageView;)V

    goto :goto_2

    :cond_2
    const-class v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lbzw;

    invoke-direct {v1, p1}, Lbzw;-><init>(Landroid/widget/ImageView;)V

    :goto_2
    sget-object p1, Lcao;->a:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0, p1}, Lbpb;->S(Lbzz;Lbzo;Lbzg;Ljava/util/concurrent/Executor;)V

    return-object v1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", try .as*(Class).transcode(ResourceTranscoder)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final l(Lbzz;)V
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcao;->a:Ljava/util/concurrent/Executor;

    invoke-direct {p0, p1, v0, p0, v1}, Lbpb;->S(Lbzz;Lbzo;Lbzg;Ljava/util/concurrent/Executor;)V

    return-void
.end method
