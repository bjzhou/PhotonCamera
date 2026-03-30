.class final Lknv;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lstu;


# instance fields
.field final synthetic a:Lgig;

.field final synthetic b:Lkbe;

.field final synthetic c:Lows;

.field final synthetic d:Lknw;


# direct methods
.method public constructor <init>(Lknw;Lgig;Lkbe;Lows;)V
    .locals 0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lknv;->d:Lknw;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    iput-object p4, p0, Lknv;->c:Lows;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p3, p0, Lknv;->b:Lkbe;

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

    :goto_5
    iput-object p2, p0, Lknv;->a:Lgig;

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
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 3

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v1, "OneCamera failed to open, closing lifetime."

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

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

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1

    nop

    nop

    :goto_5
    new-instance p1, Lpfi;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x1c

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    :goto_8
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

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
    add-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0, p1}, Lkbe;->a(Ljava/lang/Throwable;)Z

    goto/32 :goto_3

    nop

    nop

    :goto_c
    iget-object p1, p0, Lknv;->c:Lows;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_d
    const v1, 0x1b

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_e
    invoke-virtual {p1}, Lows;->close()V

    goto/32 :goto_16

    nop

    nop

    :goto_f
    invoke-static {v1, v2, v0, p1}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    :goto_10
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {p1, v0}, Lpfi;-><init>(Ljava/lang/String;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_12
    const-string v0, "OneCamera failed to open"

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_4

    nop

    nop

    :goto_14
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/16 v2, 0xbec

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_16
    iget-object p0, p0, Lknv;->b:Lkbe;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_17
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_1
    goto/32 :goto_18

    nop

    nop

    :goto_18
    sget-object v0, Lknw;->a:Lsdb;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 4

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lknv;->b:Lkbe;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    goto/32 :goto_9

    nop

    :goto_2
    iget-object v1, p0, Lknv;->c:Lows;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lknv;->d:Lknw;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lknv;->a:Lgig;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_6
    const v0, 0x10

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v3, p0, Lknw;->d:Lkbb;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_c

    nop

    :goto_9
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Lknv;->d:Lknw;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1

    nop

    nop

    :goto_d
    invoke-virtual {v0, v2}, Lkbe;->b(Lkbf;)V

    :goto_e
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_f
    invoke-direct {v2, p1, v1, v3, p0}, Lkbf;-><init>(Lkml;Lows;Lkbb;Lkog;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_10
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    new-instance v2, Lkbf;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {v0}, Lknw;->b(Lknw;)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_14
    iget-object p0, p0, Lknw;->e:Lkog;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_15
    check-cast p1, Lkml;

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

    :goto_16
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v0}, Lgig;->a()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_18
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    :goto_19
    const v1, 0x16

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
.end method
