.class public final Lcbm;
.super Ljava/lang/Object;

# interfaces
.implements Lkad;


# instance fields
.field private final A:Ljvs;

.field private final B:Ljvs;

.field private final C:Ljvs;

.field private final D:Ljvs;

.field private final E:I

.field private final F:Lnom;

.field private final G:Ljew;

.field public final a:Ldww;

.field public final b:Lhrq;

.field public final c:Lmqp;

.field public final d:Lmqp;

.field private final e:Landroid/content/Context;

.field private final f:Ljuf;

.field private final g:Lcby;

.field private final h:Liox;

.field private final i:Liov;

.field private final j:Ljuh;

.field private final k:Ljava/util/Set;

.field private final l:Ljava/util/Set;

.field private final m:Lipd;

.field private final n:Litm;

.field private final o:Lhwc;

.field private final p:Ldol;

.field private final q:Ldey;

.field private final r:Lkli;

.field private final s:Ljvs;

.field private final t:Ljvs;

.field private final u:Z

.field private final v:Ldhi;

.field private final w:Lgzm;

.field private final x:Lgzn;

.field private final y:Landroid/os/Handler;

.field private final z:Lell;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ldqx;Ldww;Lcby;Liox;Liov;Ljuh;Ljava/util/Set;Ljava/util/Set;Lipd;Litm;Lhwc;Lhrq;Ldhi;Ldol;Lmqp;Ldey;Lgzm;Lgzn;Landroid/os/Handler;Lnom;Lell;Lmqp;Lmqp;Ljvs;Ljvs;Ljvs;Ljvs;Ljew;Lcbi;Lkli;Ljvs;Ljvs;ZZI[B[B[B[B)V
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p10

    move-object/from16 v7, p14

    move-object/from16 v8, p31

    move-object/from16 v9, p32

    move-object/from16 v10, p33

    move/from16 v11, p34

    move/from16 v12, p36

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v15, Ljuf;

    invoke-direct {v15}, Ljuf;-><init>()V

    iput-object v15, v0, Lcbm;->f:Ljuf;

    move-object/from16 v13, p9

    iput-object v13, v0, Lcbm;->l:Ljava/util/Set;

    move-object/from16 v14, p25

    iput-object v14, v0, Lcbm;->A:Ljvs;

    move-object/from16 v14, p26

    iput-object v14, v0, Lcbm;->B:Ljvs;

    move-object/from16 v14, p29

    iput-object v14, v0, Lcbm;->G:Ljew;

    invoke-interface/range {p31 .. p31}, Lkli;->F()Z

    move-result v16

    if-nez v16, :cond_1

    invoke-interface/range {p31 .. p31}, Lkli;->E()Z

    move-result v16

    if-eqz v16, :cond_0

    const/16 v16, 0x1

    goto :goto_0

    :cond_0
    const/16 v16, 0x0

    goto :goto_0

    :cond_1
    const/16 v16, 0x1

    :goto_0
    invoke-static/range {v16 .. v16}, Lmoz;->e(Z)V

    move-object/from16 v14, p1

    iput-object v14, v0, Lcbm;->e:Landroid/content/Context;

    move-object/from16 v14, p3

    iput-object v14, v0, Lcbm;->a:Ldww;

    iput-object v2, v0, Lcbm;->g:Lcby;

    iput-object v3, v0, Lcbm;->h:Liox;

    iput-object v4, v0, Lcbm;->i:Liov;

    iput-object v5, v0, Lcbm;->j:Ljuh;

    move-object/from16 v13, p8

    iput-object v13, v0, Lcbm;->k:Ljava/util/Set;

    iput-object v6, v0, Lcbm;->m:Lipd;

    move-object/from16 v5, p11

    iput-object v5, v0, Lcbm;->n:Litm;

    move-object/from16 v5, p12

    iput-object v5, v0, Lcbm;->o:Lhwc;

    move-object/from16 v5, p17

    iput-object v5, v0, Lcbm;->q:Ldey;

    move-object/from16 v5, p13

    iput-object v5, v0, Lcbm;->b:Lhrq;

    move-object/from16 v5, p15

    iput-object v5, v0, Lcbm;->p:Ldol;

    iput-object v8, v0, Lcbm;->r:Lkli;

    iput-object v9, v0, Lcbm;->s:Ljvs;

    iput-object v10, v0, Lcbm;->t:Ljvs;

    iput-boolean v11, v0, Lcbm;->u:Z

    iput v12, v0, Lcbm;->E:I

    move-object/from16 v5, p16

    iput-object v5, v0, Lcbm;->c:Lmqp;

    iput-object v7, v0, Lcbm;->v:Ldhi;

    move-object/from16 v5, p18

    iput-object v5, v0, Lcbm;->w:Lgzm;

    move-object/from16 v5, p19

    iput-object v5, v0, Lcbm;->x:Lgzn;

    move-object/from16 v5, p20

    iput-object v5, v0, Lcbm;->y:Landroid/os/Handler;

    move-object/from16 v5, p21

    iput-object v5, v0, Lcbm;->F:Lnom;

    move-object/from16 v5, p22

    iput-object v5, v0, Lcbm;->z:Lell;

    const/4 v5, 0x3

    if-ne v12, v5, :cond_2

    move-object/from16 v5, p24

    goto :goto_1

    :cond_2
    move-object/from16 v5, p23

    :goto_1
    iput-object v5, v0, Lcbm;->d:Lmqp;

    move-object/from16 v13, p27

    iput-object v13, v0, Lcbm;->C:Ljvs;

    move-object/from16 v10, p28

    iput-object v10, v0, Lcbm;->D:Ljvs;

    invoke-direct/range {p0 .. p0}, Lcbm;->a()V

    sget-object v16, Ldhh;->a:Ldhj;

    const/4 v10, 0x3

    if-ne v12, v10, :cond_3

    const/4 v10, 0x1

    goto :goto_3

    :cond_3
    invoke-interface/range {p31 .. p31}, Lkli;->E()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v2, v9, v8}, Lcby;->a(Ljvs;Lkli;)Lcbz;

    move-result-object v2

    invoke-virtual/range {p16 .. p16}, Lmqp;->g()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual/range {p16 .. p16}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lhrd;

    sget-object v10, Lhrc;->d:Lhrc;

    invoke-interface {v9, v10, v2}, Lhrd;->b(Lhrc;Lhrb;)V

    new-instance v9, Lcfh;

    const/4 v10, 0x1

    invoke-direct {v9, v0, v10}, Lcfh;-><init>(Lcbm;I)V

    invoke-virtual {v15, v9}, Ljuf;->d(Lkad;)V

    goto :goto_2

    :cond_4
    const/4 v10, 0x1

    :goto_2
    invoke-virtual {v15, v2}, Ljuf;->d(Lkad;)V

    goto :goto_3

    :cond_5
    const/4 v10, 0x1

    :goto_3
    new-instance v2, Lcbs;

    iget-object v9, v1, Ldqx;->d:Ljava/lang/Object;

    check-cast v9, Liki;

    invoke-virtual {v9}, Liki;->a()Likh;

    move-result-object v17

    iget-object v9, v1, Ldqx;->b:Ljava/lang/Object;

    invoke-interface {v9}, Loiw;->get()Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v18, v9

    check-cast v18, Lhyy;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v9, v1, Ldqx;->e:Ljava/lang/Object;

    invoke-interface {v9}, Loiw;->get()Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v19, v9

    check-cast v19, Ljvs;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v9, v1, Ldqx;->c:Ljava/lang/Object;

    invoke-interface {v9}, Loiw;->get()Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v20, v9

    check-cast v20, Ljvs;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Ldqx;->a:Ljava/lang/Object;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v21, v1

    check-cast v21, Lfbz;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v16, v2

    move/from16 v22, p35

    move-object/from16 v23, p30

    invoke-direct/range {v16 .. v23}, Lcbs;-><init>(Likh;Lhyy;Ljvs;Ljvs;Lfbz;ZLcbi;)V

    const/4 v1, 0x3

    if-ne v12, v1, :cond_6

    move-object/from16 v18, p9

    goto :goto_4

    :cond_6
    move-object/from16 v18, p8

    :goto_4
    invoke-interface/range {p31 .. p31}, Lkli;->k()Lklv;

    move-result-object v17

    if-eqz v11, :cond_8

    invoke-interface/range {p27 .. p27}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_7

    new-instance v1, Lccr;

    move-object v13, v1

    const/16 v29, 0x0

    const/4 v9, 0x0

    move-object v14, v15

    move-object v11, v15

    move-object v15, v2

    move-object/from16 v16, p3

    move-object/from16 v19, p16

    move-object/from16 v20, p11

    move-object/from16 v21, p12

    move-object/from16 v22, p13

    move-object/from16 v23, p15

    move-object/from16 v24, v5

    move-object/from16 v25, p17

    move-object/from16 v26, p25

    move-object/from16 v27, p26

    move-object/from16 v28, p29

    invoke-direct/range {v13 .. v29}, Lccr;-><init>(Ljuf;Lcbr;Ldww;Lklv;Ljava/util/Set;Lmqp;Litm;Lhwc;Lhrq;Ldol;Lmqp;Ldey;Ljvs;Ljvs;Ljew;[B)V

    invoke-virtual {v3, v1}, Liox;->d(Lipf;)V

    goto :goto_6

    :cond_7
    move-object v11, v15

    const/4 v9, 0x0

    goto :goto_5

    :cond_8
    move-object v11, v15

    const/4 v9, 0x0

    :goto_5
    new-instance v1, Lccl;

    move-object v13, v1

    move-object v14, v11

    move-object v15, v2

    move-object/from16 v16, p3

    move-object/from16 v19, p11

    move-object/from16 v20, p12

    move-object/from16 v21, v5

    move-object/from16 v22, p13

    move-object/from16 v23, p25

    move-object/from16 v24, p26

    invoke-direct/range {v13 .. v24}, Lccl;-><init>(Ljuf;Lcbr;Ldww;Lklv;Ljava/util/Set;Litm;Lhwc;Lmqp;Lhrq;Ljvs;Ljvs;)V

    invoke-virtual {v3, v1}, Liox;->d(Lipf;)V

    :goto_6
    sget-object v1, Ldhh;->k:Ldhj;

    invoke-interface {v7, v1}, Ldhi;->l(Ldhj;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface/range {p31 .. p31}, Lkli;->F()Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v1, Lcbq;

    move-object v3, v11

    move-object v11, v1

    invoke-interface/range {p31 .. p31}, Lkli;->k()Lklv;

    move-result-object v15

    const/16 v28, 0x0

    move-object/from16 v12, p1

    move-object/from16 v13, p13

    move-object/from16 v14, p12

    move-object/from16 v16, v2

    move-object/from16 v17, p3

    move-object/from16 v18, p21

    move-object/from16 v19, p20

    move-object/from16 v20, p22

    move-object/from16 v21, v5

    move-object/from16 v22, v3

    move-object/from16 v23, p18

    move-object/from16 v24, p19

    move-object/from16 v25, p16

    move-object/from16 v26, p25

    move-object/from16 v27, p28

    invoke-direct/range {v11 .. v28}, Lcbq;-><init>(Landroid/content/Context;Lhrq;Lhwc;Lklv;Lcbr;Ldww;Lnom;Landroid/os/Handler;Lell;Lmqp;Ljuf;Lgzm;Lgzn;Lmqp;Ljvs;Ljvs;[B)V

    invoke-virtual {v4, v1}, Liov;->f(Lipc;)V

    goto :goto_7

    :cond_9
    move-object v3, v11

    invoke-virtual/range {p6 .. p6}, Liov;->e()V

    goto :goto_7

    :cond_a
    move-object v3, v11

    if-ne v12, v10, :cond_b

    invoke-virtual {v4, v6}, Liov;->f(Lipc;)V

    goto :goto_7

    :cond_b
    const/4 v1, 0x2

    if-ne v12, v1, :cond_c

    invoke-virtual/range {p6 .. p6}, Liov;->e()V

    :cond_c
    :goto_7
    invoke-direct/range {p0 .. p0}, Lcbm;->a()V

    new-instance v1, Lcbl;

    invoke-direct {v1, v0, v9}, Lcbl;-><init>(Lcbm;I)V

    move-object/from16 v2, p7

    move-object/from16 v4, p33

    invoke-interface {v4, v1, v2}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljuf;->d(Lkad;)V

    return-void
.end method

.method private final a()V
    .locals 3

    iget-object v0, p0, Lcbm;->j:Ljuh;

    new-instance v1, Lazo;

    const/16 v2, 0xe

    invoke-direct {v1, p0, v2}, Lazo;-><init>(Lcbm;I)V

    invoke-virtual {v0, v1}, Ljuh;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lcbm;->f:Ljuf;

    invoke-virtual {v0}, Ljuf;->close()V

    invoke-direct {p0}, Lcbm;->a()V

    iget-object v0, p0, Lcbm;->h:Liox;

    invoke-virtual {v0}, Liox;->c()V

    iget-object v0, p0, Lcbm;->i:Liov;

    invoke-virtual {v0}, Liov;->e()V

    return-void
.end method
