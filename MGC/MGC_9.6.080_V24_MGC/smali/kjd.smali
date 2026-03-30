.class public final Lkjd;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ltun;


# instance fields
.field private final a:Ltxm;

.field private final b:Ltxm;

.field private final synthetic c:I


# direct methods
.method public constructor <init>(Ltxm;Ltxm;I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lkjd;->b:Ltxm;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iput p3, p0, Lkjd;->c:I

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    iput-object p1, p0, Lkjd;->a:Ltxm;

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

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

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

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lkjd;->b()Ljava/lang/Integer;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    iget v0, p0, Lkjd;->c:I

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lkjd;->b()Ljava/lang/Integer;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_4
    return-object p0

    nop

    nop

    nop

    :goto_5
    return-object p0

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop
.end method

.method public final b()Ljava/lang/Integer;
    .locals 3

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_2e

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1e

    nop

    :goto_3
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, v1}, Llyx;->l(Ljava/lang/String;)Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_5
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

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

    :goto_6
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    const v0, 0x20

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {p0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_9
    sget-object p0, Lhmg;->a:Lhmo;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0xf

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_b
    goto/16 :goto_2e

    nop

    :goto_c
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-interface {v0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_e
    return-object p0

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object p0, p0, Lkjd;->b:Ltxm;

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_1f

    nop

    :goto_12
    sget-object p0, Llyd;->b:Llyd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_13
    check-cast p0, Llyx;

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_14
    invoke-virtual {p0, v1}, Llyx;->k(Ljava/lang/String;)Z

    move-result p0

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

    :goto_15
    check-cast p0, Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto :goto_19

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_18
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1a
    sget-object p0, Llyd;->a:Llyd;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const-string v1, "pref_mode_vesper_enabled"

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget p0, p0, Llyd;->f:I

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

    :goto_1d
    invoke-virtual {p0}, Lkje;->b()Lkiz;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_28

    nop

    :goto_1f
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    add-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_21
    if-nez v2, :cond_2

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_22
    if-nez p0, :cond_3

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

    :cond_3
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_23
    sget-object v1, Lhna;->ag:Lhmn;

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

    nop

    :goto_24
    invoke-virtual {v0, p0}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object p0

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_25
    iget-object v0, p0, Lkjd;->a:Ltxm;

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v0, v1}, Lhoh;->p(Lhmn;)Z

    move-result v0

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

    nop

    :goto_27
    return-object p0

    nop

    :goto_28
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget v0, p0, Lkjd;->c:I

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    check-cast v0, Lhoh;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2b
    if-nez v0, :cond_4

    nop

    nop

    goto/32 :goto_f

    nop

    nop

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

    :goto_2c
    iget-object p0, p0, Lkjd;->b:Ltxm;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    nop

    :goto_2e
    goto/32 :goto_31

    nop

    nop

    :goto_2f
    check-cast p0, Lkje;

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

    :goto_30
    invoke-interface {v0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_31
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_32
    invoke-virtual {p0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

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

    nop

    nop

    :goto_33
    check-cast v0, Lhoh;

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget-object v0, p0, Lkjd;->a:Ltxm;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_35
    iget p0, p0, Lkiz;->a:I

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_36
    iget p0, p0, Llyd;->f:I

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop
.end method
