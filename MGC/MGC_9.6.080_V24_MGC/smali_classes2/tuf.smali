.class public abstract Ltuf;
.super Landroid/app/Service;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final onCreate()V
    .locals 6

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_0
    goto/32 :goto_17

    nop

    :goto_1
    invoke-interface {v0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x14

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_3
    check-cast v1, Ltuh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_4
    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_6
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_8
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_a
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_d
    check-cast v0, Lfdo;

    nop

    nop

    :try_start_0
    move-object v1, p0

    nop

    check-cast v1, Lpyk;

    nop

    nop

    nop

    nop

    new-instance v2, Ltuh;

    nop

    nop

    nop

    iget-object v3, v0, Lfdo;->a:Ljava/lang/Object;

    nop

    check-cast v3, Ljip;

    nop

    invoke-direct {v2, v3}, Ltuh;-><init>(Ljip;)V

    invoke-virtual {v0}, Lfdo;->getClass()Ljava/lang/Class;

    iget-object v2, v2, Ltuh;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast v2, Ljip;

    nop

    nop

    nop

    nop

    iget-object v2, v2, Ljip;->bg:Ltur;

    nop

    invoke-interface {v2}, Ltur;->a()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Lpxe;

    nop

    nop

    nop

    iput-object v2, v1, Lpyk;->a:Lpxe;

    nop
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_e
    new-instance v2, Ltug;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_10
    invoke-interface {v0}, Ltui;->d()Ltue;

    move-result-object v1

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

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_12
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_13
    if-nez v3, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :cond_1
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    throw v0

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_16
    if-eqz v0, :cond_2

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_c

    nop

    :goto_18
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const-string v1, "No injector factory bound for Class<%1$s>. Injector factories were bound for supertypes of %1$s: %2$s. Did you mean to bind an injector factory for the subtype?"

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_1b
    const-string v0, "%s does not implement AndroidInjector.Factory<%s>"

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    new-instance p0, Ljava/lang/RuntimeException;

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-nez v4, :cond_3

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_20
    invoke-direct {v2, p0, v1}, Ltug;-><init>(Ljava/lang/String;Ljava/lang/ClassCastException;)V

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    return-void

    nop

    nop

    nop

    :catch_0
    move-exception v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v0}, Lfdo;->getClass()Ljava/lang/Class;

    move-result-object v0

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

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

    :goto_24
    goto/16 :goto_50

    nop

    nop

    :goto_25
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/16 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_28
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_29
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object v0, v1, Ltuh;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_2b
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_2c
    check-cast v0, Ltxm;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_2d
    check-cast v0, Ltui;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

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

    :goto_2f
    new-instance v2, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    if-nez v1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {p0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v0

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

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

    :goto_33
    iget-object v4, v1, Ltuh;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_34
    throw v2

    nop

    nop

    :goto_35
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_36
    const-string v1, "No injector factory bound for Class<%s>"

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_37
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_39
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_3a
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_3b
    if-nez v1, :cond_5

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

    :cond_5
    goto/32 :goto_3d

    nop

    nop

    :goto_3c
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_3e
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3f
    const v1, 0x4

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_40
    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_41
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_42
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    filled-new-array {p0, v2}, [Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_44
    const-class v1, Ltui;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_45
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

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

    :goto_46
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_47
    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

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

    :goto_48
    const-string v1, "%s does not implement %s"

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_49
    instance-of v1, v0, Ltui;

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_4b
    rem-int v0, v0, v1

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

    :goto_4c
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    nop

    nop

    nop

    nop

    :goto_50
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop
.end method
