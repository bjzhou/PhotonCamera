.class public final Lbfl;
.super Ljava/lang/Object;


# static fields
.field static final a:Ljava/util/Set;

.field public static final synthetic b:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "xml:lang"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "rdf:resource"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "rdf:ID"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "rdf:bagID"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "rdf:nodeID"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lbfl;->a:Ljava/util/Set;

    return-void
.end method

.method public static final a(Lbfi;ILbff;Lbew;Ljava/io/OutputStreamWriter;Lbft;II)V
    .locals 18

    move/from16 v0, p1

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-virtual/range {p0 .. p0}, Lbfi;->h()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lbfi;

    invoke-static {v13}, Lbfl;->i(Lbfi;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v13, Lbfi;->a:Ljava/lang/String;

    const-string v2, "[]"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v14, 0x1

    if-ne v14, v2, :cond_1

    const-string v1, "rdf:li"

    :cond_1
    move-object v15, v1

    invoke-static {v0, v10, v11}, Lbfl;->g(ILjava/io/OutputStreamWriter;Lbft;)V

    const/16 v1, 0x3c

    invoke-virtual {v10, v1}, Ljava/io/OutputStreamWriter;->write(I)V

    invoke-virtual {v10, v15}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v13}, Lbfi;->i()Ljava/util/Iterator;

    move-result-object v1

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbfi;

    sget-object v5, Lbfl;->a:Ljava/util/Set;

    iget-object v6, v4, Lbfi;->a:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    iget-object v3, v4, Lbfi;->a:Ljava/lang/String;

    const-string v5, "rdf:resource"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v5, 0x20

    invoke-virtual {v10, v5}, Ljava/io/OutputStreamWriter;->write(I)V

    iget-object v5, v4, Lbfi;->a:Ljava/lang/String;

    invoke-virtual {v10, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    const-string v5, "=\""

    invoke-virtual {v10, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    iget-object v4, v4, Lbfi;->b:Ljava/lang/String;

    invoke-static {v4, v14, v10}, Lbfl;->k(Ljava/lang/String;ZLjava/io/OutputStreamWriter;)V

    const/16 v4, 0x22

    invoke-virtual {v10, v4}, Ljava/io/OutputStreamWriter;->write(I)V

    goto :goto_1

    :cond_3
    const-string v1, " rdf:parseType=\"Resource\">"

    const/16 v8, 0x3e

    if-eqz v2, :cond_5

    invoke-virtual {v10, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-static/range {p4 .. p5}, Lbfl;->h(Ljava/io/OutputStreamWriter;Lbft;)V

    add-int/lit8 v16, v0, 0x1

    const/4 v2, 0x1

    move-object v1, v13

    move/from16 v3, v16

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    const/16 v9, 0x3e

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-static/range {v1 .. v9}, Lbfl;->b(Lbfi;ZILbff;Lbew;Ljava/io/OutputStreamWriter;Lbft;II)V

    invoke-virtual {v13}, Lbfi;->i()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbfi;

    const/4 v2, 0x0

    move/from16 v3, v16

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-static/range {v1 .. v9}, Lbfl;->b(Lbfi;ZILbff;Lbew;Ljava/io/OutputStreamWriter;Lbft;II)V

    goto :goto_2

    :cond_4
    const/4 v1, 0x1

    goto/16 :goto_7

    :cond_5
    invoke-virtual {v13}, Lbfi;->g()Lbfs;

    move-result-object v2

    invoke-virtual {v2}, Lbfs;->l()Z

    move-result v2

    const-string v8, "/>"

    if-nez v2, :cond_9

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v13}, Lbfi;->g()Lbfs;

    move-result-object v3

    invoke-virtual {v3}, Lbfs;->p()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v1, " rdf:resource=\""

    invoke-virtual {v10, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    iget-object v1, v13, Lbfi;->b:Ljava/lang/String;

    invoke-static {v1, v14, v10}, Lbfl;->k(Ljava/lang/String;ZLjava/io/OutputStreamWriter;)V

    const-string v1, "\"/>"

    invoke-virtual {v10, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-static/range {p4 .. p5}, Lbfl;->h(Ljava/io/OutputStreamWriter;Lbft;)V

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/16 v7, 0x3e

    goto :goto_4

    :cond_6
    iget-object v3, v13, Lbfi;->b:Ljava/lang/String;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_7

    const/16 v7, 0x3e

    goto :goto_3

    :cond_7
    const/16 v7, 0x3e

    invoke-virtual {v10, v7}, Ljava/io/OutputStreamWriter;->write(I)V

    iget-object v2, v13, Lbfi;->b:Ljava/lang/String;

    invoke-static {v2, v9, v10}, Lbfl;->k(Ljava/lang/String;ZLjava/io/OutputStreamWriter;)V

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_4

    :cond_8
    const/16 v7, 0x3e

    :goto_3
    invoke-virtual {v10, v8}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-static/range {p4 .. p5}, Lbfl;->h(Ljava/io/OutputStreamWriter;Lbft;)V

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_4
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v9

    aput-object v2, v3, v14

    move-object v2, v1

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    aget-object v2, v3, v14

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    move/from16 v17, v14

    move v14, v1

    move/from16 v1, v17

    goto/16 :goto_7

    :cond_9
    const/16 v7, 0x3e

    invoke-virtual {v13}, Lbfi;->g()Lbfs;

    move-result-object v2

    invoke-virtual {v2}, Lbfs;->d()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v10, v7}, Ljava/io/OutputStreamWriter;->write(I)V

    invoke-static/range {p4 .. p5}, Lbfl;->h(Ljava/io/OutputStreamWriter;Lbft;)V

    add-int/lit8 v8, v0, 0x1

    invoke-static {v13, v14, v8, v10, v11}, Lbfl;->l(Lbfi;ZILjava/io/OutputStreamWriter;Lbft;)V

    invoke-virtual {v13}, Lbfi;->g()Lbfs;

    move-result-object v1

    invoke-virtual {v1}, Lbfs;->i()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {v13}, Leu;->t(Lbfi;)V

    :cond_a
    add-int/lit8 v2, v0, 0x2

    move-object v1, v13

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    const/16 v14, 0x3e

    move/from16 v7, p6

    move v14, v8

    move/from16 v8, p7

    invoke-static/range {v1 .. v8}, Lbfl;->a(Lbfi;ILbff;Lbew;Ljava/io/OutputStreamWriter;Lbft;II)V

    invoke-static {v13, v9, v14, v10, v11}, Lbfl;->l(Lbfi;ZILjava/io/OutputStreamWriter;Lbft;)V

    const/4 v1, 0x1

    const/4 v14, 0x1

    goto/16 :goto_7

    :cond_b
    invoke-virtual {v13}, Lbfi;->h()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lbfi;

    invoke-static {v6}, Lbfl;->i(Lbfi;)Z

    move-result v6

    xor-int/lit8 v7, v6, 0x1

    or-int/2addr v4, v7

    or-int/2addr v5, v6

    if-eqz v5, :cond_c

    if-eqz v4, :cond_c

    :cond_d
    if-eqz v3, :cond_f

    if-nez v4, :cond_e

    goto :goto_5

    :cond_e
    new-instance v0, Lbeq;

    const-string v1, "Can\'t mix rdf:resource qualifier and element fields"

    const/16 v2, 0xca

    invoke-direct {v0, v1, v2}, Lbeq;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_f
    :goto_5
    invoke-virtual {v13}, Lbfi;->s()Z

    move-result v2

    if-nez v2, :cond_10

    const-string v1, " rdf:parseType=\"Resource\"/>"

    invoke-virtual {v10, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-static/range {p4 .. p5}, Lbfl;->h(Ljava/io/OutputStreamWriter;Lbft;)V

    goto/16 :goto_6

    :cond_10
    if-nez v4, :cond_11

    add-int/lit8 v2, v0, 0x1

    move-object v1, v13

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object v13, v8

    move/from16 v8, p7

    invoke-static/range {v1 .. v8}, Lbfl;->d(Lbfi;ILbff;Lbew;Ljava/io/OutputStreamWriter;Lbft;II)Z

    invoke-virtual {v10, v13}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-static/range {p4 .. p5}, Lbfl;->h(Ljava/io/OutputStreamWriter;Lbft;)V

    goto :goto_6

    :cond_11
    if-nez v5, :cond_12

    invoke-virtual {v10, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-static/range {p4 .. p5}, Lbfl;->h(Ljava/io/OutputStreamWriter;Lbft;)V

    add-int/lit8 v2, v0, 0x1

    move-object v1, v13

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-static/range {v1 .. v8}, Lbfl;->a(Lbfi;ILbff;Lbew;Ljava/io/OutputStreamWriter;Lbft;II)V

    const/4 v9, 0x1

    goto :goto_6

    :cond_12
    const/16 v1, 0x3e

    invoke-virtual {v10, v1}, Ljava/io/OutputStreamWriter;->write(I)V

    invoke-static/range {p4 .. p5}, Lbfl;->h(Ljava/io/OutputStreamWriter;Lbft;)V

    add-int/lit8 v9, v0, 0x1

    invoke-static {v9, v10, v11}, Lbfl;->g(ILjava/io/OutputStreamWriter;Lbft;)V

    const-string v1, "<rdf:Description"

    invoke-virtual {v10, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    add-int/lit8 v2, v0, 0x2

    move-object v1, v13

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-static/range {v1 .. v8}, Lbfl;->d(Lbfi;ILbff;Lbew;Ljava/io/OutputStreamWriter;Lbft;II)Z

    const-string v1, ">"

    invoke-virtual {v10, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-static/range {p4 .. p5}, Lbfl;->h(Ljava/io/OutputStreamWriter;Lbft;)V

    move-object v1, v13

    move v2, v9

    invoke-static/range {v1 .. v8}, Lbfl;->a(Lbfi;ILbff;Lbew;Ljava/io/OutputStreamWriter;Lbft;II)V

    invoke-static {v9, v10, v11}, Lbfl;->g(ILjava/io/OutputStreamWriter;Lbft;)V

    const-string v1, "</rdf:Description>"

    invoke-virtual {v10, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-static/range {p4 .. p5}, Lbfl;->h(Ljava/io/OutputStreamWriter;Lbft;)V

    const/4 v9, 0x1

    :goto_6
    move v14, v9

    const/4 v1, 0x1

    :goto_7
    if-eqz v14, :cond_0

    if-eqz v1, :cond_13

    invoke-static {v0, v10, v11}, Lbfl;->g(ILjava/io/OutputStreamWriter;Lbft;)V

    :cond_13
    const-string v1, "</"

    invoke-virtual {v10, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v10, v15}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    const/16 v1, 0x3e

    invoke-virtual {v10, v1}, Ljava/io/OutputStreamWriter;->write(I)V

    invoke-static/range {p4 .. p5}, Lbfl;->h(Ljava/io/OutputStreamWriter;Lbft;)V

    goto/16 :goto_0

    :cond_14
    return-void
.end method

.method public static final b(Lbfi;ZILbff;Lbew;Ljava/io/OutputStreamWriter;Lbft;II)V
    .locals 17

    move-object/from16 v9, p0

    move/from16 v10, p2

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    iget-object v0, v9, Lbfi;->a:Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string v0, "rdf:value"

    move-object v13, v0

    goto :goto_0

    :cond_0
    const-string v1, "[]"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "rdf:li"

    :cond_1
    move-object v13, v0

    :goto_0
    invoke-static {v10, v11, v12}, Lbfl;->g(ILjava/io/OutputStreamWriter;Lbft;)V

    const/16 v0, 0x3c

    invoke-virtual {v11, v0}, Ljava/io/OutputStreamWriter;->write(I)V

    invoke-virtual {v11, v13}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lbfi;->i()Ljava/util/Iterator;

    move-result-object v0

    const/4 v14, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/16 v4, 0x22

    const-string v5, "=\""

    const/16 v6, 0x20

    const/4 v15, 0x1

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbfi;

    sget-object v7, Lbfl;->a:Ljava/util/Set;

    iget-object v8, v3, Lbfi;->a:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    iget-object v2, v3, Lbfi;->a:Ljava/lang/String;

    const-string v7, "rdf:resource"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez p1, :cond_2

    invoke-virtual {v11, v6}, Ljava/io/OutputStreamWriter;->write(I)V

    iget-object v6, v3, Lbfi;->a:Ljava/lang/String;

    invoke-virtual {v11, v6}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    iget-object v3, v3, Lbfi;->b:Ljava/lang/String;

    invoke-static {v3, v15, v11}, Lbfl;->k(Ljava/lang/String;ZLjava/io/OutputStreamWriter;)V

    invoke-virtual {v11, v4}, Ljava/io/OutputStreamWriter;->write(I)V

    goto :goto_1

    :cond_4
    const/16 v0, 0xca

    const-string v3, " rdf:parseType=\"Resource\">"

    const/16 v8, 0x3e

    if-eqz v1, :cond_8

    if-nez p1, :cond_8

    if-nez v2, :cond_7

    invoke-virtual {v11, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-static/range {p5 .. p6}, Lbfl;->h(Ljava/io/OutputStreamWriter;Lbft;)V

    add-int/lit8 v14, v10, 0x1

    const/4 v1, 0x1

    move-object/from16 v0, p0

    move v2, v14

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-static/range {v0 .. v8}, Lbfl;->b(Lbfi;ZILbff;Lbew;Ljava/io/OutputStreamWriter;Lbft;II)V

    invoke-virtual/range {p0 .. p0}, Lbfi;->i()Ljava/util/Iterator;

    move-result-object v9

    :cond_5
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfi;

    sget-object v1, Lbfl;->a:Ljava/util/Set;

    iget-object v2, v0, Lbfi;->a:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x0

    move v2, v14

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-static/range {v0 .. v8}, Lbfl;->b(Lbfi;ZILbff;Lbew;Ljava/io/OutputStreamWriter;Lbft;II)V

    goto :goto_2

    :cond_6
    const/4 v14, 0x1

    goto/16 :goto_7

    :cond_7
    new-instance v1, Lbeq;

    const-string v2, "Can\'t mix rdf:resource and general qualifiers"

    invoke-direct {v1, v2, v0}, Lbeq;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lbfi;->g()Lbfs;

    move-result-object v1

    invoke-virtual {v1}, Lbfs;->l()Z

    move-result v1

    const-string v7, "/>"

    if-nez v1, :cond_c

    invoke-virtual/range {p0 .. p0}, Lbfi;->g()Lbfs;

    move-result-object v0

    invoke-virtual {v0}, Lbfs;->p()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, " rdf:resource=\""

    invoke-virtual {v11, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    iget-object v0, v9, Lbfi;->b:Ljava/lang/String;

    invoke-static {v0, v15, v11}, Lbfl;->k(Ljava/lang/String;ZLjava/io/OutputStreamWriter;)V

    const-string v0, "\"/>"

    invoke-virtual {v11, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-static/range {p5 .. p6}, Lbfl;->h(Ljava/io/OutputStreamWriter;Lbft;)V

    goto/16 :goto_7

    :cond_9
    iget-object v0, v9, Lbfi;->b:Ljava/lang/String;

    if-eqz v0, :cond_b

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v8, 0x3e

    goto :goto_3

    :cond_a
    const/16 v8, 0x3e

    invoke-virtual {v11, v8}, Ljava/io/OutputStreamWriter;->write(I)V

    iget-object v0, v9, Lbfi;->b:Ljava/lang/String;

    invoke-static {v0, v14, v11}, Lbfl;->k(Ljava/lang/String;ZLjava/io/OutputStreamWriter;)V

    const/4 v14, 0x1

    const/4 v15, 0x0

    goto/16 :goto_7

    :cond_b
    const/16 v8, 0x3e

    :goto_3
    invoke-virtual {v11, v7}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-static/range {p5 .. p6}, Lbfl;->h(Ljava/io/OutputStreamWriter;Lbft;)V

    goto/16 :goto_7

    :cond_c
    const/16 v8, 0x3e

    invoke-virtual/range {p0 .. p0}, Lbfi;->g()Lbfs;

    move-result-object v1

    invoke-virtual {v1}, Lbfs;->d()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {v11, v8}, Ljava/io/OutputStreamWriter;->write(I)V

    invoke-static/range {p5 .. p6}, Lbfl;->h(Ljava/io/OutputStreamWriter;Lbft;)V

    add-int/lit8 v7, v10, 0x1

    invoke-static {v9, v15, v7, v11, v12}, Lbfl;->l(Lbfi;ZILjava/io/OutputStreamWriter;Lbft;)V

    invoke-virtual/range {p0 .. p0}, Lbfi;->g()Lbfs;

    move-result-object v0

    invoke-virtual {v0}, Lbfs;->i()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static/range {p0 .. p0}, Leu;->t(Lbfi;)V

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lbfi;->h()Ljava/util/Iterator;

    move-result-object v16

    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfi;

    const/4 v1, 0x0

    add-int/lit8 v2, v10, 0x2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move v15, v7

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-static/range {v0 .. v8}, Lbfl;->b(Lbfi;ZILbff;Lbew;Ljava/io/OutputStreamWriter;Lbft;II)V

    move v7, v15

    const/16 v8, 0x3e

    const/4 v15, 0x1

    goto :goto_4

    :cond_e
    move v15, v7

    invoke-static {v9, v14, v15, v11, v12}, Lbfl;->l(Lbfi;ZILjava/io/OutputStreamWriter;Lbft;)V

    const/4 v14, 0x1

    const/4 v15, 0x1

    goto/16 :goto_7

    :cond_f
    if-nez v2, :cond_12

    invoke-virtual/range {p0 .. p0}, Lbfi;->s()Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, " rdf:parseType=\"Resource\"/>"

    invoke-virtual {v11, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-static/range {p5 .. p6}, Lbfl;->h(Ljava/io/OutputStreamWriter;Lbft;)V

    const/4 v15, 0x1

    goto/16 :goto_7

    :cond_10
    invoke-virtual {v11, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-static/range {p5 .. p6}, Lbfl;->h(Ljava/io/OutputStreamWriter;Lbft;)V

    invoke-virtual/range {p0 .. p0}, Lbfi;->h()Ljava/util/Iterator;

    move-result-object v9

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfi;

    const/4 v1, 0x0

    add-int/lit8 v2, v10, 0x1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-static/range {v0 .. v8}, Lbfl;->b(Lbfi;ZILbff;Lbew;Ljava/io/OutputStreamWriter;Lbft;II)V

    goto :goto_5

    :cond_11
    const/4 v14, 0x1

    const/4 v15, 0x1

    goto :goto_7

    :cond_12
    invoke-virtual/range {p0 .. p0}, Lbfi;->h()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbfi;

    invoke-static {v2}, Lbfl;->i(Lbfi;)Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-static/range {p5 .. p6}, Lbfl;->h(Ljava/io/OutputStreamWriter;Lbft;)V

    add-int/lit8 v3, v10, 0x1

    invoke-static {v3, v11, v12}, Lbfl;->g(ILjava/io/OutputStreamWriter;Lbft;)V

    invoke-virtual {v11, v6}, Ljava/io/OutputStreamWriter;->write(I)V

    iget-object v3, v2, Lbfi;->a:Ljava/lang/String;

    invoke-virtual {v11, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    iget-object v2, v2, Lbfi;->b:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v2, v3, v11}, Lbfl;->k(Ljava/lang/String;ZLjava/io/OutputStreamWriter;)V

    invoke-virtual {v11, v4}, Ljava/io/OutputStreamWriter;->write(I)V

    goto :goto_6

    :cond_13
    new-instance v1, Lbeq;

    const-string v2, "Can\'t mix rdf:resource and complex fields"

    invoke-direct {v1, v2, v0}, Lbeq;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_14
    const/4 v3, 0x1

    invoke-virtual {v11, v7}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-static/range {p5 .. p6}, Lbfl;->h(Ljava/io/OutputStreamWriter;Lbft;)V

    const/4 v15, 0x1

    :goto_7
    if-eqz v14, :cond_16

    if-eqz v15, :cond_15

    invoke-static {v10, v11, v12}, Lbfl;->g(ILjava/io/OutputStreamWriter;Lbft;)V

    :cond_15
    const-string v0, "</"

    invoke-virtual {v11, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v11, v13}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    const/16 v0, 0x3e

    invoke-virtual {v11, v0}, Ljava/io/OutputStreamWriter;->write(I)V

    invoke-static/range {p5 .. p6}, Lbfl;->h(Ljava/io/OutputStreamWriter;Lbft;)V

    :cond_16
    return-void
.end method

.method public static final c(Lbff;Lbew;Ljava/io/OutputStreamWriter;Lbft;II)V
    .locals 0

    const/16 p1, 0x22

    invoke-virtual {p2, p1}, Ljava/io/OutputStreamWriter;->write(I)V

    iget-object p0, p0, Lbff;->a:Lbfi;

    iget-object p0, p0, Lbfi;->a:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p3, 0x1

    invoke-static {p0, p3, p2}, Lbfl;->k(Ljava/lang/String;ZLjava/io/OutputStreamWriter;)V

    :cond_0
    invoke-virtual {p2, p1}, Ljava/io/OutputStreamWriter;->write(I)V

    return-void
.end method

.method public static final d(Lbfi;ILbff;Lbew;Ljava/io/OutputStreamWriter;Lbft;II)Z
    .locals 0

    invoke-virtual {p0}, Lbfi;->h()Ljava/util/Iterator;

    move-result-object p0

    const/4 p2, 0x1

    const/4 p3, 0x1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p6

    if-eqz p6, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lbfi;

    invoke-static {p6}, Lbfl;->i(Lbfi;)Z

    move-result p7

    if-eqz p7, :cond_0

    invoke-static {p4, p5}, Lbfl;->h(Ljava/io/OutputStreamWriter;Lbft;)V

    invoke-static {p1, p4, p5}, Lbfl;->g(ILjava/io/OutputStreamWriter;Lbft;)V

    iget-object p7, p6, Lbfi;->a:Ljava/lang/String;

    invoke-virtual {p4, p7}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    const-string p7, "=\""

    invoke-virtual {p4, p7}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    iget-object p6, p6, Lbfi;->b:Ljava/lang/String;

    invoke-static {p6, p2, p4}, Lbfl;->k(Ljava/lang/String;ZLjava/io/OutputStreamWriter;)V

    const/16 p6, 0x22

    invoke-virtual {p4, p6}, Ljava/io/OutputStreamWriter;->write(I)V

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    goto :goto_0

    :cond_1
    return p3
.end method

.method public static final e(Lbfi;Ljava/util/Set;Lbff;Lbew;Ljava/io/OutputStreamWriter;Lbft;II)V
    .locals 13

    move-object v0, p0

    invoke-virtual {p0}, Lbfi;->g()Lbfs;

    move-result-object v1

    invoke-virtual {v1}, Lbfs;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lbfi;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lbfi;->a:Ljava/lang/String;

    move-object v6, p1

    move-object v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    invoke-static/range {v4 .. v12}, Lbfl;->j(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lbff;Lbew;Ljava/io/OutputStreamWriter;Lbft;II)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lbfi;->g()Lbfs;

    move-result-object v1

    invoke-virtual {v1}, Lbfs;->o()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lbfi;->h()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbfi;

    iget-object v3, v2, Lbfi;->a:Ljava/lang/String;

    const/4 v4, 0x0

    move-object v5, p1

    move-object v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-static/range {v3 .. v11}, Lbfl;->j(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lbff;Lbew;Ljava/io/OutputStreamWriter;Lbft;II)V

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lbfi;->h()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lbfi;

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-static/range {v3 .. v10}, Lbfl;->e(Lbfi;Ljava/util/Set;Lbff;Lbew;Ljava/io/OutputStreamWriter;Lbft;II)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lbfi;->i()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lbfi;

    iget-object v3, v2, Lbfi;->a:Ljava/lang/String;

    const/4 v4, 0x0

    move-object v5, p1

    move-object v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-static/range {v3 .. v11}, Lbfl;->j(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lbff;Lbew;Ljava/io/OutputStreamWriter;Lbft;II)V

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-static/range {v2 .. v9}, Lbfl;->e(Lbfi;Ljava/util/Set;Lbff;Lbew;Ljava/io/OutputStreamWriter;Lbft;II)V

    goto :goto_3

    :cond_3
    return-void
.end method

.method public static final f(ILjava/io/OutputStreamWriter;)V
    .locals 1

    :goto_0
    if-lez p0, :cond_0

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/io/OutputStreamWriter;->write(I)V

    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final g(ILjava/io/OutputStreamWriter;Lbft;)V
    .locals 1

    :goto_0
    if-lez p0, :cond_0

    iget-object v0, p2, Lbft;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final h(Ljava/io/OutputStreamWriter;Lbft;)V
    .locals 0

    iget-object p1, p1, Lbft;->c:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    return-void
.end method

.method private static final i(Lbfi;)Z
    .locals 1

    invoke-virtual {p0}, Lbfi;->t()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lbfi;->g()Lbfs;

    move-result-object v0

    invoke-virtual {v0}, Lbfs;->p()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lbfi;->g()Lbfs;

    move-result-object v0

    invoke-virtual {v0}, Lbfs;->l()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lbfi;->a:Ljava/lang/String;

    const-string v0, "[]"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static final j(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lbff;Lbew;Ljava/io/OutputStreamWriter;Lbft;II)V
    .locals 13

    move-object v0, p0

    move-object v9, p2

    move-object/from16 v10, p5

    if-nez p1, :cond_2

    const/16 v1, 0x3a

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-object v11, v2

    goto :goto_0

    :cond_0
    const-string v0, ""

    move-object v11, v0

    :goto_0
    if-eqz v11, :cond_1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, ":"

    invoke-virtual {v11, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lbet;->a:Lcvm;

    invoke-virtual {v1, v0}, Lcvm;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object v0, v11

    move-object v1, v12

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-static/range {v0 .. v8}, Lbfl;->j(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lbff;Lbew;Ljava/io/OutputStreamWriter;Lbft;II)V

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    move-object v12, p1

    move-object v11, v0

    :goto_1
    invoke-interface {p2, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static/range {p5 .. p6}, Lbfl;->h(Ljava/io/OutputStreamWriter;Lbft;)V

    const/4 v0, 0x4

    move-object/from16 v1, p6

    invoke-static {v0, v10, v1}, Lbfl;->g(ILjava/io/OutputStreamWriter;Lbft;)V

    const-string v0, "xmlns:"

    invoke-virtual {v10, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    const-string v0, "=\""

    invoke-virtual {v10, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v10, v12}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    const/16 v0, 0x22

    invoke-virtual {v10, v0}, Ljava/io/OutputStreamWriter;->write(I)V

    invoke-interface {p2, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method private static final k(Ljava/lang/String;ZLjava/io/OutputStreamWriter;)V
    .locals 8

    sget v0, Lbey;->a:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_5

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3c

    const/16 v4, 0xd

    const/16 v5, 0xa

    const/16 v6, 0x9

    const/4 v7, 0x1

    if-eq v2, v3, :cond_1

    const/16 v3, 0x3e

    if-eq v2, v3, :cond_1

    const/16 v3, 0x26

    if-eq v2, v3, :cond_1

    if-eq v2, v6, :cond_1

    if-eq v2, v5, :cond_1

    if-eq v2, v4, :cond_1

    if-eqz p1, :cond_0

    const/16 v3, 0x22

    if-ne v2, v3, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    div-int/lit8 v2, v2, 0x3

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_4

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_3

    sparse-switch v2, :sswitch_data_0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    :sswitch_0
    const-string v2, "&gt;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    :sswitch_1
    const-string v2, "&lt;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    :sswitch_2
    const-string v2, "&amp;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    :sswitch_3
    if-eq v7, p1, :cond_2

    const-string v2, "\""

    goto :goto_3

    :cond_2
    const-string v2, "&quot;"

    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_3
    const-string v3, "&#x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v2, 0x3b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_5
    invoke-virtual {p2, p0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_3
        0x26 -> :sswitch_2
        0x3c -> :sswitch_1
        0x3e -> :sswitch_0
    .end sparse-switch
.end method

.method private static final l(Lbfi;ZILjava/io/OutputStreamWriter;Lbft;)V
    .locals 1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lbfi;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    invoke-static {p2, p3, p4}, Lbfl;->g(ILjava/io/OutputStreamWriter;Lbft;)V

    const/4 p2, 0x1

    if-eq p2, p1, :cond_2

    const-string p2, "</rdf:"

    goto :goto_1

    :cond_2
    const-string p2, "<rdf:"

    :goto_1
    invoke-virtual {p3, p2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p0}, Lbfi;->g()Lbfs;

    move-result-object p2

    invoke-virtual {p2}, Lbfs;->j()Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "Alt"

    invoke-virtual {p3, p2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lbfi;->g()Lbfs;

    move-result-object p2

    invoke-virtual {p2}, Lbfs;->k()Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "Seq"

    invoke-virtual {p3, p2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const-string p2, "Bag"

    invoke-virtual {p3, p2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    :goto_2
    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lbfi;->s()Z

    move-result p0

    if-nez p0, :cond_5

    const-string p0, "/>"

    invoke-virtual {p3, p0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    const-string p0, ">"

    invoke-virtual {p3, p0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    :goto_3
    invoke-static {p3, p4}, Lbfl;->h(Ljava/io/OutputStreamWriter;Lbft;)V

    return-void
.end method
