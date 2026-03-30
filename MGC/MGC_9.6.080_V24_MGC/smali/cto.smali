.class final Lcto;
.super Luci;
.source "PG"

# interfaces
.implements Luaz;


# instance fields
.field final synthetic a:Lctz;

.field final synthetic b:Lcvm;

.field final synthetic c:J


# direct methods
.method public constructor <init>(Lctz;Lcvm;J)V
    .locals 0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-wide p3, p0, Lcto;->c:J

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

    :goto_1
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Lcto;->b:Lcvm;

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

    :goto_3
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_4

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
    iput-object p1, p0, Lcto;->a:Lctz;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 4

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0}, Lcua;->a(Lcth;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    iget-object v0, v0, Lctz;->a:Lcth;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    :goto_5
    iget-object v1, v0, Lcue;->l:Lcpo;

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_14

    nop

    :goto_8
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0}, Lctz;->a()Lcva;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_a
    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1f

    nop

    nop

    :goto_b
    invoke-virtual {v0}, Lcva;->z()Lcuf;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_c
    if-eqz v1, :cond_3

    nop

    goto/32 :goto_21

    nop

    :cond_3
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_d
    const v0, 0xa

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

    :goto_e
    goto :goto_6

    nop

    :goto_f
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Lcto;->a:Lctz;

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_11
    iget-object v0, v0, Lcva;->u:Lcva;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_13
    return-object p0

    nop

    nop

    :goto_14
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_25

    nop

    nop

    :goto_16
    invoke-virtual {v0}, Lctz;->a()Lcva;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_17
    invoke-virtual {p0}, Lcva;->z()Lcuf;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v0, p0, Lcto;->b:Lcvm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-nez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_b

    nop

    nop

    :goto_1b
    iget-object v0, v0, Lcva;->u:Lcva;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1c
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_1d
    iget-object v0, p0, Lcto;->a:Lctz;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v0, p0, Lcto;->a:Lctz;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1f
    iget-object v0, p0, Lcto;->a:Lctz;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_20
    invoke-direct {v1, v0}, Lcpi;-><init>(Lcvm;)V

    :goto_21
    goto/32 :goto_10

    nop

    nop

    :goto_22
    new-instance v1, Lcpi;

    nop

    nop

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

    :goto_23
    invoke-virtual {v0}, Lctz;->a()Lcva;

    move-result-object v0

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

    :goto_24
    const v1, 0x1d

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

    :goto_25
    invoke-virtual {v1, p0, v2, v3}, Lcpo;->e(Lcpp;J)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v1, v0, Lcue;->l:Lcpo;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_28
    if-nez v0, :cond_5

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_5
    goto/32 :goto_5

    nop

    nop

    :goto_29
    iget-wide v2, p0, Lcto;->c:J

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop
.end method
