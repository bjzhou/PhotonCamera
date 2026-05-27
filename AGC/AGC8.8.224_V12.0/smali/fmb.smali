.class public final Lfmb;
.super Ljava/lang/Object;

# interfaces
.implements Lfmd;


# instance fields
.field private final A:Lgto;

.field private final B:Lkbc;

.field private final C:Landroid/view/accessibility/AccessibilityManager;

.field private final D:Loiw;

.field private final E:Ljava/util/concurrent/atomic/AtomicLong;

.field private F:Lgxl;

.field private final G:Lkpo;

.field private final H:Llij;

.field private final I:Ljew;

.field public final a:Lfeu;

.field public final b:Landroid/os/Handler;

.field private final c:Lfbk;

.field private final d:Lmqp;

.field private final e:Lgwf;

.field private final f:Lgft;

.field private final g:Lgvw;

.field private final h:Lgcg;

.field private final i:Ljwb;

.field private final j:Ljvs;

.field private final k:Ljvs;

.field private final l:Ljwb;

.field private final m:Ljwb;

.field private final n:Ljwb;

.field private final o:Ljvs;

.field private final p:Lgzm;

.field private final q:Ldhi;

.field private final r:Lgwu;

.field private final s:Ljvs;

.field private final t:Ldne;

.field private final u:Lgla;

.field private final v:Lmqp;

.field private w:Lhke;

.field private final x:Lfue;

.field private final y:Ljwb;

.field private final z:Lebl;


