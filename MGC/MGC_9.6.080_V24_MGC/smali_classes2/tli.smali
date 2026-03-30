.class final Ltli;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ltlo;


# instance fields
.field private final a:[Ltlo;


# direct methods
.method public varargs constructor <init>([Ltlo;)V
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

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Ltli;->a:[Ltlo;

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

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Ltln;
    .locals 3

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_3
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_5
    aget-object v1, v1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_6
    const/4 v1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_a
    add-int/lit8 v0, v0, 0x1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const-string v0, "No factory is available for message type: "

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_e
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_f
    iget-object v1, p0, Ltli;->a:[Ltlo;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-interface {v1, p1}, Ltlo;->b(Ljava/lang/Class;)Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_11
    const v0, 0xe

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_12
    throw p0

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-nez v2, :cond_0

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_0
    goto/32 :goto_1d

    nop

    nop

    :goto_15
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_16
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_b

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-lt v0, v1, :cond_2

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_2
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_19
    return-object p0

    nop

    :goto_1a
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1b
    const/4 v0, 0x0

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-interface {v1, p1}, Ltlo;->a(Ljava/lang/Class;)Ltln;

    move-result-object p0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b(Ljava/lang/Class;)Z
    .locals 3

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x7

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

    :goto_1
    const/4 v2, 0x2

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v2, p0, Ltli;->a:[Ltlo;

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

    nop

    :goto_3
    return v0

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x1a

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

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_7
    move v1, v0

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    :goto_9
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    return p0

    nop

    nop

    :goto_c
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_d
    aget-object v2, v2, v1

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

    :goto_e
    goto :goto_8

    nop

    :goto_f
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v0, 0x0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-nez v2, :cond_0

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

    :cond_0
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_4

    nop

    nop

    :goto_13
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    add-int/lit8 v1, v1, 0x1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_15
    if-lt v1, v2, :cond_1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_16
    const/4 p0, 0x1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_17
    invoke-interface {v2, p1}, Ltlo;->b(Ljava/lang/Class;)Z

    move-result v2

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_18
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_12

    nop
.end method
