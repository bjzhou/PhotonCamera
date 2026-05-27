.class public final Lert;
.super Ljava/lang/Object;

# interfaces
.implements Lcgy;
.implements Lfaz;
.implements Lfan;
.implements Lfaq;
.implements Lfax;
.implements Lfav;
.implements Lfat;
.implements Lfay;
.implements Lezc;
.implements Lezh;
.implements Lezd;
.implements Lezo;
.implements Libh;
.implements Libi;
.implements Lgwo;


# static fields
.field public static final a:Lnak;


# instance fields
.field public A:Landroid/os/Parcelable;

.field public B:Ljava/io/Serializable;

.field public C:Z

.field public D:Z

.field public E:Z

.field public F:Lkad;

.field public final G:Lbnv;

.field public final H:Libj;

.field public final I:Ljwb;

.field public final J:Ljwb;

.field public final K:Ljwb;

.field public final L:Ljwb;

.field public final M:Loiw;

.field public final N:Logd;

.field public final O:Litm;

.field public final P:Lcom/google/android/apps/camera/ui/views/ViewfinderCover;

.field public final Q:Logd;

.field public final R:Lnph;

.field public final S:Lmqp;

.field public final T:Lcdi;

.field private final U:Lcdx;

.field private final V:Lhaf;

.field private final W:Lnou;

.field private final X:Lhyy;

.field private final Y:Landroid/content/ContentResolver;

.field private final Z:Landroid/content/Context;

.field private aA:Z

.field private aB:Z

.field private aC:Z

.field private aD:Z

.field private aE:Z

.field private final aF:Ldbf;

.field private final aG:Lhzo;

.field private final aH:Ljwb;

.field private final aI:Lhmb;

.field private final aJ:Lmqp;

.field private final aK:Lclc;

.field private final aL:Ljvs;

.field private final aM:Ljwb;

.field private final aN:Lenz;

.field private final aO:Lhfv;

.field private final aP:Lchg;

.field private final aQ:Lbnu;

.field private final aR:Liks;

.field private final aS:Lklx;

.field private final aT:Ligo;

.field private final aU:Lmrd;

.field private final aV:Lbkc;

.field private final aW:Lkns;

.field private final aX:Lcvr;

.field private final aY:Lgkr;

.field private final aZ:Lbkb;

.field private final aa:Ljuh;

.field private final ab:Ljava/util/concurrent/Executor;

.field private final ac:Lhkc;

.field private final ad:Lfbk;

.field private final ae:Lgft;

.field private final af:Lgzi;

.field private final ag:Lgzn;

.field private final ah:Landroid/view/Window;

.field private final ai:Lfak;

.field private final aj:Lgus;

.field private final ak:Loiw;

.field private final al:Z

.field private final am:Logd;

.field private an:Ldji;

.field private ao:Ldji;

.field private ap:Lmqp;

.field private aq:Lchj;

.field private final ar:Lhtl;

.field private final as:Lhtz;

.field private final at:Leoa;

.field private final au:Ljava/lang/Runnable;

.field private final av:Ljvs;

.field private final aw:Ljwb;

.field private final ax:Lhal;

.field private ay:Lika;

.field private az:Z

.field public final b:Lcom/google/android/apps/camera/bottombar/BottomBarController;

.field public final c:Landroid/content/Context;

.field public final d:Ldns;

.field public final e:Landroid/os/Handler;

.field public final f:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

.field public final g:Lkbx;

.field public final h:Ligx;

.field public final i:Landroid/content/res/Resources;

.field public final j:Lgzm;

.field public final k:Lkbc;

.field public final l:Loiw;

.field public final m:Ldhi;

.field public final n:Lihg;

.field public o:Lcha;

.field public p:Lchk;

.field public final q:Lmqp;

.field public final r:Logd;

.field public s:Lhjz;

.field public final t:Lfbz;

.field public final u:Lgeh;

