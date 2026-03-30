.class public abstract Lpba;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpaf;


# static fields
.field private static final e:Ljava/lang/Long;


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicLong;

.field public final b:Ljava/util/Queue;

.field public c:J

.field public final d:Ljava/lang/Object;

.field private final f:Lsdb;

.field private final g:Lpag;

.field private final h:Lrss;

.field private final i:Loyn;

.field private final j:D

.field private final k:Lozm;

.field private final l:Ljava/util/concurrent/atomic/AtomicLong;

.field private final m:Lpat;

.field private final n:Lsuu;

.field private o:Lrss;

.field private p:Lpci;

.field private q:J

.field private r:I

.field private s:Z

.field private final t:Ljava/util/Queue;

.field private u:Lpaz;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x1c

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    sput-object v0, Lpba;->e:Ljava/lang/Long;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_a

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_5

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const-wide/16 v0, 0x2710

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x1d

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public constructor <init>(Lpag;Lrss;Loyn;Lozm;Lsdb;)V
    .locals 3

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x18

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1
    iput-object v0, p0, Lpba;->n:Lsuu;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v0, Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_4
    const/16 v1, 0x3e8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object v0, p0, Lpba;->m:Lpat;

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_7
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p4}, Lozm;->c()I

    move-result p3

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput-object p5, p0, Lpba;->f:Lsdb;

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :cond_0
    goto/32 :goto_2a

    nop

    :goto_c
    iput-object v0, p0, Lpba;->l:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x19

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_e
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {v0}, Lpat;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_11
    div-double/2addr p1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p4}, Lozm;->a()I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_14
    new-instance v0, Ljava/util/ArrayDeque;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_15
    iput-object p2, p0, Lpba;->h:Lrss;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_16
    iput-object p4, p0, Lpba;->k:Lozm;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_17
    return-void

    nop

    :goto_18
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_19
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iput-object v0, p0, Lpba;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_1b
    new-instance v0, Lpat;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1c
    invoke-direct {v0}, Lsuu;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iput-object v0, p0, Lpba;->a:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1e
    iput v0, p0, Lpba;->r:I

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_21
    int-to-double p1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iput-wide p1, p0, Lpba;->j:D

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iput-boolean v0, p0, Lpba;->s:Z

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_24
    sget-object v0, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_25
    iput-object p3, p0, Lpba;->i:Loyn;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iput-object p1, p0, Lpba;->g:Lpag;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iput-object p1, p0, Lpba;->u:Lpaz;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iput-object v0, p0, Lpba;->t:Ljava/util/Queue;

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2c
    sget-object p1, Lpaz;->a:Lpaz;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_2d
    iput-object v0, p0, Lpba;->b:Ljava/util/Queue;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2e
    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const-wide/16 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_30
    iput-object v0, p0, Lpba;->o:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    new-instance v0, Lsuu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_32
    new-instance v0, Ljava/util/ArrayDeque;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_33
    int-to-double v0, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop
.end method

.method private final d5484163cd8d335e6b17663474ff5f2bm(J)J
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-wide v0, p0, Lpba;->j:D

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2
    long-to-double p1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    double-to-long p0, p1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_5
    mul-double/2addr p1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_9

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    return-wide p0

    nop

    nop

    :goto_9
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_a
    const v0, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_c
    const v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_7

    nop

    nop

    nop
.end method


