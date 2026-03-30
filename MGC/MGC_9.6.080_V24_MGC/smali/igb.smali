.class public final Ligb;
.super Luci;
.source "PG"

# interfaces
.implements Lubk;


# instance fields
.field final synthetic a:I

.field private final synthetic b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iput p2, p0, Ligb;->b:I

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

    :goto_1
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_4

    nop

    nop

    :goto_2
    iput p1, p0, Ligb;->a:I

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 p1, 0x1

    nop

    nop

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

    nop

    nop

    nop
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-ne v0, v1, :cond_0

    nop

    goto/32 :goto_1f

    nop

    nop

    :cond_0
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    :goto_2
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget v0, p0, Ligb;->b:I

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

    :goto_4
    const v1, 0xc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_22

    nop

    nop

    :goto_8
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_b
    if-eq v0, v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_c
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_d
    return-object p0

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_f
    check-cast p1, Landroid/view/ViewGroup$LayoutParams;

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

    :goto_10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget p0, p0, Ligb;->a:I

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_12
    iput p0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_13
    sget-object p0, Ltyg;->a:Ltyg;

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

    :goto_14
    div-int/lit8 p0, p0, 0x4

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_15
    iget v0, p0, Ligb;->a:I

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

    nop

    :goto_16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_18
    iput p0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_1b
    const/4 v1, 0x1

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

    :goto_1c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1e
    throw p1

    nop

    nop

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
    mul-int/lit8 p0, p0, 0x3

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget p0, p0, Ligb;->a:I

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_22
    iget p0, p0, Ligb;->a:I

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget p0, p0, Ligb;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_24
    iput p0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_25
    const-string p0, "."

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_26
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-lez v0, :cond_2

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

    :cond_2
    goto/32 :goto_5

    nop

    :goto_28
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_29
    check-cast p1, Landroid/view/ViewGroup$LayoutParams;

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_2a
    const/4 v1, 0x2

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

    :goto_2b
    sget-object p0, Ltyg;->a:Ltyg;

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

    :goto_2c
    const v0, 0xa

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    if-nez v0, :cond_3

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const-string v1, "Sequence doesn\'t contain element at index "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-direct {p1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_31
    check-cast p1, Landroid/view/ViewGroup$LayoutParams;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_32
    check-cast p1, Ljava/lang/Number;

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

    :goto_33
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_34
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop
.end method
