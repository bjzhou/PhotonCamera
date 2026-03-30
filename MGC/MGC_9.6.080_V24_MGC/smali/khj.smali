.class public final synthetic Lkhj;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Z

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field private final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lghe;ZZLrss;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p5, p0, Lkhj;->e:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    iput-object p1, p0, Lkhj;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    iput-object p4, p0, Lkhj;->d:Ljava/lang/Object;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    iput-boolean p3, p0, Lkhj;->b:Z

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

    :goto_4
    iput-boolean p2, p0, Lkhj;->a:Z

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
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public synthetic constructor <init>(Lkhk;Lprw;ZZI)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    iput-boolean p3, p0, Lkhj;->a:Z

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

    :goto_3
    iput p5, p0, Lkhj;->e:I

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    iput-boolean p4, p0, Lkhj;->b:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Lkhj;->c:Ljava/lang/Object;

    nop

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

    :goto_6
    iput-object p2, p0, Lkhj;->d:Ljava/lang/Object;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final run()V
    .locals 6

    goto/32 :goto_8

    nop

    nop

    :goto_0
    invoke-virtual {p0, v2, v1, v0}, Lghe;->i(ZZLrss;)V

    goto/32 :goto_17

    nop

    nop

    :goto_1
    iget-boolean v2, p0, Lkhj;->b:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lkhj;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget v0, p0, Lkhj;->e:I

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_4
    iget-boolean v1, p0, Lkhj;->b:Z

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_5
    check-cast v0, Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_7
    monitor-enter v1

    nop

    nop

    :try_start_0
    move-object v4, v0

    nop

    check-cast v4, Lkhk;

    nop

    nop

    nop

    nop

    nop

    iget-object v4, v4, Lkhk;->a:Lkho;

    nop

    nop

    nop

    nop

    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    nop

    iput-boolean v5, v4, Lkho;->a:Z

    nop

    nop

    nop

    nop

    nop

    new-instance v5, Lpol;

    nop

    invoke-direct {v5, p0}, Lpol;-><init>(Lprw;)V

    invoke-static {v5}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object p0

    nop

    nop

    iput-object p0, v4, Lkho;->b:Lrss;

    nop

    nop

    nop

    nop

    nop

    move-object p0, v0

    nop

    nop

    check-cast p0, Lkhk;

    nop

    iget-object p0, p0, Lkhk;->a:Lkho;

    nop

    nop

    nop

    nop

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    nop

    nop

    nop

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    nop

    nop

    nop

    nop

    invoke-static {v4}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v4

    nop

    nop

    nop

    nop

    iput-object v4, p0, Lkho;->g:Lrss;

    nop

    nop

    nop

    nop

    nop

    move-object p0, v0

    nop

    check-cast p0, Lkhk;

    nop

    nop

    nop

    nop

    iget-object p0, p0, Lkhk;->a:Lkho;

    nop

    nop

    nop

    nop

    iput-boolean v3, p0, Lkho;->j:Z

    nop

    nop

    nop

    nop

    iput-boolean v2, p0, Lkho;->k:Z

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Lkhk;

    nop

    iget-object p0, v0, Lkhk;->b:Lkhq;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Lkhq;->o()V

    monitor-exit v1

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

    nop

    monitor-exit v1

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x7

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_c

    nop

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_d
    check-cast v1, Lkhk;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_11
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_15

    nop

    nop

    :goto_13
    iget-object v1, v1, Lkhk;->b:Lkhq;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_14
    check-cast p0, Lghe;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_15
    iget-object v0, p0, Lkhj;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_16
    iget-boolean v3, p0, Lkhj;->a:Z

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_17
    return-void

    nop

    nop

    :goto_18
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_19
    iget-object p0, p0, Lkhj;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object p0, p0, Lkhj;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1b
    iget-boolean v2, p0, Lkhj;->a:Z

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    move-object v1, v0

    nop

    goto/32 :goto_d

    nop

    nop

    nop
.end method
