.class public final Ljai;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpcm;


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic d:Ljava/lang/Runnable;

.field final synthetic e:Ljaj;


# direct methods
.method public constructor <init>(Ljaj;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Runnable;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Runnable;)V
    .locals 0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Ljai;->e:Ljaj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    iput-object p3, p0, Ljai;->b:Ljava/lang/Runnable;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p5, p0, Ljai;->d:Ljava/lang/Runnable;

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

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    iput-object p2, p0, Ljai;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p4, p0, Ljai;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 2

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p1, p0, Ljai;->e:Ljaj;

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Ljai;->b:Ljava/lang/Runnable;

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p1, p0, Ljai;->e:Ljaj;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {p1}, Loyd;->cM()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_5
    check-cast p1, Lhco;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_32

    nop

    :goto_7
    if-eqz p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    sget-object v0, Lpog;->a:Lpog;

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_9
    sget-object v0, Lpog;->a:Lpog;

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

    :goto_a
    if-nez p1, :cond_2

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :cond_2
    :goto_b
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    sget-object v0, Lpog;->b:Lpog;

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_d
    iget-object p1, p0, Ljai;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_f
    if-eqz p1, :cond_3

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p1, v0}, Lpog;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_11
    sget-object v0, Lpog;->a:Lpog;

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object p1, p1, Ljaj;->a:Ljava/lang/Object;

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

    :goto_13
    goto/16 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_57

    nop

    nop

    nop

    :goto_15
    iget-object p1, p1, Ljaj;->a:Ljava/lang/Object;

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

    :goto_16
    iget-object p1, p1, Ljaj;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_17
    iget-object p1, p0, Ljai;->b:Ljava/lang/Runnable;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p1}, Lhco;->a()Lpog;

    move-result-object p1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_19
    if-eqz p1, :cond_4

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :cond_4
    :goto_1a
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-eq p1, v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :cond_5
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p1}, Lhco;->a()Lpog;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1d
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_1e
    goto/32 :goto_54

    nop

    nop

    nop

    :goto_1f
    if-nez p1, :cond_6

    nop

    goto/32 :goto_52

    nop

    nop

    :cond_6
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_20
    if-nez p1, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_21
    const v0, 0x1a

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p1}, Lhco;->a()Lpog;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_23
    const v1, 0x11

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_24
    iget-object p1, p0, Ljai;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_25
    check-cast p1, Ljava/lang/Boolean;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_26
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_28
    iget-object p1, p0, Ljai;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_29
    check-cast p1, Lhco;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_2a
    if-eq p1, v0, :cond_8

    nop

    goto/32 :goto_4e

    nop

    :cond_8
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object p1, p0, Ljai;->e:Ljaj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_2c
    iget-object p0, p0, Ljai;->d:Ljava/lang/Runnable;

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object p1, p1, Ljaj;->a:Ljava/lang/Object;

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

    :goto_2f
    invoke-interface {p1}, Loyd;->cM()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_30
    return-void

    nop

    nop

    :goto_31
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_35
    iget-object p1, p0, Ljai;->e:Ljaj;

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_36
    invoke-virtual {p1}, Lhco;->a()Lpog;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iget-object p1, p1, Ljaj;->d:Ljava/lang/Object;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_38
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iget-object p0, p0, Ljai;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_3a
    check-cast p1, Lhco;

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_3b
    invoke-interface {p1}, Loyd;->cM()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    if-eq p1, v0, :cond_9

    nop

    nop

    goto/32 :goto_1a

    nop

    :cond_9
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    const/4 v0, 0x0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3e
    iget-object p1, p0, Ljai;->e:Ljaj;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_3f
    rem-int v0, v0, v1

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

    :goto_40
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_41
    sget-object v0, Ljar;->c:Ljar;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_42
    if-nez p1, :cond_a

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :cond_a
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {p1, v0}, Lpog;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual {p1, v0}, Lpog;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_45
    iget-object p1, p0, Ljai;->e:Ljaj;

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_46
    iget-object p1, p1, Ljaj;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_48
    sget-object v0, Ljar;->d:Ljar;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :goto_4a
    goto/32 :goto_51

    nop

    nop

    :goto_4b
    sget-object v0, Ljar;->d:Ljar;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {p1, v0}, Lpog;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_4d
    return-void

    nop

    :goto_4e
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    iget-object p1, p1, Ljaj;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_50
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_52
    goto/32 :goto_45

    nop

    nop

    :goto_53
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_54
    iget-object p1, p0, Ljai;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_55
    check-cast p1, Lhco;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_56
    iget-object p1, p0, Ljai;->e:Ljaj;

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

    nop

    :goto_57
    iget-object p1, p0, Ljai;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_47

    nop

    nop
.end method
