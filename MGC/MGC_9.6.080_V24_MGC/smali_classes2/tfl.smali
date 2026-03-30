.class public final Ltfl;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ltdy;


# instance fields
.field private final a:Lteh;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Lteh;I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput p2, p0, Ltfl;->b:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    iput-object p1, p0, Ltfl;->a:Lteh;

    nop

    goto/32 :goto_2

    nop

    nop
.end method


# virtual methods
.method public final a(Ltdj;Lthm;)Ltdx;
    .locals 6

    goto/32 :goto_3d

    nop

    nop

    :goto_0
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1
    const/4 v5, 0x1

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

    :goto_2
    new-instance v1, Ltfd;

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v1, p2, Lthm;->b:Ljava/lang/reflect/Type;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_4
    const/4 v4, 0x2

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_5
    aput-object v1, v0, v5

    nop

    nop

    :goto_6
    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Ltfl;->a:Lteh;

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_8
    const-class v1, Ljava/lang/String;

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_9
    const v1, 0x1

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

    :goto_a
    aget-object v0, v0, v2

    nop

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

    :goto_b
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :cond_0
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/16 :goto_58

    nop

    nop

    :goto_e
    goto/32 :goto_57

    nop

    nop

    nop

    :goto_f
    invoke-static {v1, v0, v3}, Ltee;->d(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_10
    const-class v3, Ljava/util/Properties;

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

    :goto_11
    iget-object v0, p2, Lthm;->a:Ljava/lang/Class;

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
    if-eq v1, v3, :cond_1

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :cond_1
    goto/32 :goto_16

    nop

    nop

    :goto_13
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_15
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    new-array v0, v4, [Ljava/lang/reflect/Type;

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

    nop

    :goto_17
    const-class v3, Ljava/util/Collection;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_19
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    add-int v0, v0, v1

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

    :goto_1b
    invoke-direct {v1, v0}, Lthm;-><init>(Ljava/lang/reflect/Type;)V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    return-object v1

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1e
    invoke-static {v1, v0, v3}, Ltee;->d(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_1f
    invoke-virtual {p1, v3}, Ltdj;->a(Lthm;)Ltdx;

    move-result-object v1

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_20
    goto/16 :goto_e

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_22
    aget-object v2, v0, v2

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_23
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

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

    :goto_24
    goto :goto_2a

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const-class v3, Ljava/util/Map;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_27
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-direct {v3, v1}, Lthm;-><init>(Ljava/lang/reflect/Type;)V

    goto/32 :goto_1f

    nop

    nop

    :goto_29
    invoke-direct {v1, p1, p0}, Ltfd;-><init>(Ltdx;Ltet;)V

    :goto_2a
    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_2b
    const-class v3, Ljava/util/Map;

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_2c
    const/4 v1, 0x0

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

    :goto_2d
    invoke-virtual {p1, v1}, Ltdj;->a(Lthm;)Ltdx;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const-class v3, Ljava/util/Collection;

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object v0, p2, Lthm;->a:Ljava/lang/Class;

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

    :goto_30
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_13

    nop

    :goto_31
    if-ne v1, v3, :cond_3

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_59

    nop

    nop

    :goto_32
    const/4 v2, 0x0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    goto/16 :goto_46

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const-class v0, Ljava/lang/Object;

    nop

    :goto_36
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    aget-object v0, v0, v5

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

    :goto_38
    goto/16 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_3a
    const-class v1, Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3b
    invoke-direct {p2, v1, p1, p0}, Ltfk;-><init>(Ltdx;Ltdx;Ltet;)V

    goto/32 :goto_45

    nop

    nop

    :goto_3c
    invoke-virtual {p0, p2}, Lteh;->a(Lthm;)Ltet;

    move-result-object p0

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_3d
    const v0, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_3e
    iget-object v1, p2, Lthm;->b:Ljava/lang/reflect/Type;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_3f
    goto :goto_36

    nop

    nop

    :goto_40
    goto/32 :goto_35

    nop

    nop

    :goto_41
    const-class v1, Ljava/lang/String;

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

    :goto_42
    const-class v1, Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    iget v0, p0, Ltfl;->b:I

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_45
    move-object v1, p2

    nop

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_47
    aget-object v3, v0, v5

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

    :goto_48
    invoke-virtual {p0, p2}, Lteh;->a(Lthm;)Ltet;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_49
    new-instance v4, Lthm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_4a
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_4b
    return-object v1

    nop

    nop

    :goto_4c
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    new-instance v3, Lthm;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_4e
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    aget-object v1, v0, v2

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_50
    if-nez v1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :cond_4
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    if-nez v1, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_52
    invoke-direct {v4, v3}, Lthm;-><init>(Ljava/lang/reflect/Type;)V

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_53
    aput-object v1, v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_54
    new-instance v1, Lthm;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_55
    aput-object v1, v0, v5

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_56
    if-eq v1, v3, :cond_6

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :cond_6
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_57
    sget-object v1, Lthc;->f:Ltdx;

    nop

    nop

    nop

    nop

    :goto_58
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_59
    const-class v3, Ljava/lang/Boolean;

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

    nop

    :goto_5a
    if-eqz v3, :cond_7

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {p1, v4}, Ltdj;->a(Lthm;)Ltdx;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_5c
    new-instance p2, Ltfk;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_5d
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    goto/16 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_60
    new-array v0, v4, [Ljava/lang/reflect/Type;

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_61
    if-eqz v3, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :cond_8
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    aput-object v1, v0, v2

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_63
    iget-object p0, p0, Ltfl;->a:Lteh;

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop
.end method
