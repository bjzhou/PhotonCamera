.class public final Leof;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field private final a:Ludp;

.field private final b:Lubk;


# direct methods
.method public constructor <init>(Ludp;Lubk;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    iput-object p2, p0, Leof;->b:Lubk;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    :goto_3
    iput-object p1, p0, Leof;->a:Ludp;

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
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_0
    const-string p2, "Value cannot be cast to "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    const/4 v1, 0x0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {p1}, Ludp;->b()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    const-class v1, Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_7
    aget-object p2, p3, v1

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_8
    const-string v1, "hashCode"

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_9
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_a
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-nez p3, :cond_0

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_c
    return-object p0

    nop

    nop

    :goto_d
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_37

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

    :goto_10
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_12
    const-string v3, "equals"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_13
    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :cond_3
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const-string p1, ", method: "

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_17
    invoke-virtual {v0, v3}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_18
    if-eqz p3, :cond_4

    nop

    nop

    goto/32 :goto_37

    nop

    :cond_4
    goto/32 :goto_61

    nop

    nop

    :goto_19
    invoke-direct {p0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const-string v1, "toString"

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-nez v0, :cond_5

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_1d
    if-nez v0, :cond_6

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_30

    nop

    nop

    :goto_1e
    throw p0

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-eqz p3, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_21
    iget-object p0, p0, Leof;->b:Lubk;

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1e

    nop

    nop

    :goto_23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-static {v0, v1}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_25
    new-instance p0, Ljava/lang/ClassCastException;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_27
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    array-length v0, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object p0, p0, Leof;->b:Lubk;

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_2c
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto/16 :goto_3e

    nop

    nop

    :goto_2e
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_30
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_31
    invoke-virtual {v0, v1}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_32
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_33
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_34
    if-nez v0, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_8
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v0, v1}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_36
    goto :goto_3e

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    goto/16 :goto_3e

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_25

    nop

    nop

    :goto_3a
    iget-object p1, p0, Leof;->a:Ludp;

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

    :goto_3b
    const v0, 0x2

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    if-eq p1, p0, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :cond_9
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_40
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_41
    invoke-static {v0, v1}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_42
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

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

    :goto_43
    invoke-interface {p0, p2}, Lubk;->a(Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_33

    nop

    nop

    :goto_44
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_45
    const-string p1, ", args: "

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

    :goto_46
    invoke-interface {p1, p2}, Ludp;->d(Ljava/lang/Object;)Z

    move-result p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    move v1, v2

    nop

    :goto_48
    goto/32 :goto_5f

    nop

    nop

    :goto_49
    const v1, 0xf

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    array-length v0, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-static {v0, v1}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4e
    goto/32 :goto_50

    nop

    nop

    :goto_4f
    goto/32 :goto_1f

    nop

    nop

    :goto_50
    goto/32 :goto_51

    nop

    nop

    nop

    :goto_51
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_52
    if-eq v0, v2, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :cond_a
    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_53
    if-eq v0, v2, :cond_b

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_3a

    nop

    nop

    :goto_54
    if-lez v0, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_4f

    nop

    :goto_55
    const-string v1, "Unexpected method call object:"

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_56
    invoke-static {v0, v3}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_57
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_58
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

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

    nop

    nop

    :goto_59
    const-string v1, "accept"

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5b
    if-nez p3, :cond_d

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_5c
    aget-object p0, p3, v1

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_5d
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_5e
    if-nez p3, :cond_e

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_60
    if-nez v0, :cond_f

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

    :cond_f
    goto/32 :goto_20

    nop

    nop

    :goto_61
    iget-object p0, p0, Leof;->b:Lubk;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop
.end method
