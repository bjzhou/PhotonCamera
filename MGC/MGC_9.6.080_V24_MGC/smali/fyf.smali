.class final Lfyf;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lksk;


# instance fields
.field private final a:Lfxj;

.field private final b:Lsui;

.field private final c:Lksk;

.field private d:Lkqf;


# direct methods
.method public constructor <init>(Lfxj;Lsui;Lksk;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    :goto_0
    iput-object p1, p0, Lfyf;->a:Lfxj;

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
    iput-object p3, p0, Lfyf;->c:Lksk;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Lfyf;->b:Lsui;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

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
.end method


# virtual methods
.method public final a(Lprw;Lsui;)V
    .locals 4

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p1}, Lprw;->d()J

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_1d

    nop

    nop

    :goto_2
    if-eq v0, v1, :cond_0

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

    :cond_0
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p1, p0, Lfyf;->d:Lkqf;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

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
    if-nez v0, :cond_1

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

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    if-gtz v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_2
    :goto_7
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

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

    :goto_9
    new-instance v0, Lpol;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {v0, p1, v1}, Lpol;-><init>(Lprw;I)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v2}, Lprt;->d()J

    move-result-wide v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x15

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_d
    const/16 v1, 0x23

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_e
    new-instance v1, Lpom;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    new-instance v0, Lpom;

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_10
    invoke-direct {v1, v0}, Lpom;-><init>(Lprw;)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_12
    invoke-virtual {p1}, Lprt;->close()V

    :goto_13
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    :cond_3
    goto/32 :goto_1c

    nop

    :goto_15
    iput-object p1, p0, Lfyf;->d:Lkqf;

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

    :goto_16
    invoke-interface {p0, v0, p2}, Lksk;->a(Lprw;Lsui;)V

    goto/32 :goto_20

    nop

    nop

    :goto_17
    invoke-direct {p1, v1, p2}, Lkqf;-><init>(Lprw;Lsui;)V

    goto/32 :goto_15

    nop

    nop

    :goto_18
    move-object p1, v0

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_22

    nop

    nop

    :goto_1a
    iget-object v0, p0, Lfyf;->d:Lkqf;

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

    :goto_1b
    iget-object v2, p0, Lfyf;->d:Lkqf;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_21

    nop

    nop

    :goto_1d
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_1e
    const v1, 0x20

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    new-instance p1, Lkqf;

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

    nop

    :goto_20
    return-void

    nop

    :goto_21
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_22
    iget-object p0, p0, Lfyf;->c:Lksk;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_23
    invoke-interface {p1}, Lprw;->a()I

    move-result v0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_24
    if-nez p1, :cond_4

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

    :cond_4
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_25
    cmp-long v0, v0, v2

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-direct {v0, p1}, Lpom;-><init>(Lprw;)V

    goto/32 :goto_16

    nop

    nop

    nop
.end method

.method public final close()V
    .locals 3

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lfyf;->b:Lsui;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1
    iput-object v1, v2, Llqv;->c:Lpcg;

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

    :goto_2
    invoke-virtual {v2}, Llqv;->a()Llqw;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_3
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :cond_0
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0}, Lprt;->close()V

    :goto_7
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v0}, Lolx;->bl(Lsui;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {v1}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v1}, Lfxj;->a()Loyd;

    move-result-object v1

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

    :goto_c
    return-void

    nop

    nop

    :goto_d
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-interface {p0}, Lksk;->close()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_10
    iget-object v2, p0, Lfyf;->d:Lkqf;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_12
    iget-object v0, p0, Lfyf;->d:Lkqf;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {v2}, Llqw;->a(Lkqf;)Llqv;

    move-result-object v2

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_14
    check-cast v0, Lfxp;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_15
    invoke-static {v1}, Lpcg;->b(I)Lpcg;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_2
    goto/32 :goto_19

    nop

    :goto_17
    add-int v0, v0, v1

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

    nop

    :goto_18
    iget-object v0, p0, Lfyf;->d:Lkqf;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_d

    nop

    nop

    :goto_1a
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1b
    check-cast v1, Ljava/lang/Integer;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1c
    iget-object p0, p0, Lfyf;->c:Lksk;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1d
    const v1, 0x13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-interface {v0, v1}, Lfxp;->f(Llqw;)V

    :goto_1f
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v1, p0, Lfyf;->a:Lfxj;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop
.end method
