.class final Lclf;
.super Luci;
.source "PG"

# interfaces
.implements Luaz;


# instance fields
.field final synthetic a:Lclg;

.field final synthetic b:Lbzy;


# direct methods
.method public constructor <init>(Lclg;Lbzy;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lclf;->b:Lbzy;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_3

    nop

    nop

    :goto_2
    const/4 p1, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lclf;->a:Lclg;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 8

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget v2, v1, Lxz;->b:I

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

    nop

    nop

    :goto_4
    iput v2, v1, Lxz;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_5
    iget-object v1, v0, Lclk;->e:Lxz;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_35

    nop

    nop

    :goto_9
    if-ge v3, v2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    :cond_0
    :goto_a
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget v6, v1, Lxz;->b:I

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_c
    aget-object v5, v4, v3

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

    :goto_d
    goto :goto_8

    nop

    nop

    :goto_e
    goto/32 :goto_34

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v3, v2}, Lbtg;->m(Ljava/lang/Object;)Z

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v4, v1, Lxz;->a:[Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-ne v3, v7, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    :cond_1
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-nez v3, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_3

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_3
    goto/32 :goto_1

    nop

    :goto_15
    add-int/lit8 v7, v6, -0x1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_16
    if-gez v3, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_9

    nop

    nop

    :goto_17
    invoke-virtual {v2}, Lclj;->a()V

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_18
    add-int/lit8 v3, v2, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_19
    iget v2, v1, Lxz;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget v3, v2, Lbtg;->b:I

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v2, v2, Lbtg;->a:[Ljava/lang/Object;

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

    :goto_1c
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    new-instance v4, Ljava/lang/StringBuilder;

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

    :goto_1e
    invoke-virtual {v3, v2}, Lxz;->b(Ljava/lang/Object;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget v5, v1, Lxz;->b:I

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {v4, v3}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

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

    nop

    nop

    :goto_22
    const v1, 0x15

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_23
    iget-object v3, v5, Lclk;->d:Lbtg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_24
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_25
    invoke-static {v4}, La;->aX(Ljava/lang/String;)V

    :goto_26
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v1, v0, Lclk;->e:Lxz;

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

    nop

    :goto_28
    check-cast v2, Lclj;

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget-object v3, v0, Lclk;->e:Lxz;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object v1, v0, Lclk;->e:Lxz;

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_2

    nop

    :goto_2c
    iget-object v0, v0, Lclg;->b:Lclk;

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_2d
    check-cast v5, Lclk;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v1, v0}, Lxz;->b(Ljava/lang/Object;)V

    :goto_30
    goto/32 :goto_5

    nop

    nop

    :goto_31
    invoke-virtual {v1}, Lxz;->a()V

    goto/32 :goto_27

    nop

    nop

    :goto_32
    return-object p0

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_34
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_35
    iget-object v2, v5, Lclk;->d:Lbtg;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_36
    add-int v0, v0, v1

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

    :goto_37
    add-int/lit8 v2, v2, -0x1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_38
    const-string v5, "Index "

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

    :goto_39
    if-lt v1, v3, :cond_5

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_3f

    nop

    nop

    :goto_3a
    const-string v5, " must be in 0.."

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    aget-object v2, v2, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    aput-object v1, v4, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_3d
    iget-object v4, v2, Lclj;->a:Lbzy;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_3e
    if-nez v2, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_3f
    iget-object v3, p0, Lclf;->b:Lbzy;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-static {v4, v4, v3, v2, v6}, Lrkm;->bh([Ljava/lang/Object;[Ljava/lang/Object;III)V

    :goto_41
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_42
    iget-object v0, p0, Lclf;->a:Lclg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_44
    add-int/lit8 v5, v5, -0x1

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    const v0, 0x7

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_46
    goto/16 :goto_8

    nop

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_29

    nop

    nop

    nop
.end method
