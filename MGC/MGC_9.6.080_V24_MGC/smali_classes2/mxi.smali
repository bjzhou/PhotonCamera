.class public final Lmxi;
.super Luci;
.source "PG"

# interfaces
.implements Lubk;


# instance fields
.field final synthetic a:Lufs;

.field final synthetic b:Lcna;

.field final synthetic c:Lucp;

.field final synthetic d:Lclc;


# direct methods
.method public constructor <init>(Lufs;Lcna;Lucp;Lclc;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lmxi;->b:Lcna;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p4, p0, Lmxi;->d:Lclc;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    const/4 p1, 0x1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p3, p0, Lmxi;->c:Lucp;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lmxi;->a:Lufs;

    nop

    nop

    nop

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

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_0
    const/4 v4, 0x0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v3, 0x0

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

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-wide v2, p1, Lcly;->c:J

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x8

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Lmxi;->a:Lufs;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v3, p0, Lmxi;->d:Lclc;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct/range {v0 .. v5}, Lmxh;-><init>(Lucp;Lcly;Lclc;Ltzy;I)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_a
    iget-object p0, p0, Lmxi;->b:Lcna;

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

    :goto_b
    check-cast p1, Lcly;

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

    :goto_c
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_d
    new-instance v6, Lmxh;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_e
    iget-wide v0, p1, Lcly;->b:J

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {v0, v3, v1, v6, v2}, Lucd;->x(Lufs;Luad;ILubo;I)Lugy;

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0x11

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

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

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_13
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v1, p0, Lmxi;->c:Lucp;

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

    :goto_15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_d

    nop

    nop

    :goto_16
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_17
    move-object v2, p1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_18
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0, v0, v1, v2, v3}, Lcna;->b(JJ)V

    goto/32 :goto_13

    nop

    nop

    :goto_1b
    move-object v0, v6

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v2, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1d
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop
.end method
