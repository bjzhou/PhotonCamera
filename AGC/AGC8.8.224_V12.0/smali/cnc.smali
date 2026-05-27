.class public final Lcnc;
.super Ljava/lang/Object;


# static fields
.field private static final c:Ljava/lang/String;

.field private static final d:[C


# instance fields
.field public final a:Ljava/util/Map;

.field public final b:Ljava/lang/String;

.field private final e:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "media_id"

    const-string v1, "a"

    invoke-static {v1, v0}, Lcnc;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "selection_key"

    invoke-static {v1, v2}, Lcnc;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "time"

    invoke-static {v1, v3}, Lcnc;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",%s"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcnc;->c:Ljava/lang/String;

    const-string v0, "bcdefghijklmnopqrstuvwxyz"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcnc;->d:[C

    return-void
.end method

.method public constructor <init>(Lcnm;Lcnk;ILjava/util/Random;)V
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v0, Lcnc;->a:Ljava/util/Map;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcnc;->e:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Lj$/util/StringJoiner;

    const-string v6, ","

    invoke-direct {v5, v6}, Lj$/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    new-instance v6, Lj$/util/StringJoiner;

    const-string v7, " "

    invoke-direct {v6, v7}, Lj$/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    new-instance v8, Lj$/util/StringJoiner;

    const-string v9, " AND "

    invoke-direct {v8, v9}, Lj$/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    const-string v10, "a"

    const-string v11, "media_id"

    invoke-static {v10, v11}, Lcnc;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iget-object v13, v1, Lcnm;->h:Lnxa;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    const/4 v15, 0x0

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    const-string v14, "selection_key"

    move-object/from16 v18, v7

    if-eqz v16, :cond_9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v7, v16

    check-cast v7, Lcno;

    add-int/lit8 v16, v15, 0x1

    sget-object v23, Lcnc;->d:[C

    aget-char v15, v23, v15

    move-object/from16 v23, v13

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    iget-object v15, v7, Lcno;->a:Ljava/lang/String;

    move-object/from16 v24, v9

    iget-object v9, v0, Lcnc;->a:Ljava/util/Map;

    invoke-interface {v9, v15, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v25, v4

    const/4 v9, 0x3

    new-array v4, v9, [Ljava/lang/Object;

    const-string v9, "value"

    invoke-static {v13, v9}, Lcnc;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const/16 v17, 0x0

    aput-object v26, v4, v17

    const/16 v22, 0x1

    aput-object v13, v4, v22

    const/16 v21, 0x2

    aput-object v9, v4, v21

    const-string v9, "%s as %s_%s"

    invoke-static {v9, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lj$/util/StringJoiner;->add(Ljava/lang/CharSequence;)Lj$/util/StringJoiner;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v15, v4, v17

    aput-object v13, v4, v22

    aput-object v12, v4, v21

    invoke-static {v13, v11}, Lcnc;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x3

    aput-object v9, v4, v12

    const-string v9, "INNER JOIN %s %s ON %s=%s"

    invoke-static {v9, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lj$/util/StringJoiner;->add(Ljava/lang/CharSequence;)Lj$/util/StringJoiner;

    invoke-static {v13, v11}, Lcnc;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iget-object v4, v7, Lcno;->b:Lnxt;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v13, v9}, Lcnc;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v19, v4

    iget-object v4, v7, Lcno;->b:Lnxt;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcnh;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v9, v0, Lcnc;->e:Ljava/util/ArrayList;

    move-object/from16 v20, v7

    iget v7, v4, Lcnh;->a:I

    move-object/from16 v26, v11

    const/4 v11, 0x1

    if-ne v7, v11, :cond_0

    iget-object v4, v4, Lcnh;->b:Ljava/lang/Object;

    check-cast v4, Lcnj;

    goto :goto_2

    :cond_0
    sget-object v4, Lcnj;->b:Lcnj;

    :goto_2
    iget-object v4, v4, Lcnj;->a:Lnxa;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " ( "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/16 v21, 0x0

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v28, v4

    move-object/from16 v4, v27

    check-cast v4, Lcni;

    if-eqz v21, :cond_1

    move-object/from16 v21, v12

    const-string v12, " OR "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_1
    move-object/from16 v21, v12

    :goto_4
    iget v12, v4, Lcni;->a:I

    const/16 v22, 0x1

    and-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_6

    iget v12, v4, Lcni;->c:I

    move-object/from16 v27, v13

    const/16 v13, 0x64

    if-ge v12, v13, :cond_5

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " = ? AND (("

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10, v14}, Lcnc;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " % 100) IN ( "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v12, v14

    iget-wide v13, v4, Lcni;->b:J

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v13, Ljava/util/LinkedHashSet;

    invoke-direct {v13}, Ljava/util/LinkedHashSet;-><init>()V

    const/4 v14, 0x0

    :goto_5
    move-object/from16 v30, v11

    iget v11, v4, Lcni;->c:I

    if-ge v14, v11, :cond_4

    if-lez v14, :cond_2

    const-string v11, " , "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v11, "CAST(? as INTEGER)"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v11, 0x64

    invoke-virtual {v3, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v29

    const/16 v22, 0x1

    add-int/lit8 v29, v29, 0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    move-object/from16 v11, v29

    :goto_6
    invoke-interface {v13, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_3

    const/16 v11, 0x64

    invoke-virtual {v3, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v29

    add-int/lit8 v29, v29, 0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    move-object/from16 v11, v29

    const/16 v22, 0x1

    goto :goto_6

    :cond_3
    const/16 v29, 0x64

    invoke-interface {v13, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v11, v30

    goto :goto_5

    :cond_4
    const-string v4, " ))) "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v14, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v27

    move-object/from16 v4, v28

    move-object/from16 v11, v30

    const/16 v21, 0x1

    goto/16 :goto_3

    :cond_5
    move-object/from16 v30, v11

    goto :goto_7

    :cond_6
    move-object/from16 v30, v11

    move-object/from16 v27, v13

    :goto_7
    move-object v12, v14

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " = ? "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v13, v4, Lcni;->b:J

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v14, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v27

    move-object/from16 v4, v28

    move-object/from16 v11, v30

    const/16 v21, 0x1

    goto/16 :goto_3

    :cond_7
    move-object/from16 v21, v12

    move-object/from16 v27, v13

    move-object v12, v14

    const-string v4, " ) "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Lj$/util/StringJoiner;->add(Ljava/lang/CharSequence;)Lj$/util/StringJoiner;

    move-object/from16 v4, v19

    move-object/from16 v7, v20

    move-object/from16 v12, v21

    move-object/from16 v11, v26

    goto/16 :goto_1

    :cond_8
    move-object/from16 v26, v11

    move-object/from16 v21, v12

    move/from16 v15, v16

    move-object/from16 v7, v18

    move-object/from16 v13, v23

    move-object/from16 v9, v24

    move-object/from16 v4, v25

    goto/16 :goto_0

    :cond_9
    move-object/from16 v25, v4

    move-object/from16 v24, v9

    move-object/from16 v26, v11

    move-object v12, v14

    iget v3, v1, Lcnm;->d:I

    invoke-static {v3}, Ldgw;->f(I)I

    move-result v4

    if-nez v4, :cond_a

    const/4 v4, 0x1

    :cond_a
    invoke-static {v3}, Ldgw;->f(I)I

    move-result v3

    const-wide/16 v13, 0x0

    if-nez v3, :cond_b

    goto :goto_8

    :cond_b
    const/4 v7, 0x2

    if-ne v3, v7, :cond_d

    iget v3, v2, Lcnk;->a:I

    if-ne v3, v7, :cond_c

    iget-object v2, v2, Lcnk;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_9

    :cond_c
    move-wide v2, v13

    goto :goto_9

    :cond_d
    :goto_8
    iget v3, v2, Lcnk;->a:I

    const/4 v7, 0x1

    if-ne v3, v7, :cond_e

    iget-object v2, v2, Lcnk;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_9

    :cond_e
    move-wide v2, v13

    :goto_9
    invoke-virtual {v8}, Lj$/util/StringJoiner;->length()I

    move-result v7

    if-lez v7, :cond_f

    move-object/from16 v7, v25

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v8, v24

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_f
    move-object/from16 v7, v25

    :goto_a
    const/4 v8, 0x2

    if-eq v4, v8, :cond_10

    move-object/from16 v11, v26

    goto :goto_b

    :cond_10
    move-object v11, v12

    :goto_b
    invoke-static {v10, v11}, Lcnc;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcnm;->d:I

    invoke-static {v4}, Ldgw;->f(I)I

    move-result v4

    if-nez v4, :cond_11

    goto :goto_c

    :cond_11
    const/4 v8, 0x4

    if-ne v4, v8, :cond_12

    cmp-long v4, v2, v13

    if-lez v4, :cond_12

    const-string v4, " < ?"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    :cond_12
    :goto_c
    const-string v4, " > ?"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_d
    iget-object v4, v0, Lcnc;->e:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v2, v1, Lcnm;->a:I

    if-lez v2, :cond_13

    const-string v2, " AND (("

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, v12

    invoke-static {v10, v2}, Lcnc;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " % ?) BETWEEN CAST(? as INTEGER) AND CAST(? as INTEGER))"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcnc;->e:Ljava/util/ArrayList;

    iget v3, v1, Lcnm;->a:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcnc;->e:Ljava/util/ArrayList;

    iget v3, v1, Lcnm;->b:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcnc;->e:Ljava/util/ArrayList;

    iget v3, v1, Lcnm;->c:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    iget-object v2, v1, Lcnm;->e:Lnyy;

    if-nez v2, :cond_14

    sget-object v2, Lnyy;->c:Lnyy;

    :cond_14
    iget-wide v2, v2, Lnyy;->a:J

    iget-object v4, v1, Lcnm;->f:Lnyy;

    if-nez v4, :cond_15

    sget-object v4, Lnyy;->c:Lnyy;

    :cond_15
    cmp-long v8, v2, v13

    iget-wide v13, v4, Lnyy;->a:J

    if-nez v8, :cond_16

    const-wide/16 v2, 0x0

    goto :goto_e

    :cond_16
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v8, v1, Lcnm;->e:Lnyy;

    if-nez v8, :cond_17

    sget-object v8, Lnyy;->c:Lnyy;

    :cond_17
    iget v8, v8, Lnyy;->b:I

    int-to-long v8, v8

    invoke-virtual {v4, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    add-long/2addr v2, v8

    :goto_e
    const-wide/16 v8, 0x0

    cmp-long v4, v13, v8

    if-nez v4, :cond_18

    const-wide v8, 0x7fffffffffffffffL

    goto :goto_f

    :cond_18
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v13, v14}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v12, v1, Lcnm;->f:Lnyy;

    if-nez v12, :cond_19

    sget-object v12, Lnyy;->c:Lnyy;

    :cond_19
    iget v12, v12, Lnyy;->b:I

    int-to-long v12, v12

    invoke-virtual {v4, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v12

    add-long/2addr v8, v12

    :goto_f
    const-string v4, " AND ("

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "time"

    invoke-static {v10, v4}, Lcnc;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " BETWEEN CAST(? as INTEGER) AND CAST(? as INTEGER))"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcnc;->e:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcnc;->e:Ljava/util/ArrayList;

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, " ORDER BY "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10, v11}, Lcnc;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v18

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcnm;->d:I

    invoke-static {v1}, Ldgw;->f(I)I

    move-result v1

    if-nez v1, :cond_1a

    const/4 v1, 0x1

    :cond_1a
    const/4 v2, 0x4

    if-eq v1, v2, :cond_1b

    const-string v1, "ASC"

    goto :goto_10

    :cond_1b
    const-string v1, "DESC"

    :goto_10
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " LIMIT ?"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcnc;->e:Ljava/util/ArrayList;

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcnc;->c:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v4, v8

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    const-string v2, "FROM media_record a"

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object v6, v1, v2

    const/4 v2, 0x3

    aput-object v7, v1, v2

    const-string v2, "%s %s %s WHERE %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcnc;->b:Ljava/lang/String;

    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const-string p0, "%s.%s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcnc;->e:Ljava/util/ArrayList;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method
