.class Lhhn;
.super Lhhr;
.source "PG"


# instance fields
.field final synthetic a:Lhhq;


# direct methods
.method public constructor <init>(Lhhq;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-direct {p0}, Lhhr;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lhhn;->a:Lhhq;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 3

    goto/32 :goto_20

    nop

    nop

    :goto_0
    iget-object v1, v0, Lhex;->g:Lhgg;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1
    iget-object v0, v0, Lhex;->d:Lhgb;

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

    :goto_2
    goto :goto_b

    nop

    :catch_0
    move-exception v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_3
    iget-object p0, p0, Lhhq;->k:Lkol;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, v0, Lhgb;->d:Lpdk;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lhhn;->a:Lhhq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_6
    new-instance v1, Lhbp;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_7
    invoke-interface {v0}, Lhfw;->e()V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, v0, Lhhq;->c:Lhex;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_9
    const/16 v2, 0xe

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0, v1, v2}, Lhex;->a(Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_b
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_c
    const-string v2, "Unable to close Vision kit"

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_d
    iput-object v1, v0, Lhex;->g:Lhgg;

    nop

    nop

    :goto_e
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    :cond_0
    goto/32 :goto_19

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v0, v0, Lhhq;->a:Lhfw;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_12
    const v1, 0x13

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

    :goto_13
    invoke-direct {v1, v0, v2}, Lhbp;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v0, p0, Lhhn;->a:Lhhq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_15
    return-void

    nop

    :goto_16
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_18
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_16

    nop

    :goto_1a
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0, v1}, Lpdk;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object p0, p0, Lhhn;->a:Lhhq;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p0}, Lkol;->c()V

    goto/32 :goto_15

    nop

    nop

    :goto_1f
    if-nez v1, :cond_1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_1
    :try_start_0
    invoke-static {v1}, Lqrg;->G(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lrdx;->c()V

    iget-object v1, v0, Lhex;->e:Lhep;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lhep;->b()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_2

    nop

    nop

    :goto_20
    const v0, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop
.end method
