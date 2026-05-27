.class public final Lepq;
.super Ljava/lang/Object;

# interfaces
.implements Lecm;
.implements Lecw;
.implements Leqd;
.implements Leqf;
.implements Lecr;
.implements Lecn;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Leeo;

.field public final c:Lkbc;

.field public final d:Ljava/util/Map;

.field public final e:Lmqp;

.field public final f:Lgvb;

.field public final g:Lfuz;

.field public final h:Lcvr;

.field private final i:Logd;

.field private final j:Leqc;

.field private final k:Lcom/google/googlex/gcam/Gcam;

.field private final l:Ljava/util/concurrent/Executor;

.field private final m:Ljvs;

.field private final n:Limq;

.field private final o:Ldhi;

.field private final p:Ljvs;

.field private q:Lkad;

.field private final r:Lgue;

.field private final s:Lgkf;

.field private final t:Lcvr;

.field private final u:Lcvr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/lasagna/MotionBlurProcessorImpl"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lepq;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Logd;Lgkf;Lcvr;Lmqp;Lcom/google/googlex/gcam/Gcam;Leeo;Lkbc;Ljava/util/concurrent/Executor;Lcvr;Lfuz;Ljvs;Lmqp;Limq;Ldhi;Lgvb;Ljvs;Lgue;Lcvr;[B[B[B[B[B)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lepq;->d:Ljava/util/Map;

    const/4 v1, 0x0

    iput-object v1, v0, Lepq;->q:Lkad;

    move-object v1, p1

    iput-object v1, v0, Lepq;->i:Logd;

    move-object v1, p2

    iput-object v1, v0, Lepq;->s:Lgkf;

    move-object v1, p3

    iput-object v1, v0, Lepq;->u:Lcvr;

    move-object v1, p5

    iput-object v1, v0, Lepq;->k:Lcom/google/googlex/gcam/Gcam;

    move-object v1, p6

    iput-object v1, v0, Lepq;->b:Leeo;

    move-object v1, p7

    iput-object v1, v0, Lepq;->c:Lkbc;

    move-object v1, p8

    iput-object v1, v0, Lepq;->l:Ljava/util/concurrent/Executor;

    invoke-virtual {p4}, Lmqp;->g()Z

    move-result v1

    invoke-static {v1}, Lmoz;->e(Z)V

    invoke-virtual {p4}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leqc;

    iput-object v1, v0, Lepq;->j:Leqc;

    move-object v1, p9

    iput-object v1, v0, Lepq;->h:Lcvr;

    move-object v1, p10

    iput-object v1, v0, Lepq;->g:Lfuz;

    move-object v1, p11

    iput-object v1, v0, Lepq;->m:Ljvs;

    move-object v1, p12

    iput-object v1, v0, Lepq;->e:Lmqp;

    move-object v1, p13

    iput-object v1, v0, Lepq;->n:Limq;

    move-object/from16 v1, p14

    iput-object v1, v0, Lepq;->o:Ldhi;

    move-object/from16 v1, p15

    iput-object v1, v0, Lepq;->f:Lgvb;

    move-object/from16 v1, p16

    iput-object v1, v0, Lepq;->p:Ljvs;

    move-object/from16 v1, p17

    iput-object v1, v0, Lepq;->r:Lgue;

    move-object/from16 v1, p18

    iput-object v1, v0, Lepq;->t:Lcvr;

    return-void
.end method

.method public static synthetic A$023(Lgxl;)V
    .locals 1

    invoke-interface/range {p0 .. p0}, Lgxl;->A()V

    return-void
.end method

.method public static synthetic G$004(Lnah;I)Lnaz;
    .locals 1

    invoke-interface/range {p0 .. p1}, Lnah;->G(I)Lnaz;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic G$015(Lnah;I)Lnaz;
    .locals 1

    invoke-interface/range {p0 .. p1}, Lnah;->G(I)Lnaz;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic G$026(Lnah;I)Lnaz;
    .locals 1

    invoke-interface/range {p0 .. p1}, Lnah;->G(I)Lnaz;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic G$031(Lnah;I)Lnaz;
    .locals 1

    invoke-interface/range {p0 .. p1}, Lnah;->G(I)Lnaz;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic a$005(Leea;)I
    .locals 1

    invoke-virtual/range {p0 .. p0}, Leea;->a()I

    move-result v0

    return v0
