.class final Ljss;
.super Lrft;
.source "PG"


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Ljst;


# direct methods
.method public constructor <init>(Ljst;Landroid/view/View;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lrft;-><init>()V

    goto/32 :goto_1

    nop

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

    nop

    :goto_2
    iput-object p2, p0, Ljss;->a:Landroid/view/View;

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

    nop

    :goto_3
    iput-object p1, p0, Ljss;->b:Ljst;

    nop

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public final a(Landroid/view/View;F)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    const/4 p1, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Ljst;->f:Landroid/support/v7/widget/RecyclerView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setAlpha(F)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Ljss;->b:Ljst;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop
.end method

.method public final b(Landroid/view/View;I)V
    .locals 5

    goto/32 :goto_3f

    nop

    nop

    :goto_0
    iget-object v0, p0, Ljss;->b:Ljst;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_2
    check-cast p2, Lsjz;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_3
    invoke-virtual {p2}, Ltkg;->m()Ltkb;

    move-result-object p2

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 p1, 0x3

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 p2, 0x0

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    :goto_8
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, p2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/16 v1, 0x19

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p0, p0, Ljss;->b:Ljst;

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0}, Ltkg;->C()Z

    move-result v0

    nop

    goto/32 :goto_44

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

    :goto_e
    goto/32 :goto_3d

    nop

    nop

    :goto_f
    or-int/lit8 v1, v1, 0x1

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p2}, Ltkb;->i()Ltkg;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_11
    iput-wide v1, v0, Lsjz;->d:J

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_12
    iget-object p1, p1, Ljst;->l:Lmjv;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_13
    sub-long/2addr v1, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_14
    if-ne p2, p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_23

    nop

    nop

    :goto_15
    iput-wide p1, p0, Ljst;->h:J

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p2}, Ltkb;->o()V

    :goto_17
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_18
    iput v3, v0, Lsjz;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_19
    if-eqz v0, :cond_1

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_1b
    if-lez v0, :cond_2

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_21

    nop

    :goto_1c
    if-eq p2, p1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    :cond_3
    goto/32 :goto_43

    nop

    nop

    :goto_1d
    invoke-virtual {p1, p2}, Lmjv;->h(Lsjz;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1e
    return-void

    nop

    :goto_1f
    goto/32 :goto_24

    nop

    nop

    :goto_20
    check-cast v0, Lsjz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_21
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const/4 v0, 0x5

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const/4 p1, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_25
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_26
    iget-object v0, p2, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_27
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const v1, 0x17

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_2a
    check-cast v0, Lsjz;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_2b
    iget-object p1, p0, Ljss;->b:Ljst;

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_2c
    goto/32 :goto_22

    nop

    nop

    :goto_2d
    iget-object v0, p2, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_2e
    iput v1, v0, Lsjz;->b:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {p2}, Ltkb;->o()V

    :goto_30
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-interface {p1, p2}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_2b

    nop

    nop

    :goto_32
    iput-wide p1, p0, Ljst;->h:J

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v0}, Ltkg;->C()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    const-wide/16 p1, 0x0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    sget-object p2, Lsjz;->a:Lsjz;

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

    nop

    :goto_36
    iget-object p1, p1, Ljst;->c:Loyn;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_37
    iget-object p1, p0, Ljss;->b:Ljst;

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_38
    iput v1, v0, Lsjz;->c:I

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_39
    iget v1, v0, Lsjz;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_3a
    if-eq p2, v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iget-wide v3, v0, Ljst;->h:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_3d
    iget-object p2, p0, Ljss;->a:Landroid/view/View;

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

    nop

    :goto_3e
    or-int/lit8 v3, v3, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_3f
    const v0, 0x15

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

    :goto_40
    iget v3, v0, Lsjz;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_41
    goto/16 :goto_e

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_43
    iget-object p0, p0, Ljss;->b:Ljst;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_44
    if-eqz v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_5
    goto/32 :goto_16

    nop

    nop
.end method
