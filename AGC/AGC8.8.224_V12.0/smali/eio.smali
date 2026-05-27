.class public final Leio;
.super Ljava/lang/Object;

# interfaces
.implements Leii;
.implements Lehz;


# static fields
.field private static final N:Lnak;


# instance fields
.field public final A:Lgzm;

.field public final B:Lgzn;

.field public C:Z

.field public D:J

.field public E:J

.field public F:J

.field public G:J

.field public H:I

.field public I:Lehx;

.field public final J:Lehu;

.field public final K:Lbkc;

.field public final L:Ljpw;

.field public final M:Lhdk;

.field private final O:Loiw;

.field private final P:Lell;

.field private final Q:Ljava/util/Set;

.field private final R:Landroid/app/Activity;

.field private final S:Lhgy;

.field private final T:Ljava/util/concurrent/ScheduledExecutorService;

.field private final U:Lekh;

.field private final V:Ljuf;

.field private final W:Lejr;

.field private final X:Lnom;

.field public final a:Landroid/content/Context;

.field public final b:Lekg;

.field public final c:Lgqa;

.field public final d:Ldhi;

.field public final e:Lejo;

.field public final f:Leik;

.field public final g:Ljuh;

.field public final h:Ljwb;

.field public final i:Lfbz;

.field public final j:Lkbc;

.field public final k:Liff;

.field public final l:Ljava/util/Set;

.field public final m:Leic;

.field public final n:Leia;

.field public final o:Leji;

.field public p:F

.field public final q:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final r:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final s:Landroid/os/ConditionVariable;

.field public final t:Lcoo;

.field public final u:Licf;

.field public final v:Licf;

.field public final w:Licf;

.field public final x:Licf;

.field public final y:Licf;

