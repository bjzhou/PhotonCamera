.class final Lcda;
.super Luci;
.source "PG"

# interfaces
.implements Lubk;


# instance fields
.field final synthetic a:Lccs;

.field final synthetic b:Lccs;

.field final synthetic c:I

.field final synthetic d:Lubk;


# direct methods
.method public constructor <init>(Lccs;Lccs;ILubk;)V
    .locals 0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    iput p3, p0, Lcda;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p4, p0, Lcda;->d:Lubk;

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

    :goto_4
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_1

    nop

    nop

    :goto_5
    iput-object p2, p0, Lcda;->b:Lccs;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    iput-object p1, p0, Lcda;->a:Lccs;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v2, p0, Lcda;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1
    const v1, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_d

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_4
    invoke-interface {p1}, Lcnn;->a()Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_5
    goto/32 :goto_7

    nop

    :goto_6
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_9

    nop

    nop

    :goto_8
    const v0, 0x6

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Lcda;->a:Lccs;

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

    nop

    nop

    :goto_a
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_b
    add-int v0, v0, v1

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

    :goto_c
    iget-object p0, p0, Lcda;->d:Lubk;

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

    :goto_d
    if-eqz p0, :cond_1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-nez p0, :cond_2

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_2
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {v0, v1, v2, p0}, Lcdb;->c(Lccs;Lccs;ILubk;)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v1, p0, Lcda;->b:Lccs;

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

    :goto_12
    return-object v0

    nop

    nop

    :goto_13
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v0, 0x0

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_12

    nop

    nop

    :goto_16
    check-cast p1, Lcnn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop
.end method
