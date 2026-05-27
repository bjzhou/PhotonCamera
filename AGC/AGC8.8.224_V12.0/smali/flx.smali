.class public final Lflx;
.super Ljava/lang/Object;

# interfaces
.implements Lfmd;


# instance fields
.field private final a:Lfbk;

.field private final b:Lgwf;

.field private final c:Lgft;

.field private final d:Lgvw;

.field private final e:Ljvs;

.field private final f:Ljvs;

.field private final g:Ljwb;

.field private final h:Ljvs;

.field private final i:Lgzm;

.field private final j:Lgwu;

.field private final k:Lgya;

.field private final l:Lgla;

.field private final m:Lmqp;

.field private final n:Landroid/view/accessibility/AccessibilityManager;

.field private final o:Loiw;

.field private p:Lgxl;

.field private q:Lhke;

.field private final r:Lkpo;

.field private final s:Ljew;

.field private final t:Ldja;


# direct methods
.method public constructor <init>(Lfbk;Ljew;Lgwf;Lgft;Lgvw;Ljwb;Ljwb;Ljvs;Ljvs;Lgzm;Ldja;Lgwu;Lkpo;Lgla;Lmqp;Landroid/view/accessibility/AccessibilityManager;Loiw;Lgya;[B[B[B[B[B)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lflx;->a:Lfbk;

    move-object v1, p2

    iput-object v1, v0, Lflx;->s:Ljew;

    move-object v1, p3

    iput-object v1, v0, Lflx;->b:Lgwf;

    move-object v1, p4

    iput-object v1, v0, Lflx;->c:Lgft;

    move-object v1, p5

    iput-object v1, v0, Lflx;->d:Lgvw;

    move-object v1, p6

    iput-object v1, v0, Lflx;->e:Ljvs;

    move-object v1, p9

    iput-object v1, v0, Lflx;->f:Ljvs;

    move-object v1, p7

    iput-object v1, v0, Lflx;->g:Ljwb;

    move-object v1, p8

    iput-object v1, v0, Lflx;->h:Ljvs;

    move-object v1, p10

    iput-object v1, v0, Lflx;->i:Lgzm;

    move-object v1, p11

    iput-object v1, v0, Lflx;->t:Ldja;

    move-object v1, p12

    iput-object v1, v0, Lflx;->j:Lgwu;

    move-object v1, p13

    iput-object v1, v0, Lflx;->r:Lkpo;

    move-object/from16 v1, p18

    iput-object v1, v0, Lflx;->k:Lgya;

    move-object/from16 v1, p14

    iput-object v1, v0, Lflx;->l:Lgla;

    move-object/from16 v1, p15

    iput-object v1, v0, Lflx;->m:Lmqp;

    move-object/from16 v1, p16

    iput-object v1, v0, Lflx;->n:Landroid/view/accessibility/AccessibilityManager;

    move-object/from16 v1, p17

    iput-object v1, v0, Lflx;->o:Loiw;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lflx;->p:Lgxl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lgxl;->V(Ljava/lang/Integer;)V

    return-void
.end method

.method public final b(Lflk;Lftf;ZLhke;)Lnou;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    iput-object v2, v0, Lflx;->q:Lhke;

    iget-object v2, v1, Lflk;->b:Lflg;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-object v5, Lgya;->a:Lgya;

    iget-object v5, v0, Lflx;->k:Lgya;

    invoke-virtual {v5}, Lgya;->ordinal()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    iget-object v5, v0, Lflx;->r:Lkpo;

    invoke-virtual {v5, v3, v4}, Lkpo;->i(J)Lgxr;

    move-result-object v5

    move-object v13, v5

    goto :goto_0

    :sswitch_0
    iget-object v5, v0, Lflx;->r:Lkpo;

    sget-object v6, Ldyy;->h:Ldyy;

    const-string v7, "MOTION"

    invoke-virtual {v5, v3, v4, v6, v7}, Lkpo;->f(JLdyy;Ljava/lang/String;)Lgxr;

    move-result-object v5

    move-object v13, v5

    goto :goto_0

    :sswitch_1
    iget-object v5, v0, Lflx;->r:Lkpo;

    sget-object v6, Ldyy;->e:Ldyy;

    const-string v7, "PORTRAIT"

    invoke-virtual {v5, v3, v4, v6, v7}, Lkpo;->f(JLdyy;Ljava/lang/String;)Lgxr;

    move-result-object v5

    move-object v13, v5

    :goto_0
    iget-object v5, v0, Lflx;->t:Ldja;

    iget-object v10, v0, Lflx;->k:Lgya;

    iget-object v6, v0, Lflx;->s:Ljew;

    invoke-virtual {v6, v3, v4}, Ljew;->S(J)Ljava/lang/String;

    move-result-object v11

    iget-object v3, v0, Lflx;->a:Lfbk;

    invoke-interface {v3}, Lfbk;->b()Lcjf;

    move-result-object v12

    iget-object v3, v0, Lflx;->q:Lhke;

    invoke-static {v3}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v14

    new-instance v3, Lgwx;

    iget-object v4, v5, Ldja;->a:Ljava/lang/Object;

    invoke-interface {v4}, Loiw;->get()Ljava/lang/Object;

    move-result-object v7

    iget-object v4, v5, Ldja;->c:Ljava/lang/Object;

    invoke-interface {v4}, Loiw;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Lgpv;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v5, Ldja;->b:Ljava/lang/Object;

    invoke-interface {v4}, Loiw;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Lkbc;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v6, v3

    invoke-direct/range {v6 .. v14}, Lgwx;-><init>(Lgwc;Lgpv;Lkbc;Lgya;Ljava/lang/String;Lcjf;Lgxr;Lmqp;)V

    iget-object v2, v2, Lflg;->d:Lihb;

    iget-object v2, v2, Lihb;->a:Lkaf;

    iget-object v4, v0, Lflx;->c:Lgft;

    invoke-interface {v4}, Lgft;->j()I

    move-result v4

    invoke-static {v4}, Lgfp;->b(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lkaf;->d()Lkaf;

    move-result-object v2

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lkaf;->e()Lkaf;

    move-result-object v2

    :goto_1
    iget-object v4, v0, Lflx;->b:Lgwf;

    invoke-interface {v4, v3}, Lgwf;->e(Lgxl;)V

    iget-object v4, v0, Lflx;->j:Lgwu;

    invoke-virtual {v4, v3}, Lgwu;->a(Lgxl;)V

    invoke-interface {v3, v2}, Lgxl;->S(Lkaf;)V

    iput-object v3, v0, Lflx;->p:Lgxl;

    iget-object v2, v0, Lflx;->c:Lgft;

    invoke-interface {v2}, Lgft;->c()Lkab;

    move-result-object v2

    iget v2, v2, Lkab;->e:I

    invoke-static {}, Lfte;->a()Lftd;

    move-result-object v4

    invoke-virtual {v4, v2}, Lftd;->g(I)V

    move-object/from16 v2, p2

    invoke-virtual {v4, v2}, Lftd;->b(Lftf;)V

    iget-object v2, v0, Lflx;->d:Lgvw;

    iget v2, v2, Lgvw;->a:I

    invoke-virtual {v4, v2}, Lftd;->e(I)V

    iget-object v2, v1, Lflk;->c:Lfuz;

    invoke-virtual {v2}, Lklw;->k()Lklv;

    move-result-object v2

    invoke-virtual {v4, v2}, Lftd;->c(Lklv;)V

    iget-object v2, v1, Lflk;->c:Lfuz;

    invoke-virtual {v2}, Lklw;->O()[B

    move-result-object v2

    iput-object v2, v4, Lftd;->a:[B

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v5}, Ljwa;->a(Ljava/lang/Object;)Ljwb;

    move-result-object v5

    invoke-virtual {v4, v5}, Lftd;->h(Ljwb;)V

    invoke-virtual {v4, v2}, Lftd;->d(Z)V

    invoke-virtual {v4, v2}, Lftd;->f(Z)V

    invoke-virtual {v4}, Lftd;->a()Lfte;

    move-result-object v4

    iget-object v5, v1, Lflk;->c:Lfuz;

    iget-object v6, v0, Lflx;->i:Lgzm;

    sget-object v7, Lgzd;->d:Lgzs;

    invoke-interface {v6, v7}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-object v7, Lhxs;->a:Lhxs;

    iget v7, v7, Lhxs;->e:I

    invoke-virtual {v5}, Lklw;->k()Lklv;

    move-result-object v8

    sget-object v9, Lklv;->a:Lklv;

    const/4 v10, 0x1

    if-ne v8, v9, :cond_1

    const/4 v8, 0x1

    goto :goto_2

    :cond_1
    const/4 v8, 0x0

    :goto_2
    if-eqz v8, :cond_2

    sget-object v9, Lgzd;->s:Lgzu;

    goto :goto_3

    :cond_2
    sget-object v9, Lgzd;->t:Lgzu;

    :goto_3
    iget-object v11, v0, Lflx;->m:Lmqp;

    invoke-virtual {v11}, Lmqp;->g()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-virtual {v11}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lglm;

    invoke-interface {v11}, Lglm;->c()Lnjm;

    move-result-object v11

    invoke-static {v11}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v11

    goto :goto_4

    :cond_3
    sget-object v11, Lmpx;->a:Lmpx;

    :goto_4
    if-eq v6, v7, :cond_4

    const/4 v6, 0x1

    goto :goto_5

    :cond_4
    const/4 v6, 0x0

    :goto_5
    invoke-interface {v3}, Lgxl;->k()Lhjc;

    move-result-object v7

    invoke-static {}, Lfcg;->a()Lfcf;

    move-result-object v12

    iget-object v13, v0, Lflx;->k:Lgya;

    invoke-static {v13}, Ljfc;->h(Lgya;)I

    move-result v13

    iput v13, v12, Lfcf;->e:I

    invoke-interface {v3}, Lgxl;->s()Ljava/lang/String;

    move-result-object v13

    sget-object v14, Lkqi;->c:Lkqi;

    iget-object v14, v14, Lkqi;->j:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "."

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lfcf;->a:Ljava/lang/String;

    invoke-virtual {v12, v8}, Lfcf;->g(Z)V

    iget-object v8, v0, Lflx;->h:Ljvs;

    invoke-interface {v8}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v12, v8}, Lfcf;->o(F)V

    iget-object v8, v0, Lflx;->i:Lgzm;

    invoke-interface {v8, v9}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v12, v8}, Lfcf;->e(Ljava/lang/String;)V

    iget-object v8, v0, Lflx;->f:Ljvs;

    invoke-interface {v8}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {v12, v8}, Lfcf;->c(Z)V

    invoke-virtual {v12, v6}, Lfcf;->h(Z)V

    iget-object v6, v0, Lflx;->g:Ljwb;

    invoke-interface {v6}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v12, v6}, Lfcf;->l(Z)V

    iget-object v6, v0, Lflx;->e:Ljvs;

    invoke-interface {v6}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgyu;

    iget v6, v6, Lgyu;->g:I

    int-to-float v6, v6

    invoke-virtual {v12, v6}, Lfcf;->n(F)V

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, v12, Lfcf;->b:Ljava/lang/Boolean;

    invoke-virtual {v5}, Lklw;->h()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v12, v5}, Lfcf;->b(Landroid/graphics/Rect;)V

    iget-object v5, v0, Lflx;->i:Lgzm;

    sget-object v6, Lgzd;->u:Lgzr;

    invoke-interface {v5, v6}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v12, v5}, Lfcf;->j(Ljava/lang/Boolean;)V

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v12, v5}, Lfcf;->k(Ljava/lang/Boolean;)V

    iget-object v5, v0, Lflx;->g:Ljwb;

    invoke-interface {v5}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v12, v5}, Lfcf;->l(Z)V

    invoke-interface {v3}, Lgxl;->j()Lgyb;

    move-result-object v5

    sget-object v6, Lgyb;->b:Lgyb;

    if-ne v5, v6, :cond_5

    const/4 v2, 0x1

    goto :goto_6

    :cond_5
    :goto_6
    invoke-virtual {v12, v2}, Lfcf;->i(Z)V

    iget-object v2, v0, Lflx;->l:Lgla;

    invoke-virtual {v2}, Lgla;->e()Lnhr;

    move-result-object v2

    invoke-virtual {v12, v2}, Lfcf;->d(Lnhr;)V

    iput-object v11, v12, Lfcf;->c:Lmqp;

    iget-object v2, v0, Lflx;->n:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    invoke-virtual {v12, v2}, Lfcf;->m(Z)V

    iget-object v2, v0, Lflx;->o:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhxx;

    invoke-virtual {v2}, Lhxx;->a()Lnio;

    move-result-object v2

    invoke-static {v2}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v2

    iput-object v2, v12, Lfcf;->d:Lmqp;

    invoke-virtual {v12}, Lfcf;->a()Lfcg;

    move-result-object v2

    check-cast v7, Lhjd;

    iput-object v2, v7, Lhjd;->y:Lfcg;

    invoke-virtual {v1, v4, v3}, Lflk;->f(Lfte;Lgxl;)Lnou;

    move-result-object v1

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method public final c(Lftg;Lflg;Lftf;Lfuz;ZZLhke;)Lnou;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Method is Deprecated"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d(Lmbe;)V
    .locals 1

    iget-object v0, p0, Lflx;->p:Lgxl;

    invoke-static {v0, p1}, Lflr;->a(Lgxl;Lmbe;)V

    return-void
.end method
