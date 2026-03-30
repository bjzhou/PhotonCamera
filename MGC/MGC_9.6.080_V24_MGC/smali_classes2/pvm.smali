.class public final synthetic Lpvm;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpvn;


# instance fields
.field public final synthetic a:Lpvn;

.field public final synthetic b:Landroidx/wear/ambient/AmbientDelegate;

.field private final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Landroidx/wear/ambient/AmbientDelegate;Lpvn;I)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lpvm;->b:Landroidx/wear/ambient/AmbientDelegate;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Lpvm;->a:Lpvn;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    iput p3, p0, Lpvm;->c:I

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    goto/32 :goto_8

    nop

    nop

    :goto_0
    invoke-virtual {v1}, Lpvr;->k()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1
    iget-object p1, p1, Landroidx/wear/ambient/AmbientDelegate;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    :goto_3
    goto/16 :goto_34

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_6
    const/4 p1, 0x2

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p1, p0, Lpvm;->b:Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_8
    const v0, 0x14

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    const v1, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_a
    check-cast v1, Lpvr;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1d

    nop

    :goto_c
    invoke-interface {p0, p1}, Lpvn;->a(I)V

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_1
    goto/32 :goto_1c

    nop

    :goto_e
    invoke-virtual {p1}, Landroidx/wear/ambient/AmbientDelegate;->ae()Lnyc;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_f
    iget-object v1, p1, Landroidx/wear/ambient/AmbientDelegate;->c:Ljava/lang/Object;

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

    :goto_10
    goto/16 :goto_34

    nop

    :goto_11
    goto/32 :goto_e

    nop

    nop

    :goto_12
    check-cast p1, Lpvr;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget v2, v1, Lnyc;->b:I

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_14
    if-eqz v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_2
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object p1, p0, Lpvm;->b:Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object p1, p0, Lpvm;->b:Landroidx/wear/ambient/AmbientDelegate;

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

    :goto_17
    return-void

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_32

    nop

    nop

    :goto_19
    check-cast p1, Lpvr;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-interface {p0, p1}, Lpvn;->a(I)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object p0, p0, Lpvm;->a:Lpvn;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget v0, v1, Lnyc;->c:I

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p1}, Landroidx/wear/ambient/AmbientDelegate;->ai()I

    move-result p1

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object p0, p0, Lpvm;->a:Lpvn;

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_21
    if-nez p1, :cond_3

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2f

    nop

    nop

    :goto_22
    iget-object p1, p1, Landroidx/wear/ambient/AmbientDelegate;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_23
    return-void

    nop

    nop

    :goto_24
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_25
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-interface {p0, p1}, Lpvn;->a(I)V

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_28
    if-ge p1, v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_4
    goto/32 :goto_6

    nop

    nop

    :goto_29
    invoke-virtual {p1}, Lpvr;->n()I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_2b
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_2c
    invoke-virtual {p1}, Landroidx/wear/ambient/AmbientDelegate;->aj()I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_2d
    invoke-virtual {p1}, Lpvr;->c()I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_2e
    iget p1, p0, Lpvm;->c:I

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_2f
    if-ne p1, v0, :cond_5

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

    :cond_5
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_30
    and-int/2addr v0, v2

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_31
    iget-object p0, p0, Lpvm;->a:Lpvn;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_32
    invoke-static {}, Lpuq;->y()V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_33
    move p1, v2

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_35
    const/16 v2, 0xd

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method
