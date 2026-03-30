.class public final Ljw;
.super Ljb;
.source "PG"


# instance fields
.field final c:I

.field final d:I

.field public e:Ljv;

.field private f:Landroid/view/MenuItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 3

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1
    iput v2, p0, Ljw;->c:I

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    const/16 p2, 0x15

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x10

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

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

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_6
    if-eq p1, v1, :cond_1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/16 v0, 0x16

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput p2, p0, Ljw;->d:I

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_f

    nop

    :goto_d
    move v2, p2

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {p0, p1, p2}, Ljb;-><init>(Landroid/content/Context;Z)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

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

    :goto_12
    const/4 v1, 0x1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto :goto_16

    nop

    nop

    :goto_14
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_15
    move v2, v0

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_17
    move p2, v0

    nop

    :goto_18
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_19
    return-void

    nop

    :goto_1a
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-eq p1, v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_2
    goto/32 :goto_d

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5c

    nop

    :goto_3
    iget-object v3, v3, Lfr;->a:Landroid/os/Handler;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_4
    const v0, 0x18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v3, v1, Lfq;->a:Lfr;

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_6
    if-eq v2, v5, :cond_1

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

    :cond_1
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_7
    move-object v7, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Ljw;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_9
    add-int/lit8 v2, v2, 0x1

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v5, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_b
    iget-object v1, p0, Ljw;->e:Ljv;

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_d
    const/4 v2, 0x0

    nop

    goto/32 :goto_65

    nop

    nop

    :goto_e
    move v2, v5

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_6

    nop

    nop

    :goto_10
    return p0

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_64

    nop

    nop

    nop

    :goto_12
    check-cast v6, Lqxk;

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iput-object v10, p0, Ljw;->f:Landroid/view/MenuItem;

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v1, v1, Ljx;->a:Ljv;

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_16
    goto/16 :goto_69

    nop

    nop

    :goto_17
    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_18
    add-long/2addr v3, v5

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    :goto_19
    invoke-virtual {p0, v3, v4}, Ljw;->pointToPosition(II)I

    move-result v3

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_1a
    move-object v11, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_1b
    move-object v9, v6

    nop

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

    :goto_1c
    iget-object v3, v1, Lfq;->a:Lfr;

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_1d
    add-int/lit8 v2, v2, 0x1

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v3, v3, Lfr;->b:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_1f
    float-to-int v3, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_20
    if-eq v0, v4, :cond_2

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_21
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v0, v0, Lfu;->a:Lfx;

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-gez v3, :cond_3

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_5e

    nop

    nop

    :goto_24
    if-ne v3, v4, :cond_4

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v4, v4, Lfr;->b:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-nez v1, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_73

    nop

    nop

    :goto_27
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    nop

    nop

    :goto_28
    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/16 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v4, v1, Lfq;->a:Lfr;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object v1, p0, Ljw;->e:Ljv;

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto/16 :goto_58

    nop

    :goto_2e
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    check-cast v4, Lqxk;

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_30
    move-object v10, v1

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_32
    check-cast v1, Ljx;

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_33
    move-object v8, v1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_34
    invoke-super {p0, p1}, Ljb;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_35
    iget-object v1, v1, Lfr;->a:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    :goto_36
    new-instance v2, Leqn;

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_37
    goto/16 :goto_f

    nop

    nop

    :goto_38
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_39
    if-ne v3, v5, :cond_6

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_3a
    iget-object v3, v1, Lfq;->a:Lfr;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_3d
    goto/16 :goto_28

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_e

    nop

    nop

    :goto_3f
    check-cast v0, Lfu;

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    check-cast v0, Lfu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_42
    if-lt v3, v1, :cond_7

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    :cond_7
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_43
    const-wide/16 v5, 0xc8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_44
    const/4 v6, 0x0

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

    nop

    nop

    :goto_45
    iget-object v3, v3, Lfr;->b:Ljava/util/List;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_46
    invoke-virtual {v0, v3}, Lfu;->a(I)Lfz;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_47
    const v1, 0x19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_48
    iget-object v1, v1, Ljx;->a:Ljv;

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_49
    instance-of v1, v0, Landroid/widget/HeaderViewListAdapter;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_4a
    iget-object v3, v1, Lfq;->a:Lfr;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_4b
    iget-object v0, p0, Ljw;->e:Ljv;

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    iget-object v1, p0, Ljw;->f:Landroid/view/MenuItem;

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    const/4 v12, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_4e
    if-nez v1, :cond_8

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_2c

    nop

    nop

    :goto_4f
    move-object v6, v2

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

    :goto_50
    iget-object v4, v4, Lqxk;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    if-nez v0, :cond_9

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :cond_9
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    iget-object v3, v3, Lfr;->b:Ljava/util/List;

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_53
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_54
    if-lt v2, v3, :cond_a

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_a
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_55
    iget-object v1, v1, Lfr;->a:Landroid/os/Handler;

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_56
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_57
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    :goto_58
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_59
    check-cast v1, Lfq;

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_5a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    nop

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

    :goto_5c
    goto/32 :goto_11

    nop

    :goto_5d
    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_5e
    invoke-virtual {v0}, Lfu;->getCount()I

    move-result v1

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_5f
    check-cast v1, Ljx;

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_60
    move-object v10, v6

    nop

    nop

    nop

    :goto_61
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    invoke-direct/range {v7 .. v12}, Leqn;-><init>(Lfq;Lqxk;Landroid/view/MenuItem;Lfx;I)V

    goto/32 :goto_31

    nop

    nop

    :goto_63
    const/16 v4, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_64
    goto/32 :goto_5d

    nop

    nop

    :goto_65
    if-nez v1, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_b
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_66
    if-ne v1, v10, :cond_c

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :cond_c
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_67
    if-lt v2, v3, :cond_d

    nop

    nop

    goto/32 :goto_3e

    nop

    :cond_d
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_68
    move v1, v2

    nop

    nop

    nop

    :goto_69
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    sub-int/2addr v3, v1

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    if-nez v1, :cond_e

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_6c
    if-nez v10, :cond_f

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_6e
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :goto_6f
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_70
    iget-object v1, v1, Lfq;->a:Lfr;

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_71
    float-to-int v4, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_72
    iget-object v1, v1, Lfq;->a:Lfr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_73
    check-cast v1, Lfq;

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_0
    check-cast p0, Lfu;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lfu;->a:Lfx;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-nez p1, :cond_0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_3
    if-nez v0, :cond_1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_4
    if-eq p1, v2, :cond_2

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x2

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_f

    nop

    :goto_7
    instance-of p1, p0, Landroid/widget/HeaderViewListAdapter;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_8
    if-eq p1, v0, :cond_3

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Ljw;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_b
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_d
    const/4 v1, 0x1

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

    :goto_e
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    return v1

    nop

    :goto_11
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0, v0, p1, v2, v3}, Ljw;->performItemClick(Landroid/view/View;IJ)Z

    :goto_13
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_14
    check-cast v0, Landroid/support/v7/view/menu/ListMenuItemView;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0, p1}, Ljw;->setSelection(I)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_16
    const v0, 0x18

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

    :goto_17
    invoke-virtual {p0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_e

    nop

    :goto_19
    iget-object p1, v0, Landroid/support/v7/view/menu/ListMenuItemView;->a:Lfz;

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

    :goto_1a
    if-nez p1, :cond_5

    nop

    goto/32 :goto_29

    nop

    nop

    :cond_5
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1b
    check-cast p0, Landroid/widget/HeaderViewListAdapter;

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

    nop

    :goto_1c
    if-nez v0, :cond_6

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_2c

    nop

    nop

    :goto_1d
    return v1

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_1c

    nop

    nop

    :goto_1f
    invoke-virtual {p0}, Ljw;->getSelectedItemId()J

    move-result-wide v2

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

    :goto_20
    const/4 p1, -0x1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v0}, Landroid/support/v7/view/menu/ListMenuItemView;->isEnabled()Z

    move-result p1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_22
    iget v2, p0, Ljw;->c:I

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p0}, Ljw;->getSelectedView()Landroid/view/View;

    move-result-object v0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_24
    check-cast p0, Lfu;

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    return p0

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto :goto_25

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p1}, Lfz;->hasSubMenu()Z

    move-result p1

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    if-nez p1, :cond_7

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

    :cond_7
    goto/32 :goto_2f

    nop

    nop

    :goto_2c
    iget v0, p0, Ljw;->d:I

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p0, p1}, Lfx;->i(Z)V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2e
    invoke-super {p0, p1, p2}, Ljb;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {p0}, Ljw;->getSelectedItemPosition()I

    move-result p1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop
.end method
