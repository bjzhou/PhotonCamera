.class public final synthetic Lkzk;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:Loyd;

.field public final synthetic b:Loyd;

.field public final synthetic c:Lgkg;

.field public final synthetic d:Lhut;


# direct methods
.method public synthetic constructor <init>(Loyd;Lhut;Loyd;Lgkg;)V
    .locals 0

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iput-object p2, p0, Lkzk;->d:Lhut;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    iput-object p4, p0, Lkzk;->c:Lgkg;

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
    iput-object p1, p0, Lkzk;->a:Loyd;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    iput-object p3, p0, Lkzk;->b:Loyd;

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

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop
.end method


# virtual methods
.method public final synthetic and(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    :goto_1
    invoke-static {p0, p1}, Lj$/util/function/Predicate$-CC;->$default$and(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final synthetic negate()Ljava/util/function/Predicate;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    :goto_1
    invoke-static {p0}, Lj$/util/function/Predicate$-CC;->$default$negate(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final synthetic or(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0, p1}, Lj$/util/function/Predicate$-CC;->$default$or(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final test(Ljava/lang/Object;)Z
    .locals 5

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v1}, Lj$/util/Optional;->isEmpty()Z

    move-result v1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1
    invoke-interface {v1}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_2
    move v1, v3

    nop

    nop

    :goto_3
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v1, :cond_0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

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

    :goto_6
    check-cast v1, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_7
    iget-object v1, p0, Lkzk;->d:Lhut;

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_8
    check-cast v1, Loxv;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_9
    iget-object v1, p0, Lkzk;->b:Loyd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    goto :goto_3

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_c
    move v1, v2

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

    nop

    :goto_d
    move v2, v3

    nop

    :goto_e
    goto/32 :goto_2f

    nop

    nop

    :goto_f
    if-lez v0, :cond_1

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1f

    nop

    :goto_10
    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_12
    const v0, 0xa

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_13
    check-cast v1, Ljrz;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-nez v1, :cond_3

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

    :cond_3
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object p0, p0, Lkzk;->c:Lgkg;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v1, v1, Loxv;->d:Ljava/lang/Object;

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

    :goto_18
    goto/16 :goto_e

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-interface {v1}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v1

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

    nop

    nop

    :goto_1b
    add-int v0, v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1c
    check-cast p1, Lkyf;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_1d
    if-nez v4, :cond_4

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_4
    goto/32 :goto_1a

    nop

    nop

    :goto_1e
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_1f
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p1}, Lkyf;->e()Lnne;

    move-result-object p1

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

    :goto_22
    iget-object v4, v4, Ljrz;->b:Lj$/util/Optional;

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_23
    check-cast v4, Ljrz;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v0, p0, Lkzk;->a:Loyd;

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p0, p1}, Lgkg;->a(Lnne;)Z

    move-result p0

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget-object v1, v1, Lhut;->d:Loyn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_27
    sget-object v0, Lkzu;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_28
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const v1, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object v1, v1, Ljrz;->c:Lj$/util/Optional;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2b
    if-eqz p0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_5
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_20

    nop

    nop

    :goto_2d
    invoke-interface {v0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_2e
    check-cast v0, Ljava/lang/Boolean;

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

    :goto_2f
    return v2

    nop

    nop

    :goto_30
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_31
    return v3

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    if-nez v1, :cond_6

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :cond_6
    goto/32 :goto_10

    nop

    nop

    :goto_34
    invoke-virtual {v4}, Lj$/util/Optional;->isEmpty()Z

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop
.end method
