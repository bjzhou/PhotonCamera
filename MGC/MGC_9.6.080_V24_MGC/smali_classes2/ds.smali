.class public final Lds;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lnk;


# instance fields
.field final synthetic a:Lmy;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Ldt;I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    iput p2, p0, Lds;->b:I

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lds;->a:Lmy;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public synthetic constructor <init>(Lmy;I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iput p2, p0, Lds;->b:I

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lds;->a:Lmy;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    return-void

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 7

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v5, p0, Lnr;->b:Ljava/util/Map;

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

    :goto_1
    invoke-virtual {v0, v1}, Lehs;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

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

    :goto_2
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_3
    check-cast v0, Ldt;

    nop

    goto/32 :goto_1a

    nop

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

    :goto_5
    goto/32 :goto_10

    nop

    nop

    :goto_6
    iget-object v4, p0, Lnr;->d:Ljava/util/List;

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_7
    check-cast v0, Lbw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_8
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_9
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_a
    const v1, 0x5

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_b
    check-cast p0, Lbt;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x1b

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

    :goto_d
    iget-object v3, p0, Lnr;->g:Landroid/os/Bundle;

    nop

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

    :goto_e
    invoke-static {v4}, Lucu;->h(Ljava/lang/Object;)V

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_f
    iget-object p0, p0, Lmy;->h:Lnr;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object p0, p0, Lds;->a:Lmy;

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v5, p0, Lnr;->b:Ljava/util/Map;

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0}, Lmy;->getSavedStateRegistry()Lehs;

    move-result-object v0

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_14
    iget-object p0, p0, Lds;->a:Lmy;

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_15
    return-void

    nop

    nop

    :goto_16
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

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

    nop

    :goto_18
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v0

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-nez v2, :cond_0

    nop

    goto/32 :goto_4d

    nop

    nop

    :cond_0
    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v0}, Ldt;->i()Ldv;

    move-result-object v0

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    move-object v0, p0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    check-cast v4, Ljava/lang/String;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1e
    iget-object p0, p0, Lds;->a:Lmy;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1f
    const-string v1, "KEY_COMPONENT_ACTIVITY_REGISTERED_RCS"

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_20
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const-string v3, "KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS"

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_22
    sget-object v1, Lcom/integrity/annotations/Obhj/bbLWXEJrNl;->ZWwQBQtymCnIXp:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p0, v4, v5}, Lnr;->b(ILjava/lang/String;)V

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_24
    if-nez v0, :cond_1

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    check-cast v5, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

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

    :goto_27
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_3f

    nop

    :cond_2
    goto/32 :goto_3e

    nop

    :goto_28
    if-nez v3, :cond_3

    nop

    goto/32 :goto_35

    nop

    :cond_3
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_29
    iget-object v6, p0, Lnr;->g:Landroid/os/Bundle;

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_2a
    goto/16 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p0}, Lmy;->getSavedStateRegistry()Lehs;

    move-result-object p0

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

    :goto_2d
    iget-object v1, v0, Lbw;->e:Lcj;

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

    :goto_2e
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_2f
    check-cast v5, Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v6, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_31
    check-cast v4, Ljava/lang/Number;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_32
    if-nez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :cond_4
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_33
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-interface {v4, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_35
    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_36
    if-eqz v4, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iget v0, p0, Lds;->b:I

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_38
    iget-object v0, p0, Lds;->a:Lmy;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_39
    invoke-virtual {v1, v0, p0, v2}, Lcj;->j(Lbw;Lbt;Lbo;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    const-string v3, "KEY_COMPONENT_ACTIVITY_PENDING_RESULT"

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_3b
    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_3c
    if-ne v0, v1, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_6
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_3d
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_3e
    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual {v0}, Ldv;->e()V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {v0}, Ldv;->o()V

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_42
    iget-object v4, p0, Lnr;->a:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_43
    if-nez v0, :cond_7

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_44
    const-string v1, "android:support:activity-result"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_45
    if-lt v3, v0, :cond_8

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_46
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_48
    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_49
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_4b
    if-eqz v1, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :cond_9
    goto/32 :goto_2a

    nop

    nop

    :goto_4c
    goto :goto_56

    nop

    nop

    nop

    nop

    :goto_4d
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-interface {v5, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_4f
    if-nez v5, :cond_a

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_11

    nop

    nop

    :goto_50
    const-string v2, "KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_51
    iget-object p0, p0, Lbr;->e:Lfdn;

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_52
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :goto_53
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_54
    check-cast p0, Lbr;

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_55
    const/4 v3, 0x0

    nop

    :goto_56
    goto/32 :goto_45

    nop

    nop

    :goto_57
    invoke-virtual {p0, v1}, Lehs;->a(Ljava/lang/String;)Landroid/os/Bundle;

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_58
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_59
    const/4 v2, 0x0

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    const/4 v1, 0x1

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_5b
    iget-object p0, p0, Lfdn;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_5c
    return-void

    nop

    nop

    nop

    :goto_5d
    goto/32 :goto_47

    nop

    nop
.end method
