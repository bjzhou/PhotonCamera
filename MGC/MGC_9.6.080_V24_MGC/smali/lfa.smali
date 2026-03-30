.class public final Llfa;
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

.field private final g:Ltxm;

.field private final h:Ltxm;


# direct methods
.method public constructor <init>(Ltxm;Ltxm;Ltxm;Ltxm;Ltxm;Ltxm;Ltxm;Ltxm;)V
    .locals 0

    goto/32 :goto_6

    nop

    nop

    :goto_0
    iput-object p7, p0, Llfa;->g:Ltxm;

    nop

    nop

    goto/32 :goto_7

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
    iput-object p6, p0, Llfa;->f:Ltxm;

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

    :goto_3
    iput-object p5, p0, Llfa;->e:Ltxm;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    iput-object p4, p0, Llfa;->d:Ltxm;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    iput-object p3, p0, Llfa;->c:Ltxm;

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

    nop

    :goto_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p8, p0, Llfa;->h:Ltxm;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_8
    iput-object p2, p0, Llfa;->b:Ltxm;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_9
    iput-object p1, p0, Llfa;->a:Ltxm;

    nop

    nop

    goto/32 :goto_8

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

    :goto_0
    return-object p0

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Llfa;->b()Lrbh;

    move-result-object p0

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

    nop

    nop
.end method

.method public final b()Lrbh;
    .locals 9

    goto/32 :goto_8

    nop

    nop

    :goto_0
    iget-object v6, p0, Llfa;->f:Ltxm;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v1, p0, Llfa;->a:Ltxm;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_2
    iget-object v5, p0, Llfa;->e:Ltxm;

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

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    const v1, 0x15

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x20

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

    nop

    :goto_9
    iget-object v3, p0, Llfa;->c:Ltxm;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_a
    move-object v0, v8

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_b
    iget-object v4, p0, Llfa;->d:Ltxm;

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

    :goto_c
    if-lez v0, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_d
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v7, p0, Llfa;->h:Ltxm;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return-object v8

    nop

    :goto_10
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct/range {v0 .. v7}, Lrbh;-><init>(Ltxm;Ltxm;Ltxm;Ltxm;Ltxm;Ltxm;Ltxm;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v2, p0, Llfa;->b:Ltxm;

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

    :goto_13
    new-instance v8, Lrbh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method
