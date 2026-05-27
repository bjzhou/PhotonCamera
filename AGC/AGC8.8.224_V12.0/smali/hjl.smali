.class public final Lhjl;
.super Ljava/lang/Object;

# interfaces
.implements Lfbz;


# static fields
.field private static final m:Lnak;


# instance fields
.field private A:I

.field private final B:Ldja;

.field public final a:Ljava/lang/String;

.field public final b:Loiw;

.field public final c:J

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ldin;

.field public final g:Ljava/util/concurrent/Phaser;

.field public final h:Z

.field public final i:Landroid/content/Context;

.field public final j:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public k:J

.field public final l:Z

.field private n:J

.field private final o:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final p:Lfch;

.field private final q:Ljava/util/List;

.field private r:J

.field private s:Z

.field private t:J

.field private final u:Ljava/util/concurrent/Executor;

.field private final v:Ljava/util/LinkedHashMap;

.field private w:J

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/stats/UsageStatisticsImpl"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lhjl;->m:Lnak;

    return-void
.end method

.method public constructor <init>(Lfch;Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Ldin;ZLoiw;Ldja;Ljava/lang/String;Z[B)V
    .locals 5

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, v0, Lhjl;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lhjl;->q:Ljava/util/List;

    const-wide/16 v3, 0x0

    iput-wide v3, v0, Lhjl;->r:J

    const/4 v1, 0x1

    iput-boolean v1, v0, Lhjl;->s:Z

    iput-wide v3, v0, Lhjl;->t:J

    iput v1, v0, Lhjl;->x:I

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v3, v0, Lhjl;->v:Ljava/util/LinkedHashMap;

    new-instance v3, Ljava/util/concurrent/Phaser;

    invoke-direct {v3, v1}, Ljava/util/concurrent/Phaser;-><init>(I)V

    iput-object v3, v0, Lhjl;->g:Ljava/util/concurrent/Phaser;

    iput v1, v0, Lhjl;->y:I

    iput v1, v0, Lhjl;->z:I

    iput v1, v0, Lhjl;->A:I

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, v0, Lhjl;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lhjl;->k:J

    move-object v1, p1

    iput-object v1, v0, Lhjl;->p:Lfch;

    move-object v1, p2

    iput-object v1, v0, Lhjl;->i:Landroid/content/Context;

    move-wide v2, p3

    iput-wide v2, v0, Lhjl;->c:J

    move-object v2, p5

    iput-object v2, v0, Lhjl;->d:Ljava/lang/String;

    move-object v2, p6

    iput-object v2, v0, Lhjl;->e:Ljava/lang/String;

    move-object v2, p7

    iput-object v2, v0, Lhjl;->u:Ljava/util/concurrent/Executor;

    move-object v2, p8

    iput-object v2, v0, Lhjl;->f:Ldin;

    move v2, p9

    iput-boolean v2, v0, Lhjl;->h:Z

    move-object v2, p10

    iput-object v2, v0, Lhjl;->b:Loiw;

    move-object/from16 v2, p11

    iput-object v2, v0, Lhjl;->B:Ldja;

    move-object/from16 v2, p12

    iput-object v2, v0, Lhjl;->a:Ljava/lang/String;

    invoke-static {p2}, Lhbl;->b(Landroid/content/Context;)J

    move-result-wide v1

    iput-wide v1, v0, Lhjl;->k:J

    move/from16 v1, p13

    iput-boolean v1, v0, Lhjl;->l:Z

    return-void
.end method

.method private static aH(ILjava/lang/String;JLngp;)V
    .locals 2

    packed-switch p0, :pswitch_data_0

    sget-object p0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    goto :goto_0

    :pswitch_0
    sget-object p0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    :goto_0
    sget-object v0, Lhjl;->m:Lnak;

    invoke-virtual {v0, p0}, Lnak;->g(Ljava/util/logging/Level;)Lnah;

    move-result-object p0

    const/16 v0, 0xe7c

    invoke-interface {p0, v0}, Lnah;->G(I)Lnaz;

    move-result-object p0

    check-cast p0, Lnah;

    iget p4, p4, Lngp;->b:I

    invoke-static {p4}, Lmoz;->M(I)I

    move-result p4

    if-nez p4, :cond_0

    const/4 p4, 0x1

    :cond_0
    sget-object v0, Ldin;->a:Ldin;

    sget-object v0, Lklv;->a:Lklv;

    sget-object v0, Lgya;->a:Lgya;

    sget-object v0, Lnlc;->a:Lnlc;

    add-int/lit8 p4, p4, -0x1

    packed-switch p4, :pswitch_data_1

    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-UNKNOWN-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    goto :goto_1

    :pswitch_2
    const-string p4, "-API2_LIMITED"

    goto :goto_1

    :pswitch_3
    const-string p4, "-API2_HDR_PLUS"

    goto :goto_1

    :pswitch_4
    const-string p4, "-API2_ZSL"

    goto :goto_1

    :pswitch_5
    const-string p4, "-API2_AUTO_HDR_PLUS"

    goto :goto_1

    :pswitch_6
    const-string p4, "-API2_LEGACY"

    goto :goto_1

    :pswitch_7
    const-string p4, "-API2BETA_HDR_PLUS"

    goto :goto_1

    :pswitch_8
    const-string p4, "-API1_JPEG"

    goto :goto_1

    :pswitch_9
    const-string p4, "-UNKNOWN"

    :goto_1
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "%s%s %d"

    invoke-interface {p0, p3, p1, p4, p2}, Lnah;->B(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private final aI(Lmrl;)V
    .locals 9

    iget v6, p0, Lhjl;->x:I

    iget-wide v3, p0, Lhjl;->n:J

    iget-object v0, p0, Lhjl;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v5

    iget-object v0, p0, Lhjl;->g:Ljava/util/concurrent/Phaser;

    invoke-virtual {v0}, Ljava/util/concurrent/Phaser;->register()I

    iget-object v7, p0, Lhjl;->u:Ljava/util/concurrent/Executor;

    new-instance v8, Lhjj;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lhjj;-><init>(Lhjl;Lmrl;JII)V

    invoke-interface {v7, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final aJ(Lklv;)Lngo;
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Ldin;->a:Ldin;

    sget-object v0, Lgya;->a:Lgya;

    sget-object v0, Lnlc;->a:Lnlc;

    invoke-virtual {p0}, Lklv;->ordinal()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object p0, Lngo;->a:Lngo;

    return-object p0

    :pswitch_1
    sget-object p0, Lngo;->c:Lngo;

    return-object p0

    :pswitch_2
    sget-object p0, Lngo;->b:Lngo;

    return-object p0

    :cond_0
    :goto_0
    sget-object p0, Lngo;->a:Lngo;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final aK(Landroid/graphics/PointF;)Lnlf;
    .locals 4

    sget-object v0, Lnlf;->d:Lnlf;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    if-eqz p0, :cond_2

    iget v1, p0, Landroid/graphics/PointF;->x:F

    iget-object v2, v0, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v2, v0, Lnwn;->b:Lnws;

    check-cast v2, Lnlf;

    iget v3, v2, Lnlf;->a:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Lnlf;->a:I

    iput v1, v2, Lnlf;->b:F

    iget p0, p0, Landroid/graphics/PointF;->y:F

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_1
    iget-object v1, v0, Lnwn;->b:Lnws;

    check-cast v1, Lnlf;

    iget v2, v1, Lnlf;->a:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Lnlf;->a:I

    iput p0, v1, Lnlf;->c:F

    :cond_2
    invoke-virtual {v0}, Lnwn;->i()Lnws;

    move-result-object p0

    check-cast p0, Lnlf;

    return-object p0
.end method

.method private final aL(ILnkz;Lnkq;Lngi;Lnlo;Lnhq;)V
    .locals 4

    sget-object v0, Lnhl;->i:Lnhl;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v1, v0, Lnwn;->b:Lnws;

    move-object v2, v1

    check-cast v2, Lnhl;

    add-int/lit8 p1, p1, -0x1

    iput p1, v2, Lnhl;->b:I

    iget p1, v2, Lnhl;->a:I

    or-int/lit8 p1, p1, 0x1

    iput p1, v2, Lnhl;->a:I

    iget p1, p0, Lhjl;->x:I

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_1
    iget-object v1, v0, Lnwn;->b:Lnws;

    move-object v2, v1

    check-cast v2, Lnhl;

    add-int/lit8 v3, p1, -0x1

    if-eqz p1, :cond_e

    iput v3, v2, Lnhl;->c:I

    iget p1, v2, Lnhl;->a:I

    or-int/lit8 p1, p1, 0x2

    iput p1, v2, Lnhl;->a:I

    if-eqz p2, :cond_3

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_2
    iget-object p1, v0, Lnwn;->b:Lnws;

    check-cast p1, Lnhl;

    iput-object p2, p1, Lnhl;->d:Lnkz;

    iget p2, p1, Lnhl;->a:I

    or-int/lit8 p2, p2, 0x8

    iput p2, p1, Lnhl;->a:I

    :cond_3
    if-eqz p3, :cond_5

    iget-object p1, v0, Lnwn;->b:Lnws;

    invoke-virtual {p1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_4
    iget-object p1, v0, Lnwn;->b:Lnws;

    check-cast p1, Lnhl;

    iput-object p3, p1, Lnhl;->e:Lnkq;

    iget p2, p1, Lnhl;->a:I

    or-int/lit8 p2, p2, 0x10

    iput p2, p1, Lnhl;->a:I

    :cond_5
    if-eqz p4, :cond_7

    iget-object p1, v0, Lnwn;->b:Lnws;

    invoke-virtual {p1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_6
    iget-object p1, v0, Lnwn;->b:Lnws;

    check-cast p1, Lnhl;

    iput-object p4, p1, Lnhl;->f:Lngi;

    iget p2, p1, Lnhl;->a:I

    or-int/lit8 p2, p2, 0x20

    iput p2, p1, Lnhl;->a:I

    :cond_7
    if-eqz p5, :cond_9

    iget-object p1, v0, Lnwn;->b:Lnws;

    invoke-virtual {p1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_8
    iget-object p1, v0, Lnwn;->b:Lnws;

    check-cast p1, Lnhl;

    iput-object p5, p1, Lnhl;->g:Lnlo;

    iget p2, p1, Lnhl;->a:I

    or-int/lit8 p2, p2, 0x40

    iput p2, p1, Lnhl;->a:I

    :cond_9
    if-eqz p6, :cond_b

    iget-object p1, v0, Lnwn;->b:Lnws;

    invoke-virtual {p1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_a

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_a
    iget-object p1, v0, Lnwn;->b:Lnws;

    check-cast p1, Lnhl;

    iput-object p6, p1, Lnhl;->h:Lnhq;

    iget p2, p1, Lnhl;->a:I

    or-int/lit16 p2, p2, 0x80

    iput p2, p1, Lnhl;->a:I

    :cond_b
    sget-object p1, Lngr;->av:Lngr;

    invoke-virtual {p1}, Lnws;->O()Lnwn;

    move-result-object p1

    sget-object p2, Lngq;->h:Lngq;

    iget-object p3, p1, Lnwn;->b:Lnws;

    invoke-virtual {p3}, Lnws;->ac()Z

    move-result p3

    if-nez p3, :cond_c

    invoke-virtual {p1}, Lnwn;->p()V

    :cond_c
    iget-object p3, p1, Lnwn;->b:Lnws;

    move-object p4, p3

    check-cast p4, Lngr;

    iget p2, p2, Lngq;->ar:I

    iput p2, p4, Lngr;->d:I

    iget p2, p4, Lngr;->a:I

    or-int/lit8 p2, p2, 0x1

    iput p2, p4, Lngr;->a:I

    invoke-virtual {p3}, Lnws;->ac()Z

    move-result p2

    if-nez p2, :cond_d

    invoke-virtual {p1}, Lnwn;->p()V

    :cond_d
    iget-object p2, p1, Lnwn;->b:Lnws;

    check-cast p2, Lngr;

    invoke-virtual {v0}, Lnwn;->i()Lnws;

    move-result-object p3

    check-cast p3, Lnhl;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p2, Lngr;->k:Lnhl;

    iget p3, p2, Lngr;->a:I

    or-int/lit16 p3, p3, 0x100

    iput p3, p2, Lngr;->a:I

    invoke-virtual {p0, p1}, Lhjl;->aF(Lnwn;)V

    return-void

    :cond_e
    const/4 p1, 0x0

    throw p1
.end method

.method private static final aM(II)Lnhi;
    .locals 5

    sget-object v0, Lnhi;->d:Lnhi;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v1, v0, Lnwn;->b:Lnws;

    move-object v2, v1

    check-cast v2, Lnhi;

    add-int/lit8 v3, p0, -0x1

    const/4 v4, 0x0

    if-eqz p0, :cond_3

    iput v3, v2, Lnhi;->b:I

    iget p0, v2, Lnhi;->a:I

    or-int/lit8 p0, p0, 0x1

    iput p0, v2, Lnhi;->a:I

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_1
    iget-object p0, v0, Lnwn;->b:Lnws;

    check-cast p0, Lnhi;

    add-int/lit8 v1, p1, -0x1

    if-eqz p1, :cond_2

    iput v1, p0, Lnhi;->c:I

    iget p1, p0, Lnhi;->a:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lnhi;->a:I

    invoke-virtual {v0}, Lnwn;->i()Lnws;

    move-result-object p0

    check-cast p0, Lnhi;

    return-object p0

    :cond_2
    throw v4

    :cond_3
    throw v4
.end method

.method private static final aN(Lgya;)I
    .locals 1

    sget-object v0, Ldin;->a:Ldin;

    sget-object v0, Lklv;->a:Lklv;

    sget-object v0, Lgya;->a:Lgya;

    sget-object v0, Lnlc;->a:Lnlc;

    invoke-virtual {p0}, Lgya;->ordinal()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x1

    return p0

    :pswitch_0
    const/16 p0, 0xc

    return p0

    :pswitch_1
    const/16 p0, 0xe

    return p0

    :pswitch_2
    const/16 p0, 0xd

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final A(Z)V
    .locals 9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    iget-boolean v2, p0, Lhjl;->s:Z

    if-nez v2, :cond_6

    if-eqz p1, :cond_6

    iget-wide v2, p0, Lhjl;->t:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_6

    sget-object v4, Lngr;->av:Lngr;

    invoke-virtual {v4}, Lnws;->O()Lnwn;

    move-result-object v4

    sget-object v5, Lngq;->t:Lngq;

    iget-object v6, v4, Lnwn;->b:Lnws;

    invoke-virtual {v6}, Lnws;->ac()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v4}, Lnwn;->p()V

    :cond_0
    iget-object v6, v4, Lnwn;->b:Lnws;

    check-cast v6, Lngr;

    iget v5, v5, Lngq;->ar:I

    iput v5, v6, Lngr;->d:I

    iget v5, v6, Lngr;->a:I

    or-int/lit8 v5, v5, 0x1

    iput v5, v6, Lngr;->a:I

    sget-object v5, Lngl;->e:Lngl;

    invoke-virtual {v5}, Lnws;->O()Lnwn;

    move-result-object v5

    iget-object v6, v5, Lnwn;->b:Lnws;

    invoke-virtual {v6}, Lnws;->ac()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5}, Lnwn;->p()V

    :cond_1
    iget-object v6, v5, Lnwn;->b:Lnws;

    move-object v7, v6

    check-cast v7, Lngl;

    iget v8, v7, Lngl;->a:I

    or-int/lit8 v8, v8, 0x1

    iput v8, v7, Lngl;->a:I

    iput-wide v2, v7, Lngl;->b:J

    invoke-virtual {v6}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v5}, Lnwn;->p()V

    :cond_2
    iget-object v2, v5, Lnwn;->b:Lnws;

    move-object v3, v2

    check-cast v3, Lngl;

    iget v6, v3, Lngl;->a:I

    or-int/lit8 v6, v6, 0x2

    iput v6, v3, Lngl;->a:I

    iput-wide v0, v3, Lngl;->c:J

    iget v3, p0, Lhjl;->x:I

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v5}, Lnwn;->p()V

    :cond_3
    iget-object v2, v5, Lnwn;->b:Lnws;

    check-cast v2, Lngl;

    add-int/lit8 v6, v3, -0x1

    if-eqz v3, :cond_5

    iput v6, v2, Lngl;->d:I

    iget v3, v2, Lngl;->a:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v2, Lngl;->a:I

    iget-object v2, v4, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v4}, Lnwn;->p()V

    :cond_4
    iget-object v2, v4, Lnwn;->b:Lnws;

    check-cast v2, Lngr;

    invoke-virtual {v5}, Lnwn;->i()Lnws;

    move-result-object v3

    check-cast v3, Lngl;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v3, v2, Lngr;->t:Lngl;

    iget v3, v2, Lngr;->a:I

    const/high16 v5, 0x100000

    or-int/2addr v3, v5

    iput v3, v2, Lngr;->a:I

    invoke-virtual {p0, v4}, Lhjl;->aF(Lnwn;)V

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    throw p1

    :cond_6
    :goto_0
    iput-wide v0, p0, Lhjl;->t:J

    iput-boolean p1, p0, Lhjl;->s:Z

    return-void
.end method

.method public final B(JLjava/util/List;)V
    .locals 5

    sget-object v0, Lngr;->av:Lngr;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    sget-object v1, Lngq;->J:Lngq;

    iget-object v2, v0, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v2, v0, Lnwn;->b:Lnws;

    check-cast v2, Lngr;

    iget v1, v1, Lngq;->ar:I

    iput v1, v2, Lngr;->d:I

    iget v1, v2, Lngr;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v2, Lngr;->a:I

    sget-object v1, Lnks;->d:Lnks;

    invoke-virtual {v1}, Lnws;->O()Lnwn;

    move-result-object v1

    iget-object v2, v1, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_1
    iget-object v2, v1, Lnwn;->b:Lnws;

    move-object v3, v2

    check-cast v3, Lnks;

    iget v4, v3, Lnks;->a:I

    or-int/lit8 v4, v4, 0x1

    iput v4, v3, Lnks;->a:I

    iput-wide p1, v3, Lnks;->b:J

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_2
    iget-object p1, v1, Lnwn;->b:Lnws;

    check-cast p1, Lnks;

    iget-object p2, p1, Lnks;->c:Lnxa;

    invoke-interface {p2}, Lnxa;->c()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {p2}, Lnws;->U(Lnxa;)Lnxa;

    move-result-object p2

    iput-object p2, p1, Lnks;->c:Lnxa;

    :cond_3
    iget-object p1, p1, Lnks;->c:Lnxa;

    invoke-static {p3, p1}, Lnvd;->e(Ljava/lang/Iterable;Ljava/util/List;)V

    iget-object p1, v0, Lnwn;->b:Lnws;

    invoke-virtual {p1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_4
    iget-object p1, v0, Lnwn;->b:Lnws;

    check-cast p1, Lngr;

    invoke-virtual {v1}, Lnwn;->i()Lnws;

    move-result-object p2

    check-cast p2, Lnks;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p1, Lngr;->K:Lnks;

    iget p2, p1, Lngr;->b:I

    or-int/lit16 p2, p2, 0x2000

    iput p2, p1, Lngr;->b:I

    invoke-virtual {p0, v0}, Lhjl;->aF(Lnwn;)V

    return-void
.end method

.method public final C(Lnlb;)V
    .locals 4

    sget-object v0, Lngr;->av:Lngr;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    sget-object v1, Lngq;->G:Lngq;

    iget-object v2, v0, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v2, v0, Lnwn;->b:Lnws;

    move-object v3, v2

    check-cast v3, Lngr;

    iget v1, v1, Lngq;->ar:I

    iput v1, v3, Lngr;->d:I

    iget v1, v3, Lngr;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v3, Lngr;->a:I

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_1
    iget-object v1, v0, Lnwn;->b:Lnws;

    check-cast v1, Lngr;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, v1, Lngr;->F:Lnlb;

    iget p1, v1, Lngr;->b:I

    or-int/lit16 p1, p1, 0x100

    iput p1, v1, Lngr;->b:I

    invoke-virtual {p0, v0}, Lhjl;->aF(Lnwn;)V

    return-void
.end method

.method public final D(Ljava/lang/Throwable;I)V
    .locals 12

    sget v0, Lmvv;->d:I

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    sget-object v9, Lmyu;->a:Lmvv;

    sget-object v10, Lkbo;->m:Lkbo;

    const/4 v11, 0x0

    move-object v1, p0

    move-object v4, p1

    move v7, p2

    move-object v8, v9

    invoke-virtual/range {v1 .. v11}, Lhjl;->V(ILjava/lang/String;Ljava/lang/Throwable;IIILjava/util/List;Ljava/util/List;Lkbo;Z)V

    return-void
.end method

.method public final E(Ljava/lang/String;ZLgya;Ljava/lang/String;I)V
    .locals 5

    sget-object v0, Lniz;->g:Lniz;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v1, v0, Lnwn;->b:Lnws;

    move-object v2, v1

    check-cast v2, Lniz;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, v2, Lniz;->a:I

    const/4 v4, 0x1

    or-int/2addr v3, v4

    iput v3, v2, Lniz;->a:I

    iput-object p1, v2, Lniz;->b:Ljava/lang/String;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_1
    iget-object p1, v0, Lnwn;->b:Lnws;

    check-cast p1, Lniz;

    iget v1, p1, Lniz;->a:I

    const/4 v2, 0x2

    or-int/2addr v1, v2

    iput v1, p1, Lniz;->a:I

    iput-boolean p2, p1, Lniz;->c:Z

    sget-object p1, Ldin;->a:Ldin;

    sget-object p1, Lklv;->a:Lklv;

    sget-object p1, Lgya;->a:Lgya;

    sget-object p1, Lnlc;->a:Lnlc;

    invoke-virtual {p3}, Lgya;->ordinal()I

    move-result p1

    const/16 p2, 0x14

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    iget-object p1, v0, Lnwn;->b:Lnws;

    invoke-virtual {p1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_a

    invoke-virtual {v0}, Lnwn;->p()V

    goto/16 :goto_0

    :pswitch_1
    iget-object p1, v0, Lnwn;->b:Lnws;

    invoke-virtual {p1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_2
    iget-object p1, v0, Lnwn;->b:Lnws;

    check-cast p1, Lniz;

    const/16 p2, 0x20

    iput p2, p1, Lniz;->d:I

    iget p2, p1, Lniz;->a:I

    or-int/lit8 p2, p2, 0x4

    iput p2, p1, Lniz;->a:I

    goto/16 :goto_1

    :pswitch_2
    iget-object p1, v0, Lnwn;->b:Lnws;

    invoke-virtual {p1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_3
    iget-object p1, v0, Lnwn;->b:Lnws;

    check-cast p1, Lniz;

    const/16 p2, 0xa

    iput p2, p1, Lniz;->d:I

    iget p2, p1, Lniz;->a:I

    or-int/lit8 p2, p2, 0x4

    iput p2, p1, Lniz;->a:I

    goto/16 :goto_1

    :pswitch_3
    iget-object p1, v0, Lnwn;->b:Lnws;

    invoke-virtual {p1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_4
    iget-object p1, v0, Lnwn;->b:Lnws;

    check-cast p1, Lniz;

    iput p2, p1, Lniz;->d:I

    iget p2, p1, Lniz;->a:I

    or-int/lit8 p2, p2, 0x4

    iput p2, p1, Lniz;->a:I

    goto/16 :goto_1

    :pswitch_4
    iget-object p1, v0, Lnwn;->b:Lnws;

    invoke-virtual {p1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_5
    iget-object p1, v0, Lnwn;->b:Lnws;

    check-cast p1, Lniz;

    iput p2, p1, Lniz;->d:I

    iget p2, p1, Lniz;->a:I

    or-int/lit8 p2, p2, 0x4

    iput p2, p1, Lniz;->a:I

    goto :goto_1

    :pswitch_5
    iget-object p1, v0, Lnwn;->b:Lnws;

    invoke-virtual {p1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_6
    iget-object p1, v0, Lnwn;->b:Lnws;

    check-cast p1, Lniz;

    const/16 p2, 0x1f

    iput p2, p1, Lniz;->d:I

    iget p2, p1, Lniz;->a:I

    or-int/lit8 p2, p2, 0x4

    iput p2, p1, Lniz;->a:I

    goto :goto_1

    :pswitch_6
    iget-object p1, v0, Lnwn;->b:Lnws;

    invoke-virtual {p1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_7
    iget-object p1, v0, Lnwn;->b:Lnws;

    check-cast p1, Lniz;

    const/4 p2, 0x3

    iput p2, p1, Lniz;->d:I

    iget p2, p1, Lniz;->a:I

    or-int/lit8 p2, p2, 0x4

    iput p2, p1, Lniz;->a:I

    goto :goto_1

    :pswitch_7
    iget-object p1, v0, Lnwn;->b:Lnws;

    invoke-virtual {p1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_8
    iget-object p1, v0, Lnwn;->b:Lnws;

    check-cast p1, Lniz;

    iput v2, p1, Lniz;->d:I

    iget p2, p1, Lniz;->a:I

    or-int/lit8 p2, p2, 0x4

    iput p2, p1, Lniz;->a:I

    goto :goto_1

    :pswitch_8
    iget-object p1, v0, Lnwn;->b:Lnws;

    invoke-virtual {p1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_9

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_9
    iget-object p1, v0, Lnwn;->b:Lnws;

    check-cast p1, Lniz;

    iput v4, p1, Lniz;->d:I

    iget p2, p1, Lniz;->a:I

    or-int/lit8 p2, p2, 0x4

    iput p2, p1, Lniz;->a:I

    goto :goto_1

    :cond_a
    :goto_0
    iget-object p1, v0, Lnwn;->b:Lnws;

    check-cast p1, Lniz;

    const/4 p2, 0x0

    iput p2, p1, Lniz;->d:I

    iget p2, p1, Lniz;->a:I

    or-int/lit8 p2, p2, 0x4

    iput p2, p1, Lniz;->a:I

    :goto_1
    if-eqz p4, :cond_c

    iget-object p1, v0, Lnwn;->b:Lnws;

    invoke-virtual {p1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_b

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_b
    iget-object p1, v0, Lnwn;->b:Lnws;

    check-cast p1, Lniz;

    iget p2, p1, Lniz;->a:I

    or-int/lit8 p2, p2, 0x8

    iput p2, p1, Lniz;->a:I

    iput-object p4, p1, Lniz;->e:Ljava/lang/String;

    :cond_c
    if-eqz p5, :cond_e

    iget-object p1, v0, Lnwn;->b:Lnws;

    invoke-virtual {p1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_d

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_d
    iget-object p1, v0, Lnwn;->b:Lnws;

    check-cast p1, Lniz;

    iget p2, p1, Lniz;->a:I

    or-int/lit8 p2, p2, 0x10

    iput p2, p1, Lniz;->a:I

    iput p5, p1, Lniz;->f:I

    :cond_e
    sget-object p1, Lngr;->av:Lngr;

    invoke-virtual {p1}, Lnws;->O()Lnwn;

    move-result-object p1

    sget-object p2, Lngq;->z:Lngq;

    iget-object p3, p1, Lnwn;->b:Lnws;

    invoke-virtual {p3}, Lnws;->ac()Z

    move-result p3

    if-nez p3, :cond_f

    invoke-virtual {p1}, Lnwn;->p()V

    :cond_f
    iget-object p3, p1, Lnwn;->b:Lnws;

    move-object p4, p3

    check-cast p4, Lngr;

    iget p2, p2, Lngq;->ar:I

    iput p2, p4, Lngr;->d:I

    iget p2, p4, Lngr;->a:I

    or-int/2addr p2, v4

    iput p2, p4, Lngr;->a:I

    invoke-virtual {p3}, Lnws;->ac()Z

    move-result p2

    if-nez p2, :cond_10

    invoke-virtual {p1}, Lnwn;->p()V

    :cond_10
    iget-object p2, p1, Lnwn;->b:Lnws;

    check-cast p2, Lngr;

    invoke-virtual {v0}, Lnwn;->i()Lnws;

    move-result-object p3

    check-cast p3, Lniz;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p2, Lngr;->B:Lniz;

    iget p3, p2, Lngr;->b:I

    or-int/2addr p3, v4

    iput p3, p2, Lngr;->b:I

    invoke-virtual {p0, p1}, Lhjl;->aF(Lnwn;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final F(Lnkh;)V
    .locals 4

    sget-object v0, Lngr;->av:Lngr;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    sget-object v1, Lngq;->H:Lngq;

    iget-object v2, v0, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v2, v0, Lnwn;->b:Lnws;

    move-object v3, v2

    check-cast v3, Lngr;

    iget v1, v1, Lngq;->ar:I

    iput v1, v3, Lngr;->d:I

    iget v1, v3, Lngr;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v3, Lngr;->a:I

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_1
    iget-object v1, v0, Lnwn;->b:Lnws;

    check-cast v1, Lngr;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, v1, Lngr;->G:Lnkh;

    iget p1, v1, Lngr;->b:I

    or-int/lit16 p1, p1, 0x200

    iput p1, v1, Lngr;->b:I

    invoke-virtual {p0, v0}, Lhjl;->aF(Lnwn;)V

    return-void
.end method

.method public final G(Lnkk;)V
    .locals 4

    sget-object v0, Lngr;->av:Lngr;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    sget-object v1, Lngq;->R:Lngq;

    iget-object v2, v0, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v2, v0, Lnwn;->b:Lnws;

    move-object v3, v2

    check-cast v3, Lngr;

    iget v1, v1, Lngq;->ar:I

    iput v1, v3, Lngr;->d:I

    iget v1, v3, Lngr;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v3, Lngr;->a:I

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_1
    iget-object v1, v0, Lnwn;->b:Lnws;

    check-cast v1, Lngr;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, v1, Lngr;->T:Lnkk;

    iget p1, v1, Lngr;->b:I

    const/high16 v2, 0x800000

    or-int/2addr p1, v2

    iput p1, v1, Lngr;->b:I

    invoke-virtual {p0, v0}, Lhjl;->aF(Lnwn;)V

    return-void
.end method

.method public final H()V
    .locals 5

    sget-object v0, Lngr;->av:Lngr;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    sget-object v1, Lngq;->q:Lngq;

    iget-object v2, v0, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v2, v0, Lnwn;->b:Lnws;

    check-cast v2, Lngr;

    iget v1, v1, Lngq;->ar:I

    iput v1, v2, Lngr;->d:I

    iget v1, v2, Lngr;->a:I

    const/4 v3, 0x1

    or-int/2addr v1, v3

    iput v1, v2, Lngr;->a:I

    sget-object v1, Lngy;->c:Lngy;

    invoke-virtual {v1}, Lnws;->O()Lnwn;

    move-result-object v1

    iget-object v2, v1, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_1
    iget-object v2, v1, Lnwn;->b:Lnws;

    check-cast v2, Lngy;

    iput v3, v2, Lngy;->b:I

    iget v4, v2, Lngy;->a:I

    or-int/2addr v3, v4

    iput v3, v2, Lngy;->a:I

    iget-object v2, v0, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_2
    iget-object v2, v0, Lnwn;->b:Lnws;

    check-cast v2, Lngr;

    invoke-virtual {v1}, Lnwn;->i()Lnws;

    move-result-object v1

    check-cast v1, Lngy;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v2, Lngr;->q:Lngy;

    iget v1, v2, Lngr;->a:I

    const/high16 v3, 0x20000

    or-int/2addr v1, v3

    iput v1, v2, Lngr;->a:I

    invoke-virtual {p0, v0}, Lhjl;->aF(Lnwn;)V

    return-void
.end method

.method public final I()V
    .locals 4

    sget-object v0, Lngr;->av:Lngr;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    sget-object v1, Lngq;->q:Lngq;

    iget-object v2, v0, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v2, v0, Lnwn;->b:Lnws;

    check-cast v2, Lngr;

    iget v1, v1, Lngq;->ar:I

    iput v1, v2, Lngr;->d:I

    iget v1, v2, Lngr;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v2, Lngr;->a:I

    sget-object v1, Lngy;->c:Lngy;

    invoke-virtual {v1}, Lnws;->O()Lnwn;

    move-result-object v1

    iget-object v2, v1, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_1
    iget-object v2, v1, Lnwn;->b:Lnws;

    check-cast v2, Lngy;

    const/4 v3, 0x3

    iput v3, v2, Lngy;->b:I

    iget v3, v2, Lngy;->a:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Lngy;->a:I

    iget-object v2, v0, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_2
    iget-object v2, v0, Lnwn;->b:Lnws;

    check-cast v2, Lngr;

    invoke-virtual {v1}, Lnwn;->i()Lnws;

    move-result-object v1

    check-cast v1, Lngy;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v2, Lngr;->q:Lngy;

    iget v1, v2, Lngr;->a:I

    const/high16 v3, 0x20000

    or-int/2addr v1, v3

    iput v1, v2, Lngr;->a:I

    invoke-virtual {p0, v0}, Lhjl;->aF(Lnwn;)V

    return-void
.end method

.method public final J(Lnko;)V
    .locals 4

    sget-object v0, Lngr;->av:Lngr;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    sget-object v1, Lngq;->ak:Lngq;

    iget-object v2, v0, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v2, v0, Lnwn;->b:Lnws;

    move-object v3, v2

    check-cast v3, Lngr;

    iget v1, v1, Lngq;->ar:I

    iput v1, v3, Lngr;->d:I

    iget v1, v3, Lngr;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v3, Lngr;->a:I

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_1
    iget-object v1, v0, Lnwn;->b:Lnws;

    check-cast v1, Lngr;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, v1, Lngr;->al:Lnko;

    iget p1, v1, Lngr;->c:I

    or-int/lit16 p1, p1, 0x800

    iput p1, v1, Lngr;->c:I

    invoke-virtual {p0, v0}, Lhjl;->aF(Lnwn;)V

    return-void
.end method

.method public final K(Lnkw;)V
    .locals 4

    sget-object v0, Lngr;->av:Lngr;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    sget-object v1, Lngq;->ae:Lngq;

    iget-object v2, v0, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v2, v0, Lnwn;->b:Lnws;

    move-object v3, v2

    check-cast v3, Lngr;

    iget v1, v1, Lngq;->ar:I

    iput v1, v3, Lngr;->d:I

    iget v1, v3, Lngr;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v3, Lngr;->a:I

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_1
    iget-object v1, v0, Lnwn;->b:Lnws;

    check-cast v1, Lngr;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, v1, Lngr;->ag:Lnkw;

    iget p1, v1, Lngr;->c:I

    or-int/lit8 p1, p1, 0x20

    iput p1, v1, Lngr;->c:I

    invoke-virtual {p0, v0}, Lhjl;->aF(Lnwn;)V

    return-void
.end method

.method public final L(Lnii;)V
    .locals 4

    sget-object v0, Lngr;->av:Lngr;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    sget-object v1, Lngq;->ab:Lngq;

    iget-object v2, v0, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v2, v0, Lnwn;->b:Lnws;

    move-object v3, v2

    check-cast v3, Lngr;

    iget v1, v1, Lngq;->ar:I

    iput v1, v3, Lngr;->d:I

    iget v1, v3, Lngr;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v3, Lngr;->a:I

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_1
    iget-object v1, v0, Lnwn;->b:Lnws;

    check-cast v1, Lngr;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, v1, Lngr;->ad:Lnii;

    iget p1, v1, Lngr;->c:I

    or-int/lit8 p1, p1, 0x4

    iput p1, v1, Lngr;->c:I

    invoke-virtual {p0, v0}, Lhjl;->aF(Lnwn;)V

    return-void
.end method

.method public final M(Lnij;)V
    .locals 4

    sget-object v0, Lngr;->av:Lngr;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    sget-object v1, Lngq;->aa:Lngq;

    iget-object v2, v0, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v2, v0, Lnwn;->b:Lnws;

    move-object v3, v2

    check-cast v3, Lngr;

    iget v1, v1, Lngq;->ar:I

    iput v1, v3, Lngr;->d:I

    iget v1, v3, Lngr;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v3, Lngr;->a:I

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_1
    iget-object v1, v0, Lnwn;->b:Lnws;

    check-cast v1, Lngr;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, v1, Lngr;->ac:Lnij;

    iget p1, v1, Lngr;->c:I

    or-int/lit8 p1, p1, 0x2

    iput p1, v1, Lngr;->c:I

    invoke-virtual {p0, v0}, Lhjl;->aF(Lnwn;)V

    return-void
.end method

.method public final N(Lnlh;)V
    .locals 4

    sget-object v0, Lngr;->av:Lngr;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    sget-object v1, Lngq;->V:Lngq;

    iget-object v2, v0, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v2, v0, Lnwn;->b:Lnws;

    move-object v3, v2

    check-cast v3, Lngr;

    iget v1, v1, Lngq;->ar:I

    iput v1, v3, Lngr;->d:I

    iget v1, v3, Lngr;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v3, Lngr;->a:I

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_1
    iget-object v1, v0, Lnwn;->b:Lnws;

    check-cast v1, Lngr;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, v1, Lngr;->X:Lnlh;

    iget p1, v1, Lngr;->b:I

    const/high16 v2, 0x10000000

    or-int/2addr p1, v2

    iput p1, v1, Lngr;->b:I

    invoke-virtual {p0, v0}, Lhjl;->aF(Lnwn;)V

    return-void
.end method

.method public final O(Lnln;)V
    .locals 4

    sget-object v0, Lngr;->av:Lngr;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    sget-object v1, Lngq;->L:Lngq;

    iget-object v2, v0, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v2, v0, Lnwn;->b:Lnws;

    move-object v3, v2

    check-cast v3, Lngr;

    iget v1, v1, Lngq;->ar:I

    iput v1, v3, Lngr;->d:I

    iget v1, v3, Lngr;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v3, Lngr;->a:I

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_1
    iget-object v1, v0, Lnwn;->b:Lnws;

    check-cast v1, Lngr;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, v1, Lngr;->N:Lnln;

    iget p1, v1, Lngr;->b:I

    const/high16 v2, 0x10000

    or-int/2addr p1, v2

    iput p1, v1, Lngr;->b:I

    invoke-virtual {p0, v0}, Lhjl;->aF(Lnwn;)V

    return-void
.end method

.method public final P(IFFLklv;)V
    .locals 12

    sget-object v0, Lnlo;->e:Lnlo;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v1, v0, Lnwn;->b:Lnws;

    move-object v2, v1

    check-cast v2, Lnlo;

    iget v3, v2, Lnlo;->a:I

    const/4 v4, 0x1

    or-int/2addr v3, v4

    iput v3, v2, Lnlo;->a:I

    move v3, p2

    iput v3, v2, Lnlo;->b:F

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_1
    iget-object v1, v0, Lnwn;->b:Lnws;

    check-cast v1, Lnlo;

    iget v2, v1, Lnlo;->a:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Lnlo;->a:I

    move v2, p3

    iput v2, v1, Lnlo;->c:F

    invoke-static/range {p4 .. p4}, Lhjl;->aJ(Lklv;)Lngo;

    move-result-object v1

    iget-object v2, v0, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_2
    iget-object v2, v0, Lnwn;->b:Lnws;

    check-cast v2, Lnlo;

    iget v1, v1, Lngo;->d:I

    iput v1, v2, Lnlo;->d:I

    iget v1, v2, Lnlo;->a:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v2, Lnlo;->a:I

    invoke-virtual {v0}, Lnwn;->i()Lnws;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lnlo;

    sget-object v0, Ldin;->a:Ldin;

    sget-object v0, Lklv;->a:Lklv;

    sget-object v0, Lgya;->a:Lgya;

    sget-object v0, Lnlc;->a:Lnlc;

    add-int/lit8 v0, p1, -0x1

    packed-switch v0, :pswitch_data_0

    const/4 v6, 0x1

    goto :goto_0

    :pswitch_0
    const/16 v4, 0x14

    const/16 v6, 0x14

    goto :goto_0

    :pswitch_1
    const/16 v4, 0x13

    const/16 v6, 0x13

    goto :goto_0

    :pswitch_2
    const/16 v4, 0x12

    const/16 v6, 0x12

    goto :goto_0

    :pswitch_3
    const/16 v4, 0x11

    const/16 v6, 0x11

    goto :goto_0

    :pswitch_4
    const/16 v4, 0x10

    const/16 v6, 0x10

    goto :goto_0

    :pswitch_5
    const/16 v4, 0xf

    const/16 v6, 0xf

    goto :goto_0

    :pswitch_6
    const/16 v4, 0xe

    const/16 v6, 0xe

    goto :goto_0

    :pswitch_7
    const/16 v4, 0xd

    const/16 v6, 0xd

    goto :goto_0

    :pswitch_8
    const/16 v4, 0xa

    const/16 v6, 0xa

    goto :goto_0

    :pswitch_9
    const/16 v4, 0x9

    const/16 v6, 0x9

    :goto_0
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v5, p0

    invoke-direct/range {v5 .. v11}, Lhjl;->aL(ILnkz;Lnkq;Lngi;Lnlo;Lnhq;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final Q()V
    .locals 4

    sget-object v0, Lngr;->av:Lngr;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    sget-object v1, Lngq;->q:Lngq;

    iget-object v2, v0, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v2, v0, Lnwn;->b:Lnws;

    check-cast v2, Lngr;

    iget v1, v1, Lngq;->ar:I

    iput v1, v2, Lngr;->d:I

    iget v1, v2, Lngr;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v2, Lngr;->a:I

    sget-object v1, Lngy;->c:Lngy;

    invoke-virtual {v1}, Lnws;->O()Lnwn;

    move-result-object v1

    iget-object v2, v1, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_1
    iget-object v2, v1, Lnwn;->b:Lnws;

    check-cast v2, Lngy;

    const/4 v3, 0x2

    iput v3, v2, Lngy;->b:I

    iget v3, v2, Lngy;->a:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Lngy;->a:I

    iget-object v2, v0, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_2
    iget-object v2, v0, Lnwn;->b:Lnws;

    check-cast v2, Lngr;

    invoke-virtual {v1}, Lnwn;->i()Lnws;

    move-result-object v1

    check-cast v1, Lngy;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v2, Lngr;->q:Lngy;

    iget v1, v2, Lngr;->a:I

    const/high16 v3, 0x20000

    or-int/2addr v1, v3

    iput v1, v2, Lngr;->a:I

    invoke-virtual {p0, v0}, Lhjl;->aF(Lnwn;)V

    return-void
.end method

.method public final R()V
    .locals 2

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    iput-wide v0, p0, Lhjl;->n:J

    return-void
.end method

.method public final S(Likm;Z)V
    .locals 9

    sget-object v0, Lnkz;->d:Lnkz;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    sget-object v1, Lnle;->f:Lnle;

    invoke-virtual {v1}, Lnws;->O()Lnwn;

    move-result-object v1

    iget v2, p1, Likm;->a:F

    iget-object v3, v1, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_0
    iget-object v3, v1, Lnwn;->b:Lnws;

    move-object v4, v3

    check-cast v4, Lnle;

    iget v5, v4, Lnle;->a:I

    or-int/lit8 v5, v5, 0x1

    iput v5, v4, Lnle;->a:I

    iput v2, v4, Lnle;->b:F

    iget v2, p1, Likm;->b:F

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_1
    iget-object v3, v1, Lnwn;->b:Lnws;

    move-object v4, v3

    check-cast v4, Lnle;

    iget v5, v4, Lnle;->a:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v4, Lnle;->a:I

    iput v2, v4, Lnle;->c:F

    iget v2, p1, Likm;->c:F

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_2
    iget-object v3, v1, Lnwn;->b:Lnws;

    move-object v4, v3

    check-cast v4, Lnle;

    iget v5, v4, Lnle;->a:I

    or-int/lit8 v5, v5, 0x4

    iput v5, v4, Lnle;->a:I

    iput v2, v4, Lnle;->d:F

    iget p1, p1, Likm;->d:F

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_3
    iget-object v2, v1, Lnwn;->b:Lnws;

    check-cast v2, Lnle;

    iget v3, v2, Lnle;->a:I

    or-int/lit8 v3, v3, 0x8

    iput v3, v2, Lnle;->a:I

    iput p1, v2, Lnle;->e:F

    iget-object p1, v0, Lnwn;->b:Lnws;

    invoke-virtual {p1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_4
    iget-object p1, v0, Lnwn;->b:Lnws;

    check-cast p1, Lnkz;

    invoke-virtual {v1}, Lnwn;->i()Lnws;

    move-result-object v1

    check-cast v1, Lnle;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, p1, Lnkz;->b:Lnle;

    iget v1, p1, Lnkz;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p1, Lnkz;->a:I

    iget-object p1, v0, Lnwn;->b:Lnws;

    invoke-virtual {p1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_5
    iget-object p1, v0, Lnwn;->b:Lnws;

    check-cast p1, Lnkz;

    iget v1, p1, Lnkz;->a:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p1, Lnkz;->a:I

    iput-boolean p2, p1, Lnkz;->c:Z

    const/4 v3, 0x2

    invoke-virtual {v0}, Lnwn;->i()Lnws;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lnkz;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lhjl;->aL(ILnkz;Lnkq;Lngi;Lnlo;Lnhq;)V

    return-void
.end method

.method public final T(Lklv;Lmqp;Lnlc;JJZZLmwa;Lmwa;Lmwa;)V
    .locals 3

    new-instance v0, Lbkb;

    sget-object v1, Lklv;->a:Lklv;

    invoke-virtual {p1, v1}, Lklv;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/16 v1, 0xb

    invoke-direct {v0, v1, p1}, Lbkb;-><init>(IZ)V

    invoke-virtual {v0, p9}, Lbkb;->K(Z)V

    sget-object p1, Lnld;->x:Lnld;

    invoke-virtual {p1}, Lnws;->O()Lnwn;

    move-result-object p1

    iget-object p9, p1, Lnwn;->b:Lnws;

    invoke-virtual {p9}, Lnws;->ac()Z

    move-result p9

    if-nez p9, :cond_0

    invoke-virtual {p1}, Lnwn;->p()V

    :cond_0
    iget-object p9, p1, Lnwn;->b:Lnws;

    move-object v1, p9

    check-cast v1, Lnld;

    iget v2, v1, Lnld;->a:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v1, Lnld;->a:I

    iput-wide p4, v1, Lnld;->b:J

    invoke-virtual {p9}, Lnws;->ac()Z

    move-result p4

    if-nez p4, :cond_1

    invoke-virtual {p1}, Lnwn;->p()V

    :cond_1
    iget-object p4, p1, Lnwn;->b:Lnws;

    move-object p5, p4

    check-cast p5, Lnld;

    iget p9, p5, Lnld;->a:I

    or-int/lit8 p9, p9, 0x2

    iput p9, p5, Lnld;->a:I

    iput-wide p6, p5, Lnld;->c:J

    invoke-virtual {p4}, Lnws;->ac()Z

    move-result p4

    if-nez p4, :cond_2

    invoke-virtual {p1}, Lnwn;->p()V

    :cond_2
    iget-object p4, p1, Lnwn;->b:Lnws;

    move-object p5, p4

    check-cast p5, Lnld;

    iget p3, p3, Lnlc;->h:I

    iput p3, p5, Lnld;->d:I

    iget p3, p5, Lnld;->a:I

    or-int/lit8 p3, p3, 0x4

    iput p3, p5, Lnld;->a:I

    invoke-virtual {p4}, Lnws;->ac()Z

    move-result p3

    if-nez p3, :cond_3

    invoke-virtual {p1}, Lnwn;->p()V

    :cond_3
    iget-object p3, p1, Lnwn;->b:Lnws;

    check-cast p3, Lnld;

    iget p4, p3, Lnld;->a:I

    const/high16 p5, 0x200000

    or-int/2addr p4, p5

    iput p4, p3, Lnld;->a:I

    iput-boolean p8, p3, Lnld;->w:Z

    invoke-static {}, Lnlc;->values()[Lnlc;

    move-result-object p3

    array-length p4, p3

    const/4 p5, 0x0

    :goto_0
    if-ge p5, p4, :cond_18

    aget-object p6, p3, p5

    invoke-virtual {p10, p6}, Lmwa;->containsKey(Ljava/lang/Object;)Z

    move-result p7

    if-eqz p7, :cond_17

    invoke-virtual {p11, p6}, Lmwa;->containsKey(Ljava/lang/Object;)Z

    move-result p7

    if-eqz p7, :cond_17

    invoke-virtual {p12, p6}, Lmwa;->containsKey(Ljava/lang/Object;)Z

    move-result p7

    if-nez p7, :cond_4

    goto/16 :goto_1

    :cond_4
    sget-object p7, Ldin;->a:Ldin;

    sget-object p7, Lgya;->a:Lgya;

    invoke-virtual {p6}, Lnlc;->ordinal()I

    move-result p7

    packed-switch p7, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    invoke-virtual {p10, p6}, Lmwa;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Ljava/lang/Integer;

    invoke-virtual {p7}, Ljava/lang/Integer;->intValue()I

    move-result p7

    iget-object p8, p1, Lnwn;->b:Lnws;

    invoke-virtual {p8}, Lnws;->ac()Z

    move-result p8

    if-nez p8, :cond_5

    invoke-virtual {p1}, Lnwn;->p()V

    :cond_5
    iget-object p8, p1, Lnwn;->b:Lnws;

    check-cast p8, Lnld;

    iget p9, p8, Lnld;->a:I

    or-int/lit16 p9, p9, 0x100

    iput p9, p8, Lnld;->a:I

    iput p7, p8, Lnld;->j:I

    invoke-virtual {p11, p6}, Lmwa;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Ljava/lang/Long;

    invoke-virtual {p7}, Ljava/lang/Long;->longValue()J

    move-result-wide p7

    iget-object p9, p1, Lnwn;->b:Lnws;

    invoke-virtual {p9}, Lnws;->ac()Z

    move-result p9

    if-nez p9, :cond_6

    invoke-virtual {p1}, Lnwn;->p()V

    :cond_6
    iget-object p9, p1, Lnwn;->b:Lnws;

    check-cast p9, Lnld;

    iget v1, p9, Lnld;->a:I

    or-int/lit16 v1, v1, 0x4000

    iput v1, p9, Lnld;->a:I

    iput-wide p7, p9, Lnld;->p:J

    invoke-virtual {p12, p6}, Lmwa;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/Long;

    invoke-virtual {p6}, Ljava/lang/Long;->longValue()J

    move-result-wide p6

    iget-object p8, p1, Lnwn;->b:Lnws;

    invoke-virtual {p8}, Lnws;->ac()Z

    move-result p8

    if-nez p8, :cond_7

    invoke-virtual {p1}, Lnwn;->p()V

    :cond_7
    iget-object p8, p1, Lnwn;->b:Lnws;

    check-cast p8, Lnld;

    iget p9, p8, Lnld;->a:I

    const/high16 v1, 0x100000

    or-int/2addr p9, v1

    iput p9, p8, Lnld;->a:I

    iput-wide p6, p8, Lnld;->v:J

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {p10, p6}, Lmwa;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Ljava/lang/Integer;

    invoke-virtual {p7}, Ljava/lang/Integer;->intValue()I

    move-result p7

    iget-object p8, p1, Lnwn;->b:Lnws;

    invoke-virtual {p8}, Lnws;->ac()Z

    move-result p8

    if-nez p8, :cond_8

    invoke-virtual {p1}, Lnwn;->p()V

    :cond_8
    iget-object p8, p1, Lnwn;->b:Lnws;

    check-cast p8, Lnld;

    iget p9, p8, Lnld;->a:I

    or-int/lit16 p9, p9, 0x80

    iput p9, p8, Lnld;->a:I

    iput p7, p8, Lnld;->i:I

    invoke-virtual {p11, p6}, Lmwa;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Ljava/lang/Long;

    invoke-virtual {p7}, Ljava/lang/Long;->longValue()J

    move-result-wide p7

    iget-object p9, p1, Lnwn;->b:Lnws;

    invoke-virtual {p9}, Lnws;->ac()Z

    move-result p9

    if-nez p9, :cond_9

    invoke-virtual {p1}, Lnwn;->p()V

    :cond_9
    iget-object p9, p1, Lnwn;->b:Lnws;

    check-cast p9, Lnld;

    iget v1, p9, Lnld;->a:I

    or-int/lit16 v1, v1, 0x2000

    iput v1, p9, Lnld;->a:I

    iput-wide p7, p9, Lnld;->o:J

    invoke-virtual {p12, p6}, Lmwa;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/Long;

    invoke-virtual {p6}, Ljava/lang/Long;->longValue()J

    move-result-wide p6

    iget-object p8, p1, Lnwn;->b:Lnws;

    invoke-virtual {p8}, Lnws;->ac()Z

    move-result p8

    if-nez p8, :cond_a

    invoke-virtual {p1}, Lnwn;->p()V

    :cond_a
    iget-object p8, p1, Lnwn;->b:Lnws;

    check-cast p8, Lnld;

    iget p9, p8, Lnld;->a:I

    const/high16 v1, 0x80000

    or-int/2addr p9, v1

    iput p9, p8, Lnld;->a:I

    iput-wide p6, p8, Lnld;->u:J

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p10, p6}, Lmwa;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Ljava/lang/Integer;

    invoke-virtual {p7}, Ljava/lang/Integer;->intValue()I

    move-result p7

    iget-object p8, p1, Lnwn;->b:Lnws;

    invoke-virtual {p8}, Lnws;->ac()Z

    move-result p8

    if-nez p8, :cond_b

    invoke-virtual {p1}, Lnwn;->p()V

    :cond_b
    iget-object p8, p1, Lnwn;->b:Lnws;

    check-cast p8, Lnld;

    iget p9, p8, Lnld;->a:I

    or-int/lit8 p9, p9, 0x40

    iput p9, p8, Lnld;->a:I

    iput p7, p8, Lnld;->h:I

    invoke-virtual {p11, p6}, Lmwa;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Ljava/lang/Long;

    invoke-virtual {p7}, Ljava/lang/Long;->longValue()J

    move-result-wide p7

    iget-object p9, p1, Lnwn;->b:Lnws;

    invoke-virtual {p9}, Lnws;->ac()Z

    move-result p9

    if-nez p9, :cond_c

    invoke-virtual {p1}, Lnwn;->p()V

    :cond_c
    iget-object p9, p1, Lnwn;->b:Lnws;

    check-cast p9, Lnld;

    iget v1, p9, Lnld;->a:I

    or-int/lit16 v1, v1, 0x1000

    iput v1, p9, Lnld;->a:I

    iput-wide p7, p9, Lnld;->n:J

    invoke-virtual {p12, p6}, Lmwa;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/Long;

    invoke-virtual {p6}, Ljava/lang/Long;->longValue()J

    move-result-wide p6

    iget-object p8, p1, Lnwn;->b:Lnws;

    invoke-virtual {p8}, Lnws;->ac()Z

    move-result p8

    if-nez p8, :cond_d

    invoke-virtual {p1}, Lnwn;->p()V

    :cond_d
    iget-object p8, p1, Lnwn;->b:Lnws;

    check-cast p8, Lnld;

    iget p9, p8, Lnld;->a:I

    const/high16 v1, 0x40000

    or-int/2addr p9, v1

    iput p9, p8, Lnld;->a:I

    iput-wide p6, p8, Lnld;->t:J

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual {p10, p6}, Lmwa;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Ljava/lang/Integer;

    invoke-virtual {p7}, Ljava/lang/Integer;->intValue()I

    move-result p7

    iget-object p8, p1, Lnwn;->b:Lnws;

    invoke-virtual {p8}, Lnws;->ac()Z

    move-result p8

    if-nez p8, :cond_e

    invoke-virtual {p1}, Lnwn;->p()V

    :cond_e
    iget-object p8, p1, Lnwn;->b:Lnws;

    check-cast p8, Lnld;

    iget p9, p8, Lnld;->a:I

    or-int/lit8 p9, p9, 0x20

    iput p9, p8, Lnld;->a:I

    iput p7, p8, Lnld;->g:I

    invoke-virtual {p11, p6}, Lmwa;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Ljava/lang/Long;

    invoke-virtual {p7}, Ljava/lang/Long;->longValue()J

    move-result-wide p7

    iget-object p9, p1, Lnwn;->b:Lnws;

    invoke-virtual {p9}, Lnws;->ac()Z

    move-result p9

    if-nez p9, :cond_f

    invoke-virtual {p1}, Lnwn;->p()V

    :cond_f
    iget-object p9, p1, Lnwn;->b:Lnws;

    check-cast p9, Lnld;

    iget v1, p9, Lnld;->a:I

    or-int/lit16 v1, v1, 0x800

    iput v1, p9, Lnld;->a:I

    iput-wide p7, p9, Lnld;->m:J

    invoke-virtual {p12, p6}, Lmwa;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/Long;

    invoke-virtual {p6}, Ljava/lang/Long;->longValue()J

    move-result-wide p6

    iget-object p8, p1, Lnwn;->b:Lnws;

    invoke-virtual {p8}, Lnws;->ac()Z

    move-result p8

    if-nez p8, :cond_10

    invoke-virtual {p1}, Lnwn;->p()V

    :cond_10
    iget-object p8, p1, Lnwn;->b:Lnws;

    check-cast p8, Lnld;

    iget p9, p8, Lnld;->a:I

    const/high16 v1, 0x20000

    or-int/2addr p9, v1

    iput p9, p8, Lnld;->a:I

    iput-wide p6, p8, Lnld;->s:J

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual {p10, p6}, Lmwa;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Ljava/lang/Integer;

    invoke-virtual {p7}, Ljava/lang/Integer;->intValue()I

    move-result p7

    iget-object p8, p1, Lnwn;->b:Lnws;

    invoke-virtual {p8}, Lnws;->ac()Z

    move-result p8

    if-nez p8, :cond_11

    invoke-virtual {p1}, Lnwn;->p()V

    :cond_11
    iget-object p8, p1, Lnwn;->b:Lnws;

    check-cast p8, Lnld;

    iget p9, p8, Lnld;->a:I

    or-int/lit8 p9, p9, 0x10

    iput p9, p8, Lnld;->a:I

    iput p7, p8, Lnld;->f:I

    invoke-virtual {p11, p6}, Lmwa;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Ljava/lang/Long;

    invoke-virtual {p7}, Ljava/lang/Long;->longValue()J

    move-result-wide p7

    iget-object p9, p1, Lnwn;->b:Lnws;

    invoke-virtual {p9}, Lnws;->ac()Z

    move-result p9

    if-nez p9, :cond_12

    invoke-virtual {p1}, Lnwn;->p()V

    :cond_12
    iget-object p9, p1, Lnwn;->b:Lnws;

    check-cast p9, Lnld;

    iget v1, p9, Lnld;->a:I

    or-int/lit16 v1, v1, 0x400

    iput v1, p9, Lnld;->a:I

    iput-wide p7, p9, Lnld;->l:J

    invoke-virtual {p12, p6}, Lmwa;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/Long;

    invoke-virtual {p6}, Ljava/lang/Long;->longValue()J

    move-result-wide p6

    iget-object p8, p1, Lnwn;->b:Lnws;

    invoke-virtual {p8}, Lnws;->ac()Z

    move-result p8

    if-nez p8, :cond_13

    invoke-virtual {p1}, Lnwn;->p()V

    :cond_13
    iget-object p8, p1, Lnwn;->b:Lnws;

    check-cast p8, Lnld;

    iget p9, p8, Lnld;->a:I

    const/high16 v1, 0x10000

    or-int/2addr p9, v1

    iput p9, p8, Lnld;->a:I

    iput-wide p6, p8, Lnld;->r:J

    goto :goto_1

    :pswitch_5
    invoke-virtual {p10, p6}, Lmwa;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Ljava/lang/Integer;

    invoke-virtual {p7}, Ljava/lang/Integer;->intValue()I

    move-result p7

    iget-object p8, p1, Lnwn;->b:Lnws;

    invoke-virtual {p8}, Lnws;->ac()Z

    move-result p8

    if-nez p8, :cond_14

    invoke-virtual {p1}, Lnwn;->p()V

    :cond_14
    iget-object p8, p1, Lnwn;->b:Lnws;

    check-cast p8, Lnld;

    iget p9, p8, Lnld;->a:I

    or-int/lit8 p9, p9, 0x8

    iput p9, p8, Lnld;->a:I

    iput p7, p8, Lnld;->e:I

    invoke-virtual {p11, p6}, Lmwa;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Ljava/lang/Long;

    invoke-virtual {p7}, Ljava/lang/Long;->longValue()J

    move-result-wide p7

    iget-object p9, p1, Lnwn;->b:Lnws;

    invoke-virtual {p9}, Lnws;->ac()Z

    move-result p9

    if-nez p9, :cond_15

    invoke-virtual {p1}, Lnwn;->p()V

    :cond_15
    iget-object p9, p1, Lnwn;->b:Lnws;

    check-cast p9, Lnld;

    iget v1, p9, Lnld;->a:I

    or-int/lit16 v1, v1, 0x200

    iput v1, p9, Lnld;->a:I

    iput-wide p7, p9, Lnld;->k:J

    invoke-virtual {p12, p6}, Lmwa;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/Long;

    invoke-virtual {p6}, Ljava/lang/Long;->longValue()J

    move-result-wide p6

    iget-object p8, p1, Lnwn;->b:Lnws;

    invoke-virtual {p8}, Lnws;->ac()Z

    move-result p8

    if-nez p8, :cond_16

    invoke-virtual {p1}, Lnwn;->p()V

    :cond_16
    iget-object p8, p1, Lnwn;->b:Lnws;

    check-cast p8, Lnld;

    iget p9, p8, Lnld;->a:I

    const v1, 0x8000

    or-int/2addr p9, v1

    iput p9, p8, Lnld;->a:I

    iput-wide p6, p8, Lnld;->q:J

    :cond_17
    :goto_1
    add-int/lit8 p5, p5, 0x1

    goto/16 :goto_0

    :cond_18
    invoke-virtual {p1}, Lnwn;->i()Lnws;

    move-result-object p1

    check-cast p1, Lnld;

    if-nez p1, :cond_19

    goto :goto_2

    :cond_19
    iget-object p3, v0, Lbkb;->a:Ljava/lang/Object;

    check-cast p3, Lnwn;

    iget-object p4, p3, Lnwn;->b:Lnws;

    invoke-virtual {p4}, Lnws;->ac()Z

    move-result p4

    if-nez p4, :cond_1a

    invoke-virtual {p3}, Lnwn;->p()V

    :cond_1a
    iget-object p3, p3, Lnwn;->b:Lnws;

    check-cast p3, Lnhb;

    sget-object p4, Lnhb;->Y:Lnhb;

    iput-object p1, p3, Lnhb;->C:Lnld;

    iget p1, p3, Lnhb;->b:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p3, Lnhb;->b:I

    :goto_2
    invoke-virtual {p2}, Lmqp;->g()Z

    move-result p1

    if-eqz p1, :cond_1b

    invoke-virtual {p2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnjm;

    invoke-virtual {v0, p1}, Lbkb;->L(Lnjm;)V

    :cond_1b
    invoke-virtual {p0, v0}, Lhjl;->aG(Lbkb;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final U(ILjava/util/List;Lmqp;Lmqp;)V
    .locals 18

    move-object/from16 v1, p0

    move/from16 v0, p1

    move-object/from16 v2, p2

    if-eqz v0, :cond_17

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-object v7, v1, Lhjl;->v:Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget-object v10, v1, Lhjl;->v:Ljava/util/LinkedHashMap;

    invoke-virtual {v10, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljcb;

    if-eqz v10, :cond_7

    const-wide/16 v10, 0x7530

    cmp-long v12, v5, v10

    if-lez v12, :cond_7

    sget-object v10, Lngr;->av:Lngr;

    invoke-virtual {v10}, Lnws;->O()Lnwn;

    move-result-object v10

    sget-object v11, Lngq;->e:Lngq;

    iget-object v12, v10, Lnwn;->b:Lnws;

    invoke-virtual {v12}, Lnws;->ac()Z

    move-result v12

    if-nez v12, :cond_0

    invoke-virtual {v10}, Lnwn;->p()V

    :cond_0
    iget-object v12, v10, Lnwn;->b:Lnws;

    check-cast v12, Lngr;

    iget v11, v11, Lngq;->ar:I

    iput v11, v12, Lngr;->d:I

    iget v11, v12, Lngr;->a:I

    or-int/2addr v11, v9

    iput v11, v12, Lngr;->a:I

    sget-object v11, Lnjn;->f:Lnjn;

    invoke-virtual {v11}, Lnws;->O()Lnwn;

    move-result-object v11

    iget-object v12, v11, Lnwn;->b:Lnws;

    invoke-virtual {v12}, Lnws;->ac()Z

    move-result v12

    if-nez v12, :cond_1

    invoke-virtual {v11}, Lnwn;->p()V

    :cond_1
    iget-object v12, v11, Lnwn;->b:Lnws;

    check-cast v12, Lnjn;

    const/4 v13, 0x6

    iput v13, v12, Lnjn;->b:I

    iget v13, v12, Lnjn;->a:I

    or-int/2addr v13, v9

    iput v13, v12, Lnjn;->a:I

    iget-object v12, v1, Lhjl;->p:Lfch;

    iget-object v13, v12, Lfch;->c:Ljava/lang/Object;

    monitor-enter v13

    :try_start_0
    iget-object v12, v12, Lfch;->b:Ljava/security/MessageDigest;

    sget-object v14, Lfch;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v8, v14}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    invoke-virtual {v12, v8}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v8

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    array-length v14, v8

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v14, :cond_2

    aget-byte v9, v8, v15

    and-int/lit16 v9, v9, 0xff

    add-int/lit16 v9, v9, 0x100

    move-wide/from16 v16, v5

    const/16 v5, 0x10

    invoke-static {v9, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v15, v15, 0x1

    move-wide/from16 v5, v16

    const/4 v9, 0x1

    goto :goto_1

    :cond_2
    move-wide/from16 v16, v5

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v6, 0xa

    const/4 v8, 0x0

    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v11, Lnwn;->b:Lnws;

    invoke-virtual {v6}, Lnws;->ac()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v11}, Lnwn;->p()V

    :cond_3
    iget-object v6, v11, Lnwn;->b:Lnws;

    move-object v8, v6

    check-cast v8, Lnjn;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v9, v8, Lnjn;->a:I

    or-int/lit8 v9, v9, 0x8

    iput v9, v8, Lnjn;->a:I

    iput-object v5, v8, Lnjn;->c:Ljava/lang/String;

    invoke-virtual {v6}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v11}, Lnwn;->p()V

    :cond_4
    iget-object v5, v11, Lnwn;->b:Lnws;

    move-object v6, v5

    check-cast v6, Lnjn;

    iget v8, v6, Lnjn;->a:I

    or-int/lit8 v8, v8, 0x20

    iput v8, v6, Lnjn;->a:I

    const/4 v8, 0x0

    iput v8, v6, Lnjn;->e:F

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v11}, Lnwn;->p()V

    :cond_5
    iget-object v5, v11, Lnwn;->b:Lnws;

    check-cast v5, Lnjn;

    iget v6, v5, Lnjn;->a:I

    const/16 v9, 0x10

    or-int/2addr v6, v9

    iput v6, v5, Lnjn;->a:I

    iput v8, v5, Lnjn;->d:F

    iget-object v5, v10, Lnwn;->b:Lnws;

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v10}, Lnwn;->p()V

    :cond_6
    iget-object v5, v10, Lnwn;->b:Lnws;

    check-cast v5, Lngr;

    invoke-virtual {v11}, Lnwn;->i()Lnws;

    move-result-object v6

    check-cast v6, Lnjn;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v6, v5, Lngr;->h:Lnjn;

    iget v6, v5, Lngr;->a:I

    or-int/lit8 v6, v6, 0x20

    iput v6, v5, Lngr;->a:I

    invoke-virtual {v1, v10}, Lhjl;->aF(Lnwn;)V

    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    move-wide/from16 v5, v16

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_7
    move-wide/from16 v16, v5

    goto/16 :goto_0

    :cond_8
    sget-object v5, Lngk;->g:Lngk;

    invoke-virtual {v5}, Lnws;->O()Lnwn;

    move-result-object v5

    if-eqz v2, :cond_b

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_b

    iget-object v6, v5, Lnwn;->b:Lnws;

    invoke-virtual {v6}, Lnws;->ac()Z

    move-result v6

    if-nez v6, :cond_9

    invoke-virtual {v5}, Lnwn;->p()V

    :cond_9
    iget-object v6, v5, Lnwn;->b:Lnws;

    check-cast v6, Lngk;

    iget-object v7, v6, Lngk;->e:Lnxa;

    invoke-interface {v7}, Lnxa;->c()Z

    move-result v8

    if-nez v8, :cond_a

    invoke-static {v7}, Lnws;->U(Lnxa;)Lnxa;

    move-result-object v7

    iput-object v7, v6, Lngk;->e:Lnxa;

    :cond_a
    iget-object v6, v6, Lngk;->e:Lnxa;

    invoke-static {v2, v6}, Lnvd;->e(Ljava/lang/Iterable;Ljava/util/List;)V

    :cond_b
    invoke-virtual/range {p3 .. p3}, Lmqp;->g()Z

    move-result v2

    const/4 v6, 0x2

    if-eqz v2, :cond_d

    invoke-virtual/range {p3 .. p3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnja;

    iget-object v7, v5, Lnwn;->b:Lnws;

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v7

    if-nez v7, :cond_c

    invoke-virtual {v5}, Lnwn;->p()V

    :cond_c
    iget-object v7, v5, Lnwn;->b:Lnws;

    check-cast v7, Lngk;

    iput-object v2, v7, Lngk;->b:Lnja;

    iget v2, v7, Lngk;->a:I

    or-int/2addr v2, v6

    iput v2, v7, Lngk;->a:I

    :cond_d
    move-object/from16 v2, p4

    check-cast v2, Lmqt;

    iget-object v2, v2, Lmqt;->a:Ljava/lang/Object;

    check-cast v2, Lngx;

    iget-object v7, v5, Lnwn;->b:Lnws;

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v7

    if-nez v7, :cond_e

    invoke-virtual {v5}, Lnwn;->p()V

    :cond_e
    iget-object v7, v5, Lnwn;->b:Lnws;

    move-object v8, v7

    check-cast v8, Lngk;

    iput-object v2, v8, Lngk;->f:Lngx;

    iget v2, v8, Lngk;->a:I

    or-int/lit8 v2, v2, 0x8

    iput v2, v8, Lngk;->a:I

    iget-object v2, v1, Lhjl;->q:Ljava/util/List;

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v7

    if-nez v7, :cond_f

    invoke-virtual {v5}, Lnwn;->p()V

    :cond_f
    iget-object v7, v5, Lnwn;->b:Lnws;

    check-cast v7, Lngk;

    iget-object v8, v7, Lngk;->c:Lnxa;

    invoke-interface {v8}, Lnxa;->c()Z

    move-result v9

    if-nez v9, :cond_10

    invoke-static {v8}, Lnws;->U(Lnxa;)Lnxa;

    move-result-object v8

    iput-object v8, v7, Lngk;->c:Lnxa;

    :cond_10
    iget-object v7, v7, Lngk;->c:Lnxa;

    invoke-static {v2, v7}, Lnvd;->e(Ljava/lang/Iterable;Ljava/util/List;)V

    iget-object v2, v1, Lhjl;->q:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    if-ne v0, v6, :cond_14

    iget-boolean v0, v1, Lhjl;->s:Z

    if-nez v0, :cond_12

    iget-wide v6, v1, Lhjl;->t:J

    sub-long/2addr v3, v6

    iget-object v0, v5, Lnwn;->b:Lnws;

    invoke-virtual {v0}, Lnws;->ac()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {v5}, Lnwn;->p()V

    :cond_11
    long-to-float v0, v3

    iget-object v2, v5, Lnwn;->b:Lnws;

    check-cast v2, Lngk;

    iget v3, v2, Lngk;->a:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v2, Lngk;->a:I

    const v3, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v0, v3

    iput v0, v2, Lngk;->d:F

    goto :goto_2

    :cond_12
    iget-object v0, v5, Lnwn;->b:Lnws;

    invoke-virtual {v0}, Lnws;->ac()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {v5}, Lnwn;->p()V

    :cond_13
    iget-object v0, v5, Lnwn;->b:Lnws;

    check-cast v0, Lngk;

    iget v2, v0, Lngk;->a:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v0, Lngk;->a:I

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, v0, Lngk;->d:F

    :cond_14
    :goto_2
    const/4 v0, 0x1

    iput-boolean v0, v1, Lhjl;->s:Z

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lhjl;->t:J

    sget-object v0, Lngr;->av:Lngr;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    sget-object v2, Lngq;->j:Lngq;

    iget-object v3, v0, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_15

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_15
    iget-object v3, v0, Lnwn;->b:Lnws;

    move-object v4, v3

    check-cast v4, Lngr;

    iget v2, v2, Lngq;->ar:I

    iput v2, v4, Lngr;->d:I

    iget v2, v4, Lngr;->a:I

    const/4 v6, 0x1

    or-int/2addr v2, v6

    iput v2, v4, Lngr;->a:I

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_16

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_16
    iget-object v2, v0, Lnwn;->b:Lnws;

    check-cast v2, Lngr;

    invoke-virtual {v5}, Lnwn;->i()Lnws;

    move-result-object v3

    check-cast v3, Lngk;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v3, v2, Lngr;->m:Lngk;

    iget v3, v2, Lngr;->a:I

    or-int/lit16 v3, v3, 0x2000

    iput v3, v2, Lngr;->a:I

    invoke-virtual {v1, v0}, Lhjl;->aF(Lnwn;)V

    return-void

    :cond_17
    const/4 v0, 0x0

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public final V(ILjava/lang/String;Ljava/lang/Throwable;IIILjava/util/List;Ljava/util/List;Lkbo;Z)V
    .locals 15

    move-object v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p9

    sget-object v6, Lngs;->m:Lngs;

    invoke-virtual {v6}, Lnws;->O()Lnwn;

    move-result-object v6

    iget-object v7, v6, Lnwn;->b:Lnws;

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v6}, Lnwn;->p()V

    :cond_0
    iget-object v7, v6, Lnwn;->b:Lnws;

    move-object v8, v7

    check-cast v8, Lngs;

    add-int/lit8 v9, v1, -0x1

    iput v9, v8, Lngs;->b:I

    iget v9, v8, Lngs;->a:I

    or-int/lit8 v9, v9, 0x1

    iput v9, v8, Lngs;->a:I

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v6}, Lnwn;->p()V

    :cond_1
    iget-object v7, v6, Lnwn;->b:Lnws;

    move-object v8, v7

    check-cast v8, Lngs;

    iget v9, v8, Lngs;->a:I

    or-int/lit8 v9, v9, 0x40

    iput v9, v8, Lngs;->a:I

    move/from16 v9, p6

    iput v9, v8, Lngs;->g:I

    iget-object v8, v0, Lhjl;->e:Ljava/lang/String;

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v6}, Lnwn;->p()V

    :cond_2
    iget-object v7, v6, Lnwn;->b:Lnws;

    move-object v9, v7

    check-cast v9, Lngs;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v10, v9, Lngs;->a:I

    or-int/lit8 v10, v10, 0x4

    iput v10, v9, Lngs;->a:I

    iput-object v8, v9, Lngs;->d:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v6}, Lnwn;->p()V

    :cond_3
    iget-object v7, v6, Lnwn;->b:Lnws;

    check-cast v7, Lngs;

    iget v8, v7, Lngs;->a:I

    or-int/lit8 v8, v8, 0x2

    iput v8, v7, Lngs;->a:I

    iput-object v2, v7, Lngs;->c:Ljava/lang/String;

    :cond_4
    const/4 v2, -0x1

    if-eq v3, v2, :cond_6

    iget-object v7, v6, Lnwn;->b:Lnws;

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v6}, Lnwn;->p()V

    :cond_5
    iget-object v7, v6, Lnwn;->b:Lnws;

    check-cast v7, Lngs;

    iget v8, v7, Lngs;->a:I

    or-int/lit8 v8, v8, 0x8

    iput v8, v7, Lngs;->a:I

    iput v3, v7, Lngs;->e:I

    :cond_6
    if-eq v4, v2, :cond_8

    iget-object v2, v6, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v6}, Lnwn;->p()V

    :cond_7
    iget-object v2, v6, Lnwn;->b:Lnws;

    check-cast v2, Lngs;

    iget v3, v2, Lngs;->a:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v2, Lngs;->a:I

    iput v4, v2, Lngs;->f:I

    :cond_8
    if-eqz p3, :cond_16

    sget-object v2, Lniw;->b:Lniw;

    invoke-virtual {v2}, Lnws;->O()Lnwn;

    move-result-object v2

    move-object/from16 v3, p3

    :goto_0
    if-eqz v3, :cond_14

    sget-object v4, Lnix;->d:Lnix;

    invoke-virtual {v4}, Lnws;->O()Lnwn;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v4, Lnwn;->b:Lnws;

    invoke-virtual {v8}, Lnws;->ac()Z

    move-result v8

    if-nez v8, :cond_9

    invoke-virtual {v4}, Lnwn;->p()V

    :cond_9
    iget-object v8, v4, Lnwn;->b:Lnws;

    check-cast v8, Lnix;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v9, v8, Lnix;->a:I

    or-int/lit8 v9, v9, 0x1

    iput v9, v8, Lnix;->a:I

    iput-object v7, v8, Lnix;->b:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    array-length v8, v7

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_11

    aget-object v10, v7, v9

    sget-object v11, Lniy;->f:Lniy;

    invoke-virtual {v11}, Lnws;->O()Lnwn;

    move-result-object v11

    invoke-virtual {v10}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v11, Lnwn;->b:Lnws;

    invoke-virtual {v13}, Lnws;->ac()Z

    move-result v13

    if-nez v13, :cond_a

    invoke-virtual {v11}, Lnwn;->p()V

    :cond_a
    iget-object v13, v11, Lnwn;->b:Lnws;

    check-cast v13, Lniy;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v14, v13, Lniy;->a:I

    or-int/lit8 v14, v14, 0x1

    iput v14, v13, Lniy;->a:I

    iput-object v12, v13, Lniy;->b:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v11, Lnwn;->b:Lnws;

    invoke-virtual {v13}, Lnws;->ac()Z

    move-result v13

    if-nez v13, :cond_b

    invoke-virtual {v11}, Lnwn;->p()V

    :cond_b
    iget-object v13, v11, Lnwn;->b:Lnws;

    check-cast v13, Lniy;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v14, v13, Lniy;->a:I

    or-int/lit8 v14, v14, 0x2

    iput v14, v13, Lniy;->a:I

    iput-object v12, v13, Lniy;->c:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v12

    iget-object v13, v11, Lnwn;->b:Lnws;

    invoke-virtual {v13}, Lnws;->ac()Z

    move-result v13

    if-nez v13, :cond_c

    invoke-virtual {v11}, Lnwn;->p()V

    :cond_c
    iget-object v13, v11, Lnwn;->b:Lnws;

    check-cast v13, Lniy;

    iget v14, v13, Lniy;->a:I

    or-int/lit8 v14, v14, 0x8

    iput v14, v13, Lniy;->a:I

    iput v12, v13, Lniy;->e:I

    invoke-virtual {v10}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_e

    iget-object v12, v11, Lnwn;->b:Lnws;

    invoke-virtual {v12}, Lnws;->ac()Z

    move-result v12

    if-nez v12, :cond_d

    invoke-virtual {v11}, Lnwn;->p()V

    :cond_d
    iget-object v12, v11, Lnwn;->b:Lnws;

    check-cast v12, Lniy;

    iget v13, v12, Lniy;->a:I

    or-int/lit8 v13, v13, 0x4

    iput v13, v12, Lniy;->a:I

    iput-object v10, v12, Lniy;->d:Ljava/lang/String;

    :cond_e
    iget-object v10, v4, Lnwn;->b:Lnws;

    invoke-virtual {v10}, Lnws;->ac()Z

    move-result v10

    if-nez v10, :cond_f

    invoke-virtual {v4}, Lnwn;->p()V

    :cond_f
    iget-object v10, v4, Lnwn;->b:Lnws;

    check-cast v10, Lnix;

    invoke-virtual {v11}, Lnwn;->i()Lnws;

    move-result-object v11

    check-cast v11, Lniy;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v12, v10, Lnix;->c:Lnxa;

    invoke-interface {v12}, Lnxa;->c()Z

    move-result v13

    if-nez v13, :cond_10

    invoke-static {v12}, Lnws;->U(Lnxa;)Lnxa;

    move-result-object v12

    iput-object v12, v10, Lnix;->c:Lnxa;

    :cond_10
    iget-object v10, v10, Lnix;->c:Lnxa;

    invoke-interface {v10, v11}, Lnxa;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    :cond_11
    iget-object v7, v2, Lnwn;->b:Lnws;

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v7

    if-nez v7, :cond_12

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_12
    iget-object v7, v2, Lnwn;->b:Lnws;

    check-cast v7, Lniw;

    invoke-virtual {v4}, Lnwn;->i()Lnws;

    move-result-object v4

    check-cast v4, Lnix;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v7, Lniw;->a:Lnxa;

    invoke-interface {v8}, Lnxa;->c()Z

    move-result v9

    if-nez v9, :cond_13

    invoke-static {v8}, Lnws;->U(Lnxa;)Lnxa;

    move-result-object v8

    iput-object v8, v7, Lniw;->a:Lnxa;

    :cond_13
    iget-object v7, v7, Lniw;->a:Lnxa;

    invoke-interface {v7, v4}, Lnxa;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    goto/16 :goto_0

    :cond_14
    invoke-virtual {v2}, Lnwn;->i()Lnws;

    move-result-object v2

    check-cast v2, Lniw;

    iget-object v3, v6, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_15

    invoke-virtual {v6}, Lnwn;->p()V

    :cond_15
    iget-object v3, v6, Lnwn;->b:Lnws;

    check-cast v3, Lngs;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v3, Lngs;->h:Lniw;

    iget v2, v3, Lngs;->a:I

    or-int/lit16 v2, v2, 0x80

    iput v2, v3, Lngs;->a:I

    :cond_16
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p7 .. p7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lklv;

    invoke-static {v4}, Lhjl;->aJ(Lklv;)Lngo;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_17
    iget-object v3, v6, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_18

    invoke-virtual {v6}, Lnwn;->p()V

    :cond_18
    iget-object v3, v6, Lnwn;->b:Lnws;

    check-cast v3, Lngs;

    iget-object v4, v3, Lngs;->i:Lnwy;

    invoke-interface {v4}, Lnwy;->c()Z

    move-result v7

    if-nez v7, :cond_19

    invoke-static {v4}, Lnws;->S(Lnwy;)Lnwy;

    move-result-object v4

    iput-object v4, v3, Lngs;->i:Lnwy;

    :cond_19
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lngo;

    iget-object v7, v3, Lngs;->i:Lnwy;

    iget v4, v4, Lngo;->d:I

    invoke-interface {v7, v4}, Lnwy;->g(I)V

    goto :goto_3

    :cond_1a
    iget-object v2, v6, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_1b

    invoke-virtual {v6}, Lnwn;->p()V

    :cond_1b
    iget-object v2, v6, Lnwn;->b:Lnws;

    check-cast v2, Lngs;

    iget-object v3, v2, Lngs;->l:Lnxa;

    invoke-interface {v3}, Lnxa;->c()Z

    move-result v4

    if-nez v4, :cond_1c

    invoke-static {v3}, Lnws;->U(Lnxa;)Lnxa;

    move-result-object v3

    iput-object v3, v2, Lngs;->l:Lnxa;

    :cond_1c
    iget-object v2, v2, Lngs;->l:Lnxa;

    move-object/from16 v3, p8

    invoke-static {v3, v2}, Lnvd;->e(Ljava/lang/Iterable;Ljava/util/List;)V

    sget-object v2, Lkbo;->m:Lkbo;

    if-eq v5, v2, :cond_1e

    iget v2, v5, Lkbo;->u:I

    iget-object v3, v6, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_1d

    invoke-virtual {v6}, Lnwn;->p()V

    :cond_1d
    iget-object v3, v6, Lnwn;->b:Lnws;

    check-cast v3, Lngs;

    iget v4, v3, Lngs;->a:I

    or-int/lit16 v4, v4, 0x100

    iput v4, v3, Lngs;->a:I

    iput v2, v3, Lngs;->j:I

    :cond_1e
    const/4 v2, 0x3

    if-ne v1, v2, :cond_20

    iget-object v1, v6, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_1f

    invoke-virtual {v6}, Lnwn;->p()V

    :cond_1f
    iget-object v1, v6, Lnwn;->b:Lnws;

    check-cast v1, Lngs;

    iget v2, v1, Lngs;->a:I

    or-int/lit16 v2, v2, 0x200

    iput v2, v1, Lngs;->a:I

    move/from16 v2, p10

    iput-boolean v2, v1, Lngs;->k:Z

    :cond_20
    sget-object v1, Lngr;->av:Lngr;

    invoke-virtual {v1}, Lnws;->O()Lnwn;

    move-result-object v1

    sget-object v2, Lngq;->g:Lngq;

    iget-object v3, v1, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_21

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_21
    iget-object v3, v1, Lnwn;->b:Lnws;

    move-object v4, v3

    check-cast v4, Lngr;

    iget v2, v2, Lngq;->ar:I

    iput v2, v4, Lngr;->d:I

    iget v2, v4, Lngr;->a:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v4, Lngr;->a:I

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_22

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_22
    iget-object v2, v1, Lnwn;->b:Lnws;

    check-cast v2, Lngr;

    invoke-virtual {v6}, Lnwn;->i()Lnws;

    move-result-object v3

    check-cast v3, Lngs;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v3, v2, Lngr;->j:Lngs;

    iget v3, v2, Lngr;->a:I

    or-int/lit16 v3, v3, 0x80

    iput v3, v2, Lngr;->a:I

    invoke-virtual {p0, v1}, Lhjl;->aF(Lnwn;)V

    return-void
.end method

.method public final W(IIILklv;I)V
    .locals 3

    sget-object v0, Lngv;->g:Lngv;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v1, v0, Lnwn;->b:Lnws;

    move-object v2, v1

    check-cast v2, Lngv;

    add-int/lit8 p1, p1, -0x1

    iput p1, v2, Lngv;->b:I

    iget p1, v2, Lngv;->a:I

    or-int/lit8 p1, p1, 0x1

    iput p1, v2, Lngv;->a:I

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_1
    iget-object p1, v0, Lnwn;->b:Lnws;

    move-object v1, p1

    check-cast v1, Lngv;

    add-int/lit8 p2, p2, -0x1

    iput p2, v1, Lngv;->c:I

    iget p2, v1, Lngv;->a:I

    or-int/lit8 p2, p2, 0x2

    iput p2, v1, Lngv;->a:I

    invoke-virtual {p1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_2
    iget-object p1, v0, Lnwn;->b:Lnws;

    check-cast p1, Lngv;

    add-int/lit8 p3, p3, -0x1

    iput p3, p1, Lngv;->d:I

    iget p2, p1, Lngv;->a:I

    or-int/lit8 p2, p2, 0x4

    iput p2, p1, Lngv;->a:I

    if-eqz p4, :cond_4

    invoke-static {p4}, Lhjl;->aJ(Lklv;)Lngo;

    move-result-object p1

    iget-object p2, v0, Lnwn;->b:Lnws;

    invoke-virtual {p2}, Lnws;->ac()Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_3
    iget-object p2, v0, Lnwn;->b:Lnws;

    check-cast p2, Lngv;

    iget p1, p1, Lngo;->d:I

    iput p1, p2, Lngv;->e:I

    iget p1, p2, Lngv;->a:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p2, Lngv;->a:I

    :cond_4
    if-eqz p5, :cond_6

    iget-object p1, v0, Lnwn;->b:Lnws;

    invoke-virtual {p1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_5
    iget-object p1, v0, Lnwn;->b:Lnws;

    check-cast p1, Lngv;

    add-int/lit8 p5, p5, -0x1

    iput p5, p1, Lngv;->f:I

    iget p2, p1, Lngv;->a:I

    or-int/lit8 p2, p2, 0x10

    iput p2, p1, Lngv;->a:I

    :cond_6
    sget-object p1, Lngr;->av:Lngr;

    invoke-virtual {p1}, Lnws;->O()Lnwn;

    move-result-object p1

    sget-object p2, Lngq;->Z:Lngq;

    iget-object p3, p1, Lnwn;->b:Lnws;

    invoke-virtual {p3}, Lnws;->ac()Z

    move-result p3

    if-nez p3, :cond_7

    invoke-virtual {p1}, Lnwn;->p()V

    :cond_7
    iget-object p3, p1, Lnwn;->b:Lnws;

    check-cast p3, Lngr;

    iget p2, p2, Lngq;->ar:I

    iput p2, p3, Lngr;->d:I

    iget p2, p3, Lngr;->a:I

    or-int/lit8 p2, p2, 0x1

    iput p2, p3, Lngr;->a:I

    invoke-virtual {v0}, Lnwn;->i()Lnws;

    move-result-object p2

    check-cast p2, Lngv;

    iget-object p3, p1, Lnwn;->b:Lnws;

    invoke-virtual {p3}, Lnws;->ac()Z

    move-result p3

    if-nez p3, :cond_8

    invoke-virtual {p1}, Lnwn;->p()V

    :cond_8
    iget-object p3, p1, Lnwn;->b:Lnws;

    check-cast p3, Lngr;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p3, Lngr;->ab:Lngv;

    iget p2, p3, Lngr;->c:I

    or-int/lit8 p2, p2, 0x1

    iput p2, p3, Lngr;->c:I

    invoke-virtual {p0, p1}, Lhjl;->aF(Lnwn;)V

    return-void
.end method

.method public final X(ILnkd;Lnkg;Lnkt;Ljava/lang/Long;)V
    .locals 3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lhjl;->r:J

    sget-object v0, Lnha;->g:Lnha;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v1, v0, Lnwn;->b:Lnws;

    move-object v2, v1

    check-cast v2, Lnha;

    add-int/lit8 p1, p1, -0x1

    iput p1, v2, Lnha;->b:I

    iget p1, v2, Lnha;->a:I

    or-int/lit8 p1, p1, 0x1

    iput p1, v2, Lnha;->a:I

    if-eqz p2, :cond_2

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_1
    iget-object p1, v0, Lnwn;->b:Lnws;

    check-cast p1, Lnha;

    iput-object p2, p1, Lnha;->c:Lnkd;

    iget p2, p1, Lnha;->a:I

    or-int/lit8 p2, p2, 0x4

    iput p2, p1, Lnha;->a:I

    :cond_2
    if-eqz p3, :cond_4

    iget-object p1, v0, Lnwn;->b:Lnws;

    invoke-virtual {p1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_3
    iget-object p1, v0, Lnwn;->b:Lnws;

    check-cast p1, Lnha;

    iput-object p3, p1, Lnha;->d:Lnkg;

    iget p2, p1, Lnha;->a:I

    or-int/lit8 p2, p2, 0x10

    iput p2, p1, Lnha;->a:I

    :cond_4
    if-eqz p4, :cond_6

    iget-object p1, v0, Lnwn;->b:Lnws;

    invoke-virtual {p1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_5
    iget-object p1, v0, Lnwn;->b:Lnws;

    check-cast p1, Lnha;

    iput-object p4, p1, Lnha;->f:Lnkt;

    iget p2, p1, Lnha;->a:I

    or-int/lit8 p2, p2, 0x40

    iput p2, p1, Lnha;->a:I

    :cond_6
    if-eqz p5, :cond_8

    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iget-object p3, v0, Lnwn;->b:Lnws;

    invoke-virtual {p3}, Lnws;->ac()Z

    move-result p3

    if-nez p3, :cond_7

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_7
    iget-object p3, v0, Lnwn;->b:Lnws;

    check-cast p3, Lnha;

    iget p4, p3, Lnha;->a:I

    or-int/lit8 p4, p4, 0x20

    iput p4, p3, Lnha;->a:I

    iput-wide p1, p3, Lnha;->e:J

    :cond_8
    sget-object p1, Lngr;->av:Lngr;

    invoke-virtual {p1}, Lnws;->O()Lnwn;

    move-result-object p1

    sget-object p2, Lngq;->i:Lngq;

    iget-object p3, p1, Lnwn;->b:Lnws;

    invoke-virtual {p3}, Lnws;->ac()Z

    move-result p3

    if-nez p3, :cond_9

    invoke-virtual {p1}, Lnwn;->p()V

    :cond_9
    iget-object p3, p1, Lnwn;->b:Lnws;

    move-object p4, p3

    check-cast p4, Lngr;

    iget p2, p2, Lngq;->ar:I

    iput p2, p4, Lngr;->d:I

    iget p2, p4, Lngr;->a:I

    or-int/lit8 p2, p2, 0x1

    iput p2, p4, Lngr;->a:I

    invoke-virtual {p3}, Lnws;->ac()Z

    move-result p2

    if-nez p2, :cond_a

    invoke-virtual {p1}, Lnwn;->p()V

    :cond_a
    iget-object p2, p1, Lnwn;->b:Lnws;

    check-cast p2, Lngr;

    invoke-virtual {v0}, Lnwn;->i()Lnws;

    move-result-object p3

    check-cast p3, Lnha;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p2, Lngr;->l:Lnha;

    iget p3, p2, Lngr;->a:I

    or-int/lit16 p3, p3, 0x200

    iput p3, p2, Lngr;->a:I

    invoke-virtual {p0, p1}, Lhjl;->aF(Lnwn;)V

    return-void
.end method

.method public final Y(IIJJ)V
    .locals 17

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move-wide/from16 v3, p5

    iget-wide v5, v0, Lhjl;->r:J

    iget-wide v7, v0, Lhjl;->w:J

    invoke-static {v7, v8}, Linb;->t(J)J

    move-result-wide v9

    sub-long v7, v1, v7

    sget-object v11, Lngr;->av:Lngr;

    invoke-virtual {v11}, Lnws;->O()Lnwn;

    move-result-object v11

    sget-object v12, Lngq;->s:Lngq;

    iget-object v13, v11, Lnwn;->b:Lnws;

    invoke-virtual {v13}, Lnws;->ac()Z

    move-result v13

    if-nez v13, :cond_0

    invoke-virtual {v11}, Lnwn;->p()V

    :cond_0
    iget-object v13, v11, Lnwn;->b:Lnws;

    check-cast v13, Lngr;

    iget v12, v12, Lngq;->ar:I

    iput v12, v13, Lngr;->d:I

    iget v12, v13, Lngr;->a:I

    const/4 v14, 0x1

    or-int/2addr v12, v14

    iput v12, v13, Lngr;->a:I

    sget-object v12, Lnhk;->h:Lnhk;

    invoke-virtual {v12}, Lnws;->O()Lnwn;

    move-result-object v12

    iget-object v13, v12, Lnwn;->b:Lnws;

    invoke-virtual {v13}, Lnws;->ac()Z

    move-result v13

    if-nez v13, :cond_1

    invoke-virtual {v12}, Lnwn;->p()V

    :cond_1
    iget-object v13, v12, Lnwn;->b:Lnws;

    move-object v15, v13

    check-cast v15, Lnhk;

    add-int/lit8 v14, p1, -0x1

    iput v14, v15, Lnhk;->b:I

    iget v14, v15, Lnhk;->a:I

    const/16 v16, 0x1

    or-int/lit8 v14, v14, 0x1

    iput v14, v15, Lnhk;->a:I

    invoke-virtual {v13}, Lnws;->ac()Z

    move-result v13

    if-nez v13, :cond_2

    invoke-virtual {v12}, Lnwn;->p()V

    :cond_2
    iget-object v13, v12, Lnwn;->b:Lnws;

    move-object v14, v13

    check-cast v14, Lnhk;

    add-int/lit8 v15, p2, -0x1

    iput v15, v14, Lnhk;->c:I

    iget v15, v14, Lnhk;->a:I

    or-int/lit8 v15, v15, 0x2

    iput v15, v14, Lnhk;->a:I

    invoke-virtual {v13}, Lnws;->ac()Z

    move-result v13

    if-nez v13, :cond_3

    invoke-virtual {v12}, Lnwn;->p()V

    :cond_3
    iget-object v13, v12, Lnwn;->b:Lnws;

    move-object v14, v13

    check-cast v14, Lnhk;

    iget v15, v14, Lnhk;->a:I

    or-int/lit8 v15, v15, 0x4

    iput v15, v14, Lnhk;->a:I

    iput-wide v1, v14, Lnhk;->d:J

    invoke-virtual {v13}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v12}, Lnwn;->p()V

    :cond_4
    iget-object v1, v12, Lnwn;->b:Lnws;

    move-object v2, v1

    check-cast v2, Lnhk;

    iget v13, v2, Lnhk;->a:I

    or-int/lit8 v13, v13, 0x8

    iput v13, v2, Lnhk;->a:I

    iput-wide v3, v2, Lnhk;->e:J

    iget v2, v0, Lhjl;->z:I

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v12}, Lnwn;->p()V

    :cond_5
    iget-object v1, v12, Lnwn;->b:Lnws;

    move-object v13, v1

    check-cast v13, Lnhk;

    add-int/lit8 v14, v2, -0x1

    if-eqz v2, :cond_a

    iput v14, v13, Lnhk;->f:I

    iget v2, v13, Lnhk;->a:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v13, Lnhk;->a:I

    const-wide v13, 0xb2d05e00L

    const/4 v2, 0x0

    cmp-long v15, v7, v13

    if-gez v15, :cond_7

    cmp-long v7, v5, v9

    if-gez v7, :cond_6

    const/4 v2, 0x1

    goto :goto_0

    :cond_6
    goto :goto_0

    :cond_7
    :goto_0
    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v12}, Lnwn;->p()V

    :cond_8
    iget-object v1, v12, Lnwn;->b:Lnws;

    check-cast v1, Lnhk;

    iget v5, v1, Lnhk;->a:I

    or-int/lit8 v5, v5, 0x20

    iput v5, v1, Lnhk;->a:I

    iput-boolean v2, v1, Lnhk;->g:Z

    iget-object v1, v11, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {v11}, Lnwn;->p()V

    :cond_9
    iget-object v1, v11, Lnwn;->b:Lnws;

    check-cast v1, Lngr;

    invoke-virtual {v12}, Lnwn;->i()Lnws;

    move-result-object v2

    check-cast v2, Lnhk;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v1, Lngr;->s:Lnhk;

    iget v2, v1, Lngr;->a:I

    const/high16 v5, 0x80000

    or-int/2addr v2, v5

    iput v2, v1, Lngr;->a:I

    invoke-virtual {v0, v11}, Lhjl;->aF(Lnwn;)V

    const/4 v1, 0x1

    iput v1, v0, Lhjl;->z:I

    iput-wide v3, v0, Lhjl;->w:J

    return-void

    :cond_a
    const/4 v1, 0x0

    throw v1
.end method

.method public final Z(II)V
    .locals 7

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lhjl;->aa(IIJJ)V

    return-void
.end method

.method public final a()J
    .locals 2

    iget-wide v0, p0, Lhjl;->n:J

    return-wide v0
.end method

.method public final aA(IIF)V
    .locals 7

    sget-object v0, Lnkd;->f:Lnkd;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v1, v0, Lnwn;->b:Lnws;

    move-object v2, v1

    check-cast v2, Lnkd;

    iget v3, v2, Lnkd;->a:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Lnkd;->a:I

    iput p1, v2, Lnkd;->b:I

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_1
    iget-object p1, v0, Lnwn;->b:Lnws;

    move-object v1, p1

    check-cast v1, Lnkd;

    iget v2, v1, Lnkd;->a:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v1, Lnkd;->a:I

    iput p2, v1, Lnkd;->c:I

    invoke-virtual {p1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_2
    iget-object p1, v0, Lnwn;->b:Lnws;

    move-object p2, p1

    check-cast p2, Lnkd;

    iget v1, p2, Lnkd;->a:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p2, Lnkd;->a:I

    iput p3, p2, Lnkd;->d:F

    invoke-virtual {p1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_3
    iget-object p1, v0, Lnwn;->b:Lnws;

    check-cast p1, Lnkd;

    const/4 p2, 0x3

    iput p2, p1, Lnkd;->e:I

    iget p2, p1, Lnkd;->a:I

    or-int/lit8 p2, p2, 0x10

    iput p2, p1, Lnkd;->a:I

    const/4 v2, 0x6

    invoke-virtual {v0}, Lnwn;->i()Lnws;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lnkd;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lhjl;->X(ILnkd;Lnkg;Lnkt;Ljava/lang/Long;)V

    return-void
.end method

.method public final aB(Ljava/lang/Float;Lklv;)V
    .locals 5

    sget-object v0, Lnhp;->f:Lnhp;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v1, v0, Lnwn;->b:Lnws;

    check-cast v1, Lnhp;

    const/4 v2, 0x2

    iput v2, v1, Lnhp;->c:I

    iget v3, v1, Lnhp;->a:I

    or-int/2addr v2, v3

    iput v2, v1, Lnhp;->a:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    iget-object v3, v0, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_1
    iget-object v3, v0, Lnwn;->b:Lnws;

    check-cast v3, Lnhp;

    iget v4, v3, Lnhp;->a:I

    or-int/lit8 v4, v4, 0x1

    iput v4, v3, Lnhp;->a:I

    iput-wide v1, v3, Lnhp;->b:J

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_2
    iget-object v1, v0, Lnwn;->b:Lnws;

    check-cast v1, Lnhp;

    iget v2, v1, Lnhp;->a:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v1, Lnhp;->a:I

    iput p1, v1, Lnhp;->d:F

    if-nez p2, :cond_3

    sget-object p1, Lngo;->a:Lngo;

    goto :goto_0

    :cond_3
    sget-object p1, Lklv;->a:Lklv;

    if-ne p2, p1, :cond_4

    sget-object p1, Lngo;->b:Lngo;

    goto :goto_0

    :cond_4
    sget-object p1, Lngo;->c:Lngo;

    :goto_0
    iget-object p2, v0, Lnwn;->b:Lnws;

    invoke-virtual {p2}, Lnws;->ac()Z

    move-result p2

    if-nez p2, :cond_5

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_5
    iget-object p2, v0, Lnwn;->b:Lnws;

    check-cast p2, Lnhp;

    iget p1, p1, Lngo;->d:I

    iput p1, p2, Lnhp;->e:I

    iget p1, p2, Lnhp;->a:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p2, Lnhp;->a:I

    invoke-virtual {v0}, Lnwn;->i()Lnws;

    move-result-object p1

    check-cast p1, Lnhp;

    iget-object p2, p0, Lhjl;->q:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final aC()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lhjl;->z:I

    return-void
.end method

.method public final aD(Ljava/util/List;)V
    .locals 13

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklm;

    sget v1, Lmvv;->d:I

    const/16 v3, 0xb

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    sget-object v9, Lmyu;->a:Lmvv;

    iget-object v1, v0, Lklm;->a:Ljava/lang/String;

    invoke-static {v1}, Lmvv;->l(Ljava/lang/Object;)Lmvv;

    move-result-object v10

    invoke-static {v0}, Lkbo;->b(Lklm;)Lkbo;

    move-result-object v11

    const/4 v12, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v12}, Lhjl;->V(ILjava/lang/String;Ljava/lang/Throwable;IIILjava/util/List;Ljava/util/List;Lkbo;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final aE(ILkbo;Ljava/lang/String;I)V
    .locals 4

    add-int/lit8 p4, p4, -0x1

    invoke-static {p4}, Lndd;->s(I)I

    move-result p4

    const/4 v0, 0x1

    if-nez p4, :cond_0

    const/4 p4, 0x1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    invoke-static {p1}, Lndd;->t(I)I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x3

    :cond_1
    sget-object v1, Lnjx;->f:Lnjx;

    invoke-virtual {v1}, Lnws;->O()Lnwn;

    move-result-object v1

    iget-object v2, v1, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_2
    iget-object v2, v1, Lnwn;->b:Lnws;

    move-object v3, v2

    check-cast v3, Lnjx;

    add-int/lit8 p1, p1, -0x1

    iput p1, v3, Lnjx;->b:I

    iget p1, v3, Lnjx;->a:I

    or-int/2addr p1, v0

    iput p1, v3, Lnjx;->a:I

    iget p1, p2, Lkbo;->u:I

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_3
    iget-object p2, v1, Lnwn;->b:Lnws;

    move-object v2, p2

    check-cast v2, Lnjx;

    iget v3, v2, Lnjx;->a:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Lnjx;->a:I

    iput p1, v2, Lnjx;->c:I

    invoke-virtual {p2}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_4
    iget-object p1, v1, Lnwn;->b:Lnws;

    move-object p2, p1

    check-cast p2, Lnjx;

    add-int/lit8 p4, p4, -0x1

    iput p4, p2, Lnjx;->e:I

    iget p4, p2, Lnjx;->a:I

    or-int/lit8 p4, p4, 0x8

    iput p4, p2, Lnjx;->a:I

    if-eqz p3, :cond_6

    invoke-virtual {p1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_5
    iget-object p1, v1, Lnwn;->b:Lnws;

    check-cast p1, Lnjx;

    iget p2, p1, Lnjx;->a:I

    or-int/lit8 p2, p2, 0x4

    iput p2, p1, Lnjx;->a:I

    iput-object p3, p1, Lnjx;->d:Ljava/lang/String;

    :cond_6
    sget-object p1, Lngr;->av:Lngr;

    invoke-virtual {p1}, Lnws;->O()Lnwn;

    move-result-object p1

    sget-object p2, Lngq;->r:Lngq;

    iget-object p3, p1, Lnwn;->b:Lnws;

    invoke-virtual {p3}, Lnws;->ac()Z

    move-result p3

    if-nez p3, :cond_7

    invoke-virtual {p1}, Lnwn;->p()V

    :cond_7
    iget-object p3, p1, Lnwn;->b:Lnws;

    move-object p4, p3

    check-cast p4, Lngr;

    iget p2, p2, Lngq;->ar:I

    iput p2, p4, Lngr;->d:I

    iget p2, p4, Lngr;->a:I

    or-int/2addr p2, v0

    iput p2, p4, Lngr;->a:I

    invoke-virtual {p3}, Lnws;->ac()Z

    move-result p2

    if-nez p2, :cond_8

    invoke-virtual {p1}, Lnwn;->p()V

    :cond_8
    iget-object p2, p1, Lnwn;->b:Lnws;

    check-cast p2, Lngr;

    invoke-virtual {v1}, Lnwn;->i()Lnws;

    move-result-object p3

    check-cast p3, Lnjx;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p2, Lngr;->r:Lnjx;

    iget p3, p2, Lngr;->a:I

    const/high16 p4, 0x40000

    or-int/2addr p3, p4

    iput p3, p2, Lngr;->a:I

    invoke-virtual {p0, p1}, Lhjl;->aF(Lnwn;)V

    return-void
.end method

.method public final aF(Lnwn;)V
    .locals 2

    new-instance v0, Ldet;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, Ldet;-><init>(Lnwn;I)V

    invoke-direct {p0, v0}, Lhjl;->aI(Lmrl;)V

    return-void
.end method

.method public final aG(Lbkb;)V
    .locals 10

    iget-object v0, p0, Lhjl;->g:Ljava/util/concurrent/Phaser;

    invoke-virtual {v0}, Ljava/util/concurrent/Phaser;->register()I

    iget-object v0, p0, Lhjl;->u:Ljava/util/concurrent/Executor;

    new-instance v9, Lhdg;

    const/16 v4, 0xf

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v8}, Lhdg;-><init>(Lhjl;Lbkb;I[B[B[B[B)V

    invoke-interface {v0, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final aa(IIJJ)V
    .locals 6

    sget-object v0, Lnju;->h:Lnju;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v1, v0, Lnwn;->b:Lnws;

    move-object v2, v1

    check-cast v2, Lnju;

    add-int/lit8 v3, p1, -0x1

    iput v3, v2, Lnju;->c:I

    iget v3, v2, Lnju;->a:I

    const/4 v4, 0x2

    or-int/2addr v3, v4

    iput v3, v2, Lnju;->a:I

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_1
    iget-object v1, v0, Lnwn;->b:Lnws;

    move-object v2, v1

    check-cast v2, Lnju;

    add-int/lit8 p2, p2, -0x1

    iput p2, v2, Lnju;->d:I

    iget p2, v2, Lnju;->a:I

    or-int/lit8 p2, p2, 0x4

    iput p2, v2, Lnju;->a:I

    iget p2, p0, Lhjl;->x:I

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_2
    iget-object v1, v0, Lnwn;->b:Lnws;

    move-object v2, v1

    check-cast v2, Lnju;

    add-int/lit8 v3, p2, -0x1

    if-eqz p2, :cond_c

    iput v3, v2, Lnju;->b:I

    iget p2, v2, Lnju;->a:I

    const/4 v3, 0x1

    or-int/2addr p2, v3

    iput p2, v2, Lnju;->a:I

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_3
    iget-object p2, v0, Lnwn;->b:Lnws;

    move-object v1, p2

    check-cast v1, Lnju;

    iget v2, v1, Lnju;->a:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Lnju;->a:I

    iput-wide p3, v1, Lnju;->f:J

    invoke-virtual {p2}, Lnws;->ac()Z

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_4
    iget-object p2, v0, Lnwn;->b:Lnws;

    check-cast p2, Lnju;

    iget p3, p2, Lnju;->a:I

    or-int/lit8 p3, p3, 0x20

    iput p3, p2, Lnju;->a:I

    iput-wide p5, p2, Lnju;->g:J

    const-wide/16 p2, 0x0

    const/16 p4, 0x8

    const/4 p5, 0x3

    if-ne p1, p5, :cond_8

    iget-wide v1, p0, Lhjl;->r:J

    cmp-long p1, v1, p2

    if-eqz p1, :cond_7

    iget p1, p0, Lhjl;->x:I

    if-eq p1, p4, :cond_5

    const/4 p6, 0x6

    if-eq p1, p6, :cond_5

    if-eq p1, v4, :cond_5

    const/16 p6, 0x9

    if-eq p1, p6, :cond_5

    const/16 p6, 0xc

    if-ne p1, p6, :cond_7

    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v4, p0, Lhjl;->r:J

    sub-long/2addr v1, v4

    iget-object p1, v0, Lnwn;->b:Lnws;

    invoke-virtual {p1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_6
    invoke-static {v1, v2}, Linb;->o(J)F

    move-result p1

    iget-object p6, v0, Lnwn;->b:Lnws;

    check-cast p6, Lnju;

    iget v1, p6, Lnju;->a:I

    or-int/2addr v1, p4

    iput v1, p6, Lnju;->a:I

    iput p1, p6, Lnju;->e:F

    const/4 p1, 0x3

    goto :goto_0

    :cond_7
    const/4 p1, 0x3

    :cond_8
    :goto_0
    iput-wide p2, p0, Lhjl;->r:J

    iget p2, p0, Lhjl;->x:I

    if-eq p2, v3, :cond_b

    const/16 p3, 0x1c

    if-eq p1, p3, :cond_b

    if-eq p2, p1, :cond_b

    sget-object p2, Lngr;->av:Lngr;

    invoke-virtual {p2}, Lnws;->O()Lnwn;

    move-result-object p2

    sget-object p3, Lngq;->b:Lngq;

    iget-object p5, p2, Lnwn;->b:Lnws;

    invoke-virtual {p5}, Lnws;->ac()Z

    move-result p5

    if-nez p5, :cond_9

    invoke-virtual {p2}, Lnwn;->p()V

    :cond_9
    iget-object p5, p2, Lnwn;->b:Lnws;

    move-object p6, p5

    check-cast p6, Lngr;

    iget p3, p3, Lngq;->ar:I

    iput p3, p6, Lngr;->d:I

    iget p3, p6, Lngr;->a:I

    or-int/2addr p3, v3

    iput p3, p6, Lngr;->a:I

    invoke-virtual {p5}, Lnws;->ac()Z

    move-result p3

    if-nez p3, :cond_a

    invoke-virtual {p2}, Lnwn;->p()V

    :cond_a
    iget-object p3, p2, Lnwn;->b:Lnws;

    check-cast p3, Lngr;

    invoke-virtual {v0}, Lnwn;->i()Lnws;

    move-result-object p5

    check-cast p5, Lnju;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p5, p3, Lngr;->f:Lnju;

    iget p5, p3, Lngr;->a:I

    or-int/2addr p4, p5

    iput p4, p3, Lngr;->a:I

    invoke-virtual {p0, p2}, Lhjl;->aF(Lnwn;)V

    :cond_b
    iput p1, p0, Lhjl;->x:I

    return-void

    :cond_c
    const/4 p1, 0x0

    throw p1
.end method

.method public final ab(IF)V
    .locals 9

    sget-object v0, Lnhq;->g:Lnhq;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v1, v0, Lnwn;->b:Lnws;

    move-object v2, v1

    check-cast v2, Lnhq;

    add-int/lit8 p1, p1, -0x1

    iput p1, v2, Lnhq;->b:I

    iget p1, v2, Lnhq;->a:I

    or-int/lit8 p1, p1, 0x1

    iput p1, v2, Lnhq;->a:I

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_1
    iget-object p1, v0, Lnwn;->b:Lnws;

    check-cast p1, Lnhq;

    iget v1, p1, Lnhq;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p1, Lnhq;->a:I

    iput p2, p1, Lnhq;->c:F

    const/16 v3, 0x9

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0}, Lnwn;->i()Lnws;

    move-result-object p1

    move-object v8, p1

    check-cast v8, Lnhq;

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lhjl;->aL(ILnkz;Lnkq;Lngi;Lnlo;Lnhq;)V

    return-void
.end method

.method public final ac(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    sget-object v0, Lngr;->av:Lngr;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    sget-object v1, Lngq;->I:Lngq;

    iget-object v2, v0, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v2, v0, Lnwn;->b:Lnws;

    check-cast v2, Lngr;

    iget v1, v1, Lngq;->ar:I

    iput v1, v2, Lngr;->d:I

    iget v1, v2, Lngr;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v2, Lngr;->a:I

    sget-object v1, Lnjp;->e:Lnjp;

    invoke-virtual {v1}, Lnws;->O()Lnwn;

    move-result-object v1

    iget-object v2, v1, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_1
    iget-object v2, v1, Lnwn;->b:Lnws;

    move-object v3, v2

    check-cast v3, Lnjp;

    add-int/lit8 v4, p1, -0x1

    if-eqz p1, :cond_5

    iput v4, v3, Lnjp;->b:I

    iget p1, v3, Lnjp;->a:I

    or-int/lit8 p1, p1, 0x1

    iput p1, v3, Lnjp;->a:I

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_2
    iget-object p1, v1, Lnwn;->b:Lnws;

    move-object v2, p1

    check-cast v2, Lnjp;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, v2, Lnjp;->a:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v2, Lnjp;->a:I

    iput-object p2, v2, Lnjp;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_3
    iget-object p1, v1, Lnwn;->b:Lnws;

    check-cast p1, Lnjp;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p2, p1, Lnjp;->a:I

    or-int/lit8 p2, p2, 0x2

    iput p2, p1, Lnjp;->a:I

    iput-object p3, p1, Lnjp;->c:Ljava/lang/String;

    iget-object p1, v0, Lnwn;->b:Lnws;

    invoke-virtual {p1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_4
    iget-object p1, v0, Lnwn;->b:Lnws;

    check-cast p1, Lngr;

    invoke-virtual {v1}, Lnwn;->i()Lnws;

    move-result-object p2

    check-cast p2, Lnjp;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p1, Lngr;->H:Lnjp;

    iget p2, p1, Lngr;->b:I

    or-int/lit16 p2, p2, 0x400

    iput p2, p1, Lngr;->b:I

    invoke-virtual {p0, v0}, Lhjl;->aF(Lnwn;)V

    return-void

    :cond_5
    const/4 p1, 0x0

    throw p1
.end method

.method public final ad(ZFLika;I)V
    .locals 5

    sget-object v0, Lngr;->av:Lngr;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    sget-object v1, Lngq;->ac:Lngq;

    iget-object v2, v0, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v2, v0, Lnwn;->b:Lnws;

    check-cast v2, Lngr;

    iget v1, v1, Lngq;->ar:I

    iput v1, v2, Lngr;->d:I

    iget v1, v2, Lngr;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v2, Lngr;->a:I

    sget-object v1, Lnhj;->f:Lnhj;

    invoke-virtual {v1}, Lnws;->O()Lnwn;

    move-result-object v1

    iget-object v2, v1, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_1
    iget-object v2, v1, Lnwn;->b:Lnws;

    move-object v3, v2

    check-cast v3, Lnhj;

    iget v4, v3, Lnhj;->a:I

    or-int/lit8 v4, v4, 0x1

    iput v4, v3, Lnhj;->a:I

    iput-boolean p1, v3, Lnhj;->b:Z

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_2
    iget-object p1, v1, Lnwn;->b:Lnws;

    check-cast p1, Lnhj;

    iget v2, p1, Lnhj;->a:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p1, Lnhj;->a:I

    iput p2, p1, Lnhj;->c:F

    invoke-static {p3}, Lijy;->e(Lika;)I

    move-result p1

    iget-object p2, v1, Lnwn;->b:Lnws;

    invoke-virtual {p2}, Lnws;->ac()Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_3
    iget-object p2, v1, Lnwn;->b:Lnws;

    move-object p3, p2

    check-cast p3, Lnhj;

    add-int/lit8 p1, p1, -0x1

    iput p1, p3, Lnhj;->d:I

    iget p1, p3, Lnhj;->a:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p3, Lnhj;->a:I

    invoke-virtual {p2}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_4
    iget-object p1, v1, Lnwn;->b:Lnws;

    check-cast p1, Lnhj;

    add-int/lit8 p4, p4, -0x1

    iput p4, p1, Lnhj;->e:I

    iget p2, p1, Lnhj;->a:I

    or-int/lit8 p2, p2, 0x8

    iput p2, p1, Lnhj;->a:I

    iget-object p1, v0, Lnwn;->b:Lnws;

    invoke-virtual {p1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_5
    iget-object p1, v0, Lnwn;->b:Lnws;

    check-cast p1, Lngr;

    invoke-virtual {v1}, Lnwn;->i()Lnws;

    move-result-object p2

    check-cast p2, Lnhj;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p1, Lngr;->ae:Lnhj;

    iget p2, p1, Lngr;->c:I

    or-int/lit8 p2, p2, 0x8

    iput p2, p1, Lngr;->c:I

    invoke-virtual {p0, v0}, Lhjl;->aF(Lnwn;)V

    return-void
.end method

.method public final ae(ILjava/lang/String;)V
    .locals 4

    sget-object v0, Lngr;->av:Lngr;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    sget-object v1, Lngq;->K:Lngq;

    iget-object v2, v0, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v2, v0, Lnwn;->b:Lnws;

    check-cast v2, Lngr;

    iget v1, v1, Lngq;->ar:I

    iput v1, v2, Lngr;->d:I

    iget v1, v2, Lngr;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v2, Lngr;->a:I

    sget-object v1, Lngz;->d:Lngz;

    invoke-virtual {v1}, Lnws;->O()Lnwn;

    move-result-object v1

    iget-object v2, v1, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_1
    iget-object v2, v1, Lnwn;->b:Lnws;

    move-object v3, v2

    check-cast v3, Lngz;

    add-int/lit8 p1, p1, -0x1

    iput p1, v3, Lngz;->b:I

    iget p1, v3, Lngz;->a:I

    or-int/lit8 p1, p1, 0x1

    iput p1, v3, Lngz;->a:I

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_2
    iget-object p1, v1, Lnwn;->b:Lnws;

    check-cast p1, Lngz;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, p1, Lngz;->a:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p1, Lngz;->a:I

    iput-object p2, p1, Lngz;->c:Ljava/lang/String;

    iget-object p1, v0, Lnwn;->b:Lnws;

    invoke-virtual {p1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_3
    iget-object p1, v0, Lnwn;->b:Lnws;

    check-cast p1, Lngr;

    invoke-virtual {v1}, Lnwn;->i()Lnws;

    move-result-object p2

    check-cast p2, Lngz;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p1, Lngr;->M:Lngz;

    iget p2, p1, Lngr;->b:I

    const v1, 0x8000

    or-int/2addr p2, v1

    iput p2, p1, Lngr;->b:I

    invoke-virtual {p0, v0}, Lhjl;->aF(Lnwn;)V

    return-void
.end method

.method public final af(JLgya;IILjava/lang/Throwable;)V
    .locals 7

    sget-object v0, Lngp;->c:Lngp;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    invoke-static {p3}, Lhjl;->aN(Lgya;)I

    move-result p3

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v1, v0, Lnwn;->b:Lnws;

    check-cast v1, Lngp;

    add-int/lit8 p3, p3, -0x1

    iput p3, v1, Lngp;->b:I

    iget p3, v1, Lngp;->a:I

    or-int/lit8 p3, p3, 0x2

    iput p3, v1, Lngp;->a:I

    invoke-virtual {v0}, Lnwn;->i()Lnws;

    move-result-object p3

    check-cast p3, Lngp;

    sget-object v0, Lngr;->av:Lngr;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    sget-object v1, Lngq;->p:Lngq;

    iget-object v2, v0, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_1
    iget-object v2, v0, Lnwn;->b:Lnws;

    check-cast v2, Lngr;

    iget v1, v1, Lngq;->ar:I

    iput v1, v2, Lngr;->d:I

    iget v1, v2, Lngr;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v2, Lngr;->a:I

    sget-object v1, Lnhc;->f:Lnhc;

    invoke-virtual {v1}, Lnws;->O()Lnwn;

    move-result-object v1

    iget-object v2, v1, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_2
    iget-object v2, v1, Lnwn;->b:Lnws;

    check-cast v2, Lnhc;

    iget v3, v2, Lnhc;->a:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Lnhc;->a:I

    iput-wide p1, v2, Lnhc;->c:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    iget-object v4, v1, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_3
    iget-object v4, v1, Lnwn;->b:Lnws;

    move-object v5, v4

    check-cast v5, Lnhc;

    iget v6, v5, Lnhc;->a:I

    or-int/lit8 v6, v6, 0x4

    iput v6, v5, Lnhc;->a:I

    iput-wide v2, v5, Lnhc;->d:J

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_4
    iget-object v2, v1, Lnwn;->b:Lnws;

    check-cast v2, Lnhc;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, v2, Lnhc;->b:Lngp;

    iget v3, v2, Lnhc;->a:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Lnhc;->a:I

    invoke-static {p4, p5}, Lhjl;->aM(II)Lnhi;

    move-result-object p4

    iget-object p5, v1, Lnwn;->b:Lnws;

    invoke-virtual {p5}, Lnws;->ac()Z

    move-result p5

    if-nez p5, :cond_5

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_5
    iget-object p5, v1, Lnwn;->b:Lnws;

    check-cast p5, Lnhc;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p4, p5, Lnhc;->e:Lnhi;

    iget p4, p5, Lnhc;->a:I

    or-int/lit8 p4, p4, 0x8

    iput p4, p5, Lnhc;->a:I

    iget-object p4, v0, Lnwn;->b:Lnws;

    invoke-virtual {p4}, Lnws;->ac()Z

    move-result p4

    if-nez p4, :cond_6

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_6
    iget-object p4, v0, Lnwn;->b:Lnws;

    check-cast p4, Lngr;

    invoke-virtual {v1}, Lnwn;->i()Lnws;

    move-result-object p5

    check-cast p5, Lnhc;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p5, p4, Lngr;->p:Lnhc;

    iget p5, p4, Lngr;->a:I

    const/high16 v1, 0x10000

    or-int/2addr p5, v1

    iput p5, p4, Lngr;->a:I

    invoke-virtual {p0, v0}, Lhjl;->aF(Lnwn;)V

    const/4 p4, 0x5

    const-string p5, "onCaptureCanceled"

    invoke-static {p4, p5, p1, p2, p3}, Lhjl;->aH(ILjava/lang/String;JLngp;)V

    iget-object p1, p0, Lhjl;->B:Ldja;

    instance-of p2, p6, Ldoe;

    if-eqz p2, :cond_7

    check-cast p6, Ldoe;

    goto :goto_0

    :cond_7
    new-instance p2, Ldoe;

    invoke-direct {p2, p6}, Ldoe;-><init>(Ljava/lang/Throwable;)V

    move-object p6, p2

    :goto_0
    invoke-virtual {p1, p6}, Ldja;->a(Ldof;)V

    return-void
.end method

.method public final ag(JLgya;IILjava/lang/Throwable;)V
    .locals 7

    sget-object v0, Lngp;->c:Lngp;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    invoke-static {p3}, Lhjl;->aN(Lgya;)I

    move-result p3

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v1, v0, Lnwn;->b:Lnws;

    check-cast v1, Lngp;

    add-int/lit8 p3, p3, -0x1

    iput p3, v1, Lngp;->b:I

    iget p3, v1, Lngp;->a:I

    or-int/lit8 p3, p3, 0x2

    iput p3, v1, Lngp;->a:I

    invoke-virtual {v0}, Lnwn;->i()Lnws;

    move-result-object p3

    check-cast p3, Lngp;

    sget-object v0, Lngr;->av:Lngr;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    sget-object v1, Lngq;->u:Lngq;

    iget-object v2, v0, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_1
    iget-object v2, v0, Lnwn;->b:Lnws;

    check-cast v2, Lngr;

    iget v1, v1, Lngq;->ar:I

    iput v1, v2, Lngr;->d:I

    iget v1, v2, Lngr;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v2, Lngr;->a:I

    sget-object v1, Lnhe;->f:Lnhe;

    invoke-virtual {v1}, Lnws;->O()Lnwn;

    move-result-object v1

    iget-object v2, v1, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_2
    iget-object v2, v1, Lnwn;->b:Lnws;

    check-cast v2, Lnhe;

    iget v3, v2, Lnhe;->a:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Lnhe;->a:I

    iput-wide p1, v2, Lnhe;->c:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    iget-object v4, v1, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_3
    iget-object v4, v1, Lnwn;->b:Lnws;

    move-object v5, v4

    check-cast v5, Lnhe;

    iget v6, v5, Lnhe;->a:I

    or-int/lit8 v6, v6, 0x4

    iput v6, v5, Lnhe;->a:I

    iput-wide v2, v5, Lnhe;->d:J

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_4
    iget-object v2, v1, Lnwn;->b:Lnws;

    check-cast v2, Lnhe;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, v2, Lnhe;->b:Lngp;

    iget v3, v2, Lnhe;->a:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Lnhe;->a:I

    invoke-static {p4, p5}, Lhjl;->aM(II)Lnhi;

    move-result-object p4

    iget-object p5, v1, Lnwn;->b:Lnws;

    invoke-virtual {p5}, Lnws;->ac()Z

    move-result p5

    if-nez p5, :cond_5

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_5
    iget-object p5, v1, Lnwn;->b:Lnws;

    check-cast p5, Lnhe;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p4, p5, Lnhe;->e:Lnhi;

    iget p4, p5, Lnhe;->a:I

    or-int/lit8 p4, p4, 0x8

    iput p4, p5, Lnhe;->a:I

    iget-object p4, v0, Lnwn;->b:Lnws;

    invoke-virtual {p4}, Lnws;->ac()Z

    move-result p4

    if-nez p4, :cond_6

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_6
    iget-object p4, v0, Lnwn;->b:Lnws;

    check-cast p4, Lngr;

    invoke-virtual {v1}, Lnwn;->i()Lnws;

    move-result-object p5

    check-cast p5, Lnhe;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p5, p4, Lngr;->u:Lnhe;

    iget p5, p4, Lngr;->a:I

    const/high16 v1, 0x200000

    or-int/2addr p5, v1

    iput p5, p4, Lngr;->a:I

    invoke-virtual {p0, v0}, Lhjl;->aF(Lnwn;)V

    const/4 p4, 0x5

    const-string p5, "onCaptureFailed"

    invoke-static {p4, p5, p1, p2, p3}, Lhjl;->aH(ILjava/lang/String;JLngp;)V

    iget-object p1, p0, Lhjl;->B:Ldja;

    instance-of p2, p6, Ldog;

    if-eqz p2, :cond_7

    check-cast p6, Ldog;

    goto :goto_0

    :cond_7
    new-instance p2, Ldog;

    invoke-direct {p2, p6}, Ldog;-><init>(Ljava/lang/Throwable;)V

    move-object p6, p2

    :goto_0
    invoke-virtual {p1, p6}, Ldja;->a(Ldof;)V

    return-void
.end method

.method public final ah(JJJJJJJJJJLjava/util/List;JLgya;II)V
    .locals 18

    move-wide/from16 v0, p1

    move-wide/from16 v2, p3

    move-wide/from16 v4, p5

    move-wide/from16 v6, p7

    move-wide/from16 v8, p9

    move-wide/from16 v10, p11

    move-wide/from16 v12, p13

    move-wide/from16 v14, p15

    move-wide/from16 v2, p17

    move-wide/from16 v0, p19

    move-wide/from16 v0, p22

    sget-object v16, Lngp;->c:Lngp;

    invoke-virtual/range {v16 .. v16}, Lnws;->O()Lnwn;

    move-result-object v2

    invoke-static/range {p24 .. p24}, Lhjl;->aN(Lgya;)I

    move-result v3

    iget-object v0, v2, Lnwn;->b:Lnws;

    invoke-virtual {v0}, Lnws;->ac()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_0
    iget-object v0, v2, Lnwn;->b:Lnws;

    check-cast v0, Lngp;

    add-int/lit8 v3, v3, -0x1

    iput v3, v0, Lngp;->b:I

    iget v1, v0, Lngp;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Lngp;->a:I

    invoke-virtual {v2}, Lnwn;->i()Lnws;

    move-result-object v0

    check-cast v0, Lngp;

    sget-object v1, Lnhh;->n:Lnhh;

    invoke-virtual {v1}, Lnws;->O()Lnwn;

    move-result-object v1

    iget-object v2, v1, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_1
    iget-object v2, v1, Lnwn;->b:Lnws;

    move-object v3, v2

    check-cast v3, Lnhh;

    move-object/from16 p24, v0

    iget v0, v3, Lnhh;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, v3, Lnhh;->a:I

    iput-wide v4, v3, Lnhh;->b:J

    const-wide/16 v16, 0x0

    cmp-long v0, v6, v16

    if-lez v0, :cond_3

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_2
    iget-object v0, v1, Lnwn;->b:Lnws;

    check-cast v0, Lnhh;

    iget v2, v0, Lnhh;->a:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Lnhh;->a:I

    iput-wide v6, v0, Lnhh;->c:J

    :cond_3
    const/4 v0, 0x4

    cmp-long v2, v8, v16

    if-lez v2, :cond_5

    iget-object v2, v1, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_4
    iget-object v2, v1, Lnwn;->b:Lnws;

    check-cast v2, Lnhh;

    iget v3, v2, Lnhh;->a:I

    or-int/2addr v3, v0

    iput v3, v2, Lnhh;->a:I

    iput-wide v8, v2, Lnhh;->d:J

    :cond_5
    const v2, 0x8000

    cmp-long v3, v10, v16

    if-lez v3, :cond_7

    iget-object v3, v1, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_6
    iget-object v3, v1, Lnwn;->b:Lnws;

    check-cast v3, Lnhh;

    iget v6, v3, Lnhh;->a:I

    or-int/2addr v6, v2

    iput v6, v3, Lnhh;->a:I

    iput-wide v10, v3, Lnhh;->m:J

    :cond_7
    cmp-long v3, v12, v16

    if-lez v3, :cond_9

    iget-object v3, v1, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_8
    iget-object v3, v1, Lnwn;->b:Lnws;

    check-cast v3, Lnhh;

    iget v6, v3, Lnhh;->a:I

    or-int/lit16 v6, v6, 0x200

    iput v6, v3, Lnhh;->a:I

    iput-wide v12, v3, Lnhh;->g:J

    :cond_9
    cmp-long v3, v14, v16

    if-lez v3, :cond_b

    iget-object v3, v1, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_a
    iget-object v3, v1, Lnwn;->b:Lnws;

    check-cast v3, Lnhh;

    iget v6, v3, Lnhh;->a:I

    or-int/lit16 v6, v6, 0x400

    iput v6, v3, Lnhh;->a:I

    iput-wide v14, v3, Lnhh;->h:J

    :cond_b
    move-wide/from16 v6, p22

    cmp-long v3, v6, v16

    if-lez v3, :cond_d

    iget-object v3, v1, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_c
    iget-object v3, v1, Lnwn;->b:Lnws;

    check-cast v3, Lnhh;

    iget v8, v3, Lnhh;->a:I

    or-int/lit16 v8, v8, 0x1000

    iput v8, v3, Lnhh;->a:I

    iput-wide v6, v3, Lnhh;->i:J

    :cond_d
    move-wide/from16 v6, p17

    cmp-long v3, v6, v16

    if-lez v3, :cond_f

    iget-object v3, v1, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_e

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_e
    iget-object v3, v1, Lnwn;->b:Lnws;

    check-cast v3, Lnhh;

    iget v8, v3, Lnhh;->a:I

    or-int/lit8 v8, v8, 0x20

    iput v8, v3, Lnhh;->a:I

    iput-wide v6, v3, Lnhh;->e:J

    :cond_f
    move-wide/from16 v6, p19

    cmp-long v3, v6, v16

    if-lez v3, :cond_11

    iget-object v3, v1, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_10

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_10
    iget-object v3, v1, Lnwn;->b:Lnws;

    check-cast v3, Lnhh;

    iget v8, v3, Lnhh;->a:I

    or-int/lit8 v8, v8, 0x40

    iput v8, v3, Lnhh;->a:I

    iput-wide v6, v3, Lnhh;->f:J

    :cond_11
    move-wide/from16 v6, p1

    cmp-long v3, v6, v16

    if-lez v3, :cond_13

    iget-object v3, v1, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_12

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_12
    iget-object v3, v1, Lnwn;->b:Lnws;

    check-cast v3, Lnhh;

    iget v8, v3, Lnhh;->a:I

    or-int/lit16 v8, v8, 0x2000

    iput v8, v3, Lnhh;->a:I

    iput-wide v6, v3, Lnhh;->k:J

    :cond_13
    move-wide/from16 v6, p3

    cmp-long v3, v6, v16

    if-lez v3, :cond_15

    iget-object v3, v1, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_14

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_14
    iget-object v3, v1, Lnwn;->b:Lnws;

    check-cast v3, Lnhh;

    iget v8, v3, Lnhh;->a:I

    or-int/lit16 v8, v8, 0x4000

    iput v8, v3, Lnhh;->a:I

    iput-wide v6, v3, Lnhh;->l:J

    :cond_15
    move-object/from16 v3, p21

    if-eqz v3, :cond_18

    iget-object v6, v1, Lnwn;->b:Lnws;

    invoke-virtual {v6}, Lnws;->ac()Z

    move-result v6

    if-nez v6, :cond_16

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_16
    iget-object v6, v1, Lnwn;->b:Lnws;

    check-cast v6, Lnhh;

    iget-object v7, v6, Lnhh;->j:Lnxa;

    invoke-interface {v7}, Lnxa;->c()Z

    move-result v8

    if-nez v8, :cond_17

    invoke-static {v7}, Lnws;->U(Lnxa;)Lnxa;

    move-result-object v7

    iput-object v7, v6, Lnhh;->j:Lnxa;

    :cond_17
    iget-object v6, v6, Lnhh;->j:Lnxa;

    invoke-static {v3, v6}, Lnvd;->e(Ljava/lang/Iterable;Ljava/util/List;)V

    :cond_18
    sget-object v3, Lnhd;->e:Lnhd;

    invoke-virtual {v3}, Lnws;->O()Lnwn;

    move-result-object v3

    iget-object v6, v3, Lnwn;->b:Lnws;

    invoke-virtual {v6}, Lnws;->ac()Z

    move-result v6

    if-nez v6, :cond_19

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_19
    iget-object v6, v3, Lnwn;->b:Lnws;

    check-cast v6, Lnhd;

    invoke-virtual {v1}, Lnwn;->i()Lnws;

    move-result-object v1

    check-cast v1, Lnhh;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v6, Lnhd;->c:Lnhh;

    iget v1, v6, Lnhd;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v6, Lnhd;->a:I

    iget-object v1, v3, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_1a
    iget-object v1, v3, Lnwn;->b:Lnws;

    check-cast v1, Lnhd;

    invoke-virtual/range {p24 .. p24}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v6, p24

    iput-object v6, v1, Lnhd;->b:Lngp;

    iget v7, v1, Lnhd;->a:I

    or-int/lit8 v7, v7, 0x1

    iput v7, v1, Lnhd;->a:I

    invoke-static/range {p25 .. p26}, Lhjl;->aM(II)Lnhi;

    move-result-object v1

    iget-object v7, v3, Lnwn;->b:Lnws;

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v7

    if-nez v7, :cond_1b

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_1b
    iget-object v7, v3, Lnwn;->b:Lnws;

    check-cast v7, Lnhd;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v7, Lnhd;->d:Lnhi;

    iget v1, v7, Lnhd;->a:I

    or-int/2addr v1, v0

    iput v1, v7, Lnhd;->a:I

    invoke-virtual {v3}, Lnwn;->i()Lnws;

    move-result-object v1

    check-cast v1, Lnhd;

    sget-object v3, Lngr;->av:Lngr;

    invoke-virtual {v3}, Lnws;->O()Lnwn;

    move-result-object v3

    sget-object v7, Lngq;->o:Lngq;

    iget-object v8, v3, Lnwn;->b:Lnws;

    invoke-virtual {v8}, Lnws;->ac()Z

    move-result v8

    if-nez v8, :cond_1c

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_1c
    iget-object v8, v3, Lnwn;->b:Lnws;

    move-object v9, v8

    check-cast v9, Lngr;

    iget v7, v7, Lngq;->ar:I

    iput v7, v9, Lngr;->d:I

    iget v7, v9, Lngr;->a:I

    or-int/lit8 v7, v7, 0x1

    iput v7, v9, Lngr;->a:I

    invoke-virtual {v8}, Lnws;->ac()Z

    move-result v7

    if-nez v7, :cond_1d

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_1d
    iget-object v7, v3, Lnwn;->b:Lnws;

    check-cast v7, Lngr;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v7, Lngr;->o:Lnhd;

    iget v1, v7, Lngr;->a:I

    or-int/2addr v1, v2

    iput v1, v7, Lngr;->a:I

    move-object/from16 v1, p0

    invoke-virtual {v1, v3}, Lhjl;->aF(Lnwn;)V

    const-string v2, "onCapturePersisted"

    invoke-static {v0, v2, v4, v5, v6}, Lhjl;->aH(ILjava/lang/String;JLngp;)V

    return-void
.end method

.method public final ai(JLgya;II)V
    .locals 8

    sget-object v0, Lngp;->c:Lngp;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    invoke-static {p3}, Lhjl;->aN(Lgya;)I

    move-result p3

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v1, v0, Lnwn;->b:Lnws;

    check-cast v1, Lngp;

    add-int/lit8 p3, p3, -0x1

    iput p3, v1, Lngp;->b:I

    iget p3, v1, Lngp;->a:I

    or-int/lit8 p3, p3, 0x2

    iput p3, v1, Lngp;->a:I

    invoke-virtual {v0}, Lnwn;->i()Lnws;

    move-result-object p3

    check-cast p3, Lngp;

    sget-object v0, Lngr;->av:Lngr;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    sget-object v1, Lngq;->v:Lngq;

    iget-object v2, v0, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_1
    iget-object v2, v0, Lnwn;->b:Lnws;

    check-cast v2, Lngr;

    iget v1, v1, Lngq;->ar:I

    iput v1, v2, Lngr;->d:I

    iget v1, v2, Lngr;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v2, Lngr;->a:I

    sget-object v1, Lnhf;->f:Lnhf;

    invoke-virtual {v1}, Lnws;->O()Lnwn;

    move-result-object v1

    iget-object v2, v1, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_2
    iget-object v2, v1, Lnwn;->b:Lnws;

    check-cast v2, Lnhf;

    iget v3, v2, Lnhf;->a:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Lnhf;->a:I

    iput-wide p1, v2, Lnhf;->c:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    iget-object v4, v1, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_3
    iget-object v4, v1, Lnwn;->b:Lnws;

    move-object v5, v4

    check-cast v5, Lnhf;

    iget v6, v5, Lnhf;->a:I

    const/4 v7, 0x4

    or-int/2addr v6, v7

    iput v6, v5, Lnhf;->a:I

    iput-wide v2, v5, Lnhf;->d:J

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_4
    iget-object v2, v1, Lnwn;->b:Lnws;

    check-cast v2, Lnhf;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, v2, Lnhf;->b:Lngp;

    iget v3, v2, Lnhf;->a:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Lnhf;->a:I

    invoke-static {p4, p5}, Lhjl;->aM(II)Lnhi;

    move-result-object p4

    iget-object p5, v1, Lnwn;->b:Lnws;

    invoke-virtual {p5}, Lnws;->ac()Z

    move-result p5

    if-nez p5, :cond_5

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_5
    iget-object p5, v1, Lnwn;->b:Lnws;

    check-cast p5, Lnhf;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p4, p5, Lnhf;->e:Lnhi;

    iget p4, p5, Lnhf;->a:I

    or-int/lit8 p4, p4, 0x8

    iput p4, p5, Lnhf;->a:I

    iget-object p4, v0, Lnwn;->b:Lnws;

    invoke-virtual {p4}, Lnws;->ac()Z

    move-result p4

    if-nez p4, :cond_6

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_6
    iget-object p4, v0, Lnwn;->b:Lnws;

    check-cast p4, Lngr;

    invoke-virtual {v1}, Lnwn;->i()Lnws;

    move-result-object p5

    check-cast p5, Lnhf;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p5, p4, Lngr;->v:Lnhf;

    iget p5, p4, Lngr;->a:I

    const/high16 v1, 0x400000

    or-int/2addr p5, v1

    iput p5, p4, Lngr;->a:I

    invoke-virtual {p0, v0}, Lhjl;->aF(Lnwn;)V

    const-string p4, "onCaptureStartCommitted"

    invoke-static {v7, p4, p1, p2, p3}, Lhjl;->aH(ILjava/lang/String;JLngp;)V

    return-void
.end method

.method public final aj(I)V
    .locals 5

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iput v0, p0, Lhjl;->y:I

    return-void

    :cond_0
    iget v0, p0, Lhjl;->y:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    move p1, v0

    :cond_1
    iput v1, p0, Lhjl;->y:I

    sget-object v0, Lngr;->av:Lngr;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    sget-object v2, Lngq;->ad:Lngq;

    iget-object v3, v0, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_2
    iget-object v3, v0, Lnwn;->b:Lnws;

    check-cast v3, Lngr;

    iget v2, v2, Lngq;->ar:I

    iput v2, v3, Lngr;->d:I

    iget v2, v3, Lngr;->a:I

    or-int/2addr v2, v1

    iput v2, v3, Lngr;->a:I

    sget-object v2, Lnht;->c:Lnht;

    invoke-virtual {v2}, Lnws;->O()Lnwn;

    move-result-object v2

    iget-object v3, v2, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_3
    iget-object v3, v2, Lnwn;->b:Lnws;

    check-cast v3, Lnht;

    add-int/lit8 v4, p1, -0x1

    if-eqz p1, :cond_5

    iput v4, v3, Lnht;->b:I

    iget p1, v3, Lnht;->a:I

    or-int/2addr p1, v1

    iput p1, v3, Lnht;->a:I

    invoke-virtual {v2}, Lnwn;->i()Lnws;

    move-result-object p1

    check-cast p1, Lnht;

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_4
    iget-object v1, v0, Lnwn;->b:Lnws;

    check-cast v1, Lngr;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, v1, Lngr;->af:Lnht;

    iget p1, v1, Lngr;->c:I

    or-int/lit8 p1, p1, 0x10

    iput p1, v1, Lngr;->c:I

    invoke-virtual {p0, v0}, Lhjl;->aF(Lnwn;)V

    return-void

    :cond_5
    const/4 p1, 0x0

    throw p1
.end method

.method public final ak(JJZIIIIIII)V
    .locals 7

    move-object v0, p0

    move v1, p5

    sget-object v2, Lnin;->l:Lnin;

    invoke-virtual {v2}, Lnws;->O()Lnwn;

    move-result-object v2

    iget-object v3, v2, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_0
    iget-object v3, v2, Lnwn;->b:Lnws;

    move-object v4, v3

    check-cast v4, Lnin;

    iget v5, v4, Lnin;->a:I

    or-int/lit8 v5, v5, 0x1

    iput v5, v4, Lnin;->a:I

    move-wide v5, p1

    iput-wide v5, v4, Lnin;->b:J

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_1
    iget-object v3, v2, Lnwn;->b:Lnws;

    move-object v4, v3

    check-cast v4, Lnin;

    iget v5, v4, Lnin;->a:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v4, Lnin;->a:I

    move-wide v5, p3

    iput-wide v5, v4, Lnin;->c:J

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_2
    iget-object v3, v2, Lnwn;->b:Lnws;

    move-object v4, v3

    check-cast v4, Lnin;

    iget v5, v4, Lnin;->a:I

    or-int/lit8 v5, v5, 0x4

    iput v5, v4, Lnin;->a:I

    iput-boolean v1, v4, Lnin;->d:Z

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_3
    iget-object v3, v2, Lnwn;->b:Lnws;

    move-object v4, v3

    check-cast v4, Lnin;

    iget v5, v4, Lnin;->a:I

    or-int/lit8 v5, v5, 0x8

    iput v5, v4, Lnin;->a:I

    move v5, p6

    iput v5, v4, Lnin;->e:I

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_4
    iget-object v3, v2, Lnwn;->b:Lnws;

    move-object v4, v3

    check-cast v4, Lnin;

    iget v5, v4, Lnin;->a:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v4, Lnin;->a:I

    move v5, p7

    iput v5, v4, Lnin;->f:I

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_5
    iget-object v3, v2, Lnwn;->b:Lnws;

    move-object v4, v3

    check-cast v4, Lnin;

    iget v5, v4, Lnin;->a:I

    or-int/lit8 v5, v5, 0x20

    iput v5, v4, Lnin;->a:I

    move v5, p8

    iput v5, v4, Lnin;->g:I

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_6
    iget-object v3, v2, Lnwn;->b:Lnws;

    move-object v4, v3

    check-cast v4, Lnin;

    iget v5, v4, Lnin;->a:I

    or-int/lit8 v5, v5, 0x40

    iput v5, v4, Lnin;->a:I

    move/from16 v5, p9

    iput v5, v4, Lnin;->h:I

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_7
    iget-object v3, v2, Lnwn;->b:Lnws;

    move-object v4, v3

    check-cast v4, Lnin;

    iget v5, v4, Lnin;->a:I

    or-int/lit16 v5, v5, 0x100

    iput v5, v4, Lnin;->a:I

    move/from16 v5, p11

    iput v5, v4, Lnin;->j:I

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_8
    iget-object v3, v2, Lnwn;->b:Lnws;

    move-object v4, v3

    check-cast v4, Lnin;

    iget v5, v4, Lnin;->a:I

    or-int/lit16 v5, v5, 0x200

    iput v5, v4, Lnin;->a:I

    move/from16 v5, p12

    iput v5, v4, Lnin;->k:I

    if-eqz p10, :cond_a

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_9
    iget-object v3, v2, Lnwn;->b:Lnws;

    check-cast v3, Lnin;

    add-int/lit8 v4, p10, -0x1

    iput v4, v3, Lnin;->i:I

    iget v4, v3, Lnin;->a:I

    or-int/lit16 v4, v4, 0x80

    iput v4, v3, Lnin;->a:I

    :cond_a
    if-eqz v1, :cond_b

    iget-object v1, v0, Lhjl;->i:Landroid/content/Context;

    invoke-static {v1}, Lhbl;->b(Landroid/content/Context;)J

    move-result-wide v3

    iput-wide v3, v0, Lhjl;->k:J

    :cond_b
    sget-object v1, Lngr;->av:Lngr;

    invoke-virtual {v1}, Lnws;->O()Lnwn;

    move-result-object v1

    sget-object v3, Lngq;->aj:Lngq;

    iget-object v4, v1, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_c

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_c
    iget-object v4, v1, Lnwn;->b:Lnws;

    move-object v5, v4

    check-cast v5, Lngr;

    iget v3, v3, Lngq;->ar:I

    iput v3, v5, Lngr;->d:I

    iget v3, v5, Lngr;->a:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v5, Lngr;->a:I

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_d

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_d
    iget-object v3, v1, Lnwn;->b:Lnws;

    check-cast v3, Lngr;

    invoke-virtual {v2}, Lnwn;->i()Lnws;

    move-result-object v2

    check-cast v2, Lnin;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v3, Lngr;->ak:Lnin;

    iget v2, v3, Lngr;->c:I

    or-int/lit16 v2, v2, 0x400

    iput v2, v3, Lngr;->c:I

    invoke-virtual {p0, v1}, Lhjl;->aF(Lnwn;)V

    return-void
.end method

.method public final al(IJJII)V
    .locals 3

    sget-object v0, Lniq;->g:Lniq;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v1, v0, Lnwn;->b:Lnws;

    move-object v2, v1

    check-cast v2, Lniq;

    add-int/lit8 p1, p1, -0x1

    iput p1, v2, Lniq;->b:I

    iget p1, v2, Lniq;->a:I

    or-int/lit8 p1, p1, 0x1

    iput p1, v2, Lniq;->a:I

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_1
    iget-object p1, v0, Lnwn;->b:Lnws;

    move-object v1, p1

    check-cast v1, Lniq;

    iget v2, v1, Lniq;->a:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Lniq;->a:I

    iput-wide p2, v1, Lniq;->c:J

    invoke-virtual {p1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_2
    iget-object p1, v0, Lnwn;->b:Lnws;

    move-object p2, p1

    check-cast p2, Lniq;

    iget p3, p2, Lniq;->a:I

    or-int/lit8 p3, p3, 0x4

    iput p3, p2, Lniq;->a:I

    iput-wide p4, p2, Lniq;->d:J

    invoke-virtual {p1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_3
    iget-object p1, v0, Lnwn;->b:Lnws;

    move-object p2, p1

    check-cast p2, Lniq;

    iget p3, p2, Lniq;->a:I

    or-int/lit8 p3, p3, 0x10

    iput p3, p2, Lniq;->a:I

    iput p7, p2, Lniq;->f:I

    if-eqz p6, :cond_5

    invoke-virtual {p1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_4
    iget-object p1, v0, Lnwn;->b:Lnws;

    check-cast p1, Lniq;

    add-int/lit8 p6, p6, -0x1

    iput p6, p1, Lniq;->e:I

    iget p2, p1, Lniq;->a:I

    or-int/lit8 p2, p2, 0x8

    iput p2, p1, Lniq;->a:I

    :cond_5
    sget-object p1, Lngr;->av:Lngr;

    invoke-virtual {p1}, Lnws;->O()Lnwn;

    move-result-object p1

    sget-object p2, Lngq;->ag:Lngq;

    iget-object p3, p1, Lnwn;->b:Lnws;

    invoke-virtual {p3}, Lnws;->ac()Z

    move-result p3

    if-nez p3, :cond_6

    invoke-virtual {p1}, Lnwn;->p()V

    :cond_6
    iget-object p3, p1, Lnwn;->b:Lnws;

    move-object p4, p3

    check-cast p4, Lngr;

    iget p2, p2, Lngq;->ar:I

    iput p2, p4, Lngr;->d:I

    iget p2, p4, Lngr;->a:I

    or-int/lit8 p2, p2, 0x1

    iput p2, p4, Lngr;->a:I

    invoke-virtual {p3}, Lnws;->ac()Z

    move-result p2

    if-nez p2, :cond_7

    invoke-virtual {p1}, Lnwn;->p()V

    :cond_7
    iget-object p2, p1, Lnwn;->b:Lnws;

    check-cast p2, Lngr;

    invoke-virtual {v0}, Lnwn;->i()Lnws;

    move-result-object p3

    check-cast p3, Lniq;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p2, Lngr;->ah:Lniq;

    iget p3, p2, Lngr;->c:I

    or-int/lit16 p3, p3, 0x80

    iput p3, p2, Lngr;->c:I

    invoke-virtual {p0, p1}, Lhjl;->aF(Lnwn;)V

    return-void
.end method

.method public final am(IFLika;)V
    .locals 4

    sget-object v0, Lngr;->av:Lngr;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    sget-object v1, Lngq;->an:Lngq;

    iget-object v2, v0, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v2, v0, Lnwn;->b:Lnws;

    check-cast v2, Lngr;

    iget v1, v1, Lngq;->ar:I

    iput v1, v2, Lngr;->d:I

    iget v1, v2, Lngr;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v2, Lngr;->a:I

    sget-object v1, Lnhm;->e:Lnhm;

    invoke-virtual {v1}, Lnws;->O()Lnwn;

    move-result-object v1

    iget-object v2, v1, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_1
    iget-object v2, v1, Lnwn;->b:Lnws;

    move-object v3, v2

    check-cast v3, Lnhm;

    add-int/lit8 p1, p1, -0x1

    iput p1, v3, Lnhm;->b:I

    iget p1, v3, Lnhm;->a:I

    or-int/lit8 p1, p1, 0x1

    iput p1, v3, Lnhm;->a:I

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_2
    iget-object p1, v1, Lnwn;->b:Lnws;

    check-cast p1, Lnhm;

    iget v2, p1, Lnhm;->a:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p1, Lnhm;->a:I

    iput p2, p1, Lnhm;->c:F

    invoke-static {p3}, Lijy;->e(Lika;)I

    move-result p1

    iget-object p2, v1, Lnwn;->b:Lnws;

    invoke-virtual {p2}, Lnws;->ac()Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_3
    iget-object p2, v1, Lnwn;->b:Lnws;

    check-cast p2, Lnhm;

    add-int/lit8 p1, p1, -0x1

    iput p1, p2, Lnhm;->d:I

    iget p1, p2, Lnhm;->a:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p2, Lnhm;->a:I

    iget-object p1, v0, Lnwn;->b:Lnws;

    invoke-virtual {p1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_4
    iget-object p1, v0, Lnwn;->b:Lnws;

    check-cast p1, Lngr;

    invoke-virtual {v1}, Lnwn;->i()Lnws;

    move-result-object p2

    check-cast p2, Lnhm;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p1, Lngr;->aq:Lnhm;

    iget p2, p1, Lngr;->c:I

    const/high16 p3, 0x10000

    or-int/2addr p2, p3

    iput p2, p1, Lngr;->c:I

    invoke-virtual {p0, v0}, Lhjl;->aF(Lnwn;)V

    return-void
.end method

.method public final an(IJ)V
    .locals 4

    sget-object v0, Lngr;->av:Lngr;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    sget-object v1, Lngq;->ah:Lngq;

    iget-object v2, v0, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v2, v0, Lnwn;->b:Lnws;

    check-cast v2, Lngr;

    iget v1, v1, Lngq;->ar:I

    iput v1, v2, Lngr;->d:I

    iget v1, v2, Lngr;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v2, Lngr;->a:I

    sget-object v1, Lnlp;->d:Lnlp;

    invoke-virtual {v1}, Lnws;->O()Lnwn;

    move-result-object v1

    iget-object v2, v1, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_1
    iget-object v2, v1, Lnwn;->b:Lnws;

    move-object v3, v2

    check-cast v3, Lnlp;

    add-int/lit8 p1, p1, -0x1

    iput p1, v3, Lnlp;->b:I

    iget p1, v3, Lnlp;->a:I

    or-int/lit8 p1, p1, 0x1

    iput p1, v3, Lnlp;->a:I

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_2
    iget-object p1, v1, Lnwn;->b:Lnws;

    check-cast p1, Lnlp;

    iget v2, p1, Lnlp;->a:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p1, Lnlp;->a:I

    iput-wide p2, p1, Lnlp;->c:J

    invoke-virtual {v1}, Lnwn;->i()Lnws;

    move-result-object p1

    check-cast p1, Lnlp;

    iget-object p2, v0, Lnwn;->b:Lnws;

    invoke-virtual {p2}, Lnws;->ac()Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_3
    iget-object p2, v0, Lnwn;->b:Lnws;

    check-cast p2, Lngr;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p2, Lngr;->ai:Lnlp;

    iget p1, p2, Lngr;->c:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p2, Lngr;->c:I

    invoke-virtual {p0, v0}, Lhjl;->aF(Lnwn;)V

    return-void
.end method

.method public final ao(I)V
    .locals 0

    iput p1, p0, Lhjl;->A:I

    return-void
.end method

.method public final ap(IZI)V
    .locals 5

    sget-object v0, Lnky;->f:Lnky;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v1, v0, Lnwn;->b:Lnws;

    move-object v2, v1

    check-cast v2, Lnky;

    const/4 v3, 0x1

    iput v3, v2, Lnky;->b:I

    iget v4, v2, Lnky;->a:I

    or-int/2addr v4, v3

    iput v4, v2, Lnky;->a:I

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_1
    iget-object v1, v0, Lnwn;->b:Lnws;

    move-object v2, v1

    check-cast v2, Lnky;

    add-int/lit8 v4, p1, -0x1

    if-eqz p1, :cond_6

    iput v4, v2, Lnky;->c:I

    iget p1, v2, Lnky;->a:I

    or-int/lit8 p1, p1, 0x2

    iput p1, v2, Lnky;->a:I

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_2
    iget-object p1, v0, Lnwn;->b:Lnws;

    move-object v1, p1

    check-cast v1, Lnky;

    iget v2, v1, Lnky;->a:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v1, Lnky;->a:I

    iput p3, v1, Lnky;->d:I

    invoke-virtual {p1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_3
    iget-object p1, v0, Lnwn;->b:Lnws;

    check-cast p1, Lnky;

    iget p3, p1, Lnky;->a:I

    or-int/lit8 p3, p3, 0x8

    iput p3, p1, Lnky;->a:I

    iput-boolean p2, p1, Lnky;->e:Z

    invoke-virtual {v0}, Lnwn;->i()Lnws;

    move-result-object p1

    check-cast p1, Lnky;

    sget-object p2, Lngr;->av:Lngr;

    invoke-virtual {p2}, Lnws;->O()Lnwn;

    move-result-object p2

    sget-object p3, Lngq;->Y:Lngq;

    iget-object v0, p2, Lnwn;->b:Lnws;

    invoke-virtual {v0}, Lnws;->ac()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p2}, Lnwn;->p()V

    :cond_4
    iget-object v0, p2, Lnwn;->b:Lnws;

    move-object v1, v0

    check-cast v1, Lngr;

    iget p3, p3, Lngq;->ar:I

    iput p3, v1, Lngr;->d:I

    iget p3, v1, Lngr;->a:I

    or-int/2addr p3, v3

    iput p3, v1, Lngr;->a:I

    invoke-virtual {v0}, Lnws;->ac()Z

    move-result p3

    if-nez p3, :cond_5

    invoke-virtual {p2}, Lnwn;->p()V

    :cond_5
    iget-object p3, p2, Lnwn;->b:Lnws;

    check-cast p3, Lngr;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p3, Lngr;->aa:Lnky;

    iget p1, p3, Lngr;->b:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p3, Lngr;->b:I

    invoke-virtual {p0, p2}, Lhjl;->aF(Lnwn;)V

    return-void

    :cond_6
    const/4 p1, 0x0

    throw p1
.end method

.method public final aq(IIFLklv;)V
    .locals 8

    sget-object v0, Lngi;->f:Lngi;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v1, v0, Lnwn;->b:Lnws;

    move-object v2, v1

    check-cast v2, Lngi;

    add-int/lit8 p1, p1, -0x1

    iput p1, v2, Lngi;->b:I

    iget p1, v2, Lngi;->a:I

    or-int/lit8 p1, p1, 0x1

    iput p1, v2, Lngi;->a:I

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_1
    iget-object p1, v0, Lnwn;->b:Lnws;

    move-object v1, p1

    check-cast v1, Lngi;

    add-int/lit8 p2, p2, -0x1

    iput p2, v1, Lngi;->c:I

    iget p2, v1, Lngi;->a:I

    or-int/lit8 p2, p2, 0x2

    iput p2, v1, Lngi;->a:I

    invoke-virtual {p1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_2
    iget-object p1, v0, Lnwn;->b:Lnws;

    check-cast p1, Lngi;

    iget p2, p1, Lngi;->a:I

    or-int/lit8 p2, p2, 0x4

    iput p2, p1, Lngi;->a:I

    iput p3, p1, Lngi;->d:F

    invoke-static {p4}, Lhjl;->aJ(Lklv;)Lngo;

    move-result-object p1

    iget-object p2, v0, Lnwn;->b:Lnws;

    invoke-virtual {p2}, Lnws;->ac()Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_3
    iget-object p2, v0, Lnwn;->b:Lnws;

    check-cast p2, Lngi;

    iget p1, p1, Lngo;->d:I

    iput p1, p2, Lngi;->e:I

    iget p1, p2, Lngi;->a:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p2, Lngi;->a:I

    const/16 v2, 0xc

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0}, Lnwn;->i()Lnws;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lngi;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lhjl;->aL(ILnkz;Lnkq;Lngi;Lnlo;Lnhq;)V

    return-void
.end method

.method public final ar(IZ)V
    .locals 9

    sget-object v0, Lnkq;->d:Lnkq;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v1, v0, Lnwn;->b:Lnws;

    move-object v2, v1

    check-cast v2, Lnkq;

    add-int/lit8 p1, p1, -0x1

    iput p1, v2, Lnkq;->b:I

    iget p1, v2, Lnkq;->a:I

    or-int/lit8 p1, p1, 0x1

    iput p1, v2, Lnkq;->a:I

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_1
    iget-object p1, v0, Lnwn;->b:Lnws;

    check-cast p1, Lnkq;

    iget v1, p1, Lnkq;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p1, Lnkq;->a:I

    iput-boolean p2, p1, Lnkq;->c:Z

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-virtual {v0}, Lnwn;->i()Lnws;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lnkq;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lhjl;->aL(ILnkz;Lnkq;Lngi;Lnlo;Lnhq;)V

    return-void
.end method

.method public final as(ILklv;ZZLnlk;IZLmqp;)V
    .locals 3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lhjl;->r:J

    new-instance v0, Lbkb;

    sget-object v1, Lklv;->a:Lklv;

    const/4 v2, 0x1

    if-ne p2, v1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-direct {v0, p1, p2}, Lbkb;-><init>(IZ)V

    if-eq v2, p3, :cond_1

    const/4 p1, 0x2

    goto :goto_1

    :cond_1
    const/4 p1, 0x4

    :goto_1
    invoke-virtual {v0, p1}, Lbkb;->Q(I)V

    invoke-virtual {v0, p4}, Lbkb;->J(Z)V

    invoke-virtual {v0, p5}, Lbkb;->N(Lnlk;)V

    invoke-virtual {v0, p6}, Lbkb;->R(I)V

    invoke-virtual {v0, p7}, Lbkb;->K(Z)V

    invoke-virtual {p8}, Lmqp;->g()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p8}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnjm;

    invoke-virtual {v0, p1}, Lbkb;->L(Lnjm;)V

    :cond_2
    iget p1, p0, Lhjl;->A:I

    if-eq p1, v2, :cond_3

    invoke-virtual {v0, p1}, Lbkb;->P(I)V

    iput v2, p0, Lhjl;->A:I

    :cond_3
    invoke-virtual {p0, v0}, Lhjl;->aG(Lbkb;)V

    return-void
.end method

.method public final at(IIIZZZ)V
    .locals 11

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/Process;->getStartUptimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    new-instance v0, Lhjk;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move v10, p2

    invoke-direct/range {v1 .. v10}, Lhjk;-><init>(Lhjl;IIZZZJI)V

    move-object v1, p0

    invoke-direct {p0, v0}, Lhjl;->aI(Lmrl;)V

    return-void
.end method

.method public final au(IIFF)V
    .locals 2

    new-instance v0, Lbkb;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lbkb;-><init>(IZ)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lbkb;->O(F)V

    invoke-virtual {v0, p3}, Lbkb;->M(F)V

    const/16 p3, 0xc

    if-ne p1, p3, :cond_4

    sget-object p1, Lnkb;->d:Lnkb;

    invoke-virtual {p1}, Lnws;->O()Lnwn;

    move-result-object p1

    iget-object p3, p1, Lnwn;->b:Lnws;

    invoke-virtual {p3}, Lnws;->ac()Z

    move-result p3

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lnwn;->p()V

    :cond_0
    iget-object p3, p1, Lnwn;->b:Lnws;

    move-object v1, p3

    check-cast v1, Lnkb;

    add-int/lit8 p2, p2, -0x1

    iput p2, v1, Lnkb;->b:I

    iget p2, v1, Lnkb;->a:I

    or-int/lit8 p2, p2, 0x1

    iput p2, v1, Lnkb;->a:I

    invoke-virtual {p3}, Lnws;->ac()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p1}, Lnwn;->p()V

    :cond_1
    iget-object p2, p1, Lnwn;->b:Lnws;

    check-cast p2, Lnkb;

    iget p3, p2, Lnkb;->a:I

    or-int/lit8 p3, p3, 0x2

    iput p3, p2, Lnkb;->a:I

    iput p4, p2, Lnkb;->c:F

    invoke-virtual {p1}, Lnwn;->i()Lnws;

    move-result-object p1

    check-cast p1, Lnkb;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p2, v0, Lbkb;->a:Ljava/lang/Object;

    check-cast p2, Lnwn;

    iget-object p3, p2, Lnwn;->b:Lnws;

    invoke-virtual {p3}, Lnws;->ac()Z

    move-result p3

    if-nez p3, :cond_3

    invoke-virtual {p2}, Lnwn;->p()V

    :cond_3
    iget-object p2, p2, Lnwn;->b:Lnws;

    check-cast p2, Lnhb;

    sget-object p3, Lnhb;->Y:Lnhb;

    iput-object p1, p2, Lnhb;->p:Lnkb;

    iget p1, p2, Lnhb;->a:I

    const/high16 p3, 0x10000

    or-int/2addr p1, p3

    iput p1, p2, Lnhb;->a:I

    :cond_4
    :goto_0
    invoke-virtual {p0, v0}, Lhjl;->aG(Lbkb;)V

    return-void
.end method

.method public final av(ILfcg;Lcom/google/android/libraries/camera/exif/ExifInterface;ZLjava/lang/Float;Ljava/util/List;Lnjk;ILfci;Ljava/lang/Long;Ljava/lang/Integer;Lnjo;Lnhy;Lnho;Lnki;Lngg;Lnhx;Ljava/lang/Long;Ljava/lang/Long;ZZLnlq;Lngj;Lngh;Lnib;Lnjt;Lnjw;ZZ)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p12

    move-object/from16 v5, p13

    move-object/from16 v6, p14

    move-object/from16 v7, p15

    move-object/from16 v8, p16

    move-object/from16 v9, p17

    move-object/from16 v10, p22

    move-object/from16 v11, p23

    move-object/from16 v12, p24

    move-object/from16 v13, p25

    move-object/from16 v14, p26

    move-object/from16 v15, p27

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    iput-wide v14, v0, Lhjl;->r:J

    sget-object v14, Lnkc;->d:Lnkc;

    invoke-virtual {v14}, Lnws;->O()Lnwn;

    move-result-object v14

    iget-object v15, v14, Lnwn;->b:Lnws;

    invoke-virtual {v15}, Lnws;->ac()Z

    move-result v15

    if-nez v15, :cond_0

    invoke-virtual {v14}, Lnwn;->p()V

    :cond_0
    iget-object v15, v14, Lnwn;->b:Lnws;

    check-cast v15, Lnkc;

    iget v10, v15, Lnkc;->a:I

    const/16 v16, 0x2

    or-int/lit8 v10, v10, 0x2

    iput v10, v15, Lnkc;->a:I

    move/from16 v10, p4

    iput-boolean v10, v15, Lnkc;->b:Z

    if-nez p18, :cond_1

    sget-object v10, Lhjl;->m:Lnak;

    invoke-virtual {v10}, Lnaf;->c()Lnaz;

    move-result-object v10

    const-string v15, "Submitting log event with zero file size"

    const/16 v0, 0xe7d

    invoke-static {v10, v15, v0}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    :cond_1
    if-eqz p18, :cond_2

    invoke-virtual/range {p18 .. p18}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    const-wide/16 v19, 0x400

    div-long v17, v17, v19

    move-wide/from16 v12, v17

    goto :goto_0

    :cond_2
    const-wide/16 v17, 0x0

    move-wide/from16 v12, v17

    :goto_0
    iget-object v0, v14, Lnwn;->b:Lnws;

    invoke-virtual {v0}, Lnws;->ac()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v14}, Lnwn;->p()V

    :cond_3
    iget-object v0, v14, Lnwn;->b:Lnws;

    check-cast v0, Lnkc;

    iget v10, v0, Lnkc;->a:I

    const/4 v15, 0x4

    or-int/2addr v10, v15

    iput v10, v0, Lnkc;->a:I

    iput-wide v12, v0, Lnkc;->c:J

    new-instance v0, Lbkb;

    iget-boolean v10, v1, Lfcg;->a:Z

    move/from16 v12, p1

    invoke-direct {v0, v12, v10}, Lbkb;-><init>(IZ)V

    move-object/from16 v10, p3

    invoke-virtual {v0, v10}, Lbkb;->I(Lkdj;)V

    iget v10, v1, Lfcg;->b:F

    invoke-virtual {v0, v10}, Lbkb;->O(F)V

    iget-object v10, v1, Lfcg;->c:Ljava/lang/String;

    if-nez v10, :cond_4

    goto :goto_3

    :cond_4
    const-string v13, "off"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    const/4 v10, 0x2

    goto :goto_2

    :cond_5
    const-string v13, "auto"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    const/4 v10, 0x3

    goto :goto_2

    :cond_6
    const-string v13, "on"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8

    const-string v13, "torch"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    goto :goto_1

    :cond_7
    const/4 v10, 0x1

    goto :goto_2

    :cond_8
    :goto_1
    const/4 v10, 0x4

    :goto_2
    iget-object v13, v0, Lbkb;->a:Ljava/lang/Object;

    check-cast v13, Lnwn;

    iget-object v12, v13, Lnwn;->b:Lnws;

    invoke-virtual {v12}, Lnws;->ac()Z

    move-result v12

    if-nez v12, :cond_9

    invoke-virtual {v13}, Lnwn;->p()V

    :cond_9
    iget-object v12, v13, Lnwn;->b:Lnws;

    check-cast v12, Lnhb;

    sget-object v13, Lnhb;->Y:Lnhb;

    add-int/lit8 v10, v10, -0x1

    iput v10, v12, Lnhb;->j:I

    iget v10, v12, Lnhb;->a:I

    or-int/lit16 v10, v10, 0x100

    iput v10, v12, Lnhb;->a:I

    :goto_3
    iget-boolean v10, v1, Lfcg;->d:Z

    iget-object v12, v0, Lbkb;->a:Ljava/lang/Object;

    check-cast v12, Lnwn;

    iget-object v13, v12, Lnwn;->b:Lnws;

    invoke-virtual {v13}, Lnws;->ac()Z

    move-result v13

    if-nez v13, :cond_a

    invoke-virtual {v12}, Lnwn;->p()V

    :cond_a
    iget-object v12, v12, Lnwn;->b:Lnws;

    check-cast v12, Lnhb;

    sget-object v13, Lnhb;->Y:Lnhb;

    iget v13, v12, Lnhb;->b:I

    const/high16 v17, 0x10000000

    or-int v13, v13, v17

    iput v13, v12, Lnhb;->b:I

    iput-boolean v10, v12, Lnhb;->X:Z

    iget-boolean v10, v1, Lfcg;->e:Z

    invoke-virtual {v0, v10}, Lbkb;->J(Z)V

    iget-boolean v10, v1, Lfcg;->f:Z

    iget-object v12, v0, Lbkb;->a:Ljava/lang/Object;

    check-cast v12, Lnwn;

    iget-object v13, v12, Lnwn;->b:Lnws;

    invoke-virtual {v13}, Lnws;->ac()Z

    move-result v13

    if-nez v13, :cond_b

    invoke-virtual {v12}, Lnwn;->p()V

    :cond_b
    iget-object v12, v12, Lnwn;->b:Lnws;

    check-cast v12, Lnhb;

    iget v13, v12, Lnhb;->b:I

    or-int/lit8 v13, v13, 0x40

    iput v13, v12, Lnhb;->b:I

    iput-boolean v10, v12, Lnhb;->E:Z

    iget v10, v1, Lfcg;->g:F

    iget-object v12, v0, Lbkb;->a:Ljava/lang/Object;

    check-cast v12, Lnwn;

    iget-object v13, v12, Lnwn;->b:Lnws;

    invoke-virtual {v13}, Lnws;->ac()Z

    move-result v13

    if-nez v13, :cond_c

    invoke-virtual {v12}, Lnwn;->p()V

    :cond_c
    iget-object v12, v12, Lnwn;->b:Lnws;

    check-cast v12, Lnhb;

    iget v13, v12, Lnhb;->a:I

    or-int/lit16 v13, v13, 0x80

    iput v13, v12, Lnhb;->a:I

    iput v10, v12, Lnhb;->i:F

    invoke-virtual {v14}, Lnwn;->i()Lnws;

    move-result-object v10

    check-cast v10, Lnkc;

    if-nez v10, :cond_d

    goto :goto_4

    :cond_d
    iget-object v12, v0, Lbkb;->a:Ljava/lang/Object;

    check-cast v12, Lnwn;

    iget-object v13, v12, Lnwn;->b:Lnws;

    invoke-virtual {v13}, Lnws;->ac()Z

    move-result v13

    if-nez v13, :cond_e

    invoke-virtual {v12}, Lnwn;->p()V

    :cond_e
    iget-object v12, v12, Lnwn;->b:Lnws;

    check-cast v12, Lnhb;

    iput-object v10, v12, Lnhb;->m:Lnkc;

    iget v10, v12, Lnhb;->a:I

    or-int/lit16 v10, v10, 0x1000

    iput v10, v12, Lnhb;->a:I

    :goto_4
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-virtual {v0, v10}, Lbkb;->M(F)V

    iget-object v10, v1, Lfcg;->h:Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    iget-object v12, v0, Lbkb;->a:Ljava/lang/Object;

    check-cast v12, Lnwn;

    iget-object v13, v12, Lnwn;->b:Lnws;

    invoke-virtual {v13}, Lnws;->ac()Z

    move-result v13

    if-nez v13, :cond_f

    invoke-virtual {v12}, Lnwn;->p()V

    :cond_f
    iget-object v12, v12, Lnwn;->b:Lnws;

    check-cast v12, Lnhb;

    iget v13, v12, Lnhb;->a:I

    or-int/lit16 v13, v13, 0x200

    iput v13, v12, Lnhb;->a:I

    iput-boolean v10, v12, Lnhb;->k:Z

    iget-object v10, v0, Lbkb;->a:Ljava/lang/Object;

    check-cast v10, Lnwn;

    iget-object v12, v10, Lnwn;->b:Lnws;

    invoke-virtual {v12}, Lnws;->ac()Z

    move-result v12

    if-nez v12, :cond_10

    invoke-virtual {v10}, Lnwn;->p()V

    :cond_10
    iget-object v10, v10, Lnwn;->b:Lnws;

    check-cast v10, Lnhb;

    add-int/lit8 v12, p8, -0x1

    iput v12, v10, Lnhb;->t:I

    iget v12, v10, Lnhb;->a:I

    const/high16 v13, 0x4000000

    or-int/2addr v12, v13

    iput v12, v10, Lnhb;->a:I

    iget-object v10, v1, Lfcg;->k:Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    iget-object v12, v0, Lbkb;->a:Ljava/lang/Object;

    check-cast v12, Lnwn;

    iget-object v14, v12, Lnwn;->b:Lnws;

    invoke-virtual {v14}, Lnws;->ac()Z

    move-result v14

    if-nez v14, :cond_11

    invoke-virtual {v12}, Lnwn;->p()V

    :cond_11
    iget-object v12, v12, Lnwn;->b:Lnws;

    check-cast v12, Lnhb;

    iget v14, v12, Lnhb;->b:I

    or-int/2addr v14, v15

    iput v14, v12, Lnhb;->b:I

    iput-boolean v10, v12, Lnhb;->A:Z

    iget v10, v1, Lfcg;->s:I

    iget-object v12, v0, Lbkb;->a:Ljava/lang/Object;

    check-cast v12, Lnwn;

    iget-object v14, v12, Lnwn;->b:Lnws;

    invoke-virtual {v14}, Lnws;->ac()Z

    move-result v14

    if-nez v14, :cond_12

    invoke-virtual {v12}, Lnwn;->p()V

    :cond_12
    iget-object v12, v12, Lnwn;->b:Lnws;

    check-cast v12, Lnhb;

    add-int/lit8 v14, v10, -0x1

    if-eqz v10, :cond_4c

    iput v14, v12, Lnhb;->B:I

    iget v10, v12, Lnhb;->b:I

    or-int/lit8 v10, v10, 0x8

    iput v10, v12, Lnhb;->b:I

    iget-object v10, v1, Lfcg;->l:Lnhr;

    iget-object v12, v0, Lbkb;->a:Ljava/lang/Object;

    check-cast v12, Lnwn;

    iget-object v14, v12, Lnwn;->b:Lnws;

    invoke-virtual {v14}, Lnws;->ac()Z

    move-result v14

    if-nez v14, :cond_13

    invoke-virtual {v12}, Lnwn;->p()V

    :cond_13
    iget-object v12, v12, Lnwn;->b:Lnws;

    check-cast v12, Lnhb;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v10, v12, Lnhb;->F:Lnhr;

    iget v10, v12, Lnhb;->b:I

    or-int/lit16 v10, v10, 0x80

    iput v10, v12, Lnhb;->b:I

    iget-object v10, v0, Lbkb;->a:Ljava/lang/Object;

    check-cast v10, Lnwn;

    iget-object v12, v10, Lnwn;->b:Lnws;

    invoke-virtual {v12}, Lnws;->ac()Z

    move-result v12

    if-nez v12, :cond_14

    invoke-virtual {v10}, Lnwn;->p()V

    :cond_14
    iget-object v10, v10, Lnwn;->b:Lnws;

    check-cast v10, Lnhb;

    iget v12, v10, Lnhb;->b:I

    or-int/lit16 v12, v12, 0x100

    iput v12, v10, Lnhb;->b:I

    move/from16 v12, p20

    iput-boolean v12, v10, Lnhb;->G:Z

    iget-object v10, v0, Lbkb;->a:Ljava/lang/Object;

    check-cast v10, Lnwn;

    iget-object v12, v10, Lnwn;->b:Lnws;

    invoke-virtual {v12}, Lnws;->ac()Z

    move-result v12

    if-nez v12, :cond_15

    invoke-virtual {v10}, Lnwn;->p()V

    :cond_15
    iget-object v10, v10, Lnwn;->b:Lnws;

    check-cast v10, Lnhb;

    iget v12, v10, Lnhb;->b:I

    or-int/lit16 v12, v12, 0x200

    iput v12, v10, Lnhb;->b:I

    move/from16 v12, p21

    iput-boolean v12, v10, Lnhb;->H:Z

    iget-object v10, v1, Lfcg;->n:Lnik;

    iget-object v12, v0, Lbkb;->a:Ljava/lang/Object;

    check-cast v12, Lnwn;

    iget-object v14, v12, Lnwn;->b:Lnws;

    invoke-virtual {v14}, Lnws;->ac()Z

    move-result v14

    if-nez v14, :cond_16

    invoke-virtual {v12}, Lnwn;->p()V

    :cond_16
    iget-object v12, v12, Lnwn;->b:Lnws;

    check-cast v12, Lnhb;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v10, v12, Lnhb;->J:Lnik;

    iget v10, v12, Lnhb;->b:I

    or-int/lit16 v10, v10, 0x800

    iput v10, v12, Lnhb;->b:I

    move/from16 v10, p28

    invoke-virtual {v0, v10}, Lbkb;->K(Z)V

    iget-object v10, v0, Lbkb;->a:Ljava/lang/Object;

    check-cast v10, Lnwn;

    iget-object v12, v10, Lnwn;->b:Lnws;

    invoke-virtual {v12}, Lnws;->ac()Z

    move-result v12

    if-nez v12, :cond_17

    invoke-virtual {v10}, Lnwn;->p()V

    :cond_17
    iget-object v10, v10, Lnwn;->b:Lnws;

    check-cast v10, Lnhb;

    iget v12, v10, Lnhb;->b:I

    const/high16 v14, 0x400000

    or-int/2addr v12, v14

    iput v12, v10, Lnhb;->b:I

    move/from16 v12, p29

    iput-boolean v12, v10, Lnhb;->S:Z

    iget-boolean v10, v1, Lfcg;->p:Z

    iget-object v12, v0, Lbkb;->a:Ljava/lang/Object;

    check-cast v12, Lnwn;

    iget-object v14, v12, Lnwn;->b:Lnws;

    invoke-virtual {v14}, Lnws;->ac()Z

    move-result v14

    if-nez v14, :cond_18

    invoke-virtual {v12}, Lnwn;->p()V

    :cond_18
    iget-object v12, v12, Lnwn;->b:Lnws;

    check-cast v12, Lnhb;

    iget v14, v12, Lnhb;->b:I

    const/high16 v18, 0x2000000

    or-int v14, v14, v18

    iput v14, v12, Lnhb;->b:I

    iput-boolean v10, v12, Lnhb;->U:Z

    iget-object v10, v1, Lfcg;->m:Lmqp;

    invoke-virtual {v10}, Lmqp;->g()Z

    move-result v10

    if-eqz v10, :cond_19

    iget-object v10, v1, Lfcg;->m:Lmqp;

    invoke-virtual {v10}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lnjm;

    invoke-virtual {v0, v10}, Lbkb;->L(Lnjm;)V

    :cond_19
    const/high16 v10, 0x200000

    if-eqz v3, :cond_1b

    iget-object v12, v0, Lbkb;->a:Ljava/lang/Object;

    check-cast v12, Lnwn;

    iget-object v14, v12, Lnwn;->b:Lnws;

    invoke-virtual {v14}, Lnws;->ac()Z

    move-result v14

    if-nez v14, :cond_1a

    invoke-virtual {v12}, Lnwn;->p()V

    :cond_1a
    iget-object v12, v12, Lnwn;->b:Lnws;

    check-cast v12, Lnhb;

    iput-object v3, v12, Lnhb;->r:Lnjk;

    iget v3, v12, Lnhb;->a:I

    or-int/2addr v3, v10

    iput v3, v12, Lnhb;->a:I

    :cond_1b
    if-eqz v2, :cond_27

    iget-object v3, v1, Lfcg;->i:Landroid/graphics/Rect;

    iget-object v12, v0, Lbkb;->a:Ljava/lang/Object;

    check-cast v12, Lnwn;

    iget-object v14, v12, Lnwn;->b:Lnws;

    invoke-virtual {v14}, Lnws;->ac()Z

    move-result v14

    if-nez v14, :cond_1c

    invoke-virtual {v12}, Lnwn;->p()V

    :cond_1c
    iget-object v12, v12, Lnwn;->b:Lnws;

    check-cast v12, Lnhb;

    sget-object v14, Lnyi;->b:Lnyi;

    iput-object v14, v12, Lnhb;->l:Lnxa;

    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v12

    const/4 v14, 0x5

    invoke-static {v14, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    const/4 v14, 0x0

    :goto_5
    if-ge v14, v12, :cond_27

    iget-object v13, v0, Lbkb;->a:Ljava/lang/Object;

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v10, v19

    check-cast v10, Lkor;

    iget-object v10, v10, Lkor;->a:Lkoj;

    iget-object v15, v10, Lkoj;->c:Landroid/graphics/Rect;

    sget-object v19, Lnhw;->i:Lnhw;

    invoke-virtual/range {v19 .. v19}, Lnws;->O()Lnwn;

    move-result-object v2

    move/from16 p5, v12

    iget v12, v15, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    iget-object v1, v2, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_1d

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_1d
    iget-object v1, v2, Lnwn;->b:Lnws;

    check-cast v1, Lnhw;

    iget v11, v1, Lnhw;->a:I

    const/16 v19, 0x1

    or-int/lit8 v11, v11, 0x1

    iput v11, v1, Lnhw;->a:I

    iput v12, v1, Lnhw;->b:F

    iget v1, v15, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget-object v11, v2, Lnwn;->b:Lnws;

    invoke-virtual {v11}, Lnws;->ac()Z

    move-result v11

    if-nez v11, :cond_1e

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_1e
    iget-object v11, v2, Lnwn;->b:Lnws;

    check-cast v11, Lnhw;

    iget v12, v11, Lnhw;->a:I

    const/16 v19, 0x4

    or-int/lit8 v12, v12, 0x4

    iput v12, v11, Lnhw;->a:I

    iput v1, v11, Lnhw;->d:F

    iget v1, v15, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget-object v11, v2, Lnwn;->b:Lnws;

    invoke-virtual {v11}, Lnws;->ac()Z

    move-result v11

    if-nez v11, :cond_1f

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_1f
    iget-object v11, v2, Lnwn;->b:Lnws;

    check-cast v11, Lnhw;

    iget v12, v11, Lnhw;->a:I

    or-int/lit8 v12, v12, 0x2

    iput v12, v11, Lnhw;->a:I

    iput v1, v11, Lnhw;->c:F

    iget v1, v15, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget-object v11, v2, Lnwn;->b:Lnws;

    invoke-virtual {v11}, Lnws;->ac()Z

    move-result v11

    if-nez v11, :cond_20

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_20
    iget-object v11, v2, Lnwn;->b:Lnws;

    move-object v12, v11

    check-cast v12, Lnhw;

    iget v15, v12, Lnhw;->a:I

    or-int/lit8 v15, v15, 0x8

    iput v15, v12, Lnhw;->a:I

    iput v1, v12, Lnhw;->e:F

    iget v1, v10, Lkoj;->b:I

    int-to-float v1, v1

    invoke-virtual {v11}, Lnws;->ac()Z

    move-result v10

    if-nez v10, :cond_21

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_21
    iget-object v10, v2, Lnwn;->b:Lnws;

    check-cast v10, Lnhw;

    iget v11, v10, Lnhw;->a:I

    or-int/lit8 v11, v11, 0x40

    iput v11, v10, Lnhw;->a:I

    iput v1, v10, Lnhw;->h:F

    if-eqz v3, :cond_24

    iget v1, v3, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget-object v10, v2, Lnwn;->b:Lnws;

    invoke-virtual {v10}, Lnws;->ac()Z

    move-result v10

    if-nez v10, :cond_22

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_22
    iget-object v10, v2, Lnwn;->b:Lnws;

    check-cast v10, Lnhw;

    iget v11, v10, Lnhw;->a:I

    or-int/lit8 v11, v11, 0x10

    iput v11, v10, Lnhw;->a:I

    iput v1, v10, Lnhw;->f:F

    iget v1, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget-object v10, v2, Lnwn;->b:Lnws;

    invoke-virtual {v10}, Lnws;->ac()Z

    move-result v10

    if-nez v10, :cond_23

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_23
    iget-object v10, v2, Lnwn;->b:Lnws;

    check-cast v10, Lnhw;

    iget v11, v10, Lnhw;->a:I

    or-int/lit8 v11, v11, 0x20

    iput v11, v10, Lnhw;->a:I

    iput v1, v10, Lnhw;->g:F

    :cond_24
    invoke-virtual {v2}, Lnwn;->i()Lnws;

    move-result-object v1

    check-cast v1, Lnhw;

    check-cast v13, Lnwn;

    iget-object v2, v13, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_25

    invoke-virtual {v13}, Lnwn;->p()V

    :cond_25
    iget-object v2, v13, Lnwn;->b:Lnws;

    check-cast v2, Lnhb;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v10, v2, Lnhb;->l:Lnxa;

    invoke-interface {v10}, Lnxa;->c()Z

    move-result v11

    if-nez v11, :cond_26

    invoke-static {v10}, Lnws;->U(Lnxa;)Lnxa;

    move-result-object v10

    iput-object v10, v2, Lnhb;->l:Lnxa;

    :cond_26
    iget-object v2, v2, Lnhb;->l:Lnxa;

    invoke-interface {v2, v1}, Lnxa;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p2

    move/from16 v12, p5

    move-object/from16 v2, p6

    move-object/from16 v11, p23

    const/high16 v10, 0x200000

    const/high16 v13, 0x4000000

    const/4 v15, 0x4

    goto/16 :goto_5

    :cond_27
    if-eqz p9, :cond_29

    iget-object v1, v0, Lbkb;->a:Ljava/lang/Object;

    move-object/from16 v2, p9

    check-cast v2, Lebd;

    iget-object v2, v2, Lebd;->a:Lnim;

    check-cast v1, Lnwn;

    iget-object v3, v1, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_28

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_28
    iget-object v1, v1, Lnwn;->b:Lnws;

    check-cast v1, Lnhb;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v1, Lnhb;->o:Lnim;

    iget v2, v1, Lnhb;->a:I

    or-int/lit16 v2, v2, 0x4000

    iput v2, v1, Lnhb;->a:I

    :cond_29
    if-eqz p10, :cond_2b

    sget-object v1, Lnlk;->D:Lnlk;

    invoke-virtual {v1}, Lnws;->O()Lnwn;

    move-result-object v1

    invoke-virtual/range {p10 .. p10}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v10, v1, Lnwn;->b:Lnws;

    invoke-virtual {v10}, Lnws;->ac()Z

    move-result v10

    if-nez v10, :cond_2a

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_2a
    iget-object v10, v1, Lnwn;->b:Lnws;

    check-cast v10, Lnlk;

    iget v11, v10, Lnlk;->a:I

    or-int/lit8 v11, v11, 0x2

    iput v11, v10, Lnlk;->a:I

    iput-wide v2, v10, Lnlk;->c:J

    invoke-virtual {v1}, Lnwn;->i()Lnws;

    move-result-object v1

    check-cast v1, Lnlk;

    invoke-virtual {v0, v1}, Lbkb;->N(Lnlk;)V

    :cond_2b
    if-eqz p11, :cond_2d

    invoke-virtual/range {p11 .. p11}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, v0, Lbkb;->a:Ljava/lang/Object;

    check-cast v2, Lnwn;

    iget-object v3, v2, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_2c

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_2c
    iget-object v2, v2, Lnwn;->b:Lnws;

    check-cast v2, Lnhb;

    iget v3, v2, Lnhb;->a:I

    or-int v3, v3, v18

    iput v3, v2, Lnhb;->a:I

    iput v1, v2, Lnhb;->s:I

    :cond_2d
    const/high16 v1, 0x8000000

    if-eqz v4, :cond_2f

    iget-object v2, v0, Lbkb;->a:Ljava/lang/Object;

    check-cast v2, Lnwn;

    iget-object v3, v2, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_2e

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_2e
    iget-object v2, v2, Lnwn;->b:Lnws;

    check-cast v2, Lnhb;

    iput-object v4, v2, Lnhb;->u:Lnjo;

    iget v3, v2, Lnhb;->a:I

    or-int/2addr v3, v1

    iput v3, v2, Lnhb;->a:I

    :cond_2f
    if-eqz v5, :cond_31

    iget-object v2, v0, Lbkb;->a:Ljava/lang/Object;

    check-cast v2, Lnwn;

    iget-object v3, v2, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_30

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_30
    iget-object v2, v2, Lnwn;->b:Lnws;

    check-cast v2, Lnhb;

    iput-object v5, v2, Lnhb;->v:Lnhy;

    iget v3, v2, Lnhb;->a:I

    or-int v3, v3, v17

    iput v3, v2, Lnhb;->a:I

    :cond_31
    const/high16 v2, 0x80000

    if-eqz v6, :cond_33

    iget-object v3, v0, Lbkb;->a:Ljava/lang/Object;

    check-cast v3, Lnwn;

    iget-object v4, v3, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_32

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_32
    iget-object v3, v3, Lnwn;->b:Lnws;

    check-cast v3, Lnhb;

    iput-object v6, v3, Lnhb;->Q:Lnho;

    iget v4, v3, Lnhb;->b:I

    or-int/2addr v4, v2

    iput v4, v3, Lnhb;->b:I

    :cond_33
    if-eqz v7, :cond_35

    iget-object v3, v0, Lbkb;->a:Ljava/lang/Object;

    check-cast v3, Lnwn;

    iget-object v4, v3, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_34

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_34
    iget-object v3, v3, Lnwn;->b:Lnws;

    check-cast v3, Lnhb;

    iput-object v7, v3, Lnhb;->w:Lnki;

    iget v4, v3, Lnhb;->a:I

    const/high16 v5, 0x20000000

    or-int/2addr v4, v5

    iput v4, v3, Lnhb;->a:I

    :cond_35
    if-eqz v9, :cond_37

    iget-object v3, v0, Lbkb;->a:Ljava/lang/Object;

    check-cast v3, Lnwn;

    iget-object v4, v3, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_36

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_36
    iget-object v3, v3, Lnwn;->b:Lnws;

    check-cast v3, Lnhb;

    iput-object v9, v3, Lnhb;->y:Lnhx;

    iget v4, v3, Lnhb;->a:I

    const/high16 v5, -0x80000000

    or-int/2addr v4, v5

    iput v4, v3, Lnhb;->a:I

    :cond_37
    if-eqz v8, :cond_39

    iget-object v3, v0, Lbkb;->a:Ljava/lang/Object;

    check-cast v3, Lnwn;

    iget-object v4, v3, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_38

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_38
    iget-object v3, v3, Lnwn;->b:Lnws;

    check-cast v3, Lnhb;

    iput-object v8, v3, Lnhb;->D:Lngg;

    iget v4, v3, Lnhb;->b:I

    or-int/lit8 v4, v4, 0x20

    iput v4, v3, Lnhb;->b:I

    :cond_39
    move-object/from16 v3, p23

    if-eqz v3, :cond_3b

    iget-object v4, v0, Lbkb;->a:Ljava/lang/Object;

    check-cast v4, Lnwn;

    iget-object v5, v4, Lnwn;->b:Lnws;

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_3a

    invoke-virtual {v4}, Lnwn;->p()V

    :cond_3a
    iget-object v4, v4, Lnwn;->b:Lnws;

    check-cast v4, Lnhb;

    iput-object v3, v4, Lnhb;->M:Lngj;

    iget v3, v4, Lnhb;->b:I

    const v5, 0x8000

    or-int/2addr v3, v5

    iput v3, v4, Lnhb;->b:I

    :cond_3b
    move-object/from16 v3, p24

    if-eqz v3, :cond_3d

    iget-object v4, v0, Lbkb;->a:Ljava/lang/Object;

    check-cast v4, Lnwn;

    iget-object v5, v4, Lnwn;->b:Lnws;

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_3c

    invoke-virtual {v4}, Lnwn;->p()V

    :cond_3c
    iget-object v4, v4, Lnwn;->b:Lnws;

    check-cast v4, Lnhb;

    iput-object v3, v4, Lnhb;->N:Lngh;

    iget v3, v4, Lnhb;->b:I

    const/high16 v5, 0x10000

    or-int/2addr v3, v5

    iput v3, v4, Lnhb;->b:I

    :cond_3d
    move-object/from16 v3, p25

    if-eqz v3, :cond_3f

    iget-object v4, v0, Lbkb;->a:Ljava/lang/Object;

    check-cast v4, Lnwn;

    iget-object v5, v4, Lnwn;->b:Lnws;

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_3e

    invoke-virtual {v4}, Lnwn;->p()V

    :cond_3e
    iget-object v4, v4, Lnwn;->b:Lnws;

    check-cast v4, Lnhb;

    iput-object v3, v4, Lnhb;->P:Lnib;

    iget v3, v4, Lnhb;->b:I

    const/high16 v5, 0x40000

    or-int/2addr v3, v5

    iput v3, v4, Lnhb;->b:I

    :cond_3f
    move-object/from16 v3, p26

    if-eqz v3, :cond_41

    iget-object v4, v0, Lbkb;->a:Ljava/lang/Object;

    check-cast v4, Lnwn;

    iget-object v5, v4, Lnwn;->b:Lnws;

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_40

    invoke-virtual {v4}, Lnwn;->p()V

    :cond_40
    iget-object v4, v4, Lnwn;->b:Lnws;

    check-cast v4, Lnhb;

    iput-object v3, v4, Lnhb;->R:Lnjt;

    iget v3, v4, Lnhb;->b:I

    const/high16 v5, 0x200000

    or-int/2addr v3, v5

    iput v3, v4, Lnhb;->b:I

    :cond_41
    move-object/from16 v3, p27

    if-eqz v3, :cond_43

    iget-object v4, v0, Lbkb;->a:Ljava/lang/Object;

    check-cast v4, Lnwn;

    iget-object v5, v4, Lnwn;->b:Lnws;

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_42

    invoke-virtual {v4}, Lnwn;->p()V

    :cond_42
    iget-object v4, v4, Lnwn;->b:Lnws;

    check-cast v4, Lnhb;

    iput-object v3, v4, Lnhb;->W:Lnjw;

    iget v3, v4, Lnhb;->b:I

    or-int/2addr v1, v3

    iput v1, v4, Lnhb;->b:I

    :cond_43
    move-object/from16 v1, p0

    iget v3, v1, Lhjl;->A:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_44

    invoke-virtual {v0, v3}, Lbkb;->P(I)V

    iput v4, v1, Lhjl;->A:I

    :cond_44
    if-eqz p19, :cond_47

    sget-object v3, Lnhh;->n:Lnhh;

    invoke-virtual {v3}, Lnws;->O()Lnwn;

    move-result-object v3

    invoke-virtual/range {p19 .. p19}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v6, v3, Lnwn;->b:Lnws;

    invoke-virtual {v6}, Lnws;->ac()Z

    move-result v6

    if-nez v6, :cond_45

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_45
    iget-object v6, v3, Lnwn;->b:Lnws;

    check-cast v6, Lnhh;

    iget v7, v6, Lnhh;->a:I

    const/4 v8, 0x1

    or-int/2addr v7, v8

    iput v7, v6, Lnhh;->a:I

    iput-wide v4, v6, Lnhh;->b:J

    invoke-virtual {v3}, Lnwn;->i()Lnws;

    move-result-object v3

    check-cast v3, Lnhh;

    iget-object v4, v0, Lbkb;->a:Ljava/lang/Object;

    check-cast v4, Lnwn;

    iget-object v5, v4, Lnwn;->b:Lnws;

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_46

    invoke-virtual {v4}, Lnwn;->p()V

    :cond_46
    iget-object v4, v4, Lnwn;->b:Lnws;

    check-cast v4, Lnhb;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v3, v4, Lnhb;->q:Lnhh;

    iget v3, v4, Lnhb;->a:I

    or-int/2addr v2, v3

    iput v2, v4, Lnhb;->a:I

    :cond_47
    move-object/from16 v2, p22

    if-eqz v2, :cond_49

    iget-object v3, v0, Lbkb;->a:Ljava/lang/Object;

    check-cast v3, Lnwn;

    iget-object v4, v3, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_48

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_48
    iget-object v3, v3, Lnwn;->b:Lnws;

    check-cast v3, Lnhb;

    iput-object v2, v3, Lnhb;->L:Lnlq;

    iget v2, v3, Lnhb;->b:I

    or-int/lit16 v2, v2, 0x2000

    iput v2, v3, Lnhb;->b:I

    :cond_49
    move-object/from16 v2, p2

    iget-object v3, v2, Lfcg;->q:Lmqp;

    invoke-virtual {v3}, Lmqp;->g()Z

    move-result v3

    if-eqz v3, :cond_4b

    iget-object v2, v2, Lfcg;->q:Lmqp;

    invoke-virtual {v2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnio;

    iget-object v3, v0, Lbkb;->a:Ljava/lang/Object;

    check-cast v3, Lnwn;

    iget-object v4, v3, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_4a

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_4a
    iget-object v3, v3, Lnwn;->b:Lnws;

    check-cast v3, Lnhb;

    iput-object v2, v3, Lnhb;->V:Lnio;

    iget v2, v3, Lnhb;->b:I

    const/high16 v4, 0x4000000

    or-int/2addr v2, v4

    iput v2, v3, Lnhb;->b:I

    :cond_4b
    invoke-virtual {v1, v0}, Lhjl;->aG(Lbkb;)V

    return-void

    :cond_4c
    move-object/from16 v1, p0

    const/4 v0, 0x0

    goto :goto_7

    :goto_6
    throw v0

    :goto_7
    goto :goto_6
.end method

.method public final aw(ILklv;Lkdj;FZFLnll;IZ)V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lhjl;->r:J

    sget-object v0, Lklv;->a:Lklv;

    const/4 v1, 0x1

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    new-instance v0, Lbkb;

    invoke-direct {v0, p1, p2}, Lbkb;-><init>(IZ)V

    invoke-virtual {v0, p4}, Lbkb;->O(F)V

    if-eq v1, p5, :cond_1

    const/4 p1, 0x2

    goto :goto_1

    :cond_1
    const/4 p1, 0x4

    :goto_1
    invoke-virtual {v0, p1}, Lbkb;->Q(I)V

    invoke-virtual {v0, p6}, Lbkb;->M(F)V

    invoke-virtual {v0, p8}, Lbkb;->R(I)V

    iget-object p1, v0, Lbkb;->a:Ljava/lang/Object;

    check-cast p1, Lnwn;

    iget-object p2, p1, Lnwn;->b:Lnws;

    invoke-virtual {p2}, Lnws;->ac()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p1}, Lnwn;->p()V

    :cond_2
    iget-object p1, p1, Lnwn;->b:Lnws;

    check-cast p1, Lnhb;

    sget-object p2, Lnhb;->Y:Lnhb;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p7, p1, Lnhb;->I:Lnll;

    iget p2, p1, Lnhb;->b:I

    or-int/lit16 p2, p2, 0x400

    iput p2, p1, Lnhb;->b:I

    invoke-virtual {v0, p9}, Lbkb;->K(Z)V

    if-eqz p3, :cond_3

    invoke-virtual {v0, p3}, Lbkb;->I(Lkdj;)V

    :cond_3
    invoke-virtual {p0, v0}, Lhjl;->aG(Lbkb;)V

    return-void
.end method

.method public final ax()V
    .locals 7

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lhjl;->aL(ILnkz;Lnkq;Lngi;Lnlo;Lnhq;)V

    return-void
.end method

.method public final ay(IJJFZ)V
    .locals 4

    new-instance v0, Lbkb;

    const/16 v1, 0x17

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbkb;-><init>(IZ)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lbkb;->O(F)V

    sget-object v1, Lnip;->h:Lnip;

    invoke-virtual {v1}, Lnws;->O()Lnwn;

    move-result-object v1

    iget-object v2, v1, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_0
    iget-object v2, v1, Lnwn;->b:Lnws;

    move-object v3, v2

    check-cast v3, Lnip;

    add-int/lit8 p1, p1, -0x1

    iput p1, v3, Lnip;->b:I

    iget p1, v3, Lnip;->a:I

    or-int/lit8 p1, p1, 0x1

    iput p1, v3, Lnip;->a:I

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_1
    iget-object p1, v1, Lnwn;->b:Lnws;

    move-object v2, p1

    check-cast v2, Lnip;

    iget v3, v2, Lnip;->a:I

    or-int/lit16 v3, v3, 0x100

    iput v3, v2, Lnip;->a:I

    iput-wide p2, v2, Lnip;->f:J

    invoke-virtual {p1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_2
    iget-object p1, v1, Lnwn;->b:Lnws;

    move-object p2, p1

    check-cast p2, Lnip;

    iget p3, p2, Lnip;->a:I

    or-int/lit16 p3, p3, 0x200

    iput p3, p2, Lnip;->a:I

    iput-wide p4, p2, Lnip;->g:J

    invoke-virtual {p1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_3
    iget-object p1, v1, Lnwn;->b:Lnws;

    move-object p2, p1

    check-cast p2, Lnip;

    iget p3, p2, Lnip;->a:I

    or-int/lit8 p3, p3, 0x40

    iput p3, p2, Lnip;->a:I

    iput-boolean p7, p2, Lnip;->d:Z

    invoke-virtual {p1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_4
    iget-object p1, v1, Lnwn;->b:Lnws;

    move-object p2, p1

    check-cast p2, Lnip;

    const/4 p3, 0x2

    iput p3, p2, Lnip;->e:I

    iget p3, p2, Lnip;->a:I

    or-int/lit16 p3, p3, 0x80

    iput p3, p2, Lnip;->a:I

    invoke-virtual {p1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_5
    iget-object p1, v1, Lnwn;->b:Lnws;

    check-cast p1, Lnip;

    iget p2, p1, Lnip;->a:I

    or-int/lit8 p2, p2, 0x20

    iput p2, p1, Lnip;->a:I

    iput p6, p1, Lnip;->c:F

    invoke-virtual {v1}, Lnwn;->i()Lnws;

    move-result-object p1

    check-cast p1, Lnip;

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    iget-object p2, v0, Lbkb;->a:Ljava/lang/Object;

    check-cast p2, Lnwn;

    iget-object p3, p2, Lnwn;->b:Lnws;

    invoke-virtual {p3}, Lnws;->ac()Z

    move-result p3

    if-nez p3, :cond_7

    invoke-virtual {p2}, Lnwn;->p()V

    :cond_7
    iget-object p2, p2, Lnwn;->b:Lnws;

    check-cast p2, Lnhb;

    sget-object p3, Lnhb;->Y:Lnhb;

    iput-object p1, p2, Lnhb;->x:Lnip;

    iget p1, p2, Lnhb;->a:I

    const/high16 p3, 0x40000000    # 2.0f

    or-int/2addr p1, p3

    iput p1, p2, Lnhb;->a:I

    :goto_0
    invoke-virtual {p0, v0}, Lhjl;->aG(Lbkb;)V

    return-void
.end method

.method public final az()V
    .locals 5

    sget-object v0, Lngr;->av:Lngr;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    sget-object v1, Lngq;->W:Lngq;

    iget-object v2, v0, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v2, v0, Lnwn;->b:Lnws;

    check-cast v2, Lngr;

    iget v1, v1, Lngq;->ar:I

    iput v1, v2, Lngr;->d:I

    iget v1, v2, Lngr;->a:I

    const/4 v3, 0x1

    or-int/2addr v1, v3

    iput v1, v2, Lngr;->a:I

    sget-object v1, Lnlg;->c:Lnlg;

    invoke-virtual {v1}, Lnws;->O()Lnwn;

    move-result-object v1

    iget-object v2, v1, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_1
    iget-object v2, v1, Lnwn;->b:Lnws;

    check-cast v2, Lnlg;

    iput v3, v2, Lnlg;->b:I

    iget v4, v2, Lnlg;->a:I

    or-int/2addr v3, v4

    iput v3, v2, Lnlg;->a:I

    invoke-virtual {v1}, Lnwn;->i()Lnws;

    move-result-object v1

    check-cast v1, Lnlg;

    iget-object v2, v0, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_2
    iget-object v2, v0, Lnwn;->b:Lnws;

    check-cast v2, Lngr;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v2, Lngr;->Y:Lnlg;

    iget v1, v2, Lngr;->b:I

    const/high16 v3, 0x20000000

    or-int/2addr v1, v3

    iput v1, v2, Lngr;->b:I

    invoke-virtual {p0, v0}, Lhjl;->aF(Lnwn;)V

    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/util/List;J)V
    .locals 5

    sget-object v0, Lngr;->av:Lngr;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    sget-object v1, Lngq;->ap:Lngq;

    iget-object v2, v0, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v2, v0, Lnwn;->b:Lnws;

    check-cast v2, Lngr;

    iget v1, v1, Lngq;->ar:I

    iput v1, v2, Lngr;->d:I

    iget v1, v2, Lngr;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v2, Lngr;->a:I

    sget-object v1, Lngc;->e:Lngc;

    invoke-virtual {v1}, Lnws;->O()Lnwn;

    move-result-object v1

    iget-object v2, v1, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_1
    iget-object v2, v1, Lnwn;->b:Lnws;

    move-object v3, v2

    check-cast v3, Lngc;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v4, v3, Lngc;->a:I

    or-int/lit8 v4, v4, 0x1

    iput v4, v3, Lngc;->a:I

    iput-object p1, v3, Lngc;->b:Ljava/lang/String;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_2
    iget-object p1, v1, Lnwn;->b:Lnws;

    check-cast p1, Lngc;

    iget-object v2, p1, Lngc;->c:Lnxa;

    invoke-interface {v2}, Lnxa;->c()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v2}, Lnws;->U(Lnxa;)Lnxa;

    move-result-object v2

    iput-object v2, p1, Lngc;->c:Lnxa;

    :cond_3
    iget-object p1, p1, Lngc;->c:Lnxa;

    invoke-static {p2, p1}, Lnvd;->e(Ljava/lang/Iterable;Ljava/util/List;)V

    iget-object p1, v1, Lnwn;->b:Lnws;

    invoke-virtual {p1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_4
    iget-object p1, v1, Lnwn;->b:Lnws;

    check-cast p1, Lngc;

    iget p2, p1, Lngc;->a:I

    or-int/lit8 p2, p2, 0x2

    iput p2, p1, Lngc;->a:I

    iput-wide p3, p1, Lngc;->d:J

    iget-object p1, v0, Lnwn;->b:Lnws;

    invoke-virtual {p1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_5
    iget-object p1, v0, Lnwn;->b:Lnws;

    check-cast p1, Lngr;

    invoke-virtual {v1}, Lnwn;->i()Lnws;

    move-result-object p2

    check-cast p2, Lngc;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p1, Lngr;->at:Lngc;

    iget p2, p1, Lngr;->c:I

    const/high16 p3, 0x40000

    or-int/2addr p2, p3

    iput p2, p1, Lngr;->c:I

    invoke-virtual {p0, v0}, Lhjl;->aF(Lnwn;)V

    return-void
.end method

.method public final bU(Lgej;Lgec;I)V
    .locals 4

    sget-object v0, Lngr;->av:Lngr;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    sget-object v1, Lngq;->O:Lngq;

    iget-object v2, v0, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v2, v0, Lnwn;->b:Lnws;

    check-cast v2, Lngr;

    iget v1, v1, Lngq;->ar:I

    iput v1, v2, Lngr;->d:I

    iget v1, v2, Lngr;->a:I

    const/4 v3, 0x1

    or-int/2addr v1, v3

    iput v1, v2, Lngr;->a:I

    sget-object v1, Lnka;->e:Lnka;

    invoke-virtual {v1}, Lnws;->O()Lnwn;

    move-result-object v1

    iget-object v2, v1, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_1
    iget-object v2, v1, Lnwn;->b:Lnws;

    check-cast v2, Lnka;

    add-int/lit8 p3, p3, -0x1

    iput p3, v2, Lnka;->c:I

    iget p3, v2, Lnka;->a:I

    or-int/lit8 p3, p3, 0x2

    iput p3, v2, Lnka;->a:I

    sget-object p3, Lhji;->a:Lhji;

    iget-object p3, p3, Lhji;->b:Ljava/util/Map;

    sget-object v2, Lnjz;->a:Lnjz;

    invoke-static {p3, p1, v2}, Lj$/util/Map$-EL;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnjz;

    iget-object p3, v1, Lnwn;->b:Lnws;

    invoke-virtual {p3}, Lnws;->ac()Z

    move-result p3

    if-nez p3, :cond_2

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_2
    iget-object p3, v1, Lnwn;->b:Lnws;

    check-cast p3, Lnka;

    iget p1, p1, Lnjz;->aD:I

    iput p1, p3, Lnka;->b:I

    iget p1, p3, Lnka;->a:I

    or-int/2addr p1, v3

    iput p1, p3, Lnka;->a:I

    invoke-virtual {p2}, Lgec;->ordinal()I

    move-result p1

    const/4 p2, 0x4

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const/16 v3, 0x1e

    goto/16 :goto_0

    :pswitch_1
    const/16 v3, 0x1d

    goto/16 :goto_0

    :pswitch_2
    const/16 v3, 0x1c

    goto :goto_0

    :pswitch_3
    const/16 v3, 0x1b

    goto :goto_0

    :pswitch_4
    const/16 v3, 0x1a

    goto :goto_0

    :pswitch_5
    const/16 v3, 0x19

    goto :goto_0

    :pswitch_6
    const/16 v3, 0x18

    goto :goto_0

    :pswitch_7
    const/16 v3, 0x17

    goto :goto_0

    :pswitch_8
    const/16 v3, 0x16

    goto :goto_0

    :pswitch_9
    const/16 v3, 0x15

    goto :goto_0

    :pswitch_a
    const/16 v3, 0x14

    goto :goto_0

    :pswitch_b
    const/16 v3, 0x13

    goto :goto_0

    :pswitch_c
    const/16 v3, 0x12

    goto :goto_0

    :pswitch_d
    const/16 v3, 0x11

    goto :goto_0

    :pswitch_e
    const/16 v3, 0x10

    goto :goto_0

    :pswitch_f
    const/16 v3, 0xf

    goto :goto_0

    :pswitch_10
    const/16 v3, 0xe

    goto :goto_0

    :pswitch_11
    const/16 v3, 0xd

    goto :goto_0

    :pswitch_12
    const/16 v3, 0xc

    goto :goto_0

    :pswitch_13
    const/16 v3, 0xb

    goto :goto_0

    :pswitch_14
    const/16 v3, 0xa

    goto :goto_0

    :pswitch_15
    const/16 v3, 0x9

    goto :goto_0

    :pswitch_16
    const/16 v3, 0x8

    goto :goto_0

    :pswitch_17
    const/4 v3, 0x7

    goto :goto_0

    :pswitch_18
    const/4 v3, 0x6

    goto :goto_0

    :pswitch_19
    const/4 v3, 0x5

    goto :goto_0

    :pswitch_1a
    const/4 v3, 0x4

    goto :goto_0

    :pswitch_1b
    const/4 v3, 0x3

    goto :goto_0

    :pswitch_1c
    const/16 v3, 0x1f

    :goto_0
    iget-object p1, v1, Lnwn;->b:Lnws;

    invoke-virtual {p1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_3
    iget-object p1, v1, Lnwn;->b:Lnws;

    check-cast p1, Lnka;

    add-int/lit8 v3, v3, -0x1

    iput v3, p1, Lnka;->d:I

    iget p3, p1, Lnka;->a:I

    or-int/2addr p2, p3

    iput p2, p1, Lnka;->a:I

    iget-object p1, v0, Lnwn;->b:Lnws;

    invoke-virtual {p1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_4
    iget-object p1, v0, Lnwn;->b:Lnws;

    check-cast p1, Lngr;

    invoke-virtual {v1}, Lnwn;->i()Lnws;

    move-result-object p2

    check-cast p2, Lnka;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p1, Lngr;->Q:Lnka;

    iget p2, p1, Lngr;->b:I

    const/high16 p3, 0x80000

    or-int/2addr p2, p3

    iput p2, p1, Lngr;->b:I

    invoke-virtual {p0, v0}, Lhjl;->aF(Lnwn;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(FFF)V
    .locals 8

    sget-object v0, Lnhq;->g:Lnhq;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v1, v0, Lnwn;->b:Lnws;

    move-object v2, v1

    check-cast v2, Lnhq;

    iget v3, v2, Lnhq;->a:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v2, Lnhq;->a:I

    iput p1, v2, Lnhq;->d:F

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_1
    iget-object p1, v0, Lnwn;->b:Lnws;

    move-object v1, p1

    check-cast v1, Lnhq;

    iget v2, v1, Lnhq;->a:I

    or-int/lit8 v2, v2, 0x8

    iput v2, v1, Lnhq;->a:I

    iput p2, v1, Lnhq;->e:F

    invoke-virtual {p1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_2
    iget-object p1, v0, Lnwn;->b:Lnws;

    check-cast p1, Lnhq;

    iget p2, p1, Lnhq;->a:I

    or-int/lit8 p2, p2, 0x10

    iput p2, p1, Lnhq;->a:I

    iput p3, p1, Lnhq;->f:F

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0}, Lnwn;->i()Lnws;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Lnhq;

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lhjl;->aL(ILnkz;Lnkq;Lngi;Lnlo;Lnhq;)V

    return-void
.end method

.method public final d(IIII)V
    .locals 4

    sget-object v0, Lnhu;->f:Lnhu;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v1, v0, Lnwn;->b:Lnws;

    move-object v2, v1

    check-cast v2, Lnhu;

    iget v3, v2, Lnhu;->a:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Lnhu;->a:I

    iput p1, v2, Lnhu;->b:I

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_1
    iget-object p1, v0, Lnwn;->b:Lnws;

    move-object v1, p1

    check-cast v1, Lnhu;

    iget v2, v1, Lnhu;->a:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Lnhu;->a:I

    iput p2, v1, Lnhu;->c:I

    invoke-virtual {p1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_2
    iget-object p1, v0, Lnwn;->b:Lnws;

    move-object p2, p1

    check-cast p2, Lnhu;

    iget v1, p2, Lnhu;->a:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p2, Lnhu;->a:I

    iput p3, p2, Lnhu;->d:I

    invoke-virtual {p1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_3
    iget-object p1, v0, Lnwn;->b:Lnws;

    check-cast p1, Lnhu;

    iget p2, p1, Lnhu;->a:I

    or-int/lit8 p2, p2, 0x8

    iput p2, p1, Lnhu;->a:I

    iput p4, p1, Lnhu;->e:I

    sget-object p1, Lngr;->av:Lngr;

    invoke-virtual {p1}, Lnws;->O()Lnwn;

    move-result-object p1

    sget-object p2, Lngq;->X:Lngq;

    iget-object p3, p1, Lnwn;->b:Lnws;

    invoke-virtual {p3}, Lnws;->ac()Z

    move-result p3

    if-nez p3, :cond_4

    invoke-virtual {p1}, Lnwn;->p()V

    :cond_4
    iget-object p3, p1, Lnwn;->b:Lnws;

    check-cast p3, Lngr;

    iget p2, p2, Lngq;->ar:I

    iput p2, p3, Lngr;->d:I

    iget p2, p3, Lngr;->a:I

    or-int/lit8 p2, p2, 0x1

    iput p2, p3, Lngr;->a:I

    sget-object p2, Lngt;->d:Lngt;

    invoke-virtual {p2}, Lnws;->O()Lnwn;

    move-result-object p2

    invoke-virtual {v0}, Lnwn;->i()Lnws;

    move-result-object p3

    check-cast p3, Lnhu;

    iget-object p4, p2, Lnwn;->b:Lnws;

    invoke-virtual {p4}, Lnws;->ac()Z

    move-result p4

    if-nez p4, :cond_5

    invoke-virtual {p2}, Lnwn;->p()V

    :cond_5
    iget-object p4, p2, Lnwn;->b:Lnws;

    check-cast p4, Lngt;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p4, Lngt;->c:Lnhu;

    iget p3, p4, Lngt;->a:I

    or-int/lit8 p3, p3, 0x2

    iput p3, p4, Lngt;->a:I

    invoke-virtual {p2}, Lnwn;->i()Lnws;

    move-result-object p2

    check-cast p2, Lngt;

    iget-object p3, p1, Lnwn;->b:Lnws;

    invoke-virtual {p3}, Lnws;->ac()Z

    move-result p3

    if-nez p3, :cond_6

    invoke-virtual {p1}, Lnwn;->p()V

    :cond_6
    iget-object p3, p1, Lnwn;->b:Lnws;

    check-cast p3, Lngr;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p3, Lngr;->Z:Lngt;

    iget p2, p3, Lngr;->b:I

    const/high16 p4, 0x40000000    # 2.0f

    or-int/2addr p2, p4

    iput p2, p3, Lngr;->b:I

    invoke-virtual {p0, p1}, Lhjl;->aF(Lnwn;)V

    return-void
.end method

.method public final e(Ljava/lang/String;IIIIIJ)V
    .locals 4

    sget-object v0, Lnic;->i:Lnic;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v1, v0, Lnwn;->b:Lnws;

    move-object v2, v1

    check-cast v2, Lnic;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, v2, Lnic;->a:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Lnic;->a:I

    iput-object p1, v2, Lnic;->b:Ljava/lang/String;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_1
    iget-object p1, v0, Lnwn;->b:Lnws;

    move-object v1, p1

    check-cast v1, Lnic;

    iget v2, v1, Lnic;->a:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Lnic;->a:I

    iput p2, v1, Lnic;->c:I

    invoke-virtual {p1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_2
    iget-object p1, v0, Lnwn;->b:Lnws;

    move-object p2, p1

    check-cast p2, Lnic;

    iget v1, p2, Lnic;->a:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p2, Lnic;->a:I

    iput p3, p2, Lnic;->d:I

    invoke-virtual {p1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_3
    iget-object p1, v0, Lnwn;->b:Lnws;

    move-object p2, p1

    check-cast p2, Lnic;

    iget p3, p2, Lnic;->a:I

    or-int/lit8 p3, p3, 0x8

    iput p3, p2, Lnic;->a:I

    iput p4, p2, Lnic;->e:I

    invoke-virtual {p1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_4
    iget-object p1, v0, Lnwn;->b:Lnws;

    move-object p2, p1

    check-cast p2, Lnic;

    iget p3, p2, Lnic;->a:I

    or-int/lit8 p3, p3, 0x10

    iput p3, p2, Lnic;->a:I

    iput p5, p2, Lnic;->f:I

    invoke-virtual {p1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_5
    iget-object p1, v0, Lnwn;->b:Lnws;

    move-object p2, p1

    check-cast p2, Lnic;

    iget p3, p2, Lnic;->a:I

    or-int/lit8 p3, p3, 0x20

    iput p3, p2, Lnic;->a:I

    iput p6, p2, Lnic;->g:I

    invoke-virtual {p1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_6
    iget-object p1, v0, Lnwn;->b:Lnws;

    check-cast p1, Lnic;

    iget p2, p1, Lnic;->a:I

    or-int/lit8 p2, p2, 0x40

    iput p2, p1, Lnic;->a:I

    iput-wide p7, p1, Lnic;->h:J

    sget-object p1, Lngr;->av:Lngr;

    invoke-virtual {p1}, Lnws;->O()Lnwn;

    move-result-object p1

    sget-object p2, Lngq;->X:Lngq;

    iget-object p3, p1, Lnwn;->b:Lnws;

    invoke-virtual {p3}, Lnws;->ac()Z

    move-result p3

    if-nez p3, :cond_7

    invoke-virtual {p1}, Lnwn;->p()V

    :cond_7
    iget-object p3, p1, Lnwn;->b:Lnws;

    check-cast p3, Lngr;

    iget p2, p2, Lngq;->ar:I

    iput p2, p3, Lngr;->d:I

    iget p2, p3, Lngr;->a:I

    or-int/lit8 p2, p2, 0x1

    iput p2, p3, Lngr;->a:I

    sget-object p2, Lngt;->d:Lngt;

    invoke-virtual {p2}, Lnws;->O()Lnwn;

    move-result-object p2

    invoke-virtual {v0}, Lnwn;->i()Lnws;

    move-result-object p3

    check-cast p3, Lnic;

    iget-object p4, p2, Lnwn;->b:Lnws;

    invoke-virtual {p4}, Lnws;->ac()Z

    move-result p4

    if-nez p4, :cond_8

    invoke-virtual {p2}, Lnwn;->p()V

    :cond_8
    iget-object p4, p2, Lnwn;->b:Lnws;

    check-cast p4, Lngt;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p4, Lngt;->b:Lnic;

    iget p3, p4, Lngt;->a:I

    or-int/lit8 p3, p3, 0x1

    iput p3, p4, Lngt;->a:I

    invoke-virtual {p2}, Lnwn;->i()Lnws;

    move-result-object p2

    check-cast p2, Lngt;

    iget-object p3, p1, Lnwn;->b:Lnws;

    invoke-virtual {p3}, Lnws;->ac()Z

    move-result p3

    if-nez p3, :cond_9

    invoke-virtual {p1}, Lnwn;->p()V

    :cond_9
    iget-object p3, p1, Lnwn;->b:Lnws;

    check-cast p3, Lngr;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p3, Lngr;->Z:Lngt;

    iget p2, p3, Lngr;->b:I

    const/high16 p4, 0x40000000    # 2.0f

    or-int/2addr p2, p4

    iput p2, p3, Lngr;->b:I

    invoke-virtual {p0, p1}, Lhjl;->aF(Lnwn;)V

    return-void
.end method

.method public final f(ZLandroid/graphics/PointF;)V
    .locals 5

    sget-object v0, Lngr;->av:Lngr;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    sget-object v1, Lngq;->h:Lngq;

    iget-object v2, v0, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v2, v0, Lnwn;->b:Lnws;

    check-cast v2, Lngr;

    iget v1, v1, Lngq;->ar:I

    iput v1, v2, Lngr;->d:I

    iget v1, v2, Lngr;->a:I

    const/4 v3, 0x1

    or-int/2addr v1, v3

    iput v1, v2, Lngr;->a:I

    sget-object v1, Lnid;->d:Lnid;

    invoke-virtual {v1}, Lnws;->O()Lnwn;

    move-result-object v1

    const/4 v2, 0x2

    if-eq v3, p1, :cond_1

    const/4 p1, 0x3

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    :goto_0
    iget-object v4, v1, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_2
    iget-object v4, v1, Lnwn;->b:Lnws;

    check-cast v4, Lnid;

    add-int/lit8 p1, p1, -0x1

    iput p1, v4, Lnid;->b:I

    iget p1, v4, Lnid;->a:I

    or-int/2addr p1, v3

    iput p1, v4, Lnid;->a:I

    invoke-static {p2}, Lhjl;->aK(Landroid/graphics/PointF;)Lnlf;

    move-result-object p1

    iget-object p2, v1, Lnwn;->b:Lnws;

    invoke-virtual {p2}, Lnws;->ac()Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_3
    iget-object p2, v1, Lnwn;->b:Lnws;

    check-cast p2, Lnid;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p2, Lnid;->c:Lnlf;

    iget p1, p2, Lnid;->a:I

    or-int/2addr p1, v2

    iput p1, p2, Lnid;->a:I

    iget-object p1, v0, Lnwn;->b:Lnws;

    invoke-virtual {p1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_4
    iget-object p1, v0, Lnwn;->b:Lnws;

    check-cast p1, Lngr;

    invoke-virtual {v1}, Lnwn;->i()Lnws;

    move-result-object p2

    check-cast p2, Lnid;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p1, Lngr;->I:Lnid;

    iget p2, p1, Lngr;->b:I

    or-int/lit16 p2, p2, 0x800

    iput p2, p1, Lngr;->b:I

    invoke-virtual {p0, v0}, Lhjl;->aF(Lnwn;)V

    return-void
.end method

.method public final g(ZLandroid/graphics/PointF;JII)V
    .locals 5

    sget-object v0, Lngr;->av:Lngr;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    sget-object v1, Lngq;->h:Lngq;

    iget-object v2, v0, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v2, v0, Lnwn;->b:Lnws;

    check-cast v2, Lngr;

    iget v1, v1, Lngq;->ar:I

    iput v1, v2, Lngr;->d:I

    iget v1, v2, Lngr;->a:I

    const/4 v3, 0x1

    or-int/2addr v1, v3

    iput v1, v2, Lngr;->a:I

    sget-object v1, Lnie;->g:Lnie;

    invoke-virtual {v1}, Lnws;->O()Lnwn;

    move-result-object v1

    const/4 v2, 0x2

    if-eq v3, p1, :cond_1

    const/4 p1, 0x3

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    :goto_0
    iget-object v4, v1, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_2
    iget-object v4, v1, Lnwn;->b:Lnws;

    check-cast v4, Lnie;

    add-int/lit8 p1, p1, -0x1

    iput p1, v4, Lnie;->b:I

    iget p1, v4, Lnie;->a:I

    or-int/2addr p1, v3

    iput p1, v4, Lnie;->a:I

    invoke-static {p2}, Lhjl;->aK(Landroid/graphics/PointF;)Lnlf;

    move-result-object p1

    iget-object p2, v1, Lnwn;->b:Lnws;

    invoke-virtual {p2}, Lnws;->ac()Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_3
    iget-object p2, v1, Lnwn;->b:Lnws;

    move-object v3, p2

    check-cast v3, Lnie;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, v3, Lnie;->c:Lnlf;

    iget p1, v3, Lnie;->a:I

    or-int/2addr p1, v2

    iput p1, v3, Lnie;->a:I

    invoke-virtual {p2}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_4
    iget-object p1, v1, Lnwn;->b:Lnws;

    move-object p2, p1

    check-cast p2, Lnie;

    iget v2, p2, Lnie;->a:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p2, Lnie;->a:I

    iput-wide p3, p2, Lnie;->d:J

    invoke-static {p6}, Lmoz;->J(I)I

    move-result p2

    invoke-virtual {p1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_5
    iget-object p1, v1, Lnwn;->b:Lnws;

    move-object p3, p1

    check-cast p3, Lnie;

    add-int/lit8 p4, p2, -0x1

    if-eqz p2, :cond_8

    iput p4, p3, Lnie;->e:I

    iget p2, p3, Lnie;->a:I

    or-int/lit8 p2, p2, 0x10

    iput p2, p3, Lnie;->a:I

    invoke-virtual {p1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_6
    iget-object p1, v1, Lnwn;->b:Lnws;

    check-cast p1, Lnie;

    iget p2, p1, Lnie;->a:I

    or-int/lit8 p2, p2, 0x20

    iput p2, p1, Lnie;->a:I

    iput p5, p1, Lnie;->f:I

    iget-object p1, v0, Lnwn;->b:Lnws;

    invoke-virtual {p1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_7
    iget-object p1, v0, Lnwn;->b:Lnws;

    check-cast p1, Lngr;

    invoke-virtual {v1}, Lnwn;->i()Lnws;

    move-result-object p2

    check-cast p2, Lnie;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p1, Lngr;->J:Lnie;

    iget p2, p1, Lngr;->b:I

    or-int/lit16 p2, p2, 0x1000

    iput p2, p1, Lngr;->b:I

    invoke-virtual {p0, v0}, Lhjl;->aF(Lnwn;)V

    return-void

    :cond_8
    const/4 p1, 0x0

    throw p1
.end method

.method public final h(Z)V
    .locals 4

    sget-object v0, Lngr;->av:Lngr;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    sget-object v1, Lngq;->S:Lngq;

    iget-object v2, v0, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v2, v0, Lnwn;->b:Lnws;

    check-cast v2, Lngr;

    iget v1, v1, Lngq;->ar:I

    iput v1, v2, Lngr;->d:I

    iget v1, v2, Lngr;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v2, Lngr;->a:I

    sget-object v1, Lnil;->c:Lnil;

    invoke-virtual {v1}, Lnws;->O()Lnwn;

    move-result-object v1

    iget-object v2, v1, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_1
    iget-object v2, v1, Lnwn;->b:Lnws;

    check-cast v2, Lnil;

    iget v3, v2, Lnil;->a:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Lnil;->a:I

    iput-boolean p1, v2, Lnil;->b:Z

    invoke-virtual {v1}, Lnwn;->i()Lnws;

    move-result-object p1

    check-cast p1, Lnil;

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_2
    iget-object v1, v0, Lnwn;->b:Lnws;

    check-cast v1, Lngr;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, v1, Lngr;->U:Lnil;

    iget p1, v1, Lngr;->b:I

    const/high16 v2, 0x1000000

    or-int/2addr p1, v2

    iput p1, v1, Lngr;->b:I

    invoke-virtual {p0, v0}, Lhjl;->aF(Lnwn;)V

    return-void
.end method

.method public final i(Lnir;)V
    .locals 4

    sget-object v0, Lngr;->av:Lngr;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    sget-object v1, Lngq;->N:Lngq;

    iget-object v2, v0, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v2, v0, Lnwn;->b:Lnws;

    move-object v3, v2

    check-cast v3, Lngr;

    iget v1, v1, Lngq;->ar:I

    iput v1, v3, Lngr;->d:I

    iget v1, v3, Lngr;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v3, Lngr;->a:I

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_1
    iget-object v1, v0, Lnwn;->b:Lnws;

    check-cast v1, Lngr;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, v1, Lngr;->P:Lnir;

    iget p1, v1, Lngr;->b:I

    const/high16 v2, 0x40000

    or-int/2addr p1, v2

    iput p1, v1, Lngr;->b:I

    invoke-virtual {p0, v0}, Lhjl;->aF(Lnwn;)V

    return-void
.end method

.method public final j()V
    .locals 6

    sget-object v0, Lngr;->av:Lngr;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    sget-object v1, Lngq;->x:Lngq;

    iget-object v2, v0, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v2, v0, Lnwn;->b:Lnws;

    check-cast v2, Lngr;

    iget v1, v1, Lngq;->ar:I

    iput v1, v2, Lngr;->d:I

    iget v1, v2, Lngr;->a:I

    const/4 v3, 0x1

    or-int/2addr v1, v3

    iput v1, v2, Lngr;->a:I

    sget-object v1, Lnkn;->d:Lnkn;

    invoke-virtual {v1}, Lnws;->O()Lnwn;

    move-result-object v1

    iget-object v2, v1, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_1
    iget-object v2, v1, Lnwn;->b:Lnws;

    move-object v4, v2

    check-cast v4, Lnkn;

    iput v3, v4, Lnkn;->b:I

    iget v5, v4, Lnkn;->a:I

    or-int/2addr v5, v3

    iput v5, v4, Lnkn;->a:I

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_2
    iget-object v2, v1, Lnwn;->b:Lnws;

    check-cast v2, Lnkn;

    iput v3, v2, Lnkn;->c:I

    iget v3, v2, Lnkn;->a:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Lnkn;->a:I

    iget-object v2, v0, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_3
    iget-object v2, v0, Lnwn;->b:Lnws;

    check-cast v2, Lngr;

    invoke-virtual {v1}, Lnwn;->i()Lnws;

    move-result-object v1

    check-cast v1, Lnkn;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v2, Lngr;->A:Lnkn;

    iget v1, v2, Lngr;->a:I

    const/high16 v3, 0x40000000    # 2.0f

    or-int/2addr v1, v3

    iput v1, v2, Lngr;->a:I

    invoke-virtual {p0, v0}, Lhjl;->aF(Lnwn;)V

    return-void
.end method

.method public final k()V
    .locals 7

    sget-object v0, Lngr;->av:Lngr;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    sget-object v1, Lngq;->x:Lngq;

    iget-object v2, v0, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v2, v0, Lnwn;->b:Lnws;

    check-cast v2, Lngr;

    iget v1, v1, Lngq;->ar:I

    iput v1, v2, Lngr;->d:I

    iget v1, v2, Lngr;->a:I

    const/4 v3, 0x1

    or-int/2addr v1, v3

    iput v1, v2, Lngr;->a:I

    sget-object v1, Lnkn;->d:Lnkn;

    invoke-virtual {v1}, Lnws;->O()Lnwn;

    move-result-object v1

    iget-object v2, v1, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_1
    iget-object v2, v1, Lnwn;->b:Lnws;

    move-object v4, v2

    check-cast v4, Lnkn;

    const/4 v5, 0x2

    iput v5, v4, Lnkn;->b:I

    iget v6, v4, Lnkn;->a:I

    or-int/2addr v6, v3

    iput v6, v4, Lnkn;->a:I

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_2
    iget-object v2, v1, Lnwn;->b:Lnws;

    check-cast v2, Lnkn;

    iput v3, v2, Lnkn;->c:I

    iget v3, v2, Lnkn;->a:I

    or-int/2addr v3, v5

    iput v3, v2, Lnkn;->a:I

    iget-object v2, v0, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_3
    iget-object v2, v0, Lnwn;->b:Lnws;

    check-cast v2, Lngr;

    invoke-virtual {v1}, Lnwn;->i()Lnws;

    move-result-object v1

    check-cast v1, Lnkn;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v2, Lngr;->A:Lnkn;

    iget v1, v2, Lngr;->a:I

    const/high16 v3, 0x40000000    # 2.0f

    or-int/2addr v1, v3

    iput v1, v2, Lngr;->a:I

    invoke-virtual {p0, v0}, Lhjl;->aF(Lnwn;)V

    return-void
.end method

.method public final l(I)V
    .locals 7

    if-gtz p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lngr;->av:Lngr;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    iget-wide v1, p0, Lhjl;->n:J

    iget-object v3, v0, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_1
    iget-object v3, v0, Lnwn;->b:Lnws;

    move-object v4, v3

    check-cast v4, Lngr;

    iget v5, v4, Lngr;->a:I

    const/high16 v6, 0x8000000

    or-int/2addr v5, v6

    iput v5, v4, Lngr;->a:I

    iput-wide v1, v4, Lngr;->x:J

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_2
    iget-object v1, v0, Lnwn;->b:Lnws;

    check-cast v1, Lngr;

    iget v2, v1, Lngr;->c:I

    const/high16 v3, 0x80000

    or-int/2addr v2, v3

    iput v2, v1, Lngr;->c:I

    iput p1, v1, Lngr;->au:I

    invoke-virtual {p0, v0}, Lhjl;->aF(Lnwn;)V

    return-void
.end method

.method public final m(I)V
    .locals 7

    if-gtz p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lngr;->av:Lngr;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    iget-wide v1, p0, Lhjl;->n:J

    iget-object v3, v0, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_1
    iget-object v3, v0, Lnwn;->b:Lnws;

    move-object v4, v3

    check-cast v4, Lngr;

    iget v5, v4, Lngr;->a:I

    const/high16 v6, 0x8000000

    or-int/2addr v5, v6

    iput v5, v4, Lngr;->a:I

    iput-wide v1, v4, Lngr;->x:J

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_2
    iget-object v1, v0, Lnwn;->b:Lnws;

    check-cast v1, Lngr;

    iget v2, v1, Lngr;->c:I

    const/high16 v3, 0x20000

    or-int/2addr v2, v3

    iput v2, v1, Lngr;->c:I

    iput p1, v1, Lngr;->as:I

    invoke-virtual {p0, v0}, Lhjl;->aF(Lnwn;)V

    return-void
.end method

.method public final n()V
    .locals 5

    sget-object v0, Lngr;->av:Lngr;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    sget-object v1, Lngq;->g:Lngq;

    iget-object v2, v0, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v2, v0, Lnwn;->b:Lnws;

    check-cast v2, Lngr;

    iget v1, v1, Lngq;->ar:I

    iput v1, v2, Lngr;->d:I

    iget v1, v2, Lngr;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v2, Lngr;->a:I

    sget-object v1, Lngs;->m:Lngs;

    invoke-virtual {v1}, Lnws;->O()Lnwn;

    move-result-object v1

    iget-object v2, v1, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_1
    iget-object v2, v1, Lnwn;->b:Lnws;

    move-object v3, v2

    check-cast v3, Lngs;

    const/16 v4, 0x8

    iput v4, v3, Lngs;->b:I

    iget v4, v3, Lngs;->a:I

    or-int/lit8 v4, v4, 0x1

    iput v4, v3, Lngs;->a:I

    iget-object v3, p0, Lhjl;->e:Ljava/lang/String;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_2
    iget-object v2, v1, Lnwn;->b:Lnws;

    check-cast v2, Lngs;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v4, v2, Lngs;->a:I

    or-int/lit8 v4, v4, 0x4

    iput v4, v2, Lngs;->a:I

    iput-object v3, v2, Lngs;->d:Ljava/lang/String;

    iget-object v2, v0, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_3
    iget-object v2, v0, Lnwn;->b:Lnws;

    check-cast v2, Lngr;

    invoke-virtual {v1}, Lnwn;->i()Lnws;

    move-result-object v1

    check-cast v1, Lngs;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v2, Lngr;->j:Lngs;

    iget v1, v2, Lngr;->a:I

    or-int/lit16 v1, v1, 0x80

    iput v1, v2, Lngr;->a:I

    invoke-virtual {p0, v0}, Lhjl;->aF(Lnwn;)V

    return-void
.end method

.method public final o()V
    .locals 5

    sget-object v0, Lngr;->av:Lngr;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    sget-object v1, Lngq;->B:Lngq;

    iget-object v2, v0, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v2, v0, Lnwn;->b:Lnws;

    check-cast v2, Lngr;

    iget v1, v1, Lngq;->ar:I

    iput v1, v2, Lngr;->d:I

    iget v1, v2, Lngr;->a:I

    const/4 v3, 0x1

    or-int/2addr v1, v3

    iput v1, v2, Lngr;->a:I

    sget-object v1, Lnge;->c:Lnge;

    invoke-virtual {v1}, Lnws;->O()Lnwn;

    move-result-object v1

    iget-object v2, v1, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_1
    iget-object v2, v1, Lnwn;->b:Lnws;

    check-cast v2, Lnge;

    iput v3, v2, Lnge;->b:I

    iget v4, v2, Lnge;->a:I

    or-int/2addr v3, v4

    iput v3, v2, Lnge;->a:I

    iget-object v2, v0, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_2
    iget-object v2, v0, Lnwn;->b:Lnws;

    check-cast v2, Lngr;

    invoke-virtual {v1}, Lnwn;->i()Lnws;

    move-result-object v1

    check-cast v1, Lnge;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v2, Lngr;->D:Lnge;

    iget v1, v2, Lngr;->b:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v2, Lngr;->b:I

    invoke-virtual {p0, v0}, Lhjl;->aF(Lnwn;)V

    return-void
.end method

.method public final p()V
    .locals 4

    sget-object v0, Lngr;->av:Lngr;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    sget-object v1, Lngq;->B:Lngq;

    iget-object v2, v0, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v2, v0, Lnwn;->b:Lnws;

    check-cast v2, Lngr;

    iget v1, v1, Lngq;->ar:I

    iput v1, v2, Lngr;->d:I

    iget v1, v2, Lngr;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v2, Lngr;->a:I

    sget-object v1, Lnge;->c:Lnge;

    invoke-virtual {v1}, Lnws;->O()Lnwn;

    move-result-object v1

    iget-object v2, v1, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_1
    iget-object v2, v1, Lnwn;->b:Lnws;

    check-cast v2, Lnge;

    const/4 v3, 0x4

    iput v3, v2, Lnge;->b:I

    iget v3, v2, Lnge;->a:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Lnge;->a:I

    iget-object v2, v0, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_2
    iget-object v2, v0, Lnwn;->b:Lnws;

    check-cast v2, Lngr;

    invoke-virtual {v1}, Lnwn;->i()Lnws;

    move-result-object v1

    check-cast v1, Lnge;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v2, Lngr;->D:Lnge;

    iget v1, v2, Lngr;->b:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v2, Lngr;->b:I

    invoke-virtual {p0, v0}, Lhjl;->aF(Lnwn;)V

    return-void
.end method

.method public final q()V
    .locals 4

    sget-object v0, Lngr;->av:Lngr;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    sget-object v1, Lngq;->U:Lngq;

    iget-object v2, v0, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v2, v0, Lnwn;->b:Lnws;

    check-cast v2, Lngr;

    iget v1, v1, Lngq;->ar:I

    iput v1, v2, Lngr;->d:I

    iget v1, v2, Lngr;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v2, Lngr;->a:I

    sget-object v1, Lngd;->c:Lngd;

    invoke-virtual {v1}, Lnws;->O()Lnwn;

    move-result-object v1

    iget-object v2, v1, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_1
    iget-object v2, v1, Lnwn;->b:Lnws;

    check-cast v2, Lngd;

    const/4 v3, 0x4

    iput v3, v2, Lngd;->b:I

    iget v3, v2, Lngd;->a:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Lngd;->a:I

    iget-object v2, v0, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_2
    iget-object v2, v0, Lnwn;->b:Lnws;

    check-cast v2, Lngr;

    invoke-virtual {v1}, Lnwn;->i()Lnws;

    move-result-object v1

    check-cast v1, Lngd;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v2, Lngr;->V:Lngd;

    iget v1, v2, Lngr;->b:I

    const/high16 v3, 0x4000000

    or-int/2addr v1, v3

    iput v1, v2, Lngr;->b:I

    invoke-virtual {p0, v0}, Lhjl;->aF(Lnwn;)V

    return-void
.end method

.method public final r(Lngn;)V
    .locals 4

    sget-object v0, Lngr;->av:Lngr;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    sget-object v1, Lngq;->ai:Lngq;

    iget-object v2, v0, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v2, v0, Lnwn;->b:Lnws;

    move-object v3, v2

    check-cast v3, Lngr;

    iget v1, v1, Lngq;->ar:I

    iput v1, v3, Lngr;->d:I

    iget v1, v3, Lngr;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v3, Lngr;->a:I

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_1
    iget-object v1, v0, Lnwn;->b:Lnws;

    check-cast v1, Lngr;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, v1, Lngr;->aj:Lngn;

    iget p1, v1, Lngr;->c:I

    or-int/lit16 p1, p1, 0x200

    iput p1, v1, Lngr;->c:I

    invoke-virtual {p0, v0}, Lhjl;->aF(Lnwn;)V

    return-void
.end method

.method public final s(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    sget-object v0, Lnkm;->h:Lnkm;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v1, v0, Lnwn;->b:Lnws;

    move-object v2, v1

    check-cast v2, Lnkm;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, v2, Lnkm;->a:I

    const/4 v4, 0x2

    or-int/2addr v3, v4

    iput v3, v2, Lnkm;->a:I

    iput-object p1, v2, Lnkm;->c:Ljava/lang/String;

    instance-of p1, p3, Ljava/lang/Boolean;

    const/4 v2, 0x1

    if-eqz p1, :cond_4

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_1
    iget-object p1, v0, Lnwn;->b:Lnws;

    check-cast p1, Lnkm;

    iput v2, p1, Lnkm;->b:I

    iget v1, p1, Lnkm;->a:I

    or-int/2addr v1, v2

    iput v1, p1, Lnkm;->a:I

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p2, v0, Lnwn;->b:Lnws;

    invoke-virtual {p2}, Lnws;->ac()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_2
    iget-object p2, v0, Lnwn;->b:Lnws;

    check-cast p2, Lnkm;

    iget v1, p2, Lnkm;->a:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p2, Lnkm;->a:I

    iput-boolean p1, p2, Lnkm;->d:Z

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p2, v0, Lnwn;->b:Lnws;

    invoke-virtual {p2}, Lnws;->ac()Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_3
    iget-object p2, v0, Lnwn;->b:Lnws;

    check-cast p2, Lnkm;

    iget p3, p2, Lnkm;->a:I

    or-int/lit8 p3, p3, 0x8

    iput p3, p2, Lnkm;->a:I

    iput-boolean p1, p2, Lnkm;->e:Z

    goto :goto_0

    :cond_4
    instance-of p1, p3, Ljava/lang/String;

    if-eqz p1, :cond_8

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_5
    iget-object p1, v0, Lnwn;->b:Lnws;

    move-object v1, p1

    check-cast v1, Lnkm;

    iput v4, v1, Lnkm;->b:I

    iget v3, v1, Lnkm;->a:I

    or-int/2addr v3, v2

    iput v3, v1, Lnkm;->a:I

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_6
    iget-object p1, v0, Lnwn;->b:Lnws;

    move-object v1, p1

    check-cast v1, Lnkm;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, v1, Lnkm;->a:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v1, Lnkm;->a:I

    iput-object p2, v1, Lnkm;->f:Ljava/lang/String;

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_7
    iget-object p1, v0, Lnwn;->b:Lnws;

    check-cast p1, Lnkm;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p2, p1, Lnkm;->a:I

    or-int/lit8 p2, p2, 0x20

    iput p2, p1, Lnkm;->a:I

    iput-object p3, p1, Lnkm;->g:Ljava/lang/String;

    :cond_8
    :goto_0
    sget-object p1, Lngr;->av:Lngr;

    invoke-virtual {p1}, Lnws;->O()Lnwn;

    move-result-object p1

    sget-object p2, Lngq;->C:Lngq;

    iget-object p3, p1, Lnwn;->b:Lnws;

    invoke-virtual {p3}, Lnws;->ac()Z

    move-result p3

    if-nez p3, :cond_9

    invoke-virtual {p1}, Lnwn;->p()V

    :cond_9
    iget-object p3, p1, Lnwn;->b:Lnws;

    move-object v1, p3

    check-cast v1, Lngr;

    iget p2, p2, Lngq;->ar:I

    iput p2, v1, Lngr;->d:I

    iget p2, v1, Lngr;->a:I

    or-int/2addr p2, v2

    iput p2, v1, Lngr;->a:I

    invoke-virtual {p3}, Lnws;->ac()Z

    move-result p2

    if-nez p2, :cond_a

    invoke-virtual {p1}, Lnwn;->p()V

    :cond_a
    iget-object p2, p1, Lnwn;->b:Lnws;

    check-cast p2, Lngr;

    invoke-virtual {v0}, Lnwn;->i()Lnws;

    move-result-object p3

    check-cast p3, Lnkm;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p2, Lngr;->E:Lnkm;

    iget p3, p2, Lngr;->b:I

    or-int/lit8 p3, p3, 0x10

    iput p3, p2, Lngr;->b:I

    invoke-virtual {p0, p1}, Lhjl;->aF(Lnwn;)V

    return-void
.end method

.method public final t(JLfce;)V
    .locals 7

    sget-object v0, Lngp;->c:Lngp;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    iget-object v1, p3, Lfce;->a:Lgya;

    invoke-static {v1}, Lhjl;->aN(Lgya;)I

    move-result v1

    iget-object v2, v0, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v2, v0, Lnwn;->b:Lnws;

    check-cast v2, Lngp;

    add-int/lit8 v1, v1, -0x1

    iput v1, v2, Lngp;->b:I

    iget v1, v2, Lngp;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v2, Lngp;->a:I

    invoke-virtual {v0}, Lnwn;->i()Lnws;

    move-result-object v0

    check-cast v0, Lngp;

    sget-object v1, Lnhg;->h:Lnhg;

    invoke-virtual {v1}, Lnws;->O()Lnwn;

    move-result-object v1

    iget-object v2, v1, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_1
    iget-object v2, v1, Lnwn;->b:Lnws;

    move-object v3, v2

    check-cast v3, Lnhg;

    iget v4, v3, Lnhg;->a:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v3, Lnhg;->a:I

    iput-wide p1, v3, Lnhg;->c:J

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_2
    iget-object v2, v1, Lnwn;->b:Lnws;

    check-cast v2, Lnhg;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, v2, Lnhg;->b:Lngp;

    iget v3, v2, Lnhg;->a:I

    const/4 v4, 0x1

    or-int/2addr v3, v4

    iput v3, v2, Lnhg;->a:I

    iget-object v2, p3, Lfce;->a:Lgya;

    invoke-static {v2}, Ljfc;->h(Lgya;)I

    move-result v2

    iget-object v3, v1, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_3
    iget-object v3, v1, Lnwn;->b:Lnws;

    move-object v5, v3

    check-cast v5, Lnhg;

    add-int/lit8 v2, v2, -0x1

    iput v2, v5, Lnhg;->d:I

    iget v2, v5, Lnhg;->a:I

    const/4 v6, 0x4

    or-int/2addr v2, v6

    iput v2, v5, Lnhg;->a:I

    iget-object v2, p3, Lfce;->b:Lnjo;

    if-eqz v2, :cond_6

    iget v5, v2, Lnjo;->h:I

    invoke-static {v5}, Lndd;->u(I)I

    move-result v5

    if-nez v5, :cond_4

    const/4 v5, 0x1

    :cond_4
    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_5
    iget-object v3, v1, Lnwn;->b:Lnws;

    check-cast v3, Lnhg;

    add-int/lit8 v5, v5, -0x1

    iput v5, v3, Lnhg;->e:I

    iget v5, v3, Lnhg;->a:I

    or-int/lit8 v5, v5, 0x8

    iput v5, v3, Lnhg;->a:I

    :cond_6
    iget-object v3, p3, Lfce;->a:Lgya;

    sget-object v5, Lgya;->o:Lgya;

    if-ne v3, v5, :cond_8

    iget-object v2, v1, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_7
    iget-object v2, v1, Lnwn;->b:Lnws;

    check-cast v2, Lnhg;

    iput v6, v2, Lnhg;->f:I

    iget v3, v2, Lnhg;->a:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v2, Lnhg;->a:I

    goto :goto_0

    :cond_8
    if-eqz v2, :cond_b

    iget v2, v2, Lnjo;->l:I

    invoke-static {v2}, Lmoz;->G(I)I

    move-result v2

    if-nez v2, :cond_9

    const/4 v2, 0x1

    :cond_9
    iget-object v3, v1, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_a
    iget-object v3, v1, Lnwn;->b:Lnws;

    check-cast v3, Lnhg;

    add-int/lit8 v2, v2, -0x1

    iput v2, v3, Lnhg;->f:I

    iget v2, v3, Lnhg;->a:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v3, Lnhg;->a:I

    :cond_b
    :goto_0
    iget-object p3, p3, Lfce;->c:Ljava/lang/Float;

    if-eqz p3, :cond_d

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    iget-object v2, v1, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_c

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_c
    iget-object v2, v1, Lnwn;->b:Lnws;

    check-cast v2, Lnhg;

    iget v3, v2, Lnhg;->a:I

    or-int/lit8 v3, v3, 0x20

    iput v3, v2, Lnhg;->a:I

    iput p3, v2, Lnhg;->g:F

    :cond_d
    sget-object p3, Lngr;->av:Lngr;

    invoke-virtual {p3}, Lnws;->O()Lnwn;

    move-result-object p3

    sget-object v2, Lngq;->n:Lngq;

    iget-object v3, p3, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_e

    invoke-virtual {p3}, Lnwn;->p()V

    :cond_e
    iget-object v3, p3, Lnwn;->b:Lnws;

    move-object v5, v3

    check-cast v5, Lngr;

    iget v2, v2, Lngq;->ar:I

    iput v2, v5, Lngr;->d:I

    iget v2, v5, Lngr;->a:I

    or-int/2addr v2, v4

    iput v2, v5, Lngr;->a:I

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_f

    invoke-virtual {p3}, Lnwn;->p()V

    :cond_f
    iget-object v2, p3, Lnwn;->b:Lnws;

    check-cast v2, Lngr;

    invoke-virtual {v1}, Lnwn;->i()Lnws;

    move-result-object v1

    check-cast v1, Lnhg;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v2, Lngr;->n:Lnhg;

    iget v1, v2, Lngr;->a:I

    or-int/lit16 v1, v1, 0x4000

    iput v1, v2, Lngr;->a:I

    invoke-virtual {p0, p3}, Lhjl;->aF(Lnwn;)V

    const-string p3, "onCaptureStarted"

    invoke-static {v6, p3, p1, p2, v0}, Lhjl;->aH(ILjava/lang/String;JLngp;)V

    return-void
.end method

.method public final u(I)V
    .locals 4

    sget-object v0, Lngr;->av:Lngr;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    sget-object v1, Lngq;->al:Lngq;

    iget-object v2, v0, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v2, v0, Lnwn;->b:Lnws;

    check-cast v2, Lngr;

    iget v1, v1, Lngq;->ar:I

    iput v1, v2, Lngr;->d:I

    iget v1, v2, Lngr;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v2, Lngr;->a:I

    sget-object v1, Lnhs;->c:Lnhs;

    invoke-virtual {v1}, Lnws;->O()Lnwn;

    move-result-object v1

    iget-object v2, v1, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_1
    iget-object v2, v1, Lnwn;->b:Lnws;

    check-cast v2, Lnhs;

    iget v3, v2, Lnhs;->a:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Lnhs;->a:I

    iput p1, v2, Lnhs;->b:I

    iget-object p1, v0, Lnwn;->b:Lnws;

    invoke-virtual {p1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_2
    iget-object p1, v0, Lnwn;->b:Lnws;

    check-cast p1, Lngr;

    invoke-virtual {v1}, Lnwn;->i()Lnws;

    move-result-object v1

    check-cast v1, Lnhs;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, p1, Lngr;->an:Lnhs;

    iget v1, p1, Lngr;->c:I

    or-int/lit16 v1, v1, 0x2000

    iput v1, p1, Lngr;->c:I

    invoke-virtual {p0, v0}, Lhjl;->aF(Lnwn;)V

    return-void
.end method

.method public final v(Lnjc;)V
    .locals 4

    sget-object v0, Lngr;->av:Lngr;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    sget-object v1, Lngq;->am:Lngq;

    iget-object v2, v0, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v2, v0, Lnwn;->b:Lnws;

    move-object v3, v2

    check-cast v3, Lngr;

    iget v1, v1, Lngq;->ar:I

    iput v1, v3, Lngr;->d:I

    iget v1, v3, Lngr;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v3, Lngr;->a:I

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_1
    iget-object v1, v0, Lnwn;->b:Lnws;

    check-cast v1, Lngr;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, v1, Lngr;->ao:Lnjc;

    iget p1, v1, Lngr;->c:I

    or-int/lit16 p1, p1, 0x4000

    iput p1, v1, Lngr;->c:I

    invoke-virtual {p0, v0}, Lhjl;->aF(Lnwn;)V

    return-void
.end method

.method public final w(Lnjg;)V
    .locals 4

    sget-object v0, Lngr;->av:Lngr;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    sget-object v1, Lngq;->Q:Lngq;

    iget-object v2, v0, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v2, v0, Lnwn;->b:Lnws;

    move-object v3, v2

    check-cast v3, Lngr;

    iget v1, v1, Lngq;->ar:I

    iput v1, v3, Lngr;->d:I

    iget v1, v3, Lngr;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v3, Lngr;->a:I

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_1
    iget-object v1, v0, Lnwn;->b:Lnws;

    check-cast v1, Lngr;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, v1, Lngr;->S:Lnjg;

    iget p1, v1, Lngr;->b:I

    const/high16 v2, 0x400000

    or-int/2addr p1, v2

    iput p1, v1, Lngr;->b:I

    invoke-virtual {p0, v0}, Lhjl;->aF(Lnwn;)V

    return-void
.end method

.method public final x(Ljava/util/List;)V
    .locals 6

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lngr;->av:Lngr;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    iget-wide v1, p0, Lhjl;->n:J

    iget-object v3, v0, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_1
    iget-object v3, v0, Lnwn;->b:Lnws;

    check-cast v3, Lngr;

    iget v4, v3, Lngr;->a:I

    const/high16 v5, 0x8000000

    or-int/2addr v4, v5

    iput v4, v3, Lngr;->a:I

    iput-wide v1, v3, Lngr;->x:J

    sget-object v1, Lngq;->ao:Lngq;

    iget-object v2, v0, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_2
    iget-object v2, v0, Lnwn;->b:Lnws;

    move-object v3, v2

    check-cast v3, Lngr;

    iget v1, v1, Lngq;->ar:I

    iput v1, v3, Lngr;->d:I

    iget v1, v3, Lngr;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v3, Lngr;->a:I

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_3
    iget-object v1, v0, Lnwn;->b:Lnws;

    check-cast v1, Lngr;

    iget-object v2, v1, Lngr;->ar:Lnxa;

    invoke-interface {v2}, Lnxa;->c()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v2}, Lnws;->U(Lnxa;)Lnxa;

    move-result-object v2

    iput-object v2, v1, Lngr;->ar:Lnxa;

    :cond_4
    iget-object v1, v1, Lngr;->ar:Lnxa;

    invoke-static {p1, v1}, Lnvd;->e(Ljava/lang/Iterable;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lhjl;->aF(Lnwn;)V

    return-void
.end method

.method public final y(Lnjq;)V
    .locals 4

    sget-object v0, Lngr;->av:Lngr;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    sget-object v1, Lngq;->M:Lngq;

    iget-object v2, v0, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v2, v0, Lnwn;->b:Lnws;

    move-object v3, v2

    check-cast v3, Lngr;

    iget v1, v1, Lngq;->ar:I

    iput v1, v3, Lngr;->d:I

    iget v1, v3, Lngr;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v3, Lngr;->a:I

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_1
    iget-object v1, v0, Lnwn;->b:Lnws;

    check-cast v1, Lngr;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, v1, Lngr;->O:Lnjq;

    iget p1, v1, Lngr;->b:I

    const/high16 v2, 0x20000

    or-int/2addr p1, v2

    iput p1, v1, Lngr;->b:I

    invoke-virtual {p0, v0}, Lhjl;->aF(Lnwn;)V

    return-void
.end method

.method public final z()V
    .locals 4

    sget-object v0, Lngr;->av:Lngr;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    sget-object v1, Lngq;->B:Lngq;

    iget-object v2, v0, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v2, v0, Lnwn;->b:Lnws;

    check-cast v2, Lngr;

    iget v1, v1, Lngq;->ar:I

    iput v1, v2, Lngr;->d:I

    iget v1, v2, Lngr;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v2, Lngr;->a:I

    sget-object v1, Lnge;->c:Lnge;

    invoke-virtual {v1}, Lnws;->O()Lnwn;

    move-result-object v1

    iget-object v2, v1, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_1
    iget-object v2, v1, Lnwn;->b:Lnws;

    check-cast v2, Lnge;

    const/4 v3, 0x2

    iput v3, v2, Lnge;->b:I

    iget v3, v2, Lnge;->a:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Lnge;->a:I

    iget-object v2, v0, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_2
    iget-object v2, v0, Lnwn;->b:Lnws;

    check-cast v2, Lngr;

    invoke-virtual {v1}, Lnwn;->i()Lnws;

    move-result-object v1

    check-cast v1, Lnge;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v2, Lngr;->D:Lnge;

    iget v1, v2, Lngr;->b:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v2, Lngr;->b:I

    invoke-virtual {p0, v0}, Lhjl;->aF(Lnwn;)V

    return-void
.end method
