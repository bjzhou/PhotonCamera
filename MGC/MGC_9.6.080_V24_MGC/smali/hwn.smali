.class public final synthetic Lhwn;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lrsk;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Z

.field private final synthetic c:I


# direct methods
.method public synthetic constructor <init>(ZZI)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    iput p3, p0, Lhwn;->c:I

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

    nop

    :goto_3
    iput-boolean p2, p0, Lhwn;->b:Z

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
    iput-boolean p1, p0, Lhwn;->a:Z

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    goto/32 :goto_1

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1
    const v0, 0x13

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

    nop

    :goto_2
    move v1, v2

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    :goto_4
    const v1, 0x1c

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    sget-object p0, Llyd;->d:Llyd;

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

    nop

    :goto_6
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_7
    iget-boolean v0, p0, Lhwn;->a:Z

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

    :goto_8
    check-cast p1, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_c
    invoke-static {p0}, Llyd;->a(I)Llyd;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_f
    return-object p0

    nop

    :goto_10
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-ne p1, p0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return-object p0

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {v0}, Llyd;->a(I)Llyd;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_16
    sget-object p0, Llyd;->a:Llyd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_17
    if-ne v0, v1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_18
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_19
    if-ne p1, p0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    :cond_4
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-boolean p0, p0, Lhwn;->b:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_1b
    iget-boolean p0, p0, Lhwn;->b:Z

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_1c
    move v1, v2

    nop

    nop

    :goto_1d
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-nez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-lez v0, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    :cond_6
    goto/32 :goto_36

    nop

    :goto_20
    iget-boolean p0, p0, Lhwn;->b:Z

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_21
    iget-boolean v0, p0, Lhwn;->a:Z

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

    :goto_22
    sget-object p0, Llyd;->a:Llyd;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_23
    sget-object v1, Llyd;->a:Llyd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_24
    if-eqz v0, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :cond_7
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_25
    check-cast p1, Llyd;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget-boolean v0, p0, Lhwn;->a:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_27
    iget v0, p0, Lhwn;->c:I

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_28
    goto/16 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2b
    goto/16 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_2d
    if-ne v0, v1, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_2f
    if-nez p0, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_30
    if-nez p0, :cond_a

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/16 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    if-nez p0, :cond_b

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_34
    goto/16 :goto_d

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_27

    nop

    nop

    :goto_38
    check-cast p1, Llyd;

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_39
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_3c
    sget-object p0, Llyd;->a:Llyd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop
.end method
