.class final synthetic Lcni;
.super Lucf;
.source "PG"

# interfaces
.implements Lubo;


# static fields
.field public static final a:Lcni;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    new-instance v0, Lcni;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0}, Lcni;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    sput-object v0, Lcni;->a:Lcni;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 6

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v5, 0x1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_5

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

    nop

    :goto_3
    const v1, 0x15

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

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_7
    const v0, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    const-string v4, "max(II)I"

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

    :goto_a
    rem-int v0, v0, v1

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
    const-class v2, Luda;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_c
    const-string v3, "max"

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_d
    add-int v0, v0, v1

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

    :goto_e
    invoke-direct/range {v0 .. v5}, Lucf;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    goto/32 :goto_4

    nop

    nop

    :goto_f
    move-object v0, p0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    check-cast p1, Ljava/lang/Number;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    check-cast p2, Ljava/lang/Number;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

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

    :goto_3
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-object p0

    nop

    :goto_5
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p0

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
