.class public Luha;
.super Luhf;
.source "PG"

# interfaces
.implements Lugy;


# instance fields
.field private final a:Z


# direct methods
.method public constructor <init>(Lugy;)V
    .locals 4

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const v0, 0x19

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_2
    move v0, v1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1}, Luhb;->e()Luhf;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_5
    goto/16 :goto_19

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1}, Luhf;->eL()Lufe;

    move-result-object p1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-nez p1, :cond_0

    nop

    nop

    goto/32 :goto_17

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_9
    instance-of v3, p1, Luff;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_1

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    :goto_b
    if-nez p1, :cond_2

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_2
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Luhf;->eL()Lufe;

    move-result-object p1

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_d
    const v1, 0x6

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {p0, v0}, Luhf;-><init>(Z)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p1}, Luhf;->eu()Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    :goto_11
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_12
    if-nez v3, :cond_3

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    :cond_3
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-nez v3, :cond_4

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_16
    if-eqz p1, :cond_5

    nop

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

    :cond_5
    :goto_17
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_18
    move-object p1, v2

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_14

    nop

    :goto_1b
    move-object p1, v2

    nop

    nop

    :goto_1c
    goto/32 :goto_8

    nop

    nop

    :goto_1d
    invoke-virtual {p0, p1}, Luhf;->G(Lugy;)V

    goto/32 :goto_c

    nop

    nop

    :goto_1e
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 v1, 0x0

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

    :goto_20
    check-cast p1, Luff;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_21
    if-nez v1, :cond_6

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

    :cond_6
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_22
    if-eqz p1, :cond_7

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p1}, Luhb;->e()Luhf;

    move-result-object p1

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

    :goto_24
    iput-boolean v0, p0, Luha;->a:Z

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

    :goto_25
    goto/16 :goto_3

    nop

    nop

    :goto_26
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_27
    goto/16 :goto_1c

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_29
    check-cast p1, Luff;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2a
    goto/16 :goto_17

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_f

    nop

    nop

    :goto_2c
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_2d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_2e
    instance-of v1, p1, Luff;

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
.end method


# virtual methods
.method public final eu()Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    :goto_1
    iget-boolean p0, p0, Luha;->a:Z

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
.end method

.method public final ev()Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop
.end method
