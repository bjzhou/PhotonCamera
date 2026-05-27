.class public final Leuy;
.super Lchk;

# interfaces
.implements Lhwf;


# static fields
.field public static final b:Lnak;


# instance fields
.field private final A:Lfuq;

.field private final B:Lfux;

.field private C:Lflj;

.field private final D:Lhud;

.field private final E:Lhjc;

.field private final F:Lfbk;

.field private final G:Ldhi;

.field private final H:Lgxm;

.field private final I:Lva;

.field private final J:Ljew;

.field public final c:Lifj;

.field public final d:Litm;

.field public final e:Ljwb;

.field public final f:Lhgy;

.field public final g:Ljuh;

.field public final h:Lgft;

.field public final i:Lhvt;

.field public final j:Lcbn;

.field public final k:Ldbf;

.field public final l:Lhtg;

.field public final m:Lici;

.field public final n:Lmqp;

.field public o:Lnph;

.field public final p:Leuo;

.field public q:Ljuf;

.field public r:Lflk;

.field public final s:Lhdk;

.field private final t:Lcom/google/android/apps/camera/bottombar/BottomBarListener;

.field private final u:Liff;

.field private final v:Leoa;

.field private final w:Lenz;

.field private final x:Landroid/content/Context;

.field private final y:Landroid/content/res/Resources;

.field private final z:Leup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/legacy/app/module/pckimageintent/PckImageIntentModule"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Leuy;->b:Lnak;

    return-void
.end method

