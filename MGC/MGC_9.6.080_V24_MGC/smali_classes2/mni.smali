.class public final Lmni;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ltun;


# instance fields
.field private final a:Ltxm;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Ltxm;I)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lmni;->a:Ltxm;

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

    :goto_1
    return-void

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    iput p2, p0, Lmni;->b:I

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lmni;->b()Lmmy;

    move-result-object p0

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
    if-nez v0, :cond_0

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lmni;->b()Lmmy;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_5
    iget v0, p0, Lmni;->b:I

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

    :goto_6
    return-object p0

    nop
.end method

.method public final b()Lmmy;
    .locals 5

    goto/32 :goto_43

    nop

    nop

    :goto_0
    sget-object v2, Lmmx;->b:Ljava/util/Map;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, v3}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object p0

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

    :goto_3
    invoke-virtual {v0}, Lohc;->b()Lmmy;

    move-result-object v0

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

    :goto_4
    iget-object v4, v0, Lmmy;->a:Lmmw;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_5
    sget-object v2, Lmmx;->b:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lmni;->a:Ltxm;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_7
    sget-object v1, Lmmw;->f:Lmmw;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Lj$/util/Optional;->get()Ljava/lang/Object;

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

    :goto_9
    invoke-virtual {v1, v2}, Lohc;->c(Lmmw;)V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0, v1}, Lohc;->c(Lmmw;)V

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_c
    invoke-static {v2, v3, v4}, Lj$/util/Map$-EL;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {v1}, Lohc;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0, v1}, Lohc;->d(Lmmw;)V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v3}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_10
    sget-object v3, Lhnt;->r:Lhmo;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0, v3}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object v3

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v4, v0, Lmmy;->a:Lmmw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v1, 0x12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_14
    check-cast p0, Lmmw;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_15
    check-cast p0, Lhoh;

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_16
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_37

    nop

    :goto_17
    invoke-direct {v0}, Lohc;-><init>()V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-interface {p0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_19
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v1}, Lohc;->b()Lmmy;

    move-result-object p0

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    sget-object v1, Lmmw;->f:Lmmw;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1c
    check-cast v2, Lmmw;

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    new-instance v0, Lohc;

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    sget-object v3, Lhnt;->o:Lhmo;

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

    nop

    :goto_1f
    invoke-direct {v1}, Lohc;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    sget-object v3, Lhnt;->q:Lhmo;

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_21
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v1, p0}, Lohc;->d(Lmmw;)V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-static {v2, p0, v0}, Lj$/util/Map$-EL;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p0, v3}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v0}, Lohc;->b()Lmmy;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-static {v2, v3, v4}, Lj$/util/Map$-EL;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_28
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p0, v3}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-direct {v0}, Lohc;-><init>()V

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_2b
    sget-object v2, Lmmx;->b:Ljava/util/Map;

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v1}, Lohc;->b()Lmmy;

    move-result-object p0

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    sget-object v2, Lmmx;->b:Ljava/util/Map;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_2e
    check-cast p0, Lmmw;

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {p0}, Lj$/util/Optional;->get()Ljava/lang/Object;

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

    :goto_30
    invoke-static {v2, p0, v0}, Lj$/util/Map$-EL;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v1, p0}, Lohc;->d(Lmmw;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_32
    check-cast p0, Lhoh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_33
    invoke-virtual {v1, v2}, Lohc;->c(Lmmw;)V

    goto/32 :goto_2d

    nop

    nop

    :goto_34
    invoke-virtual {v0, v1}, Lohc;->c(Lmmw;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    sget-object v3, Lhnt;->p:Lhmo;

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    check-cast v2, Lmmw;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_37
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    sget-object v1, Lmmw;->g:Lmmw;

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_3a
    new-instance v0, Lohc;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_3b
    iget-object v0, v0, Lmmy;->b:Lmmw;

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

    :goto_3c
    return-object p0

    nop

    nop

    :goto_3d
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    iget v0, p0, Lmni;->b:I

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_3f
    invoke-virtual {v0, v1}, Lohc;->d(Lmmw;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    new-instance v1, Lohc;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_41
    sget-object v1, Lmmw;->e:Lmmw;

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v3}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

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

    :goto_43
    const v0, 0x6

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    new-instance v1, Lohc;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_45
    iget-object v0, v0, Lmmy;->b:Lmmw;

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    iget-object p0, p0, Lmni;->a:Ltxm;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_47
    add-int v0, v0, v1

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
.end method
