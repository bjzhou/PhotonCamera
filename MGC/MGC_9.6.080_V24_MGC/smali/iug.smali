.class public final Liug;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpbz;


# instance fields
.field final synthetic a:Llqe;

.field final synthetic b:Liuh;

.field final synthetic c:I


# direct methods
.method public constructor <init>(Liuh;Llqe;I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p3, p0, Liug;->c:I

    nop

    nop

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
    iput-object p2, p0, Liug;->a:Llqe;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Liug;->b:Liuh;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 13

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_0
    iget-object v0, v0, Liuh;->f:Loyn;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sub-long/2addr v1, v3

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_2
    iget-object p1, p0, Liug;->b:Liuh;

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_3
    invoke-interface {v0}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0}, Lits;->c()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, p1, Liuh;->E:Lits;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_7
    monitor-enter p1

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object p0, p0, Liug;->b:Liuh;

    nop

    nop

    iget-object v0, p0, Liuh;->i:Ljava/util/Set;

    nop

    nop

    nop

    iget-object p0, p0, Liuh;->E:Lits;

    nop

    invoke-virtual {p0}, Lits;->a()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit p1

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

    nop

    monitor-exit p1

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_8
    iget-wide v1, v0, Liuh;->z:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_9
    iget-object v5, p1, Liuh;->J:Lmjv;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Liug;->b:Liuh;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p1, p0, Liug;->b:Liuh;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_e
    invoke-interface {p1, p0}, Llqe;->e(Lpbz;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput-wide v0, p1, Liuh;->B:J

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    check-cast v0, Ljava/lang/Boolean;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0x16

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const-wide/16 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_14
    const v1, 0x4

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-wide v1, v0, Liuh;->B:J

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_16
    iget-object p1, p0, Liug;->a:Llqe;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    throw p0

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_19
    iget-wide v3, v0, Liuh;->y:J

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_1b
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_1c
    check-cast p1, Llqe;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1d
    invoke-virtual/range {v5 .. v12}, Lmjv;->L(IJJFZ)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object p1, p1, Liuh;->i:Ljava/util/Set;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_21
    iget v6, p0, Liug;->c:I

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v0}, Liuh;->a()F

    move-result v11

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_23
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1e

    nop

    :goto_24
    iget-wide v3, v0, Liuh;->A:J

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_25
    sub-long v7, v1, v3

    nop

    goto/32 :goto_8

    nop

    nop
.end method
