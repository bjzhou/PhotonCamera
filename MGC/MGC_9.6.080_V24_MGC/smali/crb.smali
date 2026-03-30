.class final Lcrb;
.super Luci;
.source "PG"

# interfaces
.implements Lubk;


# instance fields
.field final synthetic a:Lcrc;


# direct methods
.method public constructor <init>(Lcrc;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p1, 0x1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lcrb;->a:Lcrc;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast v3, Lcng;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    invoke-interface {p1}, Lcrd;->b()Lcrc;

    move-result-object v0

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v1, v2, v3, p1}, Lcrc;->d(Lcng;ILcva;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p1, v0}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v1, p1, v2}, Lcrc;->a(Lcva;Lcng;)I

    move-result v3

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Lcrb;->a:Lcrc;

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_8
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {p1}, Lcrd;->f()V

    :goto_b
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Lcrb;->a:Lcrc;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_d
    invoke-interface {p1}, Lcrd;->i()Z

    move-result v0

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/16 :goto_28

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_1

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

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_12
    iget-object p1, p1, Lcva;->u:Lcva;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_13
    check-cast p1, Lcrd;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-interface {p1}, Lcrd;->d()Lcva;

    move-result-object v4

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

    :goto_15
    iget-object v1, p0, Lcrb;->a:Lcrc;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_2d

    nop

    :goto_18
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

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

    nop

    :goto_1a
    iget-boolean v0, v0, Lcrc;->b:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_1b
    iget-object v1, p0, Lcrb;->a:Lcrc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_1c
    goto/16 :goto_30

    nop

    nop

    :goto_1d
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1e
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_17

    nop

    :goto_1f
    iget-object p1, p1, Lcva;->u:Lcva;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_20
    goto/32 :goto_18

    nop

    :goto_21
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_2
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v0, p1}, Lcrc;->c(Lcva;)Ljava/util/Map;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_23
    check-cast v2, Ljava/util/Map$Entry;

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_24
    const v1, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_25
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_26
    const v0, 0x7

    nop

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

    :goto_27
    goto/16 :goto_42

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v1, v3, v2, v4}, Lcrc;->d(Lcng;ILcva;)V

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_2c
    return-object p0

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_2e
    iget-object v0, v0, Lcrc;->h:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_31
    if-nez v2, :cond_3

    nop

    goto/32 :goto_40

    nop

    nop

    :cond_3
    goto/32 :goto_2a

    nop

    nop

    :goto_32
    check-cast v2, Lcng;

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_33
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_34
    invoke-interface {p1}, Lcrd;->d()Lcva;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    if-nez v2, :cond_4

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_36
    invoke-interface {v0}, Lcrd;->d()Lcva;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_37
    if-eqz v0, :cond_5

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_38
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_39
    invoke-interface {p1}, Lcrd;->b()Lcrc;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_e

    nop

    nop

    :goto_3c
    check-cast v2, Ljava/lang/Number;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_3d
    iget-object v0, v0, Lcrc;->a:Lcrd;

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    goto :goto_3b

    nop

    :goto_40
    goto/32 :goto_34

    nop

    nop

    :goto_41
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_42
    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method
