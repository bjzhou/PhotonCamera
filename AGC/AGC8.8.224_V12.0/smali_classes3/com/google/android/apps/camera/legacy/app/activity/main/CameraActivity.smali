.class public Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;
.super Leqw;

# interfaces
.implements Lemk;
.implements Lcdd;


# static fields
.field private static final sCameraActivity:Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;

.field private static final z:Lnak;


# instance fields
.field private A:Lerd;

.field private B:Lerf;

.field private C:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

.field private D:Z

.field public t:Ldhi;

.field public u:Ldmu;

.field public v:Lhjr;

.field public w:Lgre;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    sget-object v0, Lllo;->a:Lllo;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {}, Llho;->k()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-wide v3, v0, Lllo;->c:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    cmp-long v7, v1, v3

    if-gtz v7, :cond_1

    iget-object v3, v0, Lllo;->m:Lllh;

    iget-object v3, v3, Lllh;->b:Ljava/lang/Long;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lllo;->m:Lllh;

    iget-object v3, v3, Lllh;->b:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v7, v1, v3

    if-gtz v7, :cond_1

    :cond_0
    iget-wide v3, v0, Lllo;->e:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_1

    iput-wide v1, v0, Lllo;->e:J

    iget-object v0, v0, Lllo;->l:Llln;

    const/4 v1, 0x1

    iput-boolean v1, v0, Llln;->f:Z

    :cond_1
    const-string v0, "com/google/android/apps/camera/legacy/app/activity/main/CameraActivity"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->z:Lnak;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Leqw;-><init>()V

    sput-object p0, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->sCameraActivity:Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;

    return-void
.end method

.method public static ReInit()V
    .locals 1

    sget-object v0, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->sCameraActivity:Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;

    invoke-super {v0}, Lfbc;->onPause()V

    invoke-super {v0}, Lfbc;->onStop()V

    invoke-virtual {v0}, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->onStart()V

    invoke-virtual {v0}, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->onResume()V

    return-void
.end method

