.class public final Lhld;
.super Lhla;
.source "PG"


# static fields
.field public static final a:Lhld;

.field private static final b:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v2, v3}, Lryb;->m(Ljava/lang/Object;Ljava/lang/Object;)Lryb;

    move-result-object v4

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    goto/32 :goto_53

    nop

    nop

    nop

    :goto_4
    sget-object v2, Lhlp;->b:Lhlp;

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1b

    nop

    nop

    :goto_6
    sput-object v0, Lhld;->a:Lhld;

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_7
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_4

    nop

    nop

    :goto_9
    new-instance v0, Lhld;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_a
    const/high16 v4, 0x41a00000    # 20.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_b
    aput-object v1, v0, v3

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x11

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/high16 v4, 0x40800000    # 4.0f

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {v2, v1}, Lhst;->B(FLtkb;)V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_10
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/high16 v3, 0x40400000    # 3.0f

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_12
    invoke-static {v1}, Lhst;->z(Ltkb;)Ltnc;

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_14
    sget-object v3, Lhlp;->c:Lhlp;

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

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

    nop

    nop

    :goto_16
    invoke-virtual {v1}, Ltkg;->m()Ltkb;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_17
    invoke-direct {v0}, Lhld;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :cond_0
    goto/32 :goto_46

    nop

    :goto_19
    invoke-static {v1}, Lhst;->y(Ltkb;)Ltnc;

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    sget-object v1, Lhlr;->a:Lhlr;

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

    :goto_1b
    invoke-virtual {v1, v3}, Ltkb;->u(Ljava/lang/Iterable;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/high16 v4, 0x40a00000    # 5.0f

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

    :goto_1d
    new-array v0, v0, [Lhlr;

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {v1}, Lhst;->y(Ltkb;)Ltnc;

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-static {v1}, Lhst;->w(Ltkb;)Lhlr;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_20
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const/4 v2, 0x1

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

    nop

    :goto_23
    aput-object v1, v0, v2

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_24
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_25
    aput-object v1, v0, v2

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

    nop

    :goto_26
    invoke-static {v1}, Lhst;->w(Ltkb;)Lhlr;

    move-result-object v1

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_27
    const/high16 v4, 0x41200000    # 10.0f

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v1}, Ltkg;->m()Ltkb;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_29
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_50

    nop

    nop

    :goto_2a
    invoke-virtual {v1, v4}, Ltkb;->v(Ljava/lang/Iterable;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-static {v1}, Lhst;->w(Ltkb;)Lhlr;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const/4 v2, 0x2

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_2d
    const v2, 0x3f0181cf

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_2f
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

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

    :goto_30
    const v2, 0x3fbe7a10    # 1.4881f

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

    :goto_31
    invoke-static {v2, v9}, Lryb;->m(Ljava/lang/Object;Ljava/lang/Object;)Lryb;

    move-result-object v3

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_32
    sget-object v2, Lsob;->s:Lsob;

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v1, v3}, Ltkb;->v(Ljava/lang/Iterable;)V

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-static/range {v3 .. v8}, Lryb;->q(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lryb;

    move-result-object v3

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

    :goto_35
    const/high16 v4, 0x40000000    # 2.0f

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_36
    invoke-static {v2, v1}, Lhst;->C(Lhlp;Ltkb;)V

    goto/32 :goto_32

    nop

    nop

    :goto_37
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_38
    invoke-static {v2, v9, v3}, Lryb;->n(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lryb;

    move-result-object v2

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_39
    invoke-static {v3, v1}, Lhst;->C(Lhlp;Ltkb;)V

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_3b
    move-object v5, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {v1, v2}, Ltkb;->u(Ljava/lang/Iterable;)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    const v3, 0x3fb33333    # 1.4f

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-static {v3, v2, v9, v6}, Lryb;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lryb;

    move-result-object v4

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_3f
    invoke-static {v1}, Lhst;->y(Ltkb;)Ltnc;

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_40
    invoke-static {v2, v1}, Lhst;->A(Lsob;Ltkb;)V

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_41
    invoke-virtual {v1}, Ltkg;->m()Ltkb;

    move-result-object v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {v1, v2}, Ltkb;->u(Ljava/lang/Iterable;)V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_44
    sget-object v1, Lhlr;->a:Lhlr;

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_45
    add-int v0, v0, v1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_48
    const/4 v0, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_49
    invoke-static {v0}, Lrkm;->aQ([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    sput-object v0, Lhld;->b:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4b
    sget-object v2, Lhlp;->b:Lhlp;

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    move-object v4, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_4d
    sget-object v1, Lhlr;->a:Lhlr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_4e
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_14

    nop

    nop

    :goto_4f
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_4b

    nop

    nop

    :goto_50
    invoke-virtual {v1, v4}, Ltkb;->v(Ljava/lang/Iterable;)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_51
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    invoke-static {v2, v1}, Lhst;->C(Lhlp;Ltkb;)V

    goto/32 :goto_58

    nop

    nop

    :goto_53
    goto/32 :goto_47

    nop

    :goto_54
    const/high16 v2, 0x3f800000    # 1.0f

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_55
    invoke-static {v2, v3, v4}, Lryb;->n(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lryb;

    move-result-object v2

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_56
    invoke-static {v1}, Lhst;->z(Ltkb;)Ltnc;

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_57
    const v1, 0x10

    nop

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

    :goto_58
    invoke-static {v1}, Lhst;->z(Ltkb;)Ltnc;

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop
.end method

.method private constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lhla;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    sget-object p0, Lhld;->b:Ljava/util/List;

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

    :goto_1
    return-object p0

    nop

    nop
.end method