.end method

.method public static synthetic a$008(Lgaa;Lilz;F)V
    .locals 1

    invoke-interface/range {p0 .. p2}, Lgaa;->a(Lilz;F)V

    return-void
.end method

.method public static synthetic a$019(Leea;)I
    .locals 1

    invoke-virtual/range {p0 .. p0}, Leea;->a()I

    move-result v0

    return v0
.end method

.method public static synthetic a$028(Leea;)I
    .locals 1

    invoke-virtual/range {p0 .. p0}, Leea;->a()I

    move-result v0

    return v0
.end method

.method public static synthetic a$032(Leea;)I
    .locals 1

    invoke-virtual/range {p0 .. p0}, Leea;->a()I

    move-result v0

    return v0
.end method

.method public static synthetic awaitAdvanceInterruptibly$011(Ljava/util/concurrent/Phaser;I)I
    .locals 1

    invoke-virtual/range {p0 .. p1}, Ljava/util/concurrent/Phaser;->awaitAdvanceInterruptibly(I)I

    move-result v0

    return v0
.end method

.method public static synthetic b$013(Lnaf;)Lnaz;
    .locals 1

    invoke-virtual/range {p0 .. p0}, Lnaf;->b()Lnaz;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b$024(Lnaf;)Lnaz;
    .locals 1

    invoke-virtual/range {p0 .. p0}, Lnaf;->b()Lnaz;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b$035(Lgxl;Lkae;)V
    .locals 1

    invoke-interface/range {p0 .. p1}, Lgxl;->b(Lkae;)V

    return-void
.end method

