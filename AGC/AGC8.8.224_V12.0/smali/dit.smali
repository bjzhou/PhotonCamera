.class public final Ldit;
.super Ljava/lang/Object;

# interfaces
.implements Ldhi;
.implements Ldhm;
.implements Ldhl;


# static fields
.field public static final a:Ldin;


# instance fields
.field public final b:Ljava/util/Map;

.field private final c:Ldir;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ldin;->d:Ldin;

    sput-object v0, Ldit;->a:Ldin;

    return-void
.end method

.method public constructor <init>(Lkog;Lkoe;Lhbm;Ldir;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lcom/Developer;->gcaConfig:Ldit;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v0, Ldit;->b:Ljava/util/Map;

    move-object/from16 v4, p4

    iput-object v4, v0, Ldit;->c:Ldir;

    sget-object v4, Ldit;->a:Ldin;

    invoke-static {v0, v2, v4}, Ldho;->a(Ldhm;Lkoe;Ldin;)V

    invoke-static/range {p0 .. p0}, Ldgs;->a(Ldhm;)V

    invoke-static/range {p0 .. p0}, Ldgt;->a(Ldhm;)V

    invoke-static {v0, v2}, Ldgu;->a(Ldhm;Lkoe;)V

    invoke-static/range {p0 .. p0}, Ldgv;->a(Ldhm;)V

    invoke-static/range {p0 .. p1}, Ldgz;->b(Ldhm;Lkog;)V

    sget v5, Ldha;->a:I

    invoke-static/range {p0 .. p0}, Ldhb;->a(Ldhm;)V

    invoke-static/range {p0 .. p0}, Ldhc;->a(Ldhm;)V

    sget-object v5, Ldhe;->a:Ldhj;

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v5, v6}, Ldhm;->u(Ldhj;Z)V

    sget-object v5, Ldhe;->b:Ldhj;

    invoke-interface {v0, v5, v6}, Ldhm;->u(Ldhj;Z)V

    sget-object v5, Ldhf;->b:Ldhj;

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v5, v8}, Ldhm;->u(Ldhj;Z)V

    sget-object v5, Ldhf;->d:Ldhj;

    invoke-interface {v0, v5, v8}, Ldhm;->u(Ldhj;Z)V

    sget-object v5, Ldhf;->c:Ldhj;

    invoke-interface {v0, v5, v8}, Ldhm;->u(Ldhj;Z)V

    sget-object v5, Ldhf;->e:Ldhj;

    invoke-interface {v0, v5, v6}, Ldhm;->u(Ldhj;Z)V

    sget-object v5, Ldhf;->a:Ldhk;

    const/16 v10, 0xb4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v5, v10}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v5, Ldhh;->a:Ldhj;

    const/high16 v10, 0x41c80000    # 25.0f

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-interface {v0, v5, v10}, Ldhm;->t(Ldhj;Ljava/lang/Float;)V

    sget-object v5, Ldhh;->b:Ldhj;

    const v10, 0x3f5c28f6    # 0.86f

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-interface {v0, v5, v10}, Ldhm;->t(Ldhj;Ljava/lang/Float;)V

    sget-object v5, Ldhh;->c:Ldhj;

    invoke-interface {v0, v5, v6}, Ldhm;->u(Ldhj;Z)V

    sget-object v5, Ldhh;->d:Ldhj;

    invoke-interface {v0, v5, v6}, Ldhm;->u(Ldhj;Z)V

    sget-object v5, Ldhh;->e:Ldhj;

    invoke-interface {v0, v5, v6}, Ldhm;->u(Ldhj;Z)V

    sget-object v5, Ldhh;->f:Ldhj;

    invoke-interface {v0, v5, v8}, Ldhm;->u(Ldhj;Z)V

    sget-object v5, Ldhh;->g:Ldhj;

    invoke-interface {v0, v5, v8}, Ldhm;->u(Ldhj;Z)V

    sget-object v5, Ldhh;->h:Ldhj;

    invoke-interface {v0, v5, v8}, Ldhm;->u(Ldhj;Z)V

    sget-object v5, Ldhh;->i:Ldhj;

    invoke-interface {v0, v5, v8}, Ldhm;->u(Ldhj;Z)V

    sget-object v5, Ldhh;->j:Ldhj;

    const/high16 v10, 0x43960000    # 300.0f

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-interface {v0, v5, v10}, Ldhm;->t(Ldhj;Ljava/lang/Float;)V

    sget-object v5, Ldhh;->k:Ldhj;

    invoke-interface {v0, v5, v6}, Ldhm;->u(Ldhj;Z)V

    sget-object v5, Ldhq;->a:Ldhk;

    sget-object v10, Ldhp;->d:Ldhp;

    invoke-virtual {v10}, Ldhp;->ordinal()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v5, v10}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v5, Ldhq;->x:Ldhj;

    invoke-interface {v0, v5}, Ldhm;->r(Ldhj;)V

    sget-object v5, Ldhq;->y:Ldhj;

    invoke-interface {v0, v5, v6}, Ldhm;->u(Ldhj;Z)V

    sget-object v5, Ldhq;->z:Ldhj;

    invoke-interface {v0, v5, v6}, Ldhm;->u(Ldhj;Z)V

    sget-object v5, Ldhq;->A:Ldhj;

    invoke-interface {v0, v5, v6}, Ldhm;->u(Ldhj;Z)V

    sget-object v5, Ldhq;->B:Ldhj;

    const/4 v10, 0x0

    invoke-interface {v0, v5, v10}, Ldhm;->t(Ldhj;Ljava/lang/Float;)V

    sget-object v5, Ldhq;->b:Ldhk;

    const/4 v11, 0x2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v0, v5, v12}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v5, Ldhq;->c:Ldhk;

    invoke-interface {v0, v5, v12}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v5, Ldhq;->E:Ldhj;

    invoke-interface {v0, v5, v10}, Ldhm;->t(Ldhj;Ljava/lang/Float;)V

    sget-object v5, Ldhq;->F:Ldhj;

    invoke-interface {v0, v5, v10}, Ldhm;->t(Ldhj;Ljava/lang/Float;)V

    sget-object v5, Ldhq;->G:Ldhj;

    invoke-interface {v0, v5}, Ldhm;->r(Ldhj;)V

    sget-object v5, Ldhq;->H:Ldhj;

    sget-object v13, Ldin;->c:Ldin;

    invoke-virtual {v4, v13}, Ldin;->b(Ldin;)Z

    move-result v13

    invoke-interface {v0, v5, v13}, Ldhm;->u(Ldhj;Z)V

    sget-object v5, Ldhq;->I:Ldhj;

    sget-object v13, Ldin;->c:Ldin;

    invoke-virtual {v4, v13}, Ldin;->b(Ldin;)Z

    move-result v13

    invoke-interface {v0, v5, v13}, Ldhm;->u(Ldhj;Z)V

    sget-object v5, Ldhq;->e:Ldhk;

    const/4 v13, 0x7

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v0, v5, v13}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v5, Ldhq;->f:Ldhk;

    const/16 v14, 0xf

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v0, v5, v14}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v5, Ldhq;->d:Ldhk;

    const/16 v15, 0x9

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v0, v5, v15}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v5, Ldhq;->J:Ldhj;

    invoke-interface {v0, v5}, Ldhm;->r(Ldhj;)V

    sget-object v5, Ldhq;->K:Ldhj;

    invoke-interface {v0, v5, v6}, Ldhm;->u(Ldhj;Z)V

    sget-object v5, Ldhq;->L:Ldhj;

    invoke-interface {v0, v5, v6}, Ldhm;->u(Ldhj;Z)V

    sget-object v5, Ldhq;->M:Ldhj;

    invoke-interface {v0, v5, v10}, Ldhm;->t(Ldhj;Ljava/lang/Float;)V

    sget-object v5, Ldhq;->h:Ldhk;

    invoke-interface {v0, v5, v10}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v5, Ldhq;->g:Ldhk;

    invoke-interface {v0, v5, v10}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v5, Ldhq;->N:Ldhj;

    const v16, 0x42855555

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-interface {v0, v5, v11}, Ldhm;->t(Ldhj;Ljava/lang/Float;)V

    sget-object v5, Ldhq;->O:Ldhj;

    invoke-interface {v0, v5, v8}, Ldhm;->u(Ldhj;Z)V

    sget-object v5, Ldhq;->P:Ldhj;

    const-string v11, ""

    invoke-interface {v0, v5, v11}, Ldhm;->v(Ldhj;Ljava/lang/String;)V

    sget-object v5, Ldhq;->Q:Ldhj;

    invoke-interface {v0, v5, v8}, Ldhm;->u(Ldhj;Z)V

    sget-object v5, Ldhq;->R:Ldhj;

    invoke-interface {v0, v5, v6}, Ldhm;->u(Ldhj;Z)V

    sget-object v5, Ldhq;->S:Ldhj;

    invoke-interface {v0, v5, v8}, Ldhm;->u(Ldhj;Z)V

    sget-object v5, Ldhq;->T:Ldhj;

    invoke-interface {v0, v5, v8}, Ldhm;->u(Ldhj;Z)V

    sget-object v5, Ldhq;->U:Ldhj;

    invoke-interface {v0, v5}, Ldhm;->r(Ldhj;)V

    sget-object v5, Ldhq;->X:Ldhj;

    invoke-interface {v0, v5, v6}, Ldhm;->u(Ldhj;Z)V

    sget-object v5, Ldhq;->m:Ldhk;

    const/16 v16, -0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v5, v10}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v5, Ldhq;->Y:Ldhj;

    invoke-interface {v0, v5, v6}, Ldhm;->u(Ldhj;Z)V

    sget-object v5, Ldhq;->n:Ldhk;

    const/16 v18, 0x300

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v5, Ldhq;->Z:Ldhj;

    invoke-interface {v0, v5, v8}, Ldhm;->u(Ldhj;Z)V

    sget-object v5, Ldhq;->C:Ldhj;

    const/4 v6, 0x1

    invoke-interface {v0, v5, v6}, Ldhm;->u(Ldhj;Z)V

    sget-object v5, Ldhq;->aa:Ldhj;

    invoke-interface {v0, v5}, Ldhm;->r(Ldhj;)V

    sget-object v5, Ldhq;->o:Ldhk;

    const/16 v18, 0xc

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v5, v8}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v5, Ldhq;->D:Ldhj;

    invoke-interface {v0, v5, v6}, Ldhm;->u(Ldhj;Z)V

    sget-object v5, Ldhq;->ab:Ldhj;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-interface {v0, v5, v8}, Ldhm;->t(Ldhj;Ljava/lang/Float;)V

    sget-object v5, Ldhq;->ac:Ldhj;

    invoke-interface {v0, v5, v6}, Ldhm;->u(Ldhj;Z)V

    sget-object v5, Ldhq;->k:Ldhk;

    const/16 v6, 0x42

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v5, Ldhq;->l:Ldhk;

    const/16 v6, 0xa6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v5, Ldhq;->W:Ldhj;

    const v6, 0x3f428f5c    # 0.76f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ldhm;->t(Ldhj;Ljava/lang/Float;)V

    sget-object v5, Ldhq;->V:Ldhj;

    const/4 v6, 0x0

    invoke-interface {v0, v5, v6}, Ldhm;->u(Ldhj;Z)V

    sget-object v5, Ldhq;->i:Ldhk;

    invoke-interface {v0, v5, v15}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v5, Ldhq;->ae:Ldhj;

    const v6, -0x3fe66666    # -2.4f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ldhm;->t(Ldhj;Ljava/lang/Float;)V

    sget-object v5, Ldhq;->af:Ldhj;

    const v6, -0x3feccccd    # -2.3f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ldhm;->t(Ldhj;Ljava/lang/Float;)V

    sget-object v5, Ldhq;->ag:Ldhj;

    const/high16 v6, -0x40000000    # -2.0f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ldhm;->t(Ldhj;Ljava/lang/Float;)V

    sget-object v5, Ldhq;->ah:Ldhj;

    const/high16 v6, -0x40200000    # -1.75f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ldhm;->t(Ldhj;Ljava/lang/Float;)V

    sget-object v5, Ldhq;->ai:Ldhj;

    const/high16 v6, -0x3fc00000    # -3.0f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ldhm;->t(Ldhj;Ljava/lang/Float;)V

    sget-object v5, Ldhq;->aj:Ldhj;

    const/4 v15, 0x1

    invoke-interface {v0, v5, v15}, Ldhm;->u(Ldhj;Z)V

    sget-object v5, Ldhq;->al:Ldhj;

    invoke-interface {v0, v5, v15}, Ldhm;->u(Ldhj;Z)V

    sget-object v5, Ldhq;->ad:Ldhj;

    invoke-interface {v0, v5, v15}, Ldhm;->u(Ldhj;Z)V

    sget-object v5, Ldhq;->j:Ldhk;

    const/16 v18, 0x7d0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v0, v5, v15}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v5, Ldhq;->ao:Ldhj;

    const/4 v15, 0x1

    invoke-interface {v0, v5, v15}, Ldhm;->u(Ldhj;Z)V

    sget-object v5, Ldhq;->ap:Ldhj;

    invoke-interface {v0, v5, v15}, Ldhm;->u(Ldhj;Z)V

    sget-object v5, Ldhq;->t:Ldhk;

    const/16 v18, 0x5dc

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v0, v5, v15}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v5, Ldhq;->am:Ldhj;

    const/4 v3, 0x1

    invoke-interface {v0, v5, v3}, Ldhm;->u(Ldhj;Z)V

    sget-object v3, Ldhq;->r:Ldhk;

    const v5, 0x249f0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v3, v5}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v3, Ldhq;->p:Ldhk;

    invoke-interface {v0, v3, v14}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v3, Ldhq;->q:Ldhk;

    const/4 v5, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v3, v5}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v3, Ldhq;->an:Ldhj;

    const/4 v14, 0x1

    invoke-interface {v0, v3, v14}, Ldhm;->u(Ldhj;Z)V

    sget-object v3, Ldhq;->s:Ldhk;

    const/4 v14, 0x0

    invoke-interface {v0, v3, v14}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v3, Ldhq;->aq:Ldhj;

    const/4 v14, 0x1

    invoke-interface {v0, v3, v14}, Ldhm;->u(Ldhj;Z)V

    sget-object v3, Ldhq;->ar:Ldhj;

    invoke-interface {v0, v3, v14}, Ldhm;->u(Ldhj;Z)V

    sget-object v3, Ldhq;->ak:Ldhj;

    invoke-interface {v0, v3, v14}, Ldhm;->u(Ldhj;Z)V

    sget-object v3, Ldhq;->as:Ldhj;

    invoke-interface {v0, v3, v14}, Ldhm;->u(Ldhj;Z)V

    sget-object v3, Ldhq;->at:Ldhj;

    const/4 v14, 0x0

    invoke-interface {v0, v3, v14}, Ldhm;->u(Ldhj;Z)V

    sget-object v3, Ldhq;->au:Ldhj;

    const/4 v14, 0x1

    invoke-interface {v0, v3, v14}, Ldhm;->u(Ldhj;Z)V

    sget-object v3, Ldhq;->v:Ldhk;

    invoke-interface {v0, v3, v10}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v3, Ldhq;->av:Ldhj;

    const/4 v14, 0x0

    invoke-interface {v0, v3, v14}, Ldhm;->u(Ldhj;Z)V

    sget-object v3, Ldhq;->aw:Ldhj;

    invoke-interface {v0, v3, v11}, Ldhm;->v(Ldhj;Ljava/lang/String;)V

    sget-object v3, Ldhq;->u:Ldhk;

    const/4 v14, 0x0

    invoke-interface {v0, v3, v14}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v3, Ldhq;->ax:Ldhj;

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-interface {v0, v3, v14}, Ldhm;->t(Ldhj;Ljava/lang/Float;)V

    sget-object v3, Ldhq;->ay:Ldhj;

    invoke-interface {v0, v3, v14}, Ldhm;->t(Ldhj;Ljava/lang/Float;)V

    sget-object v3, Ldhq;->az:Ldhj;

    const/high16 v17, -0x40800000    # -1.0f

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ldhm;->t(Ldhj;Ljava/lang/Float;)V

    sget-object v3, Ldhq;->aA:Ldhj;

    invoke-interface {v0, v3, v1}, Ldhm;->t(Ldhj;Ljava/lang/Float;)V

    sget-object v3, Ldhq;->aB:Ldhj;

    invoke-interface {v0, v3, v1}, Ldhm;->t(Ldhj;Ljava/lang/Float;)V

    sget-object v3, Ldhq;->aC:Ldhj;

    invoke-interface {v0, v3, v1}, Ldhm;->t(Ldhj;Ljava/lang/Float;)V

    sget-object v3, Ldhq;->w:Ldhk;

    invoke-interface {v0, v3, v9}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v3, Ldhq;->aD:Ldhj;

    move-object/from16 v17, v14

    const/4 v14, 0x1

    invoke-interface {v0, v3, v14}, Ldhm;->u(Ldhj;Z)V

    sget-object v3, Ldhr;->a:Ldhj;

    invoke-interface {v0, v3}, Ldhm;->r(Ldhj;)V

    sget-object v3, Ldhr;->b:Ldhj;

    invoke-interface {v0, v3, v14}, Ldhm;->u(Ldhj;Z)V

    sget-object v3, Ldhr;->c:Ldhj;

    const v14, 0x3dcccccd    # 0.1f

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-interface {v0, v3, v14}, Ldhm;->t(Ldhj;Ljava/lang/Float;)V

    sget-object v3, Ldhr;->d:Ldhj;

    const/high16 v14, 0x42480000    # 50.0f

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-interface {v0, v3, v14}, Ldhm;->t(Ldhj;Ljava/lang/Float;)V

    sget-object v3, Ldht;->f:Ldhj;

    const/4 v14, 0x0

    invoke-interface {v0, v3, v14}, Ldhm;->u(Ldhj;Z)V

    sget-object v3, Ldht;->e:Ldhj;

    invoke-interface {v0, v3, v14}, Ldhm;->u(Ldhj;Z)V

    sget-object v3, Ldht;->g:Ldhj;

    invoke-interface {v0, v3, v14}, Ldhm;->u(Ldhj;Z)V

    sget-object v3, Ldht;->h:Ldhj;

    invoke-interface {v0, v3, v14}, Ldhm;->u(Ldhj;Z)V

    sget-object v3, Ldht;->i:Ldhj;

    invoke-interface {v0, v3, v14}, Ldhm;->u(Ldhj;Z)V

    sget-object v3, Ldht;->j:Ldhj;

    invoke-interface {v0, v3, v14}, Ldhm;->u(Ldhj;Z)V

    sget-object v3, Ldht;->n:Ldhj;

    invoke-interface {v0, v3, v14}, Ldhm;->u(Ldhj;Z)V

    sget-object v3, Ldht;->k:Ldhj;

    invoke-interface {v0, v3, v14}, Ldhm;->u(Ldhj;Z)V

    sget-object v3, Ldht;->l:Ldhj;

    const/4 v14, 0x1

    invoke-interface {v0, v3, v14}, Ldhm;->u(Ldhj;Z)V

    sget-object v3, Ldht;->m:Ldhj;

    const/4 v14, 0x0

    invoke-interface {v0, v3, v14}, Ldhm;->u(Ldhj;Z)V

    sget-object v3, Ldht;->b:Ldhk;

    invoke-interface {v0, v3, v9}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v3, Ldht;->o:Ldhj;

    invoke-interface {v0, v3, v14}, Ldhm;->u(Ldhj;Z)V

    sget-object v3, Ldht;->p:Ldhj;

    const/4 v14, 0x1

    invoke-interface {v0, v3, v14}, Ldhm;->u(Ldhj;Z)V

    sget-object v3, Ldht;->c:Ldhk;

    invoke-interface {v0, v3, v12}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v3, Ldht;->q:Ldhj;

    invoke-interface {v0, v3, v14}, Ldhm;->u(Ldhj;Z)V

    sget-object v3, Ldht;->s:Ldhj;

    invoke-interface {v0, v3, v14}, Ldhm;->u(Ldhj;Z)V

    sget-object v3, Ldht;->r:Ldhj;

    invoke-interface {v0, v3, v14}, Ldhm;->u(Ldhj;Z)V

    sget-object v3, Ldht;->w:Ldhj;

    const/4 v14, 0x0

    invoke-interface {v0, v3, v14}, Ldhm;->u(Ldhj;Z)V

    sget-object v3, Ldht;->x:Ldhj;

    const/4 v14, 0x1

    invoke-interface {v0, v3, v14}, Ldhm;->u(Ldhj;Z)V

    sget-object v3, Ldht;->y:Ldhj;

    invoke-interface {v0, v3, v14}, Ldhm;->u(Ldhj;Z)V

    sget-object v3, Ldht;->t:Ldhj;

    const/4 v14, 0x0

    invoke-interface {v0, v3, v14}, Ldhm;->u(Ldhj;Z)V

    sget-object v3, Ldht;->z:Ldhj;

    invoke-interface {v0, v3, v14}, Ldhm;->u(Ldhj;Z)V

    sget-object v3, Ldht;->d:Ldhk;

    const/16 v18, 0xa

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v0, v3, v14}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v3, Ldht;->A:Ldhj;

    const/4 v14, 0x0

    invoke-interface {v0, v3, v14}, Ldhm;->u(Ldhj;Z)V

    sget-object v3, Ldht;->u:Ldhj;

    const/4 v14, 0x1

    invoke-interface {v0, v3, v14}, Ldhm;->u(Ldhj;Z)V

    sget-object v3, Ldht;->v:Ldhj;

    const/high16 v14, 0x3fc00000    # 1.5f

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-interface {v0, v3, v14}, Ldhm;->t(Ldhj;Ljava/lang/Float;)V

    sget-object v3, Ldht;->B:Ldhj;

    const/4 v2, 0x0

    invoke-interface {v0, v3, v2}, Ldhm;->u(Ldhj;Z)V

    sget-object v3, Ldht;->C:Ldhj;

    invoke-interface {v0, v3, v11}, Ldhm;->v(Ldhj;Ljava/lang/String;)V

    sget-object v3, Ldht;->D:Ldhj;

    sget-object v18, Ldht;->a:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v6

    const/16 v19, 0x0

    aget-object v6, v18, v19

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    :goto_0
    move-object/from16 v21, v1

    const/4 v1, 0x4

    if-ge v6, v1, :cond_0

    const-string v1, ","

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    aget-object v1, v18, v6

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, v21

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ldhm;->v(Ldhj;Ljava/lang/String;)V

    sget-object v2, Ldhu;->c:Ldhj;

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldhu;->d:Ldhj;

    const v3, 0x4be0eb60    # 2.948064E7f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ldhm;->t(Ldhj;Ljava/lang/Float;)V

    sget-object v2, Ldhu;->e:Ldhj;

    const v3, 0x4bb5a4e1    # 2.380845E7f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ldhm;->t(Ldhj;Ljava/lang/Float;)V

    sget-object v2, Ldhu;->f:Ldhj;

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldhu;->g:Ldhj;

    invoke-interface {v0, v2, v3}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldhu;->h:Ldhj;

    invoke-interface {v0, v2, v3}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldhu;->i:Ldhj;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldhu;->a:Ldhk;

    invoke-interface {v0, v2, v15}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v2, Ldhu;->b:Ldhk;

    const/16 v3, 0x1770

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v2, Ldhv;->a:Ldhk;

    sget-object v2, Ldin;->a:Ldin;

    invoke-virtual {v4, v2}, Ldin;->b(Ldin;)Z

    sget-object v2, Ldhv;->d:Ldhj;

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldhv;->e:Ldhj;

    invoke-interface {v0, v2, v3}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldhv;->f:Ldhj;

    invoke-interface {v0, v2}, Ldhm;->r(Ldhj;)V

    sget-object v2, Ldhv;->g:Ldhj;

    invoke-interface {v0, v2, v3}, Ldhm;->s(Ldhj;Z)V

    sget-object v2, Ldhv;->h:Ldhj;

    invoke-interface {v0, v2}, Ldhm;->r(Ldhj;)V

    sget-object v2, Ldhv;->j:Ldhj;

    invoke-interface {v0, v2, v3}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldhv;->i:Ldhj;

    invoke-interface {v0, v2, v3}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldhv;->k:Ldhj;

    const/4 v6, 0x0

    invoke-interface {v0, v2, v6}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldhv;->l:Ldhj;

    invoke-interface {v0, v2, v3}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldhv;->m:Ldhj;

    invoke-interface {v0, v2, v3}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldhv;->n:Ldhj;

    invoke-interface {v0, v2, v3}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldhv;->p:Ldhj;

    invoke-interface {v0, v2, v3}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldhv;->o:Ldhj;

    invoke-interface {v0, v2, v3}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldhv;->r:Ldhj;

    const/4 v6, 0x0

    invoke-interface {v0, v2, v6}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldhv;->s:Ldhj;

    invoke-interface {v0, v2, v3}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldhv;->t:Ldhj;

    invoke-interface {v0, v2, v3}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldhv;->u:Ldhj;

    invoke-interface {v0, v2, v6}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldhv;->v:Ldhj;

    invoke-interface {v0, v2, v6}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldhv;->w:Ldhj;

    invoke-interface {v0, v2, v3}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldhv;->q:Ldhj;

    invoke-interface {v0, v2, v3}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldhv;->x:Ldhj;

    invoke-interface {v0, v2, v3}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldhv;->y:Ldhj;

    invoke-interface {v0, v2, v3}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldhv;->z:Ldhj;

    invoke-interface {v0, v2, v3}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldhv;->b:Ldhk;

    const/16 v6, 0x44c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v2, v6}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v2, Ldhv;->a:Ldhk;

    invoke-interface {v0, v2, v12}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v2, Ldhv;->A:Ldhj;

    invoke-interface {v0, v2, v3}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldhv;->c:Ldhk;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v2, v6}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v2, Ldhv;->B:Ldhj;

    const/4 v6, 0x0

    invoke-interface {v0, v2, v6}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldhv;->C:Ldhj;

    invoke-interface {v0, v2, v6}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldhw;->b:Ldhj;

    const/4 v6, 0x1

    invoke-interface {v0, v2, v6}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldhw;->c:Ldhj;

    invoke-interface {v0, v2, v6}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldhw;->d:Ldhj;

    invoke-interface {v0, v2, v6}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldhw;->a:Ldhj;

    invoke-interface {v0, v2, v6}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldhw;->q:Ldhj;

    invoke-interface {v0, v2, v6}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldhw;->n:Ldhj;

    invoke-interface {v0, v2, v6}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldhw;->e:Ldhj;

    const/4 v6, 0x0

    invoke-interface {v0, v2, v6}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldhw;->f:Ldhj;

    invoke-interface {v0, v2, v6}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldhw;->g:Ldhj;

    invoke-interface {v0, v2, v6}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldhw;->h:Ldhj;

    invoke-interface {v0, v2, v6}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldhw;->i:Ldhj;

    const/4 v15, 0x1

    invoke-interface {v0, v2, v15}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldhw;->j:Ldhj;

    invoke-interface {v0, v2, v6}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldhw;->k:Ldhj;

    invoke-interface {v0, v2, v6}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldhw;->l:Ldhj;

    invoke-interface {v0, v2, v6}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldhw;->m:Ldhj;

    invoke-interface {v0, v2, v6}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldhw;->r:Ldhj;

    invoke-interface {v0, v2}, Ldhm;->r(Ldhj;)V

    sget-object v2, Ldhw;->s:Ldhj;

    const/4 v15, 0x1

    invoke-interface {v0, v2, v15}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldhw;->v:Ldhj;

    invoke-interface {v0, v2, v6}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldhw;->w:Ldhj;

    invoke-interface {v0, v2, v6}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldhw;->x:Ldhj;

    invoke-interface {v0, v2, v15}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldhw;->y:Ldhj;

    invoke-interface {v0, v2, v15}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldhw;->z:Ldhj;

    invoke-interface {v0, v2, v15}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldhw;->A:Ldhj;

    invoke-interface {v0, v2, v15}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldhw;->o:Ldhj;

    const/4 v6, 0x0

    invoke-interface {v0, v2, v6}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldhw;->p:Ldhj;

    invoke-interface {v0, v2, v6}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldhw;->B:Ldhj;

    invoke-interface {v0, v2, v15}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldhw;->C:Ldhj;

    invoke-interface {v0, v2, v15}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldhw;->K:Ldhj;

    invoke-interface {v0, v2, v15}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldhw;->L:Ldhj;

    invoke-interface {v0, v2, v15}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldhw;->M:Ldhj;

    invoke-interface {v0, v2, v15}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldhw;->N:Ldhj;

    invoke-interface {v0, v2, v15}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldhw;->O:Ldhj;

    const/4 v6, 0x0

    invoke-interface {v0, v2, v6}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldhw;->P:Ldhj;

    invoke-interface {v0, v2, v6}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldhw;->S:Ldhj;

    invoke-interface {v0, v2, v6}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldhw;->T:Ldhj;

    invoke-interface {v0, v2, v6}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldhw;->U:Ldhj;

    const/4 v15, 0x1

    invoke-interface {v0, v2, v15}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldhw;->t:Ldhj;

    invoke-interface {v0, v2, v6}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldhw;->u:Ldhj;

    invoke-interface {v0, v2, v6}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldhw;->V:Ldhj;

    invoke-virtual {v0, v2}, Ldit;->r(Ldhj;)V

    sget-object v2, Ldhw;->W:Ldhj;

    const/4 v6, 0x1

    invoke-interface {v0, v2, v6}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldhw;->D:Ldhj;

    invoke-interface {v0, v2, v6}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldhw;->E:Ldhj;

    invoke-interface {v0, v2, v6}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldhw;->X:Ldhj;

    invoke-interface {v0, v2, v6}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldhw;->I:Ldhj;

    invoke-interface {v0, v2, v6}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldhw;->H:Ldhj;

    const/4 v15, 0x0

    invoke-interface {v0, v2, v15}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldhw;->F:Ldhj;

    invoke-interface {v0, v2, v6}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldhw;->J:Ldhj;

    invoke-interface {v0, v2, v6}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldhw;->G:Ldhj;

    invoke-interface {v0, v2, v6}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldhw;->Y:Ldhj;

    invoke-interface {v0, v2, v6}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldhw;->Z:Ldhj;

    invoke-interface {v0, v2, v6}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldhw;->Q:Ldhj;

    const/4 v15, 0x0

    invoke-interface {v0, v2, v15}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldhw;->R:Ldhj;

    invoke-interface {v0, v2, v15}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldhy;->i:Ldhj;

    invoke-interface {v0, v2, v6}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldhy;->a:Ldhk;

    const/16 v6, 0x7d

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v2, v6}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v2, Ldhy;->j:Ldhj;

    const/4 v6, 0x0

    invoke-interface {v0, v2, v6}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldhy;->c:Ldhk;

    invoke-interface {v0, v2, v13}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v2, Ldhy;->d:Ldhk;

    const/16 v6, 0x14

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v2, v6}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v2, Ldhy;->b:Ldhk;

    sget-object v6, Ldhy;->c:Ldhk;

    invoke-interface {v0, v6}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object v6

    invoke-virtual {v6}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    mul-int/lit8 v6, v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v2, v6}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v2, Ldhy;->k:Ldhj;

    const/4 v6, 0x1

    invoke-interface {v0, v2, v6}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldhy;->l:Ldhj;

    const/4 v15, 0x0

    invoke-interface {v0, v2, v15}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldhy;->p:Ldhj;

    invoke-interface {v0, v2, v15}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldhy;->q:Ldhj;

    invoke-interface {v0, v2, v6}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldhy;->r:Ldhj;

    invoke-interface {v0, v2, v6}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldhy;->e:Ldhk;

    invoke-interface {v0, v2, v9}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v2, Ldhy;->m:Ldhj;

    invoke-interface {v0, v2}, Ldhm;->r(Ldhj;)V

    sget-object v2, Ldhy;->f:Ldhk;

    invoke-interface {v0, v2, v5}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v2, Ldhy;->n:Ldhj;

    const/4 v5, 0x1

    invoke-interface {v0, v2, v5}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldhy;->o:Ldhj;

    const/4 v5, 0x0

    invoke-interface {v0, v2, v5}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldhy;->g:Ldhk;

    invoke-interface {v0, v2, v12}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v2, Ldhy;->h:Ldhk;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v2, v5}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v2, Ldhy;->s:Ldhj;

    const/4 v5, 0x1

    invoke-interface {v0, v2, v5}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldhy;->t:Ldhj;

    const/4 v6, 0x0

    invoke-interface {v0, v2, v6}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldhy;->u:Ldhj;

    invoke-interface {v0, v2, v5}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldhy;->v:Ldhj;

    invoke-interface {v0, v2, v5}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldhy;->w:Ldhj;

    invoke-interface {v0, v2, v6}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldhz;->c:Ldhj;

    invoke-interface {v0, v2, v6}, Ldhm;->s(Ldhj;Z)V

    sget-object v2, Ldhz;->a:Ldhj;

    invoke-interface {v0, v2, v6}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldhz;->b:Ldhj;

    const/4 v5, 0x1

    invoke-interface {v0, v2, v5}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldia;->a:Ldhk;

    invoke-interface {v0, v2, v10}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v2, Ldia;->b:Ldhj;

    invoke-interface {v0, v2, v5}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldia;->c:Ldhj;

    const/4 v6, 0x0

    invoke-interface {v0, v2, v6}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldib;->e:Ldhj;

    invoke-interface {v0, v2, v5}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldib;->f:Ldhj;

    invoke-interface {v0, v2, v14}, Ldhm;->t(Ldhj;Ljava/lang/Float;)V

    sget-object v2, Ldib;->g:Ldhj;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v0, v2, v5}, Ldhm;->t(Ldhj;Ljava/lang/Float;)V

    sget-object v2, Ldib;->h:Ldhj;

    invoke-interface {v0, v2, v8}, Ldhm;->t(Ldhj;Ljava/lang/Float;)V

    sget-object v2, Ldib;->a:Ldhk;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v2, v5}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v2, Ldib;->i:Ldhj;

    const/4 v5, 0x1

    invoke-interface {v0, v2, v5}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldib;->j:Ldhj;

    invoke-interface {v0, v2, v5}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldib;->k:Ldhj;

    const/4 v5, 0x0

    invoke-interface {v0, v2, v5}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldib;->l:Ldhj;

    invoke-interface {v0, v2, v5}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldib;->m:Ldhj;

    invoke-interface {v0, v2, v5}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldib;->o:Ldhj;

    invoke-interface {v0, v2, v5}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldib;->p:Ldhj;

    invoke-interface {v0, v2, v5}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldib;->n:Ldhj;

    invoke-interface {v0, v2, v5}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldib;->q:Ldhj;

    const/4 v6, 0x1

    invoke-interface {v0, v2, v6}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldib;->r:Ldhj;

    invoke-interface {v0, v2, v5}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldib;->s:Ldhj;

    invoke-interface {v0, v2, v5}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldib;->t:Ldhj;

    invoke-interface {v0, v2, v5}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldib;->u:Ldhj;

    const/4 v6, 0x1

    invoke-interface {v0, v2, v6}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldib;->v:Ldhj;

    invoke-interface {v0, v2, v5}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldib;->w:Ldhj;

    invoke-interface {v0, v2, v11}, Ldhm;->v(Ldhj;Ljava/lang/String;)V

    sget-object v2, Ldib;->x:Ldhj;

    invoke-interface {v0, v2, v5}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldib;->y:Ldhj;

    invoke-interface {v0, v2, v5}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldib;->z:Ldhj;

    invoke-interface {v0, v2, v5}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldib;->A:Ldhj;

    const/4 v5, 0x1

    invoke-interface {v0, v2, v5}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldib;->C:Ldhj;

    invoke-interface {v0, v2, v5}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldib;->B:Ldhj;

    invoke-interface {v0, v2, v5}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldib;->D:Ldhj;

    invoke-interface {v0, v2, v5}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldib;->E:Ldhj;

    invoke-interface {v0, v2, v5}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldib;->F:Ldhj;

    invoke-interface {v0, v2, v5}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldib;->G:Ldhj;

    invoke-interface {v0, v2, v5}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldib;->H:Ldhj;

    const/4 v6, 0x0

    invoke-interface {v0, v2, v6}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldib;->I:Ldhj;

    invoke-interface {v0, v2, v5}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldib;->J:Ldhj;

    invoke-interface {v0, v2, v5}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldib;->K:Ldhj;

    invoke-interface {v0, v2, v5}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldib;->L:Ldhj;

    invoke-interface {v0, v2, v5}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldib;->b:Ldhk;

    const/16 v5, 0x918

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v2, v5}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v2, Ldib;->c:Ldhk;

    const/16 v5, 0x6d2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v2, v5}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v2, Ldib;->d:Ldhk;

    invoke-interface {v0, v2, v12}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v2, Ldib;->M:Ldhj;

    const/high16 v5, 0x40e00000    # 7.0f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v0, v2, v5}, Ldhm;->t(Ldhj;Ljava/lang/Float;)V

    sget-object v2, Ldib;->O:Ldhj;

    const/4 v5, 0x0

    invoke-interface {v0, v2, v5}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldib;->N:Ldhj;

    invoke-interface {v0, v2, v5}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldic;->a:Ldhk;

    invoke-interface {v0, v2, v7}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v2, Ldic;->b:Ldhj;

    const/4 v5, 0x1

    invoke-interface {v0, v2, v5}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldic;->c:Ldhj;

    invoke-interface {v0, v2, v5}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldic;->d:Ldhj;

    invoke-interface {v0, v2, v5}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldic;->e:Ldhj;

    const/4 v5, 0x0

    invoke-interface {v0, v2, v5}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldic;->f:Ldhj;

    invoke-interface {v0, v2, v5}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldic;->g:Ldhj;

    invoke-interface {v0, v2, v5}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldic;->h:Ldhj;

    invoke-interface {v0, v2, v5}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldic;->i:Ldhj;

    const/4 v5, 0x1

    invoke-interface {v0, v2, v5}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldie;->a:Ldhj;

    invoke-interface {v0, v2}, Ldhm;->r(Ldhj;)V

    sget-object v2, Ldid;->a:Ldhj;

    const/high16 v5, 0x43fa0000    # 500.0f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v0, v2, v5}, Ldhm;->t(Ldhj;Ljava/lang/Float;)V

    sget-object v2, Ldid;->b:Ldhj;

    const/high16 v5, 0x437a0000    # 250.0f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v0, v2, v5}, Ldhm;->t(Ldhj;Ljava/lang/Float;)V

    sget-object v2, Ldid;->c:Ldhj;

    const/high16 v5, 0x42a00000    # 80.0f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v0, v2, v5}, Ldhm;->t(Ldhj;Ljava/lang/Float;)V

    sget-object v2, Ldid;->d:Ldhj;

    invoke-interface {v0, v2, v5}, Ldhm;->t(Ldhj;Ljava/lang/Float;)V

    sget-object v2, Ldid;->e:Ldhj;

    const v5, -0x41666666    # -0.3f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v0, v2, v5}, Ldhm;->t(Ldhj;Ljava/lang/Float;)V

    sget-object v2, Ldid;->f:Ldhj;

    move-object/from16 v5, v21

    invoke-interface {v0, v2, v5}, Ldhm;->t(Ldhj;Ljava/lang/Float;)V

    sget-object v2, Ldid;->g:Ldhj;

    move-object/from16 v5, v20

    invoke-interface {v0, v2, v5}, Ldhm;->t(Ldhj;Ljava/lang/Float;)V

    sget-object v2, Ldid;->h:Ldhj;

    const/high16 v5, -0x3fa00000    # -3.5f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v0, v2, v5}, Ldhm;->t(Ldhj;Ljava/lang/Float;)V

    sget-object v2, Ldid;->i:Ldhj;

    const/high16 v5, 0x42e60000    # 115.0f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v0, v2, v5}, Ldhm;->t(Ldhj;Ljava/lang/Float;)V

    sget-object v2, Ldid;->j:Ldhj;

    invoke-interface {v0, v2, v5}, Ldhm;->t(Ldhj;Ljava/lang/Float;)V

    sget-object v2, Ldif;->a:Ldhj;

    const/4 v5, 0x1

    invoke-interface {v0, v2, v5}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldif;->b:Ldhj;

    const v6, 0x3e99999a    # 0.3f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v0, v2, v6}, Ldhm;->t(Ldhj;Ljava/lang/Float;)V

    sget-object v2, Ldif;->c:Ldhj;

    invoke-interface {v0, v2, v5}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldif;->d:Ldhj;

    invoke-interface {v0, v2, v5}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldif;->e:Ldhj;

    invoke-interface {v0, v2, v5}, Ldhm;->u(Ldhj;Z)V

    sget-object v2, Ldik;->b:Ldhk;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v2, v5}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v2, Ldik;->c:Ldhk;

    invoke-interface {v0, v2, v5}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v2, Ldik;->a:Ldhk;

    invoke-interface {v0, v2, v5}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v2, Ldik;->f:Ldhk;

    invoke-interface {v0, v2, v12}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v2, Ldik;->h:Ldhk;

    invoke-interface {v0, v2, v12}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v2, Ldik;->i:Ldhk;

    invoke-interface {v0, v2, v12}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v2, Ldik;->j:Ldhk;

    invoke-interface {v0, v2, v5}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v2, Ldik;->d:Ldhk;

    invoke-interface {v0, v2, v12}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v2, Ldik;->g:Ldhk;

    invoke-interface {v0, v2, v5}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v2, Ldik;->k:Ldhk;

    invoke-interface {v0, v2, v5}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v2, Ldik;->l:Ldhk;

    invoke-interface {v0, v2, v5}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v2, Ldik;->m:Ldhk;

    invoke-interface {v0, v2, v12}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v2, Ldik;->e:Ldhk;

    invoke-interface {v0, v2, v12}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v2, Ldik;->n:Ldhk;

    invoke-interface {v0, v2, v12}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v2, Ldik;->o:Ldhk;

    invoke-interface {v0, v2, v5}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v2, Ldik;->p:Ldhk;

    invoke-interface {v0, v2, v5}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v2, Ldik;->q:Ldhk;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v2, Ldik;->r:Ldhk;

    invoke-interface {v0, v2, v1}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v1, Ldik;->s:Ldhk;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v1, Ldik;->t:Ldhk;

    invoke-interface {v0, v1, v5}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v1, Ldik;->u:Ldhk;

    invoke-interface {v0, v1, v5}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v1, Ldil;->a:Ldhj;

    const/4 v5, 0x1

    invoke-interface {v0, v1, v5}, Ldhm;->u(Ldhj;Z)V

    sget-object v1, Ldil;->b:Ldhj;

    const/4 v6, 0x0

    invoke-interface {v0, v1, v6}, Ldhm;->u(Ldhj;Z)V

    sget-object v1, Ldil;->c:Ldhj;

    invoke-interface {v0, v1, v5}, Ldhm;->u(Ldhj;Z)V

    sget-object v1, Ldil;->d:Ldhj;

    invoke-interface {v0, v1, v5}, Ldhm;->u(Ldhj;Z)V

    sget-object v1, Ldil;->e:Ldhj;

    invoke-interface {v0, v1, v5}, Ldhm;->u(Ldhj;Z)V

    sget-object v1, Ldil;->f:Ldhj;

    invoke-interface {v0, v1, v5}, Ldhm;->u(Ldhj;Z)V

    sget-object v1, Ldil;->g:Ldhj;

    invoke-interface {v0, v1, v5}, Ldhm;->u(Ldhj;Z)V

    sget-object v1, Ldil;->h:Ldhj;

    invoke-interface {v0, v1, v5}, Ldhm;->u(Ldhj;Z)V

    sget-object v1, Ldil;->i:Ldhj;

    invoke-interface {v0, v1, v14}, Ldhm;->t(Ldhj;Ljava/lang/Float;)V

    sget v1, Ldii;->a:I

    sget-object v1, Ldih;->b:Ldhj;

    move-object/from16 v6, p2

    iget-boolean v8, v6, Lkoe;->b:Z

    invoke-interface {v0, v1, v5}, Ldhm;->s(Ldhj;Z)V

    sget-object v1, Ldih;->a:Ldhk;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v1, v5}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v1, Ldih;->c:Ldhj;

    const/4 v5, 0x0

    invoke-interface {v0, v1, v5}, Ldhm;->u(Ldhj;Z)V

    sget-object v1, Ldih;->d:Ldhj;

    invoke-interface {v0, v1, v5}, Ldhm;->u(Ldhj;Z)V

    sget-object v1, Ldih;->e:Ldhj;

    invoke-interface {v0, v1, v5}, Ldhm;->u(Ldhj;Z)V

    sget-object v1, Ldih;->f:Ldhj;

    invoke-interface {v0, v1, v11}, Ldhm;->v(Ldhj;Ljava/lang/String;)V

    sget-object v1, Ldih;->g:Ldhj;

    invoke-interface {v0, v1, v11}, Ldhm;->v(Ldhj;Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Ldhd;->a(Ldhm;)V

    sget-object v1, Ldim;->a:Ldhj;

    const/4 v5, 0x1

    invoke-interface {v0, v1, v5}, Ldhm;->u(Ldhj;Z)V

    sget-object v1, Ldhx;->e:Ldhj;

    const/4 v5, 0x0

    invoke-interface {v0, v1, v5}, Ldhm;->u(Ldhj;Z)V

    sget-object v1, Ldhx;->f:Ldhj;

    invoke-interface {v0, v1, v5}, Ldhm;->u(Ldhj;Z)V

    sget-object v1, Ldhx;->g:Ldhj;

    invoke-interface {v0, v1, v5}, Ldhm;->u(Ldhj;Z)V

    sget-object v1, Ldhx;->h:Ldhj;

    invoke-interface {v0, v1, v5}, Ldhm;->u(Ldhj;Z)V

    sget-object v1, Ldhx;->b:Ldhk;

    invoke-interface {v0, v1, v13}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v1, Ldhx;->c:Ldhk;

    const/16 v5, 0x10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v1, v5}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v1, Ldhx;->d:Ldhk;

    invoke-interface {v0, v1, v7}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v1, Ldhx;->a:Ldhk;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v1, v5}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v1, Ldhx;->i:Ldhj;

    const/4 v5, 0x0

    invoke-interface {v0, v1, v5}, Ldhm;->u(Ldhj;Z)V

    sget-object v1, Ldhx;->j:Ldhj;

    const-string v5, "motion-custom_op-rio.tflite.enc"

    invoke-interface {v0, v1, v5}, Ldhm;->v(Ldhj;Ljava/lang/String;)V

    sget-object v1, Ldhx;->k:Ldhj;

    const-string v5, "saliency-custom_op-rio.tflite.enc"

    invoke-interface {v0, v1, v5}, Ldhm;->v(Ldhj;Ljava/lang/String;)V

    sget-object v1, Ldhx;->l:Ldhj;

    const-string v5, "scene_classification-custom_op-rio.tflite.enc"

    invoke-interface {v0, v1, v5}, Ldhm;->v(Ldhj;Ljava/lang/String;)V

    sget-object v1, Ldij;->a:Ldhk;

    invoke-interface {v0, v1, v10}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v1, Ldij;->b:Ldhk;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v1, v5}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v1, Ldij;->c:Ldhk;

    invoke-interface {v0, v1, v9}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v1, Ldij;->d:Ldhk;

    const v5, 0x7fffffff

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v1, v5}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v1, Ldhs;->a:Ldhk;

    const/16 v5, 0xe1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v1, v5}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v1, Ldhs;->b:Ldhk;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v1, Ldhs;->d:Ldhj;

    const v2, 0x3f8ccccd    # 1.1f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ldhm;->t(Ldhj;Ljava/lang/Float;)V

    sget-object v1, Ldhs;->e:Ldhj;

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Ldhm;->t(Ldhj;Ljava/lang/Float;)V

    sget-object v1, Ldhs;->f:Ldhj;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ldhm;->t(Ldhj;Ljava/lang/Float;)V

    invoke-static {v0, v4}, Ldhg;->b(Ldhm;Ldin;)V

    sget v1, Ldhn;->a:I

    move-object/from16 v1, p1

    iget-boolean v2, v1, Lkog;->c:Z

    if-eqz v2, :cond_1

    invoke-static {v0, v0, v4}, Ldle;->c(Ldhl;Ldhi;Ldin;)V

    goto/16 :goto_1

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lkog;->h()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v0, v0, v1, v4}, Ldgx;->c(Ldhl;Ldhi;Lkog;Ldin;)V

    goto/16 :goto_1

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lkog;->i()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v2, p3

    invoke-static {v0, v0, v1, v4, v2}, Ldiu;->c(Ldhl;Ldhi;Lkog;Ldin;Lhbm;)V

    goto :goto_1

    :cond_3
    move-object/from16 v2, p3

    iget-boolean v5, v1, Lkog;->f:Z

    if-eqz v5, :cond_4

    invoke-static {v0, v0, v1, v4}, Ldgw;->c(Ldhl;Ldhi;Lkog;Ldin;)V

    goto :goto_1

    :cond_4
    iget-boolean v5, v1, Lkog;->j:Z

    if-eqz v5, :cond_5

    invoke-static {v0, v0, v4, v2}, Ldgx;->d(Ldhl;Ldhi;Ldin;Lhbm;)V

    goto :goto_1

    :cond_5
    iget-boolean v5, v1, Lkog;->i:Z

    if-eqz v5, :cond_6

    invoke-static {v0, v0, v1, v4, v2}, Ldle;->d(Ldhl;Ldhi;Lkog;Ldin;Lhbm;)V

    goto :goto_1

    :cond_6
    invoke-virtual/range {p1 .. p1}, Lkog;->j()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {v0, v0, v4, v2}, Ldiu;->a(Ldhl;Ldhi;Ldin;Lhbm;)V

    goto :goto_1

    :cond_7
    invoke-virtual/range {p1 .. p1}, Lkog;->b()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-static {v0, v0, v1, v4, v2}, Ldgw;->b(Ldhl;Ldhi;Lkog;Ldin;Lhbm;)V

    goto :goto_1

    :cond_8
    iget-boolean v5, v1, Lkog;->n:Z

    if-eqz v5, :cond_9

    invoke-static {v0, v0, v4, v2}, Ldgx;->a(Ldhl;Ldhi;Ldin;Lhbm;)V

    goto :goto_1

    :cond_9
    iget-boolean v5, v1, Lkog;->o:Z

    if-eqz v5, :cond_a

    invoke-static {v0, v0, v4, v2}, Ldgx;->b(Ldhl;Ldhi;Ldin;Lhbm;)V

    goto :goto_1

    :cond_a
    invoke-virtual/range {p1 .. p1}, Lkog;->k()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {v0, v0, v1, v4}, Ldiu;->b(Ldhl;Ldhi;Lkog;Ldin;)V

    goto :goto_1

    :cond_b
    iget-boolean v2, v1, Lkog;->a:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v0, v4}, Ldgw;->a(Ldhl;Ldhi;Ldin;)V

    goto :goto_1

    :cond_c
    iget-boolean v2, v1, Lkog;->b:Z

    if-eqz v2, :cond_d

    sget-object v2, Ldho;->aP:Ldhj;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Ldit;->u(Ldhj;Z)V

    :cond_d
    :goto_1
    sget-object v2, Ldho;->p:Ldhk;

    sget-object v4, Ldho;->aP:Ldhj;

    invoke-interface {v0, v4}, Ldhi;->l(Ldhj;)Z

    move-result v4

    if-nez v4, :cond_e

    const/4 v11, -0x1

    goto :goto_3

    :cond_e
    invoke-virtual/range {p1 .. p1}, Lkog;->i()Z

    move-result v4

    if-nez v4, :cond_10

    iget-boolean v4, v1, Lkog;->f:Z

    if-nez v4, :cond_10

    invoke-virtual/range {p1 .. p1}, Lkog;->b()Z

    move-result v4

    if-nez v4, :cond_10

    iget-boolean v4, v1, Lkog;->n:Z

    if-nez v4, :cond_10

    invoke-virtual/range {p1 .. p1}, Lkog;->j()Z

    move-result v4

    if-nez v4, :cond_10

    iget-boolean v4, v1, Lkog;->o:Z

    if-nez v4, :cond_10

    invoke-virtual/range {p1 .. p1}, Lkog;->k()Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_2

    :cond_f
    iget-boolean v1, v6, Lkoe;->b:Z

    const/4 v11, 0x2

    goto :goto_3

    :cond_10
    :goto_2
    const/4 v11, 0x3

    :goto_3
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    invoke-static {}, LAGC;->setDeveloperSettings()V

    return-void
