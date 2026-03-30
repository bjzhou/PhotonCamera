.class final Lawp;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/util/List;

.field public final b:[Ljava/util/List;

.field public c:I

.field public d:I

.field final synthetic e:Lawr;


# direct methods
.method public constructor <init>(Lawr;Ljava/util/List;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    :goto_2
    iput-object p1, p0, Lawp;->e:Lawr;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {p0}, Laog;->a(Ljava/lang/String;)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    const-string p0, "NestedPrefetchController shouldn\'t be created with no states"

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_7
    new-array p1, p1, [Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_8
    if-eqz p0, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    :goto_a
    iput-object p2, p0, Lawp;->a:Ljava/util/List;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput-object p1, p0, Lawp;->b:[Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_a

    nop

    nop
.end method
