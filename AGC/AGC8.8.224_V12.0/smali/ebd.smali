.class public final Lebd;
.super Ljava/lang/Object;

# interfaces
.implements Lfci;


# instance fields
.field public a:Lnim;


# direct methods
.method public constructor <init>(Lnsw;I)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v2, Lnim;->aF:Lnim;

    iput-object v2, v0, Lebd;->a:Lnim;

    sget-object v2, Lnim;->aF:Lnim;

    invoke-virtual {v2}, Lnws;->O()Lnwn;

    move-result-object v2

    iget-object v3, v1, Lnsw;->a:Lnsm;

    if-nez v3, :cond_0

    sget-object v3, Lnsm;->l:Lnsm;

    :cond_0
    iget v4, v3, Lnsm;->a:F

    iget-object v5, v2, Lnwn;->b:Lnws;

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_1
    iget-object v5, v2, Lnwn;->b:Lnws;

    move-object v6, v5

    check-cast v6, Lnim;

    iget v7, v6, Lnim;->a:I

    const/4 v8, 0x2

    or-int/2addr v7, v8

    iput v7, v6, Lnim;->a:I

    iput v4, v6, Lnim;->d:F

    iget v4, v3, Lnsm;->b:F

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_2
    iget-object v5, v2, Lnwn;->b:Lnws;

    move-object v6, v5

    check-cast v6, Lnim;

    iget v7, v6, Lnim;->a:I

    const/4 v9, 0x4

    or-int/2addr v7, v9

    iput v7, v6, Lnim;->a:I

    iput v4, v6, Lnim;->e:F

    iget v4, v3, Lnsm;->c:F

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_3
    iget-object v5, v2, Lnwn;->b:Lnws;

    move-object v6, v5

    check-cast v6, Lnim;

    iget v7, v6, Lnim;->a:I

    or-int/lit8 v7, v7, 0x10

    iput v7, v6, Lnim;->a:I

    iput v4, v6, Lnim;->f:F

    iget v4, v3, Lnsm;->d:F

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_4
    iget-object v5, v2, Lnwn;->b:Lnws;

    move-object v6, v5

    check-cast v6, Lnim;

    iget v7, v6, Lnim;->a:I

    or-int/lit8 v7, v7, 0x20

    iput v7, v6, Lnim;->a:I

    iput v4, v6, Lnim;->g:F

    iget v4, v3, Lnsm;->e:F

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_5
    iget-object v5, v2, Lnwn;->b:Lnws;

    move-object v6, v5

    check-cast v6, Lnim;

    iget v7, v6, Lnim;->a:I

    const/high16 v10, 0x20000000

    or-int/2addr v7, v10

    iput v7, v6, Lnim;->a:I

    iput v4, v6, Lnim;->A:F

    iget v4, v3, Lnsm;->f:F

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_6
    iget-object v5, v2, Lnwn;->b:Lnws;

    move-object v6, v5

    check-cast v6, Lnim;

    iget v7, v6, Lnim;->a:I

    const/high16 v10, 0x40000000    # 2.0f

    or-int/2addr v7, v10

    iput v7, v6, Lnim;->a:I

    iput v4, v6, Lnim;->B:F

    iget v4, v3, Lnsm;->g:F

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_7
    iget-object v5, v2, Lnwn;->b:Lnws;

    move-object v6, v5

    check-cast v6, Lnim;

    iget v7, v6, Lnim;->a:I

    or-int/lit16 v7, v7, 0x80

    iput v7, v6, Lnim;->a:I

    iput v4, v6, Lnim;->h:F

    iget v4, v3, Lnsm;->h:F

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_8
    iget-object v5, v2, Lnwn;->b:Lnws;

    move-object v6, v5

    check-cast v6, Lnim;

    iget v7, v6, Lnim;->a:I

    or-int/lit16 v7, v7, 0x100

    iput v7, v6, Lnim;->a:I

    iput v4, v6, Lnim;->i:F

    iget v4, v3, Lnsm;->i:F

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_9
    iget-object v5, v2, Lnwn;->b:Lnws;

    move-object v6, v5

    check-cast v6, Lnim;

    iget v7, v6, Lnim;->a:I

    or-int/lit16 v7, v7, 0x200

    iput v7, v6, Lnim;->a:I

    iput v4, v6, Lnim;->j:F

    iget v4, v3, Lnsm;->j:F

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_a
    iget-object v5, v2, Lnwn;->b:Lnws;

    move-object v6, v5

    check-cast v6, Lnim;

    iget v7, v6, Lnim;->c:I

    const v10, 0x8000

    or-int/2addr v7, v10

    iput v7, v6, Lnim;->c:I

    iput v4, v6, Lnim;->au:F

    iget v3, v3, Lnsm;->k:F

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_b

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_b
    iget-object v4, v2, Lnwn;->b:Lnws;

    check-cast v4, Lnim;

    iget v5, v4, Lnim;->c:I

    const/high16 v6, 0x10000

    or-int/2addr v5, v6

    iput v5, v4, Lnim;->c:I

    iput v3, v4, Lnim;->av:F

    iget-object v3, v1, Lnsw;->m:Lnsv;

    if-nez v3, :cond_c

    sget-object v3, Lnsv;->j:Lnsv;

    :cond_c
    iget v4, v3, Lnsv;->a:F

    iget-object v5, v2, Lnwn;->b:Lnws;

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_d

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_d
    iget-object v5, v2, Lnwn;->b:Lnws;

    move-object v7, v5

    check-cast v7, Lnim;

    iget v11, v7, Lnim;->a:I

    or-int/2addr v11, v10

    iput v11, v7, Lnim;->a:I

    iput v4, v7, Lnim;->o:F

    iget v4, v3, Lnsv;->b:F

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_e

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_e
    iget-object v5, v2, Lnwn;->b:Lnws;

    move-object v7, v5

    check-cast v7, Lnim;

    iget v11, v7, Lnim;->a:I

    or-int/2addr v11, v6

    iput v11, v7, Lnim;->a:I

    iput v4, v7, Lnim;->p:F

    iget v4, v3, Lnsv;->c:F

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_f

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_f
    iget-object v5, v2, Lnwn;->b:Lnws;

    move-object v7, v5

    check-cast v7, Lnim;

    iget v11, v7, Lnim;->a:I

    const/high16 v12, 0x80000

    or-int/2addr v11, v12

    iput v11, v7, Lnim;->a:I

    iput v4, v7, Lnim;->t:F

    iget v4, v3, Lnsv;->d:F

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_10

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_10
    iget-object v5, v2, Lnwn;->b:Lnws;

    move-object v7, v5

    check-cast v7, Lnim;

    iget v11, v7, Lnim;->a:I

    const/high16 v13, 0x100000

    or-int/2addr v11, v13

    iput v11, v7, Lnim;->a:I

    iput v4, v7, Lnim;->u:F

    iget v4, v3, Lnsv;->e:F

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_11

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_11
    iget-object v5, v2, Lnwn;->b:Lnws;

    move-object v7, v5

    check-cast v7, Lnim;

    iget v11, v7, Lnim;->a:I

    const/high16 v14, 0x200000

    or-int/2addr v11, v14

    iput v11, v7, Lnim;->a:I

    iput v4, v7, Lnim;->v:F

    iget v4, v3, Lnsv;->f:F

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_12

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_12
    iget-object v5, v2, Lnwn;->b:Lnws;

    move-object v7, v5

    check-cast v7, Lnim;

    iget v11, v7, Lnim;->a:I

    const/high16 v15, 0x400000

    or-int/2addr v11, v15

    iput v11, v7, Lnim;->a:I

    iput v4, v7, Lnim;->w:F

    iget v4, v3, Lnsv;->g:F

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_13

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_13
    iget-object v5, v2, Lnwn;->b:Lnws;

    move-object v7, v5

    check-cast v7, Lnim;

    iget v11, v7, Lnim;->a:I

    const/high16 v16, 0x800000

    or-int v11, v11, v16

    iput v11, v7, Lnim;->a:I

    iput v4, v7, Lnim;->x:F

    iget v4, v3, Lnsv;->h:F

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_14

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_14
    iget-object v5, v2, Lnwn;->b:Lnws;

    move-object v7, v5

    check-cast v7, Lnim;

    iget v11, v7, Lnim;->a:I

    const/high16 v17, 0x1000000

    or-int v11, v11, v17

    iput v11, v7, Lnim;->a:I

    iput v4, v7, Lnim;->y:F

    iget v3, v3, Lnsv;->i:F

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_15

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_15
    iget-object v4, v2, Lnwn;->b:Lnws;

    check-cast v4, Lnim;

    iget v5, v4, Lnim;->c:I

    or-int/2addr v5, v12

    iput v5, v4, Lnim;->c:I

    iput v3, v4, Lnim;->az:F

    iget-object v3, v1, Lnsw;->o:Lnsp;

    if-nez v3, :cond_16

    sget-object v3, Lnsp;->c:Lnsp;

    :cond_16
    iget-boolean v4, v3, Lnsp;->a:Z

    iget-object v5, v2, Lnwn;->b:Lnws;

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_17

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_17
    iget-object v5, v2, Lnwn;->b:Lnws;

    move-object v7, v5

    check-cast v7, Lnim;

    iget v11, v7, Lnim;->c:I

    const/high16 v18, 0x20000

    or-int v11, v11, v18

    iput v11, v7, Lnim;->c:I

    iput-boolean v4, v7, Lnim;->ax:Z

    iget-boolean v3, v3, Lnsp;->b:Z

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_18

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_18
    iget-object v4, v2, Lnwn;->b:Lnws;

    check-cast v4, Lnim;

    iget v5, v4, Lnim;->c:I

    const/high16 v7, 0x40000

    or-int/2addr v5, v7

    iput v5, v4, Lnim;->c:I

    iput-boolean v3, v4, Lnim;->ay:Z

    iget-object v3, v1, Lnsw;->p:Lnsr;

    if-nez v3, :cond_19

    sget-object v3, Lnsr;->d:Lnsr;

    :cond_19
    iget-boolean v4, v3, Lnsr;->a:Z

    iget-object v5, v2, Lnwn;->b:Lnws;

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_1a

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_1a
    iget-object v5, v2, Lnwn;->b:Lnws;

    move-object v11, v5

    check-cast v11, Lnim;

    iget v8, v11, Lnim;->c:I

    or-int/2addr v8, v15

    iput v8, v11, Lnim;->c:I

    iput-boolean v4, v11, Lnim;->aC:Z

    iget v4, v3, Lnsr;->b:I

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_1b

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_1b
    iget-object v5, v2, Lnwn;->b:Lnws;

    move-object v8, v5

    check-cast v8, Lnim;

    iget v11, v8, Lnim;->c:I

    or-int v11, v11, v16

    iput v11, v8, Lnim;->c:I

    iput v4, v8, Lnim;->aD:I

    iget-boolean v3, v3, Lnsr;->c:Z

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_1c

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_1c
    iget-object v4, v2, Lnwn;->b:Lnws;

    check-cast v4, Lnim;

    iget v5, v4, Lnim;->c:I

    or-int v5, v5, v17

    iput v5, v4, Lnim;->c:I

    iput-boolean v3, v4, Lnim;->aE:Z

    iget-object v3, v1, Lnsw;->s:Loaz;

    if-nez v3, :cond_1d

    sget-object v3, Loaz;->e:Loaz;

    :cond_1d
    iget-boolean v3, v3, Loaz;->c:Z

    if-nez v3, :cond_37

    iget-object v3, v1, Lnsw;->s:Loaz;

    if-nez v3, :cond_1e

    sget-object v3, Loaz;->e:Loaz;

    :cond_1e
    iget v3, v3, Loaz;->a:F

    iget-object v4, v2, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_1f

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_1f
    iget-object v4, v2, Lnwn;->b:Lnws;

    move-object v5, v4

    check-cast v5, Lnim;

    iget v8, v5, Lnim;->b:I

    or-int/lit8 v8, v8, 0x10

    iput v8, v5, Lnim;->b:I

    iput v3, v5, Lnim;->E:F

    iget-object v3, v1, Lnsw;->s:Loaz;

    if-nez v3, :cond_20

    sget-object v3, Loaz;->e:Loaz;

    :cond_20
    iget v3, v3, Loaz;->b:F

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_21

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_21
    iget-object v4, v2, Lnwn;->b:Lnws;

    check-cast v4, Lnim;

    iget v5, v4, Lnim;->b:I

    or-int/lit8 v5, v5, 0x20

    iput v5, v4, Lnim;->b:I

    iput v3, v4, Lnim;->F:F

    iget-object v3, v1, Lnsw;->s:Loaz;

    if-nez v3, :cond_22

    sget-object v3, Loaz;->e:Loaz;

    :cond_22
    iget-object v3, v3, Loaz;->d:Loay;

    if-nez v3, :cond_23

    sget-object v3, Loay;->h:Loay;

    :cond_23
    iget v3, v3, Loay;->a:F

    iget-object v4, v2, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_24

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_24
    iget-object v4, v2, Lnwn;->b:Lnws;

    move-object v5, v4

    check-cast v5, Lnim;

    iget v8, v5, Lnim;->b:I

    or-int/lit16 v8, v8, 0x80

    iput v8, v5, Lnim;->b:I

    iput v3, v5, Lnim;->H:F

    iget-object v3, v1, Lnsw;->s:Loaz;

    if-nez v3, :cond_25

    sget-object v3, Loaz;->e:Loaz;

    :cond_25
    iget-object v3, v3, Loaz;->d:Loay;

    if-nez v3, :cond_26

    sget-object v3, Loay;->h:Loay;

    :cond_26
    iget v3, v3, Loay;->b:F

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_27

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_27
    iget-object v4, v2, Lnwn;->b:Lnws;

    move-object v5, v4

    check-cast v5, Lnim;

    iget v8, v5, Lnim;->b:I

    or-int/lit16 v8, v8, 0x100

    iput v8, v5, Lnim;->b:I

    iput v3, v5, Lnim;->I:F

    iget-object v3, v1, Lnsw;->s:Loaz;

    if-nez v3, :cond_28

    sget-object v3, Loaz;->e:Loaz;

    :cond_28
    iget-object v3, v3, Loaz;->d:Loay;

    if-nez v3, :cond_29

    sget-object v3, Loay;->h:Loay;

    :cond_29
    iget v3, v3, Loay;->c:F

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_2a

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_2a
    iget-object v4, v2, Lnwn;->b:Lnws;

    move-object v5, v4

    check-cast v5, Lnim;

    iget v8, v5, Lnim;->b:I

    or-int/lit16 v8, v8, 0x200

    iput v8, v5, Lnim;->b:I

    iput v3, v5, Lnim;->J:F

    iget-object v3, v1, Lnsw;->s:Loaz;

    if-nez v3, :cond_2b

    sget-object v3, Loaz;->e:Loaz;

    :cond_2b
    iget-object v3, v3, Loaz;->d:Loay;

    if-nez v3, :cond_2c

    sget-object v3, Loay;->h:Loay;

    :cond_2c
    iget v3, v3, Loay;->d:F

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_2d

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_2d
    iget-object v4, v2, Lnwn;->b:Lnws;

    move-object v5, v4

    check-cast v5, Lnim;

    iget v8, v5, Lnim;->b:I

    or-int/lit16 v8, v8, 0x400

    iput v8, v5, Lnim;->b:I

    iput v3, v5, Lnim;->K:F

    iget-object v3, v1, Lnsw;->s:Loaz;

    if-nez v3, :cond_2e

    sget-object v3, Loaz;->e:Loaz;

    :cond_2e
    iget-object v3, v3, Loaz;->d:Loay;

    if-nez v3, :cond_2f

    sget-object v3, Loay;->h:Loay;

    :cond_2f
    iget v3, v3, Loay;->e:I

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_30

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_30
    iget-object v4, v2, Lnwn;->b:Lnws;

    move-object v5, v4

    check-cast v5, Lnim;

    iget v8, v5, Lnim;->b:I

    or-int/lit16 v8, v8, 0x800

    iput v8, v5, Lnim;->b:I

    iput v3, v5, Lnim;->L:I

    iget-object v3, v1, Lnsw;->s:Loaz;

    if-nez v3, :cond_31

    sget-object v3, Loaz;->e:Loaz;

    :cond_31
    iget-object v3, v3, Loaz;->d:Loay;

    if-nez v3, :cond_32

    sget-object v3, Loay;->h:Loay;

    :cond_32
    iget v3, v3, Loay;->f:F

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_33

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_33
    iget-object v4, v2, Lnwn;->b:Lnws;

    move-object v5, v4

    check-cast v5, Lnim;

    iget v8, v5, Lnim;->b:I

    or-int/lit16 v8, v8, 0x1000

    iput v8, v5, Lnim;->b:I

    iput v3, v5, Lnim;->M:F

    iget-object v3, v1, Lnsw;->s:Loaz;

    if-nez v3, :cond_34

    sget-object v3, Loaz;->e:Loaz;

    :cond_34
    iget-object v3, v3, Loaz;->d:Loay;

    if-nez v3, :cond_35

    sget-object v3, Loay;->h:Loay;

    :cond_35
    iget v3, v3, Loay;->g:F

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_36

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_36
    iget-object v4, v2, Lnwn;->b:Lnws;

    check-cast v4, Lnim;

    iget v5, v4, Lnim;->b:I

    or-int/lit16 v5, v5, 0x2000

    iput v5, v4, Lnim;->b:I

    iput v3, v4, Lnim;->N:F

    :cond_37
    iget-object v3, v1, Lnsw;->x:Lnsu;

    if-nez v3, :cond_38

    sget-object v3, Lnsu;->i:Lnsu;

    :cond_38
    iget v4, v3, Lnsu;->a:I

    iget-object v5, v2, Lnwn;->b:Lnws;

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_39

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_39
    iget-object v5, v2, Lnwn;->b:Lnws;

    move-object v8, v5

    check-cast v8, Lnim;

    iget v11, v8, Lnim;->b:I

    or-int/2addr v10, v11

    iput v10, v8, Lnim;->b:I

    iput v4, v8, Lnim;->P:I

    iget v4, v3, Lnsu;->b:F

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_3a

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_3a
    iget-object v5, v2, Lnwn;->b:Lnws;

    move-object v8, v5

    check-cast v8, Lnim;

    iget v10, v8, Lnim;->b:I

    or-int/2addr v6, v10

    iput v6, v8, Lnim;->b:I

    iput v4, v8, Lnim;->Q:F

    iget v4, v3, Lnsu;->c:F

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_3b

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_3b
    iget-object v5, v2, Lnwn;->b:Lnws;

    move-object v6, v5

    check-cast v6, Lnim;

    iget v8, v6, Lnim;->b:I

    const/high16 v10, 0x20000

    or-int/2addr v8, v10

    iput v8, v6, Lnim;->b:I

    iput v4, v6, Lnim;->R:F

    iget v4, v3, Lnsu;->d:F

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_3c

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_3c
    iget-object v5, v2, Lnwn;->b:Lnws;

    move-object v6, v5

    check-cast v6, Lnim;

    iget v8, v6, Lnim;->b:I

    or-int/2addr v8, v7

    iput v8, v6, Lnim;->b:I

    iput v4, v6, Lnim;->S:F

    iget v4, v3, Lnsu;->e:F

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_3d

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_3d
    iget-object v5, v2, Lnwn;->b:Lnws;

    move-object v6, v5

    check-cast v6, Lnim;

    iget v8, v6, Lnim;->b:I

    or-int/2addr v8, v12

    iput v8, v6, Lnim;->b:I

    iput v4, v6, Lnim;->T:F

    iget v4, v3, Lnsu;->f:F

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_3e

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_3e
    iget-object v5, v2, Lnwn;->b:Lnws;

    move-object v6, v5

    check-cast v6, Lnim;

    iget v8, v6, Lnim;->b:I

    or-int/2addr v8, v13

    iput v8, v6, Lnim;->b:I

    iput v4, v6, Lnim;->U:F

    iget v4, v3, Lnsu;->g:F

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_3f

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_3f
    iget-object v5, v2, Lnwn;->b:Lnws;

    move-object v6, v5

    check-cast v6, Lnim;

    iget v8, v6, Lnim;->b:I

    or-int/2addr v8, v14

    iput v8, v6, Lnim;->b:I

    iput v4, v6, Lnim;->V:F

    iget v3, v3, Lnsu;->h:F

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_40

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_40
    iget-object v4, v2, Lnwn;->b:Lnws;

    check-cast v4, Lnim;

    iget v5, v4, Lnim;->b:I

    or-int/2addr v5, v15

    iput v5, v4, Lnim;->b:I

    iput v3, v4, Lnim;->W:F

    iget-object v3, v1, Lnsw;->y:Lnsn;

    if-nez v3, :cond_41

    sget-object v3, Lnsn;->d:Lnsn;

    :cond_41
    iget v4, v3, Lnsn;->a:I

    iget-object v5, v2, Lnwn;->b:Lnws;

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_42

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_42
    iget-object v5, v2, Lnwn;->b:Lnws;

    move-object v6, v5

    check-cast v6, Lnim;

    iget v8, v6, Lnim;->b:I

    or-int v8, v8, v16

    iput v8, v6, Lnim;->b:I

    iput v4, v6, Lnim;->Y:I

    iget v4, v3, Lnsn;->b:F

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_43

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_43
    iget-object v5, v2, Lnwn;->b:Lnws;

    move-object v6, v5

    check-cast v6, Lnim;

    iget v8, v6, Lnim;->b:I

    or-int v8, v8, v17

    iput v8, v6, Lnim;->b:I

    iput v4, v6, Lnim;->Z:F

    iget v3, v3, Lnsn;->c:F

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_44

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_44
    iget-object v4, v2, Lnwn;->b:Lnws;

    check-cast v4, Lnim;

    iget v5, v4, Lnim;->b:I

    const/high16 v6, 0x2000000

    or-int/2addr v5, v6

    iput v5, v4, Lnim;->b:I

    iput v3, v4, Lnim;->aa:F

    iget-object v3, v1, Lnsw;->z:Lnss;

    if-nez v3, :cond_45

    sget-object v3, Lnss;->f:Lnss;

    :cond_45
    iget-boolean v4, v3, Lnss;->a:Z

    iget-object v5, v2, Lnwn;->b:Lnws;

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_46

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_46
    iget-object v5, v2, Lnwn;->b:Lnws;

    move-object v6, v5

    check-cast v6, Lnim;

    iget v8, v6, Lnim;->b:I

    const/high16 v10, 0x4000000

    or-int/2addr v8, v10

    iput v8, v6, Lnim;->b:I

    iput-boolean v4, v6, Lnim;->ab:Z

    iget-boolean v4, v3, Lnss;->b:Z

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_47

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_47
    iget-object v5, v2, Lnwn;->b:Lnws;

    move-object v6, v5

    check-cast v6, Lnim;

    iget v8, v6, Lnim;->c:I

    or-int/2addr v8, v9

    iput v8, v6, Lnim;->c:I

    iput-boolean v4, v6, Lnim;->ag:Z

    iget v4, v3, Lnss;->c:I

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_48

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_48
    iget-object v5, v2, Lnwn;->b:Lnws;

    move-object v6, v5

    check-cast v6, Lnim;

    iget v8, v6, Lnim;->b:I

    const/high16 v10, 0x8000000

    or-int/2addr v8, v10

    iput v8, v6, Lnim;->b:I

    iput v4, v6, Lnim;->ac:I

    iget v4, v3, Lnss;->d:F

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_49

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_49
    iget-object v5, v2, Lnwn;->b:Lnws;

    move-object v6, v5

    check-cast v6, Lnim;

    iget v8, v6, Lnim;->b:I

    const/high16 v10, 0x10000000

    or-int/2addr v8, v10

    iput v8, v6, Lnim;->b:I

    iput v4, v6, Lnim;->ad:F

    iget v3, v3, Lnss;->e:F

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_4a

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_4a
    iget-object v4, v2, Lnwn;->b:Lnws;

    check-cast v4, Lnim;

    iget v5, v4, Lnim;->c:I

    or-int/lit8 v5, v5, 0x20

    iput v5, v4, Lnim;->c:I

    iput v3, v4, Lnim;->ai:F

    iget-object v3, v1, Lnsw;->A:Lnsq;

    if-nez v3, :cond_4b

    sget-object v3, Lnsq;->c:Lnsq;

    :cond_4b
    iget v4, v3, Lnsq;->a:I

    iget-object v5, v2, Lnwn;->b:Lnws;

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_4c

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_4c
    iget-object v5, v2, Lnwn;->b:Lnws;

    move-object v6, v5

    check-cast v6, Lnim;

    iget v8, v6, Lnim;->c:I

    const/4 v10, 0x1

    or-int/2addr v8, v10

    iput v8, v6, Lnim;->c:I

    iput v4, v6, Lnim;->ae:I

    iget v3, v3, Lnsq;->b:I

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_4d

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_4d
    iget-object v4, v2, Lnwn;->b:Lnws;

    check-cast v4, Lnim;

    iget v5, v4, Lnim;->c:I

    const/4 v6, 0x2

    or-int/2addr v5, v6

    iput v5, v4, Lnim;->c:I

    iput v3, v4, Lnim;->af:I

    iget-object v3, v1, Lnsw;->B:Lnso;

    if-nez v3, :cond_4e

    sget-object v3, Lnso;->f:Lnso;

    :cond_4e
    iget-boolean v4, v3, Lnso;->a:Z

    iget-object v5, v2, Lnwn;->b:Lnws;

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_4f

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_4f
    iget-object v5, v2, Lnwn;->b:Lnws;

    move-object v8, v5

    check-cast v8, Lnim;

    iget v11, v8, Lnim;->c:I

    or-int/lit8 v11, v11, 0x40

    iput v11, v8, Lnim;->c:I

    iput-boolean v4, v8, Lnim;->aj:Z

    iget v4, v3, Lnso;->b:I

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_50

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_50
    iget-object v5, v2, Lnwn;->b:Lnws;

    move-object v8, v5

    check-cast v8, Lnim;

    iget v11, v8, Lnim;->c:I

    or-int/lit16 v11, v11, 0x80

    iput v11, v8, Lnim;->c:I

    iput v4, v8, Lnim;->ak:I

    iget v4, v3, Lnso;->c:I

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_51

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_51
    iget-object v5, v2, Lnwn;->b:Lnws;

    move-object v8, v5

    check-cast v8, Lnim;

    iget v11, v8, Lnim;->c:I

    or-int/lit16 v11, v11, 0x100

    iput v11, v8, Lnim;->c:I

    iput v4, v8, Lnim;->al:I

    iget v4, v3, Lnso;->d:F

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_52

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_52
    iget-object v5, v2, Lnwn;->b:Lnws;

    move-object v8, v5

    check-cast v8, Lnim;

    iget v11, v8, Lnim;->c:I

    or-int/lit16 v11, v11, 0x200

    iput v11, v8, Lnim;->c:I

    iput v4, v8, Lnim;->am:F

    iget v3, v3, Lnso;->e:F

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_53

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_53
    iget-object v4, v2, Lnwn;->b:Lnws;

    check-cast v4, Lnim;

    iget v5, v4, Lnim;->c:I

    or-int/lit16 v5, v5, 0x400

    iput v5, v4, Lnim;->c:I

    iput v3, v4, Lnim;->an:F

    iget-object v3, v1, Lnsw;->C:Lnst;

    if-nez v3, :cond_54

    sget-object v3, Lnst;->d:Lnst;

    :cond_54
    iget v4, v3, Lnst;->a:F

    iget-object v5, v2, Lnwn;->b:Lnws;

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_55

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_55
    iget-object v5, v2, Lnwn;->b:Lnws;

    check-cast v5, Lnim;

    iget v8, v5, Lnim;->c:I

    or-int/lit16 v8, v8, 0x4000

    iput v8, v5, Lnim;->c:I

    iput v4, v5, Lnim;->ar:F

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    iget-object v8, v3, Lnst;->b:Lnwx;

    invoke-interface {v8}, Lnwx;->size()I

    move-result v8

    if-ge v5, v8, :cond_58

    iget-object v8, v3, Lnst;->b:Lnwx;

    invoke-interface {v8, v5}, Lnwx;->d(I)F

    move-result v8

    iget-object v11, v2, Lnwn;->b:Lnws;

    invoke-virtual {v11}, Lnws;->ac()Z

    move-result v11

    if-nez v11, :cond_56

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_56
    iget-object v11, v2, Lnwn;->b:Lnws;

    check-cast v11, Lnim;

    iget-object v12, v11, Lnim;->as:Lnwx;

    invoke-interface {v12}, Lnwx;->c()Z

    move-result v15

    if-nez v15, :cond_57

    invoke-static {v12}, Lnws;->R(Lnwx;)Lnwx;

    move-result-object v12

    iput-object v12, v11, Lnim;->as:Lnwx;

    :cond_57
    iget-object v11, v11, Lnim;->as:Lnwx;

    invoke-interface {v11, v8}, Lnwx;->g(F)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_58
    const/4 v5, 0x0

    :goto_1
    iget-object v8, v3, Lnst;->c:Lnwx;

    invoke-interface {v8}, Lnwx;->size()I

    move-result v8

    if-ge v5, v8, :cond_5b

    iget-object v8, v3, Lnst;->c:Lnwx;

    invoke-interface {v8, v5}, Lnwx;->d(I)F

    move-result v8

    iget-object v11, v2, Lnwn;->b:Lnws;

    invoke-virtual {v11}, Lnws;->ac()Z

    move-result v11

    if-nez v11, :cond_59

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_59
    iget-object v11, v2, Lnwn;->b:Lnws;

    check-cast v11, Lnim;

    iget-object v12, v11, Lnim;->at:Lnwx;

    invoke-interface {v12}, Lnwx;->c()Z

    move-result v15

    if-nez v15, :cond_5a

    invoke-static {v12}, Lnws;->R(Lnwx;)Lnwx;

    move-result-object v12

    iput-object v12, v11, Lnim;->at:Lnwx;

    :cond_5a
    iget-object v11, v11, Lnim;->at:Lnwx;

    invoke-interface {v11, v8}, Lnwx;->g(F)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5b
    const/4 v3, 0x0

    :goto_2
    iget-object v5, v1, Lnsw;->D:Lnwy;

    invoke-interface {v5}, Lnwy;->size()I

    move-result v5

    if-ge v3, v5, :cond_5c

    iget-object v5, v1, Lnsw;->D:Lnwy;

    invoke-interface {v5, v3}, Lnwy;->d(I)I

    move-result v5

    invoke-virtual {v2, v5}, Lnwn;->E(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5c
    invoke-static/range {p2 .. p2}, Lebd;->a(I)I

    move-result v3

    iget-object v5, v2, Lnwn;->b:Lnws;

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_5d

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_5d
    iget-object v5, v2, Lnwn;->b:Lnws;

    move-object v8, v5

    check-cast v8, Lnim;

    add-int/lit8 v3, v3, -0x1

    iput v3, v8, Lnim;->aA:I

    iget v3, v8, Lnim;->c:I

    or-int/2addr v3, v13

    iput v3, v8, Lnim;->c:I

    iget v3, v1, Lnsw;->n:I

    invoke-static {v3}, Lnsy;->c(I)I

    move-result v3

    if-nez v3, :cond_5e

    const/4 v3, 0x2

    :cond_5e
    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_5f

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_5f
    invoke-static {v3}, Lebd;->a(I)I

    move-result v3

    iget-object v5, v2, Lnwn;->b:Lnws;

    move-object v8, v5

    check-cast v8, Lnim;

    add-int/lit8 v3, v3, -0x1

    iput v3, v8, Lnim;->aB:I

    iget v3, v8, Lnim;->c:I

    or-int/2addr v3, v14

    iput v3, v8, Lnim;->c:I

    iget v3, v1, Lnsw;->b:I

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_60

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_60
    iget-object v5, v2, Lnwn;->b:Lnws;

    move-object v8, v5

    check-cast v8, Lnim;

    iget v11, v8, Lnim;->a:I

    or-int/lit16 v11, v11, 0x400

    iput v11, v8, Lnim;->a:I

    iput v3, v8, Lnim;->k:I

    iget v3, v1, Lnsw;->c:I

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_61

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_61
    iget-object v5, v2, Lnwn;->b:Lnws;

    move-object v8, v5

    check-cast v8, Lnim;

    iget v11, v8, Lnim;->a:I

    or-int/lit16 v11, v11, 0x800

    iput v11, v8, Lnim;->a:I

    iput v3, v8, Lnim;->l:I

    iget v3, v1, Lnsw;->h:I

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_62

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_62
    iget-object v5, v2, Lnwn;->b:Lnws;

    move-object v8, v5

    check-cast v8, Lnim;

    iget v11, v8, Lnim;->a:I

    or-int/lit16 v11, v11, 0x1000

    iput v11, v8, Lnim;->a:I

    iput v3, v8, Lnim;->m:I

    iget-wide v11, v1, Lnsw;->i:J

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_63

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_63
    iget-object v3, v2, Lnwn;->b:Lnws;

    move-object v5, v3

    check-cast v5, Lnim;

    iget v8, v5, Lnim;->c:I

    or-int/lit16 v8, v8, 0x800

    iput v8, v5, Lnim;->c:I

    iput-wide v11, v5, Lnim;->ao:J

    iget-wide v11, v1, Lnsw;->j:J

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_64

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_64
    iget-object v3, v2, Lnwn;->b:Lnws;

    move-object v5, v3

    check-cast v5, Lnim;

    iget v8, v5, Lnim;->c:I

    or-int/lit16 v8, v8, 0x1000

    iput v8, v5, Lnim;->c:I

    iput-wide v11, v5, Lnim;->ap:J

    iget-wide v11, v1, Lnsw;->k:J

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_65

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_65
    iget-object v3, v2, Lnwn;->b:Lnws;

    move-object v5, v3

    check-cast v5, Lnim;

    iget v8, v5, Lnim;->c:I

    or-int/lit16 v8, v8, 0x2000

    iput v8, v5, Lnim;->c:I

    iput-wide v11, v5, Lnim;->aq:J

    iget v5, v1, Lnsw;->l:I

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_66

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_66
    iget-object v3, v2, Lnwn;->b:Lnws;

    move-object v8, v3

    check-cast v8, Lnim;

    iget v11, v8, Lnim;->a:I

    or-int/lit16 v11, v11, 0x2000

    iput v11, v8, Lnim;->a:I

    iput v5, v8, Lnim;->n:I

    iget-boolean v5, v1, Lnsw;->g:Z

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_67

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_67
    iget-object v3, v2, Lnwn;->b:Lnws;

    move-object v8, v3

    check-cast v8, Lnim;

    iget v11, v8, Lnim;->a:I

    or-int/2addr v7, v11

    iput v7, v8, Lnim;->a:I

    iput-boolean v5, v8, Lnim;->q:Z

    iget-boolean v5, v1, Lnsw;->q:Z

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_68

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_68
    iget-object v3, v2, Lnwn;->b:Lnws;

    move-object v7, v3

    check-cast v7, Lnim;

    iget v8, v7, Lnim;->a:I

    const/high16 v11, 0x10000000

    or-int/2addr v8, v11

    iput v8, v7, Lnim;->a:I

    iput-boolean v5, v7, Lnim;->z:Z

    iget v5, v1, Lnsw;->r:F

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_69

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_69
    iget-object v3, v2, Lnwn;->b:Lnws;

    move-object v7, v3

    check-cast v7, Lnim;

    iget v8, v7, Lnim;->a:I

    const/high16 v11, -0x80000000

    or-int/2addr v8, v11

    iput v8, v7, Lnim;->a:I

    iput v5, v7, Lnim;->C:F

    iget v5, v1, Lnsw;->f:I

    invoke-static {v5}, Lkwp;->ay(I)I

    move-result v5

    if-nez v5, :cond_6a

    const/4 v5, 0x1

    :cond_6a
    add-int/lit8 v5, v5, -0x1

    packed-switch v5, :pswitch_data_0

    const/4 v8, 0x1

    goto :goto_3

    :pswitch_0
    const/4 v8, 0x7

    goto :goto_3

    :pswitch_1
    const/4 v8, 0x6

    goto :goto_3

    :pswitch_2
    const/4 v8, 0x5

    goto :goto_3

    :pswitch_3
    const/4 v8, 0x4

    goto :goto_3

    :pswitch_4
    const/4 v8, 0x3

    goto :goto_3

    :pswitch_5
    const/4 v8, 0x2

    :goto_3
    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_6b

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_6b
    iget-object v3, v2, Lnwn;->b:Lnws;

    move-object v5, v3

    check-cast v5, Lnim;

    add-int/lit8 v8, v8, -0x1

    iput v8, v5, Lnim;->D:I

    iget v6, v5, Lnim;->b:I

    or-int/lit8 v6, v6, 0x8

    iput v6, v5, Lnim;->b:I

    iget v5, v1, Lnsw;->t:F

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_6c

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_6c
    iget-object v3, v2, Lnwn;->b:Lnws;

    move-object v6, v3

    check-cast v6, Lnim;

    iget v7, v6, Lnim;->b:I

    or-int/lit8 v7, v7, 0x40

    iput v7, v6, Lnim;->b:I

    iput v5, v6, Lnim;->G:F

    iget v5, v1, Lnsw;->u:F

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_6d

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_6d
    iget-object v3, v2, Lnwn;->b:Lnws;

    move-object v6, v3

    check-cast v6, Lnim;

    iget v7, v6, Lnim;->b:I

    or-int/lit16 v7, v7, 0x4000

    iput v7, v6, Lnim;->b:I

    iput v5, v6, Lnim;->O:F

    iget v5, v1, Lnsw;->v:F

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_6e

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_6e
    iget-object v3, v2, Lnwn;->b:Lnws;

    check-cast v3, Lnim;

    iget v6, v3, Lnim;->c:I

    or-int/lit8 v6, v6, 0x10

    iput v6, v3, Lnim;->c:I

    iput v5, v3, Lnim;->ah:F

    const/4 v3, 0x0

    :goto_4
    iget-object v5, v1, Lnsw;->d:Lnwx;

    invoke-interface {v5}, Lnwx;->size()I

    move-result v5

    if-ge v3, v5, :cond_6f

    iget-object v5, v1, Lnsw;->d:Lnwx;

    invoke-interface {v5, v3}, Lnwx;->d(I)F

    move-result v5

    invoke-virtual {v2, v5}, Lnwn;->F(F)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_6f
    const/4 v3, 0x0

    :goto_5
    iget-object v5, v1, Lnsw;->e:Lnwu;

    invoke-interface {v5}, Lnwu;->size()I

    move-result v5

    if-ge v3, v5, :cond_73

    iget-object v5, v1, Lnsw;->e:Lnwu;

    invoke-interface {v5, v3}, Lnwu;->g(I)Z

    move-result v5

    iget-object v6, v2, Lnwn;->b:Lnws;

    invoke-virtual {v6}, Lnws;->ac()Z

    move-result v6

    if-nez v6, :cond_70

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_70
    iget-object v6, v2, Lnwn;->b:Lnws;

    check-cast v6, Lnim;

    iget-object v7, v6, Lnim;->s:Lnwu;

    invoke-interface {v7}, Lnwu;->c()Z

    move-result v8

    if-nez v8, :cond_72

    invoke-interface {v7}, Lnwu;->size()I

    move-result v8

    if-nez v8, :cond_71

    const/16 v8, 0xa

    goto :goto_6

    :cond_71
    add-int/2addr v8, v8

    :goto_6
    invoke-interface {v7, v8}, Lnwu;->d(I)Lnwu;

    move-result-object v7

    iput-object v7, v6, Lnim;->s:Lnwu;

    :cond_72
    iget-object v6, v6, Lnim;->s:Lnwu;

    invoke-interface {v6, v5}, Lnwu;->f(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_73
    :goto_7
    iget-object v3, v1, Lnsw;->w:Lnwx;

    invoke-interface {v3}, Lnwx;->size()I

    move-result v3

    if-ge v4, v3, :cond_74

    iget-object v3, v1, Lnsw;->w:Lnwx;

    invoke-interface {v3, v4}, Lnwx;->d(I)F

    move-result v3

    invoke-virtual {v2, v3}, Lnwn;->G(F)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_74
    invoke-virtual {v2}, Lnwn;->i()Lnws;

    move-result-object v1

    check-cast v1, Lnim;

    iput-object v1, v0, Lebd;->a:Lnim;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(I)I
    .locals 0

    add-int/lit8 p0, p0, -0x1

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x1

    return p0

    :pswitch_0
    const/4 p0, 0x4

    return p0

    :pswitch_1
    const/4 p0, 0x3

    return p0

    :pswitch_2
    const/4 p0, 0x2

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
