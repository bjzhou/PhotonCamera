.class public Lqjs;
.super Lqia;
.source "PG"


# direct methods
.method private constructor <init>(Lqht;Lqfs;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1, p2}, Lqia;-><init>(Lqht;Lqfs;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lqht;Lqfs;[B)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-direct {p0, p1, p2}, Lqia;-><init>(Lqht;Lqfs;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lqht;Lqfs;[B[B)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p2}, Lqia;-><init>(Lqht;Lqfs;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop
.end method

.method public static b(Lqht;Ljava/lang/String;)Lqjs;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x8b30

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0, v0, p1}, Lqjs;->g(Lqht;ILjava/lang/String;)Lqjs;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static g(Lqht;ILjava/lang/String;)Lqjs;
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0, p0, p1}, Lqjs;-><init>(Lqht;Lqfs;)V

    goto/32 :goto_c

    nop

    nop

    :goto_4
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {p0, v1}, Lqia;->c(Lqht;Ljava/util/concurrent/Callable;)Lqfs;

    move-result-object p1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_7
    const v1, 0x1f

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

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_9
    new-instance v0, Lqjs;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    new-instance v1, Lqjr;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {v1, p1, p2}, Lqjr;-><init>(ILjava/lang/String;)V

    goto/32 :goto_5

    nop

    nop

    :goto_c
    return-object v0

    nop

    nop

    :goto_d
    goto/32 :goto_4

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

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
.end method

.method public static h(Lqht;Ljava/lang/String;)Lqjs;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x8b31

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

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p0, v0, p1}, Lqjs;->g(Lqht;ILjava/lang/String;)Lqjs;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public static j(Lqht;Lcom/google/android/libraries/oliveoil/gl/EGLImage;)Lqjs;
    .locals 6

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    :cond_0
    goto/32 :goto_30

    nop

    :goto_1
    const/16 v1, 0x23

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v0, Lqfr;

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-ne v0, v1, :cond_1

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance p1, Lqlr;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p1}, Lcom/google/android/libraries/oliveoil/gl/EGLImage;->a()I

    move-result v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    new-instance v3, Lqjv;

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v0, Lqjs;

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_8
    return-object v1

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_a
    const/4 v1, 0x0

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_31

    nop

    nop

    :goto_c
    invoke-static {p0, v1}, Lqia;->c(Lqht;Ljava/util/concurrent/Callable;)Lqfs;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_d
    check-cast v0, Lqjv;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {p0, p1}, Lqiu;->b(Lqht;Lcom/google/android/libraries/oliveoil/gl/EGLImage;)Lqiu;

    move-result-object p0

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {v0, v2}, Lqia;->c(Lqht;Ljava/util/concurrent/Callable;)Lqfs;

    move-result-object p1

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {v1, v0, p1, p0}, Lqhr;-><init>(Lqht;Lqfs;Lqiu;)V

    goto/32 :goto_8

    nop

    nop

    :goto_11
    iget v2, v2, Lqjq;->c:I

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {v2, p1, v1}, Lqhp;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_13
    const/16 v1, 0x22

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_14
    invoke-direct {v5, v4, v1, v2, v0}, Lqjp;-><init>(Lqjx;IILqhe;)V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_15
    goto/16 :goto_29

    nop

    nop

    :goto_16
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iput-boolean v0, v5, Lqjq;->f:Z

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-eq v0, v1, :cond_2

    nop

    nop

    goto/32 :goto_16

    nop

    :cond_2
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_19
    new-instance v2, Lqhp;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0}, Lqia;->f()Lqjl;

    move-result-object v1

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-direct {p1, v3}, Lqlr;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_1c
    new-instance v5, Lqjp;

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

    :goto_1d
    invoke-direct {v0, v5, v1}, Lqfr;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1e
    invoke-direct {v0, p0, p1, v1, v1}, Lqjs;-><init>(Lqht;Lqfs;[B[B)V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-direct {v1, p0, p1}, Lqhs;-><init>(Lqht;Lcom/google/android/libraries/oliveoil/gl/EGLImage;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-direct {v3, p1, v0}, Lqjv;-><init>(Lqht;Lqfs;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    new-instance v1, Lqhr;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_22
    iget-object v0, v0, Lqia;->b:Lqht;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p0}, Lqiu;->g()Lqhe;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-object p1, p0, Lqia;->b:Lqht;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_25
    invoke-interface {p1}, Lqlt;->c()Ljava/lang/Object;

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

    nop

    nop

    :goto_26
    check-cast v1, Lqjq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_27
    invoke-virtual {p0}, Lqia;->f()Lqjl;

    move-result-object v2

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_28
    return-object v0

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2a
    new-instance v1, Lqhs;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p1}, Lcom/google/android/libraries/oliveoil/gl/EGLImage;->a()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_2d
    invoke-interface {p1}, Lqht;->e()Lqjx;

    move-result-object v4

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

    nop

    :goto_2e
    const v0, 0x3

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iget v1, v1, Lqjm;->b:I

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

    nop

    :goto_33
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_34
    const v1, 0xd

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_35
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    check-cast v2, Lqjq;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static k(Lqht;Lqlt;Lqfd;)Lqjs;
    .locals 4

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_0
    new-instance v2, Lqhn;

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

    :goto_1
    new-instance v3, Lqho;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    invoke-interface {p0}, Lqht;->i()Lqjs;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v3, p1, p2}, Lqho;-><init>(Lqlt;Lqfd;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {v2, p2, v3}, Lqhn;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v1, v2, v3}, Lqia;->d(Lqja;Lqeu;)Lqfs;

    move-result-object p1

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

    :goto_a
    if-lez v0, :cond_0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_b
    const/4 p2, 0x0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_e
    new-instance v0, Lqjs;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x10

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v3, 0x0

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

    :goto_11
    const v1, 0x19

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

    :goto_12
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {v0, p0, p1, p2, p2}, Lqjs;-><init>(Lqht;Lqfs;[B[B)V

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public static l(Lqlt;)Lqjs;
    .locals 4

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x1e

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    return-object v1

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_4
    check-cast v0, Lqjv;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, v0, Lqia;->b:Lqht;

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

    :goto_7
    new-instance v1, Lqjs;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_8
    const/4 v2, 0x0

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

    :goto_9
    invoke-interface {p0}, Lqlt;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_4

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

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_b
    goto/32 :goto_2

    nop

    :goto_c
    goto/32 :goto_9

    nop

    nop

    :goto_d
    invoke-direct {v1, v0, p0, v2, v2}, Lqjs;-><init>(Lqht;Lqfs;[B[B)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_e
    invoke-direct {v2, p0, v3}, Lqhp;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_f
    new-instance v2, Lqhp;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {v0, v2}, Lqia;->c(Lqht;Ljava/util/concurrent/Callable;)Lqfs;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_11
    goto/32 :goto_c

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v3, 0x1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final i()Lqhe;
    .locals 0

    goto/32 :goto_3

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0}, Lqjf;->l()Lqhe;

    move-result-object p0

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

    :goto_2
    check-cast p0, Lqjf;

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

    :goto_3
    invoke-virtual {p0}, Lqia;->f()Lqjl;

    move-result-object p0

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
