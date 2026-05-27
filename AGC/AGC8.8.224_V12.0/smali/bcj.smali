.class public final Lbcj;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Laxh;

.field public e:Laxh;

.field public f:J

.field public g:J

.field public h:J

.field public i:Laxf;

.field public j:I

.field public k:J

.field public l:J

.field public m:J

.field public n:J

.field public o:Z

.field public p:I

.field public final q:I

.field public r:I

.field public s:I

.field public t:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "WorkSpec"

    invoke-static {v0}, Laxq;->b(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Laxh;Laxh;JJJLaxf;IIJJJJZIII)V
    .locals 6

    move-object v0, p0

    move v1, p2

    move/from16 v2, p15

    move/from16 v3, p25

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p13 .. p13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v2, :cond_1

    if-eqz v3, :cond_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v4, p1

    iput-object v4, v0, Lbcj;->a:Ljava/lang/String;

    iput v1, v0, Lbcj;->r:I

    move-object v1, p3

    iput-object v1, v0, Lbcj;->b:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Lbcj;->c:Ljava/lang/String;

    move-object v1, p5

    iput-object v1, v0, Lbcj;->d:Laxh;

    move-object v1, p6

    iput-object v1, v0, Lbcj;->e:Laxh;

    move-wide v4, p7

    iput-wide v4, v0, Lbcj;->f:J

    move-wide v4, p9

    iput-wide v4, v0, Lbcj;->g:J

    move-wide/from16 v4, p11

    iput-wide v4, v0, Lbcj;->h:J

    move-object/from16 v1, p13

    iput-object v1, v0, Lbcj;->i:Laxf;

    move/from16 v1, p14

    iput v1, v0, Lbcj;->j:I

    iput v2, v0, Lbcj;->s:I

    move-wide/from16 v1, p16

    iput-wide v1, v0, Lbcj;->k:J

    move-wide/from16 v1, p18

    iput-wide v1, v0, Lbcj;->l:J

    move-wide/from16 v1, p20

    iput-wide v1, v0, Lbcj;->m:J

    move-wide/from16 v1, p22

    iput-wide v1, v0, Lbcj;->n:J

    move/from16 v1, p24

    iput-boolean v1, v0, Lbcj;->o:Z

    iput v3, v0, Lbcj;->t:I

    move/from16 v1, p26

    iput v1, v0, Lbcj;->p:I

    move/from16 v1, p27

    iput v1, v0, Lbcj;->q:I

    return-void

    :cond_0
    throw v4

    :cond_1
    throw v4

    :cond_2
    throw v4
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Laxh;Laxh;JJJLaxf;IIJJJJZIII[B)V
    .locals 30

    move/from16 v0, p27

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_0

    const-class v1, Landroidx/work/OverwritingInputMerger;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v6, v1

    goto :goto_0

    :cond_0
    move-object/from16 v6, p4

    :goto_0
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_1

    sget-object v1, Laxh;->a:Laxh;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v7, v1

    goto :goto_1

    :cond_1
    move-object/from16 v7, p5

    :goto_1
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_2

    sget-object v1, Laxh;->a:Laxh;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v8, v1

    goto :goto_2

    :cond_2
    move-object/from16 v8, p6

    :goto_2
    and-int/lit8 v1, v0, 0x40

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_3

    move-wide v9, v2

    goto :goto_3

    :cond_3
    move-wide/from16 v9, p7

    :goto_3
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_4

    move-wide v11, v2

    goto :goto_4

    :cond_4
    move-wide/from16 v11, p9

    :goto_4
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_5

    move-wide v13, v2

    goto :goto_5

    :cond_5
    move-wide/from16 v13, p11

    :goto_5
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_6

    sget-object v1, Laxf;->a:Laxf;

    move-object v15, v1

    goto :goto_6

    :cond_6
    move-object/from16 v15, p13

    :goto_6
    and-int/lit8 v1, v0, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    goto :goto_7

    :cond_7
    move/from16 v1, p2

    :goto_7
    and-int/lit16 v5, v0, 0x400

    const/16 v16, 0x0

    if-eqz v5, :cond_8

    const/16 v17, 0x0

    goto :goto_8

    :cond_8
    move/from16 v17, p14

    :goto_8
    and-int/lit16 v5, v0, 0x800

    if-eqz v5, :cond_9

    const/16 v18, 0x1

    goto :goto_9

    :cond_9
    move/from16 v18, p15

    :goto_9
    and-int/lit16 v5, v0, 0x1000

    if-eqz v5, :cond_a

    const-wide/16 v19, 0x7530

    goto :goto_a

    :cond_a
    move-wide/from16 v19, p16

    :goto_a
    and-int/lit16 v5, v0, 0x2000

    if-eqz v5, :cond_b

    move-wide/from16 v21, v2

    goto :goto_b

    :cond_b
    move-wide/from16 v21, p18

    :goto_b
    and-int/lit16 v5, v0, 0x4000

    if-eqz v5, :cond_c

    move-wide/from16 v23, v2

    goto :goto_c

    :cond_c
    move-wide/from16 v23, p20

    :goto_c
    const v2, 0x8000

    and-int/2addr v2, v0

    if-eqz v2, :cond_d

    const-wide/16 v2, -0x1

    move-wide/from16 v25, v2

    goto :goto_d

    :cond_d
    move-wide/from16 v25, p22

    :goto_d
    const/high16 v2, 0x10000

    and-int/2addr v2, v0

    if-eqz v2, :cond_e

    const/4 v2, 0x0

    goto :goto_e

    :cond_e
    const/4 v2, 0x1

    :goto_e
    and-int v27, v2, p24

    const/high16 v2, 0x20000

    and-int/2addr v2, v0

    if-eqz v2, :cond_f

    const/16 v28, 0x1

    goto :goto_f

    :cond_f
    move/from16 v28, p25

    :goto_f
    const/high16 v2, 0x40000

    and-int/2addr v0, v2

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    goto :goto_10

    :cond_10
    move/from16 v0, p26

    :goto_10
    const/16 v29, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move v4, v1

    move-object/from16 v5, p3

    move/from16 v16, v17

    move/from16 v17, v18

    move-wide/from16 v18, v19

    move-wide/from16 v20, v21

    move-wide/from16 v22, v23

    move-wide/from16 v24, v25

    move/from16 v26, v27

    move/from16 v27, v28

    move/from16 v28, v0

    invoke-direct/range {v2 .. v29}, Lbcj;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Laxh;Laxh;JJJLaxf;IIJJJJZIII)V

    return-void
