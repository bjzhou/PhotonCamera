.class public final Lhxx;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnak;


# instance fields
.field private final A:Ljava/util/concurrent/ScheduledExecutorService;

.field private final B:Ljvs;

.field private C:Ljava/util/concurrent/ScheduledFuture;

.field public final b:Landroid/view/accessibility/AccessibilityManager;

.field public final c:Lhgy;

.field public final d:Landroid/content/Context;

.field public final e:Ldpl;

.field public final f:Lhyd;

.field public final g:Ljava/util/List;

.field public final h:Ljuh;

.field public final i:Lgeh;

.field public final j:Ljwb;

.field public final k:Ljvs;

.field public l:I

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Lhxz;

.field public q:Lhxz;

.field public r:J

.field public s:I

.field public t:J

.field public u:J

.field public final v:Lhxv;

.field private final w:Ldbf;

.field private final x:Ldhi;

.field private final y:Ljvs;

.field private final z:Lgzm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/ui/hotshot/HotshotController"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lhxx;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljvs;Lhyd;Lhgy;Landroid/view/accessibility/AccessibilityManager;Ldhi;Lgzm;Ldpl;Ljwb;Ldbf;Lhxv;Lgeh;Liff;Ljava/util/concurrent/ScheduledExecutorService;Ljvs;Ljvs;Ljuh;)V
    .locals 8

    move-object v0, p0

    move-object v1, p3

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    move-object/from16 v4, p11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lhxx;->g:Ljava/util/List;

    const/16 v5, 0xa

    iput v5, v0, Lhxx;->l:I

    const/4 v5, 0x0

    iput-boolean v5, v0, Lhxx;->m:Z

    iput-boolean v5, v0, Lhxx;->n:Z

    iput-boolean v5, v0, Lhxx;->o:Z

    sget-object v6, Lhxz;->f:Lhxz;

    iput-object v6, v0, Lhxx;->p:Lhxz;

    sget-object v6, Lhxz;->f:Lhxz;

    iput-object v6, v0, Lhxx;->q:Lhxz;

    const-wide/16 v6, 0x0

    iput-wide v6, v0, Lhxx;->r:J

    iput v5, v0, Lhxx;->s:I

    iput-wide v6, v0, Lhxx;->t:J

    const-wide v5, 0x7fffffffffffffffL

    iput-wide v5, v0, Lhxx;->u:J

    move-object v5, p1

    iput-object v5, v0, Lhxx;->d:Landroid/content/Context;

    move-object v5, p2

    iput-object v5, v0, Lhxx;->y:Ljvs;

    iput-object v1, v0, Lhxx;->f:Lhyd;

    move-object v5, p4

    iput-object v5, v0, Lhxx;->c:Lhgy;

    move-object v5, p5

    iput-object v5, v0, Lhxx;->b:Landroid/view/accessibility/AccessibilityManager;

    move-object v5, p6

    iput-object v5, v0, Lhxx;->x:Ldhi;

    move-object v5, p7

    iput-object v5, v0, Lhxx;->z:Lgzm;

    iput-object v2, v0, Lhxx;->e:Ldpl;

    move-object/from16 v5, p17

    iput-object v5, v0, Lhxx;->h:Ljuh;

    iput-object v3, v1, Lhyd;->d:Ljwb;

    iget-object v5, v1, Lhyd;->b:Lmqp;

    invoke-virtual {v5}, Lmqp;->g()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;

    iput-object v3, v5, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->g:Ljwb;

    :cond_0
    iget-object v1, v1, Lhyd;->b:Lmqp;

    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;

    iget-boolean v5, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->e:Z

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    iput-boolean v6, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->e:Z

    :cond_1
    iput-object v3, v2, Ldpl;->q:Ljvs;

    move-object/from16 v1, p10

    iput-object v1, v0, Lhxx;->w:Ldbf;

    move-object/from16 v1, p12

    iput-object v1, v0, Lhxx;->i:Lgeh;

    iput-object v4, v0, Lhxx;->v:Lhxv;

    iput-object v3, v0, Lhxx;->j:Ljwb;

    move-object/from16 v1, p14

    iput-object v1, v0, Lhxx;->A:Ljava/util/concurrent/ScheduledExecutorService;

    move-object/from16 v1, p15

    iput-object v1, v0, Lhxx;->k:Ljvs;

    move-object/from16 v1, p16

    iput-object v1, v0, Lhxx;->B:Ljvs;

    iget-object v1, v4, Lhxv;->a:Lhrz;

    new-instance v2, Lhxw;

    move-object/from16 v3, p13

    invoke-direct {v2, v4, v3}, Lhxw;-><init>(Lhxv;Liff;)V

    invoke-virtual {v1, v2}, Lhrz;->e(Lhrx;)V

    return-void
