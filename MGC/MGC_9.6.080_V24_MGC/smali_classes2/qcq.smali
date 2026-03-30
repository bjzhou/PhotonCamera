.class public final synthetic Lqcq;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lrbk;


# instance fields
.field public final synthetic a:Lqbn;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lqbn;I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    iput p2, p0, Lqcq;->b:I

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lqcq;->a:Lqbn;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lqop;Ltlq;)Ltlq;
    .locals 6

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p2, Lpwu;

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

    :goto_1
    invoke-virtual {p2, v0, v4}, Ltkb;->z(Ljava/lang/String;Lpxb;)V

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0, v3}, Lqbn;->j(I)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sget-object p2, Lpwu;->a:Lpwu;

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_4
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p1}, Lryh;->s()Lryy;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {p0, v3}, Lqbn;->j(I)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/16 :goto_43

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_8
    const-string v4, "SharedPreferences file groups metadata had unexpected format: %s"

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v4, v0}, Lqbq;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p1}, Lqop;->d()Lryh;

    move-result-object p1

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

    :goto_b
    const/4 v2, 0x7

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

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_d
    invoke-interface {p0, v1}, Lqbn;->j(I)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-interface {p0, v1}, Lqbn;->j(I)V

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_10
    invoke-virtual {p2, v0, v4}, Ltkb;->x(Ljava/lang/String;Lpwn;)V

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_11
    return-object p0

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_13
    check-cast v0, Ljava/lang/String;

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

    :goto_14
    const/16 v1, 0x43c

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_15
    sget-object v4, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/ADF/UKeap;->TiYoSuaVcbua:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_16
    goto/16 :goto_43

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_18
    check-cast p0, Lpxd;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_19
    goto/16 :goto_45

    nop

    :goto_1a
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    check-cast v0, Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1c
    if-lez v0, :cond_0

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_28

    nop

    :goto_1d
    check-cast p2, Lpxd;

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_1e
    const/16 v3, 0x43b

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p2}, Ltkg;->m()Ltkb;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p1}, Lryh;->s()Lryy;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_23
    goto/16 :goto_45

    nop

    nop

    :catch_1
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_24
    invoke-virtual {p1}, Lqop;->d()Lryh;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_25
    invoke-static {v4, v0}, Lqbq;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p1}, Lryy;->em()Lscp;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_27
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_12

    nop

    :goto_29
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_1
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget v0, p0, Lqcq;->b:I

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    return-object p0

    nop

    nop

    :goto_2d
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {p2}, Ltkb;->i()Ltkg;

    move-result-object p0

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const/4 v4, 0x0

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

    nop

    :goto_30
    invoke-virtual {p2}, Ltkg;->m()Ltkb;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_31
    invoke-virtual {p2}, Ltkb;->i()Ltkg;

    move-result-object p0

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_32
    const-string v4, "SharedPreferences shared files metadata had unexpected format: %s"

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_33
    invoke-static {v4, v0}, Lqbq;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_34
    check-cast p0, Lpwu;

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_35
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    :cond_2
    goto/32 :goto_41

    nop

    nop

    nop

    :goto_36
    goto/16 :goto_43

    nop

    nop

    :catch_2
    move-exception v0

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_37
    const v0, 0x9

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_38
    check-cast v0, Ljava/util/Map$Entry;

    nop

    nop

    nop

    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    check-cast v4, Ljava/lang/String;

    nop

    nop

    nop

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    sget-object v5, Lpwn;->a:Lpwn;

    nop

    nop

    nop

    nop

    invoke-virtual {v5, v2}, Ltkg;->D(I)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    check-cast v5, Ltlx;

    nop

    invoke-static {v4, v5}, Lpuq;->ag(Ljava/lang/String;Ltlx;)Ltlq;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    check-cast v4, Lpwn;

    nop
    :try_end_1
    .catch Ltky; {:try_start_1 .. :try_end_1} :catch_3

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_39
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_3a
    invoke-static {v4, v0}, Lqbq;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {p1}, Lryy;->em()Lscp;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_3c
    check-cast v0, Ljava/util/Map$Entry;

    nop

    nop

    nop

    nop

    nop

    :try_start_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    check-cast v4, Ljava/lang/String;

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    sget-object v5, Lpxb;->a:Lpxb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5, v2}, Ltkg;->D(I)Ljava/lang/Object;

    move-result-object v5

    nop

    check-cast v5, Ltlx;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v4, v5}, Lpuq;->ag(Ljava/lang/String;Ltlx;)Ltlq;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    check-cast v4, Lpxb;

    nop
    :try_end_3
    .catch Ltky; {:try_start_3 .. :try_end_3} :catch_2

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_3e
    sget-object p2, Lpxd;->a:Lpxd;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    goto :goto_45

    nop

    nop

    nop

    nop

    :catch_3
    move-exception v0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_40
    const v1, 0x20

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_41
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_42
    iget-object p0, p0, Lqcq;->a:Lqbn;

    nop

    :goto_43
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    iget-object p0, p0, Lqcq;->a:Lqbn;

    nop

    :goto_45
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_46
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_47
    const-string v4, "SharedPreferences shared files metadata key wasn\'t a string: %s"

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop
.end method
