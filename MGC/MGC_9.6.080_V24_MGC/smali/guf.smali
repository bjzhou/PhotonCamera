.class public final Lguf;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ltun;


# instance fields
.field private final a:Ltxm;

.field private final b:Ltxm;

.field private final c:Ltxm;

.field private final d:Ltxm;

.field private final e:Ltxm;


# direct methods
.method public constructor <init>(Ltxm;Ltxm;Ltxm;Ltxm;Ltxm;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lguf;->b:Ltxm;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p5, p0, Lguf;->e:Ltxm;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p3, p0, Lguf;->c:Ltxm;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p4, p0, Lguf;->d:Ltxm;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p1, p0, Lguf;->a:Ltxm;

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


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lguf;->b()Lgue;

    move-result-object p0

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
.end method

.method public final b()Lgue;
    .locals 4

    goto/32 :goto_b

    nop

    nop

    :goto_0
    iget-object v1, p0, Lguf;->b:Ltxm;

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

    :goto_1
    if-lez v0, :cond_0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_2
    goto/32 :goto_17

    nop

    :goto_3
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v2}, Lnpf;->b()Landroid/content/pm/PackageInfo;

    move-result-object v2

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lguf;->e:Ltxm;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_6
    check-cast v0, Lpbv;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {v3}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v2, p0, Lguf;->c:Ltxm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_b
    const v0, 0x20

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    new-instance v3, Lgue;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_d
    invoke-direct {v3, v0, v1, v2, p0}, Lgue;-><init>(Lpnv;Lhif;Landroid/content/pm/PackageInfo;Lhoh;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0}, Lpbv;->b()Lpnv;

    move-result-object v0

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

    :goto_f
    invoke-interface {p0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_10
    invoke-interface {v1}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_11
    check-cast p0, Lhoh;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_12
    const v1, 0x1b

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_13
    check-cast v2, Lnpf;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_15
    iget-object v0, p0, Lguf;->a:Ltxm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_16
    return-object v3

    nop

    nop

    :goto_17
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_18
    check-cast v3, Lcom/google/googlex/gcam/hdrplus/CharacteristicsCache;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v3, p0, Lguf;->d:Ltxm;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1a
    check-cast v1, Lhif;

    nop

    nop

    goto/32 :goto_8

    nop

    nop
.end method
