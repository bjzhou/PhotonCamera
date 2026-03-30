.class final Lplg;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lstu;


# instance fields
.field final synthetic a:Lows;

.field final synthetic b:Lpko;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Lpri;

.field final synthetic e:Ljava/util/List;

.field final synthetic f:Ljava/util/List;

.field final synthetic g:Landroid/os/Handler;

.field final synthetic h:Ljava/util/concurrent/Executor;

.field final synthetic i:Lpli;


# direct methods
.method public constructor <init>(Lpli;Lows;Lpko;Ljava/util/List;Lpri;Ljava/util/List;Ljava/util/List;Landroid/os/Handler;Ljava/util/concurrent/Executor;)V
    .locals 0

    goto/32 :goto_6

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

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    iput-object p7, p0, Lplg;->f:Ljava/util/List;

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    iput-object p1, p0, Lplg;->i:Lpli;

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

    :goto_4
    iput-object p8, p0, Lplg;->g:Landroid/os/Handler;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p6, p0, Lplg;->e:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_6
    iput-object p2, p0, Lplg;->a:Lows;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_7
    iput-object p4, p0, Lplg;->c:Ljava/util/List;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p5, p0, Lplg;->d:Lpri;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9
    iput-object p3, p0, Lplg;->b:Lpko;

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

    :goto_a
    iput-object p9, p0, Lplg;->h:Ljava/util/concurrent/Executor;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 4

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_0
    const-string v3, "Failed to receive required outputs for "

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lplg;->b:Lpko;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

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
    goto/32 :goto_15

    nop

    nop

    :goto_5
    const v1, 0x13

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v1, p0, Lplg;->b:Lpko;

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_8
    invoke-interface {v1, v0, p1}, Lpcu;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_1

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Lpko;->b()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_a
    iget-object v1, p0, Lplg;->i:Lpli;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_4

    nop

    :goto_d
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_10
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_11
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

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

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_13
    iget-object v1, v1, Lpli;->b:Lpcu;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_14
    const-string v1, " "

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

    :goto_15
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_16
    new-instance v2, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v0, p0, Lplg;->c:Ljava/util/List;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_19
    const v0, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1b
    const-string v0, "."

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

    nop

    nop

    :goto_1c
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 9

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_1
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v1, p0, Lplg;->i:Lpli;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lplg;->b:Lpko;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_4
    sget-object p0, Lcom/google/android/apps/camera/debug/metrics/Rn/hhAHoOiyE;->MscXHiZqHSEM:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_6
    iget-object v3, p0, Lplg;->b:Lpko;

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_7
    const-string p0, ". Delayed streams were configured, but the session is now closed."

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v3, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v2, p0, Lplg;->c:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_a
    iget-object p0, p0, Lplg;->b:Lpko;

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

    nop

    nop

    :goto_b
    iget-object p1, p0, Lplg;->i:Lpli;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0}, Lows;->b()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_e
    iget-object v2, p0, Lplg;->d:Lpri;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_f
    const-string v2, "Refusing to create "

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_10
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v5, p0, Lplg;->f:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p1}, Lrxw;->g()Lryb;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_13
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_7

    nop

    nop

    :goto_15
    iget-object p1, v0, Lpli;->b:Lpcu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p1, v0}, Lrxw;->j(Ljava/lang/Iterable;)V

    goto/32 :goto_12

    nop

    nop

    :goto_17
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-lez v0, :cond_0

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_24

    nop

    :goto_19
    iget-object v1, p0, Lplg;->b:Lpko;

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    new-instance v3, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    return-void

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_1e

    nop

    nop

    :goto_1d
    iget-object v8, p0, Lplg;->h:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const-string v0, " "

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_21
    const v0, 0x1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

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

    :goto_23
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_37

    nop

    nop

    :goto_24
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_56

    nop

    nop

    nop

    :goto_26
    iget-object p1, p0, Lplg;->i:Lpli;

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_27
    iget-object v6, p0, Lplg;->a:Lows;

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_28
    iget-object v0, p0, Lplg;->e:Ljava/util/List;

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

    :goto_29
    iget-object p1, p1, Lpli;->b:Lpcu;

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

    :goto_2a
    iget-object v0, p0, Lplg;->a:Lows;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    const-string v0, " are available."

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object v0, p0, Lplg;->c:Ljava/util/List;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_25

    nop

    nop

    :goto_2e
    iget-object p1, p1, Lpli;->b:Lpcu;

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual/range {v1 .. v8}, Lpli;->b(Lpri;Lpko;Ljava/util/List;Ljava/util/List;Lows;Landroid/os/Handler;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_32
    if-nez v0, :cond_1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iget-object v7, p0, Lplg;->g:Landroid/os/Handler;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_36
    iget-object v1, p0, Lplg;->b:Lpko;

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

    :goto_37
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_2b

    nop

    nop

    :goto_38
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-interface {p1, p0}, Lpcu;->f(Ljava/lang/String;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_2d

    nop

    nop

    :goto_3c
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {p0}, Lpko;->b()V

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_3e
    if-nez p1, :cond_2

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_3f
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_40
    iget-object v2, p0, Lplg;->c:Ljava/util/List;

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_41
    invoke-interface {p1, v0}, Lpcu;->f(Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_43
    const v1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_45
    return-void

    nop

    nop

    :goto_46
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_47
    const-string v4, "Required outputs for "

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    iget-object v0, p0, Lplg;->i:Lpli;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_4a
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_4c
    const-string v0, ". The list of outputs was null or empty!"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {p1, v0}, Lrxw;->j(Ljava/lang/Iterable;)V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    if-eqz p1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_26

    nop

    nop

    :goto_50
    const-string v4, "Failed to receive required outputs for "

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

    :goto_51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_52
    invoke-direct {p1}, Lrxw;-><init>()V

    goto/32 :goto_28

    nop

    nop

    :goto_53
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    new-instance p1, Lrxw;

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_55
    invoke-interface {p1, v0}, Lpcu;->h(Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    :goto_56
    check-cast p1, Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_57
    new-instance v1, Ljava/lang/StringBuilder;

    nop

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

    nop
.end method
