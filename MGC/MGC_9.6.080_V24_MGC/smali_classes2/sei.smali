.class public final Lsei;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lsdq;


# static fields
.field private static final d:Ljava/util/Set;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/StringBuilder;

.field public c:Z

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-class v0, Ljava/lang/Boolean;

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

    :goto_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    const-class v5, Ljava/lang/Float;

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

    :goto_4
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_6
    sput-object v7, Lsei;->d:Ljava/util/Set;

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

    :goto_7
    const-class v4, Ljava/lang/Long;

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
    filled-new-array/range {v0 .. v6}, [Ljava/lang/Class;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_9
    const-class v6, Ljava/lang/Double;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x11

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

    :goto_b
    const-class v3, Ljava/lang/Integer;

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

    :goto_c
    goto/32 :goto_2

    nop

    :goto_d
    new-instance v7, Ljava/util/HashSet;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    :goto_f
    goto/32 :goto_c

    nop

    nop

    :goto_10
    const v1, 0xc

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_13
    const-class v1, Ljava/lang/Byte;

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_14
    const-class v2, Ljava/lang/Short;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_15
    invoke-direct {v7, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/lang/StringBuilder;)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

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
    iput-object v0, p0, Lsei;->e:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2
    iput-object v0, p0, Lsei;->a:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    iput-boolean v0, p0, Lsei;->c:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    :goto_6
    const-string v0, " ]"

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const-string v0, "[CONTEXT "

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

    :goto_8
    iput-object p1, p0, Lsei;->b:Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method

.method private static b(Ljava/lang/String;I)I
    .locals 2

    goto/32 :goto_a

    nop

    nop

    :goto_0
    const/16 v1, 0x5c

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1
    if-ne v0, v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_1
    goto/32 :goto_8

    nop

    :goto_4
    if-ge v0, v1, :cond_2

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_2
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_5
    goto :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_8
    goto/32 :goto_10

    nop

    nop

    :goto_9
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/16 v1, 0x22

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_c
    goto/32 :goto_9

    nop

    :goto_d
    return p1

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_c

    nop

    nop

    :goto_11
    if-eq v0, v1, :cond_3

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    add-int/lit8 p1, p1, 0x1

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

    :goto_13
    const v1, 0xe

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_15
    const/4 p0, -0x1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_16
    if-lt p1, v0, :cond_4

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/16 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_19
    const/16 v1, 0x20

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1a
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7

    goto/32 :goto_3d

    nop

    nop

    :goto_0
    if-ne v2, v4, :cond_0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_1
    invoke-static {p2, v0}, Lsei;->b(Ljava/lang/String;I)I

    move-result v2

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    if-ne v2, v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    :cond_1
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lsei;->b:Ljava/lang/StringBuilder;

    nop

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

    nop

    :goto_5
    iget-object v0, p0, Lsei;->b:Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_6
    if-ne v2, v4, :cond_2

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

    :cond_2
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/16 p1, 0x3d

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_8
    if-ne v2, v4, :cond_3

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-le v5, v6, :cond_4

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :cond_4
    goto/32 :goto_57

    nop

    nop

    :goto_a
    invoke-virtual {p0, p2, v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto/32 :goto_2c

    nop

    nop

    :goto_b
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_23

    nop

    nop

    :goto_e
    if-nez v0, :cond_5

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    :goto_10
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/16 :goto_26

    nop

    :goto_12
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

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

    nop

    :goto_16
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p0, p2, v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto/32 :goto_35

    nop

    nop

    :goto_18
    if-eqz p2, :cond_6

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :cond_6
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const-string v6, "\n"

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iput-boolean v4, p0, Lsei;->c:Z

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 v0, 0x0

    nop

    nop

    :goto_1e
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1f
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_20
    const/4 v1, -0x1

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_21
    goto :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_4

    nop

    nop

    :goto_23
    goto/32 :goto_14

    nop

    :goto_24
    iget-object v2, p0, Lsei;->e:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_25
    const/16 v2, 0x74

    nop

    nop

    :goto_26
    goto/32 :goto_56

    nop

    nop

    nop

    :goto_27
    return-void

    nop

    :goto_28
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    if-ne v5, v1, :cond_7

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :cond_7
    :goto_2a
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_2b
    if-ne v2, v3, :cond_8

    nop

    nop

    goto/32 :goto_54

    nop

    :cond_8
    goto/32 :goto_2d

    nop

    nop

    :goto_2c
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const/16 v4, 0xd

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

    :goto_2e
    const/16 v3, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_2f
    if-lez v0, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_13

    nop

    :goto_30
    const v2, 0xfffd

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_33
    const/16 v4, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    add-int/lit8 v0, v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_36
    goto/16 :goto_1e

    nop

    nop

    :goto_37
    goto/32 :goto_3a

    nop

    nop

    :goto_38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_39
    iget-boolean v0, p0, Lsei;->c:Z

    nop

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

    :goto_3a
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_3c
    iget-object v0, p0, Lsei;->b:Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    const v0, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_3e
    const/16 v4, 0x5c

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

    :goto_3f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1b

    nop

    nop

    :goto_40
    const/16 v2, 0x72

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_42
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_43
    const/16 v6, 0x3e8

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_44
    sget-object p1, Lsei;->d:Ljava/util/Set;

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_45
    move v2, v3

    nop

    nop

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    if-ne v2, p1, :cond_a

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    const/16 v2, 0x6e

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    if-gtz v0, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :cond_b
    goto/32 :goto_5

    nop

    nop

    :goto_4b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_4c
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_4e
    iget-object v0, p0, Lsei;->b:Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_4f
    const/4 v4, 0x1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_50
    goto/16 :goto_1e

    nop

    nop

    nop

    :goto_51
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_52
    const/16 p1, 0x22

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_53
    goto/16 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_54
    goto/32 :goto_49

    nop

    nop

    :goto_55
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_56
    const-string v4, "\\"

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_57
    iget-object v5, p0, Lsei;->b:Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_58
    iget-object p0, p0, Lsei;->b:Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_59
    if-nez p1, :cond_c

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_5a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/32 :goto_18

    nop

    nop

    :goto_5c
    const v1, 0x1

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    const/16 v2, 0x20

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop
.end method