.end method

.method public static synthetic MILLISECONDS$001()Ljava/util/concurrent/TimeUnit;
    .locals 1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    return-object v0
.end method

.method public static synthetic b$008(Lnaf;)Lnaz;
    .locals 1

    invoke-virtual/range {p0 .. p0}, Lnaf;->b()Lnaz;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b$010(Lkbj;Z)V
    .locals 1

    invoke-virtual/range {p0 .. p1}, Lkbj;->b(Z)V

    return-void
.end method

.method public static synthetic bm$005(Ljvs;)Ljava/lang/Object;
    .locals 1

    invoke-interface/range {p0 .. p0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic booleanValue$006(Ljava/lang/Boolean;)Z
    .locals 1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static synthetic c$009(Lmqp;)Ljava/lang/Object;
    .locals 1

    invoke-virtual/range {p0 .. p0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic execute$002(Ljuh;Ljava/lang/Runnable;)V
    .locals 1

    invoke-virtual/range {p0 .. p1}, Ljuh;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic g$007(Lmqp;)Z
    .locals 1

    invoke-static {}, Lcom/Globals;->GoogleDevices()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Lmqp;->g()Z

    move-result v0

    return v0

    :cond_0
    const v0, 0x0

    return v0
.end method

.method public static synthetic h$001(Lhxx;)Z
    .locals 1

    invoke-virtual/range {p0 .. p0}, Lhxx;->h()Z

    move-result v0

    return v0
.end method

.method public static synthetic j$004(Ldbf;)Z
    .locals 1

    invoke-virtual/range {p0 .. p0}, Ldbf;->j()Z

    move-result v0

    return v0
.end method

.method public static synthetic scheduleAtFixedRate$003(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 1

    invoke-interface/range {p0 .. p6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Lnio;
    .locals 6

    sget-object v0, Lnio;->f:Lnio;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    invoke-virtual {p0}, Lhxx;->h()Z

    move-result v1

    iget-object v2, v0, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v2, v0, Lnwn;->b:Lnws;

    check-cast v2, Lnio;

    iget v3, v2, Lnio;->a:I

    const/4 v4, 0x1

    or-int/2addr v3, v4

    iput v3, v2, Lnio;->a:I

    iput-boolean v1, v2, Lnio;->b:Z

    iget-object v1, p0, Lhxx;->z:Lgzm;

    sget-object v2, Lgzd;->m:Lgzr;

    invoke-interface {v1, v2}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, v0, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_1
    iget-object v2, v0, Lnwn;->b:Lnws;

    check-cast v2, Lnio;

    iget v3, v2, Lnio;->a:I

    const/4 v5, 0x2

    or-int/2addr v3, v5

    iput v3, v2, Lnio;->a:I

    iput-boolean v1, v2, Lnio;->c:Z

    iget-object v1, p0, Lhxx;->p:Lhxz;

    sget-object v2, Lhxz;->a:Lhxz;

    invoke-virtual {v1}, Lhxz;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x4

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const/16 v4, 0x8

    goto :goto_0

    :pswitch_2
    const/4 v4, 0x7

    goto :goto_0

    :pswitch_3
    const/4 v4, 0x6

    goto :goto_0

    :pswitch_4
    const/4 v4, 0x5

    goto :goto_0

    :pswitch_5
    const/4 v4, 0x4

    goto :goto_0

    :pswitch_6
    const/4 v4, 0x3

    goto :goto_0

    :pswitch_7
    const/4 v4, 0x2

    :goto_0
    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_2
    iget-object v1, v0, Lnwn;->b:Lnws;

    move-object v5, v1

    check-cast v5, Lnio;

    add-int/lit8 v4, v4, -0x1

    iput v4, v5, Lnio;->d:I

    iget v4, v5, Lnio;->a:I

    or-int/2addr v3, v4

    iput v3, v5, Lnio;->a:I

    iget-boolean v3, p0, Lhxx;->n:Z

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_3
    iget-object v1, v0, Lnwn;->b:Lnws;

    check-cast v1, Lnio;

    iget v4, v1, Lnio;->a:I

    or-int/2addr v2, v4

    iput v2, v1, Lnio;->a:I

    iput-boolean v3, v1, Lnio;->e:Z

    invoke-virtual {v0}, Lnwn;->i()Lnws;

    move-result-object v0

    check-cast v0, Lnio;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lhxx;->f:Lhyd;

    iget-object v0, v0, Lhyd;->b:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;

    iget-object v1, p0, Lhxx;->d:Landroid/content/Context;

    const v2, 0x7f140218

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final c(Lhya;)V
    .locals 1

    iget-object v0, p0, Lhxx;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lhxx;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final d(Lkaf;)V
    .locals 2

    iget-object v0, p0, Lhxx;->f:Lhyd;

    iget-object v0, v0, Lhyd;->b:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object p1, Lhyd;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->b()Lnaz;

    move-result-object p1

    const-string v0, "setPreviewSize, view is not present."

    const/16 v1, 0xfbc

    invoke-static {p1, v0, v1}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    sget-object p1, Lhyd;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->b()Lnaz;

    move-result-object p1

    const-string v0, "previewSize is null"

    const/16 v1, 0xfbb

    invoke-static {p1, v0, v1}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return-void

    :cond_1
    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;

    iget-object v0, v0, Ldmt;->b:Lkbj;

    iget-object v1, v0, Lkbj;->e:Lkaf;

    invoke-virtual {p1, v1}, Lkaf;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lkbj;->c:Landroid/graphics/Matrix;

    if-eqz v1, :cond_2

    return-void

    :cond_2
    iput-object p1, v0, Lkbj;->e:Lkaf;

    invoke-virtual {v0}, Lkbj;->d()V

    return-void
.end method

.method public e()V
    .locals 5

    const v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    const v0, 0x0

    aput-object p0, v2, v0

    const-string/jumbo v1, "yiJlaiTLV7LFRO8J"

    invoke-static {v1, v2}, Lcom/pairip/VMRunner;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-void
.end method

.method public final f()V
    .locals 3

    iget-boolean v0, p0, Lhxx;->m:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhxx;->m:Z

    iget-object v1, p0, Lhxx;->f:Lhyd;

    iput-boolean v0, v1, Lhyd;->c:Z

    invoke-virtual {v1, v0}, Lhyd;->a(Z)V

    iget-object v1, v1, Lhyd;->d:Ljwb;

    new-array v2, v0, [Lhyb;

    invoke-interface {v1, v2}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object v1, p0, Lhxx;->e:Ldpl;

    iput-boolean v0, v1, Ldpl;->l:Z

    sget-object v1, Lhxz;->f:Lhxz;

    iput-object v1, p0, Lhxx;->p:Lhxz;

    const-wide v1, 0x7fffffffffffffffL

    iput-wide v1, p0, Lhxx;->u:J

    iget-boolean v1, p0, Lhxx;->o:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lhxx;->e:Ldpl;

    invoke-virtual {v1}, Ldpl;->c()V

    iput-boolean v0, p0, Lhxx;->o:Z

    :cond_1
    iget-object v1, p0, Lhxx;->C:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_2

    invoke-interface {v1, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_2
    return-void
.end method

.method public final g(Lhya;)V
    .locals 1

    iget-object v0, p0, Lhxx;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final h()Z
    .locals 4

    iget-object v0, p0, Lhxx;->y:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lika;

    iget-object v1, p0, Lhxx;->b:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object v0, p0, Lhxx;->x:Ldhi;

    sget-object v1, Ldho;->a:Ldhk;

    invoke-interface {v0}, Ldhi;->c()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lhxx;->z:Lgzm;

    sget-object v3, Lgzd;->m:Lgzr;

    invoke-interface {v1, v3}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lhxx;->x:Ldhi;

    sget-object v3, Ldho;->a:Ldhk;

    invoke-interface {v1}, Ldhi;->c()V

    iget-object v1, p0, Lhxx;->w:Ldbf;

    invoke-virtual {v1}, Ldbf;->j()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lhxx;->B:Ljvs;

    invoke-interface {v1}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_1
    sget-object v1, Lika;->b:Lika;

    const/4 v3, 0x1

    if-eq v0, v1, :cond_3

    sget-object v1, Lika;->g:Lika;

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_2
    return v3

    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    :goto_0
    return v2
.end method
