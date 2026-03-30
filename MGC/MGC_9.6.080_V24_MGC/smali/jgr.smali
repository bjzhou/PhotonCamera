.class public final Ljgr;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljgu;


# instance fields
.field private final a:Z

.field private final b:Lkvt;

.field private final c:Lpnu;

.field private final d:Lnne;

.field private final e:Ljava/lang/Float;


# direct methods
.method public constructor <init>(Lhoh;Lpnu;Lkvt;Lnne;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    sget-object p2, Lhls;->c:Lhmn;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p4, p0, Ljgr;->d:Lnne;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    invoke-virtual {p1, v0}, Lhoh;->p(Lhmn;)Z

    move-result v0

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

    :goto_4
    iput-object p1, p0, Ljgr;->e:Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_5
    check-cast p1, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_6
    iput-object p3, p0, Ljgr;->b:Lkvt;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    :goto_8
    iput-boolean v0, p0, Ljgr;->a:Z

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

    :goto_9
    iput-object p2, p0, Ljgr;->c:Lpnu;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_a
    invoke-virtual {p1, p2}, Lhoh;->d(Lhmn;)Lj$/util/Optional;

    move-result-object p1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_c
    sget-object v0, Lhls;->b:Lhmn;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()F
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Ljgr;->e:Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop
.end method

.method public final b()Z
    .locals 2

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Loyu;->cM()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Ljgr;->c:Lpnu;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Ljgr;->d:Lnne;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_13

    nop

    :goto_4
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_6
    sget-object v1, Lpog;->b:Lpog;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {v0}, Lpnu;->l()Lpog;

    move-result-object v0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_8
    if-nez p0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    :cond_1
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0, v1}, Lnne;->equals(Ljava/lang/Object;)Z

    move-result v0

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

    :goto_a
    sget-object v1, Lnne;->b:Lnne;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_b
    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_c
    sget-object v0, Lkvu;->c:Lkvu;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x15

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

    nop

    :goto_e
    invoke-virtual {p0, v0}, Lkvu;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_10
    iget-boolean v0, p0, Ljgr;->a:Z

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return p0

    nop

    nop

    :goto_13
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-nez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_4
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_15
    return p0

    nop

    nop

    :goto_16
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    check-cast p0, Lkvu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v0, v1}, Lpog;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1a
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1b
    const/4 p0, 0x0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object p0, p0, Ljgr;->b:Lkvt;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1e
    rem-int v0, v0, v1

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
.end method

.method public final c()Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    :goto_1
    iget-boolean p0, p0, Ljgr;->a:Z

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop
.end method
