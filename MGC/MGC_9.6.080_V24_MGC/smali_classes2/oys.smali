.class public final synthetic Loys;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpcm;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;

.field private final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_4

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
    iput-object p2, p0, Loys;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Loys;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_1

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
    iput p3, p0, Loys;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public synthetic constructor <init>(Loyt;Lpcm;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p3, p0, Loys;->c:I

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Loys;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Loys;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    return-void

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 7

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_2
    check-cast v1, Lppv;

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    check-cast p1, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-ne v0, v1, :cond_0

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    nop

    :goto_5
    check-cast p1, Lows;

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

    nop

    :goto_6
    sub-long v0, v3, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1}, Lows;->close()V

    :goto_8
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_9
    iget v0, p0, Loys;->c:I

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_a
    move-object v1, v0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_b
    if-nez p1, :cond_1

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_1
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_d
    iget-wide v3, v0, Lppt;->b:J

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_e
    const v0, 0xc

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_f
    check-cast v0, Lppt;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_10
    check-cast p1, Ljava/lang/Long;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_12
    check-cast p1, Ljava/lang/Long;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v0, v0, Loyt;->b:Loyu;

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_15
    check-cast p0, Ljava/util/concurrent/atomic/AtomicBoolean;

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

    :goto_16
    invoke-virtual {p0, p1}, Loxv;->a(Ljava/lang/Object;)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_17
    check-cast v0, Loyt;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_19
    check-cast p0, Loxv;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object p1, p0, Loys;->b:Ljava/lang/Object;

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

    :goto_1b
    iget-object p1, p1, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_1c
    iget-object p1, p1, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_1d
    iget-object v0, p1, Landroidx/wear/ambient/AmbientDelegate;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1e
    invoke-interface {p0, p1}, Lpcm;->a(Ljava/lang/Object;)V

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-nez v0, :cond_2

    nop

    goto/32 :goto_2d

    nop

    :cond_2
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_20
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_23
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    :cond_3
    goto/32 :goto_29

    nop

    :goto_24
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_25
    const-wide/16 v5, 0x0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

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

    :goto_27
    iget-object p0, p0, Loys;->b:Ljava/lang/Object;

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

    :goto_28
    check-cast p1, Loxv;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_38

    nop

    nop

    :goto_2a
    goto/32 :goto_9

    nop

    nop

    :goto_2b
    iget-object p1, p0, Loys;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_2c
    return-void

    nop

    nop

    :goto_2d
    goto/32 :goto_36

    nop

    nop

    :goto_2e
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const v1, 0x14

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_30
    iget-object v1, v1, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_31
    check-cast p1, Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_32
    iget-object p0, p0, Loys;->b:Ljava/lang/Object;

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

    :goto_33
    invoke-virtual {v0, p1}, Loyu;->m(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_34
    iget-object p0, p0, Loys;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_35
    iget-object v1, v1, Lppv;->f:Loyr;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_36
    iget-object v0, p0, Loys;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_37
    return-void

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_39
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_3a
    sub-long/2addr v1, v3

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

    :goto_3b
    check-cast v1, Ljava/lang/Long;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop
.end method
