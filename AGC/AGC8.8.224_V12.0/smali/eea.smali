.class public final Leea;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnak;

.field public static final b:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field public c:I

.field public final d:Ljava/util/List;

.field public final e:Ljava/util/List;

.field public final f:Lnrz;

.field public final g:Lcom/google/googlex/gcam/clientallocator/InterleavedU8ClientAllocator;

.field public final h:Lnrs;

.field public final i:Lcom/google/googlex/gcam/clientallocator/InterleavedU8ClientAllocator;

.field public final j:Lnrs;

.field public final k:Lnrp;

.field public final l:Leec;

.field public final m:Lecy;

.field public final n:Z

.field public final o:Lkou;

.field public final p:Lega;

.field public final q:Lkll;

.field public final r:Lhna;

.field public s:I

.field public final t:Ledz;

.field public final u:Llzz;

.field public final v:Lgkr;

.field private final w:Lcom/google/googlex/gcam/ShotParams;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "com/google/android/apps/camera/hdrplus/Shot"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Leea;->a:Lnak;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Leea;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>(Lnrz;Leec;Landroid/util/DisplayMetrics;Lgkr;ILigo;Ldin;Ldne;Lcom/google/googlex/gcam/ShotParams;Lecy;ZLkou;Lega;Lkll;Lhna;[B[B[B[B)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x1

    iput v2, v0, Leea;->s:I

    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->kInvalidShotId_get()I

    move-result v2

    iput v2, v0, Leea;->c:I

    iput-object v1, v0, Leea;->f:Lnrz;

    new-instance v2, Llzz;

    invoke-direct {v2, p1}, Llzz;-><init>(Lnrz;)V

    iput-object v2, v0, Leea;->u:Llzz;

    move-object v1, p2

    iput-object v1, v0, Leea;->l:Leec;

    move-object v2, p4

    iput-object v2, v0, Leea;->v:Lgkr;

    new-instance v2, Lcom/google/googlex/gcam/ShotParams;

    move-object/from16 v3, p9

    invoke-direct {v2, v3}, Lcom/google/googlex/gcam/ShotParams;-><init>(Lcom/google/googlex/gcam/ShotParams;)V

    iput-object v2, v0, Leea;->w:Lcom/google/googlex/gcam/ShotParams;

    move-object/from16 v2, p10

    iput-object v2, v0, Leea;->m:Lecy;

    move/from16 v2, p11

    iput-boolean v2, v0, Leea;->n:Z

    move-object/from16 v2, p12

    iput-object v2, v0, Leea;->o:Lkou;

    move-object/from16 v2, p13

    iput-object v2, v0, Leea;->p:Lega;

    move-object/from16 v2, p14

    iput-object v2, v0, Leea;->q:Lkll;

    move-object/from16 v2, p15

    iput-object v2, v0, Leea;->r:Lhna;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Leea;->d:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Leea;->e:Ljava/util/List;

    new-instance v2, Ledz;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 p9, v2

    move-object/from16 p10, p0

    move/from16 p11, p5

    move-object/from16 p12, p2

    move-object/from16 p13, p7

    move-object/from16 p14, p8

    move-object/from16 p15, p6

    move-object/from16 p16, v3

    move-object/from16 p17, v4

    invoke-direct/range {p9 .. p17}, Ledz;-><init>(Leea;ILeec;Ldin;Ldne;Ligo;[B[B)V

    iput-object v2, v0, Leea;->t:Ledz;

    invoke-virtual {p2}, Leec;->g()Lmqp;

    move-result-object v2

    invoke-virtual {v2}, Lmqp;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lnrn;

    move-object v4, p3

    invoke-direct {v2, p3}, Lnrn;-><init>(Landroid/util/DisplayMetrics;)V

    iput-object v2, v0, Leea;->g:Lcom/google/googlex/gcam/clientallocator/InterleavedU8ClientAllocator;

    iput-object v3, v0, Leea;->h:Lnrs;

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Leec;->h()Lmqp;

    move-result-object v2

    invoke-virtual {v2}, Lmqp;->g()Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v3, v0, Leea;->g:Lcom/google/googlex/gcam/clientallocator/InterleavedU8ClientAllocator;

    new-instance v2, Lnrs;

    invoke-direct {v2}, Lnrs;-><init>()V

    iput-object v2, v0, Leea;->h:Lnrs;

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Leec;->f()Lmqp;

    move-result-object v2

    invoke-virtual {v2}, Lmqp;->g()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lnro;

    const-wide/16 v4, 0x120

    const-wide/16 v6, 0x20

    invoke-direct {v2, v4, v5, v6, v7}, Lnro;-><init>(JJ)V

    iput-object v2, v0, Leea;->g:Lcom/google/googlex/gcam/clientallocator/InterleavedU8ClientAllocator;

    goto :goto_0

    :cond_2
    iput-object v3, v0, Leea;->g:Lcom/google/googlex/gcam/clientallocator/InterleavedU8ClientAllocator;

    :goto_0
    iput-object v3, v0, Leea;->h:Lnrs;

    :goto_1
    invoke-virtual {p2}, Leec;->e()Lmqp;

    move-result-object v2

    invoke-virtual {v2}, Lmqp;->g()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Lnrp;

    invoke-direct {v2}, Lnrp;-><init>()V

    iput-object v2, v0, Leea;->k:Lnrp;

    goto :goto_2

    :cond_3
    iput-object v3, v0, Leea;->k:Lnrp;

    :goto_2
    invoke-virtual {p2}, Leec;->k()Lmqp;

    move-result-object v2

    invoke-virtual {v2}, Lmqp;->g()Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v1, Lnrq;

    invoke-direct {v1}, Lnrq;-><init>()V

    iput-object v1, v0, Leea;->i:Lcom/google/googlex/gcam/clientallocator/InterleavedU8ClientAllocator;

    iput-object v3, v0, Leea;->j:Lnrs;

    return-void

    :cond_4
    invoke-virtual {p2}, Leec;->l()Lmqp;

    move-result-object v2

    invoke-virtual {v2}, Lmqp;->g()Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v1, Lnro;

    const-wide/16 v4, 0x133

    const-wide/16 v6, 0x33

    invoke-direct {v1, v4, v5, v6, v7}, Lnro;-><init>(JJ)V

    iput-object v1, v0, Leea;->i:Lcom/google/googlex/gcam/clientallocator/InterleavedU8ClientAllocator;

    iput-object v3, v0, Leea;->j:Lnrs;

    return-void

    :cond_5
    invoke-virtual {p2}, Leec;->n()Lmqp;

    move-result-object v1

    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Lnrs;

    invoke-direct {v1}, Lnrs;-><init>()V

    iput-object v1, v0, Leea;->j:Lnrs;

    iput-object v3, v0, Leea;->i:Lcom/google/googlex/gcam/clientallocator/InterleavedU8ClientAllocator;

    return-void

    :cond_6
    iput-object v3, v0, Leea;->i:Lcom/google/googlex/gcam/clientallocator/InterleavedU8ClientAllocator;

    iput-object v3, v0, Leea;->j:Lnrs;

    return-void
.end method

.method public static final d(Lhna;)Lnqn;
    .locals 1

    sget-object v0, Lhna;->a:Lhna;

    invoke-virtual {p0}, Lhna;->ordinal()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lnqn;->e:Lnqn;

    return-object p0

    :pswitch_0
    sget-object p0, Lnqn;->i:Lnqn;

    return-object p0

    :pswitch_1
    sget-object p0, Lnqn;->d:Lnqn;

    return-object p0

    :pswitch_2
    sget-object p0, Lnqn;->c:Lnqn;

    return-object p0

    :pswitch_3
    sget-object p0, Lnqn;->b:Lnqn;

    return-object p0

    :pswitch_4
    sget-object p0, Lnqn;->h:Lnqn;

    return-object p0

    :pswitch_5
    sget-object p0, Lnqn;->g:Lnqn;

    return-object p0

    :pswitch_6
    sget-object p0, Lnqn;->a:Lnqn;

    return-object p0

    :pswitch_7
    sget-object p0, Lnqn;->f:Lnqn;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
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


# virtual methods
.method public final a()I
    .locals 2

    iget v0, p0, Leea;->c:I

    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->kInvalidShotId_get()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "setShotId() has not been called on this Shot."

    invoke-static {v0, v1}, Lmoz;->q(ZLjava/lang/Object;)V

    iget v0, p0, Leea;->c:I

    return v0
.end method

.method public final b()Lcom/google/googlex/gcam/ShotParams;
    .locals 2

    new-instance v0, Lcom/google/googlex/gcam/ShotParams;

    iget-object v1, p0, Leea;->w:Lcom/google/googlex/gcam/ShotParams;

    invoke-direct {v0, v1}, Lcom/google/googlex/gcam/ShotParams;-><init>(Lcom/google/googlex/gcam/ShotParams;)V

    return-object v0
.end method

.method public final c()Z
    .locals 2

    iget-object v0, p0, Leea;->m:Lecy;

    sget-object v1, Lecy;->c:Lecy;

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Leea;->n:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
