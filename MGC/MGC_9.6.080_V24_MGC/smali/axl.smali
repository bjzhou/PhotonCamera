.class final Laxl;
.super Luci;
.source "PG"

# interfaces
.implements Luaz;


# instance fields
.field final synthetic a:Laxm;

.field final synthetic b:Lcob;

.field final synthetic c:Luaz;


# direct methods
.method public constructor <init>(Laxm;Lcob;Luaz;)V
    .locals 0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p3, p0, Laxl;->c:Luaz;

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

    nop

    :goto_2
    return-void

    nop

    :goto_3
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    iput-object p2, p0, Laxl;->b:Lcob;

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

    :goto_5
    iput-object p1, p0, Laxl;->a:Laxm;

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
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 5

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Laxl;->a:Laxm;

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

    nop

    :goto_1
    iget-wide v1, p0, Lais;->g:J

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Laxm;->b:Laxf;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    check-cast p0, Lais;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_5
    goto/32 :goto_20

    nop

    nop

    :goto_6
    goto/32 :goto_0

    nop

    nop

    :goto_7
    iget-object v1, p0, Laxl;->b:Lcob;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_8
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    nop

    :goto_9
    xor-long/2addr v1, v3

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_a
    invoke-static {v1}, Laog;->b(Ljava/lang/String;)V

    :goto_b
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-wide v1, p0, Lais;->g:J

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_d
    iget-object p0, p0, Laxl;->a:Laxm;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v2, p0, Laxl;->c:Luaz;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_11
    return-object p0

    nop

    :goto_12
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v1, 0x11

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

    nop

    :goto_14
    if-nez v1, :cond_1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {v1, v2, v3, v4}, La;->q(JJ)Z

    move-result v1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_16
    const/4 p0, 0x0

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

    :goto_17
    const v0, 0x2

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_18
    invoke-virtual {p0, v0, v1, v2}, Lais;->d(Lcdj;J)J

    move-result-wide v1

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

    :goto_19
    invoke-static {v0, v1, v2}, Laxm;->e(Laxm;Lcob;Luaz;)Lcdj;

    move-result-object v0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1a
    const-wide v3, -0x7fffffff80000000L    # -1.0609978955E-314

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

    :goto_1b
    const-string v1, "Expected BringIntoViewRequester to not be used before parents are placed."

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

    :goto_1c
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_5

    nop

    :goto_1d
    const-wide/16 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v0, v1, v2}, Lcdj;->e(J)Lcdj;

    move-result-object p0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1f
    return-object p0

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_f

    nop

    nop

    nop

    nop
.end method