.method public constructor <init>(Ljuh;Lgft;Ldbf;Lfuq;Lfux;Lmqp;Landroid/content/res/Resources;Lcom/google/android/apps/camera/bottombar/BottomBarController;Liff;Leoa;Litm;Lhgy;Ljwb;Leup;Lhtg;Lhvt;Lhud;Ligo;Lhjc;Lgxi;Loiw;Lcbn;Lbkc;Landroid/content/Context;Leuo;Lici;Lhdk;Lva;Ldhi;[B[B[B[B[B)V
    .locals 7

    move-object v0, p0

    invoke-direct {p0}, Lchk;-><init>()V

    new-instance v1, Leut;

    invoke-direct {v1, p0}, Leut;-><init>(Leuy;)V

    iput-object v1, v0, Leuy;->t:Lcom/google/android/apps/camera/bottombar/BottomBarListener;

    new-instance v2, Leuu;

    invoke-direct {v2, p0}, Leuu;-><init>(Leuy;)V

    iput-object v2, v0, Leuy;->c:Lifj;

    new-instance v2, Letv;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v3}, Letv;-><init>(Leuy;I)V

    iput-object v2, v0, Leuy;->w:Lenz;

    new-instance v2, Leux;

    invoke-direct {v2, p0}, Leux;-><init>(Leuy;)V

    iput-object v2, v0, Leuy;->H:Lgxm;

    move-object v3, p1

    iput-object v3, v0, Leuy;->g:Ljuh;

    move-object v3, p2

    iput-object v3, v0, Leuy;->h:Lgft;

    move-object/from16 v3, p13

    iput-object v3, v0, Leuy;->e:Ljwb;

    move-object/from16 v3, p17

    iput-object v3, v0, Leuy;->D:Lhud;

    move-object/from16 v3, p12

    iput-object v3, v0, Leuy;->f:Lhgy;

    move-object/from16 v3, p24

    iput-object v3, v0, Leuy;->x:Landroid/content/Context;

    move-object v4, p7

    iput-object v4, v0, Leuy;->y:Landroid/content/res/Resources;

    move-object v4, p3

    iput-object v4, v0, Leuy;->k:Ldbf;

    move-object v4, p4

    iput-object v4, v0, Leuy;->A:Lfuq;

    move-object v4, p5

    iput-object v4, v0, Leuy;->B:Lfux;

    move-object v4, p6

    iput-object v4, v0, Leuy;->n:Lmqp;

    move-object/from16 v4, p9

    iput-object v4, v0, Leuy;->u:Liff;

    move-object/from16 v4, p10

    iput-object v4, v0, Leuy;->v:Leoa;

    move-object/from16 v4, p11

    iput-object v4, v0, Leuy;->d:Litm;

    move-object/from16 v4, p14

    iput-object v4, v0, Leuy;->z:Leup;

    move-object/from16 v4, p15

    iput-object v4, v0, Leuy;->l:Lhtg;

    move-object/from16 v4, p16

    iput-object v4, v0, Leuy;->i:Lhvt;

    move-object/from16 v4, p19

    iput-object v4, v0, Leuy;->E:Lhjc;

    move-object/from16 v4, p25

    iput-object v4, v0, Leuy;->p:Leuo;

    move-object/from16 v4, p22

    iput-object v4, v0, Leuy;->j:Lcbn;

    move-object/from16 v4, p26

    iput-object v4, v0, Leuy;->m:Lici;

    move-object/from16 v4, p27

    iput-object v4, v0, Leuy;->s:Lhdk;

    move-object/from16 v4, p28

    iput-object v4, v0, Leuy;->I:Lva;

    move-object/from16 v4, p29

    iput-object v4, v0, Leuy;->G:Ldhi;

    invoke-virtual/range {p23 .. p23}, Lbkc;->e()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "include_location_in_exif"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface/range {p21 .. p21}, Loiw;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lfbk;

    iput-object v4, v0, Leuy;->F:Lfbk;

    goto :goto_0

    :cond_0
    new-instance v4, Lfbo;

    invoke-direct {v4}, Lfbo;-><init>()V

    iput-object v4, v0, Leuy;->F:Lfbk;

    :goto_0
    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v4

    iput-object v4, v0, Leuy;->o:Lnph;

    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "No image has been captured"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lnph;->a(Ljava/lang/Throwable;)Z

    invoke-virtual/range {p24 .. p24}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "ImageIntent"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Lhlc;

    invoke-direct {v3, v4}, Lhlc;-><init>(Ljava/io/File;)V

    move-object/from16 v4, p18

    invoke-virtual {v4, v3}, Ligo;->E(Lhlc;)Ljew;

    move-result-object v3

    iput-object v3, v0, Leuy;->J:Ljew;

    move-object v3, p8

    invoke-virtual {p8, v1}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->addListener(Lcom/google/android/apps/camera/bottombar/BottomBarListener;)V

    move-object/from16 v1, p20

    invoke-virtual {v1, v2}, Lgxi;->a(Lgxm;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Leuy;->D:Lhud;

    invoke-virtual {v0}, Lhua;->b()V

    invoke-virtual {p0}, Lchk;->r()V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Leuy;->f:Lhgy;

    const v1, 0x7f13002d

    invoke-interface {v0, v1}, Lhgy;->c(I)V

    iget-object v0, p0, Leuy;->D:Lhud;

    invoke-virtual {v0}, Lhua;->a()V

    return-void
.end method

.method public final bH()Lmqp;
    .locals 1

    iget-object v0, p0, Leuy;->r:Lflk;

    invoke-static {v0}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    return-object v0
.end method

.method public final bS(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Leuy;->f:Lhgy;

    const v0, 0x7f13002b

    invoke-interface {p1, v0}, Lhgy;->c(I)V

    return-void

    :cond_0
    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    iget-object p1, p0, Leuy;->f:Lhgy;

    const v0, 0x7f13002c

    invoke-interface {p1, v0}, Lhgy;->c(I)V

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Leuy;->y:Landroid/content/res/Resources;

    const v1, 0x7f14039b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final cd()V
    .locals 0

    invoke-virtual {p0}, Leuy;->x()Z

    return-void
.end method

.method public final close()V
    .locals 0

    return-void
.end method

.method public final d(Lbne;)V
    .locals 0

    return-void
.end method

.method public final e(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public final k()V
    .locals 4

    iget-object v0, p0, Leuy;->r:Lflk;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lflk;->close()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Leuy;->r:Lflk;

    iget-object v1, p0, Leuy;->C:Lflj;

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lnnb;->cancel(Z)Z

    iput-object v0, p0, Leuy;->C:Lflj;

    :cond_1
    iget-object v0, p0, Leuy;->m:Lici;

    invoke-virtual {v0}, Lici;->a()V

    iget-object v0, p0, Leuy;->A:Lfuq;

    iget-object v1, p0, Leuy;->k:Ldbf;

    iget-object v2, p0, Leuy;->B:Lfux;

    sget-object v3, Lika;->h:Lika;

    invoke-interface {v0, v1, v2, v3}, Lfuq;->a(Ldbf;Lfux;Lika;)Lflj;

    move-result-object v0

    iput-object v0, p0, Leuy;->C:Lflj;

    iget-object v0, p0, Leuy;->d:Litm;

    move-object v1, v0

    check-cast v1, Lisi;

    iget-boolean v1, v1, Lisi;->S:Z

    if-eqz v1, :cond_2

    invoke-interface {v0}, Litm;->p()V

    :cond_2
    iget-object v0, p0, Leuy;->G:Ldhi;

    sget-object v1, Ldho;->as:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Leuy;->d:Litm;

    invoke-interface {v0}, Litm;->z()V

    :cond_3
    iget-object v0, p0, Leuy;->C:Lflj;

    if-eqz v0, :cond_4

    new-instance v1, Lcmc;

    const/16 v2, 0xa

    invoke-direct {v1, p0, v2}, Lcmc;-><init>(Leuy;I)V

    iget-object v2, p0, Leuy;->g:Ljuh;

    invoke-static {v0, v1, v2}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    :cond_4
    return-void
.end method

.method protected final l()V
    .locals 5

    iget-object v0, p0, Leuy;->z:Leup;

    iget-object v0, v0, Leup;->d:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Leuy;->x:Landroid/content/Context;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/content/Context;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Leuy;->I:Lva;

    iget-object v1, v0, Lva;->c:Ljava/lang/Object;

    new-instance v2, Lazo;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-direct {v2, v0, v3, v4}, Lazo;-><init>(Lva;I[B)V

    check-cast v1, Ljuh;

    invoke-virtual {v1, v2}, Ljuh;->c(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Leuy;->s:Lhdk;

    invoke-virtual {v0}, Lhdk;->g()V

    return-void
.end method

.method protected final n()V
    .locals 6

    new-instance v0, Ljuf;

    invoke-direct {v0}, Ljuf;-><init>()V

    iput-object v0, p0, Leuy;->q:Ljuf;

    iget-object v0, p0, Leuy;->p:Leuo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Leuo;->a(Z)V

    iget-object v0, p0, Leuy;->v:Leoa;

    iget-object v2, p0, Leuy;->w:Lenz;

    invoke-virtual {v0, v2}, Leoa;->a(Lenz;)V

    iget-object v0, p0, Leuy;->q:Ljuf;

    iget-object v2, p0, Leuy;->u:Liff;

    iget-object v3, p0, Leuy;->c:Lifj;

    invoke-interface {v2, v3}, Liff;->e(Lifj;)Lkad;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljuf;->d(Lkad;)V

    iget-object v0, p0, Leuy;->q:Ljuf;

    iget-object v2, p0, Leuy;->e:Ljwb;

    iget-object v3, p0, Leuy;->u:Liff;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Leus;

    const/4 v5, 0x1

    invoke-direct {v4, v3, v5}, Leus;-><init>(Liff;I)V

    iget-object v3, p0, Leuy;->g:Ljuh;

    invoke-interface {v2, v4, v3}, Ljwb;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljuf;->d(Lkad;)V

    iget-object v0, p0, Leuy;->q:Ljuf;

    iget-object v2, p0, Leuy;->k:Ldbf;

    new-instance v3, Leus;

    invoke-direct {v3, p0, v1}, Leus;-><init>(Leuy;I)V

    sget-object v1, Lnnv;->a:Lnnv;

    invoke-virtual {v2, v3, v1}, Ldbf;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljuf;->d(Lkad;)V

    iget-object v0, p0, Leuy;->C:Lflj;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method protected final p()V
    .locals 2

    iget-object v0, p0, Leuy;->C:Lflj;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnnb;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Leuy;->C:Lflj;

    :cond_0
    iget-object v0, p0, Leuy;->m:Lici;

    invoke-virtual {v0}, Lici;->a()V

    iget-object v0, p0, Leuy;->q:Ljuf;

    invoke-virtual {v0}, Ljuf;->close()V

    return-void
.end method

.method public final declared-synchronized r()V
    .locals 9

    monitor-enter p0

    :try_start_0
    sget-object v0, Leuy;->b:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "takePictureInvoked"

    const/16 v2, 0x7b6

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    iget-object v0, p0, Leuy;->r:Lflk;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v1, p0, Leuy;->J:Ljew;

    invoke-virtual {v1, v3, v4}, Ljew;->S(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v1

    iput-object v1, p0, Leuy;->o:Lnph;

    new-instance v8, Lgwq;

    iget-object v1, p0, Leuy;->F:Lfbk;

    invoke-interface {v1}, Lfbk;->b()Lcjf;

    move-result-object v5

    iget-object v6, p0, Leuy;->E:Lhjc;

    iget-object v7, p0, Leuy;->o:Lnph;

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lgwq;-><init>(Ljava/lang/String;JLcjf;Lhjc;Lnph;)V

    iget-object v1, v0, Lflk;->c:Lfuz;

    new-instance v2, Ljvk;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, v4}, Ljvk;-><init>(Ljava/lang/Object;)V

    invoke-static {}, Lfte;->a()Lftd;

    move-result-object v4

    iget-object v5, p0, Leuy;->h:Lgft;

    invoke-interface {v5}, Lgft;->c()Lkab;

    move-result-object v5

    invoke-virtual {v5}, Lkab;->a()I

    move-result v5

    invoke-virtual {v4, v5}, Lftd;->g(I)V

    new-instance v5, Leuv;

    invoke-direct {v5, p0}, Leuv;-><init>(Leuy;)V

    invoke-virtual {v4, v5}, Lftd;->b(Lftf;)V

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lftd;->e(I)V

    invoke-interface {v1}, Lkli;->k()Lklv;

    move-result-object v5

    invoke-virtual {v4, v5}, Lftd;->c(Lklv;)V

    invoke-interface {v1}, Lkli;->O()[B

    move-result-object v1

    iput-object v1, v4, Lftd;->a:[B

    invoke-virtual {v4, v2}, Lftd;->h(Ljwb;)V

    invoke-virtual {v4, v3}, Lftd;->d(Z)V

    invoke-virtual {v4, v3}, Lftd;->f(Z)V

    invoke-virtual {v4}, Lftd;->a()Lfte;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Lflk;->f(Lfte;Lgxl;)Lnou;

    move-result-object v0

    new-instance v1, Leuw;

    invoke-direct {v1, p0}, Leuw;-><init>(Leuy;)V

    iget-object v2, p0, Leuy;->g:Ljuh;

    invoke-static {v0, v1, v2}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final t()Z
    .locals 1

    iget-object v0, p0, Leuy;->p:Leuo;

    iget-boolean v0, v0, Leuo;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Leuy;->t:Lcom/google/android/apps/camera/bottombar/BottomBarListener;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/bottombar/BottomBarListener;->onRetakeButtonPressed()V

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-virtual {p0}, Leuy;->x()Z

    move-result v0

    return v0
.end method

.method public final u()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final declared-synchronized w()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Leuy;->o:Lnph;

    invoke-virtual {v0}, Lnph;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Leuy;->z:Leup;

    iget-object v2, v1, Leup;->d:Lmqp;

    invoke-virtual {v2}, Lmqp;->g()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    new-instance v3, Leow;

    const/4 v4, 0x4

    invoke-direct {v3, v1, v2, v0, v4}, Leow;-><init>(Leup;Landroid/net/Uri;[BI)V

    iget-object v0, v1, Leup;->f:Ljava/util/concurrent/Executor;

    invoke-static {v3, v0}, Lnsy;->E(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v0

    new-instance v3, Lenq;

    const/4 v4, 0x5

    invoke-direct {v3, v1, v2, v4}, Lenq;-><init>(Leup;Landroid/net/Uri;I)V

    iget-object v1, v1, Leup;->c:Ljuh;

    invoke-static {v0, v3, v1}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v2, "ImageIntent:CompressingImageIntoIntentExtra"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-static {v0}, Lilu;->c([B)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Trace;->endSection()V

    new-instance v2, Landroid/content/Intent;

    const-string v3, "inline-data"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "data"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    iget-object v2, v1, Leup;->c:Ljuh;

    new-instance v3, Lekf;

    const/16 v4, 0x13

    invoke-direct {v3, v1, v0, v4}, Lekf;-><init>(Leup;Landroid/content/Intent;I)V

    invoke-virtual {v2, v3}, Ljuh;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    :try_start_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Couldn\'t get image data from Future"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public final x()Z
    .locals 1

    iget-object v0, p0, Leuy;->p:Leuo;

    invoke-virtual {v0}, Leuo;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Leuy;->p:Leuo;

    invoke-static {}, Ljuh;->a()V

    iget-object v0, v0, Leuo;->c:Lhwc;

    invoke-virtual {v0}, Lhwc;->a()V

    iget-object v0, p0, Leuy;->D:Lhud;

    invoke-virtual {v0}, Lhua;->b()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
