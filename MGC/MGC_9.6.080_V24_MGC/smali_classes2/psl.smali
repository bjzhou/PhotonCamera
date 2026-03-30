.class public final Lpsl;
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

.field private final f:Ltxm;


# direct methods
.method public constructor <init>(Ltxm;Ltxm;Ltxm;Ltxm;Ltxm;Ltxm;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p6, p0, Lpsl;->f:Ltxm;

    nop

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lpsl;->a:Ltxm;

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

    :goto_4
    iput-object p5, p0, Lpsl;->e:Ltxm;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    iput-object p2, p0, Lpsl;->b:Ltxm;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p3, p0, Lpsl;->c:Ltxm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    iput-object p4, p0, Lpsl;->d:Ltxm;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

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

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    :goto_1
    invoke-virtual {p0}, Lpsl;->b()Lhwy;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final b()Lhwy;
    .locals 8

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    return-object v7

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v7, Lhwy;

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

    :goto_5
    const v1, 0x1a

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_6
    const v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_8
    iget-object v5, p0, Lpsl;->f:Ltxm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_a
    move-object v0, v7

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v1, p0, Lpsl;->a:Ltxm;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_f
    iget-object v4, p0, Lpsl;->e:Ltxm;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_10
    iget-object v2, p0, Lpsl;->b:Ltxm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v3, p0, Lpsl;->c:Ltxm;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_12
    invoke-direct/range {v0 .. v6}, Lhwy;-><init>(Ltxm;Ltxm;Ltxm;Ltxm;Ltxm;[I)V

    goto/32 :goto_0

    nop

    nop
.end method
