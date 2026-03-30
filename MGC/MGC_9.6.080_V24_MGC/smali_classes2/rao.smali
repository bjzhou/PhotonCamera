.class public final Lrao;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lrba;


# instance fields
.field public final a:Lran;

.field private final b:J

.field private c:J

.field private final d:Lpuq;


# direct methods
.method public constructor <init>(Lran;Lpuq;Ljava/util/concurrent/TimeUnit;)V
    .locals 0

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    invoke-static {}, Lpuq;->S()J

    move-result-wide p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    iput-wide p1, p0, Lrao;->c:J

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    iput-wide p1, p0, Lrao;->b:J

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

    :goto_3
    return-void

    nop

    :goto_4
    const-wide/16 p1, 0xa

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_8

    nop

    nop

    :goto_6
    iput-object p2, p0, Lrao;->d:Lpuq;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

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

    :goto_8
    iput-object p1, p0, Lrao;->a:Lran;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p1}, Lran;->b()V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {}, Lpuq;->S()J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_3
    iget-object v0, p0, Lrao;->a:Lran;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x5

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {v0, p1}, Lran;->a(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-gez p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    sub-long/2addr v0, v2

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    :goto_9
    return-void

    nop

    nop

    :goto_a
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_b
    iget-wide v2, p0, Lrao;->b:J

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p1, p0, Lrao;->a:Lran;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_d
    iput-wide v0, p0, Lrao;->c:J

    nop

    :goto_e
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_11
    cmp-long p1, v0, v2

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {}, Lpuq;->S()J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v0, 0x1c

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_16
    iget-wide v2, p0, Lrao;->c:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop
.end method

.method public final close()V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0}, Lran;->b()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lrao;->a:Lran;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method
