.class public final Ltfi;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ltdy;


# static fields
.field public static final a:Ltdy;

.field private static final d:Ltdy;


# instance fields
.field public final b:Lteh;

.field public final c:Ljava/util/concurrent/ConcurrentMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_9

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

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_1
    goto/32 :goto_b

    nop

    :goto_2
    invoke-direct {v0, v1}, Ltfg;-><init>(I)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

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

    :goto_5
    const v1, 0x5

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0, v1}, Ltfg;-><init>(I)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_8
    new-instance v0, Ltfg;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x12

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

    :goto_a
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_c
    new-instance v0, Ltfg;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_d
    sput-object v0, Ltfi;->a:Ltdy;

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

    nop

    :goto_e
    return-void

    nop

    nop

    :goto_f
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_10
    sput-object v0, Ltfi;->d:Ltdy;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop
.end method

.method public constructor <init>(Lteh;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Ltfi;->b:Lteh;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    goto/32 :goto_3

    nop

    nop

    :goto_3
    iput-object p1, p0, Ltfi;->c:Ljava/util/concurrent/ConcurrentMap;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    new-instance p1, Lj$/util/concurrent/ConcurrentHashMap;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop
.end method

.method public static d(Ljava/lang/Class;)Ltdz;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const-class v0, Ltdz;

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

    :goto_1
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    :goto_3
    check-cast p0, Ltdz;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public static e(Lteh;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    new-instance v0, Lthm;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    invoke-virtual {p0, v0}, Lteh;->a(Lthm;)Ltet;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    invoke-direct {v0, p1}, Lthm;-><init>(Ljava/lang/reflect/Type;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {p0}, Ltet;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    return-object p0

    nop

    nop
.end method


# virtual methods
.method public final a(Ltdj;Lthm;)Ltdx;
    .locals 7

    goto/32 :goto_9

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x20

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

    :goto_2
    invoke-static {v0}, Ltfi;->d(Ljava/lang/Class;)Ltdz;

    move-result-object v5

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

    :goto_3
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_12

    nop

    nop

    :goto_5
    iget-object v2, p0, Ltfi;->b:Lteh;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-object p0

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
    const/4 v6, 0x1

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_9
    const v0, 0xb

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_b
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_c
    move-object v4, p2

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

    :goto_d
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_f
    return-object p0

    nop

    nop

    :goto_10
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_11
    move-object v3, p1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v0, p2, Lthm;->a:Ljava/lang/Class;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_13
    move-object v1, p0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_14
    invoke-virtual/range {v1 .. v6}, Ltfi;->b(Lteh;Ltdj;Lthm;Ltdz;Z)Ltdx;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_15
    if-eqz v5, :cond_1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop
.end method

.method final b(Lteh;Ltdj;Lthm;Ltdz;Z)Ltdx;
    .locals 7

    goto/32 :goto_4

    nop

    nop

    :goto_0
    check-cast p1, Ltdm;

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_1
    iget-object p4, p3, Lthm;->a:Ljava/lang/Class;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-nez p0, :cond_0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    :goto_3
    invoke-direct/range {v1 .. v6}, Ltfy;-><init>(Ltdm;Ltdj;Lthm;Ltdy;Z)V

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_5
    invoke-interface {p4}, Ltdz;->a()Ljava/lang/Class;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_6
    goto/16 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_8
    const/4 p0, 0x0

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

    :goto_9
    goto :goto_10

    nop

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0xa

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_c
    instance-of p0, p1, Ltdm;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_d
    if-nez p5, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_e
    if-nez p0, :cond_2

    nop

    goto/32 :goto_30

    nop

    nop

    :cond_2
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_f
    move-object v2, p0

    nop

    :goto_10
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_11
    move-object v5, p0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_12
    new-instance p1, Ltfy;

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

    :goto_13
    invoke-interface {p4}, Ltdz;->b()Z

    move-result v6

    nop

    nop

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

    :goto_14
    return-object p0

    nop

    nop

    :goto_15
    goto/32 :goto_1f

    nop

    nop

    :goto_16
    if-eqz p0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    :cond_3
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p1}, Ltdx;->b()Ltdx;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_18
    goto/16 :goto_2b

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_1b
    if-nez v6, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_4
    goto/32 :goto_17

    nop

    nop

    :goto_1c
    if-nez p5, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1d
    new-instance p0, Ljava/lang/IllegalArgumentException;

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

    :goto_1e
    move-object v4, p3

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

    :goto_1f
    return-object p1

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p0, p4, p1}, Ltfi;->c(Ljava/lang/Class;Ltdy;)Ltdy;

    move-result-object p1

    nop

    nop

    :goto_22
    goto/32 :goto_48

    nop

    nop

    :goto_23
    add-int v0, v0, v1

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_24
    check-cast p1, Ltdy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_25
    if-nez v0, :cond_6

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_2d

    nop

    nop

    :goto_27
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_28
    const-string p1, " as a @JsonAdapter for "

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_29
    move-object p0, p1

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_2a
    sget-object p0, Ltfi;->d:Ltdy;

    nop

    :goto_2b
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_20

    nop

    :goto_2d
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2e
    check-cast p1, Ltdx;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    goto/16 :goto_43

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_32
    instance-of p4, p1, Ltdy;

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_33
    goto/16 :goto_4f

    nop

    :goto_34
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_35
    instance-of v0, p1, Ltdx;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_36
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_38
    sget-object p0, Ltfi;->a:Ltdy;

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

    :goto_39
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_36

    nop

    nop

    :goto_3a
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_41

    nop

    nop

    :goto_3b
    if-lez v0, :cond_7

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_2c

    nop

    :goto_3c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_3d
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_28

    nop

    nop

    :goto_3e
    move-object v1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_3f
    invoke-virtual {p3}, Lthm;->toString()Ljava/lang/String;

    move-result-object p2

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    const-string p4, "Invalid attempt to bind an instance of "

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_41
    const-string p1, ". @JsonAdapter value must be a TypeAdapter, TypeAdapterFactory, JsonSerializer or JsonDeserializer."

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_42
    check-cast p0, Ltdt;

    nop

    :goto_43
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_44
    if-nez p4, :cond_8

    nop

    nop

    goto/32 :goto_34

    nop

    :cond_8
    goto/32 :goto_24

    nop

    nop

    :goto_45
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-static {p1, v0}, Ltfi;->e(Lteh;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_47
    instance-of p0, p1, Ltdm;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-interface {p1, p2, p3}, Ltdy;->a(Ltdj;Lthm;)Ltdx;

    move-result-object p1

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_49
    move-object v2, p1

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

    :goto_4a
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_4c
    new-instance p3, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_4d
    if-nez p1, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    :cond_9
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_4e
    const/4 v6, 0x0

    nop

    :goto_4f
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_50
    instance-of p0, p1, Ltdt;

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

    :goto_51
    move-object v3, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop
.end method

.method public final c(Ljava/lang/Class;Ltdy;)Ltdy;
    .locals 0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p0, Ltdy;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    :goto_3
    goto/32 :goto_4

    nop

    nop

    :goto_4
    return-object p2

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Ltfi;->c:Ljava/util/concurrent/ConcurrentMap;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-nez p0, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method
