.class public final Llha;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Lpnx;

.field public b:Lpou;

.field public c:I

.field public d:Z

.field public e:Z

.field public f:Ljava/lang/Long;

.field public g:Z

.field public h:Z

.field public i:J

.field public final j:Lrxw;

.field private final k:Lj$/util/Optional;


# direct methods
.method public constructor <init>()V
    .locals 2

    goto/32 :goto_12

    nop

    nop

    :goto_0
    const/4 v0, -0x1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    goto/32 :goto_14

    nop

    nop

    :goto_4
    new-instance v0, Lrxw;

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

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    goto/32 :goto_18

    nop

    :cond_0
    goto/32 :goto_17

    nop

    :goto_7
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0xf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9
    iput-boolean v0, p0, Llha;->e:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_a
    iput v0, p0, Llha;->c:I

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const-wide/16 v0, -0x1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_c
    iput-boolean v0, p0, Llha;->d:Z

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_d
    iput-boolean v1, p0, Llha;->g:Z

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput-object v0, p0, Llha;->k:Lj$/util/Optional;

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

    :goto_f
    invoke-direct {v0}, Lrxw;-><init>()V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput-object v0, p0, Llha;->j:Lrxw;

    nop

    nop

    goto/32 :goto_2

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

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_12
    const v0, 0x19

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iput-wide v0, p0, Llha;->i:J

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    :goto_17
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iput-boolean v0, p0, Llha;->h:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Lphj;
    .locals 5

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v2, v0}, Lphi;->c(I)V

    goto/32 :goto_1f

    nop

    nop

    :goto_2
    iget-object v0, p0, Llha;->j:Lrxw;

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v1, 0x0

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

    :goto_6
    const-string v3, "format"

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

    :goto_7
    invoke-virtual {v2}, Lphi;->a()Lphj;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v2, v0}, Lphi;->i(I)V

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_9
    const v1, 0xa

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

    :goto_a
    iget-object v1, v0, Lpou;->b:Lpck;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p0, p0, Llha;->k:Lj$/util/Optional;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v2, v0}, Lphi;->h(Z)V

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_d
    const/16 v1, 0x12

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

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {v0, v3, v2}, Lqrg;->F(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_10
    move-wide v0, v3

    nop

    nop

    :goto_11
    goto/32 :goto_2a

    nop

    nop

    :goto_12
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v2, v0}, Lphi;->o(Lphm;)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_14
    new-instance v0, Lknr;

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

    :goto_15
    iget-boolean v0, p0, Llha;->h:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_16
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v2, v0}, Lphi;->f(Z)V

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v3, p0, Llha;->a:Lpnx;

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_19
    invoke-virtual {v2, v0, v1}, Lphi;->p(J)V

    :goto_1a
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_1b
    iget v0, p0, Llha;->c:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v2, v0}, Lphi;->k(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1d
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_1e
    iget-object v0, p0, Llha;->f:Ljava/lang/Long;

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_1f
    sget-object v0, Lphm;->a:Lphm;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_4

    nop

    nop

    :goto_21
    goto/32 :goto_39

    nop

    nop

    nop

    :goto_22
    const-wide/16 v3, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_23
    iget-boolean v0, p0, Llha;->e:Z

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v2, v0}, Lphi;->m(Ljava/util/List;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_25
    if-lez v0, :cond_1

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_20

    nop

    :goto_26
    invoke-static {v3, v4, v1}, Lqrg;->F(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p0, v0}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v2, v3}, Lphi;->b(Lpnx;)V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_29
    new-array v2, v1, [Ljava/lang/Object;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2a
    cmp-long v3, v0, v3

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v2, v0, v1}, Lphi;->q(J)V

    :goto_2c
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget v0, v0, Lpou;->a:I

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_2e
    iget-boolean v0, p0, Llha;->d:Z

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-static {}, Lphj;->a()Lphi;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v2, v0}, Lphi;->g(Z)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_31
    new-array v1, v1, [Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_32
    iget-wide v0, p0, Llha;->i:J

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_33
    if-nez v3, :cond_2

    nop

    goto/32 :goto_2c

    nop

    :cond_2
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_34
    goto/16 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_36
    invoke-direct {v0, v2, v1}, Lknr;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_27

    nop

    nop

    :goto_37
    if-nez v3, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_19

    nop

    nop

    :goto_38
    const-wide/16 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_39
    iget-object v0, p0, Llha;->b:Lpou;

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

    nop

    nop

    :goto_3a
    const-string v4, "cameraId"

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_3b
    const v0, 0x1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {v2, v1}, Lphi;->l(Lpck;)V

    goto/32 :goto_2d

    nop

    nop

    :goto_3d
    cmp-long v3, v0, v3

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_3e
    iget-boolean v0, p0, Llha;->g:Z

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {v0}, Lrxw;->g()Lryb;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop
.end method
