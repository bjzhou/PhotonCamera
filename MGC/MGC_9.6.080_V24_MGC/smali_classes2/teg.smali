.class final Lteg;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ltet;


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
    iput p2, p0, Lteg;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lteg;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 4

    goto/32 :goto_7

    nop

    nop

    :goto_0
    check-cast p0, Ljava/lang/String;

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_1
    check-cast p0, Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    aget-object v0, v0, v3

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

    :goto_3
    new-instance v0, Ltdo;

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_4
    throw v0

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_3f

    nop

    nop

    :goto_6
    new-instance v0, Ltdo;

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0xd

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

    :goto_8
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_9
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_a
    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_b
    iget-object p0, p0, Lteg;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_c
    check-cast p0, Ljava/lang/reflect/Constructor;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    :goto_d
    invoke-interface {p0}, Ljava/lang/reflect/Type;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x15

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/16 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_39

    nop

    nop

    nop

    :goto_10
    throw v1

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_11
    new-instance v0, Ltdo;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const-string v2, "Invalid EnumSet type: "

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_13
    iget-object p0, p0, Lteg;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_14
    return-object p0

    nop

    nop

    :catch_0
    move-exception p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {p0, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_16
    throw p0

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_17
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :catch_1
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_18
    invoke-direct {p0, v0}, Ltdo;-><init>(Ljava/lang/String;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-interface {v0}, Ljava/lang/reflect/Type;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {p0}, Lthh;->b(Ljava/lang/IllegalAccessException;)Ljava/lang/RuntimeException;

    move-result-object p0

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

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

    :goto_1c
    iget-object p0, p0, Lteg;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-direct {v0, p0}, Ltdo;-><init>(Ljava/lang/String;)V

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    new-instance p0, Ljava/util/EnumMap;

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

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
    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_22
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

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

    :goto_23
    invoke-interface {p0}, Ltdk;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_24
    aget-object v0, v0, v3

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_25
    throw p0

    nop

    nop

    :pswitch_3
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_26
    invoke-interface {p0}, Ltdk;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_27
    check-cast p0, Ljava/lang/reflect/Constructor;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_28
    throw v0

    nop

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const-string v1, "Failed to invoke constructor \'"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_2a
    invoke-static {p0, v1, v0}, La;->bj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    check-cast p0, Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object p0, p0, Lteg;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    new-instance v3, Ljava/lang/RuntimeException;

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

    :goto_2e
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    new-instance v1, Ljava/lang/RuntimeException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_31
    throw p0

    nop

    nop

    nop

    nop

    nop

    :catch_2
    move-exception v2

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_32
    invoke-direct {v0, p0}, Ltdo;-><init>(Ljava/lang/String;)V

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_33
    check-cast v0, Ljava/lang/Class;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_35
    const-string v2, "Invalid EnumMap type: "

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_36
    return-object p0

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-direct {v0, p0}, Ltdo;-><init>(Ljava/lang/String;)V

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iget-object p0, p0, Lteg;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_3a
    throw v3

    nop

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_8
        :pswitch_7
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_0
    .end packed-switch

    :goto_3b
    goto/32 :goto_75

    nop

    nop

    :goto_3c
    new-instance v0, Ltdo;

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    :goto_3e
    throw v0

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    new-instance p0, Ltdo;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_40
    const-string p0, ". Registering an InstanceCreator or a TypeAdapter for this type, or adding a no-args constructor may fix this problem."

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_41
    if-nez v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_42
    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_10

    nop

    nop

    :goto_43
    invoke-direct {v3, p0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-static {p0, v1, v0}, La;->bj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_46
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_47
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_48
    goto/32 :goto_59

    nop

    nop

    :goto_49
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_4a
    const/4 v3, 0x0

    nop

    nop

    nop

    packed-switch v2, :pswitch_data_0

    :try_start_0
    iget-object v2, p0, Lteg;->a:Ljava/lang/Object;

    nop
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_4c
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    iget-object p0, p0, Lteg;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_4e
    instance-of v1, v0, Ljava/lang/Class;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_4f
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_50
    const-string v3, "Unable to create instance of "

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_51
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_52
    throw v0

    nop

    nop

    :pswitch_6
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_53
    throw v0

    nop

    nop

    :pswitch_7
    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_54
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    :goto_55
    sget-object v0, Lcom/google/android/libraries/mdi/download/workmanager/workers/UTR/fllg;->msEZgUcI:Ljava/lang/String;

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_56
    iget-object v0, p0, Lteg;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    invoke-direct {v3, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_58
    invoke-direct {v0, p0}, Ltdo;-><init>(Ljava/lang/String;)V

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_59
    const/4 v0, 0x0

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_5a
    return-object p0

    nop

    nop

    nop

    nop

    :goto_5b
    :try_start_1
    check-cast v2, Ljava/lang/reflect/Constructor;

    nop

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_5c
    iget-object p0, p0, Lteg;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-static {p0}, Lthh;->c(Ljava/lang/reflect/Constructor;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_1
    goto/32 :goto_54

    nop

    nop

    nop

    :goto_60
    if-nez v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p0

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    instance-of v1, v0, Ljava/lang/Class;

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_8

    nop

    nop

    :goto_64
    throw v3

    nop

    nop

    nop

    :catch_3
    move-exception v2

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_65
    iget-object p0, p0, Lteg;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    iget v2, p0, Lteg;->b:I

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_67
    new-instance v3, Ljava/lang/RuntimeException;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_68
    if-lez v0, :cond_3

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

    :cond_3
    goto/32 :goto_47

    nop

    :goto_69
    iget-object p0, p0, Lteg;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_6a
    iget-object p0, p0, Lteg;->a:Ljava/lang/Object;

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

    :goto_6b
    check-cast v0, Ljava/lang/Class;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_6c
    invoke-interface {p0}, Ljava/lang/reflect/Type;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    if-nez v1, :cond_4

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_6e
    iget-object v0, p0, Lteg;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_6f
    new-instance v0, Ltdo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_70
    iget-object p0, p0, Lteg;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_71
    throw v0

    nop

    nop

    :goto_72
    goto/32 :goto_78

    nop

    nop

    nop

    :goto_73
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_30

    nop

    nop

    :goto_74
    check-cast p0, Ljava/lang/String;

    nop

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

    :goto_75
    goto/32 :goto_48

    nop

    nop

    nop

    :goto_76
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_77
    invoke-direct {v0, p0}, Ltdo;-><init>(Ljava/lang/String;)V

    goto/32 :goto_4

    nop

    nop

    :goto_78
    new-instance p0, Ltdo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :goto_79
    invoke-direct {p0, v0}, Ltdo;-><init>(Ljava/lang/String;)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_7a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_7b
    invoke-interface {v0}, Ljava/lang/reflect/Type;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    invoke-static {p0}, Lthh;->c(Ljava/lang/reflect/Constructor;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_7d
    new-instance v0, Ltdo;

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

    :goto_7e
    invoke-direct {v0, p0}, Ltdo;-><init>(Ljava/lang/String;)V

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_7f
    return-object p0

    nop

    nop

    nop

    :pswitch_8
    :try_start_2
    sget-object v0, Ltfb;->c:Ltfb;

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lteg;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast v1, Ljava/lang/Class;

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Ltfb;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/32 :goto_17

    nop

    nop
.end method
