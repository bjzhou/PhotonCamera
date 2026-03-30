.class final Ljbz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljdf;


# instance fields
.field final synthetic a:Lmae;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljcb;

.field final synthetic d:Lixe;


# direct methods
.method public constructor <init>(Ljcb;Lmae;Landroid/content/Context;Lixe;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    iput-object p3, p0, Ljbz;->b:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Ljbz;->a:Lmae;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p4, p0, Ljbz;->d:Lixe;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Ljbz;->c:Ljcb;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Z)Z
    .locals 3

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1, v0}, Lixe;->a(Lixf;)Lpci;

    :goto_1
    goto/32 :goto_14

    nop

    nop

    :goto_2
    check-cast p1, Ljava/lang/Boolean;

    nop

    nop

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

    :goto_3
    return p0

    nop

    nop

    :goto_4
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-eqz p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_6
    iput-boolean v1, v0, Lnei;->a:Z

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v0, Lnei;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1, v0}, Lmad;->equals(Ljava/lang/Object;)Z

    move-result p1

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

    :goto_9
    iget-object p0, p0, Ljcb;->a:Loxv;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_4

    nop

    :goto_b
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-nez p1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_1
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p1, p0, Ljbz;->d:Lixe;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_e
    iget-object v0, p0, Ljbz;->c:Ljcb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_f
    const v1, 0x1b

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_11
    iput-object v1, v0, Lnei;->g:Landroid/content/Context;

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_a

    nop

    :goto_13
    invoke-virtual {p1, v0}, Lmad;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_14
    iget-object p0, p0, Ljbz;->c:Ljcb;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iput v1, v0, Lnei;->h:I

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object p1, p0, Ljbz;->c:Ljcb;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_18
    iget-object p1, p0, Ljbz;->a:Lmae;

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_19
    rem-int v0, v0, v1

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

    :goto_1a
    iget-object p1, p1, Ljcb;->a:Loxv;

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_1b
    if-nez p1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_3
    :goto_1c
    goto/32 :goto_24

    nop

    nop

    :goto_1d
    sget-object v0, Lmad;->d:Lmad;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p1}, Loyv;->cM()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_20
    iget-object p0, p0, Loxv;->d:Ljava/lang/Object;

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

    :goto_21
    invoke-direct {v0}, Lnei;-><init>()V

    goto/32 :goto_37

    nop

    nop

    :goto_22
    check-cast p1, Lmad;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_23
    sget-object v0, Lmad;->b:Lmad;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-object p1, p0, Ljbz;->c:Ljcb;

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

    :goto_25
    iput-object v0, p1, Ljcb;->h:Lneh;

    nop

    :goto_26
    goto/32 :goto_d

    nop

    nop

    :goto_27
    iget-object v0, p1, Ljcb;->h:Lneh;

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_28
    iget-object p1, p0, Ljbz;->a:Lmae;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_29
    if-nez p1, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_4
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v1, p0, Ljbz;->b:Landroid/content/Context;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p1}, Loyv;->cM()Ljava/lang/Object;

    move-result-object p1

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

    nop

    :goto_2d
    if-eqz v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :cond_5
    goto/32 :goto_7

    nop

    nop

    :goto_2e
    invoke-virtual {v0}, Lnei;->a()Lneh;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object p1, p1, Loxv;->d:Ljava/lang/Object;

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

    :goto_30
    iput-object v1, v0, Lnei;->e:Ljava/lang/String;

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    check-cast p0, Ljava/lang/Boolean;

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

    :goto_32
    check-cast p1, Lmad;

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    const v2, 0x7f14073e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_34
    const v0, 0xc

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_35
    iget-object v0, v0, Ljcb;->h:Lneh;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_36
    const/4 v1, 0x0

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

    :goto_37
    const/16 v1, 0x8

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop
.end method

.method public final b()I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    :goto_1
    const/16 p0, 0x67

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final c()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    return-void

    nop
.end method
