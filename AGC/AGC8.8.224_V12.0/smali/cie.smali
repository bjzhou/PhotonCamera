.class public final Lcie;
.super Ljava/lang/Object;

# interfaces
.implements Lcha;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final A:Ljava/util/function/Consumer;

.field public B:Z

.field public final C:Ldyk;

.field private final D:Z

.field private final E:Lhwu;

.field private final F:Lcom/google/android/apps/camera/bottombar/BottomBarController;

.field private final G:Leoa;

.field private final H:Lgvd;

.field private final I:Ldhi;

.field private final J:Lcom/google/android/apps/camera/ui/views/CaptureAnimationOverlay;

.field private final K:Lgeh;

.field private final L:Lidr;

.field private final M:Lidr;

.field private final N:Lidr;

.field private final O:Lhtz;

.field private final P:Loiw;

.field private final Q:Limc;

.field private R:Lnph;

.field private final S:Lcdi;

.field private T:I

.field public final b:Lcgx;

.field public final c:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final d:Libj;

.field public final e:Lcom/google/android/apps/camera/ui/views/ViewfinderCover;

.field public final f:Lcom/google/android/apps/camera/ui/views/MainActivityLayout;

.field public final g:Landroid/widget/FrameLayout;

.field public final h:Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;

.field public final i:Liff;

.field public final j:Ldms;

.field public final k:Lhyd;

.field public final l:Landroid/hardware/display/DisplayManager$DisplayListener;

.field public m:I

.field public final n:Lcom/google/android/apps/camera/ui/wirers/PreviewOverlay;

.field public o:Lidu;

.field public final p:Landroid/view/View$OnLayoutChangeListener;

.field public final q:Lhsl;

.field public r:Lidr;

.field public final s:Ligx;

.field public t:Landroid/graphics/SurfaceTexture;

.field public u:I

.field public v:I

.field public final w:Landroid/hardware/display/DisplayManager;

.field public final x:Landroid/view/WindowManager;

.field public final y:Lfbz;

