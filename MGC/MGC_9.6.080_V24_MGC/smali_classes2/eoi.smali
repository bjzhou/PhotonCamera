.class final Leoi;
.super Leoj;
.source "PG"


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4

    goto/32 :goto_3e

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Leom;->setStackTrace([Ljava/lang/StackTraceElement;)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_3
    invoke-static {v0, p0, p1}, La;->br(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_4
    goto/16 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_7
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_8
    goto/16 :goto_34

    nop

    :goto_9
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_a
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_c
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_2a

    nop

    :goto_f
    aget-object v3, p1, v0

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_10
    new-instance v2, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_11
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-ge v0, p2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/4 p1, 0x0

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_15
    sub-int v0, p2, v0

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_17
    invoke-static {p1}, Lrkm;->ba([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_18
    invoke-direct {p0}, Leoj;-><init>()V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_19
    if-lt v0, p2, :cond_2

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_f

    nop

    nop

    :goto_1a
    aget-object p1, p1, p2

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-interface {p1, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_1d
    if-gez v0, :cond_3

    nop

    nop

    goto/32 :goto_21

    nop

    :cond_3
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_1e
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p0}, Leom;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_20
    return-void

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_39

    nop

    nop

    nop

    :goto_22
    sget-object p1, Lcom/google/android/apps/camera/imax/cyclops/capture/xzG/qcMkh;->aybJkMnOKxI:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_23
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iput-object p1, p0, Leoi;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_26
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_b

    nop

    nop

    :goto_27
    invoke-direct {p0, p1}, Leom;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_28
    iput-object p2, p0, Leoi;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_29
    if-eq v0, v2, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_4
    goto/32 :goto_32

    nop

    nop

    :goto_2a
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-static {v0, v1}, Lucd;->h(II)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_2e
    goto :goto_34

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_13

    nop

    nop

    :goto_30
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_31
    add-int/lit8 v0, p2, -0x2

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

    :goto_32
    add-int/lit8 p2, p2, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_33
    move-object p1, v2

    nop

    nop

    :goto_34
    goto/32 :goto_41

    nop

    nop

    :goto_35
    if-eqz v0, :cond_5

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

    :cond_5
    goto/32 :goto_40

    nop

    nop

    :goto_36
    const-string p2, " value: "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_37
    new-instance p1, Ljava/lang/IllegalArgumentException;

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

    :goto_38
    array-length p2, p1

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_39
    const-string p0, "Requested element count "

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-static {p1}, Lrkm;->ac(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3b
    goto/16 :goto_16

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    check-cast p1, [Ljava/lang/StackTraceElement;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3e
    const v0, 0xb

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3f
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_40
    sget-object p1, Ltyw;->a:Ltyw;

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_41
    new-array p2, v1, [Ljava/lang/StackTraceElement;

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

    :goto_42
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_36

    nop

    nop

    :goto_43
    new-instance p0, Leom;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lubk;)Leoj;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop
.end method

.method public final b()Ljava/lang/Object;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object p0

    nop
.end method
