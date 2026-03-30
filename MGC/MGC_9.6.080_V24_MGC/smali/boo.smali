.class public final Lboo;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lbns;


# instance fields
.field public final a:Lbnm;

.field private final b:Lbns;


# direct methods
.method public constructor <init>(Lbns;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

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
    new-instance p1, Lbnm;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lboo;->a:Lbnm;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p1}, Lbnm;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Lboo;->b:Lbns;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lubk;Ltzy;)Ljava/lang/Object;
    .locals 6

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v1, v0, Lbon;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_19

    nop

    :goto_2
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v4, 0x1

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_4
    invoke-static {p2}, Lrgw;->ak(Ljava/lang/Object;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    new-instance v2, Lufa;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_6
    goto/16 :goto_36

    nop

    :goto_7
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-object p2

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p2}, Lbnm;->a()Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_b
    invoke-direct {v4, p2, v2}, Lbnl;-><init>(Lbnm;Luez;)V

    goto/32 :goto_39

    nop

    nop

    :goto_c
    if-eq v2, v3, :cond_0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_d
    invoke-static {p2}, Lrgw;->ak(Ljava/lang/Object;)V

    goto/32 :goto_11

    nop

    nop

    :goto_e
    return-object v1

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_10
    instance-of v0, p2, Lbon;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_11
    iget-object p2, p0, Lboo;->a:Lbnm;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_12
    iput-object p2, v0, Lbon;->a:Ljava/lang/Object;

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

    :goto_13
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    move-object v0, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_15
    if-eq p2, v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    new-instance v0, Lbon;

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-nez v2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_18
    return-object v1

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const v1, 0x1d

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object p2, v0, Lbon;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    monitor-enter v4

    nop

    :try_start_0
    iget-object v5, p2, Lbnm;->b:Ljava/util/List;

    nop

    nop

    nop

    nop

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_20
    sget-object p2, Ltyg;->a:Ltyg;

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iput v3, v0, Lbon;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_22
    iget-object p0, p0, Lboo;->b:Lbns;

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_23
    iput-object p0, v0, Lbon;->e:Lboo;

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    sget-object v2, Luag;->a:Luag;

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    check-cast v0, Lbon;

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

    :goto_26
    sub-int/2addr v1, v2

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_27
    const v0, 0x17

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

    :goto_28
    goto/16 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iput v4, v0, Lbon;->d:I

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2b
    if-nez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-static {v0}, Lrkm;->x(Ltzy;)Ltzy;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_2d
    monitor-exit v4

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    if-nez v2, :cond_4

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_4e

    nop

    nop

    :goto_2f
    invoke-virtual {v2}, Lufa;->i()Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_30
    new-instance v4, Lbnl;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_31
    const/4 p2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iget-object p1, v0, Lbon;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_33
    monitor-exit v4

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

    :goto_34
    invoke-interface {p0, p1, v0}, Lbns;->a(Lubk;Ltzy;)Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_35
    if-ne p2, v1, :cond_5

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

    :cond_5
    :goto_36
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iget-object v4, p2, Lbnm;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_38
    iget v2, v0, Lbon;->d:I

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-interface {v2, v4}, Luez;->d(Lubk;)V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_3b
    iput-object p1, v0, Lbon;->a:Ljava/lang/Object;

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

    :goto_3c
    invoke-direct {v0, p0, p2}, Lbon;-><init>(Lboo;Ltzy;)V

    :goto_3d
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_3f
    iput-object p2, v0, Lbon;->e:Lboo;

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

    :goto_40
    sget-object p2, Ltyg;->a:Ltyg;

    nop

    nop

    :goto_41
    goto/32 :goto_35

    nop

    nop

    :goto_42
    sget-object v1, Luag;->a:Luag;

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_43
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    if-ne p2, v2, :cond_6

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :cond_6
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-static {p2}, Lrgw;->ak(Ljava/lang/Object;)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_46
    invoke-direct {v2, v5, v4}, Lufa;-><init>(Ltzy;I)V

    goto/32 :goto_4f

    nop

    nop

    :goto_47
    and-int v3, v1, v2

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

    nop

    :goto_48
    throw p0

    nop

    nop

    :goto_49
    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_4a
    const/4 v3, 0x2

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

    nop

    :goto_4b
    goto :goto_41

    nop

    nop

    :goto_4c
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4d
    if-lez v0, :cond_7

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_1e

    nop

    :goto_4e
    if-ne v2, v4, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {v2}, Lufa;->y()V

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_50
    iget-object p0, v0, Lbon;->e:Lboo;

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    const/high16 v2, -0x80000000

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_52
    throw p0

    nop

    nop

    nop

    :goto_53
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    iput v1, v0, Lbon;->d:I

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_55
    if-nez v3, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :cond_9
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final fold(Ljava/lang/Object;Lubo;)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-static {p0, p1, p2}, Lrkm;->y(Luab;Ljava/lang/Object;Lubo;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object p0

    nop
.end method

.method public final get(Luac;)Luab;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Lrkm;->z(Luab;Luac;)Luab;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final synthetic getKey()Luac;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    :goto_1
    sget-object p0, Lbns;->e:Lbnr;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final minusKey(Luac;)Luad;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    :goto_1
    invoke-static {p0, p1}, Lrkm;->A(Luab;Luac;)Luad;

    move-result-object p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final plus(Luad;)Luad;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Lrkm;->B(Luab;Luad;)Luad;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop
.end method
