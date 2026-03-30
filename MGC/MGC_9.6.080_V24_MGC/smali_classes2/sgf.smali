.class public Lsgf;
.super Lsfj;
.source "PG"


# instance fields
.field private final a:Lsgd;

.field private final b:Lsgj;

.field private final c:Lsge;

.field private final d:Lsfi;


# direct methods
.method public constructor <init>()V
    .locals 2

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_1
    const v1, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_2
    const-string v1, "flogger.backend_factory"

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_3
    if-eqz v0, :cond_1

    nop

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

    :goto_4
    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :cond_2
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_5
    check-cast v0, Lsgj;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_6
    check-cast v0, Lsgd;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v0, v1}, Lsgf;->p(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_24

    nop

    :goto_c
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {v0, v1}, Lsgf;->p(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_e
    const-class v0, Lsgd;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const-string v1, "flogger.logging_context"

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_10
    sget-object v0, Lsgh;->a:Lsfi;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_11
    iput-object v0, p0, Lsgf;->a:Lsgd;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_12
    invoke-direct {p0}, Lsfj;-><init>()V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_13
    iput-object v0, p0, Lsgf;->d:Lsfi;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const-class v0, Lsgj;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_15
    sget-object v0, Lsgl;->a:Lsgj;

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const-string v1, "flogger.clock"

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_18
    sget-object v0, Lsgi;->a:Lsgi;

    nop

    :goto_19
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iput-object v0, p0, Lsgf;->b:Lsgj;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_1b
    sget-object v0, Lsgg;->a:Lsgd;

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1d
    const-class v0, Lsge;

    nop

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

    :goto_1e
    iput-object v0, p0, Lsgf;->c:Lsge;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1f
    const v0, 0x12

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_20
    check-cast v0, Lsge;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {v0, v1}, Lsgf;->p(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-eqz v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_3
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_23
    return-void

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_a

    nop

    nop

    nop
.end method

.method private static p(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 12

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_4
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_c

    nop

    nop

    :goto_5
    return-object v1

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    sget-object v6, Lcom/google/android/apps/camera/jni/gyro/xfsr/FACWQLkhP;->aPs:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_8
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v3}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v3

    nop

    :goto_a
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_b
    const/16 v3, 0x23

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_c
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_d
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v9, 0x0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-eq v3, v4, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_11
    if-eq v3, v4, :cond_2

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    sget-object v9, Lcom/google/vr/ndk/base/qbMr/qVSTXuYNqkCvm;->BDVi:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const-string v3, "cannot cast result of calling \'%s\' to \'%s\': %s\n"

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_14
    const-string p1, "Multiple implementations of service %s found on the classpath: %s%nEnsure only the service implementation you want to use is included on the classpath or else specify the service class at startup with the \'%s\' system property. The default implementation will be used instead.%n"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_15
    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v0, 0x0

    nop

    nop

    nop

    :try_start_0
    invoke-static {p1, v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    nop
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/16 :goto_49

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_18
    goto/16 :goto_38

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_1a
    move-object v7, v6

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_1b
    invoke-static {p0}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;)Ljava/util/ServiceLoader;

    move-result-object v3

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_2

    nop

    nop

    :goto_1d
    goto/16 :goto_38

    nop

    nop

    :goto_1e
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-ne v3, v4, :cond_3

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :cond_3
    :try_start_1
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    nop

    if-nez v3, :cond_4

    nop

    nop

    goto :goto_20

    nop

    nop

    nop

    :cond_4
    const-string v1, "new "

    nop

    nop

    nop

    invoke-static {v5, v1, v9}, La;->bj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    nop

    nop

    nop

    nop

    invoke-virtual {v10, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/16 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :catch_1
    move-exception v1

    nop

    nop

    nop

    nop

    nop

    goto :goto_19

    nop

    nop

    nop

    nop

    :catch_2
    move-exception v1

    nop

    nop

    nop

    goto :goto_1e

    nop

    :goto_20
    const-string v3, "method \'%s\' does not exist: %s\n"

    nop

    filled-new-array {v1, v11}, [Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    invoke-static {v3, v1}, Lshf;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_21
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_44

    nop

    nop

    nop

    :goto_23
    const-string v9, "()"

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/16 :goto_3c

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_27
    const v1, 0x19

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_28
    add-int/lit8 v7, v3, 0x1

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_29
    return-object v0

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_22

    nop

    nop

    :goto_2b
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

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

    :goto_2c
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_2d
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_2e
    filled-new-array {v8, v3, v1}, [Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const/4 v6, 0x0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    const/4 v4, 0x1

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto :goto_3c

    nop

    nop

    nop

    nop

    nop

    :catch_3
    move-exception v11

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_32
    goto :goto_3e

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_3d

    nop

    nop

    :goto_34
    filled-new-array {v8, v1}, [Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_35
    if-nez v4, :cond_5

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_5
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_36
    const/4 v4, -0x1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_37
    if-eqz v1, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    :catch_4
    :cond_6
    :goto_38
    goto/32 :goto_4e

    nop

    nop

    :goto_39
    if-lez v0, :cond_7

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    :cond_7
    goto/32 :goto_43

    nop

    :goto_3a
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    goto/16 :goto_38

    nop

    :goto_3c
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_3f
    invoke-static {v3, v1}, Lshf;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_41
    return-object v0

    nop

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_2a

    nop

    :goto_44
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_45
    return-object p0

    nop

    :goto_46
    goto/32 :goto_29

    nop

    nop

    :goto_47
    invoke-static {v3, v1}, Lshf;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/32 :goto_1d

    nop

    nop

    :goto_48
    move-object v1, v0

    nop

    nop

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    const-string v2, "cannot read property name %s: %s"

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    move-object v5, v1

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    nop

    nop

    nop

    :goto_4d
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    move-object v1, v0

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

    :goto_4f
    invoke-static {v2, v1}, Lshf;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/32 :goto_48

    nop

    nop

    :goto_50
    new-instance v8, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_51
    goto :goto_4d

    nop

    :goto_52
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_53
    filled-new-array {p0, v1, p1}, [Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_54
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    nop

    nop

    :try_start_2
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-virtual {v10, v7, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    nop

    nop

    nop

    nop

    invoke-virtual {v11, v0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v11}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_55
    invoke-virtual {v2, p1, p0}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    const-string v3, "cannot call expected no-argument constructor or static method \'%s\': %s\n"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_57
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_58
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_59
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_1b

    nop

    nop

    :goto_5a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    if-nez v3, :cond_8

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_5c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_5d
    if-ne v3, v4, :cond_9

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    const v0, 0xa

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method protected final c()J
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_4
    return-wide v0

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_b

    nop

    nop

    :goto_6
    const v0, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

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

    :goto_8
    const v1, 0x8

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p0, p0, Lsgf;->c:Lsge;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Lsge;->a()J

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_b
    goto/32 :goto_2

    nop

    nop
.end method

.method protected final e(Ljava/lang/String;)Lsel;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Lsgd;->a(Ljava/lang/String;)Lsel;

    move-result-object p0

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

    nop

    :goto_2
    iget-object p0, p0, Lsgf;->a:Lsgd;

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
.end method

.method protected final h()Lsfi;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lsgf;->d:Lsfi;

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

    nop

    nop
.end method

.method protected final j()Lsgj;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lsgf;->b:Lsgj;

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
    return-object p0

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final m()Ljava/lang/String;
    .locals 5

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1f

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    :goto_4
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    :goto_7
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_8
    const-string p0, "\nLogCallerFinder: Default stack-based caller finder\n"

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_a
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p0, p0, Lsgf;->b:Lsgj;

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

    :goto_d
    iget-object v1, p0, Lsgf;->a:Lsgd;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_f
    const-string v4, "Platform: "

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v2, p0, Lsgf;->c:Lsge;

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_14
    new-instance v3, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_17
    const-string v0, "\nContextDataProvider: "

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

    :goto_18
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_2

    nop

    nop

    :goto_19
    const v0, 0xb

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const-string v0, "\nBackendFactory: "

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const v1, 0x17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1f
    const-string v0, "\nClock: "

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

    :goto_20
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop
.end method