.field public v:Z

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/legacy/app/app/CameraActivityControllerImpl"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lert;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;Landroid/content/res/Resources;Landroid/view/Window;Landroid/content/ContentResolver;Landroid/os/Handler;Lbkc;Lfak;Lei;Lcdi;Lcdx;Ljuh;Ljava/util/concurrent/Executor;Lbkb;ZLgft;Lklx;Lnou;Lkbx;Lfbk;Lgzi;Lgzm;Lgzn;Lhyy;Ligx;Lihg;Logd;Lhaf;Ldns;Lgus;Loiw;Lcvr;Lkbc;Lhkc;Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;Loiw;Lhtl;Lhtz;Lgkr;Ligo;Landroid/content/Intent;Lcom/google/android/apps/camera/bottombar/BottomBarController;Ldhi;Leoa;Lfbz;Libj;Lgeh;Ljava/lang/Runnable;Ljwb;Ljwb;Ljwb;Ljwb;Loiw;Logd;Ldbf;Litm;Lhzo;Ljvs;Ljwb;Lmqp;Logd;Logd;Lhal;Lnph;Ljwb;Liks;Lmqp;Lhmb;Lmqp;Lmrd;Lclc;Ljvs;Ljwb;Lkns;[B[B[B[B[B[B)V
    .locals 13

    move-object v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, p12

    move/from16 v3, p15

    move-object/from16 v4, p26

    move-object/from16 v5, p41

    move-object/from16 v6, p46

    move-object/from16 v7, p65

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v8, Lhjz;

    new-instance v9, Lkrf;

    invoke-direct {v9}, Lkrf;-><init>()V

    new-instance v10, Lkaz;

    invoke-direct {v10}, Lkaz;-><init>()V

    invoke-direct {v8, v9, v10}, Lhjz;-><init>(Lkrf;Lkbc;)V

    iput-object v8, v0, Lert;->s:Lhjz;

    const/4 v8, 0x0

    iput-boolean v8, v0, Lert;->v:Z

    iput-boolean v8, v0, Lert;->az:Z

    iput-boolean v8, v0, Lert;->w:Z

    iput-boolean v8, v0, Lert;->x:Z

    const/4 v9, 0x1

    iput-boolean v9, v0, Lert;->aA:Z

    iput-boolean v8, v0, Lert;->aB:Z

    iput-boolean v8, v0, Lert;->aE:Z

    new-instance v10, Lern;

    invoke-direct {v10, p0}, Lern;-><init>(Lert;)V

    iput-object v10, v0, Lert;->aN:Lenz;

    new-instance v10, Lhex;

    invoke-direct {v10, p0, v9}, Lhex;-><init>(Lert;I)V

    iput-object v10, v0, Lert;->aO:Lhfv;

    new-instance v10, Lerq;

    invoke-direct {v10, p0, v8}, Lerq;-><init>(Lert;I)V

    iput-object v10, v0, Lert;->aP:Lchg;

    new-instance v10, Lerr;

    invoke-direct {v10, p0, v8}, Lerr;-><init>(Lert;I)V

    iput-object v10, v0, Lert;->aQ:Lbnu;

    move-object v11, p1

    iput-object v11, v0, Lert;->c:Landroid/content/Context;

    move-object v11, p2

    iput-object v11, v0, Lert;->Z:Landroid/content/Context;

    move-object/from16 v11, p3

    iput-object v11, v0, Lert;->i:Landroid/content/res/Resources;

    move-object/from16 v11, p4

    iput-object v11, v0, Lert;->ah:Landroid/view/Window;

    move-object/from16 v11, p42

    iput-object v11, v0, Lert;->b:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    move-object/from16 v11, p5

    iput-object v11, v0, Lert;->Y:Landroid/content/ContentResolver;

    invoke-virtual/range {p12 .. p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v0, Lert;->aa:Ljuh;

    invoke-virtual/range {p13 .. p13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v11, p13

    iput-object v11, v0, Lert;->ab:Ljava/util/concurrent/Executor;

    iput-object v1, v0, Lert;->e:Landroid/os/Handler;

    invoke-virtual/range {p6 .. p6}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v11, p7

    iput-object v11, v0, Lert;->aV:Lbkc;

    invoke-virtual/range {p14 .. p14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v12, p14

    iput-object v12, v0, Lert;->aZ:Lbkb;

    move-object/from16 v12, p10

    iput-object v12, v0, Lert;->T:Lcdi;

    move-object/from16 v12, p8

    iput-object v12, v0, Lert;->ai:Lfak;

    invoke-virtual/range {p11 .. p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v12, p11

    iput-object v12, v0, Lert;->U:Lcdx;

    iput-boolean v3, v0, Lert;->al:Z

    invoke-virtual/range {p16 .. p16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v12, p16

    iput-object v12, v0, Lert;->ae:Lgft;

    invoke-virtual/range {p17 .. p17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v12, p17

    iput-object v12, v0, Lert;->aS:Lklx;

    move-object/from16 v12, p18

    iput-object v12, v0, Lert;->W:Lnou;

    invoke-virtual/range {p19 .. p19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v12, p19

    iput-object v12, v0, Lert;->g:Lkbx;

    invoke-virtual/range {p20 .. p20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v12, p20

    iput-object v12, v0, Lert;->ad:Lfbk;

    invoke-virtual/range {p21 .. p21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v12, p21

    iput-object v12, v0, Lert;->af:Lgzi;

    move-object/from16 v12, p22

    iput-object v12, v0, Lert;->j:Lgzm;

    move-object/from16 v12, p23

    iput-object v12, v0, Lert;->ag:Lgzn;

    invoke-virtual/range {p24 .. p24}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v12, p24

    iput-object v12, v0, Lert;->X:Lhyy;

    invoke-virtual/range {p25 .. p25}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v12, p25

    iput-object v12, v0, Lert;->h:Ligx;

    invoke-virtual/range {p28 .. p28}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v12, p28

    iput-object v12, v0, Lert;->V:Lhaf;

    invoke-virtual/range {p29 .. p29}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v12, p29

    iput-object v12, v0, Lert;->d:Ldns;

    iput-object v4, v0, Lert;->n:Lihg;

    move-object/from16 v12, p27

    iput-object v12, v0, Lert;->am:Logd;

    invoke-virtual/range {p37 .. p37}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v12, p37

    iput-object v12, v0, Lert;->ar:Lhtl;

    invoke-virtual/range {p38 .. p38}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v12, p38

    iput-object v12, v0, Lert;->as:Lhtz;

    invoke-virtual/range {p39 .. p39}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v12, p39

    iput-object v12, v0, Lert;->aY:Lgkr;

    move-object/from16 v12, p40

    iput-object v12, v0, Lert;->aT:Ligo;

    invoke-virtual/range {p30 .. p30}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v12, p30

    iput-object v12, v0, Lert;->aj:Lgus;

    invoke-virtual/range {p31 .. p31}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v12, p31

    iput-object v12, v0, Lert;->ak:Loiw;

    invoke-virtual/range {p33 .. p33}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v12, p33

    iput-object v12, v0, Lert;->k:Lkbc;

    move-object/from16 v12, p34

    iput-object v12, v0, Lert;->ac:Lhkc;

    invoke-virtual/range {p32 .. p32}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v12, p32

    iput-object v12, v0, Lert;->aX:Lcvr;

    move-object/from16 v12, p35

    iput-object v12, v0, Lert;->f:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

    invoke-virtual/range {p36 .. p36}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v12, p36

    iput-object v12, v0, Lert;->l:Loiw;

    move-object/from16 v12, p43

    iput-object v12, v0, Lert;->m:Ldhi;

    invoke-virtual/range {p44 .. p44}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v12, p44

    iput-object v12, v0, Lert;->at:Leoa;

    move-object/from16 v12, p45

    iput-object v12, v0, Lert;->t:Lfbz;

    iput-object v6, v0, Lert;->H:Libj;

    move-object/from16 v12, p47

    iput-object v12, v0, Lert;->u:Lgeh;

    move-object/from16 v12, p48

    iput-object v12, v0, Lert;->au:Ljava/lang/Runnable;

    move-object/from16 v12, p49

    iput-object v12, v0, Lert;->I:Ljwb;

    move-object/from16 v12, p50

    iput-object v12, v0, Lert;->K:Ljwb;

    move-object/from16 v12, p51

    iput-object v12, v0, Lert;->J:Ljwb;

    move-object/from16 v12, p52

    iput-object v12, v0, Lert;->L:Ljwb;

    move-object/from16 v12, p53

    iput-object v12, v0, Lert;->M:Loiw;

    move-object/from16 v12, p54

    iput-object v12, v0, Lert;->N:Logd;

    move-object/from16 v12, p55

    iput-object v12, v0, Lert;->aF:Ldbf;

    move-object/from16 v12, p56

    iput-object v12, v0, Lert;->O:Litm;

    move-object/from16 v12, p57

    iput-object v12, v0, Lert;->aG:Lhzo;

    iget-object v4, v4, Lihg;->e:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;

    iput-object v4, v0, Lert;->P:Lcom/google/android/apps/camera/ui/views/ViewfinderCover;

    move-object/from16 v4, p58

    iput-object v4, v0, Lert;->av:Ljvs;

    move-object/from16 v4, p59

    iput-object v4, v0, Lert;->aw:Ljwb;

    move-object/from16 v4, p60

    iput-object v4, v0, Lert;->q:Lmqp;

    move-object/from16 v4, p61

    iput-object v4, v0, Lert;->r:Logd;

    move-object/from16 v4, p62

    iput-object v4, v0, Lert;->Q:Logd;

    move-object/from16 v4, p63

    iput-object v4, v0, Lert;->ax:Lhal;

    move-object/from16 v4, p64

    iput-object v4, v0, Lert;->R:Lnph;

    iput-object v7, v0, Lert;->aH:Ljwb;

    move-object/from16 v4, p66

    iput-object v4, v0, Lert;->aR:Liks;

    move-object/from16 v4, p67

    iput-object v4, v0, Lert;->S:Lmqp;

    move-object/from16 v4, p68

    iput-object v4, v0, Lert;->aI:Lhmb;

    move-object/from16 v4, p69

    iput-object v4, v0, Lert;->aJ:Lmqp;

    move-object/from16 v4, p70

    iput-object v4, v0, Lert;->aU:Lmrd;

    move-object/from16 v4, p71

    iput-object v4, v0, Lert;->aK:Lclc;

    move-object/from16 v4, p72

    iput-object v4, v0, Lert;->aL:Ljvs;

    move-object/from16 v4, p73

    iput-object v4, v0, Lert;->aM:Ljwb;

    move-object/from16 v4, p74

    iput-object v4, v0, Lert;->aW:Lkns;

    invoke-static/range {p7 .. p7}, Lcdg;->p(Lbkc;)Z

    move-result v4

    const-string v11, "open_socialshare"

    invoke-virtual {v5, v11, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_0

    if-nez v3, :cond_0

    if-nez v4, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    :goto_0
    iput-boolean v11, v0, Lert;->C:Z

    if-eqz v11, :cond_1

    const-string v11, "filmstrip_item_data"

    invoke-virtual {v5, v11}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v11, v0, Lert;->A:Landroid/os/Parcelable;

    const-string v11, "filmstrip_item_type"

    invoke-virtual {v5, v11}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v11, v0, Lert;->B:Ljava/io/Serializable;

    :cond_1
    const-string v11, "open_filmstrip"

    invoke-virtual {v5, v11, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_2

    if-nez v3, :cond_2

    if-nez v4, :cond_2

    const/4 v11, 0x1

    goto :goto_1

    :cond_2
    const/4 v11, 0x0

    :goto_1
    iput-boolean v11, v0, Lert;->D:Z

    const-string v11, "open_empty_vault"

    invoke-virtual {v5, v11, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_3

    if-nez v3, :cond_3

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    :goto_2
    iput-boolean v9, v0, Lert;->aC:Z

    const-string v3, "open_mars"

    invoke-virtual {v5, v3, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v0, Lert;->aD:Z

    new-instance v3, Ldsk;

    const/16 v4, 0xb

    invoke-direct {v3, p0, v4}, Ldsk;-><init>(Lert;I)V

    invoke-interface {v7, v3, v2}, Ljwb;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    new-instance v2, Ljava/lang/ref/WeakReference;

    move-object/from16 v3, p9

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v2, Lbnv;

    invoke-direct {v2, v10, v1}, Lbnv;-><init>(Lbnu;Landroid/os/Handler;)V

    iput-object v2, v0, Lert;->G:Lbnv;

    invoke-interface {v6, p0}, Libj;->i(Libh;)V

    invoke-interface {v6, p0}, Libj;->k(Libi;)V

    return-void
.end method

.method private final F()I
    .locals 1

    iget-boolean v0, p0, Lert;->x:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final G(Z)V
    .locals 2

    iget-object v0, p0, Lert;->W:Lnou;

    invoke-static {v0}, Ljvd;->r(Lnou;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcgu;

    if-nez v0, :cond_0

    return-void

    :cond_0
    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lcgu;->e:Lkll;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lkll;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcgu;->g(I)V

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0, p1}, Lcgu;->m(Z)V

    const/4 p1, 0x0

    iput-object p1, v0, Lcgu;->d:Lbne;

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private final H(Lika;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V
    .locals 3

    iget-boolean v0, p0, Lert;->az:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lert;->ay:Lika;

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lert;->az:Z

    iget-object v0, p0, Lert;->k:Lkbc;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "doSelectMode "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lert;->f:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->d()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lert;->f:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->c()V

    :cond_2
    iget-object v0, p0, Lert;->ac:Lhkc;

    invoke-interface {v0}, Lhkc;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhjz;

    iput-object v0, p0, Lert;->s:Lhjz;

    invoke-virtual {p1}, Lika;->name()Ljava/lang/String;

    iget-object v0, v0, Lhjz;->o:Ljfc;

    iget-object v0, p0, Lert;->p:Lchk;

    sget-object v1, Lika;->l:Lika;

    invoke-virtual {v0}, Lchk;->j()V

    invoke-virtual {v0}, Lchk;->q()V

    iget-object v0, p0, Lert;->o:Lcha;

    check-cast v0, Lcie;

    iget-object v2, v0, Lcie;->g:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->removeAllViews()V

    :cond_3
    if-eq p1, v1, :cond_4

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcie;->j(Z)V

    goto :goto_1

    :cond_4
    iget-object v1, v0, Lcie;->i:Liff;

    invoke-interface {v1}, Liff;->F()V

    :goto_1
    const/4 v1, 0x0

    iput-object v1, v0, Lcie;->o:Lidu;

    iget-object v0, v0, Lcie;->n:Lcom/google/android/apps/camera/ui/wirers/PreviewOverlay;

    iput-object v1, v0, Lcom/google/android/apps/camera/ui/wirers/PreviewOverlay;->a:Landroid/view/GestureDetector;

    iput-object v1, v0, Lcom/google/android/apps/camera/ui/wirers/PreviewOverlay;->b:Landroid/view/View$OnTouchListener;

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v0

    iget-object v2, p0, Lert;->ay:Lika;

    invoke-direct {p0, v2}, Lert;->P(Lika;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-direct {p0, p1}, Lert;->P(Lika;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v1, Lerl;

    invoke-direct {v1, p0, p1, v0}, Lerl;-><init>(Lert;Lika;Lnph;)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v0, v1}, Lnph;->e(Ljava/lang/Object;)Z

    :goto_2
    new-instance p2, Lcoi;

    const/4 v1, 0x5

    invoke-direct {p2, p0, p1, v1}, Lcoi;-><init>(Lert;Lika;I)V

    invoke-static {v0, p2, p3}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    iget-object p1, p0, Lert;->k:Lkbc;

    invoke-interface {p1}, Lkbc;->f()V

    return-void
.end method

.method private final I(ILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lert;->aV:Lbkc;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lbkc;->a:Ljava/lang/Object;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    const-string p1, "CameraActivityController: Intent completed with a valid result. Closing activity."

    invoke-virtual {p0, p1}, Lert;->u(Ljava/lang/String;)V

    return-void
.end method

.method private final J()V
    .locals 2

    iget-object v0, p0, Lert;->k:Lkbc;

    const-string v1, "resetSettingsOnModeChange"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lert;->aU:Lmrd;

    invoke-virtual {v0}, Lmrd;->i()V

    iget-object v0, p0, Lert;->aI:Lhmb;

    invoke-virtual {v0}, Lhmb;->c()V

    iget-object v0, p0, Lert;->k:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    return-void
.end method

.method private final K()V
    .locals 3

    iget-object v0, p0, Lert;->k:Lkbc;

    const-string v1, "resetStartupSettingsForAllModules"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lert;->aF:Ldbf;

    iget-object v1, v0, Ldbf;->a:Lklv;

    invoke-virtual {v0, v1}, Ldbf;->g(Lklv;)V

    iget-object v0, p0, Lert;->aw:Ljwb;

    sget-object v1, Lgyu;->e:Lgyu;

    invoke-interface {v0, v1}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object v0, p0, Lert;->au:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lert;->aK:Lclc;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lclc;->d:Z

    iget-object v0, p0, Lert;->aI:Lhmb;

    invoke-virtual {v0}, Lhmb;->c()V

    iget-object v0, p0, Lert;->aU:Lmrd;

    invoke-virtual {v0}, Lmrd;->i()V

    iget-object v0, p0, Lert;->S:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lert;->S:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lckq;

    :cond_0
    iget-object v0, p0, Lert;->aJ:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lert;->aJ:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhlz;

    invoke-interface {v0}, Lhlz;->c()V

    :cond_1
    iget-object v0, p0, Lert;->j:Lgzm;

    sget-object v2, Lgzd;->at:Lgzr;

    invoke-interface {v0, v2}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lert;->aG:Lhzo;

    invoke-virtual {v0, v1}, Lhzo;->f(Z)V

    iget-object v0, p0, Lert;->l:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhsl;

    invoke-interface {v0}, Lhsl;->h()V

    :cond_2
    iget-object v0, p0, Lert;->k:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    return-void
.end method

.method private final L(Lika;)V
    .locals 1

    sget-object v0, Lhmu;->a:Lhmu;

    sget-object v0, Lika;->a:Lika;

    invoke-virtual {p1}, Lika;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return-void

    :pswitch_1
    iget-object p1, p0, Lert;->as:Lhtz;

    invoke-virtual {p1}, Lhtm;->q()V

    return-void

    :pswitch_2
    iget-object p1, p0, Lert;->as:Lhtz;

    invoke-virtual {p1}, Lhtm;->m()V

    return-void

    :pswitch_3
    iget-object p1, p0, Lert;->as:Lhtz;

    invoke-virtual {p1}, Lhtm;->d()V

    return-void

    :pswitch_4
    iget-object p1, p0, Lert;->as:Lhtz;

    invoke-virtual {p1}, Lhtm;->o()V

    return-void

    :pswitch_5
    iget-object p1, p0, Lert;->as:Lhtz;

    invoke-virtual {p1}, Lhtm;->c()V

    return-void

    :pswitch_6
    iget-object p1, p0, Lert;->as:Lhtz;

    invoke-virtual {p1}, Lhtm;->i()V

    return-void

    :pswitch_7
    iget-object p1, p0, Lert;->as:Lhtz;

    invoke-virtual {p1}, Lhtm;->l()V

    return-void

    :pswitch_8
    iget-object p1, p0, Lert;->as:Lhtz;

    invoke-virtual {p1}, Lhtm;->n()V

    return-void

    :pswitch_9
    iget-object p1, p0, Lert;->as:Lhtz;

    invoke-virtual {p1}, Lhtm;->b()V

    return-void

    :pswitch_a
    iget-object p1, p0, Lert;->as:Lhtz;

    invoke-virtual {p1}, Lhtm;->j()V

    return-void

    :pswitch_b
    iget-object p1, p0, Lert;->as:Lhtz;

    invoke-virtual {p1}, Lhtm;->p()V

    return-void

    :pswitch_c
    iget-object p1, p0, Lert;->as:Lhtz;

    invoke-virtual {p1}, Lhtm;->k()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final M(I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lert;->o:Lcha;

    check-cast p1, Lcie;

    iget-object p1, p1, Lcie;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    return-void

    :cond_0
    iget-object p1, p0, Lert;->o:Lcha;

    check-cast p1, Lcie;

    iget-object p1, p1, Lcie;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    return-void
.end method

.method private final N()Z
    .locals 1

    iget-object v0, p0, Lert;->aV:Lbkc;

    invoke-static {v0}, Lcdg;->p(Lbkc;)Z

    move-result v0

    return v0
.end method

.method private final O()Z
    .locals 1

    iget-object v0, p0, Lert;->r:Logd;

    invoke-interface {v0}, Logd;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lchh;

    invoke-interface {v0}, Lchh;->i()Z

    move-result v0

    return v0
.end method

.method private final P(Lika;)Z
    .locals 1

    iget-object v0, p0, Lert;->aZ:Lbkb;

    invoke-virtual {v0, p1}, Lbkb;->V(Lika;)Lgxb;

    move-result-object p1

    iget-object p1, p1, Lgxb;->a:Ljava/lang/Object;

    check-cast p1, Lgxb;

    invoke-virtual {p1}, Lgxb;->g()Z

    move-result p1

    return p1
.end method

.method private final declared-synchronized Q()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lert;->ap:Lmqp;

    if-nez v0, :cond_0

    iget-object v0, p0, Lert;->c:Landroid/content/Context;

    invoke-static {v0}, Lbze;->k(Landroid/content/Context;)Lmqp;

    move-result-object v0

    iput-object v0, p0, Lert;->ap:Lmqp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final R()V
    .locals 3

    iget-object v0, p0, Lert;->k:Lkbc;

    const-string v1, "setupCameraFacingFromIntent"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lert;->aV:Lbkc;

    invoke-virtual {v0}, Lbkc;->e()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcdg;->h(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lert;->k:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    return-void

    :cond_0
    iget-object v0, p0, Lert;->aV:Lbkc;

    invoke-virtual {v0}, Lbkc;->e()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcdg;->j(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lert;->aS:Lklx;

    sget-object v1, Lklv;->a:Lklv;

    invoke-virtual {v0, v1}, Lklx;->e(Lklv;)Lkll;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    iget-object v0, p0, Lert;->aS:Lklx;

    sget-object v1, Lklv;->b:Lklv;

    invoke-virtual {v0, v1}, Lklx;->e(Lklv;)Lkll;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    iget-object v0, p0, Lert;->aS:Lklx;

    invoke-virtual {v0}, Lklx;->b()Lkll;

    move-result-object v0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lert;->aF:Ldbf;

    iget-object v0, v0, Lkll;->a:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lklv;->b:Lklv;

    goto :goto_1

    :cond_4
    sget-object v0, Lklv;->a:Lklv;

    :goto_1
    invoke-virtual {v1, v0}, Ldbf;->g(Lklv;)V

    iget-object v0, p0, Lert;->k:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 3

    iget-object v0, p0, Lert;->p:Lchk;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lchk;->j()V

    iget-object v0, p0, Lert;->p:Lchk;

    invoke-virtual {v0}, Lchk;->q()V

    iget-object v0, p0, Lert;->p:Lchk;

    new-instance v1, Leli;

    const/16 v2, 0x14

    invoke-direct {v1, p0, v2}, Leli;-><init>(Lert;I)V

    invoke-virtual {v0, v1}, Lchk;->s(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lert;->E:Z

    iget-object v1, p0, Lert;->aZ:Lbkb;

    iget-object v2, p0, Lert;->ay:Lika;

    invoke-virtual {v1, v2}, Lbkb;->V(Lika;)Lgxb;

    move-result-object v1

    iget-object v1, v1, Lgxb;->a:Ljava/lang/Object;

    check-cast v1, Lgxb;

    invoke-virtual {v1}, Lgxb;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lert;->G(Z)V

    return-void

    :cond_1
    iget-object v0, p0, Lert;->g:Lkbx;

    invoke-interface {v0}, Lkbx;->b()V

    return-void
.end method

.method public final B(Z)V
    .locals 1

    iget-object v0, p0, Lert;->p:Lchk;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lchk;->cb(Z)V

    :cond_0
    return-void
.end method

.method public final C(Lika;)V
    .locals 3

    iget-object v0, p0, Lert;->k:Lkbc;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "setModuleFromMode "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    invoke-static {}, Ljuh;->a()V

    invoke-virtual {p0}, Lert;->v()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lert;->k:Lkbc;

    invoke-interface {p1}, Lkbc;->f()V

    return-void

    :cond_0
    iget-object v0, p0, Lert;->aZ:Lbkb;

    invoke-virtual {v0, p1}, Lbkb;->V(Lika;)Lgxb;

    move-result-object v0

    invoke-direct {p0, p1}, Lert;->P(Lika;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lert;->G(Z)V

    :cond_1
    iput-object p1, p0, Lert;->ay:Lika;

    invoke-direct {p0, p1}, Lert;->L(Lika;)V

    iget-object v1, p0, Lert;->aH:Ljwb;

    sget-object v2, Lfmg;->a:Lfmg;

    invoke-interface {v1, v2}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object v1, p0, Lert;->T:Lcdi;

    invoke-virtual {v1}, Lcdi;->i()Ljuf;

    move-result-object v1

    iget-object v0, v0, Lgxb;->b:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lchk;

    invoke-virtual {v1, v0}, Ljuf;->d(Lkad;)V

    iput-object v0, p0, Lert;->p:Lchk;

    invoke-virtual {v0}, Lchk;->cc()V

    iget-object v0, p0, Lert;->s:Lhjz;

    invoke-virtual {v0}, Lhjz;->c()V

    iget-object v0, p0, Lert;->k:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    iget-object v0, p0, Lert;->Q:Logd;

    invoke-interface {v0}, Logd;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lipk;

    invoke-interface {v0}, Lipk;->f()V

    iget-object v0, p0, Lert;->p:Lchk;

    new-instance v1, Lekf;

    const/16 v2, 0x10

    invoke-direct {v1, p0, p1, v2}, Lekf;-><init>(Lert;Lika;I)V

    invoke-virtual {v0, v1}, Lchk;->s(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final D()V
    .locals 2

    iget-object v0, p0, Lert;->p:Lchk;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lert;->F()I

    move-result v0

    invoke-direct {p0, v0}, Lert;->M(I)V

    iget-object v1, p0, Lert;->p:Lchk;

    invoke-virtual {v1, v0}, Lchk;->ca(I)V

    return-void
.end method

.method public final E()I
    .locals 1

    iget-object v0, p0, Lert;->ay:Lika;

    invoke-static {v0}, Lijy;->e(Lika;)I

    move-result v0

    return v0
.end method

.method public final a(I)V
    .locals 2

    sget-object v0, Lert;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v1, 0x74f

    invoke-interface {v0, v1}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v1, "Camera disabled: %d"

    invoke-interface {v0, v1, p1}, Lnah;->p(Ljava/lang/String;I)V

    iget-object p1, p0, Lert;->d:Ldns;

    invoke-interface {p1}, Ldns;->d()V

    return-void
.end method

.method public final b(Lbne;)V
    .locals 3

    iget-boolean v0, p0, Lert;->z:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lert;->G(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lert;->aZ:Lbkb;

    iget-object v2, p0, Lert;->ay:Lika;

    invoke-virtual {v0, v2}, Lbkb;->V(Lika;)Lgxb;

    move-result-object v0

    iget-object v0, v0, Lgxb;->a:Ljava/lang/Object;

    check-cast v0, Lgxb;

    invoke-virtual {v0}, Lgxb;->g()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, v1}, Lert;->G(Z)V

    sget-object v0, Lert;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v1, 0x753

    invoke-interface {v0, v1}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    iget-object v1, p0, Lert;->ay:Lika;

    invoke-virtual {p1}, Lbne;->a()I

    move-result p1

    const-string v2, "Camera opened but the module shouldn\'t be requesting. Close & return. mode=%s camera=%s"

    invoke-interface {v0, v2, v1, p1}, Lnah;->x(Ljava/lang/String;Ljava/lang/Object;I)V

    return-void

    :cond_1
    iget-object v0, p0, Lert;->p:Lchk;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lbne;->f()Lbnw;

    move-result-object v0

    iput v1, v0, Lbnw;->q:I

    invoke-virtual {p1, v0}, Lbne;->m(Lbnw;)V

    :try_start_0
    iget-object v0, p0, Lert;->p:Lchk;

    invoke-virtual {v0, p1}, Lchk;->d(Lbne;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    sget-object v0, Lert;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v1, "Error connecting to camera"

    const/16 v2, 0x752

    invoke-static {v0, v1, v2, p1}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    iget-object v0, p0, Lert;->d:Ldns;

    invoke-interface {v0, p1}, Ldns;->f(Ljava/lang/Throwable;)V

    return-void

    :cond_2
    return-void
.end method

.method public final bK()V
    .locals 3

    iget-object v0, p0, Lert;->Y:Landroid/content/ContentResolver;

    iget-object v1, p0, Lert;->an:Ldji;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lert;->Y:Landroid/content/ContentResolver;

    iget-object v1, p0, Lert;->ao:Ldji;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lert;->o:Lcha;

    check-cast v0, Lcie;

    iget-object v1, v0, Lcie;->w:Landroid/hardware/display/DisplayManager;

    iget-object v2, v0, Lcie;->l:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    iget-object v0, v0, Lcie;->j:Ldms;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ldms;->a(Lcom/google/android/apps/camera/debugui/DebugCanvasView;)V

    return-void
.end method

.method public final bL(Landroid/content/Intent;)V
    .locals 5

    iget-object v0, p0, Lert;->aV:Lbkc;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lbkc;->a:Ljava/lang/Object;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lert;->aA:Z

    iget-object v2, p0, Lert;->ar:Lhtl;

    invoke-virtual {v2}, Lhir;->g()V

    iget-object v2, p0, Lert;->ar:Lhtl;

    invoke-static {v2}, Ljcb;->k(Lhis;)V

    iget-object v2, p0, Lert;->ar:Lhtl;

    invoke-virtual {v2}, Lhir;->f()V

    iget-object v2, p0, Lert;->aF:Ldbf;

    invoke-virtual {v2}, Ldbf;->j()Z

    move-result v2

    invoke-static {p1}, Lcdg;->j(Landroid/content/Intent;)Z

    move-result v3

    if-eq v2, v3, :cond_0

    iput-boolean v1, p0, Lert;->az:Z

    :cond_0
    invoke-static {p1}, Lcdg;->i(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lert;->ag:Lgzn;

    sget-object v2, Lgzd;->i:Lgzs;

    iget-object v3, p0, Lert;->m:Ldhi;

    sget-object v4, Ldho;->t:Ldhk;

    invoke-interface {v3, v4}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object v3

    invoke-virtual {v3}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {p1, v2, v3}, Lgzn;->e(Lgzb;Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p0}, Lert;->x()Lika;

    move-result-object p1

    iget-object v2, p0, Lert;->H:Libj;

    invoke-interface {v2, p1}, Libj;->s(Lika;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lert;->H:Libj;

    invoke-interface {v2, v1}, Libj;->l(Z)V

    :cond_2
    sget-object v2, Lika;->b:Lika;

    invoke-virtual {p1, v2}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lika;->name()Ljava/lang/String;

    iput-boolean v1, p0, Lert;->az:Z

    iput-boolean v3, p0, Lert;->v:Z

    :cond_3
    invoke-direct {p0}, Lert;->K()V

    invoke-direct {p0}, Lert;->R()V

    sget-object v1, Lnnv;->a:Lnnv;

    invoke-direct {p0, p1, v1, v1}, Lert;->H(Lika;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V

    iget-object p1, p0, Lert;->O:Litm;

    iget-object v1, p0, Lert;->aV:Lbkc;

    invoke-virtual {v1}, Lbkc;->e()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcdg;->o(Landroid/content/Intent;)Z

    move-result v1

    invoke-interface {p1, v1}, Litm;->B(Z)V

    iget-object p1, p0, Lert;->O:Litm;

    move-object v1, p1

    check-cast v1, Lisi;

    iget-boolean v1, v1, Lisi;->S:Z

    if-nez v1, :cond_4

    invoke-interface {p1}, Litm;->n()V

    goto :goto_0

    :cond_4
    invoke-interface {p1}, Litm;->p()V

    :goto_0
    iget-boolean p1, p0, Lert;->z:Z

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lert;->aA:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lert;->o:Lcha;

    invoke-interface {p1}, Lcha;->i()V

    iput-boolean v3, p0, Lert;->aA:Z

    :cond_5
    iget-object p1, p0, Lert;->Z:Landroid/content/Context;

    const-class v1, Landroid/content/pm/ShortcutManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ShortcutManager;

    iget-object v1, p0, Lert;->aV:Lbkc;

    invoke-virtual {v1}, Lbkc;->e()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcdg;->j(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "selfie"

    invoke-virtual {p1, v1}, Landroid/content/pm/ShortcutManager;->reportShortcutUsed(Ljava/lang/String;)V

    :cond_6
    if-eqz v0, :cond_7

    const-string v1, "android.media.action.VIDEO_CAMERA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "video"

    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutManager;->reportShortcutUsed(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public final bM()V
    .locals 6

    iget-object v0, p0, Lert;->k:Lkbc;

    const-string v1, "CameraActivityController.onPause"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lert;->y:Z

    invoke-direct {p0}, Lert;->O()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lert;->X:Lhyy;

    invoke-virtual {v1}, Lhyy;->c()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lert;->al:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lert;->p:Lchk;

    invoke-virtual {v1}, Lchk;->v()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lert;->o:Lcha;

    check-cast v1, Lcie;

    iget-object v2, v1, Lcie;->e:Lcom/google/android/apps/camera/ui/views/ViewfinderCover;

    iget-object v2, v2, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->g:Libg;

    iget v3, v2, Libg;->r:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    iget-object v5, v2, Libg;->s:Ljwb;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, v3}, Ljwb;->bn(Ljava/lang/Object;)V

    iput v4, v2, Libg;->r:I

    :cond_0
    iget-object v3, v2, Libg;->c:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->cancel()V

    iget-object v3, v2, Libg;->f:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object v3, v2, Libg;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    sget-object v3, Lika;->a:Lika;

    iput-object v3, v2, Libg;->u:Lika;

    sget-object v3, Lmpx;->a:Lmpx;

    iput-object v3, v2, Libg;->k:Lmqp;

    iput v0, v2, Libg;->F:I

    invoke-virtual {v2}, Libg;->h()V

    iget-object v1, v1, Lcie;->e:Lcom/google/android/apps/camera/ui/views/ViewfinderCover;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->k()V

    iput-boolean v0, p0, Lert;->aE:Z

    iget-object v1, p0, Lert;->k:Lkbc;

    invoke-interface {v1}, Lkbc;->h()V

    :cond_1
    iget-object v1, p0, Lert;->at:Leoa;

    iget-object v2, p0, Lert;->aN:Lenz;

    invoke-virtual {v1, v2}, Leoa;->b(Lenz;)V

    iget-object v1, p0, Lert;->an:Ldji;

    const/4 v2, 0x0

    iput-object v2, v1, Ldji;->b:Lgoz;

    invoke-virtual {v1, v0}, Ldji;->a(Z)V

    iget-object v1, p0, Lert;->ao:Ldji;

    invoke-virtual {v1, v0}, Ldji;->a(Z)V

    iget-object v1, p0, Lert;->p:Lchk;

    invoke-virtual {v1}, Lchk;->j()V

    iget-object v1, p0, Lert;->r:Logd;

    invoke-interface {v1}, Logd;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lchh;

    invoke-interface {v1}, Lchh;->i()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lert;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->c()Lnaz;

    move-result-object v1

    const-string v2, "Disconnecting the camera device because filmstrip was launched."

    const/16 v3, 0x75b

    invoke-static {v1, v2, v3}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    iget-object v1, p0, Lert;->g:Lkbx;

    invoke-interface {v1}, Lkbx;->a()V

    iput-boolean v0, p0, Lert;->E:Z

    iget-object v0, p0, Lert;->p:Lchk;

    invoke-virtual {v0}, Lchk;->q()V

    :cond_2
    iget-object v0, p0, Lert;->aV:Lbkc;

    invoke-virtual {v0}, Lbkc;->e()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcdg;->a(Landroid/content/Intent;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3

    iget-object v0, p0, Lert;->aR:Liks;

    invoke-virtual {v0}, Liks;->a()V

    :cond_3
    iget-object v0, p0, Lert;->k:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    return-void
.end method

.method public final bN()V
    .locals 4

    iget-object v0, p0, Lert;->k:Lkbc;

    const-string v1, "CameraActivityController.onResume"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lert;->y:Z

    iget-object v1, p0, Lert;->at:Leoa;

    iget-object v2, p0, Lert;->aN:Lenz;

    invoke-virtual {v1, v2}, Leoa;->a(Lenz;)V

    iget-object v1, p0, Lert;->ar:Lhtl;

    invoke-virtual {v1}, Lhir;->b()V

    invoke-direct {p0}, Lert;->O()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lert;->E:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lert;->p:Lchk;

    invoke-virtual {v1}, Lchk;->ce()V

    :cond_0
    iget-object v1, p0, Lert;->p:Lchk;

    invoke-virtual {v1}, Lchk;->m()V

    :cond_1
    iput-boolean v0, p0, Lert;->E:Z

    iget-object v1, p0, Lert;->n:Lihg;

    iget-object v1, v1, Lihg;->l:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lert;->f:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->c()V

    :cond_2
    iget-boolean v1, p0, Lert;->aE:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lert;->o:Lcha;

    sget-object v2, Lika;->a:Lika;

    invoke-interface {v1}, Lcha;->n()V

    iput-boolean v0, p0, Lert;->aE:Z

    :cond_3
    iput-boolean v0, p0, Lert;->aA:Z

    iget-object v1, p0, Lert;->ao:Ldji;

    iget-boolean v1, v1, Ldji;->a:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lert;->an:Ldji;

    iget-boolean v1, v1, Ldji;->a:Z

    if-eqz v1, :cond_5

    :cond_4
    iget-object v1, p0, Lert;->T:Lcdi;

    invoke-virtual {v1}, Lcdi;->g()Z

    move-result v1

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lert;->al:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lert;->aq:Lchj;

    invoke-interface {v1}, Lchj;->g()Lnou;

    :cond_5
    iget-object v1, p0, Lert;->an:Ldji;

    invoke-virtual {v1, v0}, Ldji;->a(Z)V

    iget-object v1, p0, Lert;->ao:Ldji;

    invoke-virtual {v1, v0}, Ldji;->a(Z)V

    iget-object v0, p0, Lert;->aV:Lbkc;

    invoke-virtual {v0}, Lbkc;->e()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcdg;->a(Landroid/content/Intent;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-ltz v2, :cond_6

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v3, v0, v2

    if-gtz v3, :cond_6

    iget-object v3, p0, Lert;->aR:Liks;

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_6

    cmpg-float v1, v0, v2

    if-gtz v1, :cond_6

    invoke-virtual {v3, v0}, Liks;->d(F)V

    iget v0, v3, Liks;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v3, Liks;->a:I

    :cond_6
    iget-object v0, p0, Lert;->k:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    return-void
.end method

.method public final bO()V
    .locals 9

    iget-object v0, p0, Lert;->k:Lkbc;

    const-string v1, "CameraActivityController.onStart"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lert;->z:Z

    invoke-virtual {p0}, Lert;->v()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lert;->aD:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lert;->al:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lert;->aG:Lhzo;

    invoke-virtual {v1, v2}, Lhzo;->f(Z)V

    iput-boolean v0, p0, Lert;->aD:Z

    :cond_1
    iget-boolean v1, p0, Lert;->v:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lert;->H:Libj;

    invoke-interface {v1, v0}, Libj;->d(Z)V

    sget-object v1, Lika;->b:Lika;

    invoke-virtual {p0, v1}, Lert;->C(Lika;)V

    iget-object v1, p0, Lert;->as:Lhtz;

    invoke-virtual {v1}, Lhtm;->a()V

    iput-boolean v0, p0, Lert;->v:Z

    iget-object v1, p0, Lert;->H:Libj;

    sget-object v3, Lika;->b:Lika;

    invoke-interface {v1, v3, v0}, Libj;->j(Lika;Z)V

    :cond_2
    iget-boolean v0, p0, Lert;->aA:Z

    if-nez v0, :cond_3

    invoke-direct {p0}, Lert;->O()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lert;->o:Lcha;

    invoke-interface {v0}, Lcha;->i()V

    :cond_4
    iget-object v0, p0, Lert;->m:Ldhi;

    sget-object v1, Ldho;->a:Ldhk;

    invoke-interface {v0}, Ldhi;->c()V

    iget-object v0, p0, Lert;->m:Ldhi;

    invoke-interface {v0}, Ldhi;->c()V

    iget-object v0, p0, Lert;->m:Ldhi;

    invoke-interface {v0}, Ldhi;->f()V

    iget-object v0, p0, Lert;->m:Ldhi;

    sget-object v1, Ldho;->cc:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_8

    iget-object v0, p0, Lert;->m:Ldhi;

    sget-object v3, Ldho;->ce:Ldhj;

    invoke-interface {v0, v3}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lert;->m:Ldhi;

    sget-object v3, Ldho;->O:Ldhk;

    invoke-interface {v0, v3}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_8

    iget-object v0, p0, Lert;->j:Lgzm;

    sget-object v4, Lgzd;->n:Lgzr;

    invoke-interface {v0, v4}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lhmu;->a(Z)Lhmu;

    move-result-object v0

    iget-object v4, p0, Lert;->aM:Ljwb;

    invoke-interface {v4}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lhmu;

    invoke-virtual {v4, v0}, Lhmu;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, p0, Lert;->aM:Ljwb;

    invoke-interface {v4, v0}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object v4, p0, Lert;->t:Lfbz;

    sget-object v5, Lnla;->e:Lnla;

    invoke-virtual {v5}, Lnws;->O()Lnwn;

    move-result-object v5

    sget-object v6, Lika;->a:Lika;

    invoke-virtual {v0}, Lhmu;->ordinal()I

    move-result v0

    const/4 v6, 0x4

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x3

    :goto_0
    iget-object v7, v5, Lnwn;->b:Lnws;

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v5}, Lnwn;->p()V

    :cond_5
    iget-object v7, v5, Lnwn;->b:Lnws;

    check-cast v7, Lnla;

    add-int/2addr v0, v3

    iput v0, v7, Lnla;->b:I

    iget v0, v7, Lnla;->a:I

    or-int/2addr v0, v2

    iput v0, v7, Lnla;->a:I

    iget-object v0, p0, Lert;->ay:Lika;

    invoke-static {v0}, Lijy;->e(Lika;)I

    move-result v0

    iget-object v2, v5, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v5}, Lnwn;->p()V

    :cond_6
    iget-object v2, v5, Lnwn;->b:Lnws;

    move-object v7, v2

    check-cast v7, Lnla;

    add-int/2addr v0, v3

    iput v0, v7, Lnla;->c:I

    iget v0, v7, Lnla;->a:I

    or-int/2addr v0, v1

    iput v0, v7, Lnla;->a:I

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v5}, Lnwn;->p()V

    :cond_7
    iget-object v0, v5, Lnwn;->b:Lnws;

    check-cast v0, Lnla;

    iput v1, v0, Lnla;->d:I

    iget v2, v0, Lnla;->a:I

    or-int/2addr v2, v6

    iput v2, v0, Lnla;->a:I

    invoke-virtual {v5}, Lnwn;->i()Lnws;

    move-result-object v0

    check-cast v0, Lnla;

    invoke-static {v0}, Lmvv;->l(Ljava/lang/Object;)Lmvv;

    move-result-object v0

    invoke-interface {v4, v0}, Lfbz;->x(Ljava/util/List;)V

    :cond_8
    iget-object v0, p0, Lert;->T:Lcdi;

    invoke-virtual {v0}, Lcdi;->j()Ljuf;

    move-result-object v0

    iget-object v3, p0, Lert;->aW:Lkns;

    iput-object p0, v3, Lkns;->b:Ljava/lang/Object;

    new-instance v8, Lhbq;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lhbq;-><init>(Lkns;I[B[B[B)V

    invoke-virtual {v0, v8}, Ljuf;->d(Lkad;)V

    iget-object v0, p0, Lert;->k:Lkbc;

    const-string v2, "CameraActivityController.start"

    invoke-interface {v0, v2}, Lkbc;->e(Ljava/lang/String;)V

    invoke-direct {p0}, Lert;->Q()V

    iget-object v0, p0, Lert;->k:Lkbc;

    invoke-interface {v0}, Lkbc;->h()V

    iget-object v0, p0, Lert;->ar:Lhtl;

    invoke-virtual {v0}, Lhir;->b()V

    iget-object v0, p0, Lert;->p:Lchk;

    invoke-virtual {v0}, Lchk;->ce()V

    iget-object v0, p0, Lert;->t:Lfbz;

    invoke-virtual {p0}, Lert;->E()I

    move-result v2

    invoke-interface {v0, v2, v1}, Lfbz;->Z(II)V

    iget-object v0, p0, Lert;->k:Lkbc;

    invoke-interface {v0}, Lkbc;->h()V

    iget-boolean v0, p0, Lert;->al:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lert;->an:Ldji;

    new-instance v1, Lgoz;

    invoke-direct {v1}, Lgoz;-><init>()V

    iput-object v1, v0, Ldji;->b:Lgoz;

    :cond_9
    invoke-direct {p0}, Lert;->F()I

    move-result v0

    invoke-direct {p0, v0}, Lert;->M(I)V

    iget-object v0, p0, Lert;->aj:Lgus;

    invoke-interface {v0, p0}, Lgus;->c(Lgur;)V

    iget-object v0, p0, Lert;->k:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    iget-object v0, p0, Lert;->k:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final bP()Z
    .locals 4

    invoke-direct {p0}, Lert;->F()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lert;->o:Lcha;

    invoke-interface {v0}, Lcha;->bP()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lert;->ay:Lika;

    sget-object v3, Lika;->b:Lika;

    if-ne v0, v3, :cond_2

    return v2

    :cond_2
    iget-object v0, p0, Lert;->H:Libj;

    invoke-interface {v0}, Libj;->a()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lert;->ay:Lika;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lert;->H:Libj;

    sget-object v2, Lika;->b:Lika;

    invoke-interface {v0, v2}, Libj;->f(Lika;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lert;->o:Lcha;

    invoke-interface {v0}, Lcha;->d()V

    :goto_0
    return v1
.end method

.method public final bQ()V
    .locals 0

    return-void
.end method

.method public final c(ILjava/lang/String;)V
    .locals 2

    sget-object p1, Lert;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    const-string v0, "Camera open failure: %s"

    const/16 v1, 0x755

    invoke-static {p1, v0, p2, v1}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    iget-object p1, p0, Lert;->d:Ldns;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ldns;->f(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final d(ILjava/lang/String;)V
    .locals 2

    sget-object v0, Lert;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v1, 0x756

    invoke-interface {v0, v1}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v1, "Camera open already: %d,%s"

    invoke-interface {v0, v1, p1, p2}, Lnah;->u(Ljava/lang/String;ILjava/lang/Object;)V

    iget-object p1, p0, Lert;->d:Ldns;

    invoke-interface {p1}, Ldns;->h()V

    return-void
.end method

.method public final e()V
    .locals 3

    iget-object v0, p0, Lert;->k:Lkbc;

    const-string v1, "CameraActivityController.onStop"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lert;->aE:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lert;->z:Z

    iget-object v2, p0, Lert;->k:Lkbc;

    invoke-interface {v2}, Lkbc;->h()V

    iget-object v2, p0, Lert;->p:Lchk;

    invoke-virtual {v2}, Lchk;->q()V

    iput-boolean v0, p0, Lert;->E:Z

    iget-object v0, p0, Lert;->k:Lkbc;

    invoke-interface {v0}, Lkbc;->h()V

    iget-object v0, p0, Lert;->o:Lcha;

    check-cast v0, Lcie;

    invoke-virtual {v0}, Lcie;->r()V

    iget-object v0, p0, Lert;->aj:Lgus;

    invoke-interface {v0}, Lgus;->a()V

    iget-boolean v0, p0, Lert;->w:Z

    if-eqz v0, :cond_0

    const-string v0, "CameraActivityController: Fatal error during onPause!"

    invoke-virtual {p0, v0}, Lert;->u(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1}, Lert;->G(Z)V

    iget-object v0, p0, Lert;->k:Lkbc;

    invoke-interface {v0}, Lkbc;->h()V

    :goto_0
    iget-object v0, p0, Lert;->m:Ldhi;

    sget-object v1, Ldho;->a:Ldhk;

    invoke-interface {v0}, Ldhi;->c()V

    iget-object v0, p0, Lert;->m:Ldhi;

    invoke-interface {v0}, Ldhi;->c()V

    iget-object v0, p0, Lert;->k:Lkbc;

    invoke-interface {v0}, Lkbc;->h()V

    iget-object v0, p0, Lert;->k:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    return-void
.end method

.method public final f()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lert;->c:Landroid/content/Context;

    return-object v0
.end method

.method public final g()Lcha;
    .locals 1

    iget-object v0, p0, Lert;->o:Lcha;

    return-object v0
.end method

.method public final h()Lchk;
    .locals 1

    iget-object v0, p0, Lert;->p:Lchk;

    return-object v0
.end method

.method public final i()Lfbk;
    .locals 1

    iget-object v0, p0, Lert;->ad:Lfbk;

    return-object v0
.end method

.method public final j()Lgft;
    .locals 1

    iget-object v0, p0, Lert;->ae:Lgft;

    return-object v0
.end method

.method public final k()Lgzi;
    .locals 1

    iget-object v0, p0, Lert;->af:Lgzi;

    return-object v0
.end method

.method public final l()Lika;
    .locals 1

    iget-object v0, p0, Lert;->ay:Lika;

    return-object v0
.end method

.method public final m()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lert;->I(ILandroid/content/Intent;)V

    return-void
.end method

.method public final n(Landroid/content/Intent;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, v0, p1}, Lert;->I(ILandroid/content/Intent;)V

    return-void
.end method

.method public final o(Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lert;->aA:Z

    const/high16 v0, 0x80000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lert;->aj:Lgus;

    invoke-interface {v0, p1}, Lgus;->g(Landroid/content/Intent;)V

    return-void
.end method

.method public final p(Lika;)V
    .locals 3

    iget-boolean v0, p0, Lert;->y:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lert;->k:Lkbc;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onModeSelected "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lert;->O:Litm;

    iget-object v1, p0, Lert;->ay:Lika;

    invoke-interface {v0, v1}, Litm;->Z(Lika;)Z

    move-result v0

    :try_start_0
    invoke-direct {p0, p1}, Lert;->L(Lika;)V

    iget-object v1, p0, Lert;->ab:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lert;->aa:Ljuh;

    invoke-direct {p0, p1, v1, v2}, Lert;->H(Lika;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lert;->J()V

    iget-object p1, p0, Lert;->O:Litm;

    invoke-interface {p1, v0}, Litm;->ad(Z)V

    iget-object p1, p0, Lert;->k:Lkbc;

    invoke-interface {p1}, Lkbc;->f()V

    return-void

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lert;->J()V

    iget-object v1, p0, Lert;->O:Litm;

    invoke-interface {v1, v0}, Litm;->ad(Z)V

    iget-object v0, p0, Lert;->k:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    throw p1
.end method

.method public final q()V
    .locals 4

    iget-object v0, p0, Lert;->t:Lfbz;

    invoke-interface {v0}, Lfbz;->ax()V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lert;->c:Landroid/content/Context;

    iget-object v2, p0, Lert;->m:Ldhi;

    sget-object v3, Ldho;->a:Ldhk;

    invoke-interface {v2}, Ldhi;->c()V

    const-class v2, Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lert;->aj:Lgus;

    invoke-interface {v1, v0}, Lgus;->g(Landroid/content/Intent;)V

    return-void
.end method

.method public final r(Lidu;Z)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-interface {p1}, Lidu;->d()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lert;->o:Lcha;

    const/4 v0, 0x2

    invoke-interface {p2, v0, p1}, Lcha;->p(ILidu;)V

    return-void

    :cond_0
    iget-object p2, p0, Lert;->o:Lcha;

    const/4 v0, 0x3

    invoke-interface {p2, v0, p1}, Lcha;->p(ILidu;)V

    return-void
.end method

.method public final s()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lert;->Z:Landroid/content/Context;

    return-object v0
.end method

.method public final t()Landroid/view/Window;
    .locals 1

    iget-object v0, p0, Lert;->ah:Landroid/view/Window;

    return-object v0
.end method

.method public final u(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lert;->U:Lcdx;

    invoke-virtual {v0, p1}, Lcdx;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final v()Z
    .locals 5

    iget-object v0, p0, Lert;->k:Lkbc;

    const-string v1, "initialize"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    invoke-static {}, Ljuh;->a()V

    iget-boolean v0, p0, Lert;->aB:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lert;->T:Lcdi;

    invoke-virtual {v0}, Lcdi;->g()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lert;->aB:Z

    iget-object v1, p0, Lert;->k:Lkbc;

    const-string v2, "CameraActivityController#init"

    invoke-interface {v1, v2}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v1, p0, Lert;->k:Lkbc;

    const-string v2, "CameraActivityController#init"

    invoke-interface {v1, v2}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v1, p0, Lert;->k:Lkbc;

    const-string v2, "AppUpgrader#upgrade"

    invoke-interface {v1, v2}, Lkbc;->g(Ljava/lang/String;)V

    iget-object v1, p0, Lert;->V:Lhaf;

    iget-object v2, p0, Lert;->af:Lgzi;

    invoke-virtual {v1, v2}, Lham;->d(Lgzi;)V

    iget-object v1, p0, Lert;->ax:Lhal;

    sget-object v2, Lklv;->a:Lklv;

    invoke-virtual {v1, v2}, Lhal;->b(Lklv;)V

    iget-object v1, p0, Lert;->ax:Lhal;

    sget-object v2, Lklv;->b:Lklv;

    invoke-virtual {v1, v2}, Lhal;->b(Lklv;)V

    invoke-direct {p0}, Lert;->K()V

    invoke-direct {p0}, Lert;->R()V

    iget-object v1, p0, Lert;->k:Lkbc;

    const-string v2, "UiWirer#wire"

    invoke-interface {v1, v2}, Lkbc;->g(Ljava/lang/String;)V

    iget-object v1, p0, Lert;->aT:Ligo;

    iget-object v2, v1, Ligo;->a:Ljava/lang/Object;

    invoke-interface {v2}, Lijk;->a()V

    iget-object v1, v1, Ligo;->b:Ljava/lang/Object;

    invoke-interface {v1}, Lijk;->a()V

    iget-object v1, p0, Lert;->k:Lkbc;

    const-string v2, "UiControllerInitializer#init"

    invoke-interface {v1, v2}, Lkbc;->g(Ljava/lang/String;)V

    iget-object v1, p0, Lert;->aY:Lgkr;

    sget-object v2, Lika;->a:Lika;

    iget-object v2, v1, Lgkr;->d:Ljava/lang/Object;

    check-cast v2, Lika;

    invoke-virtual {v2}, Lika;->ordinal()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    iget-object v1, v1, Lgkr;->b:Ljava/lang/Object;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhtc;

    invoke-virtual {v1}, Lhtc;->f()V

    goto :goto_0

    :pswitch_0
    iget-object v1, v1, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhwb;

    invoke-virtual {v1}, Lhwb;->f()V

    goto :goto_0

    :pswitch_1
    iget-object v1, v1, Lgkr;->a:Ljava/lang/Object;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhvp;

    invoke-virtual {v1}, Lhvp;->f()V

    :goto_0
    iget-object v1, p0, Lert;->W:Lnou;

    new-instance v2, Lcig;

    const/16 v3, 0x8

    invoke-direct {v2, p0, v3}, Lcig;-><init>(Lert;I)V

    sget-object v3, Lnnv;->a:Lnnv;

    invoke-static {v1, v2, v3}, Ljvd;->t(Lnou;Ljzs;Ljava/util/concurrent/Executor;)V

    iget-object v1, p0, Lert;->k:Lkbc;

    const-string v2, "FilmstripData#init"

    invoke-interface {v1, v2}, Lkbc;->g(Ljava/lang/String;)V

    iget-object v1, p0, Lert;->ak:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lchj;

    iput-object v1, p0, Lert;->aq:Lchj;

    iget-object v1, p0, Lert;->r:Logd;

    invoke-interface {v1}, Logd;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lchh;

    iget-object v2, p0, Lert;->k:Lkbc;

    const-string v3, "FilmstripUi#init"

    invoke-interface {v2, v3}, Lkbc;->g(Ljava/lang/String;)V

    iget-object v2, p0, Lert;->n:Lihg;

    iget-object v2, v2, Lihg;->g:Ljava/lang/Object;

    invoke-interface {v1, p0}, Lchh;->j(Lcgy;)V

    iget-object v2, p0, Lert;->aa:Ljuh;

    iget-object v3, p0, Lert;->ai:Lfak;

    invoke-static {v2, v3, v1}, Lfcr;->e(Ljuh;Lfak;Lfaz;)V

    iget-object v2, p0, Lert;->k:Lkbc;

    const-string v3, "Filmstrip#observers"

    invoke-interface {v2, v3}, Lkbc;->g(Ljava/lang/String;)V

    new-instance v2, Ldji;

    invoke-direct {v2}, Ldji;-><init>()V

    iput-object v2, p0, Lert;->an:Ldji;

    new-instance v2, Ldji;

    invoke-direct {v2}, Ldji;-><init>()V

    iput-object v2, p0, Lert;->ao:Ldji;

    iget-object v2, p0, Lert;->Y:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lert;->an:Ldji;

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v2, p0, Lert;->Y:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lert;->ao:Ldji;

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v2, p0, Lert;->k:Lkbc;

    const-string v3, "CameraAppUI#init"

    invoke-interface {v2, v3}, Lkbc;->g(Ljava/lang/String;)V

    iget-object v2, p0, Lert;->n:Lihg;

    iget-object v2, v2, Lihg;->c:Ljava/lang/Object;

    new-instance v3, Landroidx/wear/ambient/AmbientMode$AmbientController;

    invoke-direct {v3, p0}, Landroidx/wear/ambient/AmbientMode$AmbientController;-><init>(Lert;)V

    invoke-static {v3}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v3

    check-cast v2, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;

    iput-object v3, v2, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->i:Lmqp;

    iget-object v2, p0, Lert;->P:Lcom/google/android/apps/camera/ui/views/ViewfinderCover;

    iget-object v3, p0, Lert;->av:Ljvs;

    iget-object v4, v2, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->g:Libg;

    iput-object v3, v4, Libg;->q:Ljvs;

    iget-object v3, p0, Lert;->ag:Lgzn;

    sget-object v4, Lgzd;->d:Lgzs;

    invoke-interface {v3, v4}, Lgzn;->b(Lgzb;)Ljwb;

    move-result-object v3

    iget-object v2, v2, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->g:Libg;

    iput-object v3, v2, Libg;->s:Ljwb;

    iget-object v2, p0, Lert;->P:Lcom/google/android/apps/camera/ui/views/ViewfinderCover;

    new-instance v3, Lbdj;

    const/4 v4, 0x5

    invoke-direct {v3, p0, v4}, Lbdj;-><init>(Lert;I)V

    iput-object v3, v2, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->f:Ljava/util/concurrent/Callable;

    iget-object v3, p0, Lert;->ae:Lgft;

    iget-object v2, v2, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->g:Libg;

    invoke-static {v3}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v3

    iput-object v3, v2, Libg;->A:Lmqp;

    iget-object v2, p0, Lert;->P:Lcom/google/android/apps/camera/ui/views/ViewfinderCover;

    new-instance v3, Lerk;

    invoke-direct {v3, p0}, Lerk;-><init>(Lert;)V

    iget-object v2, v2, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->g:Libg;

    iput-object v3, v2, Libg;->B:Libe;

    iget-object v3, p0, Lert;->aF:Ldbf;

    iput-object v3, v2, Libg;->C:Ldbx;

    iget-object v2, p0, Lert;->h:Ligx;

    new-instance v3, Landroidx/wear/ambient/AmbientMode$AmbientController;

    invoke-direct {v3, p0}, Landroidx/wear/ambient/AmbientMode$AmbientController;-><init>(Lert;)V

    invoke-static {v3}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v3

    iput-object v3, v2, Ligx;->j:Lmqp;

    iget-object v2, p0, Lert;->am:Logd;

    invoke-interface {v2}, Logd;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcgz;

    invoke-direct {p0}, Lert;->N()Z

    move-result v3

    invoke-interface {v2, v3}, Lcgz;->a(Z)Lcha;

    move-result-object v2

    iput-object v2, p0, Lert;->o:Lcha;

    iget-object v2, p0, Lert;->q:Lmqp;

    invoke-virtual {v2}, Lmqp;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lert;->q:Lmqp;

    invoke-virtual {v2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhfu;

    iget-object v3, p0, Lert;->aO:Lhfv;

    invoke-interface {v2, v3}, Lhfu;->a(Lhfv;)V

    :cond_0
    iget-object v2, p0, Lert;->T:Lcdi;

    invoke-virtual {v2}, Lcdi;->i()Ljuf;

    move-result-object v2

    iget-object v3, p0, Lert;->aP:Lchg;

    invoke-interface {v1, v3}, Lchh;->a(Lchg;)Lkad;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljuf;->d(Lkad;)V

    iget-object v1, p0, Lert;->k:Lkbc;

    const-string v2, "CameraFacing#config"

    invoke-interface {v1, v2}, Lkbc;->g(Ljava/lang/String;)V

    iget-object v1, p0, Lert;->T:Lcdi;

    invoke-virtual {v1}, Lcdi;->i()Ljuf;

    move-result-object v1

    iget-object v2, p0, Lert;->aF:Ldbf;

    new-instance v3, Ldsk;

    const/16 v4, 0xc

    invoke-direct {v3, p0, v4}, Ldsk;-><init>(Lert;I)V

    sget-object v4, Lnnv;->a:Lnnv;

    invoke-virtual {v2, v3, v4}, Ldbf;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljuf;->d(Lkad;)V

    iget-object v1, p0, Lert;->k:Lkbc;

    invoke-interface {v1}, Lkbc;->f()V

    invoke-virtual {p0}, Lert;->x()Lika;

    move-result-object v1

    invoke-virtual {p0, v1}, Lert;->C(Lika;)V

    iget-object v1, p0, Lert;->k:Lkbc;

    const-string v2, "CameraUi#prepareModuleUi"

    invoke-interface {v1, v2}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v1, p0, Lert;->o:Lcha;

    check-cast v1, Lcie;

    iget-object v2, v1, Lcie;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v2, v1, Lcie;->r:Lidr;

    iget-object v3, v1, Lcie;->p:Landroid/view/View$OnLayoutChangeListener;

    invoke-interface {v2, v3}, Lidr;->h(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v2, v1, Lcie;->d:Libj;

    iget-object v3, v1, Lcie;->b:Lcgx;

    invoke-interface {v3}, Lcgx;->l()Lika;

    move-result-object v3

    invoke-interface {v2, v3}, Libj;->s(Lika;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcie;->d:Libj;

    invoke-interface {v2, v0}, Libj;->l(Z)V

    goto :goto_1

    :cond_1
    iget-object v0, v1, Lcie;->d:Libj;

    invoke-interface {v0, v3}, Libj;->l(Z)V

    :goto_1
    iget-object v0, v1, Lcie;->d:Libj;

    iget-object v2, v1, Lcie;->b:Lcgx;

    invoke-interface {v2}, Lcgx;->l()Lika;

    move-result-object v2

    invoke-interface {v0, v2}, Libj;->s(Lika;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v1, Lcie;->b:Lcgx;

    invoke-interface {v0}, Lcgx;->l()Lika;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcie;->q(Lika;)V

    :cond_2
    iget-boolean v0, p0, Lert;->al:Z

    if-nez v0, :cond_3

    invoke-direct {p0}, Lert;->N()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lert;->T:Lcdi;

    invoke-virtual {v0}, Lcdi;->g()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lert;->aq:Lchj;

    invoke-interface {v0}, Lchj;->i()V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lert;->aq:Lchj;

    invoke-interface {v0}, Lchj;->bA()V

    :goto_2
    iget-object v0, p0, Lert;->q:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lert;->q:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhfu;

    new-instance v1, Lero;

    invoke-direct {v1, p0}, Lero;-><init>(Lert;)V

    invoke-interface {v0, v1}, Lhfu;->a(Lhfv;)V

    :cond_4
    iget-object v0, p0, Lert;->l:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhsl;

    invoke-interface {v0}, Lhsl;->c()Lnou;

    move-result-object v0

    new-instance v1, Lcig;

    const/16 v2, 0x9

    invoke-direct {v1, p0, v2}, Lcig;-><init>(Lert;I)V

    sget-object v2, Lnnv;->a:Lnnv;

    invoke-static {v0, v1, v2}, Ljvd;->t(Lnou;Ljzs;Ljava/util/concurrent/Executor;)V

    iget-boolean v0, p0, Lert;->aC:Z

    if-eqz v0, :cond_5

    iput-boolean v3, p0, Lert;->aC:Z

    iget-object v0, p0, Lert;->e:Landroid/os/Handler;

    iget-object v1, p0, Lert;->r:Logd;

    invoke-interface {v1}, Logd;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lchh;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Leli;

    const/16 v3, 0x13

    invoke-direct {v2, v1, v3}, Leli;-><init>(Lchh;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    iget-object v0, p0, Lert;->k:Lkbc;

    const-string v1, "ActivityUi#initCallbacks"

    invoke-interface {v0, v1}, Lkbc;->g(Ljava/lang/String;)V

    iget-object v0, p0, Lert;->n:Lihg;

    iget-object v0, v0, Lihg;->l:Ljava/lang/Object;

    new-instance v1, Lerp;

    invoke-direct {v1, p0}, Lerp;-><init>(Lert;)V

    check-cast v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->setOnDrawListener(Liel;)V

    iget-object v0, p0, Lert;->T:Lcdi;

    invoke-virtual {v0}, Lcdi;->i()Ljuf;

    move-result-object v0

    iget-object v1, p0, Lert;->aL:Ljvs;

    new-instance v2, Ldsk;

    const/16 v3, 0xd

    invoke-direct {v2, p0, v3}, Ldsk;-><init>(Lert;I)V

    iget-object v3, p0, Lert;->aa:Ljuh;

    invoke-interface {v1, v2, v3}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljuf;->d(Lkad;)V

    iget-object v0, p0, Lert;->k:Lkbc;

    const-string v1, "ActivityLifecycle#observe"

    invoke-interface {v0, v1}, Lkbc;->g(Ljava/lang/String;)V

    iget-object v0, p0, Lert;->ai:Lfak;

    invoke-virtual {v0, p0}, Lfak;->e(Lfaz;)V

    iget-object v0, p0, Lert;->k:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    iget-object v0, p0, Lert;->k:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    iget-object v0, p0, Lert;->f:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

    sget-object v1, Lhju;->k:Lhju;

    sget-object v2, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->a:Lhkg;

    invoke-virtual {v0, v1, v2}, Lhkh;->i(Ljava/lang/Enum;Lhkg;)V

    :cond_6
    iget-object v0, p0, Lert;->k:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    iget-boolean v0, p0, Lert;->aB:Z

    return v0

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final w()Lcvr;
    .locals 1

    iget-object v0, p0, Lert;->aX:Lcvr;

    return-object v0
.end method

.method public final x()Lika;
    .locals 1

    iget-object v0, p0, Lert;->aV:Lbkc;

    invoke-virtual {v0}, Lbkc;->e()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcdg;->d(Landroid/content/Intent;)Lika;

    move-result-object v0

    return-object v0
.end method

.method public final y(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lert;->p:Lchk;

    invoke-virtual {v0, p1}, Lchk;->e(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final z()V
    .locals 1

    iget-object v0, p0, Lert;->p:Lchk;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lchk;->ce()V

    iget-object v0, p0, Lert;->p:Lchk;

    invoke-virtual {v0}, Lchk;->m()V

    return-void
.end method