.method private refreshBrightness(F)V
    .locals 3

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "max_brigtness"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p1, v1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/16 v0, 0x80

    invoke-virtual {v2, v0}, Landroid/view/Window;->addFlags(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Ldhi;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->t:Ldhi;

    return-object v0
.end method

.method public final b(Ljava/lang/Class;)Leml;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->A:Lerd;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Leml;

    return-object p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 22

    move-object/from16 v0, p0

    invoke-static {v0}, Lcom/agc/Debug;->showDebugView(Landroid/app/Activity;)V

    const v2, 0x64

    int-to-float v3, v2

    invoke-direct {v0, v3}, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->refreshBrightness(F)V

    invoke-virtual/range {p0 .. p0}, Leqw;->n()Lkbc;

    move-result-object v1

    const-string v2, "CameraActivity#onCreate"

    invoke-interface {v1, v2}, Lkbc;->e(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->D:Z

    invoke-super/range {p0 .. p1}, Leqw;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;

    invoke-virtual {v4}, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->f()Lerw;

    move-result-object v4

    check-cast v4, Lesh;

    iget-object v5, v4, Lesh;->h:Loiw;

    invoke-interface {v5}, Loiw;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkbc;

    iput-object v5, v0, Leqw;->q:Lkbc;

    iget-object v5, v4, Lesh;->z:Loiw;

    invoke-interface {v5}, Loiw;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lchl;

    iput-object v5, v0, Leqw;->s:Lchl;

    iget-object v5, v4, Lesh;->hV:Lbkb;

    invoke-static {v5}, Lfaf;->b(Lbkb;)Lezy;

    move-result-object v5

    iput-object v5, v0, Leqw;->r:Lezy;

    iget-object v5, v4, Lesh;->C:Loiw;

    invoke-interface {v5}, Loiw;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lhjr;

    iput-object v5, v0, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->v:Lhjr;

    iget-object v5, v4, Lesh;->f:Loiw;

    invoke-interface {v5}, Loiw;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ldhi;

    iput-object v5, v0, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->t:Ldhi;

    iget-object v5, v4, Lesh;->D:Loiw;

    invoke-interface {v5}, Loiw;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgzm;

    iget-object v5, v4, Lesh;->F:Loiw;

    invoke-interface {v5}, Loiw;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgre;

    iput-object v5, v0, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->w:Lgre;

    iget-object v5, v4, Lesh;->I:Loiw;

    invoke-interface {v5}, Loiw;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkcs;

    invoke-static {}, Lgxb;->q()Landroid/os/Handler;

    move-result-object v6

    new-instance v7, Ldmu;

    invoke-direct {v7, v5, v6}, Ldmu;-><init>(Lkcs;Landroid/os/Handler;)V

    iput-object v7, v0, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->u:Ldmu;

    iget-object v5, v0, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->v:Lhjr;

    iget-object v6, v5, Lhjr;->a:Lhjm;

    iget-object v7, v5, Lhjr;->d:Lcom/google/android/apps/camera/stats/Instrumentation;

    iget-object v11, v5, Lhjr;->b:Lkrf;

    iget-object v13, v5, Lhjr;->c:Lkbc;

    new-instance v12, Lhjo;

    iget v5, v6, Lhjm;->a:I

    add-int/lit8 v8, v5, 0x1

    iput v8, v6, Lhjm;->a:I

    iget-boolean v6, v6, Lhjm;->b:Z

    invoke-direct {v12, v5, v6}, Lhjo;-><init>(IZ)V

    invoke-virtual {v12}, Lhjo;->a()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lhkn;->e()Lhkn;

    move-result-object v5

    iget-wide v5, v5, Lhkh;->m:J

    move-wide v9, v5

    goto :goto_0

    :cond_0
    move-wide v9, v1

    :goto_0
    new-instance v5, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

    move-object v8, v5

    invoke-direct/range {v8 .. v13}, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;-><init>(JLkrh;Lhjo;Lkbc;)V

    invoke-virtual {v7, v5}, Lcom/google/android/apps/camera/stats/Instrumentation;->f(Lcom/google/android/apps/camera/stats/timing/TimingSession;)V

    iput-object v5, v0, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->C:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

    invoke-virtual {v5, v1, v2}, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->recordActivityOnCreateStart(J)V

    iget-object v1, v0, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->u:Ldmu;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljuh;->a()V

    iget-object v5, v1, Ldmu;->d:Lkad;

    if-nez v5, :cond_1

    iget-object v5, v1, Ldmu;->a:Lkcs;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "CameraActivity onCreate: "

    invoke-virtual {v6, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lkcs;->b(Ljava/lang/String;)Lkad;

    move-result-object v2

    iput-object v2, v1, Ldmu;->d:Lkad;

    :cond_1
    iget-object v2, v1, Ldmu;->b:Landroid/os/Handler;

    new-instance v5, Ldgg;

    const/16 v6, 0xb

    invoke-direct {v5, v1, v6}, Ldgg;-><init>(Ldmu;I)V

    const-wide/16 v6, 0xbb8

    invoke-virtual {v2, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v1, v0, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->t:Ldhi;

    sget-object v2, Ldho;->a:Ldhk;

    invoke-interface {v1}, Ldhi;->c()V

    iget-object v1, v0, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->C:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

    invoke-virtual/range {p0 .. p0}, Leqw;->n()Lkbc;

    move-result-object v2

    const-string v5, "setupDefaultActivity#init"

    invoke-interface {v2, v5}, Lkbc;->e(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Leqw;->o()Lva;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Leqw;->p()Lgxb;

    move-result-object v9

    new-instance v10, Ljew;

    invoke-direct {v10, v1}, Ljew;-><init>(Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;)V

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lerz;

    iget-object v7, v4, Lesh;->a:Lesh;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v6, v1

    invoke-direct/range {v6 .. v15}, Lerz;-><init>(Lesh;Lva;Lgxb;Ljew;[B[B[B[B[B)V

    iput-object v1, v0, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->A:Lerd;

    invoke-virtual/range {p0 .. p0}, Leqw;->n()Lkbc;

    move-result-object v1

    const-string v2, "activityInitializer#get"

    invoke-interface {v1, v2}, Lkbc;->g(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->A:Lerd;

    check-cast v1, Lerz;

    iget-object v1, v1, Lerz;->ai:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lere;

    invoke-virtual/range {p0 .. p0}, Leqw;->n()Lkbc;

    move-result-object v2

    const-string v4, "activityInitializer#start"

    invoke-interface {v2, v4}, Lkbc;->g(Ljava/lang/String;)V

    invoke-interface {v1}, Lcik;->bl()Lnou;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->isVoiceInteractionRoot()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object v4, v0, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->A:Lerd;

    check-cast v4, Lerz;

    iget-object v5, v4, Lerz;->a:Lesh;

    invoke-virtual {v5}, Lesh;->B()Z

    move-result v7

    iget-object v5, v4, Lerz;->a:Lesh;

    invoke-virtual {v5}, Lesh;->z()Z

    move-result v8

    iget-object v5, v4, Lerz;->a:Lesh;

    invoke-virtual {v5}, Lesh;->A()Z

    move-result v9

    iget-object v5, v4, Lerz;->af:Loiw;

    invoke-interface {v5}, Loiw;->get()Ljava/lang/Object;

    move-result-object v5

    move-object v15, v5

    check-cast v15, Lhzh;

    iget-object v5, v4, Lerz;->ak:Loiw;

    iget-object v6, v4, Lerz;->a:Lesh;

    iget-object v6, v6, Lesh;->f:Loiw;

    invoke-interface {v6}, Loiw;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ldhi;

    invoke-static {v6}, Lhqq;->b(Ldhi;)Ljew;

    move-result-object v16

    iget-object v6, v4, Lerz;->bG:Lgxb;

    iget-object v6, v6, Lgxb;->a:Ljava/lang/Object;

    iget-object v10, v4, Lerz;->a:Lesh;

    iget-object v10, v10, Lesh;->r:Loiw;

    invoke-interface {v10}, Loiw;->get()Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v17, v10

    check-cast v17, Lfbz;

    iget-object v10, v4, Lerz;->a:Lesh;

    iget-object v10, v10, Lesh;->fm:Loiw;

    invoke-interface {v10}, Loiw;->get()Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v18, v10

    check-cast v18, Lcvr;

    iget-object v10, v4, Lerz;->a:Lesh;

    iget-object v10, v10, Lesh;->cJ:Loiw;

    invoke-interface {v10}, Loiw;->get()Ljava/lang/Object;

    move-result-object v10

    move-object v14, v10

    check-cast v14, Lkha;

    iget-object v4, v4, Lerz;->a:Lesh;

    iget-object v4, v4, Lesh;->D:Loiw;

    invoke-interface {v4}, Loiw;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgzn;

    new-instance v19, Lemm;

    move-object v13, v6

    check-cast v13, Landroid/app/Activity;

    const/4 v12, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v6, v19

    move-object/from16 v10, v16

    move-object v11, v13

    move-object v3, v13

    move-object/from16 v13, v20

    move-object v2, v14

    move-object/from16 v14, v21

    invoke-direct/range {v6 .. v14}, Lemm;-><init>(ZZZLjew;Landroid/app/Activity;[B[B[B)V

    invoke-static/range {v19 .. v19}, Llkj;->D(Lmrl;)Lmrl;

    move-result-object v12

    invoke-static {v1, v3, v12, v2}, Lemn;->b(Landroid/content/Intent;Landroid/app/Activity;Lmrl;Lkha;)Lmqp;

    move-result-object v6

    move-object v14, v4

    move-object v4, v6

    move-object/from16 v19, v5

    move-object v5, v1

    move-object v6, v15

    move-object/from16 v7, v19

    move-object/from16 v8, v16

    move-object v9, v3

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    move-object v13, v14

    move-object v0, v14

    move-object v14, v2

    invoke-static/range {v4 .. v14}, Lemn;->c(Lmqp;Landroid/content/Intent;Lhzh;Loiw;Ljew;Landroid/app/Activity;Lfbz;Lcvr;Lmrl;Lgzn;Lkha;)Lmqp;

    move-result-object v2

    invoke-virtual {v2}, Lmqp;->g()Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    invoke-static {v1, v4, v3, v0}, Lemn;->a(Landroid/content/Intent;ZLandroid/app/Activity;Lgzn;)V

    invoke-virtual {v3, v1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    invoke-virtual {v2}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lika;

    move-object v11, v15

    move-object/from16 v12, v19

    move-object/from16 v13, v16

    move-object v14, v3

    move-object/from16 v15, v17

    move-object/from16 v16, v18

    invoke-static/range {v10 .. v16}, Lemn;->d(Lika;Lhzh;Loiw;Ljew;Landroid/app/Activity;Lfbz;Lcvr;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->z:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "Warning: have Launched outside activity and coming soon finish activity."

    const/16 v2, 0x744

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->D:Z

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    :cond_4
    :goto_1
    invoke-virtual/range {p0 .. p0}, Leqw;->n()Lkbc;

    move-result-object v1

    const-string v2, "#cameraUiModule#inflate"

    invoke-interface {v1, v2}, Lkbc;->g(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->A:Lerd;

    check-cast v1, Lerz;

    iget-object v2, v1, Lerz;->bG:Lgxb;

    invoke-virtual {v2}, Lgxb;->r()Lei;

    move-result-object v2

    new-instance v3, Linc;

    iget-object v1, v1, Lerz;->bG:Lgxb;

    iget-object v4, v1, Lgxb;->a:Ljava/lang/Object;

    check-cast v4, Landroid/app/Activity;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Linc;-><init>(Landroid/app/Activity;I)V

    invoke-static {v1}, Lelp;->b(Lgxb;)Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v2}, Lei;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-static {}, Ljuh;->a()V

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    const/4 v5, 0x3

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    const/4 v5, 0x1

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-virtual {v1, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/view/Window;->requestFeature(I)Z

    const/high16 v4, -0x80000000

    invoke-virtual {v1, v4}, Landroid/view/Window;->addFlags(I)V

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v6, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    const/16 v7, 0x705

    invoke-virtual {v5, v7}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {v1, v6}, Landroid/view/Window;->setNavigationBarContrastEnforced(Z)V

    iget-object v1, v3, Linc;->a:Ljava/lang/Object;

    check-cast v1, Landroid/app/Activity;

    const v5, 0x7f0e0020

    invoke-virtual {v1, v5}, Landroid/app/Activity;->setContentView(I)V

    new-instance v1, Lihg;

    invoke-static {v3}, Ljew;->p(Lina;)Ljew;

    move-result-object v3

    invoke-direct {v1, v3, v4, v4}, Lihg;-><init>(Ljew;[B[B)V

    new-instance v3, Lihi;

    invoke-direct {v3, v2, v1}, Lihi;-><init>(Landroid/view/LayoutInflater;Lihg;)V

    invoke-virtual/range {p0 .. p0}, Leqw;->n()Lkbc;

    move-result-object v1

    const-string v2, "activityUiInitializer#get"

    invoke-interface {v1, v2}, Lkbc;->g(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->A:Lerd;

    new-instance v2, Lese;

    check-cast v1, Lerz;

    iget-object v4, v1, Lerz;->a:Lesh;

    iget-object v1, v1, Lerz;->b:Lerz;

    invoke-direct {v2, v4, v1, v3}, Lese;-><init>(Lesh;Lerz;Lihi;)V

    iput-object v2, v0, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->B:Lerf;

    move-object v1, v2

    check-cast v1, Lese;

    iget-object v1, v2, Lese;->Q:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lerh;

    invoke-virtual/range {p0 .. p0}, Leqw;->n()Lkbc;

    move-result-object v2

    const-string v3, "#activityUiInitializer#start"

    invoke-interface {v2, v3}, Lkbc;->g(Ljava/lang/String;)V

    invoke-interface {v1}, Lcik;->bl()Lnou;

    invoke-virtual/range {p0 .. p0}, Leqw;->n()Lkbc;

    move-result-object v1

    invoke-interface {v1}, Lkbc;->f()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->q()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->isVoiceInteractionRoot()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcdg;->f(Landroid/content/Intent;)V

    :cond_5
    :try_start_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->setRecentsScreenshotEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    iget-object v1, v0, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->C:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

    sget-object v2, Lhju;->b:Lhju;

    sget-object v3, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->b:Lhkg;

    invoke-virtual {v1, v2, v3}, Lhkh;->i(Ljava/lang/Enum;Lhkg;)V

    invoke-virtual/range {p0 .. p0}, Leqw;->n()Lkbc;

    move-result-object v1

    invoke-interface {v1}, Lkbc;->f()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/Globals;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected final onDestroy()V
    .locals 1

    invoke-static {p0}, Lcom/agc/Debug;->destoryDebugView(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->u:Ldmu;

    invoke-static {}, Ljuh;->a()V

    invoke-virtual {v0}, Ldmu;->a()V

    invoke-super {p0}, Leqw;->onDestroy()V

    return-void
.end method

.method protected final onResume()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->C:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

    sget-object v1, Lhju;->h:Lhju;

    sget-object v2, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->a:Lhkg;

    invoke-virtual {v0, v1, v2}, Lhkh;->i(Ljava/lang/Enum;Lhkg;)V

    invoke-super {p0}, Leqw;->onResume()V

    iget-object v0, p0, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->C:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

    sget-object v1, Lhju;->i:Lhju;

    sget-object v2, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->b:Lhkg;

    invoke-virtual {v0, v1, v2}, Lhkh;->i(Ljava/lang/Enum;Lhkg;)V

    iget-object v0, p0, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->t:Ldhi;

    invoke-static {v0}, Lfcr;->c(Ldhi;)V

    iget-boolean v0, p0, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->D:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lfbc;->finish()V

    :cond_0
    return-void
.end method

.method protected final onStart()V
    .locals 8

    iget-object v0, p0, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->C:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

    iget-object v1, v0, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->l:Lkrh;

    invoke-interface {v1}, Lkrh;->a()J

    move-result-wide v1

    iget-object v3, v0, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->d:Lhjo;

    iget v4, v3, Lhjo;->a:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, v3, Lhjo;->a:I

    invoke-virtual {v3}, Lhjo;->b()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    invoke-virtual {v0}, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->a()V

    iget-object v3, v0, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->e:Lkbc;

    const-string v4, "FirstPreviewFrame"

    invoke-interface {v3, v4}, Lkbc;->a(Ljava/lang/String;)Lkbf;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->f:Lkbf;

    iget-object v3, v0, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->e:Lkbc;

    const-string v4, "FirstFrameReceived"

    invoke-interface {v3, v4}, Lkbc;->a(Ljava/lang/String;)Lkbf;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->g:Lkbf;

    iget-object v3, v0, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->e:Lkbc;

    const-string v4, "ShutterButtonEnabled"

    invoke-interface {v3, v4}, Lkbc;->a(Ljava/lang/String;)Lkbf;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->h:Lkbf;

    invoke-static {}, Lhju;->values()[Lhju;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    iget-boolean v7, v6, Lhju;->s:Z

    if-eqz v7, :cond_0

    sget-object v7, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->k:Lhkg;

    invoke-virtual {v0, v6, v1, v2, v7}, Lhkh;->j(Ljava/lang/Enum;JLhkg;)V

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    if-eq v3, v5, :cond_3

    :cond_2
    iget-object v3, v0, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->o:Ljfc;

    :cond_3
    sget-object v3, Lhju;->g:Lhju;

    sget-object v4, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->a:Lhkg;

    invoke-virtual {v0, v3, v1, v2, v4}, Lhkh;->j(Ljava/lang/Enum;JLhkg;)V

    iget-object v0, p0, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->w:Lgre;

    invoke-virtual {v0}, Lgre;->c()Lkad;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->u:Ldmu;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljuh;->a()V

    iget-object v3, v1, Ldmu;->c:Lkad;

    if-nez v3, :cond_4

    iget-object v3, v1, Ldmu;->a:Lkcs;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "CameraActivity onStart: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lkcs;->b(Ljava/lang/String;)Lkad;

    move-result-object v2

    iput-object v2, v1, Ldmu;->c:Lkad;

    :cond_4
    invoke-virtual {v1}, Ldmu;->a()V

    invoke-super {p0}, Leqw;->onStart()V

    invoke-interface {v0}, Lkad;->close()V

    return-void
.end method

.method protected final onStop()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->u:Ldmu;

    invoke-static {}, Ljuh;->a()V

    iget-object v1, v0, Ldmu;->c:Lkad;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lkad;->close()V

    const/4 v1, 0x0

    iput-object v1, v0, Ldmu;->c:Lkad;

    :cond_0
    invoke-virtual {v0}, Ldmu;->a()V

    invoke-super {p0}, Leqw;->onStop()V

    return-void
.end method

.method protected q()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
