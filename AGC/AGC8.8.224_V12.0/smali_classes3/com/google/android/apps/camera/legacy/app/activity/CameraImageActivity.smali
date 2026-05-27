.class public Lcom/google/android/apps/camera/legacy/app/activity/CameraImageActivity;
.super Leqw;


# instance fields
.field private t:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Leqw;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/camera/legacy/app/activity/CameraImageActivity;->t:Z

    return-void
.end method


# virtual methods
.method public final isVoiceInteractionRoot()Z
    .locals 1

    invoke-super {p0}, Leqw;->isVoiceInteractionRoot()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/apps/camera/legacy/app/activity/CameraImageActivity;->t:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 44

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Leqw;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/legacy/app/activity/CameraImageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->f()Lerw;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Leqw;->o()Lva;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Leqw;->p()Lgxb;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Lesh;

    iget-object v1, v1, Lesh;->a:Lesh;

    invoke-static {v3}, Ldwh;->c(Lgxb;)Ldwh;

    move-result-object v17

    invoke-static {v3}, Lelo;->b(Lgxb;)Lelo;

    move-result-object v15

    invoke-static {v2}, Leqz;->b(Lva;)Leqz;

    move-result-object v14

    iget-object v4, v1, Lesh;->E:Loiw;

    iget-object v5, v1, Lesh;->u:Loiw;

    invoke-static {v4, v5, v14}, Lcdl;->a(Loiw;Loiw;Loiw;)Lcdl;

    move-result-object v4

    invoke-static {v4}, Logj;->b(Loiw;)Loiw;

    move-result-object v4

    iget-object v5, v1, Lesh;->F:Loiw;

    invoke-static {v4, v5}, Lcbk;->d(Loiw;Loiw;)Lcbk;

    move-result-object v4

    invoke-static {v4}, Logj;->b(Loiw;)Loiw;

    move-result-object v4

    iget-object v5, v1, Lesh;->fk:Loiw;

    invoke-static {v5, v4}, Lcbk;->c(Loiw;Loiw;)Lcbk;

    move-result-object v4

    invoke-static {v4}, Logj;->b(Loiw;)Loiw;

    move-result-object v18

    invoke-static {v2}, Lerb;->b(Lva;)Lerb;

    move-result-object v19

    invoke-static {v2}, Lerc;->b(Lva;)Lerc;

    move-result-object v13

    iget-object v4, v1, Lesh;->ej:Loiw;

    iget-object v5, v1, Lesh;->D:Loiw;

    invoke-static {v4, v5}, Lhas;->b(Loiw;Loiw;)Lhas;

    move-result-object v20

    iget-object v7, v1, Lesh;->fP:Loiw;

    iget-object v8, v1, Lesh;->fQ:Loiw;

    iget-object v9, v1, Lesh;->fR:Loiw;

    iget-object v10, v1, Lesh;->fS:Loiw;

    iget-object v11, v1, Lesh;->fT:Loiw;

    iget-object v12, v1, Lesh;->fU:Loiw;

    iget-object v6, v1, Lesh;->f:Loiw;

    iget-object v5, v1, Lesh;->r:Loiw;

    iget-object v4, v1, Lesh;->l:Loiw;

    iget-object v0, v1, Lesh;->i:Loiw;

    move-object/from16 v16, v4

    move-object v4, v13

    move-object/from16 v21, v5

    move-object/from16 v5, v17

    move-object/from16 v22, v6

    move-object/from16 v6, v20

    move-object/from16 p1, v2

    move-object v2, v13

    move-object/from16 v13, v22

    move-object/from16 v22, v14

    move-object/from16 v14, v21

    move-object/from16 v21, v3

    move-object v3, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v0

    invoke-static/range {v4 .. v16}, Leob;->a(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)Leob;

    move-result-object v0

    invoke-static {v0}, Logj;->b(Loiw;)Loiw;

    move-result-object v7

    iget-object v0, v1, Lesh;->fl:Loiw;

    invoke-static {v3, v0}, Lglw;->d(Loiw;Loiw;)Lglw;

    move-result-object v0

    invoke-static {v0}, Logj;->b(Loiw;)Loiw;

    move-result-object v8

    iget-object v9, v1, Lesh;->D:Loiw;

    move-object/from16 v4, v19

    move-object v6, v3

    invoke-static/range {v4 .. v9}, Ldpp;->e(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)Ldpp;

    move-result-object v0

    invoke-static {v0}, Logj;->b(Loiw;)Loiw;

    move-result-object v10

    iget-object v6, v1, Lesh;->l:Loiw;

    iget-object v8, v1, Lesh;->h:Loiw;

    iget-object v9, v1, Lesh;->f:Loiw;

    move-object/from16 v4, v17

    move-object v5, v3

    move-object/from16 v7, v18

    invoke-static/range {v4 .. v10}, Lgoq;->c(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)Lgoq;

    move-result-object v0

    invoke-static {v0}, Logj;->b(Loiw;)Loiw;

    move-result-object v0

    iget-object v4, v1, Lesh;->ab:Loiw;

    invoke-static {v4}, Lful;->b(Loiw;)Lful;

    move-result-object v5

    iget-object v4, v1, Lesh;->l:Loiw;

    invoke-static {v3, v2, v4}, Lhhs;->d(Loiw;Loiw;Loiw;)Lhhs;

    move-result-object v2

    invoke-static {v2}, Logj;->b(Loiw;)Loiw;

    move-result-object v2

    iget-object v6, v1, Lesh;->aa:Loiw;

    iget-object v7, v1, Lesh;->ab:Loiw;

    iget-object v9, v1, Lesh;->L:Loiw;

    move-object/from16 v4, v22

    move-object v8, v2

    invoke-static/range {v4 .. v9}, Lgbo;->b(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)Lgbo;

    move-result-object v4

    invoke-static {v4}, Logj;->b(Loiw;)Loiw;

    move-result-object v14

    invoke-static {v2}, Lhqq;->a(Loiw;)Lhqq;

    move-result-object v2

    invoke-static {v2}, Logj;->b(Loiw;)Loiw;

    move-result-object v2

    invoke-static/range {v21 .. v21}, Lelu;->b(Lgxb;)Lelu;

    move-result-object v4

    iget-object v5, v1, Lesh;->l:Loiw;

    invoke-static {v4, v5}, Lcbk;->b(Loiw;Loiw;)Lcbk;

    move-result-object v4

    invoke-static {v4}, Logj;->b(Loiw;)Loiw;

    move-result-object v10

    iget-object v7, v1, Lesh;->r:Loiw;

    iget-object v8, v1, Lesh;->o:Loiw;

    iget-object v9, v1, Lesh;->al:Loiw;

    move-object/from16 v4, v17

    move-object v5, v10

    move-object v6, v3

    invoke-static/range {v4 .. v9}, Lcco;->e(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)Lcco;

    move-result-object v4

    invoke-static {v4}, Logj;->b(Loiw;)Loiw;

    move-result-object v25

    invoke-static/range {p1 .. p1}, Leqy;->b(Lva;)Leqy;

    move-result-object v4

    iget-object v5, v1, Lesh;->l:Loiw;

    invoke-static {v5, v4, v3}, Lcpb;->a(Loiw;Loiw;Loiw;)Lcpb;

    move-result-object v4

    invoke-static {v4}, Logj;->b(Loiw;)Loiw;

    move-result-object v32

    iget-object v4, v1, Lesh;->l:Loiw;

    iget-object v5, v1, Lesh;->fj:Loiw;

    iget-object v6, v1, Lesh;->al:Loiw;

    iget-object v7, v1, Lesh;->o:Loiw;

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    move-object/from16 v26, v6

    move-object/from16 v27, v7

    move-object/from16 v28, v32

    invoke-static/range {v23 .. v28}, Lcco;->f(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)Lcco;

    move-result-object v4

    invoke-static {v4}, Logj;->b(Loiw;)Loiw;

    move-result-object v35

    iget-object v7, v1, Lesh;->r:Loiw;

    iget-object v8, v1, Lesh;->o:Loiw;

    iget-object v9, v1, Lesh;->al:Loiw;

    move-object/from16 v4, v17

    move-object v5, v10

    move-object v6, v3

    invoke-static/range {v4 .. v9}, Lcco;->d(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)Lcco;

    move-result-object v4

    invoke-static {v4}, Logj;->b(Loiw;)Loiw;

    move-result-object v26

    iget-object v4, v1, Lesh;->l:Loiw;

    iget-object v5, v1, Lesh;->fj:Loiw;

    iget-object v6, v1, Lesh;->al:Loiw;

    iget-object v7, v1, Lesh;->r:Loiw;

    iget-object v8, v1, Lesh;->o:Loiw;

    move-object/from16 v27, v4

    move-object/from16 v28, v5

    move-object/from16 v29, v6

    move-object/from16 v30, v7

    move-object/from16 v31, v8

    invoke-static/range {v26 .. v32}, Lcqi;->a(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)Lcqi;

    move-result-object v4

    invoke-static {v4}, Logj;->b(Loiw;)Loiw;

    move-result-object v36

    invoke-static/range {v21 .. v21}, Lels;->b(Lgxb;)Lels;

    move-result-object v40

    invoke-static/range {v40 .. v40}, Lcko;->b(Loiw;)Lcko;

    move-result-object v4

    invoke-static {v4}, Logj;->b(Loiw;)Loiw;

    move-result-object v15

    iget-object v4, v1, Lesh;->av:Loiw;

    iget-object v5, v1, Lesh;->l:Loiw;

    iget-object v6, v1, Lesh;->fj:Loiw;

    iget-object v7, v1, Lesh;->al:Loiw;

    iget-object v8, v1, Lesh;->ba:Loiw;

    iget-object v9, v1, Lesh;->f:Loiw;

    iget-object v10, v1, Lesh;->bM:Loiw;

    move-object/from16 v33, v4

    move-object/from16 v34, v5

    move-object/from16 v37, v6

    move-object/from16 v38, v7

    move-object/from16 v39, v8

    move-object/from16 v41, v9

    move-object/from16 v42, v10

    move-object/from16 v43, v15

    invoke-static/range {v33 .. v43}, Ldur;->a(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)Ldur;

    move-result-object v4

    invoke-static {v4}, Logj;->b(Loiw;)Loiw;

    move-result-object v6

    invoke-static/range {v21 .. v21}, Lelt;->b(Lgxb;)Lelt;

    move-result-object v16

    iget-object v7, v1, Lesh;->f:Loiw;

    iget-object v8, v1, Lesh;->D:Loiw;

    iget-object v10, v1, Lesh;->bM:Loiw;

    iget-object v12, v1, Lesh;->ab:Loiw;

    move-object v4, v3

    move-object/from16 v5, v22

    move-object v9, v2

    move-object v11, v14

    move-object/from16 v13, v16

    invoke-static/range {v4 .. v13}, Lcld;->e(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)Lcld;

    move-result-object v4

    invoke-static {v4}, Logj;->b(Loiw;)Loiw;

    move-result-object v13

    iget-object v5, v1, Lesh;->t:Loiw;

    iget-object v6, v1, Lesh;->av:Loiw;

    iget-object v7, v1, Lesh;->cJ:Loiw;

    iget-object v8, v1, Lesh;->D:Loiw;

    iget-object v9, v1, Lesh;->fA:Loiw;

    iget-object v11, v1, Lesh;->f:Loiw;

    move-object v4, v14

    move-object/from16 v10, v22

    move-object v12, v2

    move-object/from16 v14, v16

    invoke-static/range {v4 .. v14}, Lhnz;->a(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)Lhnz;

    move-result-object v2

    invoke-static {v2}, Logj;->b(Loiw;)Loiw;

    move-result-object v7

    iget-object v8, v1, Lesh;->D:Loiw;

    iget-object v2, v1, Lesh;->fY:Loiw;

    iget-object v4, v1, Lesh;->f:Loiw;

    invoke-static {v8, v2, v4}, Lcwf;->a(Loiw;Loiw;Loiw;)Lcwf;

    move-result-object v9

    iget-object v6, v1, Lesh;->av:Loiw;

    iget-object v10, v1, Lesh;->fI:Loiw;

    move-object v4, v3

    move-object/from16 v5, v19

    move-object/from16 v11, v20

    move-object v12, v15

    invoke-static/range {v4 .. v12}, Licr;->a(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)Licr;

    move-result-object v2

    invoke-virtual {v1}, Lesh;->B()Z

    move-result v4

    invoke-virtual {v1}, Lesh;->z()Z

    move-result v5

    invoke-virtual {v1}, Lesh;->A()Z

    move-result v6

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhzh;

    iget-object v3, v1, Lesh;->f:Loiw;

    invoke-interface {v3}, Loiw;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldhi;

    invoke-static {v3}, Lhqq;->b(Ldhi;)Ljew;

    move-result-object v12

    move-object/from16 v3, v21

    iget-object v3, v3, Lgxb;->a:Ljava/lang/Object;

    iget-object v7, v1, Lesh;->r:Loiw;

    invoke-interface {v7}, Loiw;->get()Ljava/lang/Object;

    move-result-object v7

    move-object v13, v7

    check-cast v13, Lfbz;

    iget-object v7, v1, Lesh;->fm:Loiw;

    invoke-interface {v7}, Loiw;->get()Ljava/lang/Object;

    move-result-object v7

    move-object v14, v7

    check-cast v14, Lcvr;

    iget-object v7, v1, Lesh;->cJ:Loiw;

    invoke-interface {v7}, Loiw;->get()Ljava/lang/Object;

    move-result-object v7

    move-object v15, v7

    check-cast v15, Lkha;

    iget-object v1, v1, Lesh;->D:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgzn;

    new-instance v16, Lemm;

    move-object v11, v3

    check-cast v11, Landroid/app/Activity;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v17, 0x0

    move-object/from16 v3, v16

    move-object v7, v12

    move-object v8, v11

    move-object/from16 p1, v1

    move-object v1, v11

    move-object/from16 v11, v17

    invoke-direct/range {v3 .. v11}, Lemm;-><init>(ZZZLjew;Landroid/app/Activity;[B[B[B)V

    invoke-static/range {v16 .. v16}, Llkj;->D(Lmrl;)Lmrl;

    move-result-object v3

    invoke-static {}, Lduq;->a()Ldin;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/legacy/app/activity/CameraImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    sget-object v6, Ldin;->a:Ldin;

    invoke-virtual {v4, v6}, Ldin;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_0

    const-string v4, "gca_eng_fake_viroot"

    invoke-virtual {v5, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    :goto_0
    move-object/from16 v4, p0

    iput-boolean v7, v4, Lcom/google/android/apps/camera/legacy/app/activity/CameraImageActivity;->t:Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/legacy/app/activity/CameraImageActivity;->isVoiceInteractionRoot()Z

    move-result v7

    if-eqz v7, :cond_1

    const-class v7, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraVoiceActivity;

    invoke-virtual {v5, v4, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_1

    :cond_1
    const-class v7, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;

    invoke-virtual {v5, v4, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    :goto_1
    const/high16 v7, 0x10000000

    invoke-virtual {v5, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/legacy/app/activity/CameraImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/legacy/app/activity/CameraImageActivity;->isVoiceInteractionRoot()Z

    invoke-static {v5, v1, v3, v15}, Lemn;->b(Landroid/content/Intent;Landroid/app/Activity;Lmrl;Lkha;)Lmqp;

    move-result-object v22

    move-object/from16 v23, v5

    move-object/from16 v24, v0

    move-object/from16 v25, v2

    move-object/from16 v26, v12

    move-object/from16 v27, v1

    move-object/from16 v28, v13

    move-object/from16 v29, v14

    move-object/from16 v30, v3

    move-object/from16 v31, p1

    move-object/from16 v32, v15

    invoke-static/range {v22 .. v32}, Lemn;->c(Lmqp;Landroid/content/Intent;Lhzh;Loiw;Ljew;Landroid/app/Activity;Lfbz;Lcvr;Lmrl;Lgzn;Lkha;)Lmqp;

    move-result-object v3

    invoke-virtual {v3}, Lmqp;->g()Z

    move-result v7

    xor-int/2addr v6, v7

    move-object/from16 v7, p1

    invoke-static {v5, v6, v1, v7}, Lemn;->a(Landroid/content/Intent;ZLandroid/app/Activity;Lgzn;)V

    invoke-virtual {v1, v5}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    invoke-virtual {v3}, Lmqp;->g()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v22, v3

    check-cast v22, Lika;

    move-object/from16 v23, v0

    move-object/from16 v24, v2

    move-object/from16 v25, v12

    move-object/from16 v26, v1

    move-object/from16 v27, v13

    move-object/from16 v28, v14

    invoke-static/range {v22 .. v28}, Lemn;->d(Lika;Lhzh;Loiw;Ljew;Landroid/app/Activity;Lfbz;Lcvr;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    invoke-virtual {v1, v5}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lfbc;->finish()V

    return-void
.end method
