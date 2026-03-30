.class public final Lqaa;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lqaj;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lpxo;

.field private final c:Ljava/util/concurrent/Executor;

.field private final d:Lpwh;

.field private final e:Lrbs;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lpxo;Lrbs;Ljava/util/concurrent/Executor;Lpwh;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lqaa;->a:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p5, p0, Lqaa;->d:Lpwh;

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

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    :goto_3
    iput-object p3, p0, Lqaa;->e:Lrbs;

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

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p2, p0, Lqaa;->b:Lpxo;

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
    iput-object p4, p0, Lqaa;->c:Ljava/util/concurrent/Executor;

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
.end method


# virtual methods
.method public final a()Lsui;
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0, v1}, Lrbs;->b(Lrsk;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object p0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0, v1}, Lpzu;-><init>(I)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_3
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_4
    const/16 v1, 0xd

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_6
    return-object p0

    nop

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_9
    new-instance v0, Lpzu;

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

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_9

    nop

    nop

    :goto_c
    iget-object v1, p0, Lqaa;->c:Ljava/util/concurrent/Executor;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_e
    iget-object p0, p0, Lqaa;->e:Lrbs;

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

    :goto_f
    const v1, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop
.end method

.method public final b(Lpzp;I)Lsui;
    .locals 4

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_0
    const-string v0, "not supported!"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1
    invoke-virtual {v0, v1, v2}, Lrbs;->b(Lrsk;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v1, Lpzv;

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

    :goto_3
    invoke-direct {v1, v2}, Lpzu;-><init>(I)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_4
    const-string v3, "Upgrade to version "

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0, v1, v2}, Lqdd;->f(Lrsk;Ljava/util/concurrent/Executor;)Lqdd;

    move-result-object v0

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

    :goto_8
    const/16 v2, 0xc

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_a
    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_b
    return-object p0

    nop

    :goto_c
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lqaa;->e:Lrbs;

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

    :goto_e
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {p0}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v2, 0x7

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_11
    iget-object v0, p0, Lqaa;->e:Lrbs;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v2, p0, Lqaa;->c:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_13
    if-ne v2, v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_14
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const-class v3, Ljava/io/IOException;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v2, p0, Lqaa;->c:Ljava/util/concurrent/Executor;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_17
    invoke-static {v0}, Lqdd;->e(Lsui;)Lqdd;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_18
    new-instance v1, Lpzz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_19
    const v0, 0x12

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-direct {v1, p0, p2, p1, v2}, Lpzz;-><init>(Lqaa;ILpzp;I)V

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-direct {v1, p0, v2}, Lpzv;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-direct {v1, v2}, Lpzu;-><init>(I)V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1e
    if-le p2, v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_39

    nop

    nop

    nop

    :goto_1f
    const/16 v2, 0xe

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_20
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

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

    :goto_22
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_23
    return-object p0

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_25
    const v1, 0x1a

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

    :goto_26
    iget-object v2, p0, Lqaa;->c:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v0, v3, v1, v2}, Lqdd;->b(Ljava/lang/Class;Lrsk;Ljava/util/concurrent/Executor;)Lqdd;

    move-result-object v0

    nop

    nop

    :goto_28
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_29
    new-instance v1, Lpzv;

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_2a
    const/16 v2, 0xa

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v0, v3, v1, v2}, Lqdd;->b(Ljava/lang/Class;Lrsk;Ljava/util/concurrent/Executor;)Lqdd;

    move-result-object v0

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const-class v3, Ljava/io/IOException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const/4 v1, 0x2

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_2f
    iget-object v2, p0, Lqaa;->c:Ljava/util/concurrent/Executor;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_30
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_31
    new-instance v1, Lpzu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v0, v1, v2}, Lrbs;->b(Lrsk;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object v0

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_33
    if-ne v2, v1, :cond_2

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_34
    new-instance v1, Lpzv;

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_35
    iget-object v2, p0, Lqaa;->c:Ljava/util/concurrent/Executor;

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_36
    iget-object v2, p0, Lqaa;->c:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_37
    invoke-virtual {v0}, Lpzp;->name()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_38
    const/4 v2, 0x4

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

    :goto_39
    invoke-static {p2}, Lpzp;->a(I)Lpzp;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iget v0, p1, Lpzp;->d:I

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3b
    goto/16 :goto_28

    nop

    nop

    :goto_3c
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_3d
    invoke-direct {v1, p0, v2}, Lpzv;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_47

    nop

    :cond_3
    goto/32 :goto_46

    nop

    :goto_3f
    invoke-static {v0}, Lqdd;->e(Lsui;)Lqdd;

    move-result-object v0

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    new-instance v1, Lpzv;

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {v0, v1, v2}, Lqdd;->f(Lrsk;Ljava/util/concurrent/Executor;)Lqdd;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_42
    invoke-static {v1}, Lsgj;->N(Ljava/lang/Throwable;)Lsui;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_43
    iget-object p0, p0, Lqaa;->c:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_44
    invoke-direct {v1, p0, v2}, Lpzv;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_35

    nop

    nop

    :goto_45
    goto/32 :goto_47

    nop

    nop

    :goto_46
    goto/32 :goto_24

    nop

    :goto_47
    goto/32 :goto_3a

    nop

    nop

    :goto_48
    invoke-static {v0, v1, p0}, Lqrf;->r(Lsui;Lssx;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_49
    new-instance v1, Lpzu;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_4a
    invoke-virtual {v0}, Lpzp;->ordinal()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_4b
    const/16 v2, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-direct {v1, p0, v2}, Lpzv;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    goto/16 :goto_28

    nop

    nop

    nop

    :goto_4e
    goto/32 :goto_d

    nop

    nop

    nop

    nop
.end method

.method public final c()Lsui;
    .locals 4

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0x17

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x2

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_2

    nop

    nop

    :goto_4
    iget-object p0, p0, Lqaa;->c:Ljava/util/concurrent/Executor;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_5
    new-instance v1, Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_6
    const/16 v3, 0x9

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_7
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

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

    :goto_8
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_9
    new-instance v2, Lpzv;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_a
    new-instance v1, Lquu;

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

    :goto_b
    goto/32 :goto_11

    nop

    nop

    :goto_c
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {v1, p0, v0, v2}, Lquu;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_15

    nop

    nop

    :goto_e
    invoke-virtual {v2, v1, v3}, Lrbs;->b(Lrsk;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_10
    return-object p0

    nop

    nop

    :goto_11
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_12
    invoke-static {v1, v2, p0}, Lqrf;->q(Lsui;Lrsk;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object p0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v3, p0, Lqaa;->c:Ljava/util/concurrent/Executor;

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

    :goto_14
    invoke-direct {v2, v0, v3}, Lpzv;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v2, p0, Lqaa;->e:Lrbs;

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

    :goto_16
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_17
    add-int v0, v0, v1

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

    nop

    :goto_18
    if-lez v0, :cond_0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop
.end method

.method public final d()Lsui;
    .locals 8

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, v0, v5}, Lqaa;->b(Lpzp;I)Lsui;

    move-result-object v2

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

    nop

    :goto_2
    invoke-virtual {v1, v2, p0}, Lqdd;->g(Lssx;Ljava/util/concurrent/Executor;)Lqdd;

    move-result-object p0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1e

    nop

    nop

    :goto_4
    return-object p0

    nop

    nop

    :goto_5
    goto/32 :goto_20

    nop

    nop

    :goto_6
    sget v0, Lqbq;->a:I

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_7
    invoke-static {v2}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_8
    if-lt v4, v5, :cond_1

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3f

    nop

    nop

    :goto_9
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_35

    nop

    nop

    :goto_a
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_c
    const-string v3, "."

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_d
    new-instance v2, Lpzy;

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_e
    invoke-static {v0}, Lpuq;->Q(Landroid/content/Context;)V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v0, p0, Lqaa;->a:Landroid/content/Context;

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_10
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v6, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget v5, v3, Lpzp;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_13
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_14
    const-string v4, "%s Cannot migrate back from value %s to %s. Clear everything!"

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_15
    invoke-static {v0}, Lpzp;->a(I)Lpzp;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v0, p0, Lqaa;->d:Lpwh;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    new-instance v6, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    new-instance v3, Lpzy;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object p0, p0, Lqaa;->a:Landroid/content/Context;

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_1c
    add-int v0, v0, v1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1d
    filled-new-array {v1, v3, v0}, [Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    return-object p0

    nop

    :goto_1f
    goto/32 :goto_6

    nop

    nop

    :goto_20
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-eq v4, v5, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :cond_2
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_22
    invoke-interface {v0}, Lpwh;->h()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget v4, v0, Lpzp;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_24
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_3c

    nop

    :cond_3
    goto/32 :goto_3b

    nop

    :goto_25
    const v1, 0x20

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_26
    const-string v3, " to "

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

    :goto_27
    goto/16 :goto_3

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_29
    invoke-direct {v3, p0, v0, v1}, Lpzy;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_2a
    invoke-direct {v2, p0, v0, v3}, Lpzy;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_4d

    nop

    nop

    :goto_2b
    iget-object v0, p0, Lqaa;->a:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_2c
    invoke-static {p0, v0}, Lpuq;->P(Landroid/content/Context;Lpzp;)Z

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-direct {v4, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_2e
    iget-object v3, p0, Lqaa;->a:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_2f
    iget-object v0, p0, Lqaa;->a:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_30
    goto/16 :goto_3

    nop

    :goto_31
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iget-object p0, p0, Lqaa;->d:Lpwh;

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

    :goto_33
    invoke-static {v4, v1}, Lqbq;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_34
    const-class v4, Ljava/lang/Exception;

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_36
    iget-object v1, p0, Lqaa;->b:Lpxo;

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-static {v2}, Lqdd;->e(Lsui;)Lqdd;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-interface {v1}, Lpxo;->a()V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    add-int/2addr v5, v6

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v2, v4, v3, v1}, Lqdd;->d(Ljava/lang/Class;Lssx;Ljava/util/concurrent/Executor;)Lqdd;

    move-result-object v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    iget-object v1, p0, Lqaa;->c:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_3e
    invoke-static {p0}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object p0

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    const-string v1, "ProtoDataStoreSharedFilesMetadata"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_40
    const-string v7, "Downgraded file key from "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_41
    iget-object v4, p0, Lqaa;->b:Lpxo;

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_c

    nop

    nop

    :goto_43
    invoke-static {v0}, Lpuq;->O(Landroid/content/Context;)Z

    move-result v0

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

    nop

    :goto_44
    invoke-static {v0, p0}, Lpuq;->P(Landroid/content/Context;Lpzp;)Z

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_45
    invoke-static {v2}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_46
    new-instance v4, Ljava/lang/Exception;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_47
    const/4 v3, 0x2

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_48
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_49
    invoke-static {p0}, Lpzp;->a(I)Lpzp;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_4a
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4b
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_4c
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_4d
    iget-object p0, p0, Lqaa;->c:Ljava/util/concurrent/Executor;

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

    nop

    :goto_4e
    invoke-interface {p0}, Lpwh;->h()I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_4f
    invoke-static {v3, v4}, Lpuq;->N(Landroid/content/Context;Lpxo;)Lpzp;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e(Lpwz;)Lsui;
    .locals 2

    goto/32 :goto_6

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

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

    nop

    :goto_1
    return-object p0

    nop

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    :goto_3
    invoke-direct {v0, p1, v1}, Lpzv;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_5

    nop

    nop

    :goto_4
    add-int v0, v0, v1

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

    :goto_5
    sget-object p1, Lstd;->a:Lstd;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x1d

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v1, 0x5

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_f

    nop

    :goto_9
    const v1, 0x14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_a
    invoke-static {p0, v0, p1}, Lqrf;->q(Lsui;Lrsk;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_b
    new-instance v0, Lsbt;

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

    :goto_c
    invoke-virtual {p0, v0}, Lqaa;->f(Lryy;)Lsui;

    move-result-object p0

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

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_e
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_b

    nop

    nop

    :goto_10
    new-instance v0, Lpzv;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_11
    invoke-direct {v0, p1}, Lsbt;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_c

    nop

    nop

    nop
.end method

.method public final f(Lryy;)Lsui;
    .locals 3

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v1, Ligz;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x6

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_3
    const v1, 0xc

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_4
    invoke-virtual {v0}, Lrbs;->a()Lsui;

    move-result-object v0

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

    :goto_5
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_7
    const/16 v2, 0x13

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_8
    return-object p0

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_a
    invoke-direct {v1, p0, p1, v2}, Ligz;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_6

    nop

    :goto_c
    invoke-static {v0, v1, p0}, Lqrf;->q(Lsui;Lrsk;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object p0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_e
    iget-object v0, p0, Lqaa;->e:Lrbs;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_f
    sget-object p0, Lstd;->a:Lstd;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

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
.end method

.method public final g(Lpwz;)Lsui;
    .locals 2

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, p1, v1}, Lpzv;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1
    new-instance v0, Lpzu;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0, v1}, Lpzu;-><init>(I)V

    goto/32 :goto_3

    nop

    nop

    :goto_3
    iget-object p0, p0, Lqaa;->c:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1, v1, v0, p0}, Lqdd;->b(Ljava/lang/Class;Lrsk;Ljava/util/concurrent/Executor;)Lqdd;

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

    :goto_5
    const/4 v1, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6
    const v1, 0x1d

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {p1, v0, v1}, Lpuq;->ap(Lpwz;Landroid/content/Context;Lpxo;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_9
    return-object p0

    nop

    :goto_a
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v1, p0, Lqaa;->b:Lpxo;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v1, p0, Lqaa;->e:Lrbs;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

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

    :goto_e
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_1c

    nop

    nop

    :goto_10
    const/16 v1, 0xb

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_11
    new-instance v0, Lpzv;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_12
    invoke-static {p1}, Lqdd;->e(Lsui;)Lqdd;

    move-result-object p1

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

    :goto_13
    invoke-direct {v0, v1}, Lpzu;-><init>(I)V

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_15
    const/16 v1, 0xa

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_16
    const v0, 0x2

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

    :goto_17
    invoke-virtual {v1, v0, p1}, Lrbs;->b(Lrsk;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object p1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const-class v1, Ljava/io/IOException;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_19
    new-instance v0, Lpzu;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p1, v0, v1}, Lqdd;->f(Lrsk;Ljava/util/concurrent/Executor;)Lqdd;

    move-result-object p1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1b
    iget-object v1, p0, Lqaa;->c:Ljava/util/concurrent/Executor;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1c
    iget-object v0, p0, Lqaa;->a:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object p1, p0, Lqaa;->c:Ljava/util/concurrent/Executor;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop
.end method

.method public final h(Lpwz;Lpxb;)Lsui;
    .locals 3

    goto/32 :goto_18

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p2, v0}, Lpzu;-><init>(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lqaa;->c:Ljava/util/concurrent/Executor;

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

    :goto_3
    invoke-virtual {p2, v0, p1}, Lrbs;->b(Lrsk;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v0, Ligz;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_5
    iget-object p2, p0, Lqaa;->e:Lrbs;

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

    :goto_6
    iget-object v0, p0, Lqaa;->a:Landroid/content/Context;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lqaa;->c:Ljava/util/concurrent/Executor;

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

    :goto_8
    new-instance p2, Lpzu;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p1, p2, v0}, Lqdd;->f(Lrsk;Ljava/util/concurrent/Executor;)Lqdd;

    move-result-object p1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {p1, v0, v1}, Lpuq;->ap(Lpwz;Landroid/content/Context;Lpxo;)Ljava/lang/String;

    move-result-object p1

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

    :goto_b
    return-object p0

    nop

    :goto_c
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x12

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

    :goto_e
    rem-int v0, v0, v1

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

    nop

    :goto_f
    new-instance p2, Lpzu;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_10
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/16 v0, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p1, v0, p2, p0}, Lqdd;->b(Ljava/lang/Class;Lrsk;Ljava/util/concurrent/Executor;)Lqdd;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_14
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_16
    iget-object p1, p0, Lqaa;->c:Ljava/util/concurrent/Executor;

    nop

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

    :goto_17
    const/16 v1, 0x14

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_18
    const v0, 0x4

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_19
    const/16 v0, 0x8

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1b
    const-class v0, Ljava/io/IOException;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1c
    invoke-direct {p2, v0}, Lpzu;-><init>(I)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-direct {v0, p1, p2, v1, v2}, Ligz;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1e
    iget-object v1, p0, Lqaa;->b:Lpxo;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-static {p1}, Lqdd;->e(Lsui;)Lqdd;

    move-result-object p1

    nop

    goto/32 :goto_8

    nop

    nop
.end method

.method public final i(Lpzp;)V
    .locals 3

    goto/32 :goto_1a

    nop

    nop

    :goto_0
    iget v0, v0, Lpzp;->d:I

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_1
    invoke-static {v0, v1}, Lpuq;->N(Landroid/content/Context;Lpxo;)Lpzp;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const-string v2, "Fail to set target version "

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lqaa;->a:Landroid/content/Context;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {p1, v0, v1}, Lfey;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_c

    nop

    nop

    :goto_8
    invoke-static {v0, p1}, Lpuq;->P(Landroid/content/Context;Lpzp;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_a
    iget-object v1, p0, Lqaa;->b:Lpxo;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_b
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_d
    invoke-static {p1, v2, v1}, Lfey;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {v0}, Lqbq;->c(Ljava/lang/String;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v0, p0, Lqaa;->a:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const-string v1, "."

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_11
    const-string v0, "Failed to commit migration version to disk. Fail to set target version to "

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-ne v0, v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_13
    invoke-interface {p0}, Lpxo;->a()V

    :goto_14
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_15
    new-instance v0, Ljava/lang/Exception;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_16
    const v1, 0x1d

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

    :goto_17
    iget v1, p1, Lpzp;->d:I

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

    :goto_18
    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-lez v0, :cond_2

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_2
    goto/32 :goto_b

    nop

    :goto_1a
    const v0, 0x15

    nop

    nop

    goto/32 :goto_16

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
    goto/32 :goto_7

    nop

    nop

    :goto_1d
    iget-object p0, p0, Lqaa;->b:Lpxo;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop
.end method
