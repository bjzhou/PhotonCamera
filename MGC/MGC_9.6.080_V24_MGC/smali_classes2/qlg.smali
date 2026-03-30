.class public final Lqlg;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public b:Lsui;

.field public c:Lsui;

.field public d:Z

.field private e:Lsui;

.field private f:Lsui;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lqlg;->c:Lsui;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lqlg;->f:Lsui;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    const/4 p1, 0x1

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

    :goto_3
    iput-boolean p1, p0, Lqlg;->d:Z

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object v0, p0, Lqlg;->e:Lsui;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    :goto_7
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_8
    invoke-static {v0}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_9
    iput-object p1, p0, Lqlg;->a:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_a
    iput-object p1, p0, Lqlg;->b:Lsui;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_b
    invoke-static {v0}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object p1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_c
    invoke-static {v0}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Lqlb;
    .locals 10

    goto/32 :goto_4

    nop

    nop

    :goto_0
    iget-object v9, p0, Lqlg;->a:Ljava/util/concurrent/Executor;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

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

    :goto_2
    iget-object v2, p0, Lqlg;->a:Ljava/util/concurrent/Executor;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_4
    const v0, 0x16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lqlg;->e:Lsui;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-object v0

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_9
    new-instance v0, Lqld;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {v0, v1, v2}, Lsso;->i(Lsui;Lrsk;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object v4

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
    const/4 v2, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {v1, v2}, Lqkq;-><init>(I)V

    goto/32 :goto_2

    nop

    nop

    :goto_d
    iget-object v5, p0, Lqlg;->f:Lsui;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_e
    iget-object v6, p0, Lqlg;->b:Lsui;

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

    :goto_f
    iget-object v7, p0, Lqlg;->c:Lsui;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_1c

    nop

    :goto_11
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    move-object v3, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

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

    :goto_14
    const v1, 0x5

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_15
    new-instance v1, Lqkq;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {v0}, Lsub;->q(Lsui;)Lsub;

    move-result-object v0

    nop

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

    nop

    :goto_17
    invoke-direct/range {v3 .. v9}, Lqld;-><init>(Lsui;Lsui;Lsui;Lsui;ZLjava/util/concurrent/Executor;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const-string v0, "Output not properly specified"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-boolean v8, p0, Lqlg;->d:Z

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1a
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1b

    nop

    nop

    :goto_1b
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_1e

    nop

    nop

    :goto_1d
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_1
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_11

    nop
.end method

.method public final b(I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lqlg;->f:Lsui;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p1}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object p1

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

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c(Ljava/io/FileDescriptor;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lqlg;->e:Lsui;

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

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    invoke-static {p1}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object p1

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
.end method
