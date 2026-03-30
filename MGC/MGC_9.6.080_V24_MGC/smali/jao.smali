.class public final Ljao;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lujp;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iput p2, p0, Ljao;->b:I

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

    :goto_1
    iput-object p1, p0, Ljao;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_3

    nop

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

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final eP(Lujq;Ltzy;)Ljava/lang/Object;
    .locals 6

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    invoke-direct {v1, v0, p1, v3}, Lujw;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_2
    sget-object v1, Luag;->a:Luag;

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x1d

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance p2, Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_5
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_6
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x1d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_9
    iget-object p2, v0, Lukd;->a:Ljava/lang/Object;

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

    :goto_a
    invoke-interface {p0, v0, p2}, Lujp;->eP(Lujq;Ltzy;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-object p0

    nop

    :goto_d
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p0, v0, Lukd;->c:Ljava/lang/Object;

    nop

    nop

    :try_start_0
    invoke-static {p2}, Lrgw;->ak(Ljava/lang/Object;)V
    :try_end_0
    .catch Lulm; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_f
    iget-object p0, p0, Ljao;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_10
    new-instance v0, Leon;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_11
    iget v1, v0, Lukd;->b:I

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

    :goto_12
    instance-of v0, p2, Lukd;

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_13
    invoke-interface {p0, v0, p2}, Lujp;->eP(Lujq;Ltzy;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_14
    goto/16 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_44

    nop

    nop

    nop

    :goto_16
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

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

    :goto_17
    add-int v0, v0, v1

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_64

    nop

    nop

    :goto_19
    goto/32 :goto_67

    nop

    nop

    :goto_1a
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_53

    nop

    nop

    :goto_1b
    invoke-interface {p0, v0, p2}, Lujp;->eP(Lujq;Ltzy;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_1c
    new-instance v1, Lujw;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 v4, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-direct {v0, p1, v1}, Leon;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object p0, p0, Ljao;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_20
    return-object p0

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_22
    if-nez v4, :cond_0

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_23
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    new-instance v4, Lucq;

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_26
    invoke-interface {p1, p0, p2}, Lujq;->a(Ljava/lang/Object;Ltzy;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_27
    iget-object p0, p0, Ljao;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_28
    goto/16 :goto_41

    nop

    :catch_0
    move-exception p1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_29
    const/4 v1, 0x3

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

    :goto_2a
    return-object v1

    nop

    nop

    :catch_1
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    :goto_2b
    invoke-direct {v0, p1, v3}, Leon;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_47

    nop

    nop

    :goto_2c
    if-eq p0, p1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_49

    nop

    nop

    nop

    :goto_2d
    if-eq p0, p1, :cond_2

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    sget-object p1, Luag;->a:Luag;

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_2f
    goto :goto_37

    nop

    :goto_30
    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_31
    new-instance v0, Leon;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_32
    if-eq p0, v1, :cond_3

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2a

    nop

    nop

    :goto_33
    move-object v0, p2

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_34
    if-ne v0, v2, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_35
    sget-object p1, Luag;->a:Luag;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-direct {v0, p0, p2}, Lukd;-><init>(Ljao;Ltzy;)V

    :goto_37
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iput v1, v0, Lukd;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_39
    invoke-static {p2}, Lrgw;->ak(Ljava/lang/Object;)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3a
    iget-object p0, p0, Ljao;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_3b
    if-lez v0, :cond_5

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_18

    nop

    :goto_3c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_3d
    return-object p0

    nop

    :goto_3e
    goto/32 :goto_6a

    nop

    nop

    :goto_3f
    sget-object p1, Luag;->a:Luag;

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-static {p1, p0}, Lucg;->u(Lulm;Ljava/lang/Object;)V

    :goto_41
    goto/32 :goto_69

    nop

    nop

    nop

    :goto_42
    invoke-direct {v4}, Lucq;-><init>()V

    :try_start_1
    iget-object p0, p0, Ljao;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    new-instance v5, Lukb;

    nop

    nop

    nop

    nop

    invoke-direct {v5, v4, p1, p2, v3}, Lukb;-><init>(Ljava/lang/Object;Lujq;Ljava/lang/Object;I)V

    iput-object p2, v0, Lukd;->c:Ljava/lang/Object;

    nop

    nop

    iput v2, v0, Lukd;->b:I

    nop

    nop

    nop

    nop

    invoke-interface {p0, v5, v0}, Lujp;->eP(Lujq;Ltzy;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop
    :try_end_1
    .catch Lulm; {:try_start_1 .. :try_end_1} :catch_1

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_43
    if-nez v0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :cond_6
    goto/32 :goto_55

    nop

    nop

    nop

    :goto_44
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_45
    const/high16 v4, -0x80000000

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    :goto_46
    iget v4, v0, Lukd;->b:I

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    iget-object p0, p0, Ljao;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_48
    if-eq p0, p1, :cond_7

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    return-object p0

    nop

    nop

    nop

    nop

    :goto_4a
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_4b
    if-eq p0, p1, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_57

    nop

    nop

    :goto_4c
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-direct {v0, p1, v4}, Leon;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_4e
    if-eq p0, p1, :cond_9

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_9
    goto/32 :goto_c

    nop

    nop

    :goto_4f
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_50
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_51
    move-object p0, p2

    nop

    nop

    :goto_52
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_53
    throw p0

    nop

    nop

    nop

    nop

    :goto_54
    goto/32 :goto_39

    nop

    nop

    :goto_55
    const/4 v2, 0x1

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_56
    if-nez v5, :cond_a

    nop

    goto/32 :goto_30

    nop

    :cond_a
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    return-object p0

    nop

    nop

    nop

    :goto_58
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    if-ne v0, v3, :cond_b

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    :cond_b
    goto/32 :goto_5b

    nop

    nop

    :goto_5a
    check-cast v0, Lukd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_5b
    if-ne v0, v1, :cond_c

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_68

    nop

    nop

    :goto_5c
    return-object p0

    nop

    nop

    nop

    :goto_5d
    goto/32 :goto_73

    nop

    nop

    :goto_5e
    new-instance v0, Leon;

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_5f
    sub-int/2addr v1, v4

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_60
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_61
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    if-eq v4, v2, :cond_d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    return-object p0

    nop

    nop

    nop

    nop

    :goto_64
    goto/32 :goto_60

    nop

    nop

    :goto_65
    if-nez v0, :cond_e

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_66
    const/4 v3, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_67
    iget v0, p0, Ljao;->b:I

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_68
    if-ne v0, v4, :cond_f

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_69
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_6b
    sget-object p1, Luag;->a:Luag;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_6c
    invoke-interface {p0, v1, p2}, Lujp;->eP(Lujq;Ltzy;)Ljava/lang/Object;

    move-result-object p0

    nop

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

    :goto_6d
    invoke-direct {v0}, Lucq;-><init>()V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    move-object p1, p0

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    return-object p0

    nop

    nop

    nop

    :goto_70
    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_71
    and-int v5, v1, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_72
    new-instance v0, Lukd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_73
    new-instance v0, Lucq;

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_74
    sget-object p1, Luag;->a:Luag;

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop
.end method
