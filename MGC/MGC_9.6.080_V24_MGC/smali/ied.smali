.class public final Lied;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/util/Queue;

.field public b:J

.field public c:Z

.field public d:Lief;


# direct methods
.method public constructor <init>()V
    .locals 3

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v2, 0x7

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x0

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_2
    goto/32 :goto_11

    nop

    :goto_3
    iput-wide v0, p0, Lied;->b:J

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    const-wide/16 v0, 0x0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object v0, p0, Lied;->a:Ljava/util/Queue;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_6
    new-instance v0, Ljava/util/PriorityQueue;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {v1, v2}, Ldqy;-><init>(I)V

    goto/32 :goto_9

    nop

    nop

    :goto_8
    iput-object v0, p0, Lied;->d:Lief;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v2, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_a
    const v0, 0x1a

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_b
    invoke-direct {v0, v2, v1}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_d
    return-void

    nop

    :goto_e
    goto/32 :goto_2

    nop

    nop

    :goto_f
    new-instance v1, Ldqy;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_e

    nop

    nop

    :goto_11
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v1, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iput-boolean v0, p0, Lied;->c:Z

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_17
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 2

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_5
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Lied;->a:Ljava/util/Queue;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v0, 0x0

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

    :goto_9
    rem-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_a
    const v1, 0x10

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

    :goto_b
    iput-object v0, p0, Lied;->d:Lief;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const-wide/16 v0, 0x0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_f
    iput-boolean v0, p0, Lied;->c:Z

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput-wide v0, p0, Lied;->b:J

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

    :goto_11
    const v0, 0x16

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop
.end method
