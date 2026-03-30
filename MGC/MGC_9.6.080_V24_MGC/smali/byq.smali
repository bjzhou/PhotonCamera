.class final Lbyq;
.super Luci;
.source "PG"

# interfaces
.implements Lubo;


# instance fields
.field final synthetic a:Lbyt;


# direct methods
.method public constructor <init>(Lbyt;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lbyq;->a:Lbyt;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    const/4 p1, 0x2

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    instance-of v1, v0, Ljava/util/Set;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1
    invoke-static {}, Lbyt;->c()V

    goto/32 :goto_37

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v2, 0x1

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

    nop

    :goto_4
    check-cast v1, Ljava/util/Collection;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_5
    iget-object v0, p2, Lbyt;->b:Ljava/util/concurrent/atomic/AtomicReference;

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

    :goto_6
    iget-object p1, p0, Lbyq;->a:Lbyt;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v1, 0x2

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/16 :goto_36

    nop

    nop

    :goto_9
    goto/32 :goto_0

    nop

    nop

    :goto_a
    aput-object v0, v1, v2

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_b
    check-cast p1, Ljava/util/Set;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_c
    invoke-static {p1}, Lrkm;->ac(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p2, p0, Lbyq;->a:Lbyt;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_10

    nop

    :goto_f
    goto/32 :goto_2e

    nop

    :goto_10
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p1}, Lbyt;->b()Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_13
    goto/16 :goto_36

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_15
    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_16
    instance-of v1, v0, Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_17
    check-cast p2, Lbxt;

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_19
    if-nez p1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    new-array v1, v1, [Ljava/util/Set;

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-nez v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :cond_2
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_1c
    const v1, 0x18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_1d
    const v0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    new-instance p1, Lbys;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1f
    move-object v1, v0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_20
    invoke-direct {p1, p0}, Lbys;-><init>(Lbyt;)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {v1}, Lrkm;->aQ([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_22
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_3
    goto/32 :goto_f

    nop

    :goto_23
    iget-object p0, p0, Lbyt;->a:Lubk;

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_24
    aput-object p1, v1, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_25
    iget-object p2, p2, Lbyt;->b:Ljava/util/concurrent/atomic/AtomicReference;

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

    nop

    nop

    :goto_26
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-static {p2, v0, v1}, La;->aS(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_29
    add-int v0, v0, v1

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

    :goto_2a
    invoke-direct {p0}, Ltxr;-><init>()V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object p0, p0, Lbyq;->a:Lbyt;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_2c
    const/4 v2, 0x0

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

    :goto_2d
    throw p0

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    move-object v1, p1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_30
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_31
    if-eqz v0, :cond_4

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    if-nez p2, :cond_5

    nop

    nop

    goto/32 :goto_18

    nop

    :cond_5
    goto/32 :goto_6

    nop

    nop

    :goto_33
    invoke-interface {p0, p1}, Lubk;->a(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_34
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-static {v1, v2}, Lrkm;->ay(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_25

    nop

    nop

    :goto_37
    new-instance p0, Ltxr;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop
.end method