.field public final z:Liox;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/imax/ImaxRecordingController"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Leio;->N:Lnak;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lekg;Loiw;Lgqa;Lejo;Leik;Ljuh;Lell;Lehu;Leji;Ldhi;Ljwb;Lfbz;Lejr;Lhdk;Ljuf;Lkbc;Landroid/app/Activity;Lhgy;Liff;Ljava/util/concurrent/ScheduledExecutorService;Ljpw;Ljava/util/Set;Leic;Liox;Leia;Lekh;Lbkc;Lnom;Lgzm;Lgzn;[B[B[B[B)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p7

    move-object/from16 v3, p16

    move-object/from16 v4, p17

    move-object/from16 v5, p23

    move-object/from16 v6, p26

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v7, 0x0

    iput v7, v0, Leio;->p:F

    new-instance v7, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v7, v0, Leio;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v7, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v7, v8}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v7, v0, Leio;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v7, Landroid/os/ConditionVariable;

    const/4 v9, 0x1

    invoke-direct {v7, v9}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v7, v0, Leio;->s:Landroid/os/ConditionVariable;

    iput-boolean v8, v0, Leio;->C:Z

    iput v9, v0, Leio;->H:I

    iput-object v1, v0, Leio;->a:Landroid/content/Context;

    move-object v7, p2

    iput-object v7, v0, Leio;->b:Lekg;

    move-object v8, p3

    iput-object v8, v0, Leio;->O:Loiw;

    move-object v8, p4

    iput-object v8, v0, Leio;->c:Lgqa;

    move-object v8, p5

    iput-object v8, v0, Leio;->e:Lejo;

    move-object/from16 v8, p6

    iput-object v8, v0, Leio;->f:Leik;

    iput-object v2, v0, Leio;->g:Ljuh;

    move-object/from16 v8, p8

    iput-object v8, v0, Leio;->P:Lell;

    move-object/from16 v8, p9

    iput-object v8, v0, Leio;->J:Lehu;

    move-object/from16 v8, p10

    iput-object v8, v0, Leio;->o:Leji;

    move-object/from16 v8, p11

    iput-object v8, v0, Leio;->d:Ldhi;

    move-object/from16 v8, p12

    iput-object v8, v0, Leio;->h:Ljwb;

    move-object/from16 v8, p13

    iput-object v8, v0, Leio;->i:Lfbz;

    move-object/from16 v8, p14

    iput-object v8, v0, Leio;->W:Lejr;

    move-object/from16 v8, p15

    iput-object v8, v0, Leio;->M:Lhdk;

    iput-object v4, v0, Leio;->j:Lkbc;

    move-object/from16 v8, p18

    iput-object v8, v0, Leio;->R:Landroid/app/Activity;

    move-object/from16 v8, p19

    iput-object v8, v0, Leio;->S:Lhgy;

    move-object/from16 v8, p20

    iput-object v8, v0, Leio;->k:Liff;

    move-object/from16 v8, p21

    iput-object v8, v0, Leio;->T:Ljava/util/concurrent/ScheduledExecutorService;

    move-object/from16 v8, p22

    iput-object v8, v0, Leio;->L:Ljpw;

    iput-object v5, v0, Leio;->l:Ljava/util/Set;

    move-object/from16 v8, p24

    iput-object v8, v0, Leio;->m:Leic;

    move-object/from16 v9, p25

    iput-object v9, v0, Leio;->z:Liox;

    iput-object v6, v0, Leio;->n:Leia;

    iput-object v3, v0, Leio;->V:Ljuf;

    move-object/from16 v9, p27

    iput-object v9, v0, Leio;->U:Lekh;

    move-object/from16 v9, p28

    iput-object v9, v0, Leio;->K:Lbkc;

    move-object/from16 v9, p29

    iput-object v9, v0, Leio;->X:Lnom;

    move-object/from16 v9, p30

    iput-object v9, v0, Leio;->A:Lgzm;

    move-object/from16 v9, p31

    iput-object v9, v0, Leio;->B:Lgzn;

    invoke-virtual {p2}, Lekg;->f()V

    new-instance v7, Lcoo;

    invoke-direct {v7, v4, v5}, Lcoo;-><init>(Lkbc;Ljava/util/Set;)V

    iput-object v7, v0, Leio;->t:Lcoo;

    iget-object v4, v6, Leia;->f:Ljvk;

    new-instance v5, Ldsk;

    const/4 v7, 0x4

    invoke-direct {v5, p0, v7}, Ldsk;-><init>(Leio;I)V

    invoke-interface {v4, v5, v2}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljuf;->d(Lkad;)V

    invoke-virtual/range {p24 .. p24}, Leic;->requestLayout()V

    iput-object v0, v6, Leia;->l:Lehz;

    const/4 v2, 0x0

    const/16 v3, 0x5dc

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f140039

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, -0x1

    const/16 v9, 0xa

    move p2, v2

    move p3, v3

    move-object p4, v4

    move-object p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, p1

    move/from16 p8, v7

    move/from16 p9, v8

    move/from16 p10, v9

    invoke-static/range {p2 .. p10}, Ljpw;->k(ZILandroid/view/View$OnClickListener;Lice;Ljava/lang/String;Landroid/content/Context;ZII)Licf;

    move-result-object v2

    iput-object v2, v0, Leio;->u:Licf;

    const/4 v2, 0x0

    const v6, 0x7f140038

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move p2, v2

    move-object/from16 p6, v6

    invoke-static/range {p2 .. p10}, Ljpw;->k(ZILandroid/view/View$OnClickListener;Lice;Ljava/lang/String;Landroid/content/Context;ZII)Licf;

    move-result-object v2

    iput-object v2, v0, Leio;->v:Licf;

    const/4 v2, 0x0

    const v6, 0x7f14003a

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move p2, v2

    move-object/from16 p6, v6

    invoke-static/range {p2 .. p10}, Ljpw;->k(ZILandroid/view/View$OnClickListener;Lice;Ljava/lang/String;Landroid/content/Context;ZII)Licf;

    move-result-object v2

    iput-object v2, v0, Leio;->w:Licf;

    const/4 v2, 0x0

    const v6, 0x7f140235

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move p2, v2

    move-object/from16 p6, v6

    invoke-static/range {p2 .. p10}, Ljpw;->k(ZILandroid/view/View$OnClickListener;Lice;Ljava/lang/String;Landroid/content/Context;ZII)Licf;

    move-result-object v2

    iput-object v2, v0, Leio;->x:Licf;

    const/4 v2, 0x0

    const v6, 0x7f140234

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move p2, v2

    move-object/from16 p6, v6

    invoke-static/range {p2 .. p10}, Ljpw;->k(ZILandroid/view/View$OnClickListener;Lice;Ljava/lang/String;Landroid/content/Context;ZII)Licf;

    move-result-object v1

    iput-object v1, v0, Leio;->y:Licf;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, v0, Leio;->Q:Ljava/util/Set;

    return-void
.end method

