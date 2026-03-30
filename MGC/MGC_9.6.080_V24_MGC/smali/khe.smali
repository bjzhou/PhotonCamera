.class public final Lkhe;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lkjc;


# static fields
.field private static final g:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final a:Likv;

.field public final b:Lpnu;

.field public final c:Lkhf;

.field public final d:Llgc;

.field public final e:Lhoh;

.field public final f:Liof;

.field private final h:Lpcu;

.field private final i:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_2
    sput-object v0, Lkhe;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_3
    const v0, 0x19

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_6

    nop

    :goto_9
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x17

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop
.end method

.method public constructor <init>(Likv;Lpnu;Lpcu;Lhoh;Lkhf;Ljava/util/concurrent/Executor;Liof;Llgc;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    :goto_1
    iput-object p1, p0, Lkhe;->h:Lpcu;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    iput-object p7, p0, Lkhe;->f:Liof;

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

    :goto_4
    iput-object p5, p0, Lkhe;->c:Lkhf;

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
    iput-object p1, p0, Lkhe;->a:Likv;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p2, p0, Lkhe;->b:Lpnu;

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

    :goto_7
    iput-object p4, p0, Lkhe;->e:Lhoh;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p8, p0, Lkhe;->d:Llgc;

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

    :goto_9
    iput-object p6, p0, Lkhe;->i:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {p3, p1}, Lpcu;->a(Ljava/lang/String;)Lpcu;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_b
    const-string p1, "MomentsHdrPLaunch"

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop
.end method


# virtual methods
.method public final a()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x1

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b(Lpge;Lkmq;Lkjj;Lkjb;)V
    .locals 8

    goto/32 :goto_14

    nop

    nop

    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1
    const-string v2, "    with frame: "

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v1, p0, Lkhe;->h:Lpcu;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_3
    move-object v7, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_5
    iget-wide v2, v0, Lpgi;->b:J

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x17

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_a
    invoke-interface {v4, v0}, Lpcu;->b(Ljava/lang/String;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    move-object v1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_c
    const-string v2, "launcher shot "

    nop

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

    :goto_d
    new-instance v0, Lkha;

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

    :goto_e
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_f
    sget-object v0, Lkhe;->g:Ljava/util/concurrent/atomic/AtomicInteger;

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
    invoke-direct {v4, v1, v0}, Lpcy;-><init>(Lpcu;Ljava/lang/String;)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_11
    new-instance v4, Lpcy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_14
    const v0, 0x19

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_15
    move-object v3, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_16
    iget-object p0, p0, Lkhe;->i:Ljava/util/concurrent/Executor;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_19

    nop

    :goto_18
    move-object v2, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_27

    nop

    :goto_1a
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1c
    invoke-interface {v4, v0}, Lpcu;->b(Ljava/lang/String;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-interface {p1}, Lpge;->b()Lpgi;

    move-result-object v0

    nop

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

    :goto_1e
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    move-object v6, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_20
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_26

    nop

    nop

    :goto_21
    invoke-direct/range {v1 .. v7}, Lkha;-><init>(Lkhe;Lpge;Lpcu;Lkjb;Lkmq;Lkjj;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    rem-int v0, v0, v1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const-string v0, "launcher got a HDR+ burst"

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    move-object v5, p4

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

    :goto_26
    return-void

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_29
    const-string v0, " "

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2a
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public final c(Lpge;Llgc;)Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    nop
.end method
