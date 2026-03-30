.class public final Ldkg;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lym;

.field public final b:Ldnj;

.field public final c:Lyg;

.field private final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_10

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    iput-object v0, p0, Ldkg;->b:Ldnj;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_6
    iput-object v1, p0, Ldkg;->c:Lyg;

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

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_8
    iput-object v0, p0, Ldkg;->d:Ljava/lang/Object;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {v1}, Lym;-><init>()V

    goto/32 :goto_e

    nop

    nop

    :goto_a
    const v1, 0x1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_c
    new-instance v0, Ldnj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_d
    invoke-direct {v0}, Ldnj;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput-object v1, p0, Ldkg;->a:Lym;

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

    :goto_f
    goto/32 :goto_2

    nop

    nop

    :goto_10
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_11
    new-instance v1, Lym;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {v1, v0}, Lyg;-><init>([B)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_14
    const v0, 0x1b

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_15
    new-instance v1, Lyg;

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
.end method

.method public static synthetic a(Ldkg;Ldkn;Ljava/lang/Object;)V
    .locals 2

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_0
    monitor-exit p1

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    monitor-enter p1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2
    throw p0

    nop

    :goto_3
    goto/32 :goto_13

    nop

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

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v0, Ldke;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_7
    monitor-exit p1

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

    :goto_8
    const v1, 0x1d

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    :goto_a
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-eqz p2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_1
    :try_start_0
    iget-object p2, p0, Ldkg;->c:Lyg;

    nop

    nop

    nop

    nop

    iget-object p0, p0, Ldkg;->d:Ljava/lang/Object;

    nop

    new-instance p0, Ldkd;

    nop

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    invoke-direct {p0, v1}, Ldkd;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p2, v0, p0}, Lyg;->j(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_d

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p0, p0, Ldkg;->a:Lym;

    nop

    nop

    new-instance v1, Ldkd;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1, p2}, Ldkd;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lym;->c(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_d
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p1, p0, Ldkg;->b:Ldnj;

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

    :goto_f
    add-int v0, v0, v1

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

    :goto_10
    const v0, 0x20

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
    invoke-direct {v0, p1}, Ldke;-><init>(Ldkn;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_a

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final b(Ldkn;Lubk;Ltzy;)Ljava/lang/Object;
    .locals 5

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_0
    iget-object p1, v0, Ldkf;->d:Ldkg;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    monitor-enter p2

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

    nop

    :goto_2
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_4
    const v1, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_5
    monitor-exit p1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_6
    invoke-interface {p2, v0}, Lubk;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    and-int v3, v1, v2

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p1, p0, Ldkg;->b:Ldnj;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_9
    monitor-exit p2

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_a
    new-instance p3, Ldke;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {p3}, Lrgw;->ak(Ljava/lang/Object;)V

    goto/32 :goto_28

    nop

    nop

    :goto_c
    if-eqz p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_0
    :try_start_0
    iget-object v0, p0, Ldkg;->c:Lyg;

    nop

    nop

    nop

    nop

    nop

    iget-object p0, p0, Ldkg;->d:Ljava/lang/Object;

    nop

    new-instance p0, Ldkd;

    nop

    nop

    nop

    nop

    const/4 v1, 0x0

    nop

    invoke-direct {p0, v1}, Ldkd;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p3, p0}, Lyg;->j(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_e

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p0, p0, Ldkg;->a:Lym;

    nop

    nop

    new-instance v0, Ldkd;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0, p1}, Ldkd;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p3, v0}, Lym;->c(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_e
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_f
    new-instance v0, Ldkf;

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

    nop

    :goto_10
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_12
    move-object p3, p0

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

    nop

    :goto_13
    const/4 v3, 0x1

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/high16 v2, -0x80000000

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_15
    iget v2, v0, Ldkf;->c:I

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_16
    sub-int/2addr v1, v2

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-direct {v0, p0, p3}, Ldkf;-><init>(Ldkg;Ltzy;)V

    :goto_18
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    throw p0

    nop

    nop

    :goto_1a
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1b
    monitor-enter p1

    nop

    nop

    nop

    :try_start_1
    iget-object v2, p0, Ldkg;->a:Lym;

    nop

    invoke-virtual {v2, p3}, Lym;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    check-cast v2, Ldkd;

    nop

    nop

    nop

    if-nez v2, :cond_1

    nop

    nop

    nop

    iget-object v2, p0, Ldkg;->c:Lyg;

    nop

    nop

    nop

    invoke-virtual {v2, p3}, Lyg;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    check-cast v2, Ldkd;

    nop

    nop

    nop

    :cond_1
    if-eqz v2, :cond_2

    nop

    nop

    iget-object p0, v2, Ldkd;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_37

    nop

    nop

    :goto_1c
    iput-object p0, v0, Ldkf;->d:Ldkg;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const v0, 0x8

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1e
    move-object v0, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_1f
    return-object v1

    nop

    nop

    :catchall_0
    move-exception p0

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

    nop

    :goto_20
    iput-object p3, v0, Ldkf;->e:Ldke;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_21
    invoke-direct {p3, p1}, Ldke;-><init>(Ldkn;)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_22
    iput v3, v0, Ldkf;->c:I

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    instance-of v0, p3, Ldkf;

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_43

    nop

    nop

    :goto_25
    sget-object v1, Luag;->a:Luag;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_26
    iput v1, v0, Ldkf;->c:I

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    monitor-exit p1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_28
    move-object v4, p3

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_29
    iget v1, v0, Ldkf;->c:I

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

    nop

    :goto_2a
    return-object p0

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    check-cast v0, Ldkf;

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_2c
    if-nez v2, :cond_3

    nop

    goto/32 :goto_3

    nop

    :cond_3
    goto/32 :goto_2d

    nop

    nop

    :goto_2d
    if-eq v2, v3, :cond_4

    nop

    goto/32 :goto_45

    nop

    :cond_4
    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_2e
    if-ne p1, v1, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :cond_5
    :goto_2f
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-static {p3}, Lrgw;->ak(Ljava/lang/Object;)V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_31
    if-nez v0, :cond_6

    nop

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

    :cond_6
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_32
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_33
    add-int v0, v0, v1

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_34
    move-object p0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_35
    iget-object p3, v0, Ldkf;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    monitor-exit p2

    nop

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

    :goto_37
    monitor-exit p1

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_39
    goto/16 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_3b
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_3c
    if-nez v3, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    :cond_7
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    rem-int v0, v0, v1

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

    :goto_3e
    if-lez v0, :cond_8

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_42

    nop

    :goto_3f
    iget-object p0, v0, Ldkf;->e:Ldke;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_40
    move-object p1, v4

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

    nop

    :goto_41
    iget-object p2, p0, Ldkg;->b:Ldnj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_42
    goto/32 :goto_11

    nop

    :goto_43
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    goto/16 :goto_2f

    nop

    nop

    :goto_45
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_46
    return-object p1

    nop

    nop

    nop

    :catchall_1
    move-exception p0

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
.end method