.method public static synthetic booleanValue$017(Ljava/lang/Boolean;)Z
    .locals 1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static synthetic c$003(Lnaf;)Lnaz;
    .locals 1

    invoke-virtual/range {p0 .. p0}, Lnaf;->c()Lnaz;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c$022(Lmqp;)Ljava/lang/Object;
    .locals 1

    invoke-virtual/range {p0 .. p0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c$030(Lnaf;)Lnaz;
    .locals 1

    invoke-virtual/range {p0 .. p0}, Lnaf;->c()Lnaz;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic close$007(Lkad;)V
    .locals 1

    invoke-interface/range {p0 .. p0}, Lkad;->close()V

    return-void
.end method

.method public static synthetic e$001(Lkbc;Ljava/lang/String;)V
    .locals 1

    invoke-interface/range {p0 .. p1}, Lkbc;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic e$034(Lkbc;Ljava/lang/String;)V
    .locals 1

    invoke-interface/range {p0 .. p1}, Lkbc;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic f$037(Lkbc;)V
    .locals 1

    invoke-interface/range {p0 .. p0}, Lkbc;->f()V

    return-void
.end method

.method public static synthetic f$038(Lkbc;)V
    .locals 1

    invoke-interface/range {p0 .. p0}, Lkbc;->f()V

    return-void
.end method

.method public static synthetic g$020(Lmqp;)Z
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

.method public static synthetic get$002(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-interface/range {p0 .. p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic getRegisteredParties$010(Ljava/util/concurrent/Phaser;)I
    .locals 1

    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/Phaser;->getRegisteredParties()I

    move-result v0

    return v0
.end method

.method public static synthetic getUnarrivedParties$009(Ljava/util/concurrent/Phaser;)I
    .locals 1

    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/Phaser;->getUnarrivedParties()I

    move-result v0

    return v0
.end method

.method public static synthetic h$014(Lnah;Ljava/lang/Throwable;)Lnaz;
    .locals 1

    invoke-interface/range {p0 .. p1}, Lnah;->h(Ljava/lang/Throwable;)Lnaz;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic h$025(Lnah;Ljava/lang/Throwable;)Lnaz;
    .locals 1

    invoke-interface/range {p0 .. p1}, Lnah;->h(Ljava/lang/Throwable;)Lnaz;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic k$021(Lgxl;)Lhjc;
    .locals 1

    invoke-interface/range {p0 .. p0}, Lgxl;->k()Lhjc;

    move-result-object v0

    return-object v0
.end method

.method public static final m(Lepd;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    sget-object v0, Lepq;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    invoke-interface {v0, p2}, Lnah;->h(Ljava/lang/Throwable;)Lnaz;

    move-result-object p2

    check-cast p2, Lnah;

    const/16 v0, 0x719

    invoke-interface {p2, v0}, Lnah;->G(I)Lnaz;

    move-result-object p2

    check-cast p2, Lnah;

    iget v0, p0, Lepd;->h:I

    const-string v1, "%s %d"

    invoke-interface {p2, v1, p1, v0}, Lnah;->x(Ljava/lang/String;Ljava/lang/Object;I)V

    invoke-virtual {p0}, Lepd;->d()V

    invoke-virtual {p0}, Lepd;->e()V

    return-void
.end method

.method public static synthetic o$016(Lnah;Ljava/lang/String;)V
    .locals 1

    invoke-interface/range {p0 .. p1}, Lnah;->o(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic p$006(Lnah;Ljava/lang/String;I)V
    .locals 1

    invoke-interface/range {p0 .. p2}, Lnah;->p(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic p$033(Lnah;Ljava/lang/String;I)V
    .locals 1

    invoke-interface/range {p0 .. p2}, Lnah;->p(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic remove$012(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-interface/range {p0 .. p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic remove$039(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-interface/range {p0 .. p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic s$018(Lgxl;)Ljava/lang/String;
    .locals 1

    invoke-interface/range {p0 .. p0}, Lgxl;->s()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic s$027(Lgxl;)Ljava/lang/String;
    .locals 1

    invoke-interface/range {p0 .. p0}, Lgxl;->s()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic w$036(Lgxl;Ljava/lang/Throwable;)V
    .locals 1

    invoke-interface/range {p0 .. p1}, Lgxl;->w(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic x$029(Lnah;Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 1

    invoke-interface/range {p0 .. p3}, Lnah;->x(Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method


# virtual methods
.method public final a(Leea;IJLkou;)V
    .locals 0

    invoke-virtual {p1}, Leea;->a()I

    iget-object p5, p0, Lepq;->d:Ljava/util/Map;

    invoke-interface {p5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lepd;

    if-eqz p5, :cond_0

    invoke-virtual {p5, p2}, Lgmp;->h(I)V

    iget-object p2, p0, Lepq;->j:Leqc;

    iget-object p1, p1, Leea;->v:Lgkr;

    iget-object p1, p1, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {p1}, Lgxl;->h()Lgxy;

    move-result-object p1

    iget p1, p1, Lgxy;->a:I

    invoke-interface {p2, p1, p3, p4}, Leqc;->g(IJ)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Shot hasn\'t been started yet!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final synthetic b(Lhjg;Lebd;)V
    .locals 0

    return-void
.end method

.method public final c(Leea;Lecq;)V
    .locals 2

    sget-object p2, Lepq;->a:Lnak;

    invoke-virtual {p2}, Lnaf;->c()Lnaz;

    move-result-object p2

    check-cast p2, Lnah;

    const/16 v0, 0x723

    invoke-interface {p2, v0}, Lnah;->G(I)Lnaz;

    move-result-object p2

    check-cast p2, Lnah;

    const-string v0, "onShotError %d"

    invoke-virtual {p1}, Leea;->a()I

    move-result v1

    invoke-interface {p2, v0, v1}, Lnah;->p(Ljava/lang/String;I)V

    iget-object p1, p1, Leea;->v:Lgkr;

    iget-object p1, p1, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {p1}, Lgxl;->h()Lgxy;

    move-result-object p1

    invoke-virtual {p0, p1}, Lepq;->d(Lgxy;)V

    return-void
.end method

.method public final d(Lgxy;)V
    .locals 4

    sget-object v0, Lepq;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "Abort shot %s"

    const/16 v2, 0x702

    invoke-static {v0, v1, p1, v2}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    iget-object v0, p0, Lepq;->c:Lkbc;

    const-string v1, "MotionBlur#abortShot"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lepq;->q:Lkad;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkad;->close()V

    iput-object v1, p0, Lepq;->q:Lkad;

    :cond_0
    iget-object v0, p0, Lepq;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leea;

    iget-object v3, v2, Leea;->v:Lgkr;

    iget-object v3, v3, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {v3}, Lgxl;->h()Lgxy;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v1, v2

    goto :goto_0

    :cond_2
    :goto_0
    if-nez v1, :cond_3

    sget-object p1, Lepq;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    const-string v0, "Shot not found."

    const/16 v1, 0x704

    invoke-static {p1, v0, v1}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    iget-object p1, p0, Lepq;->c:Lkbc;

    invoke-interface {p1}, Lkbc;->f()V

    return-void

    :cond_3
    invoke-virtual {v1}, Leea;->a()I

    iget-object p1, p0, Lepq;->d:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lepd;

    iget-object v0, p0, Lepq;->j:Leqc;

    new-instance v2, Leli;

    const/16 v3, 0xe

    invoke-direct {v2, p1, v3}, Leli;-><init>(Lepd;I)V

    invoke-interface {v0, v1, v2}, Leqc;->c(Leea;Ljava/lang/Runnable;)V

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lgmp;->b()V

    :cond_4
    iget-object p1, p0, Lepq;->c:Lkbc;

    invoke-interface {p1}, Lkbc;->f()V

    return-void
.end method

.method public final e(Leea;Lkeb;)V
    .locals 2

    invoke-virtual {p1}, Leea;->a()I

    iget-object v0, p0, Lepq;->c:Lkbc;

    const-string v1, "MotionBlur#addPayloadFrame"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lepq;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lepd;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lgmp;->c(Lkeb;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lepq;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v1, 0x706

    invoke-interface {v0, v1}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    invoke-virtual {p1}, Leea;->a()I

    move-result p1

    const-string v1, "addPayloadFrame: Shot not found! %d"

    invoke-interface {v0, v1, p1}, Lnah;->p(Ljava/lang/String;I)V

    invoke-interface {p2}, Lkeb;->close()V

    :goto_0
    iget-object p1, p0, Lepq;->c:Lkbc;

    invoke-interface {p1}, Lkbc;->f()V

    return-void
.end method

.method public final f(Leea;Lcom/google/googlex/gcam/BurstSpec;Lkou;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    invoke-virtual/range {p1 .. p1}, Leea;->a()I

    iget-object v1, v0, Lepq;->d:Ljava/util/Map;

    invoke-interface {v1, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lmoz;->p(Z)V

    iget-object v1, v15, Leea;->v:Lgkr;

    iget-object v1, v1, Lgkr;->d:Ljava/lang/Object;

    check-cast v1, Lfte;

    iget v1, v1, Lfte;->a:I

    iget-object v2, v0, Lepq;->n:Limq;

    iget-object v3, v0, Lepq;->g:Lfuz;

    iget-object v4, v0, Lepq;->p:Ljvs;

    iget-object v5, v0, Lepq;->o:Ldhi;

    invoke-static {v1, v2, v3, v4, v5}, Lcea;->b(ILimq;Lkli;Ljvs;Ldhi;)I

    move-result v10

    iget-object v1, v0, Lepq;->t:Lcvr;

    iget-object v3, v15, Leea;->v:Lgkr;

    iget-object v2, v0, Lepq;->s:Lgkf;

    invoke-virtual {v2}, Lgkf;->a()Lebb;

    move-result-object v4

    iget-object v8, v0, Lepq;->q:Lkad;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lepq;->m:Ljvs;

    invoke-interface {v2}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Leqg;

    new-instance v14, Lepd;

    iget-object v1, v1, Lcvr;->a:Ljava/lang/Object;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v2, v1

    check-cast v2, Ldqx;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    move-object v1, v14

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p1

    move-object/from16 v17, v14

    move-object/from16 v14, v16

    invoke-direct/range {v1 .. v14}, Lepd;-><init>(Ldqx;Lgkr;Lebb;Lcom/google/googlex/gcam/BurstSpec;Lkou;Leea;Lkad;Leqg;I[B[B[B[B)V

    iget-object v1, v0, Lepq;->d:Ljava/util/Map;

    move-object/from16 v2, v17

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, v0, Lepq;->q:Lkad;

    return-void
.end method

.method public final g(Lgxy;)V
    .locals 1

    iget-object v0, p0, Lepq;->u:Lcvr;

    invoke-virtual {v0, p1}, Lcvr;->K(Lgxy;)Leeb;

    move-result-object p1

    iget-object v0, p1, Leeb;->z:Lmwl;

    if-nez v0, :cond_0

    invoke-static {}, Lmwn;->D()Lmwl;

    move-result-object v0

    iput-object v0, p1, Leeb;->z:Lmwl;

    :cond_0
    iget-object v0, p1, Leeb;->z:Lmwl;

    invoke-virtual {v0, p0}, Lmwl;->g(Ljava/lang/Object;)V

    invoke-virtual {p1, p0}, Leeb;->f(Lecw;)V

    invoke-virtual {p1, p0}, Leeb;->a(Lecm;)V

    invoke-virtual {p1, p0}, Leeb;->c(Lecn;)V

    return-void
.end method

.method public final h(Leea;)V
    .locals 1

    invoke-virtual {p1}, Leea;->a()I

    iget-object v0, p0, Lepq;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Shot hasn\'t been started yet or was aborted"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final synthetic i(Leea;)V
    .locals 0

    return-void
.end method

.method public final j(Leea;JLcom/google/googlex/gcam/ShotMetadata;)V
    .locals 22

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    invoke-virtual/range {p1 .. p1}, Leea;->a()I

    sget-object v1, Lchy;->n:Lchy;

    const/16 v9, 0xe

    const/4 v10, 0x0

    :try_start_0
    iget-object v0, v7, Lepq;->c:Lkbc;

    const-string v2, "MotionBlur#onRawImageAvailable"

    invoke-interface {v0, v2}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v0, v7, Lepq;->d:Ljava/util/Map;

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lepd;

    if-nez v0, :cond_0

    sget-object v0, Lepq;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v2, 0x720

    invoke-interface {v0, v2}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v2, "Shot hasn\'t been started yet or was cancelled, return without processing."

    invoke-interface {v0, v2}, Lnah;->o(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    iget-object v0, v7, Lepq;->c:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    invoke-virtual/range {p1 .. p1}, Leea;->a()I

    iget-object v0, v7, Lepq;->l:Ljava/util/concurrent/Executor;

    new-instance v1, Lekf;

    invoke-direct {v1, v7, v8, v9}, Lekf;-><init>(Lepq;Leea;I)V

    :goto_0
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lepd;->a()Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v6, Leow;

    const/4 v3, 0x3

    invoke-direct {v6, v8, v2, v0, v3}, Leow;-><init>(Leea;Ljava/util/List;Lepd;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {v0}, Lgmp;->f()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkeb;

    iget-object v3, v7, Lepq;->i:Logd;

    invoke-interface {v3}, Logd;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lecd;

    iget-object v4, v7, Lepq;->r:Lgue;

    invoke-virtual {v4, v1}, Lgue;->a(Lkeb;)Lgli;

    move-result-object v1

    invoke-virtual {v1}, Lgli;->a()Lkfj;

    move-result-object v1

    invoke-interface {v1}, Lkfj;->c()Lkll;

    move-result-object v1

    invoke-interface {v3, v1}, Lecd;->a(Lkll;)I

    move-result v1

    iget-object v3, v7, Lepq;->k:Lcom/google/googlex/gcam/Gcam;

    invoke-virtual {v3, v1}, Lcom/google/googlex/gcam/Gcam;->b(I)Lcom/google/googlex/gcam/StaticMetadata;

    move-result-object v1

    iget-object v3, v0, Lgmp;->l:Lnph;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v11, 0x1f4

    invoke-virtual {v3, v11, v12, v4}, Lnph;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v21

    iget-object v3, v0, Lepd;->b:Leea;

    new-instance v4, Lcom/google/googlex/gcam/lasagna/LasagnaInputParamsImpl;

    invoke-static {v1}, Lcom/google/googlex/gcam/StaticMetadata;->a(Lcom/google/googlex/gcam/StaticMetadata;)J

    move-result-wide v12

    invoke-virtual {v3}, Leea;->b()Lcom/google/googlex/gcam/ShotParams;

    move-result-object v1

    iget-wide v14, v1, Lcom/google/googlex/gcam/ShotParams;->a:J

    invoke-static/range {p4 .. p4}, Lcom/google/googlex/gcam/ShotMetadata;->a(Lcom/google/googlex/gcam/ShotMetadata;)J

    move-result-wide v16

    move-object v11, v4

    move-wide/from16 v18, p2

    move-object/from16 v20, v2

    invoke-direct/range {v11 .. v21}, Lcom/google/googlex/gcam/lasagna/LasagnaInputParamsImpl;-><init>(JJJJLjava/util/List;I)V

    iput-object v4, v0, Lepd;->j:Lnsz;

    iget-object v4, v0, Lepd;->j:Lnsz;

    iget-object v1, v7, Lepq;->c:Lkbc;

    const-string v2, "MotionBlur#processingAsync"

    invoke-interface {v1, v2}, Lkbc;->a(Ljava/lang/String;)Lkbf;

    move-result-object v11

    iget-object v1, v7, Lepq;->j:Leqc;

    iget-object v3, v0, Lepd;->d:Leqg;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v2, p1

    move-object v5, v6

    move-object v12, v6

    move-object/from16 v6, p0

    :try_start_3
    invoke-interface/range {v1 .. v6}, Leqc;->b(Leea;Leqg;Lnsz;Ljava/lang/Runnable;Leqf;)Lnou;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Leea;->a()I

    new-instance v1, Lgwg;

    const/4 v2, 0x1

    invoke-direct {v1, v7, v11, v0, v2}, Lgwg;-><init>(Lepq;Lkbf;Lepd;I)V

    iget-object v0, v7, Lepq;->l:Ljava/util/concurrent/Executor;

    invoke-static {v10, v1, v0}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v0, v7, Lepq;->c:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v12, v6

    :goto_1
    move-object v1, v12

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v12, v6

    :goto_2
    move-object v1, v12

    goto :goto_3

    :cond_1
    :try_start_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "shot params not available yet"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    :goto_3
    :try_start_5
    instance-of v2, v0, Ljava/lang/InterruptedException;

    if-eqz v2, :cond_2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    sget-object v2, Lepq;->a:Lnak;

    invoke-virtual {v2}, Lnaf;->b()Lnaz;

    move-result-object v2

    check-cast v2, Lnah;

    invoke-interface {v2, v0}, Lnah;->h(Ljava/lang/Throwable;)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v2, 0x71d

    invoke-interface {v0, v2}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v2, "Error processing shot id %d."

    invoke-virtual/range {p1 .. p1}, Leea;->a()I

    move-result v3

    invoke-interface {v0, v2, v3}, Lnah;->p(Ljava/lang/String;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    iget-object v0, v7, Lepq;->c:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    if-nez v10, :cond_3

    invoke-virtual/range {p1 .. p1}, Leea;->a()I

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    iget-object v0, v7, Lepq;->l:Ljava/util/concurrent/Executor;

    new-instance v1, Lekf;

    invoke-direct {v1, v7, v8, v9}, Lekf;-><init>(Lepq;Leea;I)V

    goto/16 :goto_0

    :cond_3
    return-void

    :catchall_3
    move-exception v0

    :goto_4
    iget-object v2, v7, Lepq;->c:Lkbc;

    invoke-interface {v2}, Lkbc;->f()V

    if-nez v10, :cond_4

    invoke-virtual/range {p1 .. p1}, Leea;->a()I

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    iget-object v1, v7, Lepq;->l:Ljava/util/concurrent/Executor;

    new-instance v2, Lekf;

    invoke-direct {v2, v7, v8, v9}, Lekf;-><init>(Lepq;Leea;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_4
    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method

.method public k(Leea;Lmqp;)V
    .locals 5

    const v0, 0x3

    new-array v2, v0, [Ljava/lang/Object;

    const v0, 0x0

    aput-object p0, v2, v0

    const v0, 0x1

    aput-object p1, v2, v0

    const v0, 0x2

    aput-object p2, v2, v0

    const-string/jumbo v1, "ViD0O7HFUKh2J51M"

    invoke-static {v1, v2}, Lcom/pairip/VMRunner;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-void
.end method

.method public final l(Lepd;Landroid/graphics/Bitmap;Z)V
    .locals 2

    if-nez p3, :cond_1

    iget-object p3, p1, Lepd;->b:Leea;

    iget-object v0, p0, Lepq;->c:Lkbc;

    const-string v1, "rotate"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lepq;->f:Lgvb;

    iget p1, p1, Lepd;->e:I

    iget-object v1, p0, Lepq;->g:Lfuz;

    invoke-virtual {v1}, Lklw;->k()Lklv;

    move-result-object v1

    invoke-interface {v0, p2, p1, v1}, Lgvb;->a(Landroid/graphics/Bitmap;ILklv;)Landroid/graphics/Bitmap;

    move-result-object p2

    :cond_0
    iget-object p1, p0, Lepq;->c:Lkbc;

    const-string v0, "updateIndicator"

    invoke-interface {p1, v0}, Lkbc;->g(Ljava/lang/String;)V

    iget-object p1, p3, Leea;->v:Lgkr;

    iget-object p1, p1, Lgkr;->c:Ljava/lang/Object;

    const/4 p3, 0x0

    invoke-interface {p1, p2, p3}, Lgxl;->X(Landroid/graphics/Bitmap;I)V

    iget-object p1, p0, Lepq;->c:Lkbc;

    invoke-interface {p1}, Lkbc;->f()V

    return-void

    :cond_1
    iput-object p2, p1, Lepd;->i:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final n(Lgkr;)Ljava/util/concurrent/Future;
    .locals 9

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v0

    iget-object v1, p1, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {v1}, Lgxl;->h()Lgxy;

    move-result-object v1

    iget v1, v1, Lgxy;->a:I

    iget-object v1, p0, Lepq;->j:Leqc;

    invoke-interface {v1, p1, v0}, Leqc;->j(Lgkr;Lnph;)Lkad;

    move-result-object v1

    iput-object v1, p0, Lepq;->q:Lkad;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Motion Blur processor not available."

    invoke-static {v1, v2}, Lmoz;->q(ZLjava/lang/Object;)V

    new-instance v1, Lekf;

    const/16 v6, 0xf

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v1

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v3 .. v8}, Lekf;-><init>(Lepq;Lgkr;I[B[B)V

    iget-object p1, p0, Lepq;->l:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, p1}, Lnph;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public final o(Leea;Landroid/graphics/Bitmap;Lcom/google/googlex/gcam/ShotMetadata;)V
    .locals 4

    iget-object p3, p0, Lepq;->c:Lkbc;

    const-string v0, "onBitmapAvailable"

    invoke-interface {p3, v0}, Lkbc;->e(Ljava/lang/String;)V

    :try_start_0
    iget-object p3, p0, Lepq;->d:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lepd;

    if-nez p3, :cond_0

    sget-object p3, Lepq;->a:Lnak;

    invoke-virtual {p3}, Lnaf;->c()Lnaz;

    move-result-object p3

    check-cast p3, Lnah;

    const/16 v0, 0x715

    invoke-interface {p3, v0}, Lnah;->G(I)Lnaz;

    move-result-object p3

    check-cast p3, Lnah;

    const-string v0, "Ignoring thumbnail for shot %s."

    invoke-virtual {p1}, Leea;->a()I

    move-result p1

    invoke-interface {p3, v0, p1}, Lnah;->p(Ljava/lang/String;I)V

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lepq;->c:Lkbc;

    :goto_0
    invoke-interface {p1}, Lkbc;->f()V

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Leea;->a()I

    iget-object p1, p0, Lepq;->c:Lkbc;

    const-string v0, "crop"

    invoke-interface {p1, v0}, Lkbc;->e(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    const v2, 0x3f7ae148    # 0.98f

    mul-float p1, p1, v2

    float-to-int p1, p1

    sub-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-float v0, v0, v2

    float-to-int v0, v0

    sub-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    invoke-static {p2, v1, v3, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object p2, p0, Lepq;->c:Lkbc;

    const-string v0, "update"

    invoke-interface {p2, v0}, Lkbc;->g(Ljava/lang/String;)V

    iget-object p2, p3, Lepd;->d:Leqg;

    sget-object v0, Leqg;->b:Leqg;

    if-ne p2, v0, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {p0, p3, p1, p2}, Lepq;->l(Lepd;Landroid/graphics/Bitmap;Z)V

    iget-object p1, p0, Lepq;->c:Lkbc;

    invoke-interface {p1}, Lkbc;->f()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p1, p0, Lepq;->c:Lkbc;

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lepq;->c:Lkbc;

    invoke-interface {p2}, Lkbc;->f()V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public final p(Leea;)V
    .locals 3

    sget-object v0, Lepq;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v1, 0x722

    invoke-interface {v0, v1}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v1, "onShotAborted %d"

    invoke-virtual {p1}, Leea;->a()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lnah;->p(Ljava/lang/String;I)V

    iget-object p1, p1, Leea;->v:Lgkr;

    iget-object p1, p1, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {p1}, Lgxl;->h()Lgxy;

    move-result-object p1

    invoke-virtual {p0, p1}, Lepq;->d(Lgxy;)V

    return-void
.end method
