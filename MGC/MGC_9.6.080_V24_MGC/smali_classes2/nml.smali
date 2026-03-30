.class public final Lnml;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lnmu;


# instance fields
.field private final a:Lrss;


# direct methods
.method public constructor <init>(Lrss;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lnml;->a:Lrss;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 5

    goto/32 :goto_37

    nop

    nop

    :goto_0
    iput v1, v0, Lnei;->h:I

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v2, p0, Lhbk;->a:Landroid/content/Context;

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

    :goto_2
    iput-object v1, v0, Lnei;->e:Ljava/lang/String;

    nop

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
    iget-object v1, p0, Lhbk;->a:Landroid/content/Context;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0}, Lnei;->a()Lneh;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {v0}, Lnei;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_9
    new-instance v0, Lnei;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_a
    check-cast p0, Lhbk;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_b
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0}, Lnei;->a()Lneh;

    move-result-object v0

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

    :goto_d
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_12

    nop

    nop

    :goto_f
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {v0}, Lnei;-><init>()V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Lrss;->h()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_12
    invoke-virtual {p0}, Lrss;->c()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_13
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v3, p0, Lhbk;->a:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_15
    invoke-direct {v0}, Lnei;-><init>()V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_17
    iput-object v0, p0, Lhbk;->e:Lneh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v0}, Lnei;->a()Lneh;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_19
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_20

    nop

    :goto_1a
    new-instance v0, Lnei;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v2, p0, Lhbk;->a:Landroid/content/Context;

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

    :goto_1c
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_1d
    new-instance v0, Lnei;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1e
    iput-object v0, p0, Lhbk;->c:Lneh;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_1f
    iput-object v1, v0, Lnei;->g:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_22
    iput v1, v0, Lnei;->h:I

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_23
    iput v1, v0, Lnei;->h:I

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_24
    iput v1, v0, Lnei;->b:I

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v3, p0, Lhbk;->a:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_26
    iget-object p0, p0, Lnml;->a:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_27
    iput-object v2, v0, Lnei;->g:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iput-object v0, p0, Lhbk;->d:Lneh;

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

    :goto_29
    const v2, 0x7f1402e4

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const v1, 0x15

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_2b
    iput-boolean v2, v0, Lnei;->a:Z

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_2c
    iput-boolean v2, v0, Lnei;->a:Z

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_2e
    iget-object v1, p0, Lhbk;->a:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_30
    return-void

    nop

    :goto_31
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_32
    const/4 v2, 0x1

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_33
    iput-object v3, v0, Lnei;->e:Ljava/lang/String;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_34
    const v3, 0x7f1402e5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_35
    const v4, 0x7f1402e6

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_36
    iput-object v3, v0, Lnei;->g:Landroid/content/Context;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_37
    const v0, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_38
    const/16 v1, 0xc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_39
    const/16 v1, 0xbb8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_3a
    iput-object v2, v0, Lnei;->e:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop
.end method
