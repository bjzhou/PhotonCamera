.class public final Lhjs;
.super Luci;
.source "PG"

# interfaces
.implements Luaz;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lubk;

.field final synthetic c:I


# direct methods
.method public constructor <init>(Landroid/view/View;Lubk;I)V
    .locals 0

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    iput-object p2, p0, Lhjs;->b:Lubk;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    const/4 p1, 0x0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    iput p3, p0, Lhjs;->c:I

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Lhjs;->a:Landroid/view/View;

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
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_2
    const v1, 0x4

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_3
    const v0, 0x8

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    goto/32 :goto_e

    nop

    :goto_5
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_6
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

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

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v1, 0x6

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p0, p0, Lhjs;->b:Lubk;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_c
    invoke-interface {p0, v0}, Lubk;->a(Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-object p0

    nop

    :goto_e
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v0, p0, Lhjs;->a:Landroid/view/View;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_10
    iget v0, p0, Lhjs;->c:I

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop
.end method