.method private final i(ZFI)V
    .locals 3

    iget-object v0, p0, Leio;->n:Leia;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Leia;->a(Z)V

    iget-object v0, p0, Leio;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Leio;->S:Lhgy;

    const v2, 0x7f130030

    invoke-interface {v0, v2}, Lhgy;->b(I)V

    const/4 v0, 0x2

    if-eq p3, v0, :cond_2

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float p1, p2, p1

    if-gez p1, :cond_0

    if-eq p3, v0, :cond_2

    :cond_0
    iget-object p1, p0, Leio;->X:Lnom;

    invoke-virtual {p1, v1}, Lnom;->f(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Leio;->X:Lnom;

    invoke-virtual {p1, v0}, Lnom;->f(I)V

    :cond_2
    :goto_0
    iget-object p1, p0, Leio;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method private final j(Ljava/lang/Runnable;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Leio;->T:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xfa

    invoke-interface {v0, p1, v2, v3, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    invoke-virtual {p0}, Leio;->c()V

    iget-object v0, p0, Leio;->a:Landroid/content/Context;

    iget-object v1, p0, Leio;->f:Leik;

    invoke-virtual {v1}, Leik;->k()Z

    move-result v1

    invoke-static {p1, v0, v1}, Lfcr;->g(ILandroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Leio;->d(Ljava/lang/String;)V

    sget-object v0, Leio;->N:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    new-instance v1, Leim;

    invoke-direct {v1, p0, p1}, Leim;-><init>(Leio;I)V

    invoke-static {v1}, Lmjy;->m(Lnal;)V

    const-string v2, "Capture stopped reason: %s"

    const/16 v3, 0x5e5

    invoke-static {v0, v2, v1, v3}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    iget-object v0, p0, Leio;->g:Ljuh;

    new-instance v1, Lbbh;

    const/16 v2, 0xd

    invoke-direct {v1, p0, p1, v2}, Lbbh;-><init>(Leio;II)V

    invoke-virtual {v0, v1}, Ljuh;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b()F
    .locals 3

    iget-object v0, p0, Leio;->W:Lejr;

    invoke-virtual {v0}, Lejr;->a()D

    move-result-wide v0

    double-to-float v0, v0

    iget v1, p0, Leio;->p:F

    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-gez v2, :cond_0

    neg-float v0, v0

    :cond_0
    const/high16 v2, 0x43b40000    # 360.0f

    sub-float/2addr v2, v0

    mul-float v2, v2, v1

    add-float/2addr v2, v0

    return v2
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Leio;->Q:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lelk;

    iget-object v2, p0, Leio;->P:Lell;

    invoke-interface {v2, v1}, Lell;->g(Lelk;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Leio;->Q:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 9

    const/4 v0, 0x0

    const/16 v1, 0xbb8

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v5, p0, Leio;->a:Landroid/content/Context;

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/16 v8, 0xc

    move-object v4, p1

    invoke-static/range {v0 .. v8}, Ljpw;->k(ZILandroid/view/View$OnClickListener;Lice;Ljava/lang/String;Landroid/content/Context;ZII)Licf;

    move-result-object p1

    iget-object v0, p0, Leio;->P:Lell;

    invoke-interface {v0, p1}, Lell;->d(Lelk;)Lkad;

    iget-object v0, p0, Leio;->Q:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final e(Licf;)V
    .locals 1

    iget-object v0, p0, Leio;->P:Lell;

    invoke-interface {v0, p1}, Lell;->d(Lelk;)Lkad;

    iget-object v0, p0, Leio;->Q:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final f()V
    .locals 6

    iget-boolean v0, p0, Leio;->C:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Leio;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Leio;->n:Leia;

    invoke-virtual {v0}, Leia;->b()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Leio;->s:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    iget-object v0, p0, Leio;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0xfa

    add-long/2addr v2, v4

    iput-wide v2, p0, Leio;->D:J

    iget-object v0, p0, Leio;->n:Leia;

    invoke-virtual {v0, v1}, Leia;->a(Z)V

    iget-object v0, p0, Leio;->g:Ljuh;

    iget-object v1, p0, Leio;->e:Lejo;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Leer;

    const/16 v3, 0xe

    invoke-direct {v2, v1, v3}, Leer;-><init>(Lejo;I)V

    invoke-virtual {v0, v2}, Ljuh;->c(Ljava/lang/Runnable;)V

    iget-object v0, p0, Leio;->S:Lhgy;

    const v1, 0x7f13002f

    invoke-interface {v0, v1}, Lhgy;->b(I)V

    iget-object v0, p0, Leio;->O:Loiw;

    check-cast v0, Lelc;

    invoke-virtual {v0}, Lelc;->a()Lehx;

    move-result-object v0

    iput-object v0, p0, Leio;->I:Lehx;

    iget-object v0, p0, Leio;->R:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    mul-int/lit8 v0, v0, 0x5a

    iget-object v1, p0, Leio;->U:Lekh;

    invoke-virtual {v1, v0}, Lekh;->d(I)V

    new-instance v1, Lbbh;

    const/16 v2, 0xc

    invoke-direct {v1, p0, v0, v2}, Lbbh;-><init>(Leio;II)V

    invoke-direct {p0, v1}, Leio;->j(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method final g()V
    .locals 2

    invoke-static {}, Ljuh;->a()V

    iget-object v0, p0, Leio;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Leio;->c()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Leio;->h(ZI)V

    return-void

    :cond_0
    invoke-virtual {p0}, Leio;->f()V

    return-void
.end method

.method public final h(ZI)V
    .locals 17

    move-object/from16 v1, p0

    move/from16 v0, p2

    invoke-static {}, Ljuh;->a()V

    iget-object v2, v1, Leio;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    iget-object v3, v1, Leio;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    const/4 v4, 0x3

    if-eqz v3, :cond_1

    if-eq v2, v4, :cond_2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    if-ne v2, v4, :cond_5

    iget-object v2, v1, Leio;->b:Lekg;

    iget-object v2, v2, Lekg;->c:Leke;

    iget-object v2, v2, Leke;->b:Lekz;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lekz;->a()I

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_1

    :cond_2
    :goto_0
    iget-object v2, v1, Leio;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Leio;->E:J

    iget-object v2, v1, Leio;->f:Leik;

    invoke-virtual {v2}, Leik;->g()F

    move-result v2

    iget-object v3, v1, Leio;->f:Leik;

    iget-object v3, v3, Leik;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iput v0, v1, Leio;->H:I

    iget-object v3, v1, Leio;->e:Lejo;

    invoke-virtual {v3}, Lejl;->b()V

    iget-object v3, v1, Leio;->j:Lkbc;

    const-string v5, "record#prepareToStop"

    invoke-interface {v3, v5}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v3, v1, Leio;->b:Lekg;

    monitor-enter v3

    const/4 v5, 0x1

    :try_start_0
    iput-boolean v5, v3, Lekg;->g:Z

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v3, v3, Lekg;->c:Leke;

    invoke-virtual {v3}, Leke;->d()V

    iget-object v3, v3, Leke;->b:Lekz;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lekz;->a()I

    :cond_3
    iget-object v3, v1, Leio;->j:Lkbc;

    invoke-interface {v3}, Lkbc;->f()V

    if-nez p1, :cond_4

    iget-object v3, v1, Leio;->j:Lkbc;

    const-string v5, "record#stopCapture"

    invoke-interface {v3, v5}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v3, v1, Leio;->b:Lekg;

    iget-object v5, v1, Leio;->I:Lehx;

    invoke-virtual {v5}, Lehx;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lekg;->g(Ljava/lang/String;)V

    iget-object v3, v1, Leio;->j:Lkbc;

    invoke-interface {v3}, Lkbc;->f()V

    iget-wide v5, v1, Leio;->E:J

    iget-wide v7, v1, Leio;->D:J

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    iget-object v9, v1, Leio;->i:Lfbz;

    iget v3, v1, Leio;->H:I

    invoke-static {v3}, Lfcr;->h(I)I

    move-result v10

    iget-object v3, v1, Leio;->I:Lehx;

    invoke-virtual {v3}, Lehx;->c()V

    const-wide/16 v11, 0x0

    invoke-virtual/range {p0 .. p0}, Leio;->b()F

    move-result v15

    iget-object v3, v1, Leio;->h:Ljwb;

    invoke-interface {v3}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    invoke-interface/range {v9 .. v16}, Lfbz;->ay(IJJFZ)V

    invoke-direct {v1, v4, v2, v0}, Leio;->i(ZFI)V

    iget-object v3, v1, Leio;->l:Ljava/util/Set;

    monitor-enter v3

    :try_start_1
    iget-object v0, v1, Leio;->l:Ljava/util/Set;

    iget-object v2, v1, Leio;->I:Lehx;

    invoke-virtual {v2}, Lehx;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v3

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    iget-object v0, v1, Leio;->j:Lkbc;

    const-string v3, "record#getCapturePreview"

    invoke-interface {v0, v3}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v0, v1, Leio;->b:Lekg;

    new-instance v3, Lcdu;

    const/16 v6, 0x10

    invoke-direct {v3, v1, v6}, Lcdu;-><init>(Leio;I)V

    iget-object v6, v0, Lekg;->l:Lehu;

    new-instance v7, Lekf;

    invoke-direct {v7, v0, v3, v4}, Lekf;-><init>(Lekg;Lmqi;I)V

    invoke-virtual {v6, v7}, Lehu;->a(Ljava/lang/Runnable;)V

    iget-object v0, v1, Leio;->J:Lehu;

    sget-object v3, Lchy;->i:Lchy;

    invoke-virtual {v0, v3}, Lehu;->b(Ljava/lang/Runnable;)V

    iget-object v0, v1, Leio;->j:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    iget v0, v1, Leio;->H:I

    invoke-direct {v1, v5, v2, v0}, Leio;->i(ZFI)V

    return-void

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_5
    :goto_1
    return-void
.end method