# direct methods
.method public constructor <init>(Lfbk;Lmqp;Ljew;Lgwf;Lgft;Lgvw;Lgcg;Ljwb;Ljwb;Ljvs;Ljwb;Ljwb;Ljvs;Ljvs;Lgzm;Ljwb;Lfeu;Ldhi;Llij;Lgwu;Ldne;Lgla;Lmqp;Ljwb;Lfue;Lebl;Lkpo;Lgto;Lkbc;Landroid/view/accessibility/AccessibilityManager;Loiw;[B[B[B[B[B)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v1, v0, Lfmb;->E:Ljava/util/concurrent/atomic/AtomicLong;

    move-object v1, p1

    iput-object v1, v0, Lfmb;->c:Lfbk;

    move-object v1, p2

    iput-object v1, v0, Lfmb;->d:Lmqp;

    move-object v1, p3

    iput-object v1, v0, Lfmb;->I:Ljew;

    move-object v1, p4

    iput-object v1, v0, Lfmb;->e:Lgwf;

    move-object v1, p5

    iput-object v1, v0, Lfmb;->f:Lgft;

    move-object v1, p6

    iput-object v1, v0, Lfmb;->g:Lgvw;

    move-object v1, p7

    iput-object v1, v0, Lfmb;->h:Lgcg;

    move-object v1, p8

    iput-object v1, v0, Lfmb;->i:Ljwb;

    move-object/from16 v1, p14

    iput-object v1, v0, Lfmb;->j:Ljvs;

    move-object v1, p10

    iput-object v1, v0, Lfmb;->k:Ljvs;

    move-object v1, p9

    iput-object v1, v0, Lfmb;->l:Ljwb;

    move-object v1, p11

    iput-object v1, v0, Lfmb;->m:Ljwb;

    move-object v1, p12

    iput-object v1, v0, Lfmb;->n:Ljwb;

    move-object v1, p13

    iput-object v1, v0, Lfmb;->o:Ljvs;

    move-object/from16 v1, p15

    iput-object v1, v0, Lfmb;->p:Lgzm;

    move-object/from16 v1, p16

    iput-object v1, v0, Lfmb;->s:Ljvs;

    move-object/from16 v1, p17

    iput-object v1, v0, Lfmb;->a:Lfeu;

    move-object/from16 v1, p18

    iput-object v1, v0, Lfmb;->q:Ldhi;

    move-object/from16 v1, p19

    iput-object v1, v0, Lfmb;->H:Llij;

    move-object/from16 v1, p20

    iput-object v1, v0, Lfmb;->r:Lgwu;

    move-object/from16 v1, p21

    iput-object v1, v0, Lfmb;->t:Ldne;

    move-object/from16 v1, p22

    iput-object v1, v0, Lfmb;->u:Lgla;

    move-object/from16 v1, p23

    iput-object v1, v0, Lfmb;->v:Lmqp;

    move-object/from16 v1, p24

    iput-object v1, v0, Lfmb;->y:Ljwb;

    move-object/from16 v1, p25

    iput-object v1, v0, Lfmb;->x:Lfue;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v1}, Ljvd;->o(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v1

    iput-object v1, v0, Lfmb;->b:Landroid/os/Handler;

    move-object/from16 v1, p26

    iput-object v1, v0, Lfmb;->z:Lebl;

    move-object/from16 v1, p27

    iput-object v1, v0, Lfmb;->G:Lkpo;

    move-object/from16 v1, p28

    iput-object v1, v0, Lfmb;->A:Lgto;

    move-object/from16 v1, p29

    iput-object v1, v0, Lfmb;->B:Lkbc;

    move-object/from16 v1, p30

    iput-object v1, v0, Lfmb;->C:Landroid/view/accessibility/AccessibilityManager;

    move-object/from16 v1, p31

    iput-object v1, v0, Lfmb;->D:Loiw;

    return-void
.end method


# virtual methods
.method public final synthetic a()V
    .locals 0

    return-void
.end method

.method public final b(Lflk;Lftf;ZLhke;)Lnou;
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final c(Lftg;Lflg;Lftf;Lfuz;ZZLhke;)Lnou;
    .locals 21

    move-object/from16 v0, p0

    new-instance v1, Ljvk;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v3}, Ljvk;-><init>(Ljava/lang/Object;)V

    move-object/from16 v3, p7

    iput-object v3, v0, Lfmb;->w:Lhke;

    iget-object v3, v0, Lfmb;->q:Ldhi;

    sget-object v4, Ldhy;->r:Ldhj;

    invoke-interface {v3, v4}, Ldhi;->l(Ldhj;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v0, Lfmb;->m:Ljwb;

    invoke-interface {v3}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v0, Lfmb;->n:Ljwb;

    invoke-interface {v3}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual/range {p4 .. p4}, Lklw;->K()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v0, Lfmb;->s:Ljvs;

    invoke-interface {v3}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v3

    sget-object v5, Lika;->h:Lika;

    if-ne v3, v5, :cond_1

    iget-object v3, v0, Lfmb;->q:Ldhi;

    sget-object v5, Ldhy;->q:Ldhj;

    invoke-interface {v3, v5}, Ldhi;->l(Ldhj;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    iget-object v3, v0, Lfmb;->q:Ldhi;

    invoke-interface {v3}, Ldhi;->c()V

    goto :goto_0

    :cond_2
    :goto_0
    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    iget-object v5, v0, Lfmb;->B:Lkbc;

    const-string v6, "createCaptureParams"

    invoke-interface {v5, v6}, Lkbc;->e(Ljava/lang/String;)V

    invoke-static {}, Lfte;->a()Lftd;

    move-result-object v5

    iget-object v6, v0, Lfmb;->f:Lgft;

    invoke-interface {v6}, Lgft;->c()Lkab;

    move-result-object v6

    iget v6, v6, Lkab;->e:I

    invoke-virtual {v5, v6}, Lftd;->g(I)V

    move-object/from16 v6, p3

    invoke-virtual {v5, v6}, Lftd;->b(Lftf;)V

    iget-object v6, v0, Lfmb;->g:Lgvw;

    iget v6, v6, Lgvw;->a:I

    invoke-virtual {v5, v6}, Lftd;->e(I)V

    invoke-virtual/range {p4 .. p4}, Lklw;->k()Lklv;

    move-result-object v6

    invoke-virtual {v5, v6}, Lftd;->c(Lklv;)V

    invoke-virtual/range {p4 .. p4}, Lklw;->O()[B

    move-result-object v6

    iput-object v6, v5, Lftd;->a:[B

    invoke-virtual {v5, v1}, Lftd;->h(Ljwb;)V

    invoke-virtual {v5, v3}, Lftd;->d(Z)V

    move/from16 v1, p6

    invoke-virtual {v5, v1}, Lftd;->f(Z)V

    invoke-virtual {v5}, Lftd;->a()Lfte;

    move-result-object v1

    iget-object v3, v0, Lfmb;->B:Lkbc;

    const-string v5, "createAndStartPhotoCaptureSession"

    invoke-interface {v3, v5}, Lkbc;->g(Ljava/lang/String;)V

    sget-object v3, Lgya;->b:Lgya;

    iget-object v5, v0, Lfmb;->o:Ljvs;

    invoke-interface {v5}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iget-boolean v6, v1, Lfte;->i:Z

    if-eqz v6, :cond_4

    sget-object v3, Lgya;->o:Lgya;

    goto :goto_2

    :cond_4
    if-eqz v5, :cond_5

    sget-object v3, Lgya;->v:Lgya;

    goto :goto_2

    :cond_5
    iget-object v5, v0, Lfmb;->z:Lebl;

    iget-object v5, v5, Lebl;->b:Ljvs;

    invoke-interface {v5}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_6

    sget-object v3, Lgya;->m:Lgya;

    goto :goto_2

    :cond_6
    iget-object v5, v0, Lfmb;->h:Lgcg;

    invoke-virtual {v5}, Ljwi;->bm()Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lgcf;->a:Lgcf;

    if-ne v5, v6, :cond_7

    sget-object v3, Lgya;->c:Lgya;

    goto :goto_2

    :cond_7
    iget-object v5, v0, Lfmb;->h:Lgcg;

    invoke-virtual {v5}, Ljwi;->bm()Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lgcf;->b:Lgcf;

    if-ne v5, v6, :cond_8

    sget-object v3, Lgya;->d:Lgya;

    :cond_8
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v7, v0, Lfmb;->E:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v8, Lflz;

    invoke-direct {v8, v5, v6}, Lflz;-><init>(J)V

    invoke-static {v7, v8}, Lj$/util/concurrent/atomic/DesugarAtomicLong;->updateAndGet(Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/function/LongUnaryOperator;)J

    move-result-wide v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    sget-object v7, Lgya;->o:Lgya;

    if-ne v3, v7, :cond_9

    iget-object v7, v0, Lfmb;->q:Ldhi;

    sget-object v8, Ldhv;->a:Ldhk;

    invoke-interface {v7}, Ldhi;->e()V

    :cond_9
    iget-object v7, v0, Lfmb;->B:Lkbc;

    const-string v8, "createMediaGroup"

    invoke-interface {v7, v8}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v7, v0, Lfmb;->G:Lkpo;

    iget-object v8, v0, Lfmb;->m:Ljwb;

    invoke-interface {v8}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_a

    iget-object v8, v0, Lfmb;->n:Ljwb;

    invoke-interface {v8}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    :cond_a
    invoke-virtual {v7, v5, v6}, Lkpo;->i(J)Lgxr;

    move-result-object v14

    iget-object v7, v0, Lfmb;->B:Lkbc;

    const-string v8, "getLocationAsync"

    invoke-interface {v7, v8}, Lkbc;->g(Ljava/lang/String;)V

    iget-object v7, v0, Lfmb;->c:Lfbk;

    invoke-interface {v7}, Lfbk;->b()Lcjf;

    move-result-object v13

    iget-object v7, v0, Lfmb;->B:Lkbc;

    const-string v8, "generateName"

    invoke-interface {v7, v8}, Lkbc;->g(Ljava/lang/String;)V

    sget-object v7, Lgya;->o:Lgya;

    if-ne v3, v7, :cond_b

    iget-object v7, v0, Lfmb;->I:Ljew;

    new-instance v8, Ljava/text/SimpleDateFormat;

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "\'VID\'_yyyyMMdd_HHmmss_\'LS\'"

    invoke-direct {v8, v10, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v7, v5, v6, v8}, Ljew;->U(JLjava/text/DateFormat;)Ljava/lang/String;

    move-result-object v5

    move-object v12, v5

    goto :goto_3

    :cond_b
    iget-object v7, v0, Lfmb;->I:Ljew;

    invoke-virtual {v7, v5, v6}, Ljew;->S(J)Ljava/lang/String;

    move-result-object v5

    move-object v12, v5

    :goto_3
    iget-object v5, v0, Lfmb;->B:Lkbc;

    const-string v6, "sessionFactory#create"

    invoke-interface {v5, v6}, Lkbc;->g(Ljava/lang/String;)V

    iget-object v5, v0, Lfmb;->H:Llij;

    iget-object v15, v0, Lfmb;->d:Lmqp;

    iget-object v11, v1, Lfte;->g:Ljwb;

    iget-object v6, v0, Lfmb;->w:Lhke;

    invoke-static {v6}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v17

    iget-object v6, v0, Lfmb;->t:Ldne;

    invoke-static {v6}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v18

    iget-object v10, v0, Lfmb;->A:Lgto;

    new-instance v9, Lgwy;

    iget-object v6, v5, Llij;->f:Ljava/lang/Object;

    invoke-interface {v6}, Loiw;->get()Ljava/lang/Object;

    move-result-object v6

    iget-object v7, v5, Llij;->b:Ljava/lang/Object;

    invoke-interface {v7}, Loiw;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lefq;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v5, Llij;->a:Ljava/lang/Object;

    invoke-interface {v8}, Loiw;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljvs;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v5, Llij;->c:Ljava/lang/Object;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgcg;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v5, Llij;->d:Ljava/lang/Object;

    invoke-interface {v4}, Loiw;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldhi;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v5, Llij;->g:Ljava/lang/Object;

    invoke-interface {v4}, Loiw;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkbc;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v5, Llij;->e:Ljava/lang/Object;

    invoke-interface {v5}, Loiw;->get()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v16, v5

    check-cast v16, Lgpv;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v5, v9

    move-object/from16 p3, v1

    move-object v1, v9

    move-object v9, v2

    move-object v2, v10

    move-object v10, v4

    move-object v4, v11

    move-object/from16 v11, v16

    move-object/from16 v16, v4

    move-object/from16 v19, v3

    move-object/from16 v20, v2

    invoke-direct/range {v5 .. v20}, Lgwy;-><init>(Lgwc;Lefq;Ljvs;Lgcg;Lkbc;Lgpv;Ljava/lang/String;Lcjf;Lgxr;Lmqp;Ljvs;Lmqp;Lmqp;Lgya;Lgto;)V

    iget-object v2, v0, Lfmb;->B:Lkbc;

    const-string v3, "getDeviceSize"

    invoke-interface {v2, v3}, Lkbc;->g(Ljava/lang/String;)V

    move-object/from16 v2, p2

    iget-object v2, v2, Lflg;->d:Lihb;

    iget-object v2, v2, Lihb;->a:Lkaf;

    iget-object v3, v0, Lfmb;->f:Lgft;

    invoke-interface {v3}, Lgft;->j()I

    move-result v3

    invoke-static {v3}, Lgfp;->b(I)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v2}, Lkaf;->d()Lkaf;

    move-result-object v2

    goto :goto_4

    :cond_c
    invoke-virtual {v2}, Lkaf;->e()Lkaf;

    move-result-object v2

    :goto_4
    iget-object v3, v0, Lfmb;->e:Lgwf;

    invoke-interface {v3, v1}, Lgwf;->e(Lgxl;)V

    iget-object v3, v0, Lfmb;->B:Lkbc;

    const-string v4, "fallbackSaver#track"

    invoke-interface {v3, v4}, Lkbc;->g(Ljava/lang/String;)V

    iget-object v3, v0, Lfmb;->r:Lgwu;

    invoke-virtual {v3, v1}, Lgwu;->a(Lgxl;)V

    move-object/from16 v3, p3

    iget-boolean v4, v3, Lfte;->i:Z

    if-eqz v4, :cond_d

    new-instance v4, Lfib;

    const/16 v5, 0xa

    invoke-direct {v4, v0, v5}, Lfib;-><init>(Lfmb;I)V

    new-instance v5, Lfma;

    invoke-direct {v5, v4}, Lfma;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v1, v5}, Lgxl;->u(Lgxw;)V

    :cond_d
    iget-object v4, v0, Lfmb;->B:Lkbc;

    const-string v5, "startEmpty"

    invoke-interface {v4, v5}, Lkbc;->g(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lgxl;->S(Lkaf;)V

    iget-object v2, v0, Lfmb;->B:Lkbc;

    invoke-interface {v2}, Lkbc;->f()V

    iput-object v1, v0, Lfmb;->F:Lgxl;

    iget-object v2, v0, Lfmb;->B:Lkbc;

    const-string v4, "takePicture"

    invoke-interface {v2, v4}, Lkbc;->g(Ljava/lang/String;)V

    move-object/from16 v2, p1

    invoke-interface {v2, v3, v1}, Lftg;->f(Lfte;Lgxl;)Lnou;

    move-result-object v2

    iget-object v3, v0, Lfmb;->B:Lkbc;

    const-string v4, "PhotoCaptureSession#onCaptureStarted"

    invoke-interface {v3, v4}, Lkbc;->g(Ljava/lang/String;)V

    invoke-interface {v1}, Lgxl;->M()V

    iget-object v3, v0, Lfmb;->B:Lkbc;

    const-string v4, "decorateSession"

    invoke-interface {v3, v4}, Lkbc;->g(Ljava/lang/String;)V

    iget-object v3, v0, Lfmb;->p:Lgzm;

    sget-object v4, Lgzd;->d:Lgzs;

    invoke-interface {v3, v4}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v4, Lhxs;->a:Lhxs;

    iget v4, v4, Lhxs;->e:I

    invoke-virtual/range {p4 .. p4}, Lklw;->k()Lklv;

    move-result-object v5

    sget-object v6, Lklv;->a:Lklv;

    if-ne v5, v6, :cond_e

    const/4 v5, 0x1

    goto :goto_5

    :cond_e
    const/4 v5, 0x0

    :goto_5
    if-eqz v5, :cond_f

    sget-object v6, Lgzd;->t:Lgzu;

    goto :goto_6

    :cond_f
    sget-object v6, Lgzd;->s:Lgzu;

    :goto_6
    iget-object v7, v0, Lfmb;->v:Lmqp;

    invoke-virtual {v7}, Lmqp;->g()Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-virtual {v7}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lglm;

    invoke-interface {v7}, Lglm;->c()Lnjm;

    move-result-object v7

    invoke-static {v7}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v7

    goto :goto_7

    :cond_10
    sget-object v7, Lmpx;->a:Lmpx;

    :goto_7
    if-eq v3, v4, :cond_11

    const/4 v3, 0x1

    goto :goto_8

    :cond_11
    const/4 v3, 0x0

    :goto_8
    invoke-interface {v1}, Lgxl;->k()Lhjc;

    move-result-object v4

    invoke-static {}, Lfcg;->a()Lfcf;

    move-result-object v8

    const/4 v9, 0x2

    iput v9, v8, Lfcf;->e:I

    invoke-interface {v1}, Lgxl;->s()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lkqi;->c:Lkqi;

    iget-object v11, v11, Lkqi;->j:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "."

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v8, Lfcf;->a:Ljava/lang/String;

    invoke-virtual {v8, v5}, Lfcf;->g(Z)V

    iget-object v5, v0, Lfmb;->k:Ljvs;

    invoke-interface {v5}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v8, v5}, Lfcf;->o(F)V

    iget-object v5, v0, Lfmb;->p:Lgzm;

    invoke-interface {v5, v6}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v8, v5}, Lfcf;->e(Ljava/lang/String;)V

    iget-object v5, v0, Lfmb;->j:Ljvs;

    invoke-interface {v5}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v8, v5}, Lfcf;->c(Z)V

    invoke-virtual {v8, v3}, Lfcf;->h(Z)V

    iget-object v3, v0, Lfmb;->i:Ljwb;

    invoke-interface {v3}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgyu;

    iget v3, v3, Lgyu;->g:I

    int-to-float v3, v3

    invoke-virtual {v8, v3}, Lfcf;->n(F)V

    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v8, Lfcf;->b:Ljava/lang/Boolean;

    invoke-virtual/range {p4 .. p4}, Lklw;->h()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v8, v3}, Lfcf;->b(Landroid/graphics/Rect;)V

    iget-object v3, v0, Lfmb;->p:Lgzm;

    sget-object v5, Lgzd;->u:Lgzr;

    invoke-interface {v3, v5}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v8, v3}, Lfcf;->j(Ljava/lang/Boolean;)V

    iget-object v3, v0, Lfmb;->m:Ljwb;

    invoke-interface {v3}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v8, v3}, Lfcf;->k(Ljava/lang/Boolean;)V

    iget-object v3, v0, Lfmb;->l:Ljwb;

    invoke-interface {v3}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v8, v3}, Lfcf;->l(Z)V

    iget-object v3, v0, Lfmb;->u:Lgla;

    invoke-virtual {v3}, Lgla;->e()Lnhr;

    move-result-object v3

    invoke-virtual {v8, v3}, Lfcf;->d(Lnhr;)V

    iput-object v7, v8, Lfcf;->c:Lmqp;

    sget-object v3, Lnik;->d:Lnik;

    invoke-virtual {v3}, Lnws;->O()Lnwn;

    move-result-object v3

    iget-object v5, v0, Lfmb;->y:Ljwb;

    invoke-interface {v5}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iget-object v6, v3, Lnwn;->b:Lnws;

    invoke-virtual {v6}, Lnws;->ac()Z

    move-result v6

    if-nez v6, :cond_12

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_12
    iget-object v6, v3, Lnwn;->b:Lnws;

    check-cast v6, Lnik;

    iget v7, v6, Lnik;->a:I

    const/4 v10, 0x1

    or-int/2addr v7, v10

    iput v7, v6, Lnik;->a:I

    iput-boolean v5, v6, Lnik;->b:Z

    iget-object v5, v0, Lfmb;->x:Lfue;

    invoke-virtual {v5}, Lfue;->c()Z

    move-result v5

    iget-object v6, v3, Lnwn;->b:Lnws;

    invoke-virtual {v6}, Lnws;->ac()Z

    move-result v6

    if-nez v6, :cond_13

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_13
    iget-object v6, v3, Lnwn;->b:Lnws;

    check-cast v6, Lnik;

    iget v7, v6, Lnik;->a:I

    or-int/2addr v7, v9

    iput v7, v6, Lnik;->a:I

    iput-boolean v5, v6, Lnik;->c:Z

    invoke-virtual {v3}, Lnwn;->i()Lnws;

    move-result-object v3

    check-cast v3, Lnik;

    invoke-virtual {v8, v3}, Lfcf;->f(Lnik;)V

    invoke-interface {v1}, Lgxl;->j()Lgyb;

    move-result-object v1

    sget-object v3, Lgyb;->b:Lgyb;

    if-ne v1, v3, :cond_14

    goto :goto_9

    :cond_14
    const/4 v10, 0x0

    :goto_9
    invoke-virtual {v8, v10}, Lfcf;->i(Z)V

    iget-object v1, v0, Lfmb;->C:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    invoke-virtual {v8, v1}, Lfcf;->m(Z)V

    iget-object v1, v0, Lfmb;->D:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhxx;

    invoke-virtual {v1}, Lhxx;->a()Lnio;

    move-result-object v1

    invoke-static {v1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v1

    iput-object v1, v8, Lfcf;->d:Lmqp;

    invoke-virtual {v8}, Lfcf;->a()Lfcg;

    move-result-object v1

    check-cast v4, Lhjd;

    iput-object v1, v4, Lhjd;->y:Lfcg;

    iget-object v1, v0, Lfmb;->B:Lkbc;

    invoke-interface {v1}, Lkbc;->f()V

    return-object v2
.end method

.method public final d(Lmbe;)V
    .locals 1

    iget-object v0, p0, Lfmb;->F:Lgxl;

    invoke-static {v0, p1}, Lflr;->a(Lgxl;Lmbe;)V

    return-void
.end method
