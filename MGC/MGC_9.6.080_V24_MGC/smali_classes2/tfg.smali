.class public final Ltfg;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ltdy;


# instance fields
.field private final synthetic a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput p1, p0, Ltfg;->a:I

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ltdj;Lthm;)Ltdx;
    .locals 2

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_47

    nop

    :goto_1
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-nez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_3
    iget-object p0, p2, Lthm;->a:Ljava/lang/Class;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_4
    if-ne p0, v1, :cond_1

    nop

    goto/32 :goto_3c

    nop

    nop

    :cond_1
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_5
    iget p0, p0, Ltfg;->a:I

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0, p1, p0}, Ltfc;-><init>(Ltdx;Ljava/lang/Class;)V

    :goto_7
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const-class p1, Ljava/sql/Time;

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

    :goto_9
    if-ne p0, v1, :cond_2

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :cond_2
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_a
    new-instance v0, Ltfh;

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_b
    return-object v0

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_51

    nop

    nop

    :goto_d
    new-instance p0, Ljava/lang/AssertionError;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-eqz p1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    :cond_3
    goto/32 :goto_1f

    nop

    nop

    :goto_f
    if-ne p0, v1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_11
    return-object v0

    nop

    nop

    :goto_12
    goto/32 :goto_38

    nop

    nop

    :goto_13
    if-eqz p2, :cond_5

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object p0, p2, Lthm;->b:Ljava/lang/reflect/Type;

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_16
    invoke-direct {p0}, Lthi;-><init>()V

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p1, p2}, Ltdj;->a(Lthm;)Ltdx;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_18
    new-instance p1, Lthk;

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_19
    new-instance v0, Ltfc;

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

    :goto_1a
    if-nez p2, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_6
    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_1b
    invoke-direct {p0}, Lthj;-><init>()V

    goto/32 :goto_2d

    nop

    nop

    :goto_1c
    if-eq p0, p1, :cond_7

    nop

    goto/32 :goto_2e

    nop

    :cond_7
    goto/32 :goto_3d

    nop

    nop

    :goto_1d
    const-string p1, "Factory should not be used"

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

    :goto_1e
    const/4 v1, 0x1

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

    :goto_1f
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_a

    nop

    nop

    :goto_21
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const-class p1, Ljava/lang/Enum;

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-static {p0}, Ltee;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_25
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_26
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result p2

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const/4 v1, 0x3

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p0}, Ljava/lang/Class;->isEnum()Z

    move-result p1

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

    :goto_29
    const/4 v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2a
    return-object p1

    nop

    nop

    :goto_2b
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const v1, 0x9

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    return-object p0

    nop

    nop

    :goto_2e
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    new-instance p2, Lthm;

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_30
    if-lez v0, :cond_8

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_21

    nop

    :goto_31
    return-object p0

    nop

    nop

    :goto_32
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    return-object v0

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_3

    nop

    nop

    :goto_35
    throw p0

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_37
    const/4 v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iget-object p0, p2, Lthm;->a:Ljava/lang/Class;

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_39
    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    check-cast p0, Ljava/lang/Class;

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

    :goto_3b
    return-object v0

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_d

    nop

    nop

    :goto_3d
    new-instance p0, Lthj;

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

    :goto_3e
    goto/16 :goto_7

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_5a

    nop

    nop

    :goto_40
    goto/16 :goto_4d

    nop

    nop

    :goto_41
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    if-eq p0, p2, :cond_9

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

    nop

    :cond_9
    goto/32 :goto_5d

    nop

    nop

    :goto_43
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_44
    invoke-virtual {p1, p0}, Ltdj;->b(Ljava/lang/Class;)Ltdx;

    move-result-object p0

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_45
    instance-of p2, p0, Ljava/lang/reflect/GenericArrayType;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p0

    nop

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_48
    const-class p1, Ljava/lang/Enum;

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

    :goto_49
    if-eq p0, p1, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_4a
    return-object v0

    nop

    :goto_4b
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-direct {v0, p0}, Ltfh;-><init>(Ljava/lang/Class;)V

    :goto_4d
    goto/32 :goto_4a

    nop

    nop

    :goto_4e
    iget-object p0, p2, Lthm;->a:Ljava/lang/Class;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_4f
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_50
    if-eq p0, p1, :cond_b

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_51
    iget-object p0, p2, Lthm;->a:Ljava/lang/Class;

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_52
    add-int v0, v0, v1

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

    :goto_53
    if-nez p1, :cond_c

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_23

    nop

    nop

    :goto_54
    const-class p2, Ljava/sql/Timestamp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_55
    const-class p1, Ljava/sql/Date;

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    invoke-direct {p1, p0}, Lthk;-><init>(Ltdx;)V

    goto/32 :goto_2a

    nop

    nop

    :goto_57
    instance-of p2, p0, Ljava/lang/Class;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_58
    invoke-direct {p2, p0}, Lthm;-><init>(Ljava/lang/reflect/Type;)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    const v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_5a
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    new-instance p0, Lthi;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    if-ne p0, v1, :cond_d

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

    :cond_d
    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_5d
    const-class p0, Ljava/util/Date;

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

    :goto_5e
    if-eqz p2, :cond_e

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_3e

    nop

    nop

    nop

    nop
.end method
