.class final Li;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field final a:I

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/Number;

.field final d:D

.field e:I

.field f:Ljava/text/Format;

.field g:Ljava/lang/String;

.field h:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/Number;D)V
    .locals 0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Li;->c:Ljava/lang/Number;

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    cmpl-double p1, p4, p1

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

    :goto_4
    return-void

    nop

    nop

    :goto_5
    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p2, p0, Li;->b:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p3, p0, Li;->c:Ljava/lang/Number;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_9
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_a
    const-wide/16 p1, 0x0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_b
    sub-double/2addr p1, p4

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_c
    iput-wide p4, p0, Li;->d:D

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput p1, p0, Li;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_e
    goto :goto_2

    nop

    nop

    :goto_f
    goto/32 :goto_5

    nop

    nop
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    throw p0

    nop

    nop

    nop

    :goto_2
    new-instance p0, Ljava/lang/AssertionError;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    const-string v0, "PluralSelectorContext being formatted, rather than its number"

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method
