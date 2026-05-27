.class public final Lhwc;
.super Ljava/lang/Object;

# interfaces
.implements Lhwh;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Landroid/view/accessibility/AccessibilityManager;

.field public final c:Ldbf;

.field public final d:Ldpl;

.field public final e:Ldhi;

.field public final f:Ljvs;

.field public final g:Ljwb;

.field public final h:Lmqp;

.field public final i:Lhna;

.field public final j:Lhnb;

.field public final k:Lgdz;

.field public l:Lhwi;

.field public m:Lmqp;

.field public n:Lhwf;

.field public o:Lker;

.field public final p:Lgxb;

.field private final q:Lcgx;

.field private final r:Ldol;

.field private final s:Landroid/os/Handler;

.field private final t:Ljvs;

.field private final u:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/ui/countdownui/CountdownController"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lhwc;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Lcgy;Lcdi;Ldbf;Ldol;Ldhi;Landroid/view/View;Lgxb;Lgzm;Ljuh;Ljwb;Ljvs;Ldpl;Landroid/content/Context;Lmqp;Lhna;Lhnb;Lgdz;[B)V
    .locals 4

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lmpx;->a:Lmpx;

    iput-object v1, v0, Lhwc;->m:Lmqp;

    move-object v1, p1

    iput-object v1, v0, Lhwc;->q:Lcgx;

    move-object v1, p3

    iput-object v1, v0, Lhwc;->c:Ldbf;

    move-object v1, p5

    iput-object v1, v0, Lhwc;->e:Ldhi;

    invoke-virtual {p2}, Lcdi;->i()Ljuf;

    move-result-object v1

    const-string v2, "CountdownHandler"

    invoke-static {v1, v2}, Ljvd;->p(Ljuf;Ljava/lang/String;)Landroid/os/Handler;

    move-result-object v1

    iput-object v1, v0, Lhwc;->s:Landroid/os/Handler;

    move-object v1, p7

    iput-object v1, v0, Lhwc;->p:Lgxb;

    sget-object v1, Lgzd;->s:Lgzu;

    move-object v2, p8

    invoke-interface {p8, v1}, Lgzm;->a(Lgzb;)Ljvs;

    move-result-object v1

    iput-object v1, v0, Lhwc;->t:Ljvs;

    move-object v1, p4

    iput-object v1, v0, Lhwc;->r:Ldol;

    move-object v1, p10

    iput-object v1, v0, Lhwc;->g:Ljwb;

    move-object v1, p11

    iput-object v1, v0, Lhwc;->f:Ljvs;

    move-object/from16 v1, p12

    iput-object v1, v0, Lhwc;->d:Ldpl;

    move-object/from16 v1, p13

    iput-object v1, v0, Lhwc;->u:Landroid/content/Context;

    move-object/from16 v1, p14

    iput-object v1, v0, Lhwc;->h:Lmqp;

    move-object/from16 v1, p15

    iput-object v1, v0, Lhwc;->i:Lhna;

    move-object/from16 v1, p16

    iput-object v1, v0, Lhwc;->j:Lhnb;

    move-object/from16 v1, p17

    iput-object v1, v0, Lhwc;->k:Lgdz;

    invoke-virtual {p6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    iput-object v1, v0, Lhwc;->b:Landroid/view/accessibility/AccessibilityManager;

    new-instance v1, Lhqn;

    const/4 v2, 0x6

    move-object v3, p6

    invoke-direct {v1, p0, p6, v2}, Lhqn;-><init>(Lhwc;Landroid/view/View;I)V

    move-object v2, p9

    invoke-virtual {p9, v1}, Ljuh;->c(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lhwc;->h:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhwc;->h:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lckq;

    invoke-interface {v0}, Lckq;->d()V

    :cond_0
    iget-object v0, p0, Lhwc;->l:Lhwi;

    invoke-virtual {v0}, Lhwi;->a()V

    iget-object v0, p0, Lhwc;->d:Ldpl;

    invoke-virtual {v0}, Ldpl;->c()V

    iget-object v0, p0, Lhwc;->s:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lhwc;->o:Lker;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2, v2}, Lhwc;->b(ZLker;ZZ)V

    iget-object v0, p0, Lhwc;->k:Lgdz;

    invoke-virtual {v0}, Lgdz;->e()V

    return-void
.end method

.method public final b(ZLker;ZZ)V
    .locals 8

    invoke-static {}, Lgxb;->e()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lhwc;->c:Ldbf;

    invoke-virtual {v0}, Ldbf;->j()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lhwc;->m:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lhwc;->o:Lker;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lhwc;->e:Ldhi;

    sget-object v1, Ldho;->bK:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lhwc;->g:Ljwb;

    invoke-interface {v0}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lhwc;->f:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lhwc;->j:Lhnb;

    invoke-interface {v0}, Lhnb;->e()Lhna;

    move-result-object v0

    iget-object v1, p0, Lhwc;->i:Lhna;

    invoke-virtual {v0, v1}, Lhna;->a(Lhna;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    :try_start_0
    invoke-interface {p2}, Lker;->b()Lkem;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sget-object v2, Liuy;->c:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lkfg;->u(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkfa;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v2, Liuy;->b:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v4, p0, Lhwc;->p:Lgxb;

    iget-object v5, v4, Lgxb;->a:Ljava/lang/Object;

    check-cast v5, Lkog;

    invoke-virtual {v5}, Lkog;->h()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v5, :cond_2

    iget-object v4, v4, Lgxb;->a:Ljava/lang/Object;

    check-cast v4, Lkog;

    iget-boolean v4, v4, Lkog;->f:Z

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    const/4 v4, 0x1

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v4}, Lkfg;->u(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkfa;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    if-eq v7, p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v6, 0x2

    :goto_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2, p1}, Lkfg;->u(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkfa;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    sget-object v2, Liuy;->r:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2, p1}, Lkfg;->u(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkfa;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lhwc;->r:Ldol;

    invoke-interface {p1}, Ldol;->c()Ljvs;

    move-result-object p1

    check-cast p1, Ljvk;

    iget-object p1, p1, Ljvk;->d:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_4

    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1, v3}, Lkfg;->u(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkfa;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_4
    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1, v3}, Lkfg;->u(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkfa;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lhwc;->t:Ljvs;

    check-cast p1, Ljvk;

    iget-object p1, p1, Ljvk;->d:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    sget-object v2, Lgcc;->b:Lgcc;

    invoke-static {p1, v2}, Lgcc;->a(Ljava/lang/String;Lgcc;)Lgcc;

    move-result-object p1

    sget-object v2, Lgcc;->c:Lgcc;

    invoke-virtual {p1, v2}, Lgcc;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lhwc;->r:Ldol;

    invoke-interface {p1}, Ldol;->a()Ljvs;

    move-result-object p1

    check-cast p1, Ljvk;

    iget-object p1, p1, Ljvk;->d:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    if-eq v7, p4, :cond_5

    goto :goto_2

    :cond_5
    const/4 v7, 0x3

    :goto_2
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-static {p1, p4}, Lkfg;->u(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkfa;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-interface {v0, v1}, Lkem;->e(Ljava/util/Set;)V

    invoke-interface {v0}, Lkem;->a()Lkfz;

    move-result-object p1

    invoke-interface {p2, p1}, Lker;->g(Lkfz;)V

    if-eqz p3, :cond_7

    invoke-interface {p2}, Lker;->close()V

    const/4 p1, 0x0

    iput-object p1, p0, Lhwc;->o:Lker;
    :try_end_0
    .catch Lkdf; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    return-void

    :catch_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    :goto_3
    sget-object p2, Lhwc;->a:Lnak;

    invoke-virtual {p2}, Lnaf;->b()Lnaz;

    move-result-object p2

    check-cast p2, Lnah;

    invoke-interface {p2, p1}, Lnah;->h(Ljava/lang/Throwable;)Lnaz;

    move-result-object p2

    check-cast p2, Lnah;

    const/16 p3, 0xfa0

    invoke-interface {p2, p3}, Lnah;->G(I)Lnaz;

    move-result-object p2

    check-cast p2, Lnah;

    const-string p3, "Countdown set torch failed: %s"

    invoke-interface {p2, p3, p1}, Lnah;->r(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_8
    :goto_4
    sget-object p1, Lhwc;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->b()Lnaz;

    move-result-object p1

    const-string p2, "Unsupported to set torch on for countdown request"

    const/16 p3, 0xf9f

    invoke-static {p1, p2, p3}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return-void
.end method

.method public final c(ZIZZ)V
    .locals 8

    iget-object v0, p0, Lhwc;->s:Landroid/os/Handler;

    new-instance v7, Lkgk;

    const/4 v6, 0x1

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lkgk;-><init>(Lhwc;ZZZI)V

    int-to-long p1, p2

    invoke-virtual {v0, v7, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final d(I)V
    .locals 4

    iget-object v0, p0, Lhwc;->q:Lcgx;

    invoke-interface {v0}, Lcgx;->h()Lchk;

    move-result-object v0

    invoke-virtual {v0}, Lchk;->u()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lchk;->bH()Lmqp;

    move-result-object v1

    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lchk;->bH()Lmqp;

    move-result-object v0

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lftg;

    invoke-interface {v0}, Lftg;->d()Lmqp;

    move-result-object v0

    iput-object v0, p0, Lhwc;->m:Lmqp;

    goto :goto_0

    :cond_0
    sget-object v0, Lmpx;->a:Lmpx;

    iput-object v0, p0, Lhwc;->m:Lmqp;

    :goto_0
    iget-object v0, p0, Lhwc;->k:Lgdz;

    invoke-virtual {v0}, Lgdz;->d()V

    iget-object v0, p0, Lhwc;->l:Lhwi;

    iget-object v1, p0, Lhwc;->u:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "animator_duration_scale"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v1

    const/4 v2, 0x1

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0}, Lhwi;->e()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lhwi;->a()V

    :cond_2
    invoke-virtual {v0}, Lhwi;->c()V

    iput-boolean v1, v0, Lhwi;->d:Z

    iget-object v1, v0, Lhwi;->c:Landroid/view/ViewGroup;

    const/4 v3, -0x1

    invoke-virtual {v1, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    invoke-virtual {v0, v2, p1}, Lhwi;->b(ZI)V

    return-void
.end method

.method public final e()Z
    .locals 1

    iget-object v0, p0, Lhwc;->l:Lhwi;

    invoke-virtual {v0}, Lhwi;->e()Z

    move-result v0

    return v0
.end method
