.class public final Lueg;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lucv;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    iput p2, p0, Lueg;->b:I

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lueg;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    goto/32 :goto_4

    nop

    nop

    :goto_0
    invoke-direct {v0, p0}, Ltyz;-><init>([F)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v0, Luej;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    iget v0, p0, Lueg;->b:I

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_5
    check-cast p0, Luea;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0, p0}, Luej;-><init>(Luea;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_7
    check-cast p0, [F

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v0, Ltyz;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_9
    return-object v0

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p0, p0, Lueg;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method
