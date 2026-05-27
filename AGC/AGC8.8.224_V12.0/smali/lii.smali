.class public final synthetic Llii;
.super Ljava/lang/Object;

# interfaces
.implements Lnnn;


# instance fields
.field public final synthetic a:Llif;

.field public final synthetic b:Lmap;


# direct methods
.method public synthetic constructor <init>(Lmap;Llif;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llii;->b:Lmap;

    iput-object p2, p0, Llii;->a:Llif;

    return-void
.end method


# virtual methods
.method public final a()Lnou;
    .locals 14

    iget-object v0, p0, Llii;->b:Lmap;

    iget-object v1, p0, Llii;->a:Llif;

    iget-boolean v2, v1, Llif;->g:Z

    const/4 v3, 0x2

    if-eqz v2, :cond_1

    sget-object v2, Lozu;->d:Lozu;

    invoke-virtual {v2}, Lnws;->O()Lnwn;

    move-result-object v2

    iget-object v4, v2, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_0
    iget-object v4, v2, Lnwn;->b:Lnws;

    check-cast v4, Lozu;

    iput v3, v4, Lozu;->c:I

    iget v5, v4, Lozu;->a:I

    or-int/lit8 v5, v5, 0x4

    iput v5, v4, Lozu;->a:I

    invoke-virtual {v2}, Lnwn;->i()Lnws;

    move-result-object v2

    check-cast v2, Lozu;

    goto :goto_0

    :cond_1
    iget-object v2, v1, Llif;->f:Ljava/lang/Long;

    iget-object v4, v0, Lmap;->h:Ljava/lang/Object;

    check-cast v4, Llmy;

    iget-boolean v5, v4, Llmy;->c:Z

    iget-object v4, v4, Llmy;->b:Llnc;

    if-eqz v5, :cond_2

    invoke-virtual {v4, v2}, Llnc;->b(Ljava/lang/Long;)Lozu;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Llnc;->d()Lozu;

    move-result-object v2

    :goto_0
    iget-wide v4, v2, Lozu;->b:J

    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-nez v8, :cond_3

    sget-object v0, Lnor;->a:Lnou;

    goto/16 :goto_8

    :cond_3
    iget-object v4, v0, Lmap;->a:Loiw;

    invoke-interface {v4}, Loiw;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Llim;

    iget-object v5, v1, Llif;->c:Lozv;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Lnws;->ad(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnwn;

    invoke-virtual {v7, v5}, Lnwn;->s(Lnws;)V

    sget-object v8, Lozd;->g:Lozd;

    invoke-virtual {v8}, Lnws;->O()Lnwn;

    move-result-object v8

    iget v9, v4, Llim;->a:I

    iget-object v10, v8, Lnwn;->b:Lnws;

    invoke-virtual {v10}, Lnws;->ac()Z

    move-result v10

    if-nez v10, :cond_4

    invoke-virtual {v8}, Lnwn;->p()V

    :cond_4
    iget-object v10, v8, Lnwn;->b:Lnws;

    move-object v11, v10

    check-cast v11, Lozd;

    add-int/lit8 v9, v9, -0x1

    iput v9, v11, Lozd;->d:I

    iget v9, v11, Lozd;->a:I

    or-int/lit8 v9, v9, 0x4

    iput v9, v11, Lozd;->a:I

    iget-object v9, v4, Llim;->c:Ljava/lang/Object;

    const/4 v11, 0x1

    if-eqz v9, :cond_6

    invoke-virtual {v10}, Lnws;->ac()Z

    move-result v10

    if-nez v10, :cond_5

    invoke-virtual {v8}, Lnwn;->p()V

    :cond_5
    iget-object v10, v8, Lnwn;->b:Lnws;

    check-cast v10, Lozd;

    iget v12, v10, Lozd;->a:I

    or-int/2addr v12, v11

    iput v12, v10, Lozd;->a:I

    check-cast v9, Ljava/lang/String;

    iput-object v9, v10, Lozd;->b:Ljava/lang/String;

    :cond_6
    iget-object v9, v8, Lnwn;->b:Lnws;

    invoke-virtual {v9}, Lnws;->ac()Z

    move-result v9

    if-nez v9, :cond_7

    invoke-virtual {v8}, Lnwn;->p()V

    :cond_7
    iget-object v9, v8, Lnwn;->b:Lnws;

    move-object v10, v9

    check-cast v10, Lozd;

    iget v12, v10, Lozd;->a:I

    or-int/lit8 v12, v12, 0x8

    iput v12, v10, Lozd;->a:I

    const-wide/32 v12, 0x1e341872

    iput-wide v12, v10, Lozd;->e:J

    iget-object v10, v4, Llim;->e:Ljava/lang/Object;

    if-eqz v10, :cond_9

    invoke-virtual {v9}, Lnws;->ac()Z

    move-result v9

    if-nez v9, :cond_8

    invoke-virtual {v8}, Lnwn;->p()V

    :cond_8
    iget-object v9, v8, Lnwn;->b:Lnws;

    check-cast v9, Lozd;

    iget v12, v9, Lozd;->a:I

    or-int/2addr v12, v3

    iput v12, v9, Lozd;->a:I

    check-cast v10, Ljava/lang/String;

    iput-object v10, v9, Lozd;->c:Ljava/lang/String;

    :cond_9
    iget-object v9, v4, Llim;->d:Ljava/lang/Object;

    if-eqz v9, :cond_b

    iget-object v10, v8, Lnwn;->b:Lnws;

    invoke-virtual {v10}, Lnws;->ac()Z

    move-result v10

    if-nez v10, :cond_a

    invoke-virtual {v8}, Lnwn;->p()V

    :cond_a
    iget-object v10, v8, Lnwn;->b:Lnws;

    check-cast v10, Lozd;

    iget v12, v10, Lozd;->a:I

    or-int/lit8 v12, v12, 0x10

    iput v12, v10, Lozd;->a:I

    check-cast v9, Ljava/lang/String;

    iput-object v9, v10, Lozd;->f:Ljava/lang/String;

    :cond_b
    iget-object v9, v7, Lnwn;->b:Lnws;

    invoke-virtual {v9}, Lnws;->ac()Z

    move-result v9

    if-nez v9, :cond_c

    invoke-virtual {v7}, Lnwn;->p()V

    :cond_c
    iget-object v9, v7, Lnwn;->b:Lnws;

    check-cast v9, Lozv;

    invoke-virtual {v8}, Lnwn;->i()Lnws;

    move-result-object v8

    check-cast v8, Lozd;

    sget-object v10, Lozv;->u:Lozv;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v8, v9, Lozv;->p:Lozd;

    iget v8, v9, Lozv;->a:I

    const/high16 v10, 0x1000000

    or-int/2addr v8, v10

    iput v8, v9, Lozv;->a:I

    iget-object v8, v4, Llim;->b:Ljava/lang/Object;

    check-cast v8, Landroid/content/Context;

    invoke-static {v8}, Lktm;->d(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_10

    sget-object v8, Lozl;->d:Lozl;

    invoke-virtual {v8}, Lnws;->O()Lnwn;

    move-result-object v8

    iget-object v9, v4, Llim;->f:Ljava/lang/Object;

    check-cast v9, Lktn;

    invoke-virtual {v9}, Lktn;->a()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v9

    const-wide/16 v12, 0x400

    div-long/2addr v9, v12

    iget-object v12, v8, Lnwn;->b:Lnws;

    invoke-virtual {v12}, Lnws;->ac()Z

    move-result v12

    if-nez v12, :cond_d

    invoke-virtual {v8}, Lnwn;->p()V

    :cond_d
    iget-object v12, v8, Lnwn;->b:Lnws;

    check-cast v12, Lozl;

    iget v13, v12, Lozl;->a:I

    or-int/2addr v13, v11

    iput v13, v12, Lozl;->a:I

    iput-wide v9, v12, Lozl;->b:J

    iget-object v9, v4, Llim;->g:Ljava/lang/Object;

    invoke-interface {v9}, Lmrl;->a()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iget-object v12, v8, Lnwn;->b:Lnws;

    invoke-virtual {v12}, Lnws;->ac()Z

    move-result v12

    if-nez v12, :cond_e

    invoke-virtual {v8}, Lnwn;->p()V

    :cond_e
    iget-object v12, v8, Lnwn;->b:Lnws;

    check-cast v12, Lozl;

    iget v13, v12, Lozl;->a:I

    or-int/2addr v13, v3

    iput v13, v12, Lozl;->a:I

    iput-wide v9, v12, Lozl;->c:J

    iget-object v9, v7, Lnwn;->b:Lnws;

    invoke-virtual {v9}, Lnws;->ac()Z

    move-result v9

    if-nez v9, :cond_f

    invoke-virtual {v7}, Lnwn;->p()V

    :cond_f
    iget-object v9, v7, Lnwn;->b:Lnws;

    check-cast v9, Lozv;

    invoke-virtual {v8}, Lnwn;->i()Lnws;

    move-result-object v8

    check-cast v8, Lozl;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v8, v9, Lozv;->r:Lozl;

    iget v8, v9, Lozv;->a:I

    const/high16 v10, 0x4000000

    or-int/2addr v8, v10

    iput v8, v9, Lozv;->a:I

    :cond_10
    iget-object v4, v4, Llim;->h:Ljava/lang/Object;

    const/4 v8, 0x0

    if-nez v4, :cond_11

    move-object v4, v8

    goto :goto_1

    :cond_11
    invoke-interface {v4}, Lmrl;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Llfu;

    iget-object v4, v4, Llfu;->a:Ljava/lang/String;

    :goto_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    const/high16 v10, 0x10000000

    if-nez v9, :cond_17

    iget-object v5, v5, Lozv;->t:Lozc;

    if-nez v5, :cond_12

    sget-object v5, Lozc;->c:Lozc;

    :cond_12
    invoke-virtual {v5, v6}, Lnws;->ad(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lnwn;

    invoke-virtual {v9, v5}, Lnwn;->s(Lnws;)V

    iget-object v5, v9, Lnwn;->b:Lnws;

    check-cast v5, Lozc;

    iget-object v5, v5, Lozc;->b:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_14

    iget-object v5, v9, Lnwn;->b:Lnws;

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_13

    invoke-virtual {v9}, Lnwn;->p()V

    :cond_13
    iget-object v5, v9, Lnwn;->b:Lnws;

    check-cast v5, Lozc;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v12, v5, Lozc;->a:I

    or-int/2addr v12, v11

    iput v12, v5, Lozc;->a:I

    iput-object v4, v5, Lozc;->b:Ljava/lang/String;

    goto :goto_2

    :cond_14
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "::"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v9, Lnwn;->b:Lnws;

    check-cast v4, Lozc;

    iget-object v4, v4, Lozc;->b:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v9, Lnwn;->b:Lnws;

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_15

    invoke-virtual {v9}, Lnwn;->p()V

    :cond_15
    iget-object v5, v9, Lnwn;->b:Lnws;

    check-cast v5, Lozc;

    iget v12, v5, Lozc;->a:I

    or-int/2addr v12, v11

    iput v12, v5, Lozc;->a:I

    iput-object v4, v5, Lozc;->b:Ljava/lang/String;

    :goto_2
    iget-object v4, v7, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_16

    invoke-virtual {v7}, Lnwn;->p()V

    :cond_16
    iget-object v4, v7, Lnwn;->b:Lnws;

    check-cast v4, Lozv;

    invoke-virtual {v9}, Lnwn;->i()Lnws;

    move-result-object v5

    check-cast v5, Lozc;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v5, v4, Lozv;->t:Lozc;

    iget v5, v4, Lozv;->a:I

    or-int/2addr v5, v10

    iput v5, v4, Lozv;->a:I

    :cond_17
    invoke-virtual {v7}, Lnwn;->i()Lnws;

    move-result-object v4

    check-cast v4, Lozv;

    invoke-virtual {v4, v6}, Lnws;->ad(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnwn;

    invoke-virtual {v5, v4}, Lnwn;->s(Lnws;)V

    iget-object v4, v5, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_18

    invoke-virtual {v5}, Lnwn;->p()V

    :cond_18
    iget-object v4, v5, Lnwn;->b:Lnws;

    check-cast v4, Lozv;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v4, Lozv;->m:Lozu;

    iget v2, v4, Lozv;->a:I

    const/high16 v7, 0x400000

    or-int/2addr v2, v7

    iput v2, v4, Lozv;->a:I

    iget-object v2, v1, Llif;->h:Llgr;

    const/4 v4, 0x0

    if-eqz v2, :cond_1b

    iget-object v2, v0, Lmap;->d:Ljava/lang/Object;

    check-cast v2, Lmqp;

    invoke-virtual {v2}, Lmqp;->g()Z

    move-result v2

    if-eqz v2, :cond_1b

    iget v2, v1, Llif;->i:I

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    sget-object v9, Lamx;->u:Lamx;

    invoke-static {v7, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    sget-object v9, Lozk;->a:Lozk;

    invoke-virtual {v9}, Lnws;->O()Lnwn;

    move-result-object v9

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v12

    sub-int/2addr v12, v2

    invoke-static {v12, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v12

    if-lt v2, v12, :cond_1a

    invoke-virtual {v9}, Lnwn;->i()Lnws;

    move-result-object v2

    check-cast v2, Lozk;

    iget-object v7, v5, Lnwn;->b:Lnws;

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v7

    if-nez v7, :cond_19

    invoke-virtual {v5}, Lnwn;->p()V

    :cond_19
    iget-object v7, v5, Lnwn;->b:Lnws;

    check-cast v7, Lozv;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v7, Lozv;->n:Lozk;

    iget v2, v7, Lozv;->a:I

    const/high16 v9, 0x800000

    or-int/2addr v2, v9

    iput v2, v7, Lozv;->a:I

    goto :goto_3

    :cond_1a
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llhe;

    iget-object v0, v0, Llhe;->a:Ljava/lang/Object;

    throw v8

    :cond_1b
    :goto_3
    iget-object v2, v0, Lmap;->g:Ljava/lang/Object;

    check-cast v2, Lmqp;

    invoke-virtual {v2}, Lmqp;->g()Z

    move-result v7

    if-eqz v7, :cond_1e

    invoke-virtual {v2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llid;

    invoke-interface {v2}, Llid;->a()Lmvv;

    move-result-object v2

    iget-object v7, v5, Lnwn;->b:Lnws;

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v7

    if-nez v7, :cond_1c

    invoke-virtual {v5}, Lnwn;->p()V

    :cond_1c
    iget-object v7, v5, Lnwn;->b:Lnws;

    check-cast v7, Lozv;

    iget-object v9, v7, Lozv;->o:Lnxa;

    invoke-interface {v9}, Lnxa;->c()Z

    move-result v12

    if-nez v12, :cond_1d

    invoke-static {v9}, Lnws;->U(Lnxa;)Lnxa;

    move-result-object v9

    iput-object v9, v7, Lozv;->o:Lnxa;

    :cond_1d
    iget-object v7, v7, Lozv;->o:Lnxa;

    invoke-static {v2, v7}, Lnvd;->e(Ljava/lang/Iterable;Ljava/util/List;)V

    :cond_1e
    iget-object v2, v1, Llif;->a:Ljava/lang/String;

    iget-boolean v7, v1, Llif;->b:Z

    if-eqz v7, :cond_22

    if-eqz v2, :cond_20

    iget-object v3, v5, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_1f

    invoke-virtual {v5}, Lnwn;->p()V

    :cond_1f
    iget-object v3, v5, Lnwn;->b:Lnws;

    check-cast v3, Lozv;

    iget v7, v3, Lozv;->a:I

    or-int/lit8 v7, v7, 0x4

    iput v7, v3, Lozv;->a:I

    iput-object v2, v3, Lozv;->d:Ljava/lang/String;

    goto :goto_4

    :cond_20
    iget-object v2, v5, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_21

    invoke-virtual {v5}, Lnwn;->p()V

    :cond_21
    iget-object v2, v5, Lnwn;->b:Lnws;

    check-cast v2, Lozv;

    iget v3, v2, Lozv;->a:I

    and-int/lit8 v3, v3, -0x5

    iput v3, v2, Lozv;->a:I

    sget-object v3, Lozv;->u:Lozv;

    iget-object v3, v3, Lozv;->d:Ljava/lang/String;

    iput-object v3, v2, Lozv;->d:Ljava/lang/String;

    goto :goto_4

    :cond_22
    if-eqz v2, :cond_24

    iget-object v7, v5, Lnwn;->b:Lnws;

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v7

    if-nez v7, :cond_23

    invoke-virtual {v5}, Lnwn;->p()V

    :cond_23
    iget-object v7, v5, Lnwn;->b:Lnws;

    check-cast v7, Lozv;

    iget v9, v7, Lozv;->a:I

    or-int/2addr v3, v9

    iput v3, v7, Lozv;->a:I

    iput-object v2, v7, Lozv;->c:Ljava/lang/String;

    goto :goto_4

    :cond_24
    iget-object v2, v5, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_25

    invoke-virtual {v5}, Lnwn;->p()V

    :cond_25
    iget-object v2, v5, Lnwn;->b:Lnws;

    check-cast v2, Lozv;

    iget v3, v2, Lozv;->a:I

    and-int/lit8 v3, v3, -0x3

    iput v3, v2, Lozv;->a:I

    sget-object v3, Lozv;->u:Lozv;

    iget-object v3, v3, Lozv;->c:Ljava/lang/String;

    iput-object v3, v2, Lozv;->c:Ljava/lang/String;

    :goto_4
    iget-object v2, v0, Lmap;->b:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, v1, Llif;->d:Loym;

    if-nez v2, :cond_26

    if-eqz v3, :cond_2a

    :cond_26
    if-eqz v2, :cond_27

    if-eqz v3, :cond_27

    check-cast v2, Lnws;

    invoke-virtual {v2, v6}, Lnws;->ad(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnwn;

    invoke-virtual {v6, v2}, Lnwn;->s(Lnws;)V

    check-cast v6, Lnwp;

    invoke-virtual {v6, v3}, Lnwn;->s(Lnws;)V

    invoke-virtual {v6}, Lnwn;->i()Lnws;

    move-result-object v2

    check-cast v2, Loym;

    goto :goto_5

    :cond_27
    if-nez v2, :cond_28

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v2, v3

    :cond_28
    :goto_5
    iget-object v3, v5, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_29

    invoke-virtual {v5}, Lnwn;->p()V

    :cond_29
    iget-object v3, v5, Lnwn;->b:Lnws;

    check-cast v3, Lozv;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v2, Loym;

    iput-object v2, v3, Lozv;->s:Loym;

    iget v2, v3, Lozv;->a:I

    const/high16 v6, 0x8000000

    or-int/2addr v2, v6

    iput v2, v3, Lozv;->a:I

    :cond_2a
    iget-object v1, v1, Llif;->e:Ljava/lang/String;

    if-eqz v1, :cond_2d

    sget-object v2, Lozc;->c:Lozc;

    invoke-virtual {v2}, Lnws;->O()Lnwn;

    move-result-object v2

    iget-object v3, v2, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_2b

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_2b
    iget-object v3, v2, Lnwn;->b:Lnws;

    check-cast v3, Lozc;

    iget v6, v3, Lozc;->a:I

    or-int/2addr v6, v11

    iput v6, v3, Lozc;->a:I

    iput-object v1, v3, Lozc;->b:Ljava/lang/String;

    iget-object v1, v5, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_2c

    invoke-virtual {v5}, Lnwn;->p()V

    :cond_2c
    iget-object v1, v5, Lnwn;->b:Lnws;

    check-cast v1, Lozv;

    invoke-virtual {v2}, Lnwn;->i()Lnws;

    move-result-object v2

    check-cast v2, Lozc;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v1, Lozv;->t:Lozc;

    iget v2, v1, Lozv;->a:I

    or-int/2addr v2, v10

    iput v2, v1, Lozv;->a:I

    :cond_2d
    iget-object v1, v0, Lmap;->c:Ljava/lang/Object;

    invoke-virtual {v5}, Lnwn;->i()Lnws;

    move-result-object v2

    check-cast v2, Lozv;

    check-cast v1, Llih;

    iget-object v1, v1, Llih;->b:Lmrl;

    invoke-interface {v1}, Lmrl;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmvv;

    invoke-virtual {v1}, Lmvv;->size()I

    move-result v3

    invoke-static {v3}, Lmvv;->f(I)Lmvq;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_6
    if-ge v6, v5, :cond_2f

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Llnl;

    :try_start_0
    invoke-interface {v7, v2}, Llnl;->a(Lozv;)Lnou;

    move-result-object v7

    invoke-virtual {v3, v7}, Lmvq;->g(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception v7

    sget-object v9, Llih;->a:Lnak;

    invoke-virtual {v9}, Lnaf;->c()Lnaz;

    move-result-object v9

    const-string v10, "One transmitter failed to send message"

    const/16 v12, 0x1190

    invoke-static {v9, v10, v12, v7}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    if-nez v8, :cond_2e

    move-object v8, v7

    goto :goto_7

    :cond_2e
    :try_start_1
    const-class v9, Ljava/lang/Throwable;

    const-string v10, "addSuppressed"

    new-array v12, v11, [Ljava/lang/Class;

    const-class v13, Ljava/lang/Throwable;

    aput-object v13, v12, v4

    invoke-virtual {v9, v10, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    new-array v10, v11, [Ljava/lang/Object;

    aput-object v7, v10, v4

    invoke-virtual {v9, v8, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    :catch_1
    move-exception v7

    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_2f
    if-nez v8, :cond_31

    invoke-virtual {v3}, Lmvq;->f()Lmvv;

    move-result-object v1

    invoke-static {v1}, Lnsy;->w(Ljava/lang/Iterable;)Lnom;

    move-result-object v1

    sget-object v2, Llig;->a:Llig;

    sget-object v3, Lnnv;->a:Lnnv;

    invoke-virtual {v1, v2, v3}, Lnom;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v1

    iget-object v0, v0, Lmap;->h:Ljava/lang/Object;

    check-cast v0, Llmy;

    iget-object v0, v0, Llmy;->d:Llmx;

    iget-object v2, v0, Llmx;->c:Lkrn;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v5, v0, Llmx;->a:Ljava/lang/Object;

    monitor-enter v5

    :try_start_2
    iget v6, v0, Llmx;->d:I

    add-int/2addr v6, v11

    iput v6, v0, Llmx;->d:I

    iget-wide v6, v0, Llmx;->e:J

    sub-long v6, v2, v6

    const-wide/16 v8, 0x3e8

    cmp-long v10, v6, v8

    if-lez v10, :cond_30

    iput v4, v0, Llmx;->d:I

    iput-wide v2, v0, Llmx;->e:J

    :cond_30
    monitor-exit v5

    move-object v0, v1

    :goto_8
    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_31
    goto :goto_a

    :goto_9
    throw v8

    :goto_a
    goto :goto_9
.end method
