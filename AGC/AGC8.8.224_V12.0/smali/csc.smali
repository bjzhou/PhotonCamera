.class public Lcsc;
.super Ljava/lang/Object;


# instance fields
.field public final A:Z

.field public final B:Z

.field public final C:Z

.field public final D:Z

.field public final E:Z

.field public final F:Ldne;

.field public final a:Lkll;

.field public final b:Lkll;

.field public final c:Ljws;

.field public final d:Ljwu;

.field public final e:Lmqp;

.field public final f:Lkaf;

.field public final g:Ljxa;

.field public final h:Lmqp;

.field public final i:Lmqp;

.field public final j:Lmqp;

.field public final k:Lmqp;

.field public final l:Z

.field public final m:Landroid/util/Range;

.field public final n:Landroid/util/Range;

.field public final o:Z

.field public final p:Z

.field public final q:Z

.field public final r:Z

.field public final s:Z

.field public final t:Z

.field public final u:Lmvv;

.field public final v:Lmvv;

.field public final w:Lmvv;

.field public final x:Lklv;

.field public final y:Lgya;

.field public final z:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lkll;Lkll;Ldne;Ljws;Ljwu;Lmqp;Lkaf;Ljxa;Lmqp;Lmqp;Lmqp;Lmqp;ZLandroid/util/Range;Landroid/util/Range;ZZZZZZLmvv;Lmvv;Lmvv;Lklv;Lgya;IZZZZZ[B[B)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcsc;->a:Lkll;

    move-object v1, p2

    iput-object v1, v0, Lcsc;->b:Lkll;

    move-object v1, p3

    iput-object v1, v0, Lcsc;->F:Ldne;

    move-object v1, p4

    iput-object v1, v0, Lcsc;->c:Ljws;

    move-object v1, p5

    iput-object v1, v0, Lcsc;->d:Ljwu;

    move-object v1, p6

    iput-object v1, v0, Lcsc;->e:Lmqp;

    move-object v1, p7

    iput-object v1, v0, Lcsc;->f:Lkaf;

    move-object v1, p8

    iput-object v1, v0, Lcsc;->g:Ljxa;

    move-object v1, p9

    iput-object v1, v0, Lcsc;->h:Lmqp;

    move-object v1, p10

    iput-object v1, v0, Lcsc;->i:Lmqp;

    move-object v1, p11

    iput-object v1, v0, Lcsc;->j:Lmqp;

    move-object v1, p12

    iput-object v1, v0, Lcsc;->k:Lmqp;

    move v1, p13

    iput-boolean v1, v0, Lcsc;->l:Z

    move-object/from16 v1, p14

    iput-object v1, v0, Lcsc;->m:Landroid/util/Range;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcsc;->n:Landroid/util/Range;

    move/from16 v1, p16

    iput-boolean v1, v0, Lcsc;->o:Z

    move/from16 v1, p17

    iput-boolean v1, v0, Lcsc;->p:Z

    move/from16 v1, p18

    iput-boolean v1, v0, Lcsc;->q:Z

    move/from16 v1, p19

    iput-boolean v1, v0, Lcsc;->r:Z

    move/from16 v1, p20

    iput-boolean v1, v0, Lcsc;->s:Z

    move/from16 v1, p21

    iput-boolean v1, v0, Lcsc;->t:Z

    move-object/from16 v1, p22

    iput-object v1, v0, Lcsc;->u:Lmvv;

    move-object/from16 v1, p23

    iput-object v1, v0, Lcsc;->v:Lmvv;

    move-object/from16 v1, p24

    iput-object v1, v0, Lcsc;->w:Lmvv;

    move-object/from16 v1, p25

    iput-object v1, v0, Lcsc;->x:Lklv;

    move-object/from16 v1, p26

    iput-object v1, v0, Lcsc;->y:Lgya;

    move/from16 v1, p27

    iput v1, v0, Lcsc;->z:I

    move/from16 v1, p28

    iput-boolean v1, v0, Lcsc;->A:Z

    move/from16 v1, p29

    iput-boolean v1, v0, Lcsc;->B:Z

    move/from16 v1, p30

    iput-boolean v1, v0, Lcsc;->C:Z

    move/from16 v1, p31

    iput-boolean v1, v0, Lcsc;->D:Z

    move/from16 v1, p32

    iput-boolean v1, v0, Lcsc;->E:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcsc;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcsc;

    iget-object v1, p0, Lcsc;->a:Lkll;

    iget-object v3, p1, Lcsc;->a:Lkll;

    invoke-virtual {v1, v3}, Lkll;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcsc;->b:Lkll;

    iget-object v3, p1, Lcsc;->b:Lkll;

    invoke-virtual {v1, v3}, Lkll;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcsc;->F:Ldne;

    iget-object v3, p1, Lcsc;->F:Ldne;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcsc;->c:Ljws;

    iget-object v3, p1, Lcsc;->c:Ljws;

    invoke-virtual {v1, v3}, Ljws;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcsc;->d:Ljwu;

    iget-object v3, p1, Lcsc;->d:Ljwu;

    invoke-virtual {v1, v3}, Ljwu;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcsc;->e:Lmqp;

    iget-object v3, p1, Lcsc;->e:Lmqp;

    invoke-virtual {v1, v3}, Lmqp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcsc;->f:Lkaf;

    iget-object v3, p1, Lcsc;->f:Lkaf;

    invoke-virtual {v1, v3}, Lkaf;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcsc;->g:Ljxa;

    iget-object v3, p1, Lcsc;->g:Ljxa;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcsc;->h:Lmqp;

    iget-object v3, p1, Lcsc;->h:Lmqp;

    invoke-virtual {v1, v3}, Lmqp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcsc;->i:Lmqp;

    iget-object v3, p1, Lcsc;->i:Lmqp;

    invoke-virtual {v1, v3}, Lmqp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcsc;->j:Lmqp;

    iget-object v3, p1, Lcsc;->j:Lmqp;

    invoke-virtual {v1, v3}, Lmqp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcsc;->k:Lmqp;

    iget-object v3, p1, Lcsc;->k:Lmqp;

    invoke-virtual {v1, v3}, Lmqp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcsc;->l:Z

    iget-boolean v3, p1, Lcsc;->l:Z

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcsc;->m:Landroid/util/Range;

    iget-object v3, p1, Lcsc;->m:Landroid/util/Range;

    invoke-virtual {v1, v3}, Landroid/util/Range;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcsc;->n:Landroid/util/Range;

    iget-object v3, p1, Lcsc;->n:Landroid/util/Range;

    invoke-virtual {v1, v3}, Landroid/util/Range;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcsc;->o:Z

    iget-boolean v3, p1, Lcsc;->o:Z

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Lcsc;->p:Z

    iget-boolean v3, p1, Lcsc;->p:Z

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Lcsc;->q:Z

    iget-boolean v3, p1, Lcsc;->q:Z

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Lcsc;->r:Z

    iget-boolean v3, p1, Lcsc;->r:Z

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Lcsc;->s:Z

    iget-boolean v3, p1, Lcsc;->s:Z

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Lcsc;->t:Z

    iget-boolean v3, p1, Lcsc;->t:Z

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcsc;->u:Lmvv;

    iget-object v3, p1, Lcsc;->u:Lmvv;

    invoke-static {v1, v3}, Llyh;->I(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcsc;->v:Lmvv;

    iget-object v3, p1, Lcsc;->v:Lmvv;

    invoke-static {v1, v3}, Llyh;->I(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcsc;->w:Lmvv;

    iget-object v3, p1, Lcsc;->w:Lmvv;

    invoke-static {v1, v3}, Llyh;->I(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcsc;->x:Lklv;

    iget-object v3, p1, Lcsc;->x:Lklv;

    invoke-virtual {v1, v3}, Lklv;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcsc;->y:Lgya;

    iget-object v3, p1, Lcsc;->y:Lgya;

    invoke-virtual {v1, v3}, Lgya;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcsc;->z:I

    iget v3, p1, Lcsc;->z:I

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Lcsc;->A:Z

    iget-boolean v3, p1, Lcsc;->A:Z

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Lcsc;->B:Z

    iget-boolean v3, p1, Lcsc;->B:Z

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Lcsc;->C:Z

    iget-boolean v3, p1, Lcsc;->C:Z

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Lcsc;->D:Z

    iget-boolean v3, p1, Lcsc;->D:Z

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Lcsc;->E:Z

    iget-boolean p1, p1, Lcsc;->E:Z

    if-ne v1, p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 12

    iget-object v0, p0, Lcsc;->a:Lkll;

    iget v0, v0, Lkll;->b:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    iget-object v2, p0, Lcsc;->b:Lkll;

    iget v2, v2, Lkll;->b:I

    mul-int v0, v0, v1

    xor-int/2addr v0, v2

    iget-object v2, p0, Lcsc;->F:Ldne;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    mul-int v0, v0, v1

    xor-int/2addr v0, v2

    iget-object v2, p0, Lcsc;->c:Ljws;

    invoke-virtual {v2}, Ljws;->hashCode()I

    move-result v2

    mul-int v0, v0, v1

    xor-int/2addr v0, v2

    iget-object v2, p0, Lcsc;->d:Ljwu;

    invoke-virtual {v2}, Ljwu;->hashCode()I

    move-result v2

    mul-int v0, v0, v1

    xor-int/2addr v0, v2

    iget-object v2, p0, Lcsc;->e:Lmqp;

    invoke-virtual {v2}, Lmqp;->hashCode()I

    move-result v2

    mul-int v0, v0, v1

    xor-int/2addr v0, v2

    iget-object v2, p0, Lcsc;->f:Lkaf;

    invoke-virtual {v2}, Lkaf;->hashCode()I

    move-result v2

    mul-int v0, v0, v1

    xor-int/2addr v0, v2

    iget-object v2, p0, Lcsc;->g:Ljxa;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    mul-int v0, v0, v1

    xor-int/2addr v0, v2

    iget-object v2, p0, Lcsc;->h:Lmqp;

    invoke-virtual {v2}, Lmqp;->hashCode()I

    move-result v2

    mul-int v0, v0, v1

    xor-int/2addr v0, v2

    iget-object v2, p0, Lcsc;->i:Lmqp;

    invoke-virtual {v2}, Lmqp;->hashCode()I

    move-result v2

    mul-int v0, v0, v1

    xor-int/2addr v0, v2

    iget-object v2, p0, Lcsc;->j:Lmqp;

    invoke-virtual {v2}, Lmqp;->hashCode()I

    move-result v2

    mul-int v0, v0, v1

    xor-int/2addr v0, v2

    iget-object v2, p0, Lcsc;->k:Lmqp;

    invoke-virtual {v2}, Lmqp;->hashCode()I

    move-result v2

    mul-int v0, v0, v1

    xor-int/2addr v0, v2

    iget-boolean v2, p0, Lcsc;->l:Z

    const/16 v3, 0x4cf

    const/16 v4, 0x4d5

    const/4 v5, 0x1

    if-eq v5, v2, :cond_0

    const/16 v2, 0x4d5

    goto :goto_0

    :cond_0
    const/16 v2, 0x4cf

    :goto_0
    iget-object v6, p0, Lcsc;->m:Landroid/util/Range;

    invoke-virtual {v6}, Landroid/util/Range;->hashCode()I

    move-result v6

    mul-int v0, v0, v1

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    xor-int/2addr v0, v6

    iget-object v2, p0, Lcsc;->n:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->hashCode()I

    move-result v2

    mul-int v0, v0, v1

    xor-int/2addr v0, v2

    iget-boolean v2, p0, Lcsc;->o:Z

    if-eq v5, v2, :cond_1

    const/16 v2, 0x4d5

    goto :goto_1

    :cond_1
    const/16 v2, 0x4cf

    :goto_1
    iget-boolean v6, p0, Lcsc;->p:Z

    if-eq v5, v6, :cond_2

    const/16 v6, 0x4d5

    goto :goto_2

    :cond_2
    const/16 v6, 0x4cf

    :goto_2
    iget-boolean v7, p0, Lcsc;->q:Z

    if-eq v5, v7, :cond_3

    const/16 v7, 0x4d5

    goto :goto_3

    :cond_3
    const/16 v7, 0x4cf

    :goto_3
    iget-boolean v8, p0, Lcsc;->r:Z

    if-eq v5, v8, :cond_4

    const/16 v8, 0x4d5

    goto :goto_4

    :cond_4
    const/16 v8, 0x4cf

    :goto_4
    iget-boolean v9, p0, Lcsc;->s:Z

    if-eq v5, v9, :cond_5

    const/16 v9, 0x4d5

    goto :goto_5

    :cond_5
    const/16 v9, 0x4cf

    :goto_5
    iget-boolean v10, p0, Lcsc;->t:Z

    if-eq v5, v10, :cond_6

    const/16 v10, 0x4d5

    goto :goto_6

    :cond_6
    const/16 v10, 0x4cf

    :goto_6
    iget-object v11, p0, Lcsc;->u:Lmvv;

    invoke-virtual {v11}, Lmvv;->hashCode()I

    move-result v11

    mul-int v0, v0, v1

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    xor-int/2addr v0, v4

    mul-int v0, v0, v1

    xor-int/2addr v0, v6

    mul-int v0, v0, v1

    xor-int/2addr v0, v7

    mul-int v0, v0, v1

    xor-int/2addr v0, v8

    mul-int v0, v0, v1

    xor-int/2addr v0, v9

    mul-int v0, v0, v1

    xor-int/2addr v0, v10

    mul-int v0, v0, v1

    xor-int/2addr v0, v11

    iget-object v2, p0, Lcsc;->v:Lmvv;

    invoke-virtual {v2}, Lmvv;->hashCode()I

    move-result v2

    mul-int v0, v0, v1

    xor-int/2addr v0, v2

    iget-object v2, p0, Lcsc;->w:Lmvv;

    invoke-virtual {v2}, Lmvv;->hashCode()I

    move-result v2

    mul-int v0, v0, v1

    xor-int/2addr v0, v2

    iget-object v2, p0, Lcsc;->x:Lklv;

    mul-int v0, v0, v1

    invoke-virtual {v2}, Lklv;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget-object v2, p0, Lcsc;->y:Lgya;

    invoke-virtual {v2}, Lgya;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget v2, p0, Lcsc;->z:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget-boolean v2, p0, Lcsc;->A:Z

    if-eq v5, v2, :cond_7

    const/16 v2, 0x4d5

    goto :goto_7

    :cond_7
    const/16 v2, 0x4cf

    :goto_7
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget-boolean v2, p0, Lcsc;->B:Z

    if-eq v5, v2, :cond_8

    const/16 v2, 0x4d5

    goto :goto_8

    :cond_8
    const/16 v2, 0x4cf

    :goto_8
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget-boolean v2, p0, Lcsc;->C:Z

    if-eq v5, v2, :cond_9

    const/16 v2, 0x4d5

    goto :goto_9

    :cond_9
    const/16 v2, 0x4cf

    :goto_9
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    xor-int/2addr v0, v4

    mul-int v0, v0, v1

    xor-int/2addr v0, v4

    mul-int v0, v0, v1

    iget-boolean v2, p0, Lcsc;->D:Z

    if-eq v5, v2, :cond_a

    const/16 v2, 0x4d5

    goto :goto_a

    :cond_a
    const/16 v2, 0x4cf

    :goto_a
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget-boolean v2, p0, Lcsc;->E:Z

    if-eq v5, v2, :cond_b

    const/16 v3, 0x4d5

    :cond_b
    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    xor-int/2addr v0, v4

    mul-int v0, v0, v1

    xor-int/2addr v0, v4

    mul-int v0, v0, v1

    xor-int/2addr v0, v4

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 34

    move-object/from16 v0, p0

    iget-object v1, v0, Lcsc;->a:Lkll;

    iget-object v1, v1, Lkll;->a:Ljava/lang/String;

    iget-object v2, v0, Lcsc;->b:Lkll;

    iget-object v2, v2, Lkll;->a:Ljava/lang/String;

    iget-object v3, v0, Lcsc;->F:Ldne;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcsc;->c:Ljws;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcsc;->d:Ljwu;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcsc;->e:Lmqp;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcsc;->f:Lkaf;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lcsc;->g:Ljxa;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v0, Lcsc;->h:Lmqp;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v0, Lcsc;->i:Lmqp;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v0, Lcsc;->j:Lmqp;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v0, Lcsc;->k:Lmqp;

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    iget-boolean v13, v0, Lcsc;->l:Z

    iget-object v14, v0, Lcsc;->m:Landroid/util/Range;

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v0, Lcsc;->n:Landroid/util/Range;

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v15

    iget-boolean v15, v0, Lcsc;->o:Z

    move/from16 v17, v15

    iget-boolean v15, v0, Lcsc;->p:Z

    move/from16 v18, v15

    iget-boolean v15, v0, Lcsc;->q:Z

    move/from16 v19, v15

    iget-boolean v15, v0, Lcsc;->r:Z

    move/from16 v20, v15

    iget-boolean v15, v0, Lcsc;->s:Z

    move/from16 v21, v15

    iget-boolean v15, v0, Lcsc;->t:Z

    move/from16 v22, v15

    iget-object v15, v0, Lcsc;->u:Lmvv;

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v23, v15

    iget-object v15, v0, Lcsc;->v:Lmvv;

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v24, v15

    iget-object v15, v0, Lcsc;->w:Lmvv;

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v25, v15

    iget-object v15, v0, Lcsc;->x:Lklv;

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v26, v15

    iget-object v15, v0, Lcsc;->y:Lgya;

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v27, v15

    iget v15, v0, Lcsc;->z:I

    move/from16 v28, v15

    iget-boolean v15, v0, Lcsc;->A:Z

    move/from16 v29, v15

    iget-boolean v15, v0, Lcsc;->B:Z

    move/from16 v30, v15

    iget-boolean v15, v0, Lcsc;->C:Z

    move/from16 v31, v15

    iget-boolean v15, v0, Lcsc;->D:Z

    move/from16 v32, v15

    iget-boolean v15, v0, Lcsc;->E:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v33, v15

    const-string v15, "CaptureSessionConfig{cameraId="

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", streamCameraId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", camcorderCharacteristics="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", captureRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", videoResolution="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", snapshotSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", previewSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", videoEncoderProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", audioEncoderProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", maxDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", maxFileSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", shouldRecordLocationIfPermitted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", previewFpsRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", recordFpsRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", useContinuousAutoFocusOnDuringRecording="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", thermalThrottleFps=false, shouldUnlockAfAeWithSceneChange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", shouldDetectFace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", shouldVideoStabilizationOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", useOpticalStabilization="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", useLlv="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", allSupportedCaptureRates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", supportedCaptureRates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", supportedVideoResolutions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cameraFacing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", captureSessionType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", useMediaCodec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", topShotEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", shouldSupportSpeechMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", viewfinderEffectEnabled=false, videoEffectEnabled=false, amberEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", amethystEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", macroFocusEnabled=false, emeraldEnabled=false, featureCentralEnabled=false}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
