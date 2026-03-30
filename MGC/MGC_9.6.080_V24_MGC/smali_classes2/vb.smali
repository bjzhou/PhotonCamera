.class final Lvb;
.super Luan;
.source "PG"


# instance fields
.field synthetic a:Ljava/lang/Object;

.field final synthetic b:Lvc;

.field c:I

.field d:Lvc;


# direct methods
.method public constructor <init>(Lvc;Ltzy;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lvb;->b:Lvc;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    invoke-direct {p0, p2}, Luan;-><init>(Ltzy;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final bX(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    const/high16 v0, -0x80000000

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    iget p1, p0, Lvb;->c:I

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    or-int/2addr p1, v0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_3
    iput-object p1, p0, Lvb;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    iget-object p1, p0, Lvb;->b:Lvc;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_5
    return-object p0

    nop

    nop

    :goto_6
    invoke-virtual {p1, v0, p0}, Lvc;->b(Ljava/util/List;Ltzy;)Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_7
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_8
    iput p1, p0, Lvb;->c:I

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method
