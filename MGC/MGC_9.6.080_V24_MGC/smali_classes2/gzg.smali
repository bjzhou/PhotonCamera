.class public final synthetic Lgzg;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lghk;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;

.field private final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    iput-object p1, p0, Lgzg;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    iput p3, p0, Lgzg;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Lgzg;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop
.end method

.method public synthetic constructor <init>(Lows;Lgfg;I)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    :goto_0
    iput-object p1, p0, Lgzg;->b:Ljava/lang/Object;

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

    :goto_1
    return-void

    nop

    nop

    :goto_2
    iput-object p2, p0, Lgzg;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput p3, p0, Lgzg;->c:I

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final synthetic a()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b()Lsui;
    .locals 9

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_1
    invoke-interface {v3}, Lphh;->c()Lphj;

    move-result-object v6

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

    :goto_2
    iget-object v0, p0, Lgzg;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_3
    invoke-virtual {v3, v2}, Lqas;->f(Ljava/lang/Runnable;)V

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_4
    check-cast v0, Lhdn;

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    :goto_5
    move-object v0, v8

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v3, p0}, Lqas;->g(Lmmw;)V

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const-string v5, "CamcorderTS"

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_9
    iget-boolean v0, v0, Lgqg;->F:Z

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0, v2}, Lows;->d(Lpci;)V

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {v3}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :cond_0
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_d
    goto :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_e
    :try_start_0
    move-object v3, v0

    nop

    nop

    nop

    nop

    nop

    check-cast v3, Lgfg;

    nop

    iget-object v3, v3, Lgfg;->b:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Lcom/google/ar/core/Session;->resume()V
    :try_end_0
    .catch Lcom/google/ar/core/exceptions/CameraNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    check-cast p0, Lhif;

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_10
    iget v6, v6, Lphj;->f:I

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v3, 0x6

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

    :goto_12
    new-instance v5, Lgzi;

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_13
    if-nez v0, :cond_1

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_14
    check-cast v0, Lscz;

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_15
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

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

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_17
    if-nez v5, :cond_2

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_2
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    check-cast v0, Lgqg;

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

    :goto_19
    move-object v2, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_1a
    invoke-interface {v0, p0}, Lmmx;->f(Lmmv;)Lpci;

    :goto_1b
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    new-instance v0, Lfzp;

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v5, p0, Lhif;->e:Ljava/lang/Object;

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    sget-object v3, Lhlw;->a:Lhmo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_1f
    check-cast p0, Lmmw;

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

    :goto_20
    invoke-interface {v3, v5}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_21
    invoke-static {p0}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_22
    const/4 v2, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_23
    invoke-interface {v0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v0

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

    nop

    :goto_24
    iget-object v3, v4, Lgfg;->c:Loyn;

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_25
    iget-object v0, p0, Lhif;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_26
    invoke-direct {v2, v0, v3}, Lgnw;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v3, v5}, Lqas;->c(Ljava/util/concurrent/Executor;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_2a
    const v0, 0xe

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_2b
    move-object v3, v0

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    new-instance v2, Lgnw;

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_2d
    sget-object v0, Lcom/google/android/libraries/performance/primes/transmitter/clearcut/itlF/rqoPuzOSTbBmB;->NgSdnKiml:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_2e
    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-interface {v0, v2}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_1c

    nop

    nop

    :goto_30
    invoke-virtual {v3, v5}, Lqas;->e(Ljava/lang/Runnable;)V

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_32
    new-instance v8, Lhkf;

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_33
    return-object p0

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iget-object v0, p0, Lgzg;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-interface {p0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-direct {v2, p0, v4}, Lgzi;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_38
    iget-object v0, p0, Lgzg;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iget-object v0, p0, Lhif;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_3a
    iget-object p0, p0, Lgzg;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {v3, v5}, Lqas;->d(Ljava/lang/String;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_3d
    iget-object v3, v4, Lgfg;->d:Lpgo;

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-interface {v3}, Lpgo;->d()Ljava/util/Set;

    move-result-object v3

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {v3}, Lqas;->a()Lmmz;

    move-result-object p0

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_40
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

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

    :goto_41
    if-ne v0, v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_84

    nop

    nop

    :goto_42
    const v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-static {p0}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object p0

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_44
    invoke-interface {p0, v0, v2}, Lpdf;->e(Ljava/lang/String;Ljava/lang/Runnable;)V

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :goto_45
    goto/32 :goto_7d

    nop

    nop

    :goto_46
    invoke-direct {v5, p0, v2}, Lgzi;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_47
    check-cast v4, Lgfg;

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_48
    iget-object p0, p0, Lgzg;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_49
    throw v0

    nop

    nop

    nop

    :goto_4a
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    return-object p0

    nop

    nop

    :catch_0
    move-exception p0

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_4c
    iget-object p0, p0, Lhif;->f:Ljava/lang/Object;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_4d
    iget-object p0, p0, Lgzg;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_75

    nop

    nop

    :goto_4e
    sget-object v5, Lsaj;->b:Lj$/util/stream/Collector;

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

    :goto_4f
    if-ne v0, v4, :cond_4

    nop

    goto/32 :goto_61

    nop

    :cond_4
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_50
    check-cast p0, Lows;

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    :goto_51
    invoke-static {v5}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_52
    iget-object v5, v4, Lgfg;->k:Lpik;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    :goto_53
    sget-object v0, Lgfg;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_54
    const/4 v1, 0x1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_55
    invoke-interface {v0, v2}, Lscz;->M(I)Lsdo;

    move-result-object v0

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

    :goto_56
    new-instance v3, Lqas;

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    const/4 v7, 0x0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_58
    check-cast p0, Lows;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_59
    iget-object p0, p0, Lgzg;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    const-string v2, "Already started tracking."

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    iget-object v5, v4, Lgfg;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_5e
    new-instance v2, Lgzi;

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

    nop

    :goto_5f
    invoke-interface {v3, v5}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_3d

    nop

    nop

    :goto_60
    return-object p0

    nop

    nop

    :goto_61
    goto/32 :goto_76

    nop

    nop

    nop

    :goto_62
    iget-object v5, v4, Lgfg;->b:Lcom/google/ar/core/Session;

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_63
    iget v0, p0, Lgzg;->c:I

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_64
    invoke-virtual {v5, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_65
    invoke-virtual {p0, v0}, Lows;->d(Lpci;)V

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_66
    check-cast v3, Lphh;

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_67
    invoke-static {p0}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object p0

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_68
    return-object p0

    nop

    nop

    nop

    nop

    :goto_69
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_6a
    iget-object p0, p0, Lgzg;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_6b
    new-instance v5, Lgff;

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    if-lez v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_7c

    nop

    :goto_6d
    const/4 v6, 0x1

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    move-object v4, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_70
    invoke-static {p0}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_71
    invoke-direct {v3}, Lqas;-><init>()V

    goto/32 :goto_1d

    nop

    nop

    :goto_72
    if-nez v0, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    :cond_6
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_73
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_74
    invoke-virtual {v5, v4, v6}, Lpik;->c(Lpgo;I)Lpgh;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_75
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_76
    iget-object v0, p0, Lgzg;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_77
    if-ne v0, v2, :cond_7

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_78
    invoke-direct {v0, v3}, Lfzp;-><init>(I)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_79
    return-object p0

    nop

    nop

    nop

    :goto_7a
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    invoke-interface {p0, v0}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    goto/32 :goto_34

    nop

    nop

    :goto_7d
    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_7e
    const-string v1, "Unable to start ARCore."

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

    :goto_7f
    invoke-direct {v5, v0, v3, v2}, Lgff;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_80
    invoke-interface {v4, v5}, Lpgh;->l(Lpgg;)V

    goto/32 :goto_32

    nop

    nop

    :goto_81
    invoke-direct/range {v2 .. v7}, Lhkf;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I[B)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_82
    iget-object v0, p0, Lgzg;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_83
    invoke-direct {v2, v0, v3}, Lhsx;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_84
    const/4 v4, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_85
    iget-object v4, v4, Lgfg;->d:Lpgo;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_86
    new-instance v2, Lhsx;

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_87
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    :goto_88
    const/16 v2, 0x10b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_89
    invoke-virtual {v0}, Lhdn;->O()Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_8a
    const/4 v3, 0x4

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop
.end method

.method public final synthetic c()Ljava/lang/String;
    .locals 2

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_1a

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

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

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

    :goto_5
    const/4 v1, 0x3

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_10

    nop

    nop

    :goto_8
    invoke-static {p0}, Lhhg;->L(Lghk;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    invoke-static {p0}, Lhhg;->L(Lghk;)Ljava/lang/String;

    move-result-object p0

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

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_b
    invoke-static {p0}, Lhhg;->L(Lghk;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-object p0

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_e
    const/4 v1, 0x2

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_f
    const v0, 0x1b

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_10
    iget v0, p0, Lgzg;->c:I

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

    :goto_11
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_1c

    nop

    :cond_1
    goto/32 :goto_1d

    nop

    nop

    :goto_12
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-ne v0, v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-ne v0, v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-ne v0, v1, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_4
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_18
    invoke-static {p0}, Lhhg;->L(Lghk;)Ljava/lang/String;

    move-result-object p0

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

    :goto_19
    const v1, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1a
    invoke-static {p0}, Lhhg;->L(Lghk;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_1b
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1d
    const/4 v1, 0x1

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

    :goto_1e
    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method
