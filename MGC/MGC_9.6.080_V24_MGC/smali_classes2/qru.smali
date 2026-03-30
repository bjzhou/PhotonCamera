.class public final Lqru;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lqnj;


# instance fields
.field final synthetic a:Lsul;

.field public final synthetic b:Lqrw;


# direct methods
.method public constructor <init>(Lqrw;Lsul;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lqru;->a:Lsul;

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

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lqru;->b:Lqrw;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method


# virtual methods
.method public final i(Lqmf;)V
    .locals 4

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    const/16 v1, 0x13

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-direct {v0, p0, p1, v1, v2}, Lpho;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    goto/32 :goto_11

    nop

    nop

    :goto_3
    invoke-virtual {v0}, Lqrw;->a()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v0, Lpho;

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

    :goto_6
    const v0, 0xf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_7
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {p1, v0, v1, v2, v3}, Lsul;->d(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lsun;

    move-result-object p1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v1, 0x3

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v0, v0, Lqrw;->d:Lqrv;

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

    :goto_b
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_e
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const-wide/16 v1, 0xa

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_10
    const v1, 0x7

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

    nop

    :goto_11
    iget-object p1, p0, Lqru;->a:Lsul;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iput-object p1, p0, Lqrw;->f:Ljava/util/concurrent/ScheduledFuture;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-interface {v0, v1, v2}, Lqrv;->a(ILjava/lang/String;)V

    goto/32 :goto_16

    nop

    nop

    :goto_14
    iget-object p0, p0, Lqru;->b:Lqrw;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_15
    iget-object v0, p0, Lqru;->b:Lqrw;

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_16
    iget-object v0, p0, Lqru;->b:Lqrw;

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

    :goto_17
    iget-object v2, p1, Lqmf;->a:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_18
    return-void

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop
.end method

.method public final j(Lqmf;)V
    .locals 4

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_5

    nop

    :goto_1
    iget-object v0, p0, Lqru;->b:Lqrw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v2, p1, Lqmf;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_3
    const/16 v1, 0x14

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1a

    nop

    nop

    :goto_5
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, v0, Lqrw;->d:Lqrv;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_7
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_8
    const-wide/16 v1, 0xa

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Lqru;->b:Lqrw;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_b
    const/4 v1, 0x4

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

    :goto_c
    invoke-direct {v0, p0, p1, v1, v2}, Lpho;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-interface {p1, v0, v1, v2, v3}, Lsul;->d(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lsun;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-interface {v0, v1, v2}, Lqrv;->a(ILjava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    :goto_f
    new-instance v0, Lpho;

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

    nop

    :goto_10
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_12
    iput-object p1, p0, Lqrw;->e:Ljava/util/concurrent/ScheduledFuture;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v0, 0x12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_14
    const v1, 0x16

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object p1, p0, Lqru;->a:Lsul;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v0}, Lqrw;->a()V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object p0, p0, Lqru;->b:Lqrw;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_19
    return-void

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_0

    nop

    nop

    nop
.end method
