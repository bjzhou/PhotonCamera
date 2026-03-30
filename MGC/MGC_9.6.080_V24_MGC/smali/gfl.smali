.class public final synthetic Lgfl;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Lgfl;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p1, Lgsy;

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    packed-switch p0, :pswitch_data_0

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_59

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1, p0}, Lpau;->a(Lpar;)V

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_4
    check-cast p1, Ljava/util/concurrent/ScheduledFuture;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_5
    invoke-interface {p1}, Lpaf;->l()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {p1}, Lpaf;->close()V

    goto/32 :goto_56

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1}, Lows;->close()V

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p1}, Lgrc;->d()Lrss;

    move-result-object p0

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1}, Lgrc;->d()Lrss;

    move-result-object p0

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    goto/32 :goto_22

    nop

    nop

    :goto_d
    invoke-virtual {p1}, Lgrc;->d()Lrss;

    move-result-object p0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_e
    check-cast p1, Lggn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_f
    iget-object p0, p1, Lhhi;->m:Lhhr;

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0}, Lrss;->c()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_12
    invoke-interface {p1}, Lgoc;->i()V

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_13
    return-void

    nop

    nop

    :pswitch_3
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_14
    iget-object p1, p1, Lgsy;->e:Ljava/lang/Runnable;

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

    :goto_15
    invoke-interface {p1}, Lpag;->g()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-interface {p1}, Lpaf;->e()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    check-cast p1, Lows;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_18
    return-void

    nop

    :pswitch_4
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_19
    return-void

    nop

    :pswitch_5
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    check-cast p1, Lgsy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_1b
    check-cast p1, Lpaf;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-nez p0, :cond_0

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

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1d
    invoke-interface {p1}, Lpaf;->close()V

    goto/32 :goto_2c

    nop

    nop

    :goto_1e
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_42

    nop

    nop

    nop

    :goto_20
    check-cast p1, Lhhi;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p1}, Lgrc;->d()Lrss;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_22
    return-void

    nop

    nop

    nop

    nop

    :pswitch_6
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-interface {p1}, Lgoc;->h()V

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_24
    check-cast p1, Lgoc;

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_25
    return-void

    nop

    :pswitch_7
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    return-void

    nop

    nop

    nop

    :pswitch_8
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_27
    invoke-interface {p0}, Lgrl;->f()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget-object p0, p1, Lgsy;->f:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_29
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_9
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    return-void

    nop

    nop

    :pswitch_a
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2b
    invoke-interface {p1}, Lgoc;->f()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    return-void

    nop

    nop

    nop

    nop

    :pswitch_b
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    check-cast p1, Lsui;

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_2e
    iget-object p0, p1, Lhhi;->m:Lhhr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_2f
    check-cast p1, Lpaf;

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_30
    return-void

    nop

    nop

    :pswitch_c
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_31
    check-cast p1, Lgeq;

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-interface {p1, v0}, Lsui;->cancel(Z)Z

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    check-cast p1, Lpaf;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_34
    check-cast p1, Lgoc;

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {p0}, Lhhr;->k()V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_36
    check-cast p1, Lgoc;

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_37
    if-nez p0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {p1}, Lgrc;->b()Lgrl;

    move-result-object p0

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_39
    if-nez p0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    :cond_2
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_3a
    check-cast p1, Lpag;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_3b
    check-cast p1, Lhhi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_3c
    invoke-interface {p1}, Lggn;->b()V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_3d
    return-void

    nop

    nop

    nop

    :pswitch_d
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    return-void

    nop

    nop

    nop

    nop

    :pswitch_e
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-interface {p0}, Lgrl;->close()V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_40
    sget-object p0, Lpar;->g:Lpar;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_41
    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_42
    invoke-virtual {p1}, Lgrc;->b()Lgrl;

    move-result-object p0

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

    :goto_43
    check-cast p1, Lgoc;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_44
    iget-object p1, p1, Lgsy;->e:Ljava/lang/Runnable;

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

    :goto_45
    return-void

    nop

    nop

    nop

    :pswitch_f
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_46
    invoke-interface {p1}, Lgoc;->g()V

    goto/32 :goto_18

    nop

    nop

    :goto_47
    iget p0, p0, Lgfl;->a:I

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_48
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_10
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_49
    invoke-virtual {p1}, Lgeq;->close()V

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {p0}, Lrss;->c()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-interface {p0}, Lgrl;->f()V

    :goto_4c
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {p0}, Lrss;->h()Z

    move-result p0

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_4e
    invoke-interface {p0}, Lgrl;->close()V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    check-cast p1, Lgoc;

    nop

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

    :goto_50
    invoke-interface {p1}, Lpaf;->e()V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_51
    return-void

    nop

    nop

    :pswitch_11
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_52
    check-cast p1, Lgsy;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_53
    invoke-virtual {p0}, Lhhr;->l()V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_54
    check-cast p1, Lgrc;

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_55
    iget-object p0, p1, Lgsy;->f:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_56
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_12
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_13
    goto/32 :goto_3b

    nop

    nop

    :goto_58
    invoke-virtual {p1}, Lgrc;->f()Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_59
    check-cast p1, Lpau;

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-interface {p1}, Lgoc;->j()V

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {p0}, Lrss;->h()Z

    move-result p0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_5c
    sget-object p0, Lgbi;->a:Lsdb;

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_5d
    return-void

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_d
        :pswitch_1
        :pswitch_10
        :pswitch_4
        :pswitch_f
        :pswitch_9
        :pswitch_3
        :pswitch_e
        :pswitch_5
        :pswitch_12
        :pswitch_2
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_13
        :pswitch_6
        :pswitch_a
    .end packed-switch
.end method

.method public final synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 1

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    :pswitch_0
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_13
        :pswitch_0
        :pswitch_d
        :pswitch_5
        :pswitch_11
        :pswitch_6
        :pswitch_8
        :pswitch_b
        :pswitch_2
        :pswitch_12
        :pswitch_c
        :pswitch_e
        :pswitch_3
        :pswitch_1
        :pswitch_f
        :pswitch_9
        :pswitch_7
        :pswitch_a
        :pswitch_10
    .end packed-switch

    :goto_4
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_6
    return-object p0

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_9
    return-object p0

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-object p0

    nop

    :pswitch_6
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_7
    goto/32 :goto_7

    nop

    nop

    :goto_c
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

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

    nop

    :goto_d
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_8
    goto/32 :goto_27

    nop

    nop

    :goto_e
    return-object p0

    nop

    nop

    :pswitch_9
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_10
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

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

    nop

    :goto_11
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_13
    return-object p0

    nop

    nop

    :pswitch_a
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_15
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_16
    return-object p0

    nop

    :pswitch_b
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_17
    return-object p0

    nop

    nop

    :pswitch_c
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_19
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_d
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget v0, p0, Lgfl;->a:I

    nop

    nop

    packed-switch v0, :pswitch_data_0

    goto/32 :goto_2a

    nop

    nop

    :goto_1b
    return-object p0

    nop

    nop

    nop

    :pswitch_e
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

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

    :goto_1d
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    return-object p0

    nop

    :pswitch_f
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1f
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_24
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_25
    return-object p0

    nop

    nop

    :pswitch_10
    goto/32 :goto_1d

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

    :pswitch_11
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    return-object p0

    nop

    :pswitch_12
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_29
    return-object p0

    nop

    :pswitch_13
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_2a
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop
.end method
