.class public final Lndc;
.super Lncq;


# static fields
.field public static final a:Ljava/util/Set;

.field public static final b:Lncb;


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Ljava/util/logging/Level;

.field private final e:Ljava/util/Set;

.field private final f:Lncb;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    new-array v1, v1, [Lnbc;

    const/4 v2, 0x0

    sget-object v3, Lnao;->a:Lnbc;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lnbk;->a:Lnbc;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lndc;->a:Ljava/util/Set;

    invoke-static {v0}, Lnce;->a(Ljava/util/Set;)Lncb;

    move-result-object v0

    sput-object v0, Lndc;->b:Lncb;

    new-instance v0, Lnda;

    invoke-direct {v0}, Lnda;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/util/logging/Level;Ljava/util/Set;Lncb;)V
    .locals 0

    invoke-direct {p0, p2}, Lncq;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2, p3}, Lndd;->d(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lndc;->c:Ljava/lang/String;

    iput-object p4, p0, Lndc;->d:Ljava/util/logging/Level;

    iput-object p5, p0, Lndc;->e:Ljava/util/Set;

    iput-object p6, p0, Lndc;->f:Lncb;

    return-void
.end method

.method public static e(Lnbp;Ljava/lang/String;Ljava/util/logging/Level;Ljava/util/Set;Lncb;)V
    .locals 19

    move-object/from16 v0, p1

    invoke-static {}, Lncn;->f()Lnbu;

    move-result-object v1

    invoke-interface/range {p0 .. p0}, Lnbp;->j()Lnbu;

    move-result-object v2

    invoke-virtual {v2}, Lnbu;->b()I

    move-result v3

    if-nez v3, :cond_0

    sget-object v1, Lnck;->c:Lnck;

    goto :goto_0

    :cond_0
    const/16 v4, 0x1c

    if-gt v3, v4, :cond_1

    new-instance v3, Lnci;

    invoke-direct {v3, v1, v2}, Lnci;-><init>(Lnbu;Lnbu;)V

    move-object v1, v3

    goto :goto_0

    :cond_1
    new-instance v3, Lncj;

    invoke-direct {v3, v1, v2}, Lncj;-><init>(Lnbu;Lnbu;)V

    move-object v1, v3

    :goto_0
    invoke-interface/range {p0 .. p0}, Lnbp;->m()Ljava/util/logging/Level;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/logging/Level;->intValue()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Ljava/util/logging/Level;->intValue()I

    move-result v3

    const/4 v4, 0x0

    if-ge v2, v3, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_4

    sget v3, Lnco;->a:I

    invoke-interface/range {p0 .. p0}, Lnbp;->k()Lncp;

    move-result-object v3

    if-nez v3, :cond_4

    invoke-virtual {v1}, Lnck;->a()I

    move-result v3

    invoke-interface/range {p3 .. p3}, Ljava/util/Set;->size()I

    move-result v6

    if-gt v3, v6, :cond_4

    invoke-virtual {v1}, Lnck;->b()Ljava/util/Set;

    move-result-object v3

    move-object/from16 v6, p3

    invoke-interface {v6, v3}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface/range {p0 .. p0}, Lnbp;->l()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lnbs;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_14

    :cond_4
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v2, :cond_5

    invoke-interface/range {p0 .. p0}, Lnbp;->k()Lncp;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string v1, "(REDACTED) "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p0 .. p0}, Lnbp;->k()Lncp;

    move-result-object v1

    iget-object v1, v1, Lncp;->b:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_13

    :cond_5
    invoke-interface/range {p0 .. p0}, Lnbp;->k()Lncp;

    move-result-object v2

    if-eqz v2, :cond_34

    new-instance v2, Lndt;

    invoke-interface/range {p0 .. p0}, Lnbp;->k()Lncp;

    move-result-object v6

    invoke-interface/range {p0 .. p0}, Lnbp;->F()[Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v2, v6, v7, v3}, Lndt;-><init>(Lncp;[Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    invoke-virtual {v2}, Lndt;->c()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Lndw;->b(Ljava/lang/String;I)I

    move-result v7

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, -0x1

    :goto_3
    if-ltz v7, :cond_31

    add-int/lit8 v11, v7, 0x1

    move v12, v11

    const/4 v13, 0x0

    :goto_4
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v14

    const-string v15, "unterminated parameter"

    if-ge v12, v14, :cond_30

    add-int/lit8 v14, v12, 0x1

    invoke-virtual {v6, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    add-int/lit8 v4, v12, -0x30

    int-to-char v4, v4

    const/16 v5, 0xa

    if-ge v4, v5, :cond_7

    mul-int/lit8 v13, v13, 0xa

    add-int/2addr v13, v4

    const v4, 0xf4240

    if-ge v13, v4, :cond_6

    move v12, v14

    const/4 v4, 0x0

    goto :goto_4

    :cond_6
    const-string v0, "index too large"

    invoke-static {v0, v6, v7, v14}, Lndv;->b(Ljava/lang/String;Ljava/lang/String;II)Lndv;

    move-result-object v0

    throw v0

    :cond_7
    const/16 v4, 0x24

    const/16 v5, 0x30

    if-ne v12, v4, :cond_b

    add-int/lit8 v4, v14, -0x1

    sub-int/2addr v4, v11

    if-eqz v4, :cond_a

    invoke-virtual {v6, v11}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v5, :cond_9

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v14, v4, :cond_8

    add-int/lit8 v4, v14, 0x1

    invoke-virtual {v6, v14}, Ljava/lang/String;->charAt(I)C

    move v10, v13

    move v11, v14

    move v14, v4

    goto :goto_5

    :cond_8
    invoke-static {v15, v6, v7}, Lndv;->c(Ljava/lang/String;Ljava/lang/String;I)Lndv;

    move-result-object v0

    throw v0

    :cond_9
    const-string v0, "index has leading zero"

    invoke-static {v0, v6, v7, v14}, Lndv;->b(Ljava/lang/String;Ljava/lang/String;II)Lndv;

    move-result-object v0

    throw v0

    :cond_a
    const-string v0, "missing index"

    invoke-static {v0, v6, v7, v14}, Lndv;->b(Ljava/lang/String;Ljava/lang/String;II)Lndv;

    move-result-object v0

    throw v0

    :cond_b
    const/16 v4, 0x3c

    if-ne v12, v4, :cond_e

    if-eq v10, v8, :cond_d

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v14, v4, :cond_c

    add-int/lit8 v4, v14, 0x1

    invoke-virtual {v6, v14}, Ljava/lang/String;->charAt(I)C

    move v11, v14

    move v14, v4

    goto :goto_5

    :cond_c
    invoke-static {v15, v6, v7}, Lndv;->c(Ljava/lang/String;Ljava/lang/String;I)Lndv;

    move-result-object v0

    throw v0

    :cond_d
    const-string v0, "invalid relative parameter"

    invoke-static {v0, v6, v7, v14}, Lndv;->b(Ljava/lang/String;Ljava/lang/String;II)Lndv;

    move-result-object v0

    throw v0

    :cond_e
    add-int/lit8 v4, v9, 0x1

    move v10, v9

    move v9, v4

    :goto_5
    add-int/2addr v14, v8

    :goto_6
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v14, v4, :cond_2f

    invoke-virtual {v6, v14}, Ljava/lang/String;->charAt(I)C

    move-result v4

    and-int/lit8 v4, v4, -0x21

    add-int/lit8 v4, v4, -0x41

    int-to-char v4, v4

    const/16 v12, 0x1a

    if-ge v4, v12, :cond_2e

    invoke-virtual {v6, v14}, Ljava/lang/String;->charAt(I)C

    move-result v4

    and-int/lit8 v12, v4, 0x20

    if-nez v12, :cond_f

    const/4 v13, 0x1

    goto :goto_7

    :cond_f
    const/4 v13, 0x0

    :goto_7
    sget-object v15, Lnbm;->a:Lnbm;

    const/16 v15, 0x20

    if-ne v11, v14, :cond_10

    if-nez v13, :cond_10

    sget-object v5, Lnbm;->a:Lnbm;

    move/from16 v17, v9

    goto/16 :goto_b

    :cond_10
    const/4 v5, 0x1

    if-eq v5, v13, :cond_11

    const/4 v5, 0x0

    goto :goto_8

    :cond_11
    const/16 v5, 0x80

    :goto_8
    if-ne v11, v14, :cond_12

    new-instance v11, Lnbm;

    invoke-direct {v11, v5, v8, v8}, Lnbm;-><init>(III)V

    move/from16 v17, v9

    move-object v5, v11

    goto/16 :goto_b

    :cond_12
    add-int/lit8 v13, v11, 0x1

    invoke-virtual {v6, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const-string v8, "invalid flag"

    if-lt v11, v15, :cond_17

    const/16 v15, 0x30

    if-le v11, v15, :cond_13

    goto :goto_9

    :cond_13
    invoke-static {v11}, Lnbm;->a(C)I

    move-result v17

    if-gez v17, :cond_15

    const/16 v15, 0x2e

    if-ne v11, v15, :cond_14

    new-instance v8, Lnbm;

    invoke-static {v6, v13, v14}, Lnbm;->b(Ljava/lang/String;II)I

    move-result v11

    const/4 v15, -0x1

    invoke-direct {v8, v5, v15, v11}, Lnbm;-><init>(III)V

    move-object v5, v8

    move/from16 v17, v9

    goto :goto_b

    :cond_14
    const/4 v15, -0x1

    add-int/2addr v13, v15

    invoke-static {v8, v6, v13}, Lndv;->a(Ljava/lang/String;Ljava/lang/String;I)Lndv;

    move-result-object v0

    throw v0

    :cond_15
    const/4 v8, 0x1

    shl-int v11, v8, v17

    and-int v8, v5, v11

    if-nez v8, :cond_16

    or-int/2addr v5, v11

    move v11, v13

    const/4 v8, -0x1

    const/16 v15, 0x20

    goto :goto_8

    :cond_16
    const/4 v0, -0x1

    add-int/2addr v13, v0

    const-string v0, "repeated flag"

    invoke-static {v0, v6, v13}, Lndv;->a(Ljava/lang/String;Ljava/lang/String;I)Lndv;

    move-result-object v0

    throw v0

    :cond_17
    :goto_9
    add-int/lit8 v15, v13, -0x1

    move/from16 v17, v9

    const/16 v9, 0x39

    if-gt v11, v9, :cond_2d

    add-int/lit8 v11, v11, -0x30

    :goto_a
    if-ne v13, v14, :cond_18

    new-instance v8, Lnbm;

    const/4 v9, -0x1

    invoke-direct {v8, v5, v11, v9}, Lnbm;-><init>(III)V

    move-object v5, v8

    goto :goto_b

    :cond_18
    add-int/lit8 v8, v13, 0x1

    invoke-virtual {v6, v13}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v13, 0x2e

    if-ne v9, v13, :cond_2a

    new-instance v9, Lnbm;

    invoke-static {v6, v8, v14}, Lnbm;->b(Ljava/lang/String;II)I

    move-result v8

    invoke-direct {v9, v5, v11, v8}, Lnbm;-><init>(III)V

    move-object v5, v9

    :goto_b
    invoke-static {v4}, Lnbl;->a(C)I

    move-result v8

    sget-object v9, Lnbl;->k:[Lnbl;

    aget-object v8, v9, v8

    if-eqz v12, :cond_19

    goto :goto_c

    :cond_19
    const/4 v9, 0x0

    if-eqz v8, :cond_1a

    iget v11, v8, Lnbl;->n:I

    const/16 v12, 0x80

    and-int/2addr v11, v12

    if-nez v11, :cond_1b

    :cond_1a
    move-object v8, v9

    :cond_1b
    :goto_c
    add-int/lit8 v14, v14, 0x1

    if-eqz v8, :cond_1e

    iget v4, v8, Lnbl;->n:I

    iget-object v9, v8, Lnbl;->m:Lnbn;

    iget-boolean v9, v9, Lnbn;->f:Z

    invoke-virtual {v5, v4, v9}, Lnbm;->e(IZ)Z

    move-result v4

    if-eqz v4, :cond_1d

    sget-object v4, Lndq;->c:Ljava/util/Map;

    const/16 v4, 0xa

    if-ge v10, v4, :cond_1c

    invoke-virtual {v5}, Lnbm;->c()Z

    move-result v4

    if-eqz v4, :cond_1c

    sget-object v4, Lndq;->c:Ljava/util/Map;

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lndq;

    aget-object v4, v4, v10

    goto :goto_d

    :cond_1c
    new-instance v4, Lndq;

    invoke-direct {v4, v10, v8, v5}, Lndq;-><init>(ILnbl;Lnbm;)V

    :goto_d
    goto :goto_10

    :cond_1d
    const-string v0, "invalid format specifier"

    invoke-static {v0, v6, v7, v14}, Lndv;->b(Ljava/lang/String;Ljava/lang/String;II)Lndv;

    move-result-object v0

    throw v0

    :cond_1e
    const/16 v8, 0x74

    const/16 v9, 0xa0

    const-string v11, "invalid format specification"

    if-eq v4, v8, :cond_23

    const/16 v8, 0x54

    if-ne v4, v8, :cond_1f

    goto :goto_f

    :cond_1f
    const/16 v8, 0x68

    if-eq v4, v8, :cond_21

    const/16 v8, 0x48

    if-ne v4, v8, :cond_20

    goto :goto_e

    :cond_20
    invoke-static {v11, v6, v7, v14}, Lndv;->b(Ljava/lang/String;Ljava/lang/String;II)Lndv;

    move-result-object v0

    throw v0

    :cond_21
    :goto_e
    const/4 v4, 0x0

    invoke-virtual {v5, v9, v4}, Lnbm;->e(IZ)Z

    move-result v8

    if-eqz v8, :cond_22

    new-instance v4, Lndr;

    invoke-direct {v4, v5, v10}, Lndr;-><init>(Lnbm;I)V

    goto :goto_10

    :cond_22
    invoke-static {v11, v6, v7, v14}, Lndv;->b(Ljava/lang/String;Ljava/lang/String;II)Lndv;

    move-result-object v0

    throw v0

    :cond_23
    :goto_f
    const/4 v4, 0x0

    invoke-virtual {v5, v9, v4}, Lnbm;->e(IZ)Z

    move-result v8

    if-eqz v8, :cond_29

    add-int/lit8 v4, v14, 0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-gt v4, v8, :cond_28

    invoke-virtual {v6, v14}, Ljava/lang/String;->charAt(I)C

    move-result v8

    sget-object v9, Lndm;->F:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lndm;

    if-eqz v8, :cond_27

    new-instance v9, Lndn;

    invoke-direct {v9, v5, v10, v8}, Lndn;-><init>(Lnbm;ILndm;)V

    move v14, v4

    move-object v4, v9

    :goto_10
    iget v5, v4, Lndo;->a:I

    const/16 v8, 0x20

    if-ge v5, v8, :cond_24

    iget v8, v2, Lndt;->a:I

    const/4 v9, 0x1

    shl-int v11, v9, v5

    or-int/2addr v8, v11

    iput v8, v2, Lndt;->a:I

    :cond_24
    iget v8, v2, Lndt;->b:I

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v2, Lndt;->b:I

    invoke-virtual {v2}, Lndt;->b()Lndu;

    move-result-object v5

    iget-object v8, v2, Lndt;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lndt;->c()Ljava/lang/String;

    move-result-object v9

    iget v11, v2, Lndt;->e:I

    invoke-virtual {v5, v8, v9, v11, v7}, Lndu;->a(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    iget-object v5, v2, Lndt;->c:[Ljava/lang/Object;

    iget v7, v4, Lndo;->a:I

    array-length v8, v5

    if-ge v7, v8, :cond_26

    aget-object v5, v5, v7

    if-eqz v5, :cond_25

    invoke-virtual {v4, v2, v5}, Lndo;->a(Lndp;Ljava/lang/Object;)V

    goto :goto_11

    :cond_25
    iget-object v4, v2, Lndt;->d:Ljava/lang/StringBuilder;

    const-string v5, "null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11

    :cond_26
    iget-object v4, v2, Lndt;->d:Ljava/lang/StringBuilder;

    const-string v5, "[ERROR: MISSING LOG ARGUMENT]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_11
    iput v14, v2, Lndt;->e:I

    invoke-static {v6, v14}, Lndw;->b(Ljava/lang/String;I)I

    move-result v7

    move/from16 v9, v17

    const/4 v4, 0x0

    const/4 v8, -0x1

    goto/16 :goto_3

    :cond_27
    const-string v0, "illegal date/time conversion"

    invoke-static {v0, v6, v14}, Lndv;->a(Ljava/lang/String;Ljava/lang/String;I)Lndv;

    move-result-object v0

    throw v0

    :cond_28
    const-string v0, "truncated format specifier"

    invoke-static {v0, v6, v7}, Lndv;->a(Ljava/lang/String;Ljava/lang/String;I)Lndv;

    move-result-object v0

    throw v0

    :cond_29
    invoke-static {v11, v6, v7, v14}, Lndv;->b(Ljava/lang/String;Ljava/lang/String;II)Lndv;

    move-result-object v0

    throw v0

    :cond_2a
    const/16 v16, 0x80

    const/16 v18, 0x20

    add-int/lit8 v9, v9, -0x30

    int-to-char v9, v9

    const/16 v13, 0xa

    if-ge v9, v13, :cond_2c

    mul-int/lit8 v11, v11, 0xa

    add-int/2addr v11, v9

    const v9, 0xf423f

    if-gt v11, v9, :cond_2b

    move v13, v8

    goto/16 :goto_a

    :cond_2b
    const-string v0, "width too large"

    invoke-static {v0, v6, v15, v14}, Lndv;->b(Ljava/lang/String;Ljava/lang/String;II)Lndv;

    move-result-object v0

    throw v0

    :cond_2c
    const/4 v0, -0x1

    add-int/2addr v8, v0

    const-string v0, "invalid width character"

    invoke-static {v0, v6, v8}, Lndv;->a(Ljava/lang/String;Ljava/lang/String;I)Lndv;

    move-result-object v0

    throw v0

    :cond_2d
    invoke-static {v8, v6, v15}, Lndv;->a(Ljava/lang/String;Ljava/lang/String;I)Lndv;

    move-result-object v0

    throw v0

    :cond_2e
    move/from16 v17, v9

    move-object v4, v15

    const/16 v13, 0xa

    const/16 v15, 0x30

    add-int/lit8 v14, v14, 0x1

    move-object v15, v4

    const/16 v5, 0x30

    const/4 v8, -0x1

    goto/16 :goto_6

    :cond_2f
    move-object v4, v15

    invoke-static {v4, v6, v7}, Lndv;->c(Ljava/lang/String;Ljava/lang/String;I)Lndv;

    move-result-object v0

    throw v0

    :cond_30
    move-object v4, v15

    invoke-static {v4, v6, v7}, Lndv;->c(Ljava/lang/String;Ljava/lang/String;I)Lndv;

    move-result-object v0

    throw v0

    :cond_31
    iget v4, v2, Lndt;->a:I

    add-int/lit8 v5, v4, 0x1

    and-int/2addr v5, v4

    if-nez v5, :cond_33

    iget v5, v2, Lndt;->b:I

    const/16 v6, 0x1f

    if-le v5, v6, :cond_32

    const/4 v5, -0x1

    if-ne v4, v5, :cond_33

    :cond_32
    invoke-virtual {v2}, Lndt;->b()Lndu;

    move-result-object v4

    iget-object v5, v2, Lndt;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lndt;->c()Ljava/lang/String;

    move-result-object v6

    iget v7, v2, Lndt;->e:I

    invoke-virtual {v2}, Lndt;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lndu;->a(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    iget-object v4, v2, Lndt;->d:Ljava/lang/StringBuilder;

    invoke-interface/range {p0 .. p0}, Lnbp;->F()[Ljava/lang/Object;

    move-result-object v5

    array-length v5, v5

    iget v2, v2, Lndt;->b:I

    const/4 v6, 0x1

    add-int/2addr v2, v6

    if-le v5, v2, :cond_35

    const-string v2, " [ERROR: UNUSED LOG ARGUMENTS]"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12

    :cond_33
    const/4 v0, -0x1

    xor-int/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "unreferenced arguments [first missing index=%d]"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lndv;

    invoke-direct {v1, v0}, Lndv;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_34
    invoke-interface/range {p0 .. p0}, Lnbp;->l()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lnbs;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_35
    :goto_12
    sget v2, Lnco;->a:I

    new-instance v2, Lnbo;

    invoke-direct {v2, v3}, Lnbo;-><init>(Ljava/lang/StringBuilder;)V

    move-object/from16 v4, p4

    invoke-virtual {v1, v4, v2}, Lnck;->c(Lncb;Ljava/lang/Object;)V

    iget-boolean v1, v2, Lnbo;->c:Z

    if-eqz v1, :cond_36

    iget-object v1, v2, Lnbo;->b:Ljava/lang/StringBuilder;

    iget-object v2, v2, Lnbo;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_36
    :goto_13
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_14
    invoke-interface/range {p0 .. p0}, Lnbp;->j()Lnbu;

    move-result-object v2

    sget-object v3, Lnao;->a:Lnbc;

    invoke-virtual {v2, v3}, Lnbu;->d(Lnbc;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    invoke-interface/range {p0 .. p0}, Lnbp;->m()Ljava/util/logging/Level;

    move-result-object v3

    invoke-static {v3}, Lndd;->e(Ljava/util/logging/Level;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :pswitch_0
    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :pswitch_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final c(Lnbp;)V
    .locals 4

    iget-object v0, p0, Lndc;->c:Ljava/lang/String;

    iget-object v1, p0, Lndc;->d:Ljava/util/logging/Level;

    iget-object v2, p0, Lndc;->e:Ljava/util/Set;

    iget-object v3, p0, Lndc;->f:Lncb;

    invoke-static {p1, v0, v1, v2, v3}, Lndc;->e(Lnbp;Ljava/lang/String;Ljava/util/logging/Level;Ljava/util/Set;Lncb;)V

    return-void
.end method

.method public final d(Ljava/util/logging/Level;)Z
    .locals 1

    invoke-static {p1}, Lndd;->e(Ljava/util/logging/Level;)I

    move-result p1

    iget-object v0, p0, Lndc;->c:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "all"

    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
