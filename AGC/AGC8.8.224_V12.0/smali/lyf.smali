.class public final Llyf;
.super Ljava/lang/Object;

# interfaces
.implements Llux;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/List;

.field public final d:Lnyy;

.field public final e:Lnwf;

.field public final f:J

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Lnwf;

.field public final j:Lnwf;

.field public final k:Lnwf;

.field public final l:Lnty;

.field public final m:Z

.field public final n:Ljava/util/List;

.field public final o:Ljava/lang/String;

.field public final p:Ljava/lang/String;

.field public final q:Lobo;

.field public final r:Lobn;

.field public final s:Lntv;

.field public final t:Llwz;

.field public final u:J

.field public final v:Loja;

.field public final w:Lluq;


# direct methods
.method public constructor <init>()V
    .locals 26

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-wide/16 v23, 0x0

    const v25, 0x3fffff

    invoke-direct/range {v0 .. v25}, Llyf;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lnyy;Lnwf;JLjava/lang/String;Ljava/lang/String;Lluq;Lnwf;Lnwf;Lnwf;Lnty;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Lobo;Lobn;Lntv;Llwz;JI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lnyy;Lnwf;JLjava/lang/String;Ljava/lang/String;Lluq;Lnwf;Lnwf;Lnwf;Lnty;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Lobo;Lobn;Lntv;Llwz;J)V
    .locals 3

    move-object v0, p0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p16 .. p16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Llyf;->a:Ljava/lang/String;

    move-object v1, p2

    iput-object v1, v0, Llyf;->b:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Llyf;->c:Ljava/util/List;

    move-object v1, p4

    iput-object v1, v0, Llyf;->d:Lnyy;

    move-object v1, p5

    iput-object v1, v0, Llyf;->e:Lnwf;

    move-wide v1, p6

    iput-wide v1, v0, Llyf;->f:J

    move-object v1, p8

    iput-object v1, v0, Llyf;->g:Ljava/lang/String;

    move-object v1, p9

    iput-object v1, v0, Llyf;->h:Ljava/lang/String;

    move-object v1, p10

    iput-object v1, v0, Llyf;->w:Lluq;

    move-object v1, p11

    iput-object v1, v0, Llyf;->i:Lnwf;

    move-object v1, p12

    iput-object v1, v0, Llyf;->j:Lnwf;

    move-object/from16 v1, p13

    iput-object v1, v0, Llyf;->k:Lnwf;

    move-object/from16 v1, p14

    iput-object v1, v0, Llyf;->l:Lnty;

    move/from16 v1, p15

    iput-boolean v1, v0, Llyf;->m:Z

    move-object/from16 v1, p16

    iput-object v1, v0, Llyf;->n:Ljava/util/List;

    move-object/from16 v1, p17

    iput-object v1, v0, Llyf;->o:Ljava/lang/String;

    move-object/from16 v1, p18

    iput-object v1, v0, Llyf;->p:Ljava/lang/String;

    move-object/from16 v1, p19

    iput-object v1, v0, Llyf;->q:Lobo;

    move-object/from16 v1, p20

    iput-object v1, v0, Llyf;->r:Lobn;

    move-object/from16 v1, p21

    iput-object v1, v0, Llyf;->s:Lntv;

    move-object/from16 v1, p22

    iput-object v1, v0, Llyf;->t:Llwz;

    move-wide/from16 v1, p23

    iput-wide v1, v0, Llyf;->u:J

    new-instance v1, Lpo;

    const/16 v2, 0x11

    invoke-direct {v1, p0, v2}, Lpo;-><init>(Llyf;I)V

    invoke-static {v1}, Lljr;->aP(Lolz;)Loja;

    move-result-object v1

    iput-object v1, v0, Llyf;->v:Loja;

    new-instance v1, Lpo;

    const/16 v2, 0x12

    invoke-direct {v1, p0, v2}, Lpo;-><init>(Llyf;I)V

    invoke-static {v1}, Lljr;->aP(Lolz;)Loja;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lnyy;Lnwf;JLjava/lang/String;Ljava/lang/String;Lluq;Lnwf;Lnwf;Lnwf;Lnty;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Lobo;Lobn;Lntv;Llwz;JI)V
    .locals 31

    move/from16 v0, p25

    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x0

    if-nez v1, :cond_15

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_0

    move-object v7, v2

    goto :goto_0

    :cond_0
    move-object/from16 v7, p4

    :goto_0
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_1

    move-object v8, v2

    goto :goto_1

    :cond_1
    move-object/from16 v8, p5

    :goto_1
    and-int/lit8 v1, v0, 0x20

    const-wide/16 v3, 0x0

    if-eqz v1, :cond_2

    move-wide v9, v3

    goto :goto_2

    :cond_2
    move-wide/from16 v9, p6

    :goto_2
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_3

    move-object v11, v2

    goto :goto_3

    :cond_3
    move-object/from16 v11, p8

    :goto_3
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_4

    move-object v12, v2

    goto :goto_4

    :cond_4
    move-object/from16 v12, p9

    :goto_4
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_5

    move-object v13, v2

    goto :goto_5

    :cond_5
    move-object/from16 v13, p10

    :goto_5
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_6

    move-object v14, v2

    goto :goto_6

    :cond_6
    move-object/from16 v14, p11

    :goto_6
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_7

    move-object v15, v2

    goto :goto_7

    :cond_7
    move-object/from16 v15, p12

    :goto_7
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_8

    move-object/from16 v16, v2

    goto :goto_8

    :cond_8
    move-object/from16 v16, p13

    :goto_8
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_9

    move-object/from16 v17, v2

    goto :goto_9

    :cond_9
    move-object/from16 v17, p14

    :goto_9
    and-int/lit16 v1, v0, 0x2000

    const/4 v5, 0x1

    if-eqz v1, :cond_a

    const/4 v1, 0x0

    goto :goto_a

    :cond_a
    const/4 v1, 0x1

    :goto_a
    and-int v18, v1, p15

    and-int/lit16 v1, v0, 0x4000

    if-nez v1, :cond_14

    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_b

    move-object/from16 v20, v2

    goto :goto_b

    :cond_b
    move-object/from16 v20, p17

    :goto_b
    const/high16 v1, 0x10000

    and-int/2addr v1, v0

    if-eqz v1, :cond_c

    move-object/from16 v21, v2

    goto :goto_c

    :cond_c
    move-object/from16 v21, p18

    :goto_c
    const/high16 v1, 0x20000

    and-int/2addr v1, v0

    if-eqz v1, :cond_d

    move-object/from16 v22, v2

    goto :goto_d

    :cond_d
    move-object/from16 v22, p19

    :goto_d
    const/high16 v1, 0x40000

    and-int/2addr v1, v0

    if-eqz v1, :cond_e

    move-object/from16 v23, v2

    goto :goto_e

    :cond_e
    move-object/from16 v23, p20

    :goto_e
    const/high16 v1, 0x80000

    and-int/2addr v1, v0

    if-eqz v1, :cond_f

    move-object/from16 v24, v2

    goto :goto_f

    :cond_f
    move-object/from16 v24, p21

    :goto_f
    const/high16 v1, 0x100000

    and-int/2addr v1, v0

    if-eqz v1, :cond_10

    new-instance v1, Llwz;

    const/4 v6, 0x0

    const/16 v19, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const-wide/16 v28, 0x0

    const/16 v30, 0x3f

    move-object/from16 p4, v1

    move-object/from16 p5, v6

    move-object/from16 p6, v19

    move-object/from16 p7, v25

    move-object/from16 p8, v26

    move-object/from16 p9, v27

    move-wide/from16 p10, v28

    move/from16 p12, v30

    invoke-direct/range {p4 .. p12}, Llwz;-><init>(Lnyy;Lnyy;Lnyy;Llul;Llvk;DI)V

    move-object/from16 v25, v1

    goto :goto_10

    :cond_10
    move-object/from16 v25, p22

    :goto_10
    and-int/lit8 v1, v0, 0x2

    and-int/lit8 v6, v0, 0x1

    if-eqz v1, :cond_11

    move-object v1, v2

    goto :goto_11

    :cond_11
    move-object/from16 v1, p2

    :goto_11
    if-ne v5, v6, :cond_12

    goto :goto_12

    :cond_12
    move-object/from16 v2, p1

    :goto_12
    const/high16 v5, 0x200000

    and-int/2addr v0, v5

    if-eqz v0, :cond_13

    move-wide/from16 v26, v3

    goto :goto_13

    :cond_13
    move-wide/from16 v26, p23

    :goto_13
    move-object/from16 v3, p0

    move-object v4, v2

    move-object v5, v1

    move-object/from16 v6, p3

    move-object/from16 v19, p16

    invoke-direct/range {v3 .. v27}, Llyf;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lnyy;Lnwf;JLjava/lang/String;Ljava/lang/String;Lluq;Lnwf;Lnwf;Lnwf;Lnty;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Lobo;Lobn;Lntv;Llwz;J)V

    return-void

    :cond_14
    throw v2

    :cond_15
    throw v2
