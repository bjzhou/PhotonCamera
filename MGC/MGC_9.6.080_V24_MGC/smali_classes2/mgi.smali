.class public final synthetic Lmgi;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# instance fields
.field public final synthetic a:Lmgj;


# direct methods
.method public synthetic constructor <init>(Lmgj;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lmgi;->a:Lmgj;

    nop

    nop

    goto/32 :goto_2

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
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 5

    goto/32 :goto_1a

    nop

    nop

    :goto_0
    sget-object v1, Ltvg;->a:Ltvg;

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, v1, v2}, Lryd;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/16 :goto_16

    nop

    :goto_7
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_8
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

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
    check-cast p1, Landroid/content/pm/ResolveInfo;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

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

    nop

    :goto_c
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_e
    sget-object v2, Ltvg;->a:Ltvg;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_f
    sget-object v2, Lmge;->f:Lryy;

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

    :goto_10
    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_5

    nop

    :goto_12
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_13
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_14
    invoke-direct {v0}, Lryd;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v1}, Lryy;->em()Lscp;

    move-result-object p0

    nop

    nop

    :goto_16
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v0}, Lryd;->b()Lryh;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const p0, 0x7fffffff

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1a
    const v0, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-eqz p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    new-instance p0, Ljava/util/ArrayList;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const v1, 0x1d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v2}, Ltvg;->b()Ltvh;

    move-result-object v2

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_20
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    :goto_21
    new-instance v0, Lryd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_22
    invoke-virtual {v2}, Lryy;->isEmpty()Z

    move-result v3

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    goto/32 :goto_2f

    nop

    nop

    :goto_24
    check-cast p0, Ljava/lang/Integer;

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_25
    check-cast v1, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_26
    invoke-static {v2, v3}, Lmgj;->k(Ljava/lang/String;Lryy;)Lryy;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_27
    iget-object p0, p0, Lmgi;->a:Lmgj;

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_28
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_2a
    if-eqz v3, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    nop

    nop

    :goto_2c
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-interface {v2}, Ltvh;->a()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_2e
    invoke-static {v1, v2}, Lmgj;->k(Ljava/lang/String;Lryy;)Lryy;

    move-result-object v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {p0, v4, v2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    goto/32 :goto_33

    nop

    nop

    :goto_30
    invoke-virtual {p0, p1}, Lryh;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_31
    invoke-interface {v1}, Ltvh;->c()Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v1}, Ltvg;->b()Ltvh;

    move-result-object v1

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_33
    invoke-static {p0}, Lryy;->E(Ljava/util/Collection;)Lryy;

    move-result-object v1

    nop

    nop

    :goto_34
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_35
    if-nez v1, :cond_3

    nop

    goto/32 :goto_7

    nop

    :cond_3
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_36
    if-eqz p0, :cond_4

    nop

    goto/32 :goto_2c

    nop

    nop

    :cond_4
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_37
    sget-object v3, Lsbn;->a:Lsbn;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_39
    if-nez v2, :cond_5

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_5
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {p0}, Lmgj;->l()Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_3b
    sget-object v2, Lmgj;->b:Ljava/util/regex/Pattern;

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

    nop
.end method
