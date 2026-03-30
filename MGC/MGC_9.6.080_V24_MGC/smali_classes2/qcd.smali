.class public final synthetic Lqcd;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lrsk;


# instance fields
.field public final synthetic a:Ljava/util/Set;

.field public final synthetic b:Lpwz;

.field public final synthetic c:Ljava/util/concurrent/atomic/AtomicLong;

.field public final synthetic d:Ljava/util/Set;

.field public final synthetic e:Z

.field public final synthetic f:Lqcf;

.field public final synthetic g:Lqap;

.field public final synthetic h:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;Lpwz;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/Set;ZLqcf;Lqap;Ljava/util/Set;)V
    .locals 0

    goto/32 :goto_7

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iput-object p3, p0, Lqcd;->c:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p8, p0, Lqcd;->h:Ljava/util/Set;

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
    iput-object p4, p0, Lqcd;->d:Ljava/util/Set;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    iput-boolean p5, p0, Lqcd;->e:Z

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Lqcd;->a:Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    iput-object p7, p0, Lqcd;->g:Lqap;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_8
    iput-object p2, p0, Lqcd;->b:Lpwz;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_9
    iput-object p6, p0, Lqcd;->f:Lqcf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2
    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_3
    goto/32 :goto_a

    nop

    nop

    :goto_4
    iget-object v3, p0, Lqcd;->d:Ljava/util/Set;

    nop

    nop

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

    :goto_5
    iget-boolean v2, p0, Lqcd;->e:Z

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

    :goto_6
    iget-object v0, p0, Lqcd;->a:Ljava/util/Set;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_9
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v3, p0, Lqcd;->g:Lqap;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p0, p0, Lqcd;->h:Ljava/util/Set;

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_c
    iget-wide v2, v0, Lqcf;->d:J

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_d
    iget-wide v4, v0, Lqcf;->a:J

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_e
    iget-object v2, p0, Lqcd;->c:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_f
    iget-wide v2, v0, Lqcf;->c:J

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-interface {p0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_12
    iget-object v1, p0, Lqcd;->b:Lpwz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_14
    iput-wide v4, v0, Lqcf;->b:J

    nop

    nop

    :goto_15
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_16
    iget-object v3, v3, Lqap;->a:Lpww;

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_17
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iput v2, v0, Lqcf;->f:I

    nop

    nop

    :goto_19
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1a
    add-long/2addr v4, v6

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_1c
    if-nez v2, :cond_0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iput-wide v4, v0, Lqcf;->a:J

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

    :goto_1e
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-eqz v3, :cond_1

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_20
    if-nez v2, :cond_2

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_39

    nop

    nop

    :goto_21
    check-cast p1, Ljava/lang/Long;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_21

    nop

    nop

    :goto_24
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

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

    :goto_25
    iget v2, v0, Lqcf;->f:I

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_26
    const v0, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_27
    add-int/lit8 v2, v2, 0x1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_28
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_29
    add-long/2addr v2, v4

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    if-eqz v4, :cond_3

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_3
    goto/32 :goto_20

    nop

    nop

    :goto_2b
    return-object p0

    nop

    :goto_2c
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iput-wide v2, v0, Lqcf;->c:J

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    add-long/2addr v4, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    if-lez v0, :cond_4

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_22

    nop

    :goto_30
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-interface {p0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_32
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_33
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_34
    iget-boolean v3, v3, Lpww;->f:Z

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iput-wide v2, v0, Lqcf;->d:J

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_38
    if-nez v3, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :cond_5
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_39
    iget-wide v4, v0, Lqcf;->b:J

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_3a
    iget-object v0, p0, Lqcd;->f:Lqcf;

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3b
    if-eqz v2, :cond_6

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_6
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_3c
    add-long/2addr v2, v4

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop
.end method
