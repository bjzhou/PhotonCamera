.class public final Lebr;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Leau;


# instance fields
.field private final synthetic a:I

.field private final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lebr;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput p2, p0, Lebr;->a:I

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Leaw;Leap;)V
    .locals 2

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance p1, Ljava/util/HashMap;

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
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lebr;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_5
    if-lt p2, v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    :cond_0
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    check-cast p0, Lebw;

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_7
    if-ne v0, p1, :cond_1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_25

    nop

    nop

    :goto_8
    if-eq p2, v0, :cond_2

    nop

    goto/32 :goto_38

    nop

    nop

    :cond_2
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {v0}, Leak;->a()V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_d
    sget-object v0, Leap;->ON_CREATE:Leap;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_10
    goto/16 :goto_2f

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p1, p0}, Lear;->c(Leav;)V

    goto/32 :goto_13

    nop

    nop

    :goto_13
    iget-object p0, p0, Lebr;->b:Ljava/lang/Object;

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

    :goto_14
    invoke-interface {p1}, Leak;->a()V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_15
    aget-object p0, v0, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_16
    new-instance p1, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_17
    goto/32 :goto_f

    nop

    :goto_18
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_19
    array-length p0, v0

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

    :goto_1a
    invoke-static {p2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const-string p1, "Next event must be ON_CREATE, it was "

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

    :goto_1c
    array-length v1, v0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    :cond_3
    goto/32 :goto_2c

    nop

    nop

    :goto_1e
    return-void

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const v0, 0x11

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_21
    invoke-interface {p0}, Leak;->a()V

    goto/32 :goto_2

    nop

    nop

    :goto_22
    add-int/lit8 p1, p1, 0x1

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_23
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    rem-int v0, v0, v1

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object p1, p0, Lebr;->b:Ljava/lang/Object;

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

    :goto_26
    iget-object v0, p0, Lebr;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-lt p1, p0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_28
    const/4 p1, 0x0

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_29
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p0}, Lebw;->b()V

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    add-int/lit8 p2, p2, 0x1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2c
    const/4 p1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2d
    aget-object v0, v0, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2e
    move p2, p1

    nop

    :goto_2f
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_30
    check-cast v0, [Leak;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iget v0, p0, Lebr;->a:I

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_32
    goto/16 :goto_11

    nop

    nop

    :goto_33
    goto/32 :goto_1e

    nop

    nop

    :goto_34
    invoke-interface {p1}, Leaw;->getLifecycle()Lear;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_35
    if-lez v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_5
    goto/32 :goto_17

    nop

    :goto_36
    invoke-interface {p0}, Leak;->a()V

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_37
    return-void

    nop

    nop

    :goto_38
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_39
    const v1, 0x13

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
.end method
