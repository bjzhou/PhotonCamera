.class public final Lpqk;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpqg;


# instance fields
.field public final a:Lj$/util/concurrent/ConcurrentHashMap;

.field public volatile b:Lpqg;


# direct methods
.method public constructor <init>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object v0, p0, Lpqk;->b:Lpqg;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object v0, p0, Lpqk;->a:Lj$/util/concurrent/ConcurrentHashMap;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop
.end method

.method private final da190e616797844b591057d0190e7728m(Ljava/lang/String;[Lpqb;Ltlk;)Ltlk;
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p3, [Lpqb;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    iget-object p3, p0, Ltlk;->b:Ljava/lang/Object;

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

    :goto_2
    return-object p0

    nop

    nop

    :goto_3
    iget-object p0, p0, Lpqk;->a:Lj$/util/concurrent/ConcurrentHashMap;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {p1, p3, p2}, Lpuq;->bd(Ljava/lang/String;[Lpqb;[Lpqb;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    check-cast p0, Ltlk;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_6
    invoke-virtual {p0, p1, p3}, Lj$/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-eqz p0, :cond_0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_8
    return-object p3

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final varargs b(Ljava/lang/String;[Lpqb;)Ltlk;
    .locals 3

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

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

    nop

    :goto_1
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p2, v1}, Lppy;->c([Lpqb;Ltxm;)Lppy;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    invoke-direct {v0, p1, p2, p0, v1}, Ltlk;-><init>(Ljava/lang/String;[Lpqb;Lpqg;Lppy;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0, p1, p2, v0}, Lpqk;->da190e616797844b591057d0190e7728m(Ljava/lang/String;[Lpqb;Ltlk;)Ltlk;

    move-result-object v0

    nop

    :goto_5
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v2, 0x0

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

    :goto_7
    check-cast v0, Ltlk;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_8
    goto :goto_5

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_1

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_1
    goto/32 :goto_14

    nop

    :goto_b
    const v0, 0x7

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p0, v0, Ltlk;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_15

    nop

    :goto_e
    return-object v0

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Lpqk;->a:Lj$/util/concurrent/ConcurrentHashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_11
    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_12
    new-instance v0, Ltlk;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

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

    :goto_14
    goto/32 :goto_f

    nop

    nop

    :goto_15
    goto/32 :goto_10

    nop

    nop

    :goto_16
    check-cast p0, [Lpqb;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const v1, 0x9

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-direct {v1, v2}, Lppz;-><init>(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    new-instance v1, Lppz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1a
    invoke-static {p1, p0, p2}, Lpuq;->bd(Ljava/lang/String;[Lpqb;[Lpqb;)V

    goto/32 :goto_8

    nop

    nop

    nop
.end method

.method public final varargs c(Ljava/lang/String;[Lpqb;)Ltlk;
    .locals 3

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v1, v2}, Lppz;-><init>(I)V

    goto/32 :goto_b

    nop

    nop

    :goto_1
    const/4 v2, 0x2

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    goto/16 :goto_15

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    check-cast v0, Ltlk;

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_5
    iget-object v0, p0, Lpqk;->a:Lj$/util/concurrent/ConcurrentHashMap;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_7
    new-instance v0, Ltlk;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

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

    :goto_9
    return-object v0

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {p2, v1}, Lppy;->c([Lpqb;Ltxm;)Lppy;

    move-result-object v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_c
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_d
    check-cast p0, [Lpqb;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {v0, p1, p2, p0, v1}, Ltlk;-><init>(Ljava/lang/String;[Lpqb;Lpqg;Lppy;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_10
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_17

    nop

    :goto_12
    invoke-static {p1, p0, p2}, Lpuq;->bd(Ljava/lang/String;[Lpqb;[Lpqb;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_13
    new-instance v1, Lppz;

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

    nop

    :goto_14
    invoke-direct {p0, p1, p2, v0}, Lpqk;->da190e616797844b591057d0190e7728m(Ljava/lang/String;[Lpqb;Ltlk;)Ltlk;

    move-result-object v0

    nop

    :goto_15
    goto/32 :goto_9

    nop

    nop

    :goto_16
    iget-object p0, v0, Ltlk;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_a

    nop

    :goto_18
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop
.end method
