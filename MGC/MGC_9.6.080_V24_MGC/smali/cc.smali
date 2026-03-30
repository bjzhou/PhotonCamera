.class final Lcc;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lnm;


# instance fields
.field final synthetic a:Lcj;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Lcj;I)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    :goto_2
    iput-object p1, p0, Lcc;->a:Lcj;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput p2, p0, Lcc;->b:I

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
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 6

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_35

    nop

    :goto_1
    goto/32 :goto_34

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    goto/32 :goto_64

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const-string p1, "Intent Sender result delivered for unknown Fragment "

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollLast()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_9
    const-string v1, "FragmentManager"

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_c
    check-cast p1, Lnl;

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

    :goto_d
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    :goto_e
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0, v0, v1, p1}, Lbo;->onActivityResult(IILandroid/content/Intent;)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_12
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_2

    nop

    goto/32 :goto_b

    nop

    :cond_2
    goto/32 :goto_a

    nop

    :goto_15
    aput v5, p1, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_16
    return-void

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const-string p1, "No permissions were requested for "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    add-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    check-cast v0, [Ljava/lang/String;

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_1c
    move v4, v3

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-interface {v0, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_21
    iget-object p0, p0, Lcj;->y:Lfbt;

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_22
    check-cast p1, Lce;

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_24
    iget v0, p0, Lcc;->b:I

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

    :goto_25
    return-void

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-object p1, p1, Lce;->a:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_28
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    if-eqz p0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p0, v0, v1, p1}, Lbo;->onActivityResult(IILandroid/content/Intent;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_2c
    iget-object p0, p0, Lcc;->a:Lcj;

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object p1, p1, Lnl;->b:Landroid/content/Intent;

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    new-array v4, v3, [Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_2f
    iget-object v0, p0, Lcc;->a:Lcj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iget-object p1, p1, Lcj;->s:Ljava/util/ArrayDeque;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iget v1, p1, Lnl;->a:I

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_32
    const-string p1, "No IntentSenders were started for "

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_34
    move v5, v3

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_36
    iget v0, v0, Lce;->b:I

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_37
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_38
    if-eqz p1, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_39
    new-array p1, p1, [I

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    return-void

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    const-string p1, "Permission request result delivered for unknown Fragment "

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    iget-object p0, p0, Lcc;->a:Lcj;

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_3e
    iget-object p1, p1, Lnl;->b:Landroid/content/Intent;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_3f
    if-lt v4, v5, :cond_5

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    :goto_42
    const v0, 0x13

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_43
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_45
    iget-object p0, p0, Lcj;->y:Lfbt;

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    iget-object p0, p0, Lcj;->y:Lfbt;

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    iget-object v0, v0, Lcj;->s:Ljava/util/ArrayDeque;

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

    :goto_48
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    iget-object v2, v0, Lce;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {p0, p1}, Lfbt;->c(Ljava/lang/String;)Lbo;

    move-result-object p0

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_4b
    check-cast v5, Ljava/lang/Boolean;

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    const v1, 0x7

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    return-void

    nop

    nop

    nop

    :goto_4e
    goto/32 :goto_36

    nop

    nop

    :goto_4f
    return-void

    nop

    nop

    nop

    nop

    :goto_50
    goto/32 :goto_74

    nop

    nop

    :goto_51
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    iget-object v0, v0, Lcj;->s:Ljava/util/ArrayDeque;

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_53
    invoke-virtual {p0, v2}, Lfbt;->c(Ljava/lang/String;)Lbo;

    move-result-object p0

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    if-eqz p0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_55
    const-string p1, "Activity result delivered for unknown Fragment "

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_56
    check-cast p1, Ljava/util/Map;

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_57
    iget-object p1, p0, Lcc;->a:Lcj;

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_58
    const-string p1, "No Activities were started for result for "

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

    :goto_59
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    goto/32 :goto_7

    nop

    nop

    :goto_5a
    if-eqz p0, :cond_7

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_44

    nop

    nop

    nop

    :goto_5b
    if-ne v0, v2, :cond_8

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_5c
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    iget v0, v0, Lce;->b:I

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

    :goto_5e
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_5f
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_60
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_61
    iget v1, p1, Lnl;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_62
    invoke-virtual {p0, v2}, Lfbt;->c(Ljava/lang/String;)Lbo;

    move-result-object p0

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_64
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_65
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_71

    nop

    nop

    :goto_66
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_67
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_68
    goto/32 :goto_4f

    nop

    nop

    :goto_69
    check-cast v0, Lce;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_6a
    iget-object p0, p0, Lcc;->a:Lcj;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_6b
    if-ne v2, v5, :cond_9

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_78

    nop

    nop

    nop

    :goto_6c
    check-cast v0, Lce;

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    :goto_6d
    goto/16 :goto_1d

    nop

    nop

    nop

    nop

    :goto_6e
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    if-eqz v0, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    :cond_a
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_71
    return-void

    nop

    nop

    nop

    nop

    :goto_72
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_73
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    goto/32 :goto_1f

    nop

    nop

    :goto_74
    iget-object v0, p0, Lcc;->a:Lcj;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_75
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_76
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_77
    iget-object v2, v0, Lce;->a:Ljava/lang/String;

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_78
    const/4 v5, -0x1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_79
    return-void

    nop

    :goto_7a
    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_7b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_7c
    check-cast p1, Lnl;

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop
.end method
