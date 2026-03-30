.class final Legj;
.super Luan;
.source "PG"


# instance fields
.field a:I

.field b:I

.field synthetic c:Ljava/lang/Object;

.field final synthetic d:Legm;

.field e:I

.field f:Ljava/lang/String;

.field g:[Ljava/lang/String;

.field h:Legv;


# direct methods
.method public constructor <init>(Legm;Ltzy;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p2}, Luan;-><init>(Ltzy;)V

    goto/32 :goto_2

    nop

    nop

    :goto_1
    iput-object p1, p0, Legj;->d:Legm;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop
.end method


# virtual methods
.method public final bX(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_1
    iput-object p1, p0, Legj;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x11

    nop

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
    add-int v0, v0, v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_e

    nop

    nop

    :goto_5
    iget p1, p0, Legj;->e:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_6
    const v0, 0x17

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_7
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_8
    return-object p0

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_a
    const/high16 v0, -0x80000000

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

    nop

    :goto_b
    invoke-virtual {p1, v0, v1, p0}, Legm;->d(Lefo;ILtzy;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput p1, p0, Legj;->e:I

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

    :goto_10
    or-int/2addr p1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object p1, p0, Legj;->d:Legm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method