# virtual methods
.method public final b()V
    .locals 10

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_1
    iget-object v0, p0, Lpba;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    const v0, 0xb

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x18

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    throw p0

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_a
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v1, p0, Lpba;->o:Lrss;

    nop

    invoke-virtual {v1}, Lrss;->h()Z

    move-result v1

    nop

    nop

    if-eqz v1, :cond_7

    nop

    nop

    nop

    :goto_b
    iget-object v1, p0, Lpba;->b:Ljava/util/Queue;

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    nop

    nop

    nop

    if-nez v1, :cond_6

    nop

    iget-object v1, p0, Lpba;->t:Ljava/util/Queue;

    nop

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    nop

    nop

    nop

    nop

    if-nez v1, :cond_6

    nop

    nop

    nop

    iget-object v1, p0, Lpba;->b:Ljava/util/Queue;

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    nop

    check-cast v1, Ljava/lang/Long;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    nop

    nop

    iget-object v1, p0, Lpba;->t:Ljava/util/Queue;

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    check-cast v1, Lsvr;

    nop

    nop

    nop

    iget-wide v2, v1, Lsvr;->a:J

    nop

    nop

    nop

    nop

    sub-long v2, v6, v2

    nop

    nop

    nop

    nop

    sget-object v4, Lpba;->e:Ljava/lang/Long;

    nop

    nop

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    const-wide/16 v8, 0x2710

    nop

    cmp-long v2, v2, v8

    nop

    nop

    nop

    nop

    if-lez v2, :cond_1

    nop

    nop

    iget-object v2, p0, Lpba;->t:Ljava/util/Queue;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    iget-object v2, p0, Lpba;->f:Lsdb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Lscs;->c()Lsdo;

    move-result-object v2

    nop

    nop

    nop

    nop

    const/16 v3, 0x14fa

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2, v3}, Lscz;->M(I)Lsdo;

    move-result-object v2

    nop

    nop

    nop

    check-cast v2, Lscz;

    nop

    nop

    nop

    nop

    const-string v3, "Found one metadata (%d) that doesn\'t match with current video frame (%d)"

    nop

    nop

    iget-wide v4, v1, Lsvr;->a:J

    nop

    nop

    invoke-interface/range {v2 .. v7}, Lscz;->A(Ljava/lang/String;JJ)V

    goto/16 :goto_b

    nop

    nop

    nop

    nop

    :cond_1
    iget-wide v2, v1, Lsvr;->a:J

    nop

    nop

    nop

    nop

    nop

    sub-long/2addr v2, v6

    nop

    nop

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    nop

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    cmp-long v2, v2, v8

    nop

    if-gtz v2, :cond_3

    nop

    nop

    nop

    iget-object v2, p0, Lpba;->t:Ljava/util/Queue;

    nop

    nop

    nop

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    iget-object v2, p0, Lpba;->b:Ljava/util/Queue;

    nop

    nop

    nop

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    iget-object v2, v1, Lsvr;->b:Ljava/lang/Object;

    nop

    nop

    nop

    invoke-interface {v2}, Lpae;->a()[B

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    nop

    nop

    nop

    nop

    new-instance v3, Landroid/media/MediaCodec$BufferInfo;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v3}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    nop

    nop

    nop

    iput v4, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    nop

    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    iput v4, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    nop

    nop

    nop

    nop

    nop

    iput-wide v6, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    nop

    nop

    iget-object v5, p0, Lpba;->k:Lozm;

    nop

    iget-object v5, v5, Lozm;->d:Loze;

    nop

    nop

    sget-object v6, Loze;->c:Loze;

    nop

    nop

    nop

    if-ne v5, v6, :cond_2

    nop

    iget v5, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    nop

    nop

    nop

    if-nez v5, :cond_2

    nop

    nop

    nop

    nop

    iget-wide v5, v1, Lsvr;->a:J

    nop

    nop

    nop

    nop

    :cond_2
    iget-object v1, p0, Lpba;->g:Lpag;

    nop

    nop

    nop

    nop

    nop

    iget-object v5, p0, Lpba;->o:Lrss;

    nop

    invoke-virtual {v5}, Lrss;->c()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    check-cast v5, Ljava/lang/Integer;

    nop

    nop

    nop

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    nop

    nop

    nop

    invoke-interface {v1, v2, v3, v5}, Lpag;->n(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;I)V

    iput v4, p0, Lpba;->r:I

    nop

    nop

    nop

    nop

    nop

    iget-wide v1, p0, Lpba;->c:J

    nop

    nop

    nop

    nop

    const-wide/16 v3, 0x1

    nop

    nop

    nop

    nop

    add-long/2addr v1, v3

    nop

    iput-wide v1, p0, Lpba;->c:J

    nop

    nop

    nop

    nop

    goto/16 :goto_b

    nop

    nop

    nop

    nop

    :cond_3
    iget-object v1, p0, Lpba;->b:Ljava/util/Queue;

    nop

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    iget-object v1, p0, Lpba;->h:Lrss;

    nop

    nop

    nop

    invoke-virtual {v1}, Lrss;->h()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_4

    nop

    nop

    nop

    invoke-virtual {v1}, Lrss;->c()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    sget-object v2, Lpar;->f:Lpar;

    nop

    nop

    check-cast v1, Lpau;

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Lpau;->a(Lpar;)V

    :cond_4
    iget v1, p0, Lpba;->r:I

    nop

    nop

    nop

    const/4 v2, 0x1

    nop

    nop

    add-int/2addr v1, v2

    nop

    nop

    nop

    nop

    nop

    iput v1, p0, Lpba;->r:I

    nop

    const/16 v3, 0xb

    nop

    if-lt v1, v3, :cond_5

    nop

    nop

    nop

    iget-object v1, p0, Lpba;->h:Lrss;

    nop

    nop

    invoke-virtual {v1}, Lrss;->h()Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    if-eqz v3, :cond_5

    nop

    iget-boolean v3, p0, Lpba;->s:Z

    nop

    nop

    if-nez v3, :cond_5

    nop

    nop

    nop

    nop

    iput-boolean v2, p0, Lpba;->s:Z

    nop

    nop

    nop

    invoke-virtual {v1}, Lrss;->c()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    sget-object v2, Lpar;->l:Lpar;

    nop

    check-cast v1, Lpau;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Lpau;->a(Lpar;)V

    :cond_5
    iget-object v1, p0, Lpba;->f:Lsdb;

    nop

    invoke-virtual {v1}, Lscs;->c()Lsdo;

    move-result-object v1

    nop

    nop

    nop

    const/16 v2, 0x14f8

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, v2}, Lscz;->M(I)Lsdo;

    move-result-object v1

    nop

    nop

    nop

    check-cast v1, Lscz;

    nop

    nop

    nop

    nop

    nop

    const-string v2, "No metadata found for video frame: %d"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, v2, v6, v7}, Lscz;->u(Ljava/lang/String;J)V

    goto/16 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_6
    monitor-exit v0

    nop

    return-void

    nop

    :cond_7
    iget-object p0, p0, Lpba;->f:Lsdb;

    nop

    nop

    invoke-virtual {p0}, Lscs;->b()Lsdo;

    move-result-object p0

    nop

    nop

    const/16 v1, 0x14fb

    nop

    nop

    invoke-interface {p0, v1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    check-cast p0, Lscz;

    nop

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    sget-object v1, Lcom/google/android/apps/camera/filmstrip/transition/KkW/xCXUu;->vXjNub:Ljava/lang/String;

    nop

    nop

    nop

    invoke-interface {p0, v1}, Lscz;->s(Ljava/lang/String;)V

    monitor-exit v0

    nop

    return-void

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method

.method public final c(Lpae;J)V
    .locals 7

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_0
    const v1, 0xf

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    monitor-enter v0

    nop

    :try_start_0
    iget-object v1, p0, Lpba;->o:Lrss;

    nop

    nop

    invoke-virtual {v1}, Lrss;->h()Z

    move-result v1

    nop

    nop

    nop

    nop

    if-nez v1, :cond_0

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    :cond_0
    iget-object v1, p0, Lpba;->h:Lrss;

    nop

    nop

    invoke-virtual {v1}, Lrss;->h()Z

    move-result v1

    nop

    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lpba;->l:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    invoke-virtual {v1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v1, p0, Lpba;->h:Lrss;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lrss;->c()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    sget-object v2, Lpaj;->c:Lpaj;

    nop

    check-cast v1, Lpau;

    nop

    invoke-virtual {v1, v2}, Lpau;->g(Lpaj;)Z

    move-result v1

    nop

    nop

    nop

    nop

    if-nez v1, :cond_1

    nop

    nop

    iget-object v1, p0, Lpba;->h:Lrss;

    nop

    invoke-virtual {v1}, Lrss;->c()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    sget-object v2, Lpaj;->c:Lpaj;

    nop

    nop

    nop

    nop

    nop

    iget-object v3, p0, Lpba;->l:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    check-cast v1, Lpau;

    nop

    nop

    nop

    invoke-virtual {v1, v2, v3}, Lpau;->e(Lpaj;Ljava/util/concurrent/atomic/AtomicLong;)V

    :cond_1
    invoke-direct {p0, p2, p3}, Lpba;->d5484163cd8d335e6b17663474ff5f2bm(J)J

    move-result-wide v1

    nop

    nop

    iget-wide v3, p0, Lpba;->q:J

    nop

    nop

    nop

    nop

    const-wide/16 v5, 0x0

    nop

    nop

    cmp-long v5, v3, v5

    nop

    nop

    nop

    if-eqz v5, :cond_2

    nop

    cmp-long v1, v1, v3

    nop

    nop

    nop

    if-lez v1, :cond_2

    nop

    nop

    nop

    iget-object p0, p0, Lpba;->n:Lsuu;

    nop

    nop

    nop

    const/4 p1, 0x0

    nop

    nop

    nop

    invoke-virtual {p0, p1}, Lsuu;->e(Ljava/lang/Object;)Z

    monitor-exit v0

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    :cond_2
    iget-object v1, p0, Lpba;->t:Ljava/util/Queue;

    nop

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    nop

    nop

    nop

    nop

    const/16 v2, 0x3e8

    nop

    if-ge v1, v2, :cond_3

    nop

    nop

    iget-object v1, p0, Lpba;->m:Lpat;

    nop

    nop

    nop

    invoke-virtual {v1, p2, p3}, Lpat;->d(J)Z

    move-result v1

    nop

    nop

    nop

    if-nez v1, :cond_4

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lpba;->t:Ljava/util/Queue;

    nop

    nop

    nop

    nop

    new-instance v2, Lsvr;

    nop

    nop

    nop

    nop

    nop

    iget-object v3, p0, Lpba;->m:Lpat;

    nop

    invoke-virtual {v3, p2, p3}, Lpat;->a(J)J

    move-result-wide p2

    nop

    nop

    nop

    invoke-direct {p0, p2, p3}, Lpba;->d5484163cd8d335e6b17663474ff5f2bm(J)J

    move-result-wide p2

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v2, p1, p2, p3}, Lsvr;-><init>(Ljava/lang/Object;J)V

    invoke-interface {v1, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lpba;->b()V

    goto :goto_5

    nop

    nop

    nop

    :cond_3
    iget-object p0, p0, Lpba;->f:Lsdb;

    nop

    nop

    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    const/16 p1, 0x14ef

    nop

    invoke-interface {p0, p1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    check-cast p0, Lscz;

    nop

    nop

    const-string p1, "Video frame timestamp is very off. Possibly no metadata is written."

    nop

    nop

    nop

    nop

    invoke-interface {p0, p1}, Lscz;->s(Ljava/lang/String;)V

    :cond_4
    :goto_5
    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    return-void

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    throw p0

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_5

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_8

    nop

    :goto_b
    const v0, 0x1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Lpba;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method public final close()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop
.end method

.method public final d(J)V
    .locals 3

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_2

    nop

    nop

    :goto_2
    goto/32 :goto_a

    nop

    :goto_3
    const v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    monitor-enter v0

    nop

    :try_start_0
    iget-object v1, p0, Lpba;->u:Lpaz;

    nop

    nop

    nop

    nop

    sget-object v2, Lpaz;->b:Lpaz;

    nop

    nop

    if-eq v1, v2, :cond_0

    nop

    nop

    nop

    nop

    nop

    iget-object p0, p0, Lpba;->f:Lsdb;

    nop

    nop

    nop

    invoke-virtual {p0}, Lscs;->b()Lsdo;

    move-result-object p0

    nop

    nop

    const/16 p1, 0x14f3

    nop

    invoke-interface {p0, p1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    check-cast p0, Lscz;

    nop

    const-string p1, "It is not recording now"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p0, p1}, Lscz;->s(Ljava/lang/String;)V

    monitor-exit v0

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    nop

    :cond_0
    sget-object v1, Lpaz;->e:Lpaz;

    nop

    nop

    iput-object v1, p0, Lpba;->u:Lpaz;

    nop

    iget-object p0, p0, Lpba;->m:Lpat;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0, p1, p2}, Lpat;->c(J)V

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    return-void

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Lpba;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e()V
    .locals 3

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x1b

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    :goto_4
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lpba;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    monitor-enter v0

    nop

    nop

    :try_start_0
    iget-object v1, p0, Lpba;->u:Lpaz;

    nop

    nop

    nop

    nop

    sget-object v2, Lpaz;->d:Lpaz;

    nop

    if-ne v1, v2, :cond_1

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    :cond_1
    iget-object v1, p0, Lpba;->p:Lpci;

    nop

    nop

    if-eqz v1, :cond_2

    nop

    invoke-interface {v1}, Lpci;->close()V

    :cond_2
    sget-object v1, Lpaz;->d:Lpaz;

    nop

    nop

    nop

    nop

    nop

    iput-object v1, p0, Lpba;->u:Lpaz;

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    return-void

    nop

    :catchall_0
    move-exception p0

    nop

    monitor-exit v0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0xa

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method

.method public final f(J)V
    .locals 3

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x14

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x16

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    :goto_4
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_7
    monitor-enter v0

    nop

    nop

    nop

    :try_start_0
    iget-object v1, p0, Lpba;->u:Lpaz;

    nop

    nop

    nop

    sget-object v2, Lpaz;->e:Lpaz;

    nop

    nop

    nop

    if-eq v1, v2, :cond_1

    nop

    iget-object p0, p0, Lpba;->f:Lsdb;

    nop

    nop

    invoke-virtual {p0}, Lscs;->b()Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    const/16 p1, 0x14f5

    nop

    nop

    nop

    nop

    invoke-interface {p0, p1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    check-cast p0, Lscz;

    nop

    nop

    const-string p1, "It is not paused now"

    nop

    nop

    nop

    invoke-interface {p0, p1}, Lscz;->s(Ljava/lang/String;)V

    monitor-exit v0

    nop

    nop

    return-void

    nop

    nop

    :cond_1
    sget-object v1, Lpaz;->b:Lpaz;

    nop

    nop

    nop

    nop

    iput-object v1, p0, Lpba;->u:Lpaz;

    nop

    nop

    nop

    iget-object p0, p0, Lpba;->m:Lpat;

    nop

    nop

    invoke-virtual {p0, p1, p2}, Lpat;->b(J)V

    monitor-exit v0

    nop

    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    throw p0

    nop

    nop

    :goto_9
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Lpba;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_4

    nop
.end method

.method public final l()V
    .locals 4

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_3

    nop

    nop

    :goto_1
    iget-object v0, p0, Lpba;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_2
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    const v1, 0x14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_7
    const v0, 0xb

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_9
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v1, p0, Lpba;->u:Lpaz;

    nop

    nop

    nop

    nop

    sget-object v2, Lpaz;->a:Lpaz;

    nop

    nop

    nop

    nop

    if-eq v1, v2, :cond_1

    nop

    iget-object v1, p0, Lpba;->f:Lsdb;

    nop

    nop

    nop

    invoke-virtual {v1}, Lscs;->b()Lsdo;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    const/16 v2, 0x14f6

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, v2}, Lscz;->M(I)Lsdo;

    move-result-object v1

    nop

    check-cast v1, Lscz;

    nop

    nop

    nop

    nop

    const-string v2, "illegal state as %s"

    nop

    nop

    iget-object p0, p0, Lpba;->u:Lpaz;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, v2, p0}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    monitor-exit v0

    nop

    nop

    return-void

    nop

    :cond_1
    iget-object v1, p0, Lpba;->i:Loyn;

    nop

    new-instance v2, Lhvx;

    nop

    const/4 v3, 0x7

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v2, p0, v3}, Lhvx;-><init>(Ljava/lang/Object;I)V

    sget-object v3, Lstd;->a:Lstd;

    nop

    invoke-interface {v1, v2, v3}, Loyn;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object v1

    nop

    nop

    iput-object v1, p0, Lpba;->p:Lpci;

    nop

    nop

    iget-object v1, p0, Lpba;->n:Lsuu;

    nop

    nop

    nop

    nop

    new-instance v2, Lpam;

    nop

    nop

    nop

    nop

    const/16 v3, 0xa

    nop

    nop

    nop

    invoke-direct {v2, p0, v3}, Lpam;-><init>(Ljava/lang/Object;I)V

    sget-object v3, Lstd;->a:Lstd;

    nop

    invoke-virtual {v1, v2, v3}, Lsuu;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    new-instance v1, Landroid/media/MediaFormat;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1}, Landroid/media/MediaFormat;-><init>()V

    const-string v2, "mime"

    nop

    nop

    invoke-virtual {p0}, Lpba;->a()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lpba;->g:Lpag;

    nop

    nop

    nop

    nop

    invoke-interface {v2, v1}, Lpag;->b(Landroid/media/MediaFormat;)Lrss;

    move-result-object v1

    nop

    nop

    iput-object v1, p0, Lpba;->o:Lrss;

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lpba;->g:Lpag;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Lpag;->l()V

    sget-object v1, Lpaz;->b:Lpaz;

    nop

    iput-object v1, p0, Lpba;->u:Lpaz;

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    monitor-exit v0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    throw p0

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final m(J)V
    .locals 3

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_1
    const v0, 0x17

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_5
    throw p0

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x1d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Lpba;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_3

    nop

    :goto_b
    monitor-enter v0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v1, p0, Lpba;->u:Lpaz;

    nop

    nop

    nop

    nop

    nop

    sget-object v2, Lpaz;->b:Lpaz;

    nop

    nop

    nop

    if-eq v1, v2, :cond_1

    nop

    nop

    nop

    sget-object v2, Lpaz;->e:Lpaz;

    nop

    nop

    if-eq v1, v2, :cond_1

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    :cond_1
    sget-object v2, Lpaz;->e:Lpaz;

    nop

    nop

    nop

    nop

    nop

    if-ne v1, v2, :cond_2

    nop

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lpba;->m:Lpat;

    nop

    nop

    nop

    invoke-virtual {v1, p1, p2}, Lpat;->b(J)V

    :cond_2
    iget-object v1, p0, Lpba;->m:Lpat;

    nop

    nop

    iget-wide v1, v1, Lpat;->a:J

    nop

    nop

    nop

    nop

    sub-long/2addr p1, v1

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p0, p1, p2}, Lpba;->d5484163cd8d335e6b17663474ff5f2bm(J)J

    move-result-wide p1

    nop

    nop

    nop

    nop

    nop

    iput-wide p1, p0, Lpba;->q:J

    nop

    nop

    nop

    nop

    sget-object p1, Lpaz;->c:Lpaz;

    nop

    nop

    nop

    nop

    nop

    iput-object p1, p0, Lpba;->u:Lpaz;

    nop

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method
