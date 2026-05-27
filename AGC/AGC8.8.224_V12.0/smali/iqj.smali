.class public final Liqj;
.super Ljava/lang/Object;

# interfaces
.implements Lezh;
.implements Lipk;
.implements Ljqb;
.implements Lfaz;
.implements Lfan;
.implements Lfax;
.implements Lfay;
.implements Lfaq;


# static fields
.field private static final A:[J

.field public static final a:Lnak;

.field public static b:Z


# instance fields
.field private B:Ljava/lang/String;

.field private C:Landroid/content/Intent;

.field private final D:Landroid/os/HandlerThread;

.field private final E:Landroid/app/Activity;

.field private final F:Lhgy;

.field private final G:Lfbz;

.field private final H:Liql;

.field private final I:Landroid/content/Context;

.field private final J:Liff;

.field private final K:Lcom/google/android/apps/camera/bottombar/BottomBarController;

.field private final L:Lhwc;

.field private final M:Ljwb;

.field private final N:Liqb;

.field private O:I

.field private P:J

.field c:J

.field d:Z

.field public e:I

.field public f:I

.field g:Ljava/lang/Runnable;

.field h:Ljava/lang/Runnable;

.field public final i:Landroid/os/Handler;

.field public final j:Lipw;

.field public final k:Ljwb;

.field public final l:Lkbc;

.field public final m:Ljava/lang/Object;

.field public final n:Litm;

.field public final o:Ljwb;

.field public final p:Ljuf;

.field public final q:Ldbf;

.field public final r:Ligx;

.field public final s:Lmqp;

.field public t:Z

.field public u:Z

.field public v:Z

.field final w:Lhfv;

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public final z:Lknz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/wear/wearv2/WearRemoteShutterListenerV2"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Liqj;->a:Lnak;

    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Liqj;->A:[J

    const/4 v0, 0x0

    sput-boolean v0, Liqj;->b:Z

    return-void

    :array_0
    .array-data 8
        0x0
        0x190
    .end array-data
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Lknz;Lipw;Ljwb;Liqd;Litm;Ljwb;Lhgy;Lfbz;Liql;Ldbf;Ligx;Liff;Lcom/google/android/apps/camera/bottombar/BottomBarController;Lhwc;Ljwb;Lmqp;Liqb;Lkbc;)V
    .locals 7

    move-object v1, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Liqj;->c:J

    const/4 v0, 0x0

    iput-boolean v0, v1, Liqj;->d:Z

    const/16 v2, 0x1e0

    iput v2, v1, Liqj;->e:I

    iput v2, v1, Liqj;->f:I

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v1, Liqj;->m:Ljava/lang/Object;

    iput v0, v1, Liqj;->O:I

    const-wide/16 v2, -0x1

    iput-wide v2, v1, Liqj;->P:J

    new-instance v2, Liqi;

    invoke-direct {v2, p0}, Liqi;-><init>(Liqj;)V

    iput-object v2, v1, Liqj;->w:Lhfv;

    move-object v2, p1

    iput-object v2, v1, Liqj;->E:Landroid/app/Activity;

    move-object v2, p3

    iput-object v2, v1, Liqj;->z:Lknz;

    move-object v2, p4

    iput-object v2, v1, Liqj;->j:Lipw;

    move-object v2, p5

    iput-object v2, v1, Liqj;->k:Ljwb;

    move-object v2, p7

    iput-object v2, v1, Liqj;->n:Litm;

    move-object/from16 v2, p9

    iput-object v2, v1, Liqj;->F:Lhgy;

    move-object/from16 v2, p10

    iput-object v2, v1, Liqj;->G:Lfbz;

    move-object/from16 v2, p11

    iput-object v2, v1, Liqj;->H:Liql;

    move-object/from16 v2, p20

    iput-object v2, v1, Liqj;->l:Lkbc;

    move-object v2, p2

    iput-object v2, v1, Liqj;->I:Landroid/content/Context;

    move-object v3, p8

    iput-object v3, v1, Liqj;->o:Ljwb;

    move-object/from16 v3, p12

    iput-object v3, v1, Liqj;->q:Ldbf;

    move-object/from16 v3, p13

    iput-object v3, v1, Liqj;->r:Ligx;

    move-object/from16 v3, p14

    iput-object v3, v1, Liqj;->J:Liff;

    move-object/from16 v3, p15

    iput-object v3, v1, Liqj;->K:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    move-object/from16 v3, p16

    iput-object v3, v1, Liqj;->L:Lhwc;

    move-object/from16 v3, p17

    iput-object v3, v1, Liqj;->M:Ljwb;

    move-object/from16 v3, p18

    iput-object v3, v1, Liqj;->s:Lmqp;

    move-object/from16 v3, p19

    iput-object v3, v1, Liqj;->N:Liqb;

    new-instance v3, Ljuf;

    invoke-direct {v3}, Ljuf;-><init>()V

    iput-object v3, v1, Liqj;->p:Ljuf;

    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "WRSListenerV2 bkg"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v3, v1, Liqj;->D:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {v3}, Ljvd;->o(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v3

    iput-object v3, v1, Liqj;->i:Landroid/os/Handler;

    sget-object v3, Ljcd;->a:Ljcd;

    invoke-static {p2}, Ljqe;->a(Landroid/content/Context;)Ljde;

    move-result-object v2

    new-array v0, v0, [Ljde;

    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v2, Ljeq;->c:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v0, Ljeq;->d:Ljeq;

    const-string v4, "Must guarantee manager is non-null before using getInstance"

    invoke-static {v0, v4}, Ljhp;->ac(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Ljeq;->d:Ljeq;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v2, Ljea;

    invoke-direct {v2, v3}, Ljea;-><init>(Ljava/lang/Iterable;)V

    iget-object v0, v0, Ljeq;->n:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, v2, Ljea;->d:Ljava/lang/Object;

    check-cast v0, Lkgd;

    iget-object v0, v0, Lkgd;->a:Ljava/lang/Object;

    sget-object v2, Ljow;->a:Ljava/util/concurrent/Executor;

    new-instance v4, Ljox;

    invoke-direct {v4}, Ljox;-><init>()V

    check-cast v0, Ljox;

    iget-object v5, v0, Ljox;->f:Lmob;

    new-instance v6, Ljor;

    invoke-direct {v6, v2, v4}, Ljor;-><init>(Ljava/util/concurrent/Executor;Ljox;)V

    invoke-virtual {v5, v6}, Lmob;->d(Ljou;)V

    invoke-virtual {v0}, Ljox;->m()V

    new-instance v0, Liqf;

    move-object v2, p6

    invoke-direct {v0, p0, p6}, Liqf;-><init>(Liqj;Liqd;)V

    invoke-virtual {v4, v0}, Ljot;->l(Ljop;)V

    new-instance v0, Lilp;

    invoke-direct {v0, p0, v3}, Lilp;-><init>(Liqj;I)V

    invoke-virtual {v4, v0}, Ljot;->i(Ljoo;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private final t()V
    .locals 1

    invoke-virtual {p0}, Liqj;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Liqj;->H:Liql;

    iget-object v0, v0, Liql;->c:Liqk;

    invoke-virtual {v0}, Liqk;->b()V

    :cond_0
    return-void
.end method

.method private final u()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Liqj;->B:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Liqj;->P:J

    return-void
.end method

.method private final v()V
    .locals 3

    iget-object v0, p0, Liqj;->i:Landroid/os/Handler;

    new-instance v1, Liqg;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Liqg;-><init>(Liqj;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final w(Ljava/lang/String;J)V
    .locals 8

    iget-object v0, p0, Liqj;->i:Landroid/os/Handler;

    new-instance v7, Ldcf;

    const/16 v6, 0xd

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, Ldcf;-><init>(Liqj;Ljava/lang/String;JI)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final x()V
    .locals 4

    const/4 v0, 0x1

    sget-boolean v1, Liqj;->b:Z

    if-eq v0, v1, :cond_0

    const-string v0, "onPause"

    goto :goto_0

    :cond_0
    const-string v0, "onResume"

    :goto_0
    iget-object v1, p0, Liqj;->i:Landroid/os/Handler;

    new-instance v2, Lioi;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v0, v3}, Lioi;-><init>(Liqj;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final y(I)V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Liqj;->z(Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-gtz p1, :cond_1

    iget-object v0, p0, Liqj;->L:Lhwc;

    invoke-virtual {v0}, Lhwc;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Liqj;->J:Liff;

    invoke-interface {p1}, Liff;->t()V

    return-void

    :cond_1
    iget-object v0, p0, Liqj;->M:Ljwb;

    invoke-static {p1}, Lgyu;->a(I)Lgyu;

    move-result-object v1

    invoke-interface {v0, v1}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object v0, p0, Liqj;->G:Lfbz;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lfbz;->ao(I)V

    iget-object v0, p0, Liqj;->J:Liff;

    invoke-static {p1}, Lgyu;->a(I)Lgyu;

    move-result-object p1

    invoke-interface {v0, p1}, Liff;->ai(Lgyu;)V

    iget-object p1, p0, Liqj;->J:Liff;

    invoke-interface {p1}, Liff;->u()V

    iget-object p1, p0, Liqj;->J:Liff;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Liff;->z(Z)V

    iget-object p1, p0, Liqj;->J:Liff;

    invoke-interface {p1}, Liff;->t()V

    return-void
.end method

.method private final z(Z)Z
    .locals 3

    iget-object v0, p0, Liqj;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Liqj;->x:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    sget-boolean v1, Liqj;->b:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Liqj;->d:Z

    if-eqz p1, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public final a(Ljsp;)V
    .locals 10

    iget-object v0, p1, Ljsp;->b:Ljava/lang/String;

    const-string v1, "/sending_time"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p1, Ljsp;->a:I

    iget-object v0, p1, Ljsp;->b:Ljava/lang/String;

    :cond_0
    iget-object v0, p1, Ljsp;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    sparse-switch v2, :sswitch_data_0

    :cond_1
    goto/16 :goto_0

    :sswitch_0
    const-string v1, "/flip_camera"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "onResume"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto/16 :goto_1

    :sswitch_2
    const-string v1, "/snapshot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x7

    goto/16 :goto_1

    :sswitch_3
    const-string v1, "/zoom_value"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_4
    const-string v1, "/log_lost_connection"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    goto/16 :goto_1

    :sswitch_5
    const-string v1, "/play_sound_from_wear"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_6
    const-string v1, "/enter_ambient"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto/16 :goto_1

    :sswitch_7
    const-string v1, "/launch_from_notification"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xa

    goto :goto_1

    :sswitch_8
    const-string v1, "/zoom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xd

    goto :goto_1

    :sswitch_9
    const-string v1, "/leave_ambient"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_a
    const-string v1, "/count_down_setting_from_wear"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x10

    goto :goto_1

    :sswitch_b
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_c
    const-string v1, "/check_status"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_d
    const-string v1, "/count_down_from_phone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xf

    goto :goto_1

    :sswitch_e
    const-string v1, "onPause"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_f
    const-string v1, "/support_feature_version"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xe

    goto :goto_1

    :sswitch_10
    const-string v1, "/wear_size"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xb

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    const-string v1, "Error when parsing count down time"

    const-wide/16 v8, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_8

    :pswitch_0
    :try_start_0
    iget-object p1, p1, Ljsp;->c:[B

    invoke-static {}, Lnwh;->a()Lnwh;

    move-result-object v0

    sget-object v2, Lipm;->b:Lipm;

    array-length v3, p1

    invoke-static {v2, p1, v7, v3, v0}, Lnws;->Q(Lnws;[BIILnwh;)Lnws;

    move-result-object p1

    invoke-static {p1}, Lnws;->ae(Lnws;)V

    check-cast p1, Lipm;

    iget v7, p1, Lipm;->a:I
    :try_end_0
    .catch Lnxd; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    sget-object v0, Liqj;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const/16 v2, 0x1127

    invoke-static {v0, v1, v2, p1}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    :goto_2
    iget-object p1, p0, Liqj;->M:Ljwb;

    invoke-interface {p1}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgyu;

    iget p1, p1, Lgyu;->g:I

    if-eq p1, v7, :cond_7

    iget-object p1, p0, Liqj;->M:Ljwb;

    invoke-static {v7}, Lgyu;->a(I)Lgyu;

    move-result-object v0

    invoke-interface {p1, v0}, Ljwb;->bn(Ljava/lang/Object;)V

    return-void

    :pswitch_1
    :try_start_1
    iget-object p1, p1, Ljsp;->c:[B

    invoke-static {}, Lnwh;->a()Lnwh;

    move-result-object v0

    sget-object v2, Lipm;->b:Lipm;

    array-length v3, p1

    invoke-static {v2, p1, v7, v3, v0}, Lnws;->Q(Lnws;[BIILnwh;)Lnws;

    move-result-object p1

    invoke-static {p1}, Lnws;->ae(Lnws;)V

    check-cast p1, Lipm;

    iget p1, p1, Lipm;->a:I

    invoke-direct {p0, p1}, Liqj;->y(I)V
    :try_end_1
    .catch Lnxd; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    sget-object v0, Liqj;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const/16 v2, 0x1124

    invoke-static {v0, v1, v2, p1}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    return-void

    :pswitch_2
    :try_start_2
    iget-object v0, p0, Liqj;->N:Liqb;

    iget-object p1, p1, Ljsp;->c:[B

    if-eqz p1, :cond_2

    invoke-static {}, Lnwh;->a()Lnwh;

    move-result-object v1

    sget-object v2, Lipp;->b:Lipp;

    array-length v3, p1

    invoke-static {v2, p1, v7, v3, v1}, Lnws;->Q(Lnws;[BIILnwh;)Lnws;

    move-result-object p1

    invoke-static {p1}, Lnws;->ae(Lnws;)V

    check-cast p1, Lipp;

    iget p1, p1, Lipp;->a:I

    iput p1, v0, Liqb;->b:I

    :cond_2
    iget-object p1, p0, Liqj;->N:Liqb;

    iget p1, p1, Liqb;->b:I
    :try_end_2
    .catch Lnxd; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    move-exception p1

    sget-object v0, Liqj;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "Fail to parse version!"

    const/16 v2, 0x1123

    invoke-static {v0, v1, v2, p1}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    return-void

    :pswitch_3
    :try_start_3
    iget-object p1, p1, Ljsp;->c:[B

    sget-object v0, Lipq;->b:Lipq;

    array-length v1, p1

    sget-object v2, Lnwh;->a:Lnwh;

    invoke-static {v0, p1, v7, v1, v2}, Lnws;->Q(Lnws;[BIILnwh;)Lnws;

    move-result-object p1

    invoke-static {p1}, Lnws;->ae(Lnws;)V

    check-cast p1, Lipq;

    iget p1, p1, Lipq;->a:F

    invoke-virtual {p0}, Liqj;->s()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Liqj;->n:Litm;

    invoke-interface {v0}, Litm;->v()V

    iget-object v0, p0, Liqj;->n:Litm;

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-lez p1, :cond_3

    const p1, 0x3f8147ae    # 1.01f

    goto :goto_3

    :cond_3
    const p1, 0x3f7d70a4    # 0.99f

    :goto_3
    invoke-interface {v0, p1}, Litm;->u(F)V

    iget-object p1, p0, Liqj;->n:Litm;

    invoke-interface {p1}, Litm;->w()V
    :try_end_3
    .catch Lnxd; {:try_start_3 .. :try_end_3} :catch_3

    return-void

    :catch_3
    move-exception p1

    sget-object v0, Liqj;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "Error when get zoom delta"

    const/16 v2, 0x1121

    invoke-static {v0, v1, v2, p1}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    return-void

    :pswitch_4
    :try_start_4
    iget-object p1, p1, Ljsp;->c:[B

    sget-object v0, Lips;->b:Lips;

    array-length v1, p1

    sget-object v2, Lnwh;->a:Lnwh;

    invoke-static {v0, p1, v7, v1, v2}, Lnws;->Q(Lnws;[BIILnwh;)Lnws;

    move-result-object p1

    invoke-static {p1}, Lnws;->ae(Lnws;)V

    check-cast p1, Lips;

    iget p1, p1, Lips;->a:F

    invoke-virtual {p0}, Liqj;->s()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Liqj;->n:Litm;

    invoke-interface {v0}, Litm;->v()V

    iget v0, p0, Liqj;->O:I

    add-int/2addr v0, v6

    iput v0, p0, Liqj;->O:I

    iget-object v0, p0, Liqj;->o:Ljwb;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v0, p1}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object p1, p0, Liqj;->n:Litm;

    invoke-interface {p1}, Litm;->w()V
    :try_end_4
    .catch Lnxd; {:try_start_4 .. :try_end_4} :catch_4

    return-void

    :catch_4
    move-exception p1

    sget-object v0, Liqj;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "Error when get zoom value"

    const/16 v2, 0x1120

    invoke-static {v0, v1, v2, p1}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    return-void

    :pswitch_5
    new-instance v0, Ljava/lang/String;

    iget-object p1, p1, Ljsp;->c:[B

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    const-string p1, "x"

    invoke-virtual {v0, p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    if-ne v0, v4, :cond_7

    aget-object v0, p1, v7

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Liqj;->e:I

    aget-object p1, p1, v6

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Liqj;->f:I

    return-void

    :pswitch_6
    iget-object p1, p0, Liqj;->H:Liql;

    iget-object p1, p1, Liql;->h:Lnwn;

    iget-object v0, p1, Lnwn;->b:Lnws;

    invoke-virtual {v0}, Lnws;->ac()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lnwn;->p()V

    :cond_4
    iget-object p1, p1, Lnwn;->b:Lnws;

    check-cast p1, Lnln;

    sget-object v0, Lnln;->g:Lnln;

    iput v6, p1, Lnln;->f:I

    iget v0, p1, Lnln;->a:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p1, Lnln;->a:I

    return-void

    :pswitch_7
    new-instance v0, Ljava/lang/String;

    iget-object p1, p1, Ljsp;->c:[B

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result p1

    sparse-switch p1, :sswitch_data_1

    goto :goto_4

    :sswitch_11
    const-string p1, "TIMER_START_SOUND"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 v4, 0x0

    goto :goto_5

    :sswitch_12
    const-string p1, "TIMER_INCREMENT_SOUND"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_5

    :sswitch_13
    const-string p1, "TIMER_FINAL_SECOND_SOUND"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 v4, 0x1

    goto :goto_5

    :cond_5
    :goto_4
    const/4 v4, -0x1

    :goto_5
    packed-switch v4, :pswitch_data_1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_8
    const p1, 0x7f13002c

    goto :goto_6

    :pswitch_9
    const p1, 0x7f13002b

    goto :goto_6

    :pswitch_a
    const p1, 0x7f13002d

    :goto_6
    iget-object v0, p0, Liqj;->F:Lhgy;

    invoke-interface {v0, p1}, Lhgy;->b(I)V

    return-void

    :pswitch_b
    invoke-virtual {p0}, Liqj;->s()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Liqj;->K:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->switchCamera()V

    return-void

    :pswitch_c
    invoke-direct {p0, v7}, Liqj;->y(I)V

    return-void

    :pswitch_d
    iget-object p1, p0, Liqj;->H:Liql;

    iget v0, p1, Liql;->e:I

    add-int/2addr v0, v6

    iput v0, p1, Liql;->e:I

    return-void

    :pswitch_e
    iget-object p1, p0, Liqj;->H:Liql;

    iget-object p1, p1, Liql;->d:Liqk;

    iget-boolean v0, p1, Liqk;->c:Z

    if-nez v0, :cond_6

    iget-object p1, p1, Liqk;->d:Lkaq;

    const-string v0, "onSessionStop failed because session is not started!"

    invoke-interface {p1, v0}, Lkaq;->i(Ljava/lang/String;)V

    return-void

    :cond_6
    iput-boolean v7, p1, Liqk;->c:Z

    iget-wide v0, p1, Liqk;->b:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p1, Liqk;->a:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p1, Liqk;->b:J

    iget-object p1, p1, Liqk;->d:Lkaq;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSessionStop, elapseTimeMs = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lkaq;->f(Ljava/lang/String;)V

    return-void

    :pswitch_f
    iget-object p1, p0, Liqj;->H:Liql;

    iget-object p1, p1, Liql;->d:Liqk;

    invoke-virtual {p1}, Liqk;->b()V

    return-void

    :pswitch_10
    iput-boolean v7, p0, Liqj;->d:Z

    iget-object p1, p0, Liqj;->E:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_11
    iput-boolean v6, p0, Liqj;->d:Z

    invoke-direct {p0}, Liqj;->x()V

    invoke-virtual {p0}, Liqj;->n()V

    invoke-direct {p0}, Liqj;->v()V

    invoke-virtual {p0}, Liqj;->p()V

    invoke-virtual {p0, v8, v9}, Liqj;->m(J)V

    invoke-direct {p0}, Liqj;->t()V

    return-void

    :pswitch_12
    :try_start_5
    iget-object p1, p1, Ljsp;->c:[B

    sget-object v0, Lipo;->c:Lipo;

    array-length v1, p1

    sget-object v2, Lnwh;->a:Lnwh;

    invoke-static {v0, p1, v7, v1, v2}, Lnws;->Q(Lnws;[BIILnwh;)Lnws;

    move-result-object p1

    invoke-static {p1}, Lnws;->ae(Lnws;)V

    check-cast p1, Lipo;

    iget-wide v0, p1, Lipo;->b:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_5
    .catch Lnxd; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_7

    :catch_5
    move-exception p1

    sget-object v0, Liqj;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "Error when get WearImageBundle"

    const/16 v2, 0x1126

    invoke-static {v0, v1, v2, p1}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_7
    if-eqz p1, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Liqj;->c:J

    iput-boolean v6, p0, Liqj;->v:Z

    invoke-virtual {p0, v8, v9}, Liqj;->m(J)V

    iget-object p1, p0, Liqj;->H:Liql;

    iget-wide v0, p0, Liqj;->c:J

    iget-wide v2, p1, Liql;->f:J

    add-long/2addr v2, v0

    iput-wide v2, p1, Liql;->f:J

    iget-wide v0, p1, Liql;->g:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p1, Liql;->g:J

    return-void

    :pswitch_13
    invoke-direct {p0}, Liqj;->x()V

    invoke-direct {p0}, Liqj;->v()V

    iget-object p1, p0, Liqj;->i:Landroid/os/Handler;

    new-instance v0, Liqg;

    invoke-direct {v0, p0, v3}, Liqg;-><init>(Liqj;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Liqj;->B:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Liqj;->B:Ljava/lang/String;

    iget-wide v0, p0, Liqj;->P:J

    invoke-direct {p0, p1, v0, v1}, Liqj;->w(Ljava/lang/String;J)V

    return-void

    :cond_7
    :goto_8
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6ba86a8e -> :sswitch_10
        -0x5ed684f0 -> :sswitch_f
        -0x4fe204a9 -> :sswitch_e
        -0x3b9eeba9 -> :sswitch_d
        -0x308a1f48 -> :sswitch_c
        -0x1522f5bf -> :sswitch_b
        -0x101675b9 -> :sswitch_a
        -0x506babf -> :sswitch_9
        0x2cf7482 -> :sswitch_8
        0x868e903 -> :sswitch_7
        0x16354c62 -> :sswitch_6
        0x2dcf8368 -> :sswitch_5
        0x3b0b3b4f -> :sswitch_4
        0x441b7f74 -> :sswitch_3
        0x498b36f3 -> :sswitch_2
        0x57429eec -> :sswitch_1
        0x5e3737a8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x40b6eaf9 -> :sswitch_13
        0x21f052e5 -> :sswitch_12
        0x4f1e2498 -> :sswitch_11
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public final b()V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Liqj;->z(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Liqj;->i:Landroid/os/Handler;

    new-instance v1, Liqg;

    const/16 v2, 0xa

    invoke-direct {v1, p0, v2}, Liqg;-><init>(Liqj;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final bK()V
    .locals 13

    iget-object v0, p0, Liqj;->H:Liql;

    iget-object v1, v0, Liql;->c:Liqk;

    invoke-virtual {v1}, Liqk;->a()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_0

    iget-object v0, v0, Liql;->b:Lkaq;

    const-string v1, "Session is not started. No need to send usage log."

    invoke-interface {v0, v1}, Lkaq;->f(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_0
    iget-object v1, v0, Liql;->h:Lnwn;

    iget-object v2, v0, Liql;->c:Liqk;

    invoke-virtual {v2}, Liqk;->a()J

    move-result-wide v5

    iget-object v2, v1, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_1
    iget-object v2, v1, Lnwn;->b:Lnws;

    check-cast v2, Lnln;

    sget-object v7, Lnln;->g:Lnln;

    iget v7, v2, Lnln;->a:I

    const/4 v8, 0x1

    or-int/2addr v7, v8

    iput v7, v2, Lnln;->a:I

    iput-wide v5, v2, Lnln;->b:J

    iget-object v2, v0, Liql;->d:Liqk;

    invoke-virtual {v2}, Liqk;->a()J

    move-result-wide v5

    iget-object v2, v1, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_2
    iget-object v2, v1, Lnwn;->b:Lnws;

    move-object v7, v2

    check-cast v7, Lnln;

    iget v9, v7, Lnln;->a:I

    or-int/lit8 v9, v9, 0x2

    iput v9, v7, Lnln;->a:I

    iput-wide v5, v7, Lnln;->c:J

    iget v5, v0, Liql;->e:I

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_3
    iget-object v1, v1, Lnwn;->b:Lnws;

    check-cast v1, Lnln;

    iget v2, v1, Lnln;->a:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v1, Lnln;->a:I

    iput v5, v1, Lnln;->d:I

    iget-wide v1, v0, Liql;->g:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_5

    iget-object v5, v0, Liql;->h:Lnwn;

    iget-wide v6, v0, Liql;->f:J

    div-long/2addr v6, v1

    iget-object v1, v5, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v5}, Lnwn;->p()V

    :cond_4
    long-to-int v1, v6

    iget-object v2, v5, Lnwn;->b:Lnws;

    check-cast v2, Lnln;

    iget v5, v2, Lnln;->a:I

    or-int/lit8 v5, v5, 0x40

    iput v5, v2, Lnln;->a:I

    iput v1, v2, Lnln;->e:I

    :cond_5
    iget-object v1, v0, Liql;->h:Lnwn;

    invoke-virtual {v1}, Lnwn;->i()Lnws;

    move-result-object v1

    check-cast v1, Lnln;

    iget-object v2, v0, Liql;->a:Lfbz;

    invoke-interface {v2, v1}, Lfbz;->O(Lnln;)V

    iget-object v2, v0, Liql;->b:Lkaq;

    iget-wide v5, v1, Lnln;->b:J

    iget-wide v9, v1, Lnln;->c:J

    iget v7, v1, Lnln;->f:I

    invoke-static {v7}, Lndd;->p(I)I

    move-result v7

    if-nez v7, :cond_6

    goto :goto_0

    :cond_6
    move v8, v7

    :goto_0
    add-int/lit8 v8, v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    iget v8, v1, Lnln;->d:I

    iget-wide v11, v0, Liql;->g:J

    cmp-long v0, v11, v3

    if-lez v0, :cond_7

    iget v0, v1, Lnln;->e:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", LatencyAveragePreviewMs="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_7
    const-string v0, ""

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendUsageLog done, SessionDurationMs="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", SessionAmbientDurationMs="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", LaunchType="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", FailureLostConnectionTimes="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lkaq;->f(Ljava/lang/String;)V

    :goto_2
    iget-object v0, p0, Liqj;->h:Ljava/lang/Runnable;

    if-eqz v0, :cond_8

    iget-object v1, p0, Liqj;->j:Lipw;

    invoke-static {v0}, Llkj;->C(Ljava/lang/Object;)V

    const-string v2, "onDestroy"

    invoke-virtual {v1, v2, v0}, Lipw;->b(Ljava/lang/String;Ljava/lang/Runnable;)V

    :cond_8
    iget-object v0, p0, Liqj;->j:Lipw;

    iget-object v0, v0, Lipw;->c:Ljde;

    iget-object v1, v0, Ljde;->g:Landroid/os/Looper;

    const-string v2, "MessageListener"

    invoke-static {p0, v1, v2}, Ljfc;->b(Ljava/lang/Object;Landroid/os/Looper;Ljava/lang/String;)Ljfb;

    move-result-object v1

    iget-object v1, v1, Ljfb;->b:Ljez;

    const-string v2, "Key must not be null"

    invoke-static {v1, v2}, Labf;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x5dc7

    invoke-virtual {v0, v1, v2}, Ljde;->f(Ljez;I)Ljot;

    iget-object v0, p0, Liqj;->D:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    iget-object v0, p0, Liqj;->p:Ljuf;

    invoke-virtual {v0}, Ljuf;->close()V

    return-void
.end method

.method public final bL(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public final bO()V
    .locals 1

    iget-boolean v0, p0, Liqj;->t:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Liqj;->r()V

    return-void
.end method

.method public final bQ()V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Liqj;->z(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Liqj;->i:Landroid/os/Handler;

    new-instance v1, Liqg;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Liqg;-><init>(Liqj;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Liqj;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Liqj;->x:Ljava/lang/String;

    iput-object v1, p0, Liqj;->y:Ljava/lang/String;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Liqj;->f()V

    const/4 v0, 0x0

    sput-boolean v0, Liqj;->b:Z

    invoke-direct {p0}, Liqj;->x()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final f()V
    .locals 3

    invoke-virtual {p0}, Liqj;->s()Z

    move-result v0

    iget-object v1, p0, Liqj;->m:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_0
    iput-object v2, p0, Liqj;->x:Ljava/lang/String;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Liqj;->u()V

    if-eqz v0, :cond_0

    iget-object v0, p0, Liqj;->i:Landroid/os/Handler;

    new-instance v1, Liqg;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Liqg;-><init>(Liqj;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final g(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Liqj;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Liqj;->x:Ljava/lang/String;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Liqj;->s()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Liqj;->v()V

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Liqj;->m(J)V

    :cond_0
    invoke-direct {p0}, Liqj;->t()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final i(Landroid/graphics/Bitmap;I)V
    .locals 3

    invoke-virtual {p0}, Liqj;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Liqj;->i:Landroid/os/Handler;

    new-instance v1, Lpi;

    const/16 v2, 0xe

    invoke-direct {v1, p0, p1, p2, v2}, Lpi;-><init>(Liqj;Landroid/graphics/Bitmap;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final k(Z)V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Liqj;->z(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Liqj;->i:Landroid/os/Handler;

    new-instance v1, Lbnd;

    const/16 v2, 0x13

    invoke-direct {v1, p0, p1, v2}, Lbnd;-><init>(Liqj;ZI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final l(Ljava/lang/String;J)V
    .locals 2

    invoke-virtual {p0}, Liqj;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Liqj;->w(Ljava/lang/String;J)V

    :cond_0
    const-string v0, "/video_state_paused"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Liqj;->B:Ljava/lang/String;

    const-string v1, "/video_state_recording"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iput-wide p2, p0, Liqj;->P:J

    :cond_2
    iput-object p1, p0, Liqj;->B:Ljava/lang/String;

    const-string p2, "/video_state_stopped"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0}, Liqj;->u()V

    :cond_3
    return-void
.end method

.method public final m(J)V
    .locals 3

    invoke-virtual {p0}, Liqj;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Liqj;->g:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v1, p0, Liqj;->i:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    iget-object p1, p0, Liqj;->i:Landroid/os/Handler;

    iget-object p2, p0, Liqj;->g:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    iget-object v0, p0, Liqj;->i:Landroid/os/Handler;

    iget-object v1, p0, Liqj;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public final n()V
    .locals 3

    iget-object v0, p0, Liqj;->i:Landroid/os/Handler;

    new-instance v1, Liqg;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Liqg;-><init>(Liqj;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final o(Landroid/graphics/Bitmap;Z)V
    .locals 8

    const/4 v0, 0x1

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    if-eq v0, p2, :cond_0

    const/16 v3, 0x41

    goto :goto_0

    :cond_0
    const/16 v3, 0x1e

    :goto_0
    invoke-virtual {p1, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    :try_start_4
    const-class v3, Ljava/lang/Throwable;

    const-string v4, "addSuppressed"

    new-array v5, v0, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Throwable;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    aput-object v1, v4, v7

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    :goto_1
    :try_start_5
    throw v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception v1

    sget-object v2, Liqj;->a:Lnak;

    invoke-virtual {v2}, Lnaf;->c()Lnaz;

    move-result-object v2

    const-string v3, "Error when compressBitmap"

    const/16 v4, 0x1132

    invoke-static {v2, v3, v4, v1}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    const/4 v2, 0x0

    :goto_2
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    if-nez v2, :cond_2

    sget-object p1, Liqj;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->b()Lnaz;

    move-result-object p1

    const-string p2, "Compress bitmap failed!"

    const/16 v0, 0x1131

    invoke-static {p1, p2, v0}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return-void

    :cond_2
    sget-object p1, Lipo;->c:Lipo;

    invoke-virtual {p1}, Lnws;->O()Lnwn;

    move-result-object p1

    invoke-static {v2}, Lnvt;->u([B)Lnvt;

    move-result-object v1

    iget-object v2, p1, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lnwn;->p()V

    :cond_3
    iget-object v2, p1, Lnwn;->b:Lnws;

    check-cast v2, Lipo;

    iput-object v1, v2, Lipo;->a:Lnvt;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p1, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p1}, Lnwn;->p()V

    :cond_4
    iget-object v3, p1, Lnwn;->b:Lnws;

    check-cast v3, Lipo;

    iput-wide v1, v3, Lipo;->b:J

    invoke-virtual {p1}, Lnwn;->i()Lnws;

    move-result-object p1

    check-cast p1, Lipo;

    if-eq v0, p2, :cond_5

    const-string v1, "/image"

    goto :goto_3

    :cond_5
    const-string v1, "/preview"

    :goto_3
    xor-int/2addr p2, v0

    invoke-direct {p0, p2}, Liqj;->z(Z)Z

    move-result p2

    if-nez p2, :cond_6

    return-void

    :cond_6
    iget-object p2, p0, Liqj;->j:Lipw;

    invoke-virtual {p1}, Lnve;->J()[B

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Lipw;->d(Ljava/lang/String;[B)V

    return-void
.end method

.method public final p()V
    .locals 3

    iget-object v0, p0, Liqj;->i:Landroid/os/Handler;

    new-instance v1, Liqg;

    const/16 v2, 0x9

    invoke-direct {v1, p0, v2}, Liqg;-><init>(Liqj;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Liqj;->q()V

    return-void
.end method

.method public final q()V
    .locals 3

    iget v0, p0, Liqj;->O:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Liqj;->O:I

    return-void

    :cond_0
    iget-object v0, p0, Liqj;->i:Landroid/os/Handler;

    new-instance v1, Liqg;

    const/16 v2, 0xb

    invoke-direct {v1, p0, v2}, Liqg;-><init>(Liqj;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method final r()V
    .locals 3

    sget-object v0, Liqj;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "updateStatus"

    const/16 v2, 0x1134

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    const/4 v0, 0x1

    sput-boolean v0, Liqj;->b:Z

    invoke-direct {p0}, Liqj;->x()V

    iget-object v0, p0, Liqj;->y:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Liqj;->y:Ljava/lang/String;

    invoke-virtual {p0, v0}, Liqj;->g(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Liqj;->v()V

    :goto_0
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Liqj;->m(J)V

    invoke-direct {p0}, Liqj;->t()V

    const/4 v0, 0x0

    iput v0, p0, Liqj;->O:I

    iget-object v1, p0, Liqj;->E:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Liqj;->C:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    :goto_1
    iput-object v1, p0, Liqj;->C:Landroid/content/Intent;

    const-string v2, "extra_launch_fom_wear"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Liqj;->H:Liql;

    iget-object v0, v0, Liql;->h:Lnwn;

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_3
    iget-object v0, v0, Lnwn;->b:Lnws;

    check-cast v0, Lnln;

    sget-object v1, Lnln;->g:Lnln;

    const/4 v1, 0x2

    iput v1, v0, Lnln;->f:I

    iget v1, v0, Lnln;->a:I

    or-int/lit16 v1, v1, 0x80

    iput v1, v0, Lnln;->a:I

    iget-object v0, p0, Liqj;->I:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Liqj;->A:[J

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    :cond_4
    return-void
.end method

.method final s()Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Liqj;->z(Z)Z

    move-result v0

    return v0
.end method
