.class final Lbon;
.super Luan;
.source "PG"


# instance fields
.field a:Ljava/lang/Object;

.field synthetic b:Ljava/lang/Object;

.field final synthetic c:Lboo;

.field d:I

.field e:Lboo;


# direct methods
.method public constructor <init>(Lboo;Ltzy;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lbon;->c:Lboo;

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

    nop

    :goto_2
    invoke-direct {p0, p2}, Luan;-><init>(Ltzy;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final bX(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

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

    nop

    :goto_1
    iput p1, p0, Lbon;->d:I

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2
    iget p1, p0, Lbon;->d:I

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1, v0, p0}, Lboo;->a(Lubk;Ltzy;)Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_4
    or-int/2addr p1, v0

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

    :goto_5
    const/high16 v0, -0x80000000

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
    iput-object p1, p0, Lbon;->b:Ljava/lang/Object;

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

    :goto_7
    iget-object p1, p0, Lbon;->c:Lboo;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_8
    return-object p0

    nop

    nop

    nop
.end method