.field public final z:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/app/ui/CameraAppUiImpl"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lcie;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Lcgx;Lcom/google/android/apps/camera/ui/views/MainActivityLayout;Lihg;Ldja;Lhyy;Ligx;Lcdi;Landroid/hardware/display/DisplayManager;Landroid/view/WindowManager;Lhsl;Lhtz;Lchh;Lcom/google/android/apps/camera/bottombar/BottomBarController;Liff;Leoa;Lfbz;Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;Loiw;Libj;Lhwu;Lgeh;Ljew;Ljava/util/function/Consumer;Ldms;Ldhi;Lgvd;Limc;Z[B[B[B[B)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p12

    move-object/from16 v10, p21

    move-object/from16 v11, p24

    move-object/from16 v12, p25

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v13, Lcib;

    invoke-direct {v13}, Lcib;-><init>()V

    iput-object v13, v0, Lcie;->p:Landroid/view/View$OnLayoutChangeListener;

    const/4 v13, 0x1

    iput v13, v0, Lcie;->T:I

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v14

    iput-object v14, v0, Lcie;->R:Lnph;

    iput-object v1, v0, Lcie;->b:Lcgx;

    iput-object v2, v0, Lcie;->f:Lcom/google/android/apps/camera/ui/views/MainActivityLayout;

    move/from16 v14, p28

    iput-boolean v14, v0, Lcie;->D:Z

    iput-object v5, v0, Lcie;->s:Ligx;

    move-object/from16 v14, p18

    iput-object v14, v0, Lcie;->P:Loiw;

    move-object/from16 v14, p7

    iput-object v14, v0, Lcie;->S:Lcdi;

    iput-object v6, v0, Lcie;->w:Landroid/hardware/display/DisplayManager;

    iput-object v7, v0, Lcie;->x:Landroid/view/WindowManager;

    move-object/from16 v15, p11

    iput-object v15, v0, Lcie;->O:Lhtz;

    iput-object v8, v0, Lcie;->q:Lhsl;

    iget-object v15, v4, Ldja;->b:Ljava/lang/Object;

    check-cast v15, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v15, v0, Lcie;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object/from16 v13, p13

    iput-object v13, v0, Lcie;->F:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    move-object/from16 v13, p14

    iput-object v13, v0, Lcie;->i:Liff;

    move-object/from16 v13, p15

    iput-object v13, v0, Lcie;->G:Leoa;

    move-object/from16 v13, p19

    iput-object v13, v0, Lcie;->d:Libj;

    move-object/from16 v13, p20

    iput-object v13, v0, Lcie;->E:Lhwu;

    iput-object v10, v0, Lcie;->K:Lgeh;

    iput-object v11, v0, Lcie;->j:Ldms;

    move-object/from16 v13, p26

    iput-object v13, v0, Lcie;->H:Lgvd;

    iput-object v12, v0, Lcie;->I:Ldhi;

    move-object/from16 v13, p27

    iput-object v13, v0, Lcie;->Q:Limc;

    iget-object v4, v4, Ldja;->a:Ljava/lang/Object;

    check-cast v4, Ljew;

    const v13, 0x7f0b03f2

    invoke-virtual {v4, v13}, Ljew;->f(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;

    iput-object v4, v0, Lcie;->e:Lcom/google/android/apps/camera/ui/views/ViewfinderCover;

    move-object/from16 v4, p16

    iput-object v4, v0, Lcie;->y:Lfbz;

    move-object/from16 v4, p17

    iput-object v4, v0, Lcie;->z:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

    move-object/from16 v4, p23

    iput-object v4, v0, Lcie;->A:Ljava/util/function/Consumer;

    new-instance v4, Lchz;

    invoke-direct {v4, v0}, Lchz;-><init>(Lcie;)V

    invoke-interface {v10, v4}, Lgeh;->p(Lgef;)V

    new-instance v4, Lcia;

    invoke-direct {v4, v1}, Lcia;-><init>(Lcgx;)V

    invoke-interface {v10, v4}, Lgeh;->s(Lgeg;)V

    new-instance v1, Lhu;

    const/4 v4, 0x5

    invoke-direct {v1, v0, v4}, Lhu;-><init>(Lcie;I)V

    move-object/from16 v4, p22

    iget-object v4, v4, Ljew;->a:Ljava/lang/Object;

    check-cast v4, Liei;

    iget-object v4, v4, Liei;->c:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual/range {p7 .. p7}, Lcdi;->i()Ljuf;

    move-result-object v1

    new-instance v4, Lcic;

    invoke-direct {v4, v9}, Lcic;-><init>(Lchh;)V

    invoke-interface {v8, v4}, Lhsl;->a(Lhsk;)Lkad;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljuf;->d(Lkad;)V

    invoke-virtual/range {p7 .. p7}, Lcdi;->i()Ljuf;

    move-result-object v1

    new-instance v4, Lerq;

    const/4 v8, 0x1

    invoke-direct {v4, v0, v8}, Lerq;-><init>(Lcie;I)V

    invoke-interface {v9, v4}, Lchh;->a(Lchg;)Lkad;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljuf;->d(Lkad;)V

    invoke-static/range {p9 .. p9}, Lgfp;->c(Landroid/view/WindowManager;)I

    move-result v1

    iput v1, v0, Lcie;->m:I

    new-instance v1, Lfmv;

    invoke-direct {v1, v0, v8}, Lfmv;-><init>(Lcie;I)V

    iput-object v1, v0, Lcie;->l:Landroid/hardware/display/DisplayManager$DisplayListener;

    const/4 v4, 0x0

    invoke-virtual {v6, v1, v4}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    iget-object v1, v3, Lihg;->q:Ljava/lang/Object;

    check-cast v1, Ljew;

    const v6, 0x7f0b0315

    invoke-virtual {v1, v6}, Ljew;->f(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;

    iput-object v1, v0, Lcie;->h:Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;

    invoke-static {v15}, Ljew;->o(Landroid/view/View;)Ljew;

    move-result-object v1

    const v6, 0x7f0b0239

    invoke-virtual {v1, v6}, Ljew;->f(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    iput-object v6, v0, Lcie;->g:Landroid/widget/FrameLayout;

    const v6, 0x7f0b02a6

    invoke-virtual {v1, v6}, Ljew;->f(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/camera/ui/wirers/PreviewOverlay;

    iput-object v6, v0, Lcie;->n:Lcom/google/android/apps/camera/ui/wirers/PreviewOverlay;

    const v6, 0x7f0b00ad

    invoke-virtual {v1, v6}, Ljew;->f(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/camera/ui/views/CaptureAnimationOverlay;

    iput-object v6, v0, Lcie;->J:Lcom/google/android/apps/camera/ui/views/CaptureAnimationOverlay;

    const v6, 0x7f0b014d

    invoke-virtual {v1, v6}, Ljew;->f(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/ViewStub;

    new-instance v6, Ldyk;

    invoke-direct {v6, v4}, Ldyk;-><init>([B)V

    iput-object v6, v0, Lcie;->C:Ldyk;

    const v4, 0x7f0b0103

    invoke-virtual {v1, v4}, Ljew;->f(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/camera/debugui/DebugCanvasView;

    invoke-virtual {v11, v4}, Ldms;->a(Lcom/google/android/apps/camera/debugui/DebugCanvasView;)V

    new-instance v4, Lhyd;

    const v6, 0x7f0b0194

    invoke-virtual {v1, v6}, Ljew;->f(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    invoke-direct {v4, v1, v12}, Lhyd;-><init>(Landroid/view/ViewStub;Ldhi;)V

    iput-object v4, v0, Lcie;->k:Lhyd;

    const v1, 0x7f0b0053

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v2, Lids;

    new-instance v4, Lidw;

    move-object/from16 v6, p5

    invoke-direct {v4, v1, v6, v7, v0}, Lidw;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lhyy;Landroid/view/WindowManager;Landroid/view/TextureView$SurfaceTextureListener;)V

    invoke-direct {v2, v4}, Lids;-><init>(Lidr;)V

    iput-object v2, v0, Lcie;->N:Lidr;

    iput-object v2, v0, Lcie;->r:Lidr;

    new-instance v1, Lids;

    new-instance v2, Lidx;

    invoke-direct {v2, v5}, Lidx;-><init>(Ligx;)V

    invoke-direct {v1, v2}, Lids;-><init>(Lidr;)V

    iput-object v1, v0, Lcie;->L:Lidr;

    iput-object v1, v0, Lcie;->M:Lidr;

    iget-object v1, v3, Lihg;->d:Ljava/lang/Object;

    check-cast v1, Landroid/widget/FrameLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    iget-object v1, v3, Lihg;->d:Ljava/lang/Object;

    new-instance v2, Lcid;

    invoke-direct {v2}, Lcid;-><init>()V

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method private final t(Z)V
    .locals 1

    iget-object v0, p0, Lcie;->F:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->setCameraSwitchEnabled(Z)V

    iget-object v0, p0, Lcie;->E:Lhwu;

    invoke-virtual {v0, p1}, Lhwu;->d(Z)V

    return-void
.end method

.method private static final u(Lidr;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lidr;->h(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method


# virtual methods
.method public final a()Lmqp;
    .locals 2

    iget-object v0, p0, Lcie;->r:Lidr;

    iget-object v1, p0, Lcie;->Q:Limc;

    invoke-interface {v0, v1}, Lidr;->c(Limc;)Lmqp;

    move-result-object v0

    return-object v0
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcie;->r:Lidr;

    invoke-interface {v0}, Lidr;->f()V

    return-void
.end method

.method public final bP()Z
    .locals 1

    iget-object v0, p0, Lcie;->K:Lgeh;

    invoke-interface {v0}, Lgeh;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcie;->K:Lgeh;

    invoke-interface {v0}, Lgeh;->M()V

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcie;->b:Lcgx;

    invoke-interface {v0}, Lcgx;->h()Lchk;

    move-result-object v0

    invoke-virtual {v0}, Lchk;->t()Z

    move-result v0

    return v0
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcie;->J:Lcom/google/android/apps/camera/ui/views/CaptureAnimationOverlay;

    iget-object v1, v0, Lcom/google/android/apps/camera/ui/views/CaptureAnimationOverlay;->b:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/android/apps/camera/ui/views/CaptureAnimationOverlay;->b:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    const/4 v1, 0x1

    iput v1, v0, Lcom/google/android/apps/camera/ui/views/CaptureAnimationOverlay;->c:I

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/ui/views/CaptureAnimationOverlay;->setVisibility(I)V

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcie;->S:Lcdi;

    invoke-virtual {v0}, Lcdi;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcie;->D:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcie;->b:Lcgx;

    invoke-interface {v0}, Lcgx;->m()V

    return-void

    :cond_1
    iget-object v0, p0, Lcie;->d:Libj;

    invoke-interface {v0}, Libj;->b()V

    iget-object v0, p0, Lcie;->O:Lhtz;

    invoke-virtual {v0}, Lhtm;->a()V

    return-void
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Lcie;->F:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->setSideButtonsClickable(Z)V

    return-void
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lcie;->F:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->setSideButtonsClickable(Z)V

    return-void
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Lcie;->F:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->setClickable(Z)V

    iget-object v0, p0, Lcie;->i:Liff;

    invoke-interface {v0, v1}, Liff;->E(Z)V

    iget-object v0, p0, Lcie;->G:Leoa;

    invoke-virtual {v0, v1}, Leoa;->g(I)V

    return-void
.end method

.method public final h(Z)V
    .locals 1

    iget-object v0, p0, Lcie;->y:Lfbz;

    invoke-interface {v0, p1}, Lfbz;->A(Z)V

    return-void
.end method

.method public final i()V
    .locals 2

    iget-object v0, p0, Lcie;->e:Lcom/google/android/apps/camera/ui/views/ViewfinderCover;

    iget-object v1, p0, Lcie;->b:Lcgx;

    invoke-interface {v1}, Lcgx;->l()Lika;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->f(Lika;)V

    return-void
.end method

.method public final j(Z)V
    .locals 1

    iget-object v0, p0, Lcie;->i:Liff;

    invoke-interface {v0, p1}, Liff;->G(Z)V

    return-void
.end method

.method public final k()V
    .locals 1

    iget-object v0, p0, Lcie;->J:Lcom/google/android/apps/camera/ui/views/CaptureAnimationOverlay;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/views/CaptureAnimationOverlay;->b()V

    return-void
.end method

.method public final l()V
    .locals 2

    iget-object v0, p0, Lcie;->J:Lcom/google/android/apps/camera/ui/views/CaptureAnimationOverlay;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/ui/views/CaptureAnimationOverlay;->a(Z)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcie;->t(Z)V

    return-void
.end method

.method public final m()V
    .locals 2

    iget-object v0, p0, Lcie;->J:Lcom/google/android/apps/camera/ui/views/CaptureAnimationOverlay;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/ui/views/CaptureAnimationOverlay;->a(Z)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcie;->t(Z)V

    return-void
.end method

.method public final n()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcie;->B:Z

    iget-object v1, p0, Lcie;->e:Lcom/google/android/apps/camera/ui/views/ViewfinderCover;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->j()V

    iget-object v1, p0, Lcie;->I:Ldhi;

    sget-object v2, Ldgz;->c:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->l(Ldhj;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcie;->H:Lgvd;

    iget-object v2, p0, Lcie;->b:Lcgx;

    invoke-interface {v2}, Lcgx;->l()Lika;

    move-result-object v2

    invoke-interface {v1, v2}, Lgvd;->a(Lika;)V

    :cond_0
    iget-object v1, p0, Lcie;->P:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lhjy;->a:Lhjy;

    move-object v3, v1

    check-cast v3, Lhkh;

    invoke-virtual {v3, v2}, Lhkh;->k(Ljava/lang/Enum;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lhjy;->a:Lhjy;

    invoke-virtual {v3, v2}, Lhkh;->h(Ljava/lang/Enum;)V

    check-cast v1, Lhjz;

    iget-object v2, v1, Lhjz;->a:Lkbf;

    invoke-interface {v2}, Lkbf;->a()V

    sget-object v2, Lkbf;->b:Lkbf;

    iput-object v2, v1, Lhjz;->a:Lkbf;

    iget-object v1, p0, Lcie;->R:Lnph;

    const-class v2, Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lnph;->e(Ljava/lang/Object;)Z

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v1

    iput-object v1, p0, Lcie;->R:Lnph;

    :cond_1
    iget-object v1, p0, Lcie;->z:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

    sget-object v2, Lhju;->m:Lhju;

    invoke-virtual {v1, v2}, Lhkh;->k(Ljava/lang/Enum;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v1

    new-instance v2, Lchx;

    invoke-direct {v2, p0, v0}, Lchx;-><init>(Lcie;I)V

    invoke-virtual {v1, v2}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_2
    return-void
.end method

.method public final o()V
    .locals 2

    iget-object v0, p0, Lcie;->F:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->setCameraSwitchEnabled(Z)V

    return-void
.end method

.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    iput-object p1, p0, Lcie;->t:Landroid/graphics/SurfaceTexture;

    iput p2, p0, Lcie;->u:I

    iput p3, p0, Lcie;->v:I

    iget-object v0, p0, Lcie;->o:Lidu;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lidu;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    :cond_0
    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcie;->t:Landroid/graphics/SurfaceTexture;

    iget-object v0, p0, Lcie;->o:Lidu;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lidu;->onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    iput-object p1, p0, Lcie;->t:Landroid/graphics/SurfaceTexture;

    iput p2, p0, Lcie;->u:I

    iput p3, p0, Lcie;->v:I

    iget-object v0, p0, Lcie;->o:Lidu;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lidu;->onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V

    :cond_0
    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    iput-object p1, p0, Lcie;->t:Landroid/graphics/SurfaceTexture;

    return-void
.end method

.method public final p(ILidu;)V
    .locals 4

    iget-object v0, p0, Lcie;->L:Lidr;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcie;->M:Lidr;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcie;->N:Lidr;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    invoke-static {v0}, Lmoz;->e(Z)V

    iget v1, p0, Lcie;->T:I

    if-ne p1, v1, :cond_0

    iput-object p2, p0, Lcie;->o:Lidu;

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcie;->o:Lidu;

    const/4 v2, 0x3

    if-eq v1, v0, :cond_2

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Lcie;->r:Lidr;

    invoke-static {v0}, Lcie;->u(Lidr;)V

    :cond_1
    iget-object v0, p0, Lcie;->r:Lidr;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lidr;->e()Lnou;

    :cond_2
    iput-object p2, p0, Lcie;->o:Lidu;

    iget-object p2, p0, Lcie;->L:Lidr;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcie;->M:Lidr;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcie;->N:Lidr;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v3, p1, -0x1

    packed-switch v3, :pswitch_data_0

    iget-object v1, p0, Lcie;->r:Lidr;

    if-ne v1, p2, :cond_3

    move-object p2, v0

    goto :goto_0

    :pswitch_0
    move-object p2, v1

    :cond_3
    :goto_0
    iput-object p2, p0, Lcie;->r:Lidr;

    iput p1, p0, Lcie;->T:I

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne p1, v2, :cond_4

    iget-object p1, p0, Lcie;->p:Landroid/view/View$OnLayoutChangeListener;

    invoke-interface {p2, p1}, Lidr;->h(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_4
    iget-object p1, p0, Lcie;->r:Lidr;

    invoke-interface {p1}, Lidr;->d()Lnou;

    :goto_1
    iget-object p1, p0, Lcie;->o:Lidu;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Lidu;->a()Landroid/view/GestureDetector$OnGestureListener;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p2, p0, Lcie;->n:Lcom/google/android/apps/camera/ui/wirers/PreviewOverlay;

    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p2}, Lcom/google/android/apps/camera/ui/wirers/PreviewOverlay;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p2, Lcom/google/android/apps/camera/ui/wirers/PreviewOverlay;->a:Landroid/view/GestureDetector;

    :cond_5
    iget-object p1, p0, Lcie;->o:Lidu;

    invoke-interface {p1}, Lidu;->b()Landroid/view/View$OnTouchListener;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p2, p0, Lcie;->n:Lcom/google/android/apps/camera/ui/wirers/PreviewOverlay;

    iput-object p1, p2, Lcom/google/android/apps/camera/ui/wirers/PreviewOverlay;->b:Landroid/view/View$OnTouchListener;

    :cond_6
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final q(Lika;)V
    .locals 2

    iget-object v0, p0, Lcie;->b:Lcgx;

    invoke-interface {v0, p1}, Lcgx;->p(Lika;)V

    iget-object v0, p0, Lcie;->d:Libj;

    invoke-interface {v0, p1}, Libj;->s(Lika;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcie;->d:Libj;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Libj;->l(Z)V

    return-void

    :cond_0
    sget-object v0, Lika;->i:Lika;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcie;->d:Libj;

    invoke-interface {p1, v1}, Libj;->l(Z)V

    return-void

    :cond_1
    iget-object p1, p0, Lcie;->d:Libj;

    invoke-interface {p1, v1}, Libj;->l(Z)V

    return-void
.end method

.method public final r()V
    .locals 5

    iget v0, p0, Lcie;->T:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcie;->r:Lidr;

    invoke-static {v0}, Lcie;->u(Lidr;)V

    iget-object v0, p0, Lcie;->r:Lidr;

    invoke-interface {v0}, Lidr;->e()Lnou;

    move-result-object v0

    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x7d0

    invoke-interface {v0, v3, v4, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    iput v1, p0, Lcie;->T:I

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Surface Destruction Synchronization on Module Switch Timed out."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    :goto_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Synchronization close failed on preview switch."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
