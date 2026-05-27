.class public final Lcmn;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;

.field private final c:Loiw;

.field private final d:Loiw;


# direct methods
.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcmn;->a:Loiw;

    iput-object p2, p0, Lcmn;->b:Loiw;

    iput-object p3, p0, Lcmn;->c:Loiw;

    iput-object p4, p0, Lcmn;->d:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lcnf;
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcmn;->a:Loiw;

    check-cast v1, Ldwh;

    invoke-virtual {v1}, Ldwh;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcla;->b()Lmvv;

    move-result-object v1

    iget-object v2, v0, Lcmn;->b:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lkrn;

    iget-object v2, v0, Lcmn;->c:Loiw;

    check-cast v2, Lcix;

    invoke-virtual {v2}, Lcix;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    iget-object v2, v0, Lcmn;->d:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldhi;

    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    sget-object v7, Ldho;->bB:Ldhj;

    invoke-interface {v2, v7}, Ldhi;->l(Ldhj;)Z

    move-result v2

    invoke-static {}, Lmwn;->D()Lmwl;

    move-result-object v7

    invoke-static {}, Lmwa;->i()Lmvw;

    move-result-object v8

    invoke-static {}, Lmvv;->e()Lmvq;

    move-result-object v9

    invoke-static {}, Lmvv;->e()Lmvq;

    move-result-object v10

    const-string v11, "CREATE TABLE media_record(media_id INTEGER PRIMARY KEY, session_id INTEGER,source_id STRING NOT NULL,selection_key INTEGER NOT NULL,time INTEGER NOT NULL)"

    invoke-virtual {v7, v11}, Lmwl;->g(Ljava/lang/Object;)V

    const-string v11, "media_record"

    invoke-virtual {v10, v11}, Lmvq;->g(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lmvv;->s()Lnad;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcne;

    iget-object v12, v11, Lcne;->a:Ljava/lang/String;

    invoke-virtual {v10, v12}, Lmvq;->g(Ljava/lang/Object;)V

    iget-object v12, v11, Lcne;->a:Ljava/lang/String;

    iget-object v13, v11, Lcne;->c:Lcmt;

    invoke-virtual {v8, v12, v13}, Lmvw;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v12, 0x1

    new-array v13, v12, [Ljava/lang/Object;

    iget-object v14, v11, Lcne;->a:Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v14, v13, v15

    const-string v14, "CREATE TABLE %s(media_id INTEGER PRIMARY KEY, time INTEGER NOT NULL,value BLOB NOT NULL)"

    invoke-static {v14, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Lmwl;->g(Ljava/lang/Object;)V

    iget-object v13, v11, Lcne;->b:Lmvv;

    move-object v14, v13

    check-cast v14, Lmyu;

    iget v14, v14, Lmyu;->c:I

    :goto_1
    if-ge v15, v14, :cond_0

    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Lcnd;

    move-object/from16 v17, v1

    new-array v1, v12, [Ljava/lang/Object;

    iget-object v12, v11, Lcne;->a:Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v12, v1, v16

    const-string v12, "ALTER TABLE %s ADD "

    invoke-static {v12, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v12, v0, Lcnd;->a:Ljava/lang/String;

    iget-object v0, v0, Lcnd;->b:Ljava/lang/String;

    move-object/from16 v18, v11

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lmwl;->g(Ljava/lang/Object;)V

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v11, v18

    const/4 v12, 0x1

    goto :goto_1

    :cond_0
    move-object/from16 v17, v1

    move-object/from16 v0, p0

    goto :goto_0

    :cond_1
    invoke-virtual {v10}, Lmvq;->f()Lmvv;

    move-result-object v0

    invoke-virtual {v9, v0}, Lmvq;->h(Ljava/lang/Iterable;)V

    if-eqz v2, :cond_2

    const-string v0, "session"

    invoke-virtual {v9, v0}, Lmvq;->g(Ljava/lang/Object;)V

    const-string v0, "CREATE TABLE session(session_id INTEGER PRIMARY KEY, time INTEGER NOT NULL,value BLOB)"

    invoke-virtual {v7, v0}, Lmwl;->g(Ljava/lang/Object;)V

    :cond_2
    new-instance v0, Lcnf;

    invoke-virtual {v9}, Lmvq;->f()Lmvv;

    move-result-object v1

    invoke-virtual {v10}, Lmvq;->f()Lmvv;

    move-result-object v9

    invoke-virtual {v7}, Lmwl;->f()Lmwn;

    move-result-object v10

    invoke-virtual {v8}, Lmvw;->b()Lmwa;

    move-result-object v11

    move-object v2, v0

    move-object v7, v1

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    invoke-direct/range {v2 .. v10}, Lcnf;-><init>(Landroid/content/Context;Lkrn;Ljava/util/Random;Ljava/util/concurrent/ExecutorService;Lmvv;Lmvv;Ljava/util/Set;Lmwa;)V

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcmn;->a()Lcnf;

    move-result-object v0

    return-object v0
.end method
