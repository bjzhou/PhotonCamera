.class public final Ls;
.super Ljava/lang/Object;
.source "PG"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final a:Ljava/util/Set;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final b:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final c:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method private constructor <init>(ILjava/util/Set;Z)V
    .locals 0

    goto/32 :goto_2

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
    iput-object p2, p0, Ls;->a:Ljava/util/Set;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-boolean p3, p0, Ls;->b:Z

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    iput p1, p0, Ls;->c:I

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method static a(Ljava/lang/String;)Ls;
    .locals 12

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v10, Lr;

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_2
    goto/16 :goto_50

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_5

    nop

    nop

    :goto_4
    aget-object v10, v10, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_5
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    array-length v4, p0

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v11, Lq;

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_8
    if-eqz v8, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v3, 0x1

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_35

    nop

    nop

    :goto_b
    if-eq v11, v2, :cond_1

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :cond_1
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_c
    throw v0

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_10

    nop

    nop

    :goto_e
    const/4 v10, 0x0

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {p0, v1, v0, v7}, Ls;-><init>(ILjava/util/Set;Z)V

    goto/32 :goto_52

    nop

    nop

    :goto_10
    move v8, v3

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

    :goto_11
    move v6, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_12
    const v0, 0x4

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_15
    const-string v10, "\u2026"

    nop

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

    :goto_16
    invoke-direct {v9, v10}, Lq;-><init>(Ljava/lang/String;)V

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_17
    aget-object v9, p0, v6

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_18
    const v1, 0x1

    nop

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

    :goto_19
    const/4 v4, 0x7

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

    :goto_1a
    goto/16 :goto_d

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const-string v1, "Can only have \u2026 at the end of samples: "

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

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

    :goto_1e
    if-eqz v10, :cond_2

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_2
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const-string v0, "Samples must start with \'integer\' or \'decimal\'"

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_20
    sget-object v4, Lx;->e:Ljava/util/regex/Pattern;

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_21
    const-string v1, "integer"

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_22
    new-instance p0, Ljava/lang/IllegalArgumentException;

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
    aget-object v11, v10, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_24
    new-instance v10, Lr;

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    move v1, v3

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

    :goto_26
    sget-object v10, Lx;->f:Ljava/util/regex/Pattern;

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/16 :goto_50

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

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

    :goto_2b
    invoke-direct {v9, v11}, Lq;-><init>(Ljava/lang/String;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_2d
    new-instance p0, Ls;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_2e
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    goto/16 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_32
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_33
    new-instance v9, Lq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_35
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_40

    nop

    nop

    :goto_37
    sget-object v10, Lcom/google/android/apps/camera/logging/PTc/RjdpW;->xwZMntYaWRYP:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_39
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-static {v1, v9}, Ls;->b(ILq;)V

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    const-string v1, "decimal"

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

    :goto_3c
    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    aget-object v10, v10, v3

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_40
    new-instance v9, Lq;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_41
    move v7, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

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

    nop

    :goto_43
    invoke-direct {v11, v10}, Lq;-><init>(Ljava/lang/String;)V

    goto/32 :goto_3a

    nop

    nop

    :goto_44
    invoke-static {v1, v9}, Ls;->b(ILq;)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_45
    invoke-virtual {v10, v9}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v10

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_46
    if-nez v1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :cond_3
    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_47
    new-instance v0, Ljava/util/LinkedHashSet;

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_48
    invoke-direct {v10, v9, v9}, Lr;-><init>(Lq;Lq;)V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_49
    if-nez v1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :cond_4
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    goto/16 :goto_60

    nop

    nop

    nop

    :goto_4b
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_4c
    if-ne v11, v3, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :cond_5
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    throw p0

    nop

    nop

    nop

    :goto_4e
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_4f
    move v7, v5

    nop

    nop

    nop

    :goto_50
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_51
    array-length v11, v10

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    return-object p0

    nop

    nop

    :goto_53
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_55
    if-nez v10, :cond_6

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_56
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_57
    const/4 v2, 0x2

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

    nop

    :goto_58
    const-string v1, "Ill-formed number range: "

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_59
    invoke-static {v1, v11}, Ls;->b(ILq;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_c

    nop

    nop

    :goto_5b
    move v1, v2

    nop

    :goto_5c
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_5d
    if-lt v6, v4, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    :cond_7
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    nop

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

    :goto_5f
    move v8, v6

    nop

    nop

    nop

    nop

    :goto_60
    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_61
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_62
    goto/32 :goto_47

    nop

    nop

    nop

    :goto_63
    if-lez v0, :cond_8

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_61

    nop

    :goto_64
    add-int/lit8 v6, v6, 0x1

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_65
    invoke-direct {v10, v9, v11}, Lr;-><init>(Lq;Lq;)V

    goto/32 :goto_3f

    nop

    nop

    :goto_66
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private static b(ILq;)V
    .locals 3

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_1
    goto :goto_8

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x3

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x6

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

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

    :goto_6
    if-ne p0, v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_18

    nop

    nop

    :goto_7
    move p0, v1

    nop

    :goto_8
    goto/32 :goto_a

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_a
    iget v2, p1, Lq;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

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

    :goto_c
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const-string v0, "Ill-formed number range: "

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_f
    goto :goto_15

    nop

    nop

    :goto_10
    goto/32 :goto_14

    nop

    nop

    :goto_11
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_13
    const/4 v0, 0x0

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    move v0, v1

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-eq p0, v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

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

    :goto_18
    move p0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_19
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1a
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1b
    throw p0

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1d
    if-nez v2, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_3
    goto/32 :goto_f

    nop

    nop

    :goto_1e
    return-void

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_17

    nop

    nop

    nop
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    goto/32 :goto_29

    nop

    nop

    :goto_0
    goto/16 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_4
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_5
    const-string v2, ","

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/32 :goto_1c

    nop

    nop

    :goto_7
    check-cast v3, Lr;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v1, p0, Ls;->a:Ljava/util/Set;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_9
    const-string p0, ", \u2026"

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-boolean p0, p0, Ls;->b:Z

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_e
    goto :goto_18

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_11
    const-string v1, "@"

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

    :goto_12
    if-nez v3, :cond_0

    nop

    nop

    nop

    goto/32 :goto_f

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

    :goto_13
    const-string v1, "DECIMAL"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_14
    const/16 v2, 0x20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_15
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

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

    nop

    :goto_16
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2b

    nop

    nop

    :goto_17
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    :goto_18
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-ne v1, v2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_1
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1a
    if-eqz p0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

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

    :goto_1c
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const-string v1, "INTEGER"

    nop

    nop

    :goto_1e
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1f
    if-eqz v2, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_5

    nop

    nop

    :goto_20
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_21
    const v1, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_22
    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_24
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_27
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_28
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2

    nop

    :goto_29
    const v0, 0xc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_2a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_2b
    iget v1, p0, Ls;->c:I

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

    :goto_2c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_2d
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop
.end method
