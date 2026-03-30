.class public final Lodq;
.super Lodj;
.source "PG"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final a:Ljava/lang/String;

.field public static final c:Ljava/lang/String;


# instance fields
.field public final d:Loeq;

.field public final e:Loeq;

.field private final f:Lony;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v2, "hit_time"

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    const-string v3, "hit_url"

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_2
    const-string v0, "hit_time"

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_5
    const-string v1, "CREATE TABLE IF NOT EXISTS %s ( \'%s\' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, \'%s\' INTEGER NOT NULL, \'%s\' TEXT NOT NULL, \'%s\' TEXT NOT NULL, \'%s\' INTEGER);"

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    sput-object v0, Lodq;->c:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_7
    const-string v4, "hit_string"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_8
    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    :goto_a
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const-string v5, "hit_app_id"

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_c
    const v1, 0x6

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const-string v1, "SELECT MAX(%s) FROM %s WHERE 1;"

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_e
    sput-object v0, Lodq;->a:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_f
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_10
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_12
    const-string v1, "hit_id"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_13
    const v0, 0x8

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_14
    const-string v1, "hits2"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_a

    nop

    nop

    :goto_16
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_17
    const-string v0, "hits2"

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_18
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    :cond_0
    goto/32 :goto_15

    nop

    :goto_19
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lodm;)V
    .locals 1

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    new-instance v0, Loeq;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_2
    invoke-direct {v0}, Loeq;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    iput-object v0, p0, Lodq;->f:Lony;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v0, Lony;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_5
    invoke-direct {v0, p0, p1}, Lony;-><init>(Lodq;Landroid/content/Context;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    iput-object v0, p0, Lodq;->e:Loeq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v0, Loeq;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-object v0, p0, Lodq;->d:Loeq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_9
    invoke-direct {p0, p1}, Lodj;-><init>(Lodm;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p1, p1, Lodm;->a:Landroid/content/Context;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {v0}, Loeq;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method final C(Ljava/lang/String;)Ljava/util/Map;
    .locals 7

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, v2}, Ljava/util/HashMap;-><init>(I)V

    goto/32 :goto_7

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_8

    nop

    nop

    :goto_5
    goto/32 :goto_18

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_7
    return-object p0

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_f

    nop

    nop

    :goto_9
    return-object p1

    nop

    nop

    :catch_0
    move-exception p1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_b
    if-nez v1, :cond_1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_c
    new-instance p0, Ljava/util/HashMap;

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_d
    const v1, 0x1a

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_e
    new-instance p0, Ljava/util/HashMap;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_f
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0, v0, p1}, Lodi;->o(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_12
    const-string v0, "Error parsing hit parameters"

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {p0, v2}, Ljava/util/HashMap;-><init>(I)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_14
    return-object p0

    nop

    nop

    nop

    :goto_15
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    if-nez v1, :cond_2

    nop

    nop

    nop

    nop

    invoke-static {p1, v0}, Lmf;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    :cond_2
    new-instance v0, Ljava/net/URI;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    nop

    invoke-virtual {v0}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    if-eqz v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    nop

    nop

    nop

    if-lez v1, :cond_5

    nop

    nop

    nop

    nop

    nop

    new-instance p1, Ljava/util/HashMap;

    nop

    nop

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const/16 v1, 0x3d

    nop

    nop

    nop

    invoke-static {v1}, Lrth;->b(C)Lrth;

    move-result-object v1

    nop

    nop

    const/16 v3, 0x26

    nop

    invoke-static {v3}, Lrth;->b(C)Lrth;

    move-result-object v3

    nop

    nop

    nop

    invoke-virtual {v3}, Lrth;->a()Lrth;

    move-result-object v3

    nop

    invoke-virtual {v3, v0}, Lrth;->d(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    nop

    if-eqz v3, :cond_5

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    check-cast v3, Ljava/lang/String;

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v3}, Lrth;->f(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v3

    nop

    nop

    nop

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    nop

    nop

    nop

    nop

    if-nez v4, :cond_4

    nop

    nop

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    const/4 v5, 0x2

    nop

    nop

    nop

    nop

    if-gt v4, v5, :cond_4

    nop

    nop

    nop

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    check-cast v4, Ljava/lang/String;

    nop

    nop

    nop

    nop

    invoke-static {v4}, Lolv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    nop

    nop

    nop

    nop

    nop

    if-ne v6, v5, :cond_3

    nop

    nop

    const/4 v5, 0x1

    nop

    nop

    nop

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    check-cast v3, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v3}, Lolv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    nop

    goto :goto_17

    nop

    nop

    nop

    nop

    nop

    :cond_3
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    :goto_17
    invoke-interface {p1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    nop

    nop

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    nop

    const-string v0, "bad parameter"

    nop

    nop

    nop

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_18
    const-string v0, "?"

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final D(J)V
    .locals 2

    goto/32 :goto_f

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_8

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_4
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const-string p2, "Deleting hit, id"

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_6
    const v1, 0xd

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_7
    invoke-virtual {p0, v0}, Lodq;->E(Ljava/util/List;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_13

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Lodj;->z()V

    goto/32 :goto_4

    nop

    nop

    :goto_c
    invoke-static {}, Lodf;->a()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_5

    nop

    nop

    :goto_f
    const v0, 0x11

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0, p2, p1}, Lodi;->r(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_12
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_c

    nop

    nop

    nop

    nop
.end method

.method public final E(Ljava/util/List;)V
    .locals 8

    goto/32 :goto_18

    nop

    nop

    :goto_0
    if-nez v3, :cond_0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_2b

    nop

    :goto_2
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    nop

    :try_start_0
    invoke-virtual {p0}, Lodq;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    nop

    nop

    const-string v1, "Deleting dispatched hits. count"

    nop

    nop

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v1, v2}, Lodi;->r(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "hits2"

    nop

    nop

    const/4 v2, 0x0

    nop

    invoke-virtual {v0, v1, v7, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    nop

    nop

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    if-eq v0, v1, :cond_1

    nop

    nop

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    nop

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    nop

    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    sget-object v4, Lcom/google/android/apps/camera/logging/PTc/RjdpW;->SZE:Ljava/lang/String;

    nop

    nop

    const/4 v3, 0x5

    nop

    nop

    nop

    nop

    nop

    move-object v2, p0

    nop

    nop

    nop

    invoke-super/range {v2 .. v7}, Lodi;->w(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_5
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_6
    add-int/lit8 v1, v1, 0x1

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_7
    goto/16 :goto_21

    nop

    nop

    :goto_8
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_9
    throw p0

    nop

    nop

    :goto_a
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_2

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2a

    nop

    :goto_c
    invoke-virtual {p0, v0, p1}, Lodi;->o(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_d
    sget-object p1, Lcom/google/android/build/data/ERtJ/cVlffQDuQRSSY;->TQUFPjxD:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_e
    const-string v1, "hit_id in ("

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_f
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_10
    check-cast v2, Ljava/lang/Long;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_12
    throw p1

    nop

    nop

    :goto_13
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_14
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_20

    nop

    nop

    :goto_16
    if-nez v2, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_3
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const-string v3, ","

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_18
    const v0, 0x17

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_1b
    const-string v0, "Error deleting hits"

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1c
    goto/16 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_f

    nop

    nop

    :goto_1e
    invoke-virtual {p0}, Lodj;->z()V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_20
    const/4 v1, 0x0

    nop

    :goto_21
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_4

    nop

    nop

    :goto_23
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_24
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_25
    invoke-static {}, Lodf;->a()V

    goto/32 :goto_1e

    nop

    nop

    :goto_26
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_28
    invoke-static {p1}, Lolx;->ag(Ljava/lang/Object;)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_29
    new-instance p0, Landroid/database/sqlite/SQLiteException;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_13

    nop

    :goto_2b
    goto/32 :goto_28

    nop

    nop

    :goto_2c
    cmp-long v3, v3, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2d
    const-wide/16 v5, 0x0

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_2e
    const v1, 0x5

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    if-gtz v1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_30
    const-string v1, ")"

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    if-nez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_32
    return-void

    nop

    nop

    :catch_0
    move-exception p1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_33
    if-lt v1, v2, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_6
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final F()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lodj;->z()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lodq;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop
.end method

.method public final G()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lodj;->z()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lodq;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop
.end method

.method final H()Z
    .locals 5

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto :goto_1

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

    :try_start_0
    const-string v3, "Database error"

    nop

    nop

    nop

    invoke-virtual {p0, v3, v1, v0}, Lodi;->p(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    throw v0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return p0

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const-wide/16 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v2, 0x0

    nop

    nop

    nop

    :try_start_1
    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    nop

    nop

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    nop

    nop

    nop

    if-eqz v0, :cond_1

    nop

    nop

    const/4 v0, 0x0

    nop

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    nop

    nop

    nop
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_9
    const-string v1, "SELECT COUNT(*) FROM hits2"

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_a
    if-nez v2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    nop

    :goto_b
    const v0, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_4

    nop

    :goto_e
    return v0

    nop

    nop

    nop

    nop

    nop

    :cond_1
    :try_start_2
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    nop

    nop

    const-string v3, "Database returned empty set"

    nop

    nop

    nop

    nop

    invoke-direct {v0, v3}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_f
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :goto_10
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Lodj;->z()V

    goto/32 :goto_1d

    nop

    nop

    :goto_12
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :goto_13
    goto/32 :goto_17

    nop

    nop

    :goto_14
    if-eqz p0, :cond_2

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_2
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_17
    throw p0

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_19
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_3

    nop

    :goto_1a
    cmp-long p0, v3, v1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1b
    if-nez v2, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_4
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static {}, Lodf;->a()V

    goto/32 :goto_11

    nop

    nop

    :goto_1d
    invoke-virtual {p0}, Lodq;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final a()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method final b()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6
    const v0, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    :try_start_0
    iget-object v0, p0, Lodq;->f:Lony;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lony;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const-string v1, "Error opening database"

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_a
    invoke-virtual {p0, v1, v0}, Lodi;->u(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_1

    nop

    nop

    :goto_b
    return-object p0

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x14

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final c(J)Ljava/util/List;
    .locals 13

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_2
    const v0, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto :goto_5

    nop

    :catch_0
    move-exception p1

    nop

    nop

    nop

    :try_start_0
    const-string p2, "Error loading hits from the database"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0, p2, p1}, Lodi;->o(Ljava/lang/String;Ljava/lang/Object;)V

    throw p1

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_5
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-gez v1, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    move v1, v3

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_b
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_d
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v1, 0x0

    nop

    nop

    nop

    :try_start_1
    const-string v5, "hits2"

    nop

    nop

    nop

    const-string v6, "hit_time"

    nop

    nop

    nop

    const-string v7, "hit_string"

    nop

    nop

    const-string v8, "hit_url"

    nop

    const-string v9, "hit_app_id"

    nop

    nop

    nop

    nop

    filled-new-array {v0, v6, v7, v8, v9}, [Ljava/lang/String;

    move-result-object v6

    nop

    const-string v7, "%s ASC"

    nop

    nop

    nop

    nop

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    nop

    invoke-static {v7, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    nop

    nop

    nop

    nop

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    nop

    const/4 v7, 0x0

    nop

    const/4 v8, 0x0

    nop

    nop

    nop

    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    const/4 v10, 0x0

    nop

    nop

    nop

    invoke-virtual/range {v4 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    nop

    nop

    nop

    nop

    new-instance p1, Ljava/util/ArrayList;

    nop

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    nop

    if-eqz p2, :cond_4

    nop

    :goto_10
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    nop

    nop

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    nop

    nop

    const/4 p2, 0x2

    nop

    invoke-interface {v1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    nop

    nop

    nop

    const/4 v0, 0x3

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    const/4 v4, 0x4

    nop

    nop

    nop

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    nop

    nop

    nop

    nop

    invoke-virtual {p0, p2}, Lodq;->C(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    nop

    nop

    nop

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    nop

    nop

    nop

    nop

    nop

    if-eqz p2, :cond_1

    nop

    nop

    nop

    nop

    nop

    :goto_11
    move v9, v3

    nop

    nop

    goto :goto_12

    nop

    nop

    nop

    nop

    :cond_1
    const-string p2, "http:"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    nop

    if-nez p2, :cond_2

    nop

    nop

    goto :goto_11

    nop

    :cond_2
    move v9, v2

    nop

    nop

    nop

    :goto_12
    new-instance p2, Loef;

    nop

    nop

    move-object v4, p2

    nop

    move-object v5, p0

    nop

    nop

    invoke-direct/range {v4 .. v12}, Loef;-><init>(Lodi;Ljava/util/Map;JZJI)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-nez v1, :cond_3

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_3
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {}, Lodf;->a()V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    return-object p1

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-eqz p2, :cond_4

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_4
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_17
    if-nez v1, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_5
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_18
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1a
    move v1, v2

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1d
    invoke-virtual {p0}, Lodq;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p0}, Lodj;->z()V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const-wide/16 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const-string v0, "hit_id"

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_23
    invoke-static {v1}, La;->au(Z)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-lez v0, :cond_6

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_1e

    nop

    :goto_25
    const/4 v3, 0x1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_26
    cmp-long v1, p1, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop
.end method

.method public final close()V
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2
    const v1, 0xf

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, v1, v0}, Lodi;->o(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_5
    const-string v1, "Error closing database"

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0, v1, v0}, Lodi;->o(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const-string v1, "Sql error closing database"

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_e
    :try_start_0
    iget-object v0, p0, Lodq;->f:Lony;

    nop

    nop

    nop

    invoke-virtual {v0}, Lony;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    :catch_1
    move-exception v0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method