.end method

.method public static final b(Ljava/util/List;)Ljava/util/List;
    .locals 11

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, Lljr;->ao(Ljava/lang/Iterable;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbci;

    iget-object v2, v1, Lbci;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Lbci;->f:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laxh;

    goto :goto_1

    :cond_0
    sget-object v2, Laxh;->a:Laxh;

    :goto_1
    move-object v8, v2

    new-instance v2, Laxv;

    iget-object v3, v1, Lbci;->a:Ljava/lang/String;

    invoke-static {v3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v5, v1, Lbci;->g:I

    new-instance v6, Ljava/util/HashSet;

    iget-object v3, v1, Lbci;->e:Ljava/util/List;

    invoke-direct {v6, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v7, v1, Lbci;->b:Laxh;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v9, v1, Lbci;->c:I

    iget v10, v1, Lbci;->d:I

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Laxv;-><init>(Ljava/util/UUID;ILjava/util/Set;Laxh;Laxh;II)V

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final a()J
    .locals 10

    invoke-virtual {p0}, Lbcj;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lbcj;->s:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lbcj;->k:J

    iget v2, p0, Lbcj;->j:I

    int-to-long v2, v2

    mul-long v0, v0, v2

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lbcj;->k:J

    long-to-float v0, v0

    iget v1, p0, Lbcj;->j:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->scalb(FI)F

    move-result v0

    float-to-long v0, v0

    :goto_0
    iget-wide v2, p0, Lbcj;->l:J

    const-wide/32 v4, 0x112a880

    invoke-static {v0, v1, v4, v5}, Lonm;->i(JJ)J

    move-result-wide v0

    add-long/2addr v2, v0

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lbcj;->e()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_6

    iget v0, p0, Lbcj;->p:I

    iget-wide v3, p0, Lbcj;->l:J

    if-nez v0, :cond_2

    iget-wide v5, p0, Lbcj;->f:J

    add-long/2addr v3, v5

    :cond_2
    iget-wide v5, p0, Lbcj;->h:J

    iget-wide v7, p0, Lbcj;->g:J

    cmp-long v9, v5, v7

    if-eqz v9, :cond_4

    if-nez v0, :cond_3

    neg-long v1, v5

    :cond_3
    add-long/2addr v3, v7

    goto :goto_1

    :cond_4
    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    move-wide v1, v7

    :goto_1
    add-long/2addr v1, v3

    move-wide v2, v1

    goto :goto_2

    :cond_6
    iget-wide v3, p0, Lbcj;->l:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    :cond_7
    iget-wide v0, p0, Lbcj;->f:J

    add-long/2addr v0, v3

    move-wide v2, v0

    :goto_2
    return-wide v2
.end method

.method public final c()Z
    .locals 2

    sget-object v0, Laxf;->a:Laxf;

    iget-object v1, p0, Lbcj;->i:Laxf;

    invoke-static {v0, v1}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Z
    .locals 2

    iget v0, p0, Lbcj;->r:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lbcj;->j:I

    if-lez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Z
    .locals 5

    iget-wide v0, p0, Lbcj;->g:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lbcj;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lbcj;

    iget-object v1, p0, Lbcj;->a:Ljava/lang/String;

    iget-object v3, p1, Lbcj;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lbcj;->r:I

    iget v3, p1, Lbcj;->r:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lbcj;->b:Ljava/lang/String;

    iget-object v3, p1, Lbcj;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lbcj;->c:Ljava/lang/String;

    iget-object v3, p1, Lbcj;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lbcj;->d:Laxh;

    iget-object v3, p1, Lbcj;->d:Laxh;

    invoke-static {v1, v3}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lbcj;->e:Laxh;

    iget-object v3, p1, Lbcj;->e:Laxh;

    invoke-static {v1, v3}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-wide v3, p0, Lbcj;->f:J

    iget-wide v5, p1, Lbcj;->f:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_8

    return v2

    :cond_8
    iget-wide v3, p0, Lbcj;->g:J

    iget-wide v5, p1, Lbcj;->g:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_9

    return v2

    :cond_9
    iget-wide v3, p0, Lbcj;->h:J

    iget-wide v5, p1, Lbcj;->h:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lbcj;->i:Laxf;

    iget-object v3, p1, Lbcj;->i:Laxf;

    invoke-static {v1, v3}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget v1, p0, Lbcj;->j:I

    iget v3, p1, Lbcj;->j:I

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    iget v1, p0, Lbcj;->s:I

    iget v3, p1, Lbcj;->s:I

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    iget-wide v3, p0, Lbcj;->k:J

    iget-wide v5, p1, Lbcj;->k:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_e

    return v2

    :cond_e
    iget-wide v3, p0, Lbcj;->l:J

    iget-wide v5, p1, Lbcj;->l:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_f

    return v2

    :cond_f
    iget-wide v3, p0, Lbcj;->m:J

    iget-wide v5, p1, Lbcj;->m:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_10

    return v2

    :cond_10
    iget-wide v3, p0, Lbcj;->n:J

    iget-wide v5, p1, Lbcj;->n:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_11

    return v2

    :cond_11
    iget-boolean v1, p0, Lbcj;->o:Z

    iget-boolean v3, p1, Lbcj;->o:Z

    if-eq v1, v3, :cond_12

    return v2

    :cond_12
    iget v1, p0, Lbcj;->t:I

    iget v3, p1, Lbcj;->t:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget v1, p0, Lbcj;->p:I

    iget v3, p1, Lbcj;->p:I

    if-eq v1, v3, :cond_14

    return v2

    :cond_14
    iget v1, p0, Lbcj;->q:I

    iget p1, p1, Lbcj;->q:I

    if-eq v1, p1, :cond_15

    return v2

    :cond_15
    return v0
.end method

.method public final hashCode()I
    .locals 5

    iget-object v0, p0, Lbcj;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lbcj;->r:I

    invoke-static {v1}, Lej;->g(I)V

    iget-object v2, p0, Lbcj;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v2

    iget-object v1, p0, Lbcj;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    iget-object v1, p0, Lbcj;->d:Laxh;

    invoke-virtual {v1}, Laxh;->hashCode()I

    move-result v1

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    iget-object v1, p0, Lbcj;->e:Laxh;

    invoke-virtual {v1}, Laxh;->hashCode()I

    move-result v1

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    iget-wide v1, p0, Lbcj;->f:J

    invoke-static {v1, v2}, Lazy;->b(J)I

    move-result v1

    iget-wide v2, p0, Lbcj;->g:J

    invoke-static {v2, v3}, Lazy;->b(J)I

    move-result v2

    iget-wide v3, p0, Lbcj;->h:J

    invoke-static {v3, v4}, Lazy;->b(J)I

    move-result v3

    iget-object v4, p0, Lbcj;->i:Laxf;

    invoke-virtual {v4}, Laxf;->hashCode()I

    move-result v4

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lbcj;->j:I

    add-int/2addr v0, v1

    iget v1, p0, Lbcj;->s:I

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lbcj;->k:J

    invoke-static {v3, v4}, Lazy;->b(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lbcj;->l:J

    invoke-static {v3, v4}, Lazy;->b(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lbcj;->m:J

    invoke-static {v3, v4}, Lazy;->b(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lbcj;->n:J

    invoke-static {v3, v4}, Lazy;->b(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lbcj;->o:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lbcj;->t:I

    if-eqz v1, :cond_0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lbcj;->p:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lbcj;->q:I

    add-int/2addr v0, v1

    return v0

    :cond_0
    throw v2

    :cond_1
    throw v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{WorkSpec: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbcj;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
