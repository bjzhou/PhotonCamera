.class final Lunh;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Luni;

.field private b:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Luni;Ljava/lang/Runnable;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lunh;->a:Luni;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Lunh;->b:Ljava/lang/Runnable;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop
.end method


# virtual methods
.method public final run()V
    .locals 3

    goto/32 :goto_1e

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

    nop

    :goto_1
    goto/32 :goto_c

    nop

    nop

    :goto_2
    invoke-virtual {v1}, Luni;->e()Ljava/lang/Runnable;

    move-result-object v1

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

    :goto_3
    iget-object v1, p0, Lunh;->a:Luni;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    :goto_5
    invoke-static {v2, v1}, Lucg;->l(Luad;Ljava/lang/Throwable;)V

    :goto_6
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_8
    iput-object v1, p0, Lunh;->b:Ljava/lang/Runnable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Lunh;->a:Luni;

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

    :goto_b
    iget-object v1, v0, Luni;->a:Lufp;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_c
    goto/32 :goto_16

    nop

    :goto_d
    if-ge v0, v1, :cond_1

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

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v0, 0x0

    nop

    :goto_f
    :try_start_0
    iget-object v1, p0, Lunh;->b:Ljava/lang/Runnable;

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_10
    iget-object v2, v1, Luni;->a:Lufp;

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_11
    invoke-virtual {v2, v1}, Lufp;->cC(Luad;)Z

    move-result v1

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

    :goto_12
    iget-object v1, p0, Lunh;->a:Luni;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-nez v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_14
    const v1, 0xf

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_15
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_17
    if-eqz v1, :cond_3

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

    nop

    nop

    :goto_18
    sget-object v2, Luae;->a:Luae;

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

    :goto_19
    return-void

    nop

    :goto_1a
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1b
    const/16 v1, 0x10

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v1, v0, p0}, Lufp;->a(Luad;Ljava/lang/Runnable;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1d
    goto/16 :goto_6

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_1e
    const v0, 0x7

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1f
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop
.end method