.end method

.method private static final x(Ljava/util/Map;Ldhj;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ldhk;)Lj$/util/Optional;
    .locals 8

    iget-object v0, p0, Ldit;->c:Ldir;

    iget-object v0, v0, Ldir;->b:Landroid/content/SharedPreferences;

    iget-object v1, p1, Ldhj;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Ldit;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {p1}, Ldhj;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroidx/wear/ambient/AmbientDelegate;->P()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v1, p0, Ldit;->c:Ldir;

    iget-object v2, p1, Ldhj;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p1, Ldhk;->c:Lmwn;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ldir;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    sget-object v7, Ldir;->a:Lnak;

    invoke-virtual {v7}, Lnaf;->c()Lnaz;

    move-result-object v7

    check-cast v7, Lnah;

    invoke-interface {v7, v6}, Lnah;->h(Ljava/lang/Throwable;)Lnaz;

    move-result-object v6

    check-cast v6, Lnah;

    const/16 v7, 0x372

    invoke-interface {v6, v7}, Lnah;->G(I)Lnaz;

    move-result-object v6

    check-cast v6, Lnah;

    const-string v7, "getAdbOrGserviceIntValue: adbName=%s value=%s"

    invoke-interface {v6, v7, v2, v4}, Lnah;->z(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    :goto_0
    if-nez v5, :cond_3

    iget-object v1, v1, Ldir;->c:Lcvr;

    invoke-virtual {v1, v2}, Lcvr;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v4

    sget-object v6, Ldir;->a:Lnak;

    invoke-virtual {v6}, Lnaf;->c()Lnaz;

    move-result-object v6

    check-cast v6, Lnah;

    invoke-interface {v6, v4}, Lnah;->h(Ljava/lang/Throwable;)Lnaz;

    move-result-object v4

    check-cast v4, Lnah;

    const/16 v6, 0x371

    invoke-interface {v4, v6}, Lnah;->G(I)Lnaz;

    move-result-object v4

    check-cast v4, Lnah;

    const-string v6, "getAdbOrGserviceIntValue: gservicesName=%s value=%s"

    invoke-interface {v4, v6, v2, v1}, Lnah;->z(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    :goto_1
    if-nez v5, :cond_4

    goto :goto_2

    :cond_4
    move-object v0, v5

    :goto_2
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v3}, Lmwn;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_7

    invoke-virtual {v3, v0}, Lmwn;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    goto :goto_3

    :cond_7
    :goto_3
    iget-object p1, p1, Ldhj;->a:Ljava/lang/String;

    const-string v1, "%s must be one of: %s"

    invoke-static {v2, v1, p1, v3}, Lmoz;->t(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object p1

    goto :goto_5

    :cond_8
    :goto_4
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object p1

    :goto_5
    return-object p1
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final d()V
    .locals 0

    return-void
.end method

.method public final e()V
    .locals 0

    return-void
.end method

.method public final f()V
    .locals 0

    return-void
.end method

.method public final g()V
    .locals 0

    return-void
.end method

.method public getSettingKeys()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Ldit;->b:Ljava/util/Map;

    return-object v0
.end method

.method public final h(Ldhj;)Lj$/util/Optional;
    .locals 6

    iget-object v0, p0, Ldit;->c:Ldir;

    iget-object v0, v0, Ldir;->b:Landroid/content/SharedPreferences;

    iget-object v1, p1, Ldhj;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Ldit;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {p1}, Ldhj;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroidx/wear/ambient/AmbientDelegate;->P()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p1}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v1, p0, Ldit;->c:Ldir;

    iget-object p1, p1, Ldhj;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v1, p1}, Ldir;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    :try_start_0
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    sget-object v5, Ldir;->a:Lnak;

    invoke-virtual {v5}, Lnaf;->c()Lnaz;

    move-result-object v5

    check-cast v5, Lnah;

    invoke-interface {v5, v4}, Lnah;->h(Ljava/lang/Throwable;)Lnaz;

    move-result-object v4

    check-cast v4, Lnah;

    const/16 v5, 0x373

    invoke-interface {v4, v5}, Lnah;->G(I)Lnaz;

    move-result-object v4

    check-cast v4, Lnah;

    const-string v5, "getAdbOrPreferenceFloatValue: adbName=%s value=%s"

    invoke-interface {v4, v5, p1, v2}, Lnah;->z(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    :goto_0
    const/4 v2, 0x1

    if-nez v3, :cond_3

    iget-object v4, v1, Ldir;->b:Landroid/content/SharedPreferences;

    invoke-interface {v4, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v1, v1, Ldir;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    :cond_3
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result p1

    cmpl-float p1, p1, v2

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    move-object v0, v3

    goto :goto_1

    :cond_5
    :goto_1
    invoke-static {v0}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method public final i(Ldhj;)Lj$/util/Optional;
    .locals 6

    const-wide/high16 v2, -0x8000000000000000L

    iget-object v0, p0, Ldit;->c:Ldir;

    iget-object v0, v0, Ldir;->b:Landroid/content/SharedPreferences;

    iget-object v1, p1, Ldhj;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Ldit;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {p1}, Ldhj;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroidx/wear/ambient/AmbientDelegate;->P()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-static {p1}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v1, p0, Ldit;->c:Ldir;

    iget-object p1, p1, Ldhj;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v1, p1}, Ldir;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    sget-object v5, Ldir;->a:Lnak;

    invoke-virtual {v5}, Lnaf;->c()Lnaz;

    move-result-object v5

    check-cast v5, Lnah;

    invoke-interface {v5, v4}, Lnah;->h(Ljava/lang/Throwable;)Lnaz;

    move-result-object v4

    check-cast v4, Lnah;

    const/16 v5, 0x374

    invoke-interface {v4, v5}, Lnah;->G(I)Lnaz;

    move-result-object v4

    check-cast v4, Lnah;

    const-string v5, "getAdbOrPreferenceLongValue: adbName=%s value=%s"

    invoke-interface {v4, v5, p1, v2}, Lnah;->z(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    :goto_0
    const-wide/high16 v4, -0x8000000000000000L

    if-nez v3, :cond_3

    iget-object v2, v1, Ldir;->b:Landroid/content/SharedPreferences;

    invoke-interface {v2, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v1, v1, Ldir;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    :cond_3
    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    move-object v0, v3

    :goto_1
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long p1, v1, v4

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    invoke-static {v0}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object p1

    goto :goto_3

    :cond_6
    :goto_2
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object p1

    :goto_3
    return-object p1
.end method

.method public final j(Ldhj;)Ljava/lang/String;
    .locals 6

    iget-object v1, p0, Ldit;->c:Ldir;

    iget-object v1, v1, Ldir;->b:Landroid/content/SharedPreferences;

    iget-object v2, p1, Ldhj;->a:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    iget-object v0, p0, Ldit;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {p1}, Ldhj;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroidx/wear/ambient/AmbientDelegate;->P()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_1
    iget-object v1, p0, Ldit;->c:Ldir;

    iget-object p1, p1, Ldhj;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ldir;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    move-object v0, v2

    goto :goto_0

    :cond_2
    iget-object v2, v1, Ldir;->b:Landroid/content/SharedPreferences;

    invoke-interface {v2, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v1, v1, Ldir;->b:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    return-object p1

    :cond_4
    :goto_0
    return-object v0
.end method

.method public final k(Ldhj;)Z
    .locals 4

    iget-object v0, p0, Ldit;->c:Ldir;

    iget-object v0, v0, Ldir;->b:Landroid/content/SharedPreferences;

    iget-object v1, p1, Ldhj;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Ldit;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p1}, Ldir;->f(Ljava/lang/Boolean;)Z

    move-result p1

    return p1
.end method

.method public final l(Ldhj;)Z
    .locals 6

    iget-object v0, p0, Ldit;->c:Ldir;

    iget-object v0, v0, Ldir;->b:Landroid/content/SharedPreferences;

    iget-object v1, p1, Ldhj;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Ldit;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {p1}, Ldhj;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroidx/wear/ambient/AmbientDelegate;->P()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_1
    iget-object v1, p0, Ldit;->c:Ldir;

    iget-object p1, p1, Ldhj;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v1, p1}, Ldir;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {v2}, Ldig;->a(Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    :cond_2
    iget-object v1, v1, Ldir;->c:Lcvr;

    invoke-virtual {v1, p1}, Lcvr;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-static {p1}, Ldig;->a(Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    :cond_3
    invoke-static {v0}, Ldir;->f(Ljava/lang/Boolean;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public final m(Ldhk;Ljava/lang/Integer;)V
    .locals 3

    iget-object v0, p0, Ldit;->b:Ljava/util/Map;

    new-instance v1, Landroidx/wear/ambient/AmbientDelegate;

    invoke-static {p1, p2}, Ldir;->b(Ldhj;Ljava/lang/Integer;)Lloz;

    move-result-object v2

    invoke-direct {v1, p2, v2}, Landroidx/wear/ambient/AmbientDelegate;-><init>(Ljava/lang/Object;Lloz;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final n(Ldhj;Ljava/lang/Float;)V
    .locals 3

    iget-object v0, p0, Ldit;->b:Ljava/util/Map;

    new-instance v1, Landroidx/wear/ambient/AmbientDelegate;

    invoke-static {p1, p2}, Ldir;->a(Ldhj;Ljava/lang/Float;)Lloz;

    move-result-object v2

    invoke-direct {v1, p2, v2}, Landroidx/wear/ambient/AmbientDelegate;-><init>(Ljava/lang/Object;Lloz;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final o(Ldhj;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Ldit;->b:Ljava/util/Map;

    new-instance v1, Landroidx/wear/ambient/AmbientDelegate;

    invoke-static {p1, p2}, Ldir;->c(Ldhj;Ljava/lang/String;)Lloz;

    move-result-object v2

    invoke-direct {v1, p2, v2}, Landroidx/wear/ambient/AmbientDelegate;-><init>(Ljava/lang/Object;Lloz;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final p(Ldhj;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Ldit;->b:Ljava/util/Map;

    new-instance v1, Landroidx/wear/ambient/AmbientDelegate;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Landroidx/wear/ambient/AmbientDelegate;-><init>(Ljava/lang/Object;Lloz;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final q(Ldhk;Ljava/lang/Integer;)V
    .locals 3

    iget-object v0, p0, Ldit;->b:Ljava/util/Map;

    new-instance v1, Landroidx/wear/ambient/AmbientDelegate;

    invoke-static {p1, p2}, Ldir;->b(Ldhj;Ljava/lang/Integer;)Lloz;

    move-result-object v2

    invoke-direct {v1, p2, v2}, Landroidx/wear/ambient/AmbientDelegate;-><init>(Ljava/lang/Object;Lloz;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final r(Ldhj;)V
    .locals 3

    new-instance v0, Landroidx/wear/ambient/AmbientDelegate;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Ldir;->d(Ldhj;Z)Lloz;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroidx/wear/ambient/AmbientDelegate;-><init>(ZLloz;)V

    iget-object v1, p0, Ldit;->b:Ljava/util/Map;

    invoke-static {v1, p1, v0}, Ldit;->x(Ljava/util/Map;Ldhj;Ljava/lang/Object;)V

    return-void
.end method

.method public final s(Ldhj;Z)V
    .locals 2

    new-instance v0, Landroidx/wear/ambient/AmbientDelegate;

    invoke-static {p1, p2}, Ldir;->d(Ldhj;Z)Lloz;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Landroidx/wear/ambient/AmbientDelegate;-><init>(ZLloz;)V

    iget-object p2, p0, Ldit;->b:Ljava/util/Map;

    invoke-static {p2, p1, v0}, Ldit;->x(Ljava/util/Map;Ldhj;Ljava/lang/Object;)V

    return-void
.end method

.method public final t(Ldhj;Ljava/lang/Float;)V
    .locals 3

    iget-object v0, p0, Ldit;->b:Ljava/util/Map;

    new-instance v1, Landroidx/wear/ambient/AmbientDelegate;

    invoke-static {p1, p2}, Ldir;->a(Ldhj;Ljava/lang/Float;)Lloz;

    move-result-object v2

    invoke-direct {v1, p2, v2}, Landroidx/wear/ambient/AmbientDelegate;-><init>(Ljava/lang/Object;Lloz;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final u(Ldhj;Z)V
    .locals 2

    new-instance v0, Landroidx/wear/ambient/AmbientDelegate;

    invoke-static {p1, p2}, Ldir;->d(Ldhj;Z)Lloz;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Landroidx/wear/ambient/AmbientDelegate;-><init>(ZLloz;)V

    iget-object p2, p0, Ldit;->b:Ljava/util/Map;

    invoke-static {p2, p1, v0}, Ldit;->x(Ljava/util/Map;Ldhj;Ljava/lang/Object;)V

    return-void
.end method

.method public final v(Ldhj;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Ldit;->b:Ljava/util/Map;

    new-instance v1, Landroidx/wear/ambient/AmbientDelegate;

    invoke-static {p1, p2}, Ldir;->c(Ldhj;Ljava/lang/String;)Lloz;

    move-result-object v2

    invoke-direct {v1, p2, v2}, Landroidx/wear/ambient/AmbientDelegate;-><init>(Ljava/lang/Object;Lloz;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final w(Ldhj;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Ldit;->b:Ljava/util/Map;

    new-instance v1, Landroidx/wear/ambient/AmbientDelegate;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Landroidx/wear/ambient/AmbientDelegate;-><init>(Ljava/lang/Object;Lloz;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
