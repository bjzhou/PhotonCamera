.class public final Lsgc;
.super Ljava/util/logging/LogRecord;
.source "PG"


# static fields
.field private static final b:[Ljava/lang/Object;


# instance fields
.field public final a:Lsfg;

.field private final c:Lsej;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    new-instance v0, Lsgb;

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

    :goto_1
    sput-object v0, Lsgc;->b:[Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    new-array v0, v0, [Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0}, Lsgb;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    :goto_5
    const/4 v0, 0x0

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public constructor <init>(Ljava/lang/RuntimeException;Lsej;Lsep;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_14

    nop

    :goto_1
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_2
    const/16 p1, 0xa

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, p2, p3}, Lsgc;-><init>(Lsej;Lsep;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {p2, p3}, Lsgc;->a(Lsej;Ljava/lang/StringBuilder;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance p3, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_6
    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {p2}, Lsej;->o()Ljava/util/logging/Level;

    move-result-object p3

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0, p1}, Lsgc;->setThrown(Ljava/lang/Throwable;)V

    goto/32 :goto_5

    nop

    nop

    :goto_b
    invoke-virtual {v0}, Ljava/util/logging/Level;->intValue()I

    move-result v0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_c
    if-lt p3, v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_d
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    sget-object p3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0, p1}, Lsgc;->setMessage(Ljava/lang/String;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p3}, Ljava/util/logging/Level;->intValue()I

    move-result p3

    nop

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

    nop

    :goto_12
    invoke-virtual {p0, p3}, Lsgc;->setLevel(Ljava/util/logging/Level;)V

    goto/32 :goto_a

    nop

    nop

    :goto_13
    invoke-interface {p2}, Lsej;->o()Ljava/util/logging/Level;

    move-result-object p3

    nop

    nop

    :goto_14
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

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

    nop

    nop

    :goto_16
    const-string v0, "LOGGING ERROR: "

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method protected constructor <init>(Lsej;Lsep;)V
    .locals 2

    goto/32 :goto_3

    nop

    nop

    :goto_0
    goto/32 :goto_19

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
    goto/32 :goto_0

    nop

    nop

    :goto_3
    const v0, 0x1f

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

    :goto_4
    invoke-virtual {p0, p1, p2}, Lsgc;->setMillis(J)V

    goto/32 :goto_e

    nop

    nop

    :goto_5
    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_6
    invoke-interface {p1}, Lsej;->e()J

    move-result-wide v0

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

    :goto_7
    invoke-interface {p1}, Lsej;->f()Lsdj;

    move-result-object p2

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
    sget-object p2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0, p2}, Lsgc;->setSourceMethodName(Ljava/lang/String;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {p1}, Lsej;->n()Ljava/lang/String;

    move-result-object p2

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_b
    invoke-interface {p1}, Lsej;->k()Lsep;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_c
    invoke-direct {p0, v0, v1}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/32 :goto_17

    nop

    nop

    :goto_d
    invoke-interface {p1}, Lsej;->o()Ljava/util/logging/Level;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_e
    sget-object p1, Lsgc;->b:[Ljava/lang/Object;

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

    :goto_f
    add-int v0, v0, v1

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

    :goto_10
    invoke-virtual {p0, p2}, Lsgc;->setLoggerName(Ljava/lang/String;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p2}, Lsdj;->b()Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {p2, v0}, Lsfg;->g(Lsep;Lsep;)Lsfg;

    move-result-object p2

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    :goto_15
    invoke-virtual {p2}, Lsdj;->d()Ljava/lang/String;

    move-result-object p2

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-super {p0, p1}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_17
    iput-object p1, p0, Lsgc;->c:Lsej;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_2

    nop

    :goto_19
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1a
    const v1, 0x14

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1b
    invoke-virtual {p0, v0}, Lsgc;->setSourceClassName(Ljava/lang/String;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v1, 0x0

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

    nop

    :goto_1d
    iput-object p2, p0, Lsgc;->a:Lsfg;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lsej;Lsep;[B)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1, p2}, Lsgc;-><init>(Lsej;Lsep;)V

    goto/32 :goto_5

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1}, Lsgc;->setThrown(Ljava/lang/Throwable;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sget-object p2, Lsde;->a:Lsdr;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    check-cast p1, Ljava/lang/Throwable;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_5
    iget-object p1, p0, Lsgc;->a:Lsfg;

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

    :goto_6
    invoke-virtual {p1, p2}, Lsfg;->b(Lsdr;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lsgc;->getMessage()Ljava/lang/String;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static a(Lsej;Ljava/lang/StringBuilder;)V
    .locals 6

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_1
    const-string v1, "\n    "

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_3
    move v4, v2

    nop

    nop

    :goto_4
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_6
    invoke-interface {p0}, Lsej;->o()Ljava/util/logging/Level;

    move-result-object v0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    array-length v3, v0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-gtz v3, :cond_0

    nop

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

    :cond_0
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_a
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_c
    invoke-static {v0}, Lsen;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_d
    iget-object v3, v3, Lsdr;->a:Ljava/lang/String;

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

    nop

    :goto_e
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v2, 0x0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_10
    invoke-static {v0}, Lsen;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_11
    sget-object v0, Lcom/google/android/apps/camera/jni/gyro/xfsr/FACWQLkhP;->YmnhBbOHDHcxUm:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {v5}, Lsen;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    aget-object v5, v0, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_14
    const-string v0, "  original message: "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_15
    if-eqz v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3a

    nop

    nop

    :goto_16
    invoke-interface {p0}, Lsej;->l()Lsfl;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-lt v2, v3, :cond_2

    nop

    nop

    goto/32 :goto_4f

    nop

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
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/16 :goto_4

    nop

    :goto_1a
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const-string v3, "\n  metadata:"

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

    nop

    :goto_1c
    const-string v3, ": "

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_1d
    if-lt v4, v3, :cond_3

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

    :cond_3
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_1f
    add-int v0, v0, v1

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-interface {p0}, Lsej;->L()[Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_22
    goto/32 :goto_4d

    nop

    :goto_23
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v0}, Lsdj;->b()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_25
    invoke-interface {p0}, Lsej;->l()Lsfl;

    move-result-object v0

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_26
    const-string v0, "\n  class: "

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_12

    nop

    nop

    :goto_28
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_23

    nop

    :goto_2a
    invoke-interface {p0}, Lsej;->f()Lsdj;

    move-result-object v0

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v0}, Lsep;->b()I

    move-result v3

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-interface {p0}, Lsej;->f()Lsdj;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2f
    invoke-interface {p0}, Lsej;->f()Lsdj;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v0}, Lsdj;->d()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v0, v2}, Lsep;->e(I)Ljava/lang/Object;

    move-result-object v3

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_32
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_33
    invoke-static {v3}, Lsen;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_34
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_35
    iget-object v0, v0, Lsfl;->b:Ljava/lang/String;

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

    :goto_36
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_45

    nop

    nop

    :goto_38
    const-string v0, "\n  original arguments:"

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    const-string v0, "\n  line number: "

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

    :goto_3a
    invoke-interface {p0}, Lsej;->m()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-interface {p0}, Lsej;->e()J

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_3c
    invoke-virtual {v0, v2}, Lsep;->c(I)Lsdr;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_3d
    add-int/lit8 v2, v2, 0x1

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {p0}, Lsdj;->a()I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {v0}, Lsep;->b()I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_40
    const-string v0, "\n  level: "

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_41
    if-lez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_22

    nop

    :goto_42
    const v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_43
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_44
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_45
    goto/16 :goto_1a

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_47
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    const v1, 0x19

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_49
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_4b
    const-string v0, "\n  timestamp (nanos): "

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4c
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    goto/32 :goto_29

    nop

    nop

    :goto_4e
    goto/16 :goto_a

    nop

    nop

    :goto_4f
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_50
    invoke-interface {p0}, Lsej;->k()Lsep;

    move-result-object v0

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_51
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final getMessage()Ljava/lang/String;
    .locals 4

    goto/32 :goto_3

    nop

    nop

    :goto_0
    iget-object v0, p0, Lsgc;->c:Lsej;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1
    invoke-super {p0, v0}, Ljava/util/logging/LogRecord;->setMessage(Ljava/lang/String;)V

    :goto_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x2

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

    nop

    :goto_4
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1a

    nop

    nop

    :goto_6
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x9

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_9
    invoke-static {v0, v3}, Lsgx;->e(Lsej;Ljava/lang/StringBuilder;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

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

    nop

    nop

    :goto_b
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    :cond_1
    goto/32 :goto_18

    nop

    :goto_c
    if-nez v3, :cond_2

    nop

    goto/32 :goto_11

    nop

    :cond_2
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {v0}, Lsfk;->a(Lsej;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_f
    new-instance v3, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_10
    goto :goto_e

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v1, p0, Lsgc;->a:Lsfg;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {v1, v0, v3}, Lsfk;->c(Lsfg;Lsew;Ljava/lang/StringBuilder;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {v0, v1, v3}, Lsfk;->b(Lsej;Lsfg;Ljava/util/Set;)Z

    move-result v3

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v0, v2, Lsek;->a:Lsew;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v3, v2, Lsek;->b:Ljava/util/Set;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-super {p0}, Ljava/util/logging/LogRecord;->getMessage()Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1c
    sget-object v2, Lsfk;->a:Lsek;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop
.end method

.method public final setMessage(Ljava/lang/String;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    if-eqz p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    :goto_1
    invoke-super {p0, p1}, Ljava/util/logging/LogRecord;->setMessage(Ljava/lang/String;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-string p1, ""

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop
.end method

.method public final setParameters([Ljava/lang/Object;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lsgc;->getMessage()Ljava/lang/String;

    goto/32 :goto_5

    nop

    nop

    :goto_2
    sget-object p1, Lsgc;->b:[Ljava/lang/Object;

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    invoke-super {p0, p1}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-eqz p1, :cond_0

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

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public final setResourceBundle(Ljava/util/ResourceBundle;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public final setResourceBundleName(Ljava/lang/String;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const-string v1, " {\n  message: "

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const-string p0, "\n}"

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_6
    const v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

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

    :goto_8
    invoke-virtual {p0}, Lsgc;->getParameters()[Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_3

    nop

    nop

    :goto_b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Lsgc;->getMessage()Ljava/lang/String;

    move-result-object v1

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

    nop

    :goto_d
    const-string v1, "<none>"

    nop

    :goto_e
    goto/32 :goto_4

    nop

    nop

    :goto_f
    const-string v1, "\n  arguments: "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_10
    invoke-virtual {p0}, Lsgc;->getParameters()[Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0x7

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

    :goto_12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1f

    nop

    nop

    :goto_14
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_16
    const/16 v1, 0xa

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

    :goto_17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/32 :goto_21

    nop

    nop

    :goto_18
    invoke-static {p0, v0}, Lsgc;->a(Lsej;Ljava/lang/StringBuilder;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto :goto_e

    nop

    :goto_1a
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1b
    if-nez v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    nop

    :goto_1c
    goto/32 :goto_14

    nop

    :goto_1d
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    return-object p0

    nop

    nop

    :goto_1f
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_21
    iget-object p0, p0, Lsgc;->c:Lsej;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    :goto_24
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop
.end method
