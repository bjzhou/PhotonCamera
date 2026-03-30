.class public final Ltzq;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private a:Ljava/util/Collection;

.field private final b:I


# direct methods
.method private final 71665ec13d52b6f685942d1d3c74af37m()Ljava/lang/Object;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Ltzq;->a:Ljava/util/Collection;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object p0

    nop
.end method

.method public constructor <init>()V
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

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
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_2
    invoke-direct {p0, v0, v1}, Ltzq;-><init>(Ljava/util/Collection;I)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x1f

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

    :goto_4
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    const v1, 0x18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_7
    sget-object v0, Ltyw;->a:Ltyw;

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

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    :goto_b
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/util/Collection;I)V
    .locals 0

    goto/32 :goto_0

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
    iput-object p1, p0, Ltzq;->a:Ljava/util/Collection;

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

    :goto_2
    iput p2, p0, Ltzq;->b:I

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

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final readExternal(Ljava/io/ObjectInput;)V
    .locals 4

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v3, v0}, Ltzm;-><init>(I)V

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_1
    invoke-static {v1}, Lrkm;->M(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v1, Ltzh;

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

    :goto_3
    const-string p1, "Illegal size value: "

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-eqz v2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    :cond_0
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_5
    and-int/lit8 v2, v0, -0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v3

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_7
    new-instance v3, Ltzm;

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

    :goto_8
    goto/16 :goto_27

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    :goto_a
    if-gez v0, :cond_1

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

    :cond_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v1, Ltzs;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_c
    const/4 v2, 0x0

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_d
    add-int/lit8 v2, v2, 0x1

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
    iput-object p1, p0, Ltzq;->a:Ljava/util/Collection;

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

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_10
    invoke-direct {v1, v0}, Ltzh;-><init>(I)V

    :goto_11
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2e

    nop

    :goto_13
    invoke-static {v1}, Lrkm;->ab(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto :goto_11

    nop

    nop

    :goto_18
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const v1, 0x1e

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {v0, p1, v3}, La;->br(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_1b
    invoke-static {v0, p1, v3}, La;->br(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    and-int/lit8 v1, v0, 0x1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_2f

    nop

    nop

    :goto_20
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-direct {p0, p1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    new-instance p0, Ljava/io/InvalidObjectException;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-lt v2, v0, :cond_3

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_24
    if-nez v1, :cond_4

    nop

    nop

    goto/32 :goto_1e

    nop

    :cond_4
    goto/32 :goto_b

    nop

    nop

    :goto_25
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_26
    invoke-direct {v1, v3}, Ltzs;-><init>(Ltzm;)V

    :goto_27
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_29
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    new-instance p0, Ljava/io/InvalidObjectException;

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    if-lt v2, v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_5
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_2a

    nop

    nop

    :goto_2f
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_30
    const v0, 0x16

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const-string v3, "."

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_32
    throw p0

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_35
    invoke-direct {p0, p1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_29

    nop

    nop

    :goto_36
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_37
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_39
    const-string p1, "Unsupported flags value: "

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop
.end method

.method public final writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    goto/32 :goto_5

    nop

    nop

    :goto_2
    iget-object v0, p0, Ltzq;->a:Ljava/util/Collection;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

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

    nop

    :goto_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto :goto_9

    nop

    nop

    :goto_6
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    :goto_8
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_a
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p0, p0, Ltzq;->a:Ljava/util/Collection;

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

    :goto_c
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_d
    iget v0, p0, Ltzq;->b:I

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_f
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeByte(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method
