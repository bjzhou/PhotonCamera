.class public final Licv;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ltun;


# instance fields
.field private final a:Ltxm;

.field private final b:Ltxm;

.field private final c:Ltxm;

.field private final d:Ltxm;


# direct methods
.method public constructor <init>(Ltxm;Ltxm;Ltxm;Ltxm;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iput-object p3, p0, Licv;->c:Ltxm;

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

    :goto_2
    iput-object p1, p0, Licv;->a:Ltxm;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Licv;->b:Ltxm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p4, p0, Licv;->d:Ltxm;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Licv;->b()Lhwy;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop
.end method

.method public final b()Lhwy;
    .locals 7

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1
    const v1, 0x5

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Licw;->b()Landroid/content/UriMatcher;

    move-result-object v2

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    new-instance v6, Licr;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_4
    new-instance p0, Lhwy;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_5
    return-object p0

    nop

    :goto_6
    goto/32 :goto_13

    nop

    nop

    :goto_7
    iget-object v0, p0, Licv;->b:Ltxm;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    check-cast v0, Lida;

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

    :goto_b
    invoke-virtual {v0}, Licy;->b()Licx;

    move-result-object v3

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_d
    iget-object v0, p0, Licv;->c:Ltxm;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {v6}, Licr;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

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

    :goto_10
    invoke-virtual {v0}, Lida;->b()Licz;

    move-result-object v4

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

    :goto_11
    check-cast p0, Lict;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_12
    check-cast v0, Licw;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_13
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_14
    invoke-direct/range {v1 .. v6}, Lhwy;-><init>(Landroid/content/UriMatcher;Licu;Licu;Licu;Licu;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_15
    check-cast v0, Licy;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v0, p0, Licv;->a:Ltxm;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_17
    iget-object p0, p0, Licv;->d:Ltxm;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    move-object v1, p0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_19
    const v0, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0}, Lict;->b()Lics;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method
