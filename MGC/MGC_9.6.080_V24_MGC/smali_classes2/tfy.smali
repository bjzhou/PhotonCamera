.class public final Ltfy;
.super Ltfx;
.source "PG"


# instance fields
.field final a:Ltdj;

.field private final b:Ltdm;

.field private final c:Lthm;

.field private final d:Ltdy;

.field private final e:Z

.field private volatile f:Ltdx;


# direct methods
.method public constructor <init>(Ltdm;Ltdj;Lthm;Ltdy;Z)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ltfx;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Ltfy;->a:Ltdj;

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

    :goto_2
    iput-object p4, p0, Ltfy;->d:Ltdy;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :goto_4
    iput-boolean p5, p0, Ltfy;->e:Z

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

    :goto_5
    iput-object p1, p0, Ltfy;->b:Ltdm;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p3, p0, Ltfy;->c:Lthm;

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

    nop
.end method


# virtual methods
.method public final a(Lthn;)Ljava/lang/Object;
    .locals 3

    goto/32 :goto_17

    nop

    nop

    :goto_0
    const v1, 0xc

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1
    invoke-virtual {v0, p1}, Ltdx;->a(Lthn;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-nez v0, :cond_0

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_0
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_4
    iget-object v2, p0, Ltfy;->c:Lthm;

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

    nop

    :goto_5
    iget-object v0, p0, Ltfy;->b:Ltdm;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_7
    return-object p0

    nop

    nop

    :goto_8
    goto/32 :goto_15

    nop

    nop

    :goto_9
    invoke-virtual {v0, v1, v2}, Ltdj;->c(Ltdy;Lthm;)Ltdx;

    move-result-object v0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_a
    goto :goto_d

    nop

    nop

    :goto_b
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_c
    iput-object v0, p0, Ltfy;->f:Ltdx;

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_e
    if-nez p1, :cond_1

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

    :cond_1
    goto/32 :goto_2

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_2

    nop

    goto/32 :goto_1d

    nop

    :cond_2
    goto/32 :goto_1c

    nop

    :goto_11
    return-object p0

    nop

    :goto_12
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    return-object p0

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {p1}, Lshf;->o(Lthn;)Ltdn;

    move-result-object p1

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

    nop

    :goto_16
    iget-object v1, p0, Ltfy;->d:Ltdy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const v0, 0xe

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

    :goto_18
    iget-boolean v0, p0, Ltfy;->e:Z

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

    :goto_19
    iget-object v0, p0, Ltfy;->a:Ltdj;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-eqz v0, :cond_3

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v0, p0, Ltfy;->f:Ltdx;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_14

    nop

    :goto_1d
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-nez v0, :cond_4

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

    :cond_4
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object p0, p0, Ltfy;->b:Ltdm;

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

    :goto_20
    goto/32 :goto_1d

    nop

    :goto_21
    invoke-interface {p0}, Ltdm;->a()Ljava/lang/Object;

    move-result-object p0

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

    :goto_22
    instance-of p1, p1, Ltdp;

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

    nop
.end method
