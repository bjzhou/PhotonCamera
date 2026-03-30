.class public final Ltuu;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ltun;


# static fields
.field public static final a:Ltun;


# instance fields
.field private final b:Ljava/util/List;

.field private final c:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sput-object v0, Ltuu;->a:Ltun;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    invoke-static {v0}, Ltuo;->b(Ljava/lang/Object;)Ltun;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    goto/32 :goto_2

    nop

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
    iput-object p1, p0, Ltuu;->b:Ljava/util/List;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Ltuu;->c:Ljava/util/List;

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Ltuu;->b()Ljava/util/Set;

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

    nop
.end method

.method public final b()Ljava/util/Set;
    .locals 7

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_32

    nop

    :goto_2
    check-cast v5, Ltur;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_3
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v6

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

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

    :goto_7
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    goto/16 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_27

    nop

    nop

    :goto_a
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_b
    add-int/2addr v1, v6

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_d
    goto/16 :goto_25

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v0, p0, Ltuu;->c:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_10
    iget-object v5, p0, Ltuu;->c:Ljava/util/List;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_11
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    goto/32 :goto_34

    nop

    nop

    :goto_13
    invoke-interface {v5}, Ltur;->a()Ljava/lang/Object;

    move-result-object v5

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_15
    check-cast v5, Ltur;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_18
    invoke-interface {v5}, Ltur;->a()Ljava/lang/Object;

    move-result-object v5

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v0, p0, Ltuu;->c:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-lt v4, v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    nop

    :goto_1d
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/16 :goto_3b

    nop

    nop

    :goto_20
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_21
    return-object p0

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_23
    iget-object v5, p0, Ltuu;->b:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_24
    move v4, v3

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const v1, 0x16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_27
    invoke-static {v1}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

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

    :goto_28
    move v4, v3

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_1c

    nop

    nop

    :goto_2a
    if-lt v4, v0, :cond_2

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

    :cond_2
    goto/32 :goto_23

    nop

    nop

    :goto_2b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_2c
    invoke-static {v1}, Lrgw;->as(I)I

    move-result v0

    nop

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

    nop

    :goto_2d
    iget-object v1, p0, Ltuu;->b:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_2e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_2f
    const v0, 0x12

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_30
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_31
    check-cast v5, Ljava/util/Collection;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget-object v0, p0, Ltuu;->b:Ljava/util/List;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_35
    goto/16 :goto_29

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_2c

    nop

    nop

    :goto_37
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_38
    add-int/lit8 v3, v3, 0x1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_39
    if-nez v4, :cond_3

    nop

    goto/32 :goto_20

    nop

    nop

    :cond_3
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_14

    nop

    nop

    :goto_3c
    check-cast v0, Ljava/util/Collection;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_3d
    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/32 :goto_1e

    nop

    nop

    :goto_3e
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_3f
    if-lt v3, p0, :cond_4

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_a

    nop

    nop

    :goto_40
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    goto/32 :goto_f

    nop

    nop

    :goto_41
    new-instance v1, Ljava/util/HashSet;

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

    :goto_42
    new-instance v2, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_43
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop
.end method
