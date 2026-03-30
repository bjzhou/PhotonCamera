.class final Lejz;
.super Landroid/util/Property;
.source "PG"


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, v0}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    const-string v0, "translationAlpha"

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getTransitionAlpha()F

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    sget p0, Lekb;->b:I

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    :goto_3
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    check-cast p1, Landroid/view/View;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    check-cast p2, Ljava/lang/Float;

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
    sget p2, Lekb;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p0

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

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1, p0}, Landroid/view/View;->setTransitionAlpha(F)V

    goto/32 :goto_3

    nop

    nop

    :goto_5
    check-cast p1, Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method
