.class public final Laps;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/util/List;

.field public b:Ljava/util/concurrent/Executor;

.field public c:Laqs;

.field private final d:Landroid/content/Context;

.field private final e:Ljava/lang/Class;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/util/List;

.field private final h:Ljava/util/List;

.field private i:Ljava/util/concurrent/Executor;

.field private j:Z

.field private k:Z

.field private l:Z

.field private final m:Ljava/util/Set;

.field private n:Ljava/util/Set;

.field private final o:Lbkb;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laps;->d:Landroid/content/Context;

    iput-object p2, p0, Laps;->e:Ljava/lang/Class;

    iput-object p3, p0, Laps;->f:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Laps;->a:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Laps;->g:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Laps;->h:Ljava/util/List;

    const/4 p1, 0x1

    iput-boolean p1, p0, Laps;->k:Z

    new-instance p1, Lbkb;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2}, Lbkb;-><init>([B[B)V

    iput-object p1, p0, Laps;->o:Lbkb;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Laps;->m:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final a()Lapt;
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Laps;->b:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_0

    iget-object v2, v0, Laps;->i:Ljava/util/concurrent/Executor;

    if-nez v2, :cond_0

    sget-object v1, Lqk;->a:Ljava/util/concurrent/Executor;

    iput-object v1, v0, Laps;->i:Ljava/util/concurrent/Executor;

    iput-object v1, v0, Laps;->b:Ljava/util/concurrent/Executor;

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    iget-object v2, v0, Laps;->i:Ljava/util/concurrent/Executor;

    if-nez v2, :cond_1

    iput-object v1, v0, Laps;->i:Ljava/util/concurrent/Executor;

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    iget-object v1, v0, Laps;->i:Ljava/util/concurrent/Executor;

    iput-object v1, v0, Laps;->b:Ljava/util/concurrent/Executor;

    :cond_2
    :goto_0
    iget-object v1, v0, Laps;->n:Ljava/util/Set;

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    iget-object v4, v0, Laps;->m:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v2

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inconsistency detected. A Migration was supplied to addMigration(Migration... migrations) that has a start or end version equal to a start version supplied to fallbackToDestructiveMigrationFrom(int... startVersions). Start version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    iget-object v1, v0, Laps;->c:Laqs;

    if-nez v1, :cond_5

    new-instance v1, Lard;

    invoke-direct {v1}, Lard;-><init>()V

    :cond_5
    move-object v6, v1

    new-instance v1, Lapm;

    iget-object v4, v0, Laps;->d:Landroid/content/Context;

    iget-object v5, v0, Laps;->f:Ljava/lang/String;

    iget-object v7, v0, Laps;->o:Lbkb;

    iget-object v8, v0, Laps;->a:Ljava/util/List;

    iget-boolean v9, v0, Laps;->j:Z

    const-string v3, "activity"

    invoke-virtual {v4, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v3, Landroid/app/ActivityManager;

    invoke-virtual {v3}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v3

    const/4 v12, 0x3

    if-eq v2, v3, :cond_6

    const/4 v10, 0x3

    goto :goto_2

    :cond_6
    const/4 v3, 0x2

    const/4 v10, 0x2

    :goto_2
    iget-object v11, v0, Laps;->b:Ljava/util/concurrent/Executor;

    const-string v3, "Required value was null."

    if-eqz v11, :cond_20

    iget-object v15, v0, Laps;->i:Ljava/util/concurrent/Executor;

    if-eqz v15, :cond_1f

    iget-boolean v13, v0, Laps;->k:Z

    iget-boolean v14, v0, Laps;->l:Z

    iget-object v3, v0, Laps;->m:Ljava/util/Set;

    move-object/from16 v21, v15

    move-object v15, v3

    iget-object v3, v0, Laps;->g:Ljava/util/List;

    move-object/from16 v16, v3

    iget-object v3, v0, Laps;->h:Ljava/util/List;

    move-object/from16 v17, v3

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v3, v1

    move-object/from16 v12, v21

    invoke-direct/range {v3 .. v20}, Lapm;-><init>(Landroid/content/Context;Ljava/lang/String;Laqs;Lbkb;Ljava/util/List;ZILjava/util/concurrent/Executor;Ljava/util/concurrent/Executor;ZZLjava/util/Set;Ljava/util/List;Ljava/util/List;[B[B[B)V

    iget-object v3, v0, Laps;->e:Ljava/lang/Class;

    invoke-static {v3}, Laek;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lapt;

    invoke-virtual {v3, v1}, Lapt;->b(Lapm;)Laqt;

    move-result-object v4

    iput-object v4, v3, Lapt;->d:Laqt;

    invoke-virtual {v3}, Lapt;->g()Ljava/util/Set;

    move-result-object v4

    new-instance v5, Ljava/util/BitSet;

    invoke-direct {v5}, Ljava/util/BitSet;-><init>()V

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, -0x1

    if-eqz v6, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Class;

    iget-object v8, v1, Lapm;->l:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/2addr v8, v7

    if-ltz v8, :cond_9

    :goto_4
    add-int/lit8 v9, v8, -0x1

    iget-object v10, v1, Lapm;->l:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-virtual {v5, v8}, Ljava/util/BitSet;->set(I)V

    move v7, v8

    goto :goto_5

    :cond_7
    if-gez v9, :cond_8

    goto :goto_5

    :cond_8
    move v8, v9

    goto :goto_4

    :cond_9
    :goto_5
    if-ltz v7, :cond_a

    iget-object v8, v3, Lapt;->h:Ljava/util/Map;

    iget-object v9, v1, Lapm;->l:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v8, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A required auto migration spec ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") is missing in the database configuration."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b
    iget-object v4, v1, Lapm;->l:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v4, v7

    if-ltz v4, :cond_e

    :goto_6
    add-int/lit8 v6, v4, -0x1

    invoke-virtual {v5, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_d

    if-gez v6, :cond_c

    goto :goto_7

    :cond_c
    move v4, v6

    goto :goto_6

    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unexpected auto migration specs found. Annotate AutoMigrationSpec implementation with @ProvidedAutoMigrationSpec annotation or remove this spec from the builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e
    :goto_7
    iget-object v4, v3, Lapt;->h:Ljava/util/Map;

    invoke-virtual {v3, v4}, Lapt;->e(Ljava/util/Map;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_f
    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_12

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laqc;

    iget-object v8, v1, Lapm;->n:Lbkb;

    iget v9, v5, Laqc;->a:I

    iget v10, v5, Laqc;->b:I

    iget-object v8, v8, Lbkb;->a:Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    if-nez v8, :cond_10

    sget-object v8, Lojy;->a:Lojy;

    :cond_10
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f

    :cond_11
    iget-object v8, v1, Lapm;->n:Lbkb;

    new-array v9, v2, [Laqc;

    aput-object v5, v9, v6

    invoke-virtual {v8, v9}, Lbkb;->i([Laqc;)V

    goto :goto_8

    :cond_12
    invoke-virtual {v3}, Lapt;->c()Laqt;

    move-result-object v4

    const-class v5, Lapz;

    invoke-static {v5, v4}, Lapt;->v(Ljava/lang/Class;Laqt;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lapz;

    const/4 v5, 0x0

    if-nez v4, :cond_1e

    invoke-virtual {v3}, Lapt;->c()Laqt;

    move-result-object v4

    const-class v8, Lapf;

    invoke-static {v8, v4}, Lapt;->v(Ljava/lang/Class;Laqt;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lapf;

    if-nez v4, :cond_1d

    iget v4, v1, Lapm;->m:I

    const/4 v8, 0x3

    if-ne v4, v8, :cond_13

    const/4 v6, 0x1

    goto :goto_9

    :cond_13
    :goto_9
    invoke-virtual {v3}, Lapt;->c()Laqt;

    move-result-object v4

    check-cast v4, Larc;

    iget-object v8, v4, Larc;->f:Loja;

    invoke-interface {v8}, Loja;->b()Z

    move-result v8

    if-eqz v8, :cond_14

    invoke-virtual {v4}, Larc;->b()Larb;

    move-result-object v8

    invoke-static {v8, v6}, Lafj;->h(Landroid/database/sqlite/SQLiteOpenHelper;Z)V

    :cond_14
    iput-boolean v6, v4, Larc;->g:Z

    iget-object v4, v1, Lapm;->d:Ljava/util/List;

    iput-object v4, v3, Lapt;->g:Ljava/util/List;

    iget-object v4, v1, Lapm;->f:Ljava/util/concurrent/Executor;

    iput-object v4, v3, Lapt;->b:Ljava/util/concurrent/Executor;

    new-instance v4, Lbdp;

    iget-object v6, v1, Lapm;->g:Ljava/util/concurrent/Executor;

    invoke-direct {v4, v6, v2, v5}, Lbdp;-><init>(Ljava/util/concurrent/Executor;I[B)V

    iput-object v4, v3, Lapt;->c:Ljava/util/concurrent/Executor;

    iget-boolean v2, v1, Lapm;->e:Z

    iput-boolean v2, v3, Lapt;->f:Z

    invoke-virtual {v3}, Lapt;->f()Ljava/util/Map;

    move-result-object v2

    new-instance v4, Ljava/util/BitSet;

    invoke-direct {v4}, Ljava/util/BitSet;-><init>()V

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Class;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_15

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Class;

    iget-object v9, v1, Lapm;->k:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    add-int/2addr v9, v7

    if-ltz v9, :cond_18

    :goto_b
    add-int/lit8 v10, v9, -0x1

    iget-object v11, v1, Lapm;->k:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_16

    invoke-virtual {v4, v9}, Ljava/util/BitSet;->set(I)V

    goto :goto_d

    :cond_16
    if-gez v10, :cond_17

    goto :goto_c

    :cond_17
    move v9, v10

    goto :goto_b

    :cond_18
    :goto_c
    const/4 v9, -0x1

    :goto_d
    if-ltz v9, :cond_19

    iget-object v10, v3, Lapt;->k:Ljava/util/Map;

    iget-object v11, v1, Lapm;->k:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v10, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A required type converter ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is missing in the database configuration."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1a
    iget-object v2, v1, Lapm;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, v7

    if-ltz v2, :cond_1c

    :goto_e
    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v4, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_1b

    if-ltz v5, :cond_1c

    move v2, v5

    goto :goto_e

    :cond_1b
    iget-object v1, v1, Lapm;->k:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected type converter "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ". Annotate TypeConverter class with @ProvidedTypeConverter annotation or remove this converter from the builder."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1c
    return-object v3

    :cond_1d
    throw v5

    :cond_1e
    throw v5

    :cond_1f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_20
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_10

    :goto_f
    throw v1

    :goto_10
    goto :goto_f
.end method

.method public final varargs b([Laqc;)V
    .locals 4

    iget-object v0, p0, Laps;->n:Ljava/util/Set;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Laps;->n:Ljava/util/Set;

    goto :goto_0

    :cond_0
    :goto_0
    if-gtz v1, :cond_1

    aget-object v0, p1, v1

    iget-object v2, p0, Laps;->n:Ljava/util/Set;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, v0, Laqc;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Laps;->n:Ljava/util/Set;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, v0, Laqc;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Laps;->o:Lbkb;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Laqc;

    invoke-virtual {v0, p1}, Lbkb;->i([Laqc;)V

    return-void
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Laps;->j:Z

    return-void
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Laps;->k:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Laps;->l:Z

    return-void
.end method
