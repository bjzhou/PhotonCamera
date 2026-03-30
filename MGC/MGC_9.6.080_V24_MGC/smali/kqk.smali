.class final Lkqk;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lksk;


# instance fields
.field private final a:Lpnu;

.field private final b:Lfxj;

.field private final c:Lksk;

.field private final d:Litg;

.field private final e:Lnpr;


# direct methods
.method public constructor <init>(Lpnu;Lfxj;Lksk;Lnpr;Litg;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lkqk;->a:Lpnu;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p5, p0, Lkqk;->d:Litg;

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

    :goto_2
    iput-object p3, p0, Lkqk;->c:Lksk;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Lkqk;->b:Lfxj;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    :goto_6
    iput-object p4, p0, Lkqk;->e:Lnpr;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lprw;Lsui;)V
    .locals 6

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_0
    const/16 v1, 0x23

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p1, v0}, Lnpr;->n(Lprw;Lpcg;)V

    :goto_2
    goto/32 :goto_a

    nop

    nop

    :goto_3
    invoke-interface {p0, p1, p2}, Lksk;->a(Lprw;Lsui;)V

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_4
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    :goto_7
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_9
    iget-object p0, p0, Lkqk;->c:Lksk;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Lkqk;->d:Litg;

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_b
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_c
    invoke-static {v1, v3}, Lrrf;->m(ZLjava/lang/Object;)V

    goto/32 :goto_1b

    nop

    nop

    :goto_d
    iget-object v0, p0, Lkqk;->e:Lnpr;

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

    nop

    :goto_e
    if-eq v2, v1, :cond_0

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_f
    iget-object v2, p0, Lkqk;->a:Lpnu;

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

    :goto_10
    new-instance v4, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_11
    iget-object v0, p0, Lkqk;->b:Lfxj;

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_13
    invoke-interface {p1}, Lprw;->a()I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_14
    add-int v0, v0, v1

    nop

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

    :goto_15
    const/16 v2, 0x10

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-interface {p1}, Lprw;->close()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_2

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

    :cond_2
    goto/32 :goto_1f

    nop

    :goto_18
    invoke-interface {v2}, Lpnu;->l()Lpog;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_19
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_1b
    new-instance v1, Libm;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v0, v2}, Lnpr;->m(Lpog;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-interface {p1}, Lprw;->a()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_21
    return-void

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_23
    iget-object v0, v0, Litg;->c:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_24
    const v1, 0x18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_25
    if-eq v0, v1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :cond_3
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const v0, 0x1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_28
    const-string v5, "Expected image format YUV but found: "

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_2a
    goto/16 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_4

    nop

    nop

    :goto_2c
    invoke-virtual {v0}, Lfxj;->b()Lpcg;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_2d
    invoke-direct {v1, v0, p1, v2, v3}, Libm;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    goto/32 :goto_23

    nop

    nop

    :goto_2e
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2f
    invoke-interface {p1}, Lprw;->a()I

    move-result v2

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
.end method

.method public final close()V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0}, Lksk;->close()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lkqk;->c:Lksk;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method
