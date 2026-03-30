.class final Lbj;
.super Lbm;
.source "PG"


# instance fields
.field final synthetic a:Lol;

.field final synthetic b:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic c:Lnv;

.field final synthetic d:Lnm;

.field final synthetic e:Lbo;


# direct methods
.method public constructor <init>(Lbo;Lol;Ljava/util/concurrent/atomic/AtomicReference;Lnv;Lnm;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p4, p0, Lbj;->c:Lnv;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lbj;->e:Lbo;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Lbm;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p3, p0, Lbj;->b:Ljava/util/concurrent/atomic/AtomicReference;

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

    :goto_4
    iput-object p5, p0, Lbj;->d:Lnm;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    :goto_6
    iput-object p2, p0, Lbj;->a:Lol;

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
.end method


# virtual methods
.method public final a()V
    .locals 8

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_0
    const-string v0, "LifecycleOwner "

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_1
    check-cast v4, Leur;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2
    new-instance v4, Leur;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_3
    new-instance v5, Lno;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_4
    iget-object v4, p0, Lbj;->e:Lbo;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_5
    sget-object v7, Leaq;->d:Leaq;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_40

    nop

    nop

    nop

    :goto_8
    iget-object v1, v1, Lbo;->ae:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v1, p0, Lbj;->e:Lbo;

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_b
    if-eqz v4, :cond_0

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    :goto_c
    invoke-virtual {v6, v7}, Leaq;->a(Leaq;)Z

    move-result v6

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_d
    check-cast v2, Lnr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const-string v1, "fragment_"

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_f
    invoke-interface {v2}, Lol;->a()Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0x1a

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_16
    const-string v0, " is attempting to register while current state is "

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_17
    invoke-direct {v5, v2, v0, v3, v1}, Lno;-><init>(Lnr;Ljava/lang/String;Lnm;Lnv;)V

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_19

    nop

    :goto_1b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object p0, p0, Lbj;->b:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v1, v4, Leur;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_20
    iget-object v0, v5, Lear;->b:Leaq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

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

    nop

    nop

    :goto_22
    invoke-direct {v0}, Lnp;-><init>()V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const v0, 0x9

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_24
    iget-object v2, p0, Lbj;->a:Lol;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_25
    const-string v0, ". LifecycleOwners must call register before they are STARTED."

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

    :goto_26
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_27
    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_28
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v2, v0}, Lnr;->c(Ljava/lang/String;)V

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object v1, v2, Lnr;->c:Ljava/util/Map;

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

    nop

    :goto_2b
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2c
    const-string v2, "_rq#"

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-interface {v4}, Leaw;->getLifecycle()Lear;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_2e
    iget-object v1, v4, Leur;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_2f
    new-instance v0, Lnp;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iget-object v2, v1, Lbo;->m:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iget-object v6, v5, Lear;->b:Leaq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_33
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_46

    nop

    nop

    :goto_34
    if-eqz v6, :cond_1

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

    :cond_1
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v1, v5}, Lear;->a(Leav;)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_37
    check-cast v1, Lear;

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_38
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_39
    iget-object v1, p0, Lbj;->c:Lnv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_3a
    throw v0

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iget-object v3, p0, Lbj;->d:Lnm;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_3d
    iget-object v4, v2, Lnr;->c:Ljava/util/Map;

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_3e
    if-lez v0, :cond_2

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_18

    nop

    :goto_3f
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_40
    new-instance p0, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_42
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_43
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_44
    invoke-direct {v4, v5}, Leur;-><init>(Lear;)V

    :goto_45
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_46
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_16

    nop

    nop

    nop

    nop
.end method
