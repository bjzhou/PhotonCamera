.class final Llpx;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpbz;


# instance fields
.field final synthetic a:Llpz;


# direct methods
.method public constructor <init>(Llpz;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Llpx;->a:Llpz;

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
    return-void

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 7

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    :try_start_0
    iput-boolean v2, v0, Llpz;->e:Z

    nop

    nop

    iget-object v2, v0, Llpz;->a:Loxv;

    nop

    nop

    nop

    iget-object v3, v2, Loxv;->d:Ljava/lang/Object;

    nop

    check-cast v3, Ljava/lang/Long;

    nop

    nop

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    nop

    nop

    nop

    nop

    iget-wide v5, v0, Llpz;->b:J

    nop

    sub-long/2addr v3, v5

    nop

    nop

    nop

    nop

    nop

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v3}, Loxv;->a(Ljava/lang/Object;)V

    invoke-virtual {v0}, Llpz;->b()V

    monitor-exit v1

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v1, v0, Llpz;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_3
    const v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_4
    throw p0

    nop

    nop

    :goto_5
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_6
    monitor-enter v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_10

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

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_b
    return-void

    nop

    :catchall_0
    move-exception p0

    nop

    :try_start_1
    monitor-exit v1

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {p1, p0}, Llqe;->e(Lpbz;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_8

    nop

    nop

    :goto_e
    iget-object v0, p0, Llpx;->a:Llpz;

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

    nop

    :goto_f
    const v1, 0x1f

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_10
    check-cast p1, Llqe;

    nop

    goto/32 :goto_e

    nop

    nop
.end method
