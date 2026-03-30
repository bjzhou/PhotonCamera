.class public final synthetic Lral;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lssx;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field private final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;JLjava/lang/Object;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iput p5, p0, Lral;->d:I

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
    iput-object p4, p0, Lral;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lral;->b:Ljava/lang/Object;

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

    :goto_4
    iput-wide p2, p0, Lral;->a:J

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lsui;
    .locals 5

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_0
    if-gtz v0, :cond_0

    nop

    nop

    goto/32 :goto_3c

    nop

    :cond_0
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_1
    or-int/lit8 v4, v4, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_43

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

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    :goto_4
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_5
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_6
    iget-wide v0, p1, Lpxb;->f:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_7
    const-string v0, "Offset for write (%s) out of range of existing file size (%s bytes)"

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Lram;->c:Lstn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_9
    check-cast p1, Ljava/lang/Long;

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0, v2, p1}, Lstn;->b(Lssw;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_b
    iget-object v1, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p1, p0, Lral;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_d
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p0, p0, Lral;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_f
    iget-object p1, p0, Lral;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object p0, p0, Lral;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0, p1}, Ltkb;->r(Ltkg;)V

    goto/32 :goto_1d

    nop

    nop

    :goto_13
    const v0, 0xb

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_14
    iget-wide v2, p0, Lral;->a:J

    nop

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

    nop

    :goto_15
    if-eqz p1, :cond_2

    nop

    nop

    goto/32 :goto_2a

    nop

    :cond_2
    goto/32 :goto_29

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

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_17
    throw p0

    nop

    :goto_18
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_19
    cmp-long v0, v2, v0

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

    :goto_1a
    iput-wide v2, v1, Lpxb;->f:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_1b
    invoke-interface {p0, p1, v0}, Lqaj;->h(Lpwz;Lpxb;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    check-cast p1, Lpxb;

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

    :goto_1d
    iget-object p1, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_1e
    cmp-long v2, v0, v2

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    return-object p0

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_10

    nop

    nop

    :goto_21
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_22
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :cond_3
    goto/32 :goto_24

    nop

    :goto_23
    check-cast p0, Lram;

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-gez v2, :cond_4

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_27
    invoke-direct {v2, p0, p1, v0, v1}, Lraj;-><init>(Lram;Loch;J)V

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_28
    iget v4, v1, Lpxb;->b:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_2a
    goto/32 :goto_c

    nop

    nop

    :goto_2b
    invoke-virtual {p1, v0}, Ltkg;->D(I)Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_2c
    check-cast v0, Lpxb;

    nop

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

    :goto_2d
    new-instance v2, Lraj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_2e
    invoke-static {v0, p1}, Lrrf;->i(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    cmp-long v2, v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    check-cast v0, Ltkb;

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_31
    check-cast p0, Lqah;

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_32
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget-object p0, p0, Lqah;->c:Lqaj;

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v0}, Ltkb;->i()Ltkg;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_35
    const v1, 0xe

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

    :goto_36
    iget v0, p0, Lral;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_38
    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_39
    iget-wide v0, p0, Lral;->a:J

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_3a
    check-cast p1, Loch;

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_3b
    goto :goto_46

    nop

    nop

    :goto_3c
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    if-lez v2, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    iget-object p1, p0, Lram;->b:Ljava/util/concurrent/Executor;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_41
    check-cast p1, Lpwz;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_42
    const-wide/16 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_43
    iput v4, v1, Lpxb;->b:I

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual {p1}, Ltkg;->C()Z

    move-result p1

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

    :goto_45
    invoke-static {p0}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object p0

    nop

    :goto_46
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_47
    check-cast v1, Lpxb;

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    const/4 v0, 0x5

    nop

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
.end method
