.class final Laxn;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Laxd;


# instance fields
.field final synthetic a:Lcrw;


# direct methods
.method public constructor <init>(Lcrw;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iput-object p1, p0, Laxn;->a:Lcrw;

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

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lcob;Luaz;Ltzy;)Ljava/lang/Object;
    .locals 2

    goto/32 :goto_16

    nop

    nop

    :goto_0
    invoke-static {p1}, Lcoc;->a(Lcob;)J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1
    iget p1, p1, Lcdj;->e:F

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

    :goto_2
    const v1, 0x9

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_3
    float-to-int v0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_4
    new-instance v1, Landroid/graphics/Rect;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 p1, 0x0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_8
    invoke-static {p0}, Lcry;->a(Lcrw;)Landroid/view/View;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_9
    invoke-direct {v1, p2, p3, v0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {p2}, Luaz;->a()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_c
    iget v0, p1, Lcdj;->d:F

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_d
    iget p3, p1, Lcdj;->c:F

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_e
    const/4 p1, 0x0

    nop

    nop

    :goto_f
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_10
    float-to-int p1, p1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_11
    goto :goto_f

    nop

    nop

    :goto_12
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-nez p1, :cond_0

    nop

    goto/32 :goto_19

    nop

    :cond_0
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_15
    float-to-int p2, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_16
    const v0, 0x4

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_18
    invoke-virtual {p0, v1, p1}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    :goto_19
    goto/32 :goto_23

    nop

    nop

    :goto_1a
    return-object p0

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1c
    check-cast p1, Lcdj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_1d
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    :goto_1e
    float-to-int p3, p3

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p1, v0, v1}, Lcdj;->e(J)Lcdj;

    move-result-object p1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_20
    iget-object p0, p0, Laxn;->a:Lcrw;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget p2, p1, Lcdj;->b:F

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_22
    if-nez p1, :cond_2

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_23
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop
.end method
