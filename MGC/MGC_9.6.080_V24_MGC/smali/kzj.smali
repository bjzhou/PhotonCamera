.class public final synthetic Lkzj;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:Loyd;

.field public final synthetic b:Z

.field public final synthetic c:Z

.field public final synthetic d:Lgkg;


# direct methods
.method public synthetic constructor <init>(Loyd;ZZLgkg;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-boolean p3, p0, Lkzj;->c:Z

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

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p4, p0, Lkzj;->d:Lgkg;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lkzj;->a:Loyd;

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

    :goto_4
    return-void

    nop

    nop

    nop

    :goto_5
    iput-boolean p2, p0, Lkzj;->b:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

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

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0, p1}, Lj$/util/function/Predicate$-CC;->$default$and(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final synthetic negate()Ljava/util/function/Predicate;
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

    nop
.end method

.method public final synthetic or(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0, p1}, Lj$/util/function/Predicate$-CC;->$default$or(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final test(Ljava/lang/Object;)Z
    .locals 4

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Lkyf;->A()Z

    move-result p0

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

    :goto_1
    check-cast p1, Lkyf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, v1}, Lnne;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/16 :goto_23

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_5
    sget-object v1, Lnne;->b:Lnne;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0xc

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_21

    nop

    :goto_8
    sget-object v0, Lkzu;->a:Lsdb;

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0, v1}, Lgkg;->a(Lnne;)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_a
    return v3

    nop

    nop

    :goto_b
    goto/32 :goto_5

    nop

    nop

    :goto_c
    sget-object p0, Lnne;->h:Lnne;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_d
    const v0, 0x14

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

    :goto_e
    if-eqz v1, :cond_0

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {v1}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-boolean v1, p0, Lkzj;->c:Z

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_12
    sget-object v1, Lnne;->h:Lnne;

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0, p0}, Lnne;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_14
    goto/16 :goto_4

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0, v1}, Lnne;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_17
    iget-boolean v1, p0, Lkzj;->b:Z

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-eqz v1, :cond_1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-nez v0, :cond_2

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-nez v1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_3
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_1b
    if-nez p0, :cond_4

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :cond_4
    :goto_1c
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1d
    if-nez p0, :cond_5

    nop

    goto/32 :goto_2e

    nop

    :cond_5
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-boolean p0, p1, Lkyf;->f:Z

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

    :goto_1f
    rem-int v0, v0, v1

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

    :goto_20
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    move v0, v3

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_10

    nop

    nop

    :goto_24
    move v0, v2

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_25
    if-nez v0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    :cond_6
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_26
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_28
    if-eqz p0, :cond_7

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

    :cond_7
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget-object p0, p0, Lkzj;->d:Lgkg;

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

    nop

    :goto_2a
    invoke-virtual {p1}, Lkyf;->e()Lnne;

    move-result-object v0

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v1, p0, Lkzj;->a:Loyd;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_2c
    check-cast v1, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_2d
    return v3

    nop

    nop

    :goto_2e
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_2f
    add-int v0, v0, v1

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {p1}, Lkyf;->e()Lnne;

    move-result-object v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    if-nez p0, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :cond_8
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_33
    sget-object v1, Lnne;->g:Lnne;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    if-nez v1, :cond_9

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_35
    iget-boolean p0, p1, Lkyf;->f:Z

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

    :goto_36
    invoke-virtual {v0, v1}, Lnne;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_37
    if-eqz p0, :cond_a

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_a
    :goto_38
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    if-eqz v1, :cond_b

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_b
    :goto_3a
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    if-lez v0, :cond_c

    nop

    nop

    goto/32 :goto_21

    nop

    :cond_c
    goto/32 :goto_20

    nop

    :goto_3c
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop
.end method