.end method

.method public static synthetic c(Llyf;Lluq;Ljava/lang/String;Llwz;I)Llyf;
    .locals 29

    move-object/from16 v0, p0

    move/from16 v1, p4

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, v0, Llyf;->a:Ljava/lang/String;

    move-object v5, v2

    goto :goto_0

    :cond_0
    move-object v5, v3

    :goto_0
    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_1

    iget-object v2, v0, Llyf;->b:Ljava/lang/String;

    move-object v6, v2

    goto :goto_1

    :cond_1
    move-object v6, v3

    :goto_1
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_2

    iget-object v2, v0, Llyf;->c:Ljava/util/List;

    move-object v7, v2

    goto :goto_2

    :cond_2
    move-object v7, v3

    :goto_2
    and-int/lit8 v2, v1, 0x8

    if-eqz v2, :cond_3

    iget-object v2, v0, Llyf;->d:Lnyy;

    move-object v8, v2

    goto :goto_3

    :cond_3
    move-object v8, v3

    :goto_3
    and-int/lit8 v2, v1, 0x10

    if-eqz v2, :cond_4

    iget-object v2, v0, Llyf;->e:Lnwf;

    move-object v9, v2

    goto :goto_4

    :cond_4
    move-object v9, v3

    :goto_4
    and-int/lit8 v2, v1, 0x20

    if-eqz v2, :cond_5

    iget-wide v10, v0, Llyf;->f:J

    goto :goto_5

    :cond_5
    const-wide/16 v10, 0x0

    :goto_5
    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_6

    iget-object v2, v0, Llyf;->g:Ljava/lang/String;

    move-object v12, v2

    goto :goto_6

    :cond_6
    move-object v12, v3

    :goto_6
    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_7

    iget-object v2, v0, Llyf;->h:Ljava/lang/String;

    move-object v13, v2

    goto :goto_7

    :cond_7
    move-object v13, v3

    :goto_7
    and-int/lit16 v2, v1, 0x100

    if-eqz v2, :cond_8

    iget-object v2, v0, Llyf;->w:Lluq;

    move-object v14, v2

    goto :goto_8

    :cond_8
    move-object/from16 v14, p1

    :goto_8
    and-int/lit16 v2, v1, 0x200

    if-eqz v2, :cond_9

    iget-object v2, v0, Llyf;->i:Lnwf;

    move-object v15, v2

    goto :goto_9

    :cond_9
    move-object v15, v3

    :goto_9
    and-int/lit16 v2, v1, 0x400

    if-eqz v2, :cond_a

    iget-object v2, v0, Llyf;->j:Lnwf;

    move-object/from16 v16, v2

    goto :goto_a

    :cond_a
    move-object/from16 v16, v3

    :goto_a
    and-int/lit16 v2, v1, 0x800

    if-eqz v2, :cond_b

    iget-object v2, v0, Llyf;->k:Lnwf;

    move-object/from16 v17, v2

    goto :goto_b

    :cond_b
    move-object/from16 v17, v3

    :goto_b
    and-int/lit16 v2, v1, 0x1000

    if-eqz v2, :cond_c

    iget-object v2, v0, Llyf;->l:Lnty;

    move-object/from16 v18, v2

    goto :goto_c

    :cond_c
    move-object/from16 v18, v3

    :goto_c
    and-int/lit16 v2, v1, 0x2000

    if-eqz v2, :cond_d

    iget-boolean v2, v0, Llyf;->m:Z

    move/from16 v19, v2

    goto :goto_d

    :cond_d
    const/4 v2, 0x0

    const/16 v19, 0x0

    :goto_d
    and-int/lit16 v2, v1, 0x4000

    if-eqz v2, :cond_e

    iget-object v2, v0, Llyf;->n:Ljava/util/List;

    move-object/from16 v20, v2

    goto :goto_e

    :cond_e
    move-object/from16 v20, v3

    :goto_e
    const v2, 0x8000

    and-int/2addr v2, v1

    if-eqz v2, :cond_f

    iget-object v2, v0, Llyf;->o:Ljava/lang/String;

    move-object/from16 v21, v2

    goto :goto_f

    :cond_f
    move-object/from16 v21, v3

    :goto_f
    const/high16 v2, 0x10000

    and-int/2addr v2, v1

    if-eqz v2, :cond_10

    iget-object v2, v0, Llyf;->p:Ljava/lang/String;

    move-object/from16 v22, v2

    goto :goto_10

    :cond_10
    move-object/from16 v22, p2

    :goto_10
    const/high16 v2, 0x20000

    and-int/2addr v2, v1

    if-eqz v2, :cond_11

    iget-object v2, v0, Llyf;->q:Lobo;

    move-object/from16 v23, v2

    goto :goto_11

    :cond_11
    move-object/from16 v23, v3

    :goto_11
    const/high16 v2, 0x40000

    and-int/2addr v2, v1

    if-eqz v2, :cond_12

    iget-object v2, v0, Llyf;->r:Lobn;

    move-object/from16 v24, v2

    goto :goto_12

    :cond_12
    move-object/from16 v24, v3

    :goto_12
    const/high16 v2, 0x80000

    and-int/2addr v2, v1

    if-eqz v2, :cond_13

    iget-object v3, v0, Llyf;->s:Lntv;

    move-object/from16 v25, v3

    goto :goto_13

    :cond_13
    move-object/from16 v25, v3

    :goto_13
    const/high16 v2, 0x100000

    and-int/2addr v1, v2

    if-eqz v1, :cond_14

    iget-object v1, v0, Llyf;->t:Llwz;

    move-object/from16 v26, v1

    goto :goto_14

    :cond_14
    move-object/from16 v26, p3

    :goto_14
    iget-wide v0, v0, Llyf;->u:J

    move-wide/from16 v27, v0

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llyf;

    move-object v4, v0

    invoke-direct/range {v4 .. v28}, Llyf;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lnyy;Lnwf;JLjava/lang/String;Ljava/lang/String;Lluq;Lnwf;Lnwf;Lnwf;Lnty;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Lobo;Lobn;Lntv;Llwz;J)V

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final synthetic b()V
    .locals 0

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Llyf;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Llyf;

    iget-object v1, p0, Llyf;->a:Ljava/lang/String;

    iget-object v3, p1, Llyf;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Llyf;->b:Ljava/lang/String;

    iget-object v3, p1, Llyf;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Llyf;->c:Ljava/util/List;

    iget-object v3, p1, Llyf;->c:Ljava/util/List;

    invoke-static {v1, v3}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Llyf;->d:Lnyy;

    iget-object v3, p1, Llyf;->d:Lnyy;

    invoke-static {v1, v3}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Llyf;->e:Lnwf;

    iget-object v3, p1, Llyf;->e:Lnwf;

    invoke-static {v1, v3}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-wide v3, p0, Llyf;->f:J

    iget-wide v5, p1, Llyf;->f:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Llyf;->g:Ljava/lang/String;

    iget-object v3, p1, Llyf;->g:Ljava/lang/String;

    invoke-static {v1, v3}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Llyf;->h:Ljava/lang/String;

    iget-object v3, p1, Llyf;->h:Ljava/lang/String;

    invoke-static {v1, v3}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Llyf;->w:Lluq;

    iget-object v3, p1, Llyf;->w:Lluq;

    invoke-static {v1, v3}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Llyf;->i:Lnwf;

    iget-object v3, p1, Llyf;->i:Lnwf;

    invoke-static {v1, v3}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Llyf;->j:Lnwf;

    iget-object v3, p1, Llyf;->j:Lnwf;

    invoke-static {v1, v3}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Llyf;->k:Lnwf;

    iget-object v3, p1, Llyf;->k:Lnwf;

    invoke-static {v1, v3}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Llyf;->l:Lnty;

    iget-object v3, p1, Llyf;->l:Lnty;

    invoke-static {v1, v3}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-boolean v1, p0, Llyf;->m:Z

    iget-boolean v3, p1, Llyf;->m:Z

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Llyf;->n:Ljava/util/List;

    iget-object v3, p1, Llyf;->n:Ljava/util/List;

    invoke-static {v1, v3}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Llyf;->o:Ljava/lang/String;

    iget-object v3, p1, Llyf;->o:Ljava/lang/String;

    invoke-static {v1, v3}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Llyf;->p:Ljava/lang/String;

    iget-object v3, p1, Llyf;->p:Ljava/lang/String;

    invoke-static {v1, v3}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Llyf;->q:Lobo;

    iget-object v3, p1, Llyf;->q:Lobo;

    invoke-static {v1, v3}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Llyf;->r:Lobn;

    iget-object v3, p1, Llyf;->r:Lobn;

    invoke-static {v1, v3}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Llyf;->s:Lntv;

    iget-object v3, p1, Llyf;->s:Lntv;

    invoke-static {v1, v3}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Llyf;->t:Llwz;

    iget-object v3, p1, Llyf;->t:Llwz;

    invoke-static {v1, v3}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-wide v3, p0, Llyf;->u:J

    iget-wide v5, p1, Llyf;->u:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_c

    return v2

    :cond_c
    return v0

    :cond_d
    return v2
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Llyf;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    iget-object v2, p0, Llyf;->b:Ljava/lang/String;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Llyf;->c:Ljava/util/List;

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Llyf;->d:Lnyy;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lnws;->L()I

    move-result v2

    goto :goto_2

    :cond_3
    iget v3, v2, Lnws;->aG:I

    if-nez v3, :cond_4

    invoke-virtual {v2}, Lnws;->L()I

    move-result v3

    iput v3, v2, Lnws;->aG:I

    :cond_4
    move v2, v3

    :goto_2
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Llyf;->e:Lnwf;

    if-nez v2, :cond_5

    const/4 v2, 0x0

    goto :goto_3

    :cond_5
    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Lnws;->L()I

    move-result v2

    goto :goto_3

    :cond_6
    iget v3, v2, Lnws;->aG:I

    if-nez v3, :cond_7

    invoke-virtual {v2}, Lnws;->L()I

    move-result v3

    iput v3, v2, Lnws;->aG:I

    :cond_7
    move v2, v3

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Llyf;->f:J

    invoke-static {v2, v3}, Llyh;->a(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Llyf;->g:Ljava/lang/String;

    if-nez v2, :cond_8

    const/4 v2, 0x0

    goto :goto_4

    :cond_8
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Llyf;->h:Ljava/lang/String;

    if-nez v2, :cond_9

    const/4 v2, 0x0

    goto :goto_5

    :cond_9
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Llyf;->w:Lluq;

    if-nez v2, :cond_a

    const/4 v2, 0x0

    goto :goto_6

    :cond_a
    invoke-virtual {v2}, Lluq;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Llyf;->i:Lnwf;

    if-nez v2, :cond_b

    const/4 v2, 0x0

    goto :goto_7

    :cond_b
    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v2}, Lnws;->L()I

    move-result v2

    goto :goto_7

    :cond_c
    iget v3, v2, Lnws;->aG:I

    if-nez v3, :cond_d

    invoke-virtual {v2}, Lnws;->L()I

    move-result v3

    iput v3, v2, Lnws;->aG:I

    :cond_d
    move v2, v3

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Llyf;->j:Lnwf;

    if-nez v2, :cond_e

    const/4 v2, 0x0

    goto :goto_8

    :cond_e
    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {v2}, Lnws;->L()I

    move-result v2

    goto :goto_8

    :cond_f
    iget v3, v2, Lnws;->aG:I

    if-nez v3, :cond_10

    invoke-virtual {v2}, Lnws;->L()I

    move-result v3

    iput v3, v2, Lnws;->aG:I

    :cond_10
    move v2, v3

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Llyf;->k:Lnwf;

    if-nez v2, :cond_11

    const/4 v2, 0x0

    goto :goto_9

    :cond_11
    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-virtual {v2}, Lnws;->L()I

    move-result v2

    goto :goto_9

    :cond_12
    iget v3, v2, Lnws;->aG:I

    if-nez v3, :cond_13

    invoke-virtual {v2}, Lnws;->L()I

    move-result v3

    iput v3, v2, Lnws;->aG:I

    :cond_13
    move v2, v3

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Llyf;->l:Lnty;

    if-nez v2, :cond_14

    const/4 v2, 0x0

    goto :goto_a

    :cond_14
    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-virtual {v2}, Lnws;->L()I

    move-result v2

    goto :goto_a

    :cond_15
    iget v3, v2, Lnws;->aG:I

    if-nez v3, :cond_16

    invoke-virtual {v2}, Lnws;->L()I

    move-result v3

    iput v3, v2, Lnws;->aG:I

    :cond_16
    move v2, v3

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Llyf;->m:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Llyf;->n:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Llyf;->o:Ljava/lang/String;

    if-nez v2, :cond_17

    const/4 v2, 0x0

    goto :goto_b

    :cond_17
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Llyf;->p:Ljava/lang/String;

    if-nez v2, :cond_18

    const/4 v2, 0x0

    goto :goto_c

    :cond_18
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Llyf;->q:Lobo;

    if-nez v2, :cond_19

    const/4 v2, 0x0

    goto :goto_d

    :cond_19
    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-virtual {v2}, Lnws;->L()I

    move-result v2

    goto :goto_d

    :cond_1a
    iget v3, v2, Lnws;->aG:I

    if-nez v3, :cond_1b

    invoke-virtual {v2}, Lnws;->L()I

    move-result v3

    iput v3, v2, Lnws;->aG:I

    :cond_1b
    move v2, v3

    :goto_d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Llyf;->r:Lobn;

    if-nez v2, :cond_1c

    const/4 v2, 0x0

    goto :goto_e

    :cond_1c
    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-virtual {v2}, Lnws;->L()I

    move-result v2

    goto :goto_e

    :cond_1d
    iget v3, v2, Lnws;->aG:I

    if-nez v3, :cond_1e

    invoke-virtual {v2}, Lnws;->L()I

    move-result v3

    iput v3, v2, Lnws;->aG:I

    :cond_1e
    move v2, v3

    :goto_e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Llyf;->s:Lntv;

    if-nez v2, :cond_1f

    goto :goto_f

    :cond_1f
    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-virtual {v2}, Lnws;->L()I

    move-result v1

    goto :goto_f

    :cond_20
    iget v1, v2, Lnws;->aG:I

    if-nez v1, :cond_21

    invoke-virtual {v2}, Lnws;->L()I

    move-result v1

    iput v1, v2, Lnws;->aG:I

    :cond_21
    :goto_f
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Llyf;->t:Llwz;

    invoke-virtual {v1}, Llwz;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Llyf;->u:J

    invoke-static {v1, v2}, Llyh;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 27

    move-object/from16 v0, p0

    iget-object v1, v0, Llyf;->a:Ljava/lang/String;

    iget-object v2, v0, Llyf;->b:Ljava/lang/String;

    iget-object v3, v0, Llyf;->c:Ljava/util/List;

    iget-object v4, v0, Llyf;->d:Lnyy;

    iget-object v5, v0, Llyf;->e:Lnwf;

    iget-wide v6, v0, Llyf;->f:J

    iget-object v8, v0, Llyf;->g:Ljava/lang/String;

    iget-object v9, v0, Llyf;->h:Ljava/lang/String;

    iget-object v10, v0, Llyf;->w:Lluq;

    iget-object v11, v0, Llyf;->i:Lnwf;

    iget-object v12, v0, Llyf;->j:Lnwf;

    iget-object v13, v0, Llyf;->k:Lnwf;

    iget-object v14, v0, Llyf;->l:Lnty;

    iget-boolean v15, v0, Llyf;->m:Z

    move/from16 v16, v15

    iget-object v15, v0, Llyf;->n:Ljava/util/List;

    move-object/from16 v17, v15

    iget-object v15, v0, Llyf;->o:Ljava/lang/String;

    move-object/from16 v18, v15

    iget-object v15, v0, Llyf;->p:Ljava/lang/String;

    move-object/from16 v19, v15

    iget-object v15, v0, Llyf;->q:Lobo;

    move-object/from16 v20, v15

    iget-object v15, v0, Llyf;->r:Lobn;

    move-object/from16 v21, v15

    iget-object v15, v0, Llyf;->s:Lntv;

    move-object/from16 v22, v15

    iget-object v15, v0, Llyf;->t:Llwz;

    move-object/from16 v23, v14

    move-object/from16 v24, v15

    iget-wide v14, v0, Llyf;->u:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v25, v14

    const-string v14, "ResourceEntity(title="

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", experienceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", queryableTags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", queryableEpochTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", queryableDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", approximateTotalSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", namespaceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", partitionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", f250ResourceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", f250AutoUploadDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", airlockExpiration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", f250Expiration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", wipeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", deleteAirlockFilesOnceUploaded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", nonSignedInDataOwners="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", overridenObfuscatedGaiaId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", uploadTransferHandle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", relations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", provenance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", indexTokens="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", onDeviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
