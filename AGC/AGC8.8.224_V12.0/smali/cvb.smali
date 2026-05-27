.class public final Lcvb;
.super Ljava/lang/Object;

# interfaces
.implements Ljxw;
.implements Ljxy;


# static fields
.field private static final d:Lnak;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/concurrent/atomic/AtomicLong;

.field public c:Z

.field private final e:Ljxx;

.field private final f:Ljwb;

.field private final g:Lczg;

.field private final h:Lkad;

.field private final i:Lcqv;

.field private j:Z

.field private k:Z

.field private l:J

.field private m:Lcva;

.field private final n:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/camcorder/media/metadata/TopshotMetadataEncoderImpl"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lcvb;->d:Lnak;

    return-void
.end method

.method public constructor <init>(Ljxx;Ljwb;Lczg;Lcqv;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, -0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcvb;->b:Ljava/util/concurrent/atomic/AtomicLong;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcvb;->j:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcvb;->c:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcvb;->n:Ljava/lang/Object;

    iput-object p1, p0, Lcvb;->e:Ljxx;

    iput-object p2, p0, Lcvb;->f:Ljwb;

    const-string p1, "application/microvideo-image-meta"

    iput-object p1, p0, Lcvb;->a:Ljava/lang/String;

    iput-object p3, p0, Lcvb;->g:Lczg;

    new-instance p1, Lckj;

    const/16 p3, 0x14

    invoke-direct {p1, p0, p3}, Lckj;-><init>(Lcvb;I)V

    sget-object p3, Lnnv;->a:Lnnv;

    invoke-interface {p2, p1, p3}, Ljwb;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object p1

    iput-object p1, p0, Lcvb;->h:Lkad;

    iput-object p4, p0, Lcvb;->i:Lcqv;

    sget-object p1, Lcva;->a:Lcva;

    iput-object p1, p0, Lcvb;->m:Lcva;

    return-void
.end method

.method public static synthetic J$058(Lnve;)[B
    .locals 1

    invoke-virtual/range {p0 .. p0}, Lnve;->J()[B

    move-result-object v0

    return-object v0
.end method

.method public static synthetic NANOSECONDS$001()Ljava/util/concurrent/TimeUnit;
    .locals 1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    return-object v0
.end method

.method public static synthetic O$032(Lnws;)Lnwn;
    .locals 1

    invoke-virtual/range {p0 .. p0}, Lnws;->O()Lnwn;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic O$039(Lnws;)Lnwn;
    .locals 1

    invoke-virtual/range {p0 .. p0}, Lnws;->O()Lnwn;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic O$045(Lnws;)Lnwn;
    .locals 1

    invoke-virtual/range {p0 .. p0}, Lnws;->O()Lnwn;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic S$052(Lnwn;Loan;)V
    .locals 1

    invoke-virtual/range {p0 .. p1}, Lnwn;->S(Loan;)V

    return-void
.end method

.method public static synthetic a$021(Lgse;Lgsl;Ljava/util/Collection;Z)Lgsk;
    .locals 1

    invoke-virtual/range {p0 .. p3}, Lgse;->a(Lgsl;Ljava/util/Collection;Z)Lgsk;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic a$029(Ljxx;Landroid/media/MediaFormat;)Lmqp;
    .locals 1

    invoke-interface/range {p0 .. p1}, Ljxx;->a(Landroid/media/MediaFormat;)Lmqp;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ac$033(Lnws;)Z
    .locals 1

    invoke-virtual/range {p0 .. p0}, Lnws;->ac()Z

    move-result v0

    return v0
.end method

.method public static synthetic ac$035(Lnws;)Z
    .locals 1

    invoke-virtual/range {p0 .. p0}, Lnws;->ac()Z

    move-result v0

    return v0
.end method

.method public static synthetic ac$037(Lnws;)Z
    .locals 1

    invoke-virtual/range {p0 .. p0}, Lnws;->ac()Z

    move-result v0

    return v0
.end method

.method public static synthetic ac$040(Lnws;)Z
    .locals 1

    invoke-virtual/range {p0 .. p0}, Lnws;->ac()Z

    move-result v0

    return v0
.end method

.method public static synthetic ac$047(Lnws;)Z
    .locals 1

    invoke-virtual/range {p0 .. p0}, Lnws;->ac()Z

    move-result v0

    return v0
.end method

.method public static synthetic ac$049(Lnws;)Z
    .locals 1

    invoke-virtual/range {p0 .. p0}, Lnws;->ac()Z

    move-result v0

    return v0
.end method

.method public static synthetic ac$054(Lnws;)Z
    .locals 1

    invoke-virtual/range {p0 .. p0}, Lnws;->ac()Z

    move-result v0

    return v0
.end method

.method public static synthetic add$017(Ljava/util/List;Ljava/lang/Object;)Z
    .locals 1

    invoke-interface/range {p0 .. p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static synthetic add$023(Ljava/util/List;Ljava/lang/Object;)Z
    .locals 1

    invoke-interface/range {p0 .. p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static synthetic add$026(Ljava/util/List;Ljava/lang/Object;)Z
    .locals 1

    invoke-interface/range {p0 .. p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static synthetic c$002(Lnaf;)Lnaz;
    .locals 1

    invoke-virtual/range {p0 .. p0}, Lnaf;->c()Lnaz;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c$061(Lmqp;)Ljava/lang/Object;
    .locals 1

    invoke-virtual/range {p0 .. p0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic contains$022(Ljava/util/List;Ljava/lang/Object;)Z
    .locals 1

    invoke-interface/range {p0 .. p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static synthetic g$030(Lmqp;)Z
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

.method public static synthetic get$008(Ljava/util/List;I)Ljava/lang/Object;
    .locals 1

    invoke-interface/range {p0 .. p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic get$010(Ljava/util/List;I)Ljava/lang/Object;
    .locals 1

    invoke-interface/range {p0 .. p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic get$013(Ljava/util/List;I)Ljava/lang/Object;
    .locals 1

    invoke-interface/range {p0 .. p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic get$015(Ljava/util/List;I)Ljava/lang/Object;
    .locals 1

    invoke-interface/range {p0 .. p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic get$025(Ljava/util/List;I)Ljava/lang/Object;
    .locals 1

    invoke-interface/range {p0 .. p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic get$031(Ljava/util/concurrent/atomic/AtomicLong;)J
    .locals 1

    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic get$060(Ljava/util/concurrent/atomic/AtomicLong;)J
    .locals 1

    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic getClass$056(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic hasNext$004(Ljava/util/Iterator;)Z
    .locals 1

    invoke-interface/range {p0 .. p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public static synthetic hasNext$019(Ljava/util/Iterator;)Z
    .locals 1

    invoke-interface/range {p0 .. p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public static synthetic hasNext$043(Ljava/util/Iterator;)Z
    .locals 1

    invoke-interface/range {p0 .. p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public static synthetic i$051(Lnwn;)Lnws;
    .locals 1

    invoke-virtual/range {p0 .. p0}, Lnwn;->i()Lnws;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic i$053(Lnwn;)Lnws;
    .locals 1

    invoke-virtual/range {p0 .. p0}, Lnwn;->i()Lnws;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic i$057(Lnwn;)Lnws;
    .locals 1

    invoke-virtual/range {p0 .. p0}, Lnwn;->i()Lnws;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic intValue$062(Ljava/lang/Integer;)I
    .locals 1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static synthetic isEmpty$001(Ljava/util/List;)Z
    .locals 1

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public static synthetic isEmpty$027(Ljava/util/List;)Z
    .locals 1

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public static synthetic iterator$003(Ljava/util/List;)Ljava/util/Iterator;
    .locals 1

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic iterator$018(Ljava/util/List;)Ljava/util/Iterator;
    .locals 1

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic iterator$042(Ljava/util/List;)Ljava/util/Iterator;
    .locals 1

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic longValue$009(Ljava/lang/Long;)J
    .locals 1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic longValue$011(Ljava/lang/Long;)J
    .locals 1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic longValue$014(Ljava/lang/Long;)J
    .locals 1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic longValue$016(Ljava/lang/Long;)J
    .locals 1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private final m(J)J
    .locals 2

    invoke-direct {p0}, Lcvb;->n()V

    iget-wide v0, p0, Lcvb;->l:J

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public static synthetic m$063(Ljxx;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;I)V
    .locals 1

    invoke-interface/range {p0 .. p3}, Ljxx;->m(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;I)V

    return-void
.end method

.method private final n()V
    .locals 6

    iget-boolean v0, p0, Lcvb;->k:Z

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    mul-long v4, v4, v2

    sub-long/2addr v0, v4

    iput-wide v0, p0, Lcvb;->l:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcvb;->k:Z

    :cond_0
    return-void
.end method

.method public static synthetic n$046(Lcvb;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Lcvb;->n()V

    return-void
.end method

.method public static synthetic next$005(Ljava/util/Iterator;)Ljava/lang/Object;
    .locals 1

    invoke-interface/range {p0 .. p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic next$020(Ljava/util/Iterator;)Ljava/lang/Object;
    .locals 1

    invoke-interface/range {p0 .. p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic next$044(Ljava/util/Iterator;)Ljava/lang/Object;
    .locals 1

    invoke-interface/range {p0 .. p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private o()V
    .locals 5

    const v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    const v0, 0x0

    aput-object p0, v2, v0

    const-string/jumbo v1, "CVoru5HFLXQdTBhP"

    invoke-static {v1, v2}, Lcom/pairip/VMRunner;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-void
.end method

.method public static synthetic p$034(Lnwn;)V
    .locals 1

    invoke-virtual/range {p0 .. p0}, Lnwn;->p()V

    return-void
.end method

.method public static synthetic p$036(Lnwn;)V
    .locals 1

    invoke-virtual/range {p0 .. p0}, Lnwn;->p()V

    return-void
.end method

.method public static synthetic p$038(Lnwn;)V
    .locals 1

    invoke-virtual/range {p0 .. p0}, Lnwn;->p()V

    return-void
.end method

.method public static synthetic p$041(Lnwn;)V
    .locals 1

    invoke-virtual/range {p0 .. p0}, Lnwn;->p()V

    return-void
.end method

.method public static synthetic p$048(Lnwn;)V
    .locals 1

    invoke-virtual/range {p0 .. p0}, Lnwn;->p()V

    return-void
.end method

.method public static synthetic p$050(Lnwn;)V
    .locals 1

    invoke-virtual/range {p0 .. p0}, Lnwn;->p()V

    return-void
.end method

.method public static synthetic p$055(Lnwn;)V
    .locals 1

    invoke-virtual/range {p0 .. p0}, Lnwn;->p()V

    return-void
.end method

.method public static synthetic remaining$059(Ljava/nio/ByteBuffer;)I
    .locals 1

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    return v0
.end method

.method public static synthetic setString$028(Landroid/media/MediaFormat;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual/range {p0 .. p2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic size$007(Ljava/util/List;)I
    .locals 1

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public static synthetic size$012(Ljava/util/List;)I
    .locals 1

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public static synthetic size$024(Ljava/util/List;)I
    .locals 1

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public static synthetic toMicros$006(Ljava/util/concurrent/TimeUnit;J)J
    .locals 1

    invoke-virtual/range {p0 .. p2}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final a(Ljyk;)V
    .locals 0

    return-void
.end method

.method public final b(J)V
    .locals 5

    iget-object v0, p0, Lcvb;->g:Lczg;

    invoke-direct {p0, p1, p2}, Lcvb;->m(J)J

    move-result-wide p1

    iget-object v1, v0, Lczg;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    iget-object v1, v0, Lczg;->d:Ljava/util/List;

    invoke-static {v1}, Llyh;->S(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v1, p1, v3

    if-ltz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    :goto_0
    invoke-static {v2}, Lmoz;->p(Z)V

    iget-object v0, v0, Lczg;->d:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Lcvb;->n:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcvb;->m:Lcva;

    sget-object v2, Lcva;->d:Lcva;

    if-ne v1, v2, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcvb;->h:Lkad;

    invoke-interface {v1}, Lkad;->close()V

    sget-object v1, Lcva;->d:Lcva;

    iput-object v1, p0, Lcvb;->m:Lcva;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final close()V
    .locals 0

    return-void
.end method

.method public final d(J)V
    .locals 5

    iget-object v0, p0, Lcvb;->g:Lczg;

    invoke-direct {p0, p1, p2}, Lcvb;->m(J)J

    move-result-wide p1

    iget-object v1, v0, Lczg;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    iget-object v1, v0, Lczg;->e:Ljava/util/List;

    invoke-static {v1}, Llyh;->S(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v1, p1, v3

    if-ltz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    :goto_0
    invoke-static {v2}, Lmoz;->p(Z)V

    iget-object v0, v0, Lczg;->e:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final e()V
    .locals 0

    return-void
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lcvb;->n:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcvb;->i:Lcqv;

    invoke-interface {v1}, Lcqv;->j()Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-direct {p0}, Lcvb;->o()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final g()V
    .locals 0

    return-void
.end method

.method public final h()V
    .locals 4

    iget-object v0, p0, Lcvb;->n:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcvb;->f:Ljwb;

    check-cast v1, Ljvk;

    iget-object v1, v1, Ljvk;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Lcvb;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v1, p0, Lcvb;->g:Lczg;

    invoke-virtual {v1}, Lczg;->a()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcvb;->j:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final i(JJ)V
    .locals 0

    return-void
.end method

.method public final j()V
    .locals 4

    iget-object v0, p0, Lcvb;->n:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcvb;->m:Lcva;

    sget-object v2, Lcva;->a:Lcva;

    if-eq v1, v2, :cond_0

    sget-object v1, Lcvb;->d:Lnak;

    invoke-virtual {v1}, Lnaf;->b()Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const/16 v2, 0x2d7

    invoke-interface {v1, v2}, Lnah;->G(I)Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const-string v2, "Trying to start with state %s"

    iget-object v3, p0, Lcvb;->m:Lcva;

    invoke-interface {v1, v2, v3}, Lnah;->r(Ljava/lang/String;Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcvb;->e:Ljxx;

    invoke-interface {v1, p0}, Ljxx;->c(Ljxy;)V

    sget-object v1, Lcva;->b:Lcva;

    iput-object v1, p0, Lcvb;->m:Lcva;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final k()V
    .locals 6

    iget-object v0, p0, Lcvb;->n:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcvb;->m:Lcva;

    sget-object v2, Lcva;->b:Lcva;

    if-eq v1, v2, :cond_0

    sget-object v1, Lcvb;->d:Lnak;

    invoke-virtual {v1}, Lnaf;->b()Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const/16 v2, 0x2d9

    invoke-interface {v1, v2}, Lnah;->G(I)Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const-string v2, "Trying to stop with state %s"

    iget-object v3, p0, Lcvb;->m:Lcva;

    invoke-interface {v1, v2, v3}, Lnah;->r(Ljava/lang/String;Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :cond_0
    sget-object v1, Lcva;->c:Lcva;

    iput-object v1, p0, Lcvb;->m:Lcva;

    iget-object v1, p0, Lcvb;->e:Ljxx;

    invoke-interface {v1, p0}, Ljxx;->g(Ljxy;)V

    iget-object v1, p0, Lcvb;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    sget-object v1, Lcvb;->d:Lnak;

    invoke-virtual {v1}, Lnaf;->b()Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const/16 v2, 0x2d8

    invoke-interface {v1, v2}, Lnah;->G(I)Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const-string v2, "No video frame is received yet."

    invoke-interface {v1, v2}, Lnah;->o(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_1
    invoke-direct {p0}, Lcvb;->o()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final l(Llqh;J)V
    .locals 0

    return-void
.end method
